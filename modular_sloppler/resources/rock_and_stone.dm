/// Chunks of stone that spawn around the world

/obj/item/stack/rimworld_stone
	name = "boulder"
	desc = "I attacka you with a rock."
	icon = 'modular_sloppler/resources/icons/resources.dmi'
	icon_state = "boulder_1"
	base_icon_state = "boulder"
	inhand_icon_state = null
	w_class = WEIGHT_CLASS_BULKY
	force = 15
	throwforce = 10
	slowdown = 0.5
	max_amount = 1
	/// How many variations of sprite does this have?
	var/icon_variations = 3

/obj/item/stack/rimworld_stone/Initialize(mapload)
	. = ..()
	if(icon_variations > 1)
		icon_state = "[base_icon_state]_[rand(1, icon_variations)]"
	AddComponent(/datum/component/two_handed, require_twohands = TRUE, force_wielded = 18)
	AddComponent(/datum/component/butchering, \
		speed = 15 SECONDS, \
		effectiveness = 50, \
		can_be_blunt = FALSE, \
	)
