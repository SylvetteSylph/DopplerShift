/// Spears

/obj/item/fantasy_spear
	name = "stone spear"
	desc = "A long stick with a sharpened piece of stone attached to the end. Makes good for stabbing or throwing."
	icon = 'modular_sloppler/war/icons/objects.dmi'
	icon_state = "stone_spear0"
	base_icon_state = "stone_spear"
	lefthand_file = 'modular_sloppler/war/icons/lefthand.dmi'
	righthand_file = 'modular_sloppler/war/icons/righthand.dmi'
	worn_icon = 'modular_sloppler/war/icons/worn.dmi'
	worn_icon_state = "stone_spear"
	force = 10
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK
	throwforce = 18
	throw_speed = 4
	demolition_mod = 0.75
	embed_type = /datum/embed_data/spear
	attack_verb_continuous = list("attacks", "pokes", "jabs", "tears", "lacerates", "gores")
	attack_verb_simple = list("attack", "poke", "jab", "tear", "lacerate", "gore")
	hitsound = 'sound/items/weapons/bladeslice.ogg'
	sharpness = SHARP_EDGED
	wound_bonus = -15
	bare_wound_bonus = 10
	reach = 2
	/// How much damage to do unwielded
	var/force_unwielded = 10
	/// How much damage to do wielded
	var/force_wielded = 18

/obj/item/fantasy_spear/Initialize(mapload)
	. = ..()
	force = force_unwielded
	AddComponent(/datum/component/jousting, \
		max_tile_charge = 10, \
		min_tile_charge = 5, \
		)
	AddComponent(/datum/component/two_handed, \
		force_unwielded = force_unwielded, \
		force_wielded = force_wielded, \
		icon_wielded = "[base_icon_state]1", \
	)
	update_appearance()

/obj/item/fantasy_spear/update_icon_state()
	icon_state = "[base_icon_state]0"
	return ..()

/// Axes

/obj/item/fantasy_axe
	name = "stone axe"
	desc = "A sharpened chunk of stone on the end of a stick that works good enough for cutting down trees with."
	icon = 'modular_sloppler/war/icons/objects.dmi'
	icon_state = "stone_axe"
	lefthand_file = 'modular_sloppler/war/icons/lefthand.dmi'
	righthand_file = 'modular_sloppler/war/icons/righthand.dmi'
	inhand_icon_state = "stone_axe"
	worn_icon = 'modular_sloppler/war/icons/worn.dmi'
	worn_icon_state = "stone_axe"
	w_class = WEIGHT_CLASS_NORMAL
	sharpness = SHARP_EDGED
	tool_behaviour = TOOL_SAW
	toolspeed = 1
	force = 15
	throwforce = 15
	throw_speed = 4
	throw_range = 7
	demolition_mod = 1.5
	embed_type = /datum/embed_data/hatchet
	attack_verb_continuous = list("chops", "tears", "lacerates", "cuts")
	attack_verb_simple = list("chop", "tear", "lacerate", "cut")
	hitsound = 'sound/items/weapons/bladeslice.ogg'
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_BACK

/obj/item/fantasy_axe/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/butchering, \
		speed = 6 SECONDS, \
		effectiveness = 80, \
	)

/// Knives

/obj/item/fantasy_knife
	name = "stone knife"
	desc = "A sharp piece of stone in the shape of a knife, stuck to a convieniently short piece of a wood."
	icon = 'modular_sloppler/war/icons/objects.dmi'
	icon_state = "stone_knife"
	lefthand_file = 'modular_sloppler/war/icons/lefthand.dmi'
	righthand_file = 'modular_sloppler/war/icons/righthand.dmi'
	inhand_icon_state = "stone_knife"
	worn_icon = 'modular_sloppler/war/icons/worn.dmi'
	worn_icon_state = "stone_knife"
	w_class = WEIGHT_CLASS_SMALL
	force = 10
	demolition_mod = 0.75
	throwforce = 10
	throw_speed = 3
	throw_range = 6
	wound_bonus = 0
	bare_wound_bonus = 10
	sharpness = SHARP_EDGED
	tool_behaviour = TOOL_KNIFE
	toolspeed = 1
	hitsound = 'sound/items/weapons/bladeslice.ogg'
	attack_verb_continuous = list("slashes", "stabs", "slices", "tears", "lacerates", "rips", "dices", "cuts")
	attack_verb_simple = list("slash", "stab", "slice", "tear", "lacerate", "rip", "dice", "cut")
	slot_flags = ITEM_SLOT_BELT

/obj/item/fantasy_knife/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/eyestab)
	AddComponent(/datum/component/butchering, \
		speed = 3 SECONDS, \
		effectiveness = 120, \
	)
