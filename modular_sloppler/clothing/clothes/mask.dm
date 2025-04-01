// Gaiter
/obj/item/clothing/mask/rimworld_gaiter
	name = "neck gaiter"
	desc = "A cloth for covering your neck, and usually part of your face too, but that part's optional."
	icon = 'modular_doppler/modular_cosmetics/GAGS/icons/obj/face.dmi'
	icon_state = "gaiter"
	worn_icon = 'modular_doppler/modular_cosmetics/GAGS/icons/mob/face.dmi'
	inhand_icon_state = null
	actions_types = list(/datum/action/item_action/adjust)
	alternate_worn_layer = UNDER_UNIFORM_LAYER
	supported_bodyshapes = null
	bodyshape_icon_files = null
	w_class = WEIGHT_CLASS_SMALL
	flags_inv = HIDEFACIALHAIR | HIDEFACE | HIDESNOUT
	visor_flags_inv = HIDEFACIALHAIR | HIDEFACE | HIDESNOUT
	flags_cover = MASKCOVERSMOUTH
	visor_flags_cover = MASKCOVERSMOUTH
	interaction_flags_click = NEED_DEXTERITY|ALLOW_RESTING

/obj/item/clothing/mask/rimworld_gaiter/attack_self(mob/user)
	adjust_visor(user)

/obj/item/clothing/mask/rimworld_gaiter/click_alt(mob/user)
	adjust_visor(user)
	return CLICK_ACTION_SUCCESS

/obj/item/clothing/mask/rimworld_gaiter/click_alt_secondary(mob/user)
	alternate_worn_layer = (alternate_worn_layer == initial(alternate_worn_layer) ? NONE : initial(alternate_worn_layer))
	user.update_clothing(ITEM_SLOT_MASK)
	balloon_alert(user, "wearing [alternate_worn_layer == initial(alternate_worn_layer) ? "below" : "above"] suits")

/obj/item/clothing/mask/rimworld_gaiter/examine(mob/user)
	. = ..()
	. += span_notice("[src] can be worn above or below your suit. Alt-Right-click to toggle.")
	. += span_notice("Alt-click [src] to adjust it.")

/obj/item/clothing/mask/rimworld_gaiter/cloth
	name = "cloth neck gaiter"
	icon = CLOTH_OBJ_ICON
	worn_icon = CLOTH_WORN_ICON
	armor_type = /datum/armor/rimworld_fabric_clothes

/obj/item/clothing/mask/rimworld_gaiter/kenaf
	name = "jute neck gaiter"
	icon = KENAF_OBJ_ICON
	worn_icon = KENAF_WORN_ICON
	armor_type = /datum/armor/rimworld_fabric_clothes

// Visage masks
/obj/item/clothing/mask/rimworld_visage
	name = "visage mask"
	desc = "A solid mask with only holes for the eyes cut into it, used to hide the wearer's face."
	icon = 'modular_sloppler/clothing/icons/misc.dmi'
	icon_state = null
	worn_icon = 'modular_sloppler/clothing/icons/misc_worn.dmi'
	worn_icon_state = null
	inhand_icon_state = null
	flags_inv = HIDEFACE | HIDEFACIALHAIR | HIDESNOUT
	supported_bodyshapes = null
	bodyshape_icon_files = null

/obj/item/clothing/mask/rimworld_visage/wood
	name = "wood visage mask"
	icon_state = "mask_wood"
	worn_icon_state = "mask_wood"
	armor_type = /datum/armor/rimworld_fabric_clothes

/obj/item/clothing/mask/rimworld_visage/whitewood
	name = "whitewood visage mask"
	icon_state = "mask_whitewood"
	worn_icon_state = "mask_whitewood"
	armor_type = /datum/armor/rimworld_fabric_clothes

/obj/item/clothing/mask/rimworld_visage/stone
	name = "stone visage mask"
	icon_state = "mask_stone"
	worn_icon_state = "mask_stone"
	armor_type = /datum/armor/rimworld_fabric_clothes
