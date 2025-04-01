/obj/structure/table/rimworld_crafter/weapons
	name = "weaponer's bench"
	desc = "Everything you need to make pointy things that hurt, at range or close and personal alike."
	icon = 'modular_sloppler/crafting_stations/icons/stations.dmi'
	icon_state = "weapons"
	allowed_choices = list(
		/datum/rimworld_recipe/stone_knife,
		/datum/rimworld_recipe/stone_axe,
		/datum/rimworld_recipe/stone_spear,
		/datum/rimworld_recipe/wood_shield,
		/datum/rimworld_recipe/basic_bow,
		/datum/rimworld_recipe/stone_arrows,
	)

// Recipes

/datum/rimworld_recipe/stone_knife
	recipe_name = "Stone Knife"
	recipe_requirements = list(
		/obj/item/stack/rimworld_stone = 1,
		/obj/item/stack/rimworld_logs = 1,
	)
	resulting_item = /obj/item/fantasy_knife
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_weapons_making
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM

/datum/rimworld_recipe/stone_axe
	recipe_name = "Stone Axe"
	recipe_requirements = list(
		/obj/item/stack/rimworld_stone = 1,
		/obj/item/stack/rimworld_logs = 1,
	)
	resulting_item = /obj/item/fantasy_axe
	crafting_time = 10 SECONDS
	relevant_skill = /datum/skill/rimworld_weapons_making
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM

/datum/rimworld_recipe/stone_spear
	recipe_name = "Stone Spear"
	recipe_requirements = list(
		/obj/item/stack/rimworld_stone = 1,
		/obj/item/stack/rimworld_logs = 2,
	)
	resulting_item = /obj/item/fantasy_spear
	crafting_time = 10 SECONDS
	relevant_skill = /datum/skill/rimworld_weapons_making
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM

/datum/rimworld_recipe/wood_shield
	recipe_name = "Wooden Shield"
	recipe_requirements = list(
		/obj/item/stack/rimworld_logs = 3,
	)
	resulting_item = /obj/item/shield/rimworld
	crafting_time = 10 SECONDS
	relevant_skill = /datum/skill/rimworld_weapons_making
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM

/datum/rimworld_recipe/basic_bow
	recipe_name = "Longbow"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 1,
		/obj/item/stack/medical/gauze/rimworld_kenaf = 1,
		/obj/item/stack/rimworld_logs = 2,
	)
	resulting_item = /obj/item/gun/ballistic/bow/rimworld
	crafting_time = 10 SECONDS
	relevant_skill = /datum/skill/rimworld_weapons_making
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS

/datum/rimworld_recipe/stone_arrows
	recipe_name = "Stone Arrows (x3)"
	recipe_requirements = list(
		/obj/item/stack/rimworld_stone = 1,
		/obj/item/stack/rimworld_logs = 1,
	)
	resulting_item = /obj/effect/spawner/random/rimworld_arrows
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_weapons_making
	relevant_skill_reward = SKILL_EXP_GRANT_LITTLE
	stand_strong_recipe = TRUE
