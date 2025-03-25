// Gloves

/obj/item/clothing/gloves/rimworld_gloves
	name = "gloves"
	desc = "Gloves, for looking fancy, looking cool, or protecting your fingers while doing actual work."
	icon_state = "gloves"
	worn_icon_state = "gloves"
	inhand_icon_state = null
	siemens_coefficient = 0.25

/obj/item/clothing/gloves/rimworld_gloves/kenaf
	name = "jute gloves"
	icon = KENAF_OBJ_ICON
	worn_icon = KENAF_WORN_ICON
	clothing_traits = list(TRAIT_QUICK_CARRY)
	armor_type = /datum/armor/rimworld_fabric_clothes

/obj/item/clothing/gloves/rimworld_gloves/cloth
	name = "cloth gloves"
	icon = CLOTH_OBJ_ICON
	worn_icon = CLOTH_WORN_ICON
	clothing_traits = list(TRAIT_QUICK_CARRY)
	armor_type = /datum/armor/rimworld_fabric_clothes

/obj/item/clothing/gloves/rimworld_gloves/leather
	name = "leather gloves"
	icon = LEATHER_OBJ_ICON
	worn_icon = LEATHER_WORN_ICON
	clothing_traits = list(TRAIT_QUICK_BUILD)
	armor_type = /datum/armor/rimworld_leather_clothes
