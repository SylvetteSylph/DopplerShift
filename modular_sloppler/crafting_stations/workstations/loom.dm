/obj/structure/table/rimworld_crafter/loom
	name = "clothier's bench"
	desc = "A loom, and all the thread and needles you'll ever need to make clothes from fabrics."
	icon = 'modular_sloppler/crafting_stations/icons/stations.dmi'
	icon_state = "loom"
	allowed_choices = list(
		/datum/rimworld_recipe/weave_kenaf,
		/datum/rimworld_recipe/weave_cloth,
		/datum/rimworld_recipe/kenaf_backpack,
		/datum/rimworld_recipe/kenaf_satchel,
		/datum/rimworld_recipe/kenaf_gloves,
		/datum/rimworld_recipe/kenaf_hood,
		/datum/rimworld_recipe/kenaf_mantle,
		/datum/rimworld_recipe/kenaf_scarf,
		/datum/rimworld_recipe/kenaf_cape,
		/datum/rimworld_recipe/kenaf_banner,
		/datum/rimworld_recipe/kenaf_shoes,
		/datum/rimworld_recipe/kenaf_raincoat,
		/datum/rimworld_recipe/kenaf_jacket,
		/datum/rimworld_recipe/kenaf_vest,
		/datum/rimworld_recipe/kenaf_shirt,
		/datum/rimworld_recipe/kenaf_skirt,
		/datum/rimworld_recipe/kenaf_chestrags,
		/datum/rimworld_recipe/kenaf_waistrags,
		/datum/rimworld_recipe/kenaf_gaiter,
		/datum/rimworld_recipe/cloth_backpack,
		/datum/rimworld_recipe/cloth_satchel,
		/datum/rimworld_recipe/cloth_gloves,
		/datum/rimworld_recipe/cloth_hood,
		/datum/rimworld_recipe/cloth_mantle,
		/datum/rimworld_recipe/cloth_scarf,
		/datum/rimworld_recipe/cloth_cape,
		/datum/rimworld_recipe/cloth_banner,
		/datum/rimworld_recipe/cloth_shoes,
		/datum/rimworld_recipe/cloth_raincoat,
		/datum/rimworld_recipe/cloth_jacket,
		/datum/rimworld_recipe/cloth_vest,
		/datum/rimworld_recipe/cloth_shirt,
		/datum/rimworld_recipe/cloth_skirt,
		/datum/rimworld_recipe/cloth_chestrags,
		/datum/rimworld_recipe/cloth_waistrags,
		/datum/rimworld_recipe/cloth_gaiter,
	)

// Recipes

/datum/rimworld_recipe/weave_kenaf
	recipe_name = "Weave Jute from Kenaf"
	recipe_requirements = list(
		/obj/item/food/fantasy_grown/kenaf = 1
	)
	resulting_item = /obj/item/stack/medical/gauze/rimworld_kenaf
	crafting_time = 3 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LITTLE
	production_sound = SFX_RUSTLE
	stand_strong_recipe = TRUE

/datum/rimworld_recipe/weave_cloth
	recipe_name = "Weave Cloth from Cotton"
	recipe_requirements = list(
		/obj/item/food/fantasy_grown/cotton = 1
	)
	resulting_item = /obj/item/stack/medical/gauze/rimworld_cloth
	crafting_time = 3 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LITTLE
	production_sound = SFX_RUSTLE
	stand_strong_recipe = TRUE

// Clothes production, leather stuff is made at a different workstation

// Storage items

/datum/rimworld_recipe/kenaf_backpack
	recipe_name = "Jute Backpack"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 4
	)
	resulting_item = /obj/item/storage/backpack/rimworld_backpack/kenaf
	crafting_time = 10 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/kenaf_satchel
	recipe_name = "Jute Satchel"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 4
	)
	resulting_item = /obj/item/storage/backpack/rimworld_satchel/kenaf
	crafting_time = 10 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_backpack
	recipe_name = "Cloth Backpack"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 4
	)
	resulting_item = /obj/item/storage/backpack/rimworld_backpack/cloth
	crafting_time = 10 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_satchel
	recipe_name = "Cloth Satchel"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 4
	)
	resulting_item = /obj/item/storage/backpack/rimworld_satchel/cloth
	crafting_time = 10 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

// Gloves

/datum/rimworld_recipe/kenaf_gloves
	recipe_name = "Jute Gloves"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 1
	)
	resulting_item = /obj/item/clothing/gloves/rimworld_gloves/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_gloves
	recipe_name = "Cloth Gloves"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 1
	)
	resulting_item = /obj/item/clothing/gloves/rimworld_gloves/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

// Head

/datum/rimworld_recipe/kenaf_hood
	recipe_name = "Jute Hood"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 2
	)
	resulting_item = /obj/item/clothing/head/rimworld_hood/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_hood
	recipe_name = "Cloth Hood"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 2
	)
	resulting_item = /obj/item/clothing/head/rimworld_hood/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

// Neck

/datum/rimworld_recipe/kenaf_mantle
	recipe_name = "Jute Mantle"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 2
	)
	resulting_item = /obj/item/clothing/neck/rimworld_mantle/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_mantle
	recipe_name = "Cloth Mantle"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 2
	)
	resulting_item = /obj/item/clothing/neck/rimworld_mantle/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/kenaf_scarf
	recipe_name = "Jute Scarf"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 2
	)
	resulting_item = /obj/item/clothing/neck/rimworld_scarf/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_scarf
	recipe_name = "Cloth Scarf"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 2
	)
	resulting_item = /obj/item/clothing/neck/rimworld_scarf/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/kenaf_cape
	recipe_name = "Jute Cape"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 3
	)
	resulting_item = /obj/item/clothing/neck/rimworld_cape/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_cape
	recipe_name = "Cloth Cape"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 3
	)
	resulting_item = /obj/item/clothing/neck/rimworld_cape/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/kenaf_banner
	recipe_name = "Jute Banner Scarf"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 3
	)
	resulting_item = /obj/item/clothing/neck/rimworld_banner/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_banner
	recipe_name = "Cloth Banner Scarf"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 3
	)
	resulting_item = /obj/item/clothing/neck/rimworld_banner/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

// Shoes

/datum/rimworld_recipe/kenaf_shoes
	recipe_name = "Jute Shoes"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 2
	)
	resulting_item = /obj/item/clothing/shoes/rimworld_shoes/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_shoes
	recipe_name = "Cloth Shoes"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 2
	)
	resulting_item = /obj/item/clothing/shoes/rimworld_shoes/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

// Suit

/datum/rimworld_recipe/kenaf_raincoat
	recipe_name = "Jute Raincoat"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 3
	)
	resulting_item = /obj/item/clothing/suit/jacket/rimworld_raincoat/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_raincoat
	recipe_name = "Cloth Raincoat"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 3
	)
	resulting_item = /obj/item/clothing/suit/jacket/rimworld_raincoat/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/kenaf_jacket
	recipe_name = "Jute Jacket"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 3
	)
	resulting_item = /obj/item/clothing/suit/jacket/rimworld_jacket/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_jacket
	recipe_name = "Cloth Jacket"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 3
	)
	resulting_item = /obj/item/clothing/suit/jacket/rimworld_jacket/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_LOTS
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/kenaf_vest
	recipe_name = "Jute Vest"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 2
	)
	resulting_item = /obj/item/clothing/suit/jacket/rimworld_vest/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_vest
	recipe_name = "Cloth Vest"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 2
	)
	resulting_item = /obj/item/clothing/suit/jacket/rimworld_vest/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

// Under

/datum/rimworld_recipe/kenaf_shirt
	recipe_name = "Jute Underclothes"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 2
	)
	resulting_item = /obj/item/clothing/under/rimworld_shirt/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_shirt
	recipe_name = "Cloth Underclothes"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 2
	)
	resulting_item = /obj/item/clothing/under/rimworld_shirt/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/kenaf_skirt
	recipe_name = "Jute Underskirt"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 2
	)
	resulting_item = /obj/item/clothing/under/rimworld_skirt/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_skirt
	recipe_name = "Cloth Underskirt"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 2
	)
	resulting_item = /obj/item/clothing/under/rimworld_skirt/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/kenaf_chestrags
	recipe_name = "Jute Chestrags"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 2
	)
	resulting_item = /obj/item/clothing/under/rimworld_chestrags/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_chestrags
	recipe_name = "Cloth Chestrags"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 2
	)
	resulting_item = /obj/item/clothing/under/rimworld_chestrags/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/kenaf_waistrags
	recipe_name = "Jute Waistrags"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 1
	)
	resulting_item = /obj/item/clothing/under/rimworld_waistrags/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_waistrags
	recipe_name = "Cloth Waistrags"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 1
	)
	resulting_item = /obj/item/clothing/under/rimworld_waistrags/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

// Masks

/datum/rimworld_recipe/kenaf_gaiter
	recipe_name = "Jute Neck Gaiter"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_kenaf = 1
	)
	resulting_item = /obj/item/clothing/mask/rimworld_gaiter/kenaf
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE

/datum/rimworld_recipe/cloth_gaiter
	recipe_name = "Cloth Neck Gaiter"
	recipe_requirements = list(
		/obj/item/stack/medical/gauze/rimworld_cloth = 1
	)
	resulting_item = /obj/item/clothing/mask/rimworld_gaiter/cloth
	crafting_time = 5 SECONDS
	relevant_skill = /datum/skill/rimworld_tailoring
	relevant_skill_reward = SKILL_EXP_GRANT_MEDIUM
	production_sound = SFX_RUSTLE
