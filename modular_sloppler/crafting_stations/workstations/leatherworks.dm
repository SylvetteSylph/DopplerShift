/obj/structure/table/rimworld_crafter/leatherworks
	name = "Leatherworks"
	desc = "All the tools you need to make things out of leathers."
	icon = 'modular_sloppler/crafting_stations/icons/stations.dmi'
	icon_state = "leatherworks"
	allowed_choices = list(
		/datum/rimworld_recipe/leather_backpack,
		/datum/rimworld_recipe/leather_satchel,
		/datum/rimworld_recipe/leather_gloves,
		/datum/rimworld_recipe/leather_hood,
		/datum/rimworld_recipe/leather_mantle,
		/datum/rimworld_recipe/leather_scarf,
		/datum/rimworld_recipe/leather_cape,
		/datum/rimworld_recipe/leather_banner,
		/datum/rimworld_recipe/leather_shoes,
		/datum/rimworld_recipe/leather_boots,
		/datum/rimworld_recipe/leather_raincoat,
		/datum/rimworld_recipe/leather_jacket,
		/datum/rimworld_recipe/leather_vest,
		/datum/rimworld_recipe/leather_shirt,
		/datum/rimworld_recipe/leather_skirt,
	)

// Clothes production, fabric stuff is made in a different station

// Storage items

/datum/rimworld_recipe/leather_backpack
	recipe_name = "Leather Backpack"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 3
	)
	resulting_item = /obj/item/storage/backpack/rimworld_backpack/leather
	crafting_time = 10 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/leather_satchel
	recipe_name = "Leather Satchel"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 3
	)
	resulting_item = /obj/item/storage/backpack/rimworld_satchel/leather
	crafting_time = 10 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

// Gloves

/datum/rimworld_recipe/leather_gloves
	recipe_name = "Leather Gloves"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 1
	)
	resulting_item = /obj/item/clothing/gloves/rimworld_gloves/leather
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

// Head

/datum/rimworld_recipe/leather_hood
	recipe_name = "Leather Hood"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 1
	)
	resulting_item = /obj/item/clothing/head/rimworld_hood/leather
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

// Neck

/datum/rimworld_recipe/leather_mantle
	recipe_name = "Leather Mantle"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 1
	)
	resulting_item = /obj/item/clothing/neck/rimworld_mantle/leather
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/leather_scarf
	recipe_name = "Leather Scarf"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 1
	)
	resulting_item = /obj/item/clothing/neck/rimworld_scarf/leather
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/leather_cape
	recipe_name = "Leather Cape"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 2
	)
	resulting_item = /obj/item/clothing/neck/rimworld_cape/leather
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/leather_banner
	recipe_name = "Leather Banner Scarf"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 2
	)
	resulting_item = /obj/item/clothing/neck/rimworld_banner/leather
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

// Shoes

/datum/rimworld_recipe/leather_shoes
	recipe_name = "Leather Shoes"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 1
	)
	resulting_item = /obj/item/clothing/shoes/rimworld_shoes/leather
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/leather_boots
	recipe_name = "Leather Boots"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 2
	)
	resulting_item = /obj/item/clothing/shoes/jackboots/rimworld_boots/leather
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

// Suit

/datum/rimworld_recipe/leather_raincoat
	recipe_name = "Leather Raincoat"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 2
	)
	resulting_item = /obj/item/clothing/suit/jacket/rimworld_raincoat/leather
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/leather_jacket
	recipe_name = "Leather Jacket"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 2
	)
	resulting_item = /obj/item/clothing/suit/jacket/rimworld_jacket/leather
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/leather_vest
	recipe_name = "Leather Vest"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 1
	)
	resulting_item = /obj/item/clothing/suit/jacket/rimworld_vest/leather
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

// Under

/datum/rimworld_recipe/leather_shirt
	recipe_name = "Leather Underclothes"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 1
	)
	resulting_item = /obj/item/clothing/under/rimworld_shirt/leather
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/leather_skirt
	recipe_name = "Leather Underskirt"
	recipe_requirements = list(
		/obj/item/stack/rimworld_leather = 1
	)
	resulting_item = /obj/item/clothing/under/rimworld_skirt/leather
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE
