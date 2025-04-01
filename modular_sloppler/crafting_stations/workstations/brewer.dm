/obj/structure/table/rimworld_crafter/brewer
	name = "cooking station"
	desc = "A big pot and maybe some of the other things you need to mix foods and drinks that \
		can't be done on a fire alone."
	icon = 'modular_sloppler/crafting_stations/icons/stations.dmi'
	icon_state = "brewer"
	allowed_choices = list(
		/datum/rimworld_recipe/rice_dough,
		/datum/rimworld_recipe/millet_dough,
		/datum/rimworld_recipe/yak_cheese,
		/datum/rimworld_recipe/goat_cheese,
		/datum/rimworld_recipe/wine,
		/datum/rimworld_recipe/hideroot_slop,
		/datum/rimworld_recipe/rice_beer,
		/datum/rimworld_recipe/millet_beer,
		/datum/rimworld_recipe/cloth_burn_wrap,
		/datum/rimworld_recipe/jute_burn_wrap,
		/datum/rimworld_recipe/cloth_suture,
		/datum/rimworld_recipe/jute_suture,
	)

// Recipes

/datum/rimworld_recipe/cloth_burn_wrap
	recipe_name = "Sterilize Cloth Burn Wrap"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 1,
		/obj/item/food/rimworld_alcohol/hideroot_slop = 1,
	)
	resulting_item = /obj/item/stack/medical/ointment/rimworld_burn_wrap/cloth/crafted
	crafting_time = 5 SECONDS
	production_sound = 'sound/effects/soup_boil/soup_boil_end.ogg'
	relevant_skill = /datum/skill/rimworld_cooking
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS

/datum/rimworld_recipe/jute_burn_wrap
	recipe_name = "Sterilize Jute Burn Wrap"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 1,
		/obj/item/food/rimworld_alcohol/hideroot_slop = 1,
	)
	resulting_item = /obj/item/stack/medical/ointment/rimworld_burn_wrap/jute/crafted
	crafting_time = 5 SECONDS
	production_sound = 'sound/effects/soup_boil/soup_boil_end.ogg'
	relevant_skill = /datum/skill/rimworld_cooking
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS

/datum/rimworld_recipe/cloth_suture
	recipe_name = "Sterilize Cloth Sutures"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 1,
		/obj/item/food/rimworld_alcohol/hideroot_slop = 1,
	)
	resulting_item = /obj/item/stack/medical/suture/rimworld_suture/cloth/crafted
	crafting_time = 5 SECONDS
	production_sound = 'sound/effects/soup_boil/soup_boil_end.ogg'
	relevant_skill = /datum/skill/rimworld_cooking
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS

/datum/rimworld_recipe/jute_suture
	recipe_name = "Sterilize Jute Sutures"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 1,
		/obj/item/food/rimworld_alcohol/hideroot_slop = 1,
	)
	resulting_item = /obj/item/stack/medical/suture/rimworld_suture/jute/crafted
	crafting_time = 5 SECONDS
	production_sound = 'sound/effects/soup_boil/soup_boil_end.ogg'
	relevant_skill = /datum/skill/rimworld_cooking
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS

/datum/rimworld_recipe/rice_dough
	recipe_name = "White-Grain Dough"
	recipe_requirements = list(
		/obj/item/food/fantasy_grown/rice_panicle = 1,
	)
	resulting_item = /obj/item/food/rimworld_dough/rice
	crafting_time = 5 SECONDS
	production_sound = 'sound/effects/soup_boil/soup_boil_end.ogg'
	relevant_skill = /datum/skill/rimworld_cooking
	relevant_skill_reward = SKILL_EXP_GRANT_LITTLE

/datum/rimworld_recipe/millet_dough
	recipe_name = "Millet Dough"
	recipe_requirements = list(
		/obj/item/food/fantasy_grown/millet_panicle = 1,
	)
	resulting_item = /obj/item/food/rimworld_dough/millet
	crafting_time = 5 SECONDS
	production_sound = 'sound/effects/soup_boil/soup_boil_end.ogg'
	relevant_skill = /datum/skill/rimworld_cooking
	relevant_skill_reward = SKILL_EXP_GRANT_LITTLE

/datum/rimworld_recipe/yak_cheese
	recipe_name = "Yak Cheese"
	recipe_requirements = list(
		/obj/item/food/rimworld_milk/yak = 1,
	)
	resulting_item = /obj/item/food/rimworld_cheese/yak
	crafting_time = 5 SECONDS
	production_sound = 'sound/effects/soup_boil/soup_boil_end.ogg'
	relevant_skill = /datum/skill/rimworld_cooking
	relevant_skill_reward = SKILL_EXP_GRANT_LITTLE

/datum/rimworld_recipe/goat_cheese
	recipe_name = "Goat Cheese"
	recipe_requirements = list(
		/obj/item/food/rimworld_milk/goated = 1,
	)
	resulting_item = /obj/item/food/rimworld_cheese/goated
	crafting_time = 5 SECONDS
	production_sound = 'sound/effects/soup_boil/soup_boil_end.ogg'
	relevant_skill = /datum/skill/rimworld_cooking
	relevant_skill_reward = SKILL_EXP_GRANT_LITTLE

/datum/rimworld_recipe/wine
	recipe_name = "Colberry Wine"
	recipe_requirements = list(
		/obj/item/food/fantasy_grown/grapes = 2,
		/obj/item/rimworld_cup = 1,
	)
	resulting_item = /obj/item/food/rimworld_alcohol/wine
	crafting_time = 7 SECONDS
	production_sound = 'sound/effects/bubbles/bubbles2.ogg'
	relevant_skill = /datum/skill/rimworld_cooking
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM

/datum/rimworld_recipe/hideroot_slop
	recipe_name = "Hideroot Brew"
	recipe_requirements = list(
		/obj/item/food/fantasy_grown/hideroot/cooked = 2,
		/obj/item/rimworld_cup = 1,
	)
	resulting_item = /obj/item/food/rimworld_alcohol/hideroot_slop
	crafting_time = 7 SECONDS
	production_sound = 'sound/effects/bubbles/bubbles2.ogg'
	relevant_skill = /datum/skill/rimworld_cooking
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM

/datum/rimworld_recipe/rice_beer
	recipe_name = "White-Grain Beer"
	recipe_requirements = list(
		/obj/item/food/fantasy_grown/rice_panicle = 2,
		/obj/item/rimworld_cup = 1,
	)
	resulting_item = /obj/item/food/rimworld_alcohol/rice_beer
	crafting_time = 7 SECONDS
	production_sound = 'sound/effects/bubbles/bubbles2.ogg'
	relevant_skill = /datum/skill/rimworld_cooking
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM

/datum/rimworld_recipe/millet_beer
	recipe_name = "Millet Beer"
	recipe_requirements = list(
		/obj/item/food/fantasy_grown/millet_panicle = 2,
		/obj/item/rimworld_cup = 1,
	)
	resulting_item = /obj/item/food/rimworld_alcohol/beer_beer
	crafting_time = 7 SECONDS
	production_sound = 'sound/effects/bubbles/bubbles2.ogg'
	relevant_skill = /datum/skill/rimworld_cooking
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
