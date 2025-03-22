/turf/closed/rimworld_constructed
	name = "debug constructed wall"
	desc = "Wall? I hope there's no Marts around here to see this."
	icon = 'icons/vintagestation/wall/nurture/debug.dmi'
	icon_state = "debug-0"
	base_icon_state = "debug"
	smoothing_flags = SMOOTH_BITMASK|SMOOTH_OBJ
	smoothing_groups = SMOOTH_GROUP_CLOSED_TURFS
	canSmoothWith = SMOOTH_GROUP_CLOSED_TURFS + SMOOTH_GROUP_RIMWORLD_DOORS
	luminosity = 1
	baseturfs = /turf/baseturf_bottom
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS

/turf/closed/rimworld_constructed/examine(mob/user)
	. = ..()
	. += span_notice("This can be deconstructed with an empty hand with <b>Left-Click</b>.")

/turf/closed/rimworld_constructed/attack_hand(mob/user, list/modifiers)
	. = ..()
	if(.)
		return
	playsound(src, 'sound/items/hammering_wood.ogg', 75, TRUE)
	if(do_after(user, 5 SECONDS, target = src))
		playsound(src, 'sound/items/hammering_wood.ogg', 75, TRUE)
		epic_loot()
		ScrapeAway()

/// Use this proc to make ores and whatnot spawn when mined
/turf/closed/rimworld_mineral/proc/epic_loot()
	return

// Actual walls for real

/turf/closed/rimworld_constructed/plank
	name = "wooden wall"
	desc = "Planks and boards nailed together to make a wall. Keep away from fire."

	icon = 'icons/vintagestation/wall/nurture/plank.dmi'
	icon_state = "plank-0"
	base_icon_state = "plank"

/turf/closed/rimworld_constructed/plank/epic_loot()
	new /obj/item/stack/rimworld_logs(get_turf(src), 2)

/turf/closed/rimworld_constructed/brick
	name = "stone brick wall"
	desc = "Bricks layered one on another to make a sturdy looking wall."

	icon = 'icons/vintagestation/wall/nurture/brick.dmi'
	icon_state = "brick-0"
	base_icon_state = "brick"

/turf/closed/rimworld_constructed/brick/epic_loot()
	new /obj/item/stack/rimworld_bricks(get_turf(src), 2)

/turf/closed/rimworld_constructed/smooth
	name = "smoothed stone wall"
	desc = "Natural stone that has been smoothed to look presentable."

	icon = 'icons/vintagestation/wall/nurture/smooth.dmi'
	icon_state = "smooth-0"
	base_icon_state = "smooth"

/turf/closed/rimworld_constructed/smooth/epic_loot()
	if(prob(60))
		new /obj/item/stack/rimworld_stone(get_turf(src))
