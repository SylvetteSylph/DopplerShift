/// Storage vessel, holds items inside like a big box

/obj/structure/fantasy_storage_pot
	name = "storage vessel"
	desc = "A massive stoneware pot for storing stuff inside of. Has a handy lid to keep everything inside."
	icon = 'modular_sloppler/furniture/icons/storage.dmi'
	icon_state = "vessel"
	base_icon_state = "vessel"
	resistance_flags = FIRE_PROOF
	density = TRUE
	anchored = FALSE
	drag_slowdown = 1
	/// What storage datum do we use
	var/datum/storage/storage_datum_to_use = /datum/storage/fantasy_storage_pot
	/// If we should display a lid sprite
	var/display_lid_sprite = FALSE

/obj/structure/fantasy_storage_pot/Initialize(mapload)
	. = ..()
	create_storage(storage_type = storage_datum_to_use)
	AddElement(/datum/element/can_shatter, number_of_shards = 0)

/obj/structure/fantasy_storage_pot/Entered(atom/movable/arrived, atom/old_loc, list/atom/old_locs)
	. = ..()
	if(length(contents))
		icon_state = "[base_icon_state]_closed"
		update_appearance()

/obj/structure/fantasy_storage_pot/Exited(atom/movable/gone, direction)
	. = ..()
	if(!length(contents))
		icon_state = base_icon_state
		update_appearance()

/obj/structure/fantasy_storage_pot/attack_hand(mob/living/user)
	if(!user.can_perform_action(src, NEED_HANDS))
		return ..()
	atom_storage.open_storage(user)
	return TRUE

/datum/storage/fantasy_storage_pot
	max_slots = 9
	max_specific_storage = WEIGHT_CLASS_GIGANTIC
	max_total_storage = (WEIGHT_CLASS_BULKY * 6)
	numerical_stacking = FALSE
	rustle_sound = TRUE
	screen_max_columns = 3
	/// What sound this makes when the storage is opened
	var/opening_sound = 'modular_sloppler/furniture/sounds/ceramic_open.wav'

/datum/storage/fantasy_storage_pot/open_storage(mob/to_show)
	. = ..()
	if(!.)
		return
	playsound(parent, opening_sound, 50, TRUE)
