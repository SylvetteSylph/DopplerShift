// Plain Shirt

/obj/item/clothing/under/rimworld_shirt
	name = "underclothes"
	desc = "Simple clothing, a top and bottom, sometimes without that first one."
	icon_state = "shirt"
	worn_icon_state = "shirt"
	inhand_icon_state = null
	supported_bodyshapes = list(BODYSHAPE_HUMANOID, BODYSHAPE_DIGITIGRADE)
	has_sensor = NO_SENSORS
	can_adjust = TRUE
	alt_covers_chest = FALSE

/obj/item/clothing/under/rimworld_shirt/kenaf
	name = "jute underclothes"
	icon = KENAF_OBJ_ICON
	worn_icon = KENAF_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = KENAF_WORN_ICON,
		BODYSHAPE_DIGITIGRADE_T = KENAF_DIGI_ICON,
	)

/obj/item/clothing/under/rimworld_shirt/cloth
	name = "cloth underclothes"
	icon = CLOTH_OBJ_ICON
	worn_icon = CLOTH_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = CLOTH_WORN_ICON,
		BODYSHAPE_DIGITIGRADE_T = CLOTH_DIGI_ICON,
	)

/obj/item/clothing/under/rimworld_shirt/leather
	name = "leather underclothes"
	icon = LEATHER_OBJ_ICON
	worn_icon = LEATHER_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = LEATHER_WORN_ICON,
		BODYSHAPE_DIGITIGRADE_T = LEATHER_DIGI_ICON,
	)

// The Skirt Version

/obj/item/clothing/under/rimworld_skirt
	name = "underskirt"
	desc = "Simple clothing, a top and bottom, sometimes without that first one. The bottom on this one is a skirt. \
		Or a kilt if you're that guy."
	icon_state = "skirt"
	worn_icon_state = "skirt"
	inhand_icon_state = null
	supported_bodyshapes = list(BODYSHAPE_HUMANOID)
	has_sensor = NO_SENSORS
	can_adjust = TRUE
	alt_covers_chest = FALSE

/obj/item/clothing/under/rimworld_skirt/kenaf
	name = "jute underskirt"
	icon = KENAF_OBJ_ICON
	worn_icon = KENAF_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = KENAF_WORN_ICON,
	)

/obj/item/clothing/under/rimworld_skirt/cloth
	name = "cloth underskirt"
	icon = CLOTH_OBJ_ICON
	worn_icon = CLOTH_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = CLOTH_WORN_ICON,
	)

/obj/item/clothing/under/rimworld_skirt/leather
	name = "leather underskirt"
	icon = LEATHER_OBJ_ICON
	worn_icon = LEATHER_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = LEATHER_WORN_ICON,
	)

// Chestrags

/obj/item/clothing/under/rimworld_chestrags
	name = "chestrags"
	desc = "Large pieces of fabric wrapped around your body for a more modest but not too modest look."
	icon_state = "chestrags"
	worn_icon_state = "chestrags"
	inhand_icon_state = null
	supported_bodyshapes = list(BODYSHAPE_HUMANOID, BODYSHAPE_DIGITIGRADE)
	body_parts_covered = CHEST|GROIN|LEGS
	has_sensor = NO_SENSORS
	can_adjust = FALSE

/obj/item/clothing/under/rimworld_chestrags/kenaf
	name = "jute chestrags"
	icon = KENAF_OBJ_ICON
	worn_icon = KENAF_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = KENAF_WORN_ICON,
		BODYSHAPE_DIGITIGRADE_T = KENAF_DIGI_ICON,
	)

/obj/item/clothing/under/rimworld_chestrags/cloth
	name = "cloth chestrags"
	icon = CLOTH_OBJ_ICON
	worn_icon = CLOTH_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = CLOTH_WORN_ICON,
		BODYSHAPE_DIGITIGRADE_T = CLOTH_DIGI_ICON,
	)

// Waistrags

/obj/item/clothing/under/rimworld_waistrags
	name = "waistrags"
	desc = "Large pieces of fabric wrapped around your lower body for a more modest but not too modest look."
	icon_state = "waistrags"
	worn_icon_state = "waistrags"
	inhand_icon_state = null
	supported_bodyshapes = list(BODYSHAPE_HUMANOID, BODYSHAPE_DIGITIGRADE)
	body_parts_covered = CHEST|GROIN|LEGS
	has_sensor = NO_SENSORS
	can_adjust = FALSE

/obj/item/clothing/under/rimworld_waistrags/kenaf
	name = "jute waistrags"
	icon = KENAF_OBJ_ICON
	worn_icon = KENAF_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = KENAF_WORN_ICON,
		BODYSHAPE_DIGITIGRADE_T = KENAF_DIGI_ICON,
	)

/obj/item/clothing/under/rimworld_waistrags/cloth
	name = "cloth waistrags"
	icon = CLOTH_OBJ_ICON
	worn_icon = CLOTH_WORN_ICON
	bodyshape_icon_files = list(
		BODYSHAPE_HUMANOID_T = CLOTH_WORN_ICON,
		BODYSHAPE_DIGITIGRADE_T = CLOTH_DIGI_ICON,
	)
