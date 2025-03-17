/obj/structure/table/rimworld_crafter
	name = "debug crafting station"
	desc = "Crafting station basetype."
	icon = 'icons/obj/medical/surgery_table.dmi'
	icon_state = "surgery_table"
	smoothing_flags = NONE
	smoothing_groups = null
	canSmoothWith = null
	custom_materials = null
	frame = null
	framestack = null
	glass_shard_type = null
	buildstack = null
	can_flip = FALSE
	/// The list of all of the things "on" the table, to use with crafting
	var/list/crafting_ingredients = list()
	/// What the currently picked recipe is
	var/datum/rimworld_recipe/selected_recipe
	/// What recipes are we allowed to choose from?
	var/list/allowed_choices = list(
		/datum/rimworld_recipe/debug_tester,
	)
	/// An associative list of names --> recipe path that the radial recipe picker will choose from later
	var/list/recipe_names_to_path = list()
	/// Is someone currently working on this table? Prevents recipe swapping exploits
	var/currently_working = FALSE

/obj/structure/table/rimworld_crafter/Initialize(mapload)
	. = ..()
	fill_name_to_path()
	RegisterSignal(loc, COMSIG_ATOM_ENTERED, PROC_REF(add_ingredient))
	RegisterSignal(loc, COMSIG_ATOM_EXITED, PROC_REF(remove_ingredient))

/// Fills the name to recipe path list
/obj/structure/table/rimworld_crafter/proc/fill_name_to_path()
	if(!length(allowed_choices))
		return
	if(length(recipe_names_to_path)) // We already have this, bog off
		return
	for(var/recipe in allowed_choices)
		var/datum/rimworld_recipe/recipe_to_take_from = new recipe()
		recipe_names_to_path[recipe_to_take_from.recipe_name] = recipe
		qdel(recipe_to_take_from)

/obj/structure/table/rimworld_crafter/Destroy()
	crafting_ingredients = list()
	UnregisterSignal(loc, COMSIG_ATOM_ENTERED)
	UnregisterSignal(loc, COMSIG_ATOM_EXITED)
	return ..()

/obj/structure/table/rimworld_crafter/make_climbable()
	return

/obj/structure/table/rimworld_crafter/deconstruction_hints(mob/user)
	return

/obj/structure/table/rimworld_crafter/tablepush(mob/living/user, mob/living/pushed_mob)
	to_chat(user, span_warning("Wouldn't that be stupid, think about all those precious tools!"))
	return

/obj/structure/table/rimworld_crafter/tablelimbsmash(mob/living/user, mob/living/pushed_mob)
	to_chat(user, span_warning("Wouldn't that be stupid, think about all those precious tools!"))
	return

/// Any object entering our turf will be added to the list of ingredients we can use
/obj/structure/table/rimworld_crafter/proc/add_ingredient(datum/source, obj/item/incoming_thing)
	SIGNAL_HANDLER
	if(!istype(incoming_thing))
		return
	crafting_ingredients += incoming_thing

/// Remove an object from our ingredients list
/obj/structure/table/rimworld_crafter/proc/remove_ingredient(datum/source, obj/item/leaving_thing)
	SIGNAL_HANDLER
	if(!istype(leaving_thing))
		return
	crafting_ingredients -= leaving_thing

/obj/structure/table/rimworld_crafter/examine(mob/user)
	. = ..()
	if(!selected_recipe)
		. += span_notice("There is no recipe currently selected for production. Try <b>Right-Clicking</b> this to fix that?")
		return
	. += span_notice("The selected recipe is: <b>[initial(selected_recipe.recipe_name)]</b>")
	. += span_notice("Gather the required materials, listed below, <b>atop the bench</b>, then start <b>Left-Click</b> to complete it!")
	if(!length(selected_recipe.recipe_requirements))
		. += span_boldwarning("Somehow, this recipe has no requirements, report this as this shouldn't happen.")
		return
	for(var/obj/requirement_item as anything in selected_recipe.recipe_requirements)
		if(!selected_recipe.recipe_requirements[requirement_item])
			. += span_boldwarning("[requirement_item] does not have an amount required set, this should not happen, report it.")
			continue
		. += span_notice("<b>[selected_recipe.recipe_requirements[requirement_item]]</b> - [initial(requirement_item.name)]")
	return .

//
// Right click, for setting the recipe
//

/obj/structure/table/rimworld_crafter/attack_hand_secondary(mob/user, list/modifiers)
	if(currently_working)
		to_chat(user, span_warning("This station is currently being worked at, you can't distrupt them like that!"))
		return
	var/recipe_choice = tgui_input_list(user, "Select Recipe", "Recipe Selection", recipe_names_to_path)
	if(!recipe_choice)
		to_chat(user, span_warning("No recipe selection made."))
		return
	selected_recipe = recipe_names_to_path[recipe_choice]
	to_chat(user, span_notice("Recipe selected: [initial(selected_recipe.recipe_name)]."))
	return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

//
// Left click, for doing the recipe
//

/obj/structure/table/rimworld_crafter/attack_hand(mob/living/user, list/modifiers)
	. = ..()
	if(.)
		return
	if(currently_working)
		to_chat(user, span_warning("Someone is already working here!"))
		return
	if(!selected_recipe)
		to_chat(user, span_warning("No recipe selected, <b>Right-Click</b> the station to set one!"))
		return
	if(!can_we_craft_this(selected_recipe.recipe_requirements))
		to_chat(user, span_warning("Missing ingredients for this recipe!"))
		return
	currently_working = TRUE
	to_chat(user, span_notice("You start working on selected recipe: [selected_recipe.recipe_name]!"))
	var/recipe_modified_time = selected_recipe.crafting_time * user.mind.get_skill_modifier(selected_recipe.relevant_skill, SKILL_SPEED_MODIFIER)
	if(!do_after(user, recipe_modified_time, src))
		to_chat(user, span_warning("Crafting interrupted!"))
		currently_working = FALSE
		return
	currently_working = FALSE
	if(!can_we_craft_this(selected_recipe.recipe_requirements))
		to_chat(user, span_warning("Your ingredients seem to have gone missing in all the work!"))
		return
	var/list/things_to_use = can_we_craft_this(selected_recipe.recipe_requirements, TRUE)
	create_thing_from_requirements(things_to_use, selected_recipe, user, selected_recipe.relevant_skill, selected_recipe.relevant_skill_reward)
	return

/// Takes the given list of item requirements and checks the surroundings for them, returns TRUE unless return_ingredients_list is set, in which case a list of all the items to use is returned
/obj/structure/table/rimworld_crafter/proc/can_we_craft_this(list/required_items, return_ingredients_list = FALSE)
	if(!length(required_items))
		message_admins("[src] just tried to check for ingredients nearby without having a list of items to check for!")
		return FALSE
	var/list/requirement_items = list()
	for(var/obj/item/requirement_path as anything in required_items)
		var/required_amount = required_items[requirement_path]
		for(var/obj/item/nearby_item as anything in crafting_ingredients)
			if(!istype(nearby_item, requirement_path))
				continue
			if(isstack(nearby_item)) // If the item is a stack, check if that stack has enough material in it to fill out the amount
				var/obj/item/stack/nearby_stack = nearby_item
				if(required_amount > 0)
					requirement_items += nearby_item
				required_amount -= nearby_stack.amount
			else // Otherwise, we still exist and should subtract one from the required number of items
				if(required_amount > 0)
					requirement_items += nearby_item
				required_amount -= 1
		if(required_amount > 0)
			return FALSE
	if(return_ingredients_list)
		return requirement_items
	else
		return TRUE

/// Passes the list of found ingredients + the recipe to use_or_delete_recipe_requirements, then spawns the given recipe's result
/obj/structure/table/rimworld_crafter/proc/create_thing_from_requirements(list/things_to_use, datum/rimworld_recipe/recipe_to_follow, mob/living/user, datum/skill/skill_to_grant, skill_amount)
	if(!recipe_to_follow)
		message_admins("[src] just tried to complete a recipe without having a recipe!")
		return FALSE
	if(!length(things_to_use))
		message_admins("[src] just tried to craft something from requirements, but was not given a list of requirements!")
		return FALSE
	use_or_delete_recipe_requirements(things_to_use, recipe_to_follow)
	var/obj/newly_created_thing
	newly_created_thing = new recipe_to_follow.resulting_item(get_turf(src))
	if(!newly_created_thing)
		message_admins("[src] just failed to create something while crafting!")
		return FALSE
	user.mind.adjust_experience(skill_to_grant, skill_amount)
	selected_recipe = null
	update_appearance()
	return newly_created_thing

/// Takes the given list, things_to_use, compares it to recipe_to_follow's requirements, then either uses items from a stack, or deletes them otherwise. Returns custom material of forge items in the end.
/obj/structure/table/rimworld_crafter/proc/use_or_delete_recipe_requirements(list/things_to_use, datum/rimworld_recipe/recipe_to_follow)
	for(var/obj/requirement_item as anything in things_to_use)
		if(isstack(requirement_item))
			var/stack_type
			for(var/recipe_thing_to_reference as anything in recipe_to_follow.recipe_requirements)
				if(!istype(requirement_item, recipe_thing_to_reference))
					continue
				stack_type = recipe_thing_to_reference
				break
			var/obj/item/stack/requirement_stack = requirement_item
			if(requirement_stack.amount < recipe_to_follow.recipe_requirements[stack_type])
				recipe_to_follow.recipe_requirements[stack_type] -= requirement_stack.amount
				requirement_stack.use(requirement_stack.amount)
				continue
			requirement_stack.use(recipe_to_follow.recipe_requirements[stack_type])
		else
			qdel(requirement_item)
