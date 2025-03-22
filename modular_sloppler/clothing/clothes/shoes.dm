// Boots

/obj/item/clothing/shoes/jackboots/rimworld_boots
	name = "boots"
	desc = "Boots, for heavier work and style than a regular pair of shoes."
	icon_state = "boots"
	worn_icon_state = "boots"
	inhand_icon_state = null
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION
	supported_bodyshapes = list(BODYSHAPE_HUMANOID, BODYSHAPE_DIGITIGRADE)

/obj/item/clothing/shoes/jackboots/rimworld_boots/leather
	name = "leather boots"
	icon = LEATHER_OBJ_ICON
	worn_icon = LEATHER_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = LEATHER_WORN_ICON,
		BODYSHAPE_DIGITIGRADE_T = LEATHER_DIGI_ICON,
	)

// Shoes

/obj/item/clothing/shoes/rimworld_shoes
	name = "shoes"
	desc = "Shoes, to keep your feet off of the ground."
	icon_state = "shoes"
	worn_icon_state = "shoes"
	inhand_icon_state = null
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION
	supported_bodyshapes = list(BODYSHAPE_HUMANOID, BODYSHAPE_DIGITIGRADE)

/obj/item/clothing/shoes/rimworld_shoes/kenaf
	name = "jute shoes"
	icon = KENAF_OBJ_ICON
	worn_icon = KENAF_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = KENAF_WORN_ICON,
		BODYSHAPE_DIGITIGRADE_T = KENAF_DIGI_ICON,
	)

/obj/item/clothing/shoes/rimworld_shoes/cloth
	name = "cloth shoes"
	icon = CLOTH_OBJ_ICON
	worn_icon = CLOTH_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = CLOTH_WORN_ICON,
		BODYSHAPE_DIGITIGRADE_T = CLOTH_DIGI_ICON,
	)

/obj/item/clothing/shoes/rimworld_shoes/leather
	name = "leather shoes"
	icon = LEATHER_OBJ_ICON
	worn_icon = LEATHER_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = LEATHER_WORN_ICON,
		BODYSHAPE_DIGITIGRADE_T = LEATHER_DIGI_ICON,
	)
