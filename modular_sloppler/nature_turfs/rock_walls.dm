/turf/closed/rimworld_mineral
	name = "rough stone wall"
	desc = "A wall made of solid rock. Stone sold separately."

	icon = 'icons/vintagestation/wall/nature/stone.dmi'
	icon_state = "stone-0"
	base_icon_state = "stone"
	smoothing_flags = SMOOTH_BITMASK|SMOOTH_OBJ
	smoothing_groups = SMOOTH_GROUP_CLOSED_TURFS
	canSmoothWith = SMOOTH_GROUP_CLOSED_TURFS + SMOOTH_GROUP_RIMWORLD_DOORS

	baseturfs = /turf/open/misc/rimworld_stone
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS

/turf/closed/rimworld_mineral/Initialize(mapload)
	. = ..()
	baseturfs = initial(baseturfs)

/turf/closed/rimworld_mineral/attack_hand(mob/user, list/modifiers)
	. = ..()
	if(.)
		return
	if(do_after(user, 10 SECONDS, target = src))
		playsound(src, SFX_STONE_DROP, 75, TRUE)
		epic_loot()
		ScrapeAway()

/// Use this proc to make ores and whatnot spawn when mined
/turf/closed/rimworld_mineral/proc/epic_loot()
	if(prob(60))
		new /obj/item/stack/rimworld_stone(get_turf(src))
