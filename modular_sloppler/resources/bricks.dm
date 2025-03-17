#define CRAFTED_BRICKS_AMOUNT 6

GLOBAL_LIST_INIT(rimworld_brick_recipes, list(
	new/datum/stack_recipe("brick wall", /turf/closed/rimworld_constructed/brick, 3, time = 2.5 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND, category = CAT_STRUCTURE),
	new/datum/stack_recipe("brick floor", /turf/open/rimworld_constructed/brick, 1, time = 1 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE),
	new/datum/stack_recipe("stone door", /obj/structure/rimworld_door/stone, 5, time = 5 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE),
	new/datum/stack_recipe_list("furniture", list( \
		new/datum/stack_recipe("stone counter", /obj/structure/table/rimworld/stone, 2, time = 2 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE), \
		new/datum/stack_recipe("stone stool", /obj/structure/chair/rimworld/stone, 1, time = 2 SECONDS, crafting_flags = CRAFT_CHECK_DENSITY | CRAFT_ON_SOLID_GROUND | CRAFT_ONE_PER_TURF, category = CAT_STRUCTURE), \
	)),
))

/obj/item/stack/rimworld_bricks
	name = "stone bricks"
	singular_name = "stone brick"
	desc = "Cut boulders to make bricks for building with."
	icon = 'modular_sloppler/resources/icons/resources.dmi'
	icon_state = "brick"
	base_icon_state = "brick"
	inhand_icon_state = null
	merge_type = /obj/item/stack/rimworld_bricks
	max_amount = 25
	resistance_flags = FIRE_PROOF
	w_class = WEIGHT_CLASS_NORMAL
	force = 15
	throwforce = 10
	throw_speed = 5
	throw_range = 3
	novariants = FALSE

/obj/item/stack/rimworld_bricks/get_main_recipes()
	. = ..()
	. = GLOB.rimworld_brick_recipes

/obj/item/stack/rimworld_bricks/crafted
	amount = CRAFTED_BRICKS_AMOUNT

#undef CRAFTED_BRICKS_AMOUNT
