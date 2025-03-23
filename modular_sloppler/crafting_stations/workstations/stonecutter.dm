/obj/structure/table/rimworld_crafter/stonecutter
	name = "stone cutting bench"
	desc = "A hard surface and the tools you need to shape rough boulders into usable bricks."
	icon = 'modular_sloppler/crafting_stations/icons/stations.dmi'
	icon_state = "stonecutter"
	allowed_choices = list(
		/datum/rimworld_recipe/stone_to_brick,
	)

// Recipes

/datum/rimworld_recipe/stone_to_brick
	recipe_name = "Cut Boulders into Bricks"
	recipe_requirements = list(
		/obj/item/stack/rimworld_stone = 1
	)
	resulting_item = /obj/item/stack/rimworld_bricks/crafted
	crafting_time = 4 SECONDS
	relevant_skill = /datum/skill/rimworld_masonry
	relevant_skill_reward = SKILL_EXP_GRANT_LITTLE
	production_sound = SFX_STONE_DROP
	stand_strong_recipe = TRUE
