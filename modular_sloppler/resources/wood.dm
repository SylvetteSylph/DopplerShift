GLOBAL_LIST_INIT(rimworld_log_recipes, list(
	new/datum/stack_recipe("wood wall", /turf/closed/rimworld_constructed/plank, 3, time = 2.5 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND, category = CAT_STRUCTURE),
	new/datum/stack_recipe("wood floor", /turf/open/rimworld_constructed/plank, 1, time = 1 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE),
	new/datum/stack_recipe("wood door", /obj/structure/rimworld_door/wood, 5, time = 5 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE),
	new/datum/stack_recipe("wood fence", /obj/structure/rimworld_fence/wood, 2, time = 2 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE),
	new/datum/stack_recipe("wood cup", /obj/item/rimworld_cup, 1, time = 1 SECONDS, category = CAT_TOOLS),
	new/datum/stack_recipe_list("utilities", list( \
		new/datum/stack_recipe("stonecutter", /obj/structure/table/rimworld_crafter/stonecutter, 10, time = 5 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE), \
		new/datum/stack_recipe("loom", /obj/structure/table/rimworld_crafter/loom, 10, time = 5 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE), \
		new/datum/stack_recipe("firepit", /obj/structure/rimworld_campfire, 10, time = 5 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE), \
		new/datum/stack_recipe("storage barrel", /obj/structure/fantasy_storage_pot/barrel, 5, time = 5 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE), \
	)),
	new/datum/stack_recipe_list("furniture", list( \
		new/datum/stack_recipe("wooden table", /obj/structure/table/rimworld, 2, time = 2 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE), \
		new/datum/stack_recipe("wooden chair", /obj/structure/chair/rimworld, 1, time = 2 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE), \
		new/datum/stack_recipe("shelf", /obj/structure/rack/rimworld_wood, 1, time = 2 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE), \
	)),
))

/obj/item/stack/rimworld_logs
	name = "logs"
	singular_name = "log"
	desc = "The trunks of trees cut into usable pieces."
	icon = 'modular_sloppler/resources/icons/resources.dmi'
	icon_state = "wood"
	base_icon_state = "wood"
	inhand_icon_state = null
	merge_type = /obj/item/stack/rimworld_logs
	max_amount = 25
	resistance_flags = FLAMMABLE
	w_class = WEIGHT_CLASS_NORMAL
	force = 15
	throwforce = 10
	throw_speed = 5
	throw_range = 3
	campfire_fuel_value = 5 MINUTES
	novariants = FALSE

/obj/item/stack/rimworld_logs/Initialize(mapload, new_amount, merge, list/mat_override, mat_amt)
	. = ..()
	update_appearance()

/obj/item/stack/rimworld_logs/get_main_recipes()
	. = ..()
	. = GLOB.rimworld_log_recipes
