// Raincoat

/obj/item/clothing/suit/jacket/rimworld_raincoat
	name = "raincoat"
	desc = "A multi-layered coat made to protect the wearer from rain."
	icon_state = "raincoat"
	worn_icon_state = "raincoat"
	inhand_icon_state = null
	allowed = null

/obj/item/clothing/suit/jacket/rimworld_raincoat/Initialize(mapload)
	. = ..()
	allowed += GLOB.rimworld_suit_allowed

/obj/item/clothing/suit/jacket/rimworld_raincoat/kenaf
	name = "jute raincoat"
	icon = KENAF_OBJ_ICON
	worn_icon = KENAF_WORN_ICON

/obj/item/clothing/suit/jacket/rimworld_raincoat/cloth
	name = "cloth raincoat"
	icon = CLOTH_OBJ_ICON
	worn_icon = CLOTH_WORN_ICON

/obj/item/clothing/suit/jacket/rimworld_raincoat/leather
	name = "leather raincoat"
	icon = LEATHER_OBJ_ICON
	worn_icon = LEATHER_WORN_ICON

// Jacket

/obj/item/clothing/suit/jacket/rimworld_jacket
	name = "jacket"
	desc = "A comfortable jacket."
	icon_state = "jacket"
	worn_icon_state = "jacket"
	inhand_icon_state = null
	allowed = null

/obj/item/clothing/suit/jacket/rimworld_jacket/Initialize(mapload)
	. = ..()
	allowed += GLOB.rimworld_suit_allowed

/obj/item/clothing/suit/jacket/rimworld_jacket/kenaf
	name = "jute jacket"
	icon = KENAF_OBJ_ICON
	worn_icon = KENAF_WORN_ICON

/obj/item/clothing/suit/jacket/rimworld_jacket/cloth
	name = "cloth jacket"
	icon = CLOTH_OBJ_ICON
	worn_icon = CLOTH_WORN_ICON

/obj/item/clothing/suit/jacket/rimworld_jacket/leather
	name = "leather jacket"
	icon = LEATHER_OBJ_ICON
	worn_icon = LEATHER_WORN_ICON

// Vest

/obj/item/clothing/suit/jacket/rimworld_vest
	name = "vest"
	desc = "A sleeveless vest, for style."
	icon_state = "vest"
	worn_icon_state = "vest"
	inhand_icon_state = null
	allowed = null

/obj/item/clothing/suit/jacket/rimworld_vest/Initialize(mapload)
	. = ..()
	allowed += GLOB.rimworld_suit_allowed

/obj/item/clothing/suit/jacket/rimworld_vest/kenaf
	name = "jute vest"
	icon = KENAF_OBJ_ICON
	worn_icon = KENAF_WORN_ICON

/obj/item/clothing/suit/jacket/rimworld_vest/cloth
	name = "cloth vest"
	icon = CLOTH_OBJ_ICON
	worn_icon = CLOTH_WORN_ICON

/obj/item/clothing/suit/jacket/rimworld_vest/leather
	name = "leather vest"
	icon = LEATHER_OBJ_ICON
	worn_icon = LEATHER_WORN_ICON
