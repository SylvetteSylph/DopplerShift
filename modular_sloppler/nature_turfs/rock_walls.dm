/turf/closed/rimworld_mineral
	name = "rough stone wall"
	desc = "A wall made of solid rock. Stone sold separately."
	icon = 'icons/vintagestation/wall/nature/stone.dmi'
	icon_state = "stone-0"
	base_icon_state = "stone"
	smoothing_flags = SMOOTH_BITMASK|SMOOTH_OBJ
	smoothing_groups = SMOOTH_GROUP_CLOSED_TURFS
	canSmoothWith = SMOOTH_GROUP_CLOSED_TURFS + SMOOTH_GROUP_RIMWORLD_DOORS
	luminosity = 1
	baseturfs = /turf/open/misc/rimworld_stone
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS

/turf/closed/rimworld_mineral/Initialize(mapload)
	. = ..()
	baseturfs = initial(baseturfs)

/turf/closed/rimworld_mineral/examine(mob/user)
	. = ..()
	. += span_notice("This can be mined with an empty hand with <b>Left-Click</b>.")
	. += span_notice("This can be smoothed with an empty hand with <b>Right-Click</b>.")

/turf/closed/rimworld_mineral/attack_hand(mob/user, list/modifiers)
	. = ..()
	if(.)
		return
	playsound(src, SFX_STONE_DROP, 75, TRUE)
	if(do_after(user, 6 SECONDS, target = src))
		playsound(src, SFX_STONE_DROP, 75, TRUE)
		epic_loot()
		ScrapeAway()

/turf/closed/rimworld_mineral/attack_hand_secondary(mob/user, list/modifiers)
	playsound(src, SFX_STONE_DROP, 75, TRUE)
	if(!do_after(user, 4 SECONDS, target = src))
		return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
	playsound(src, SFX_STONE_DROP, 75, TRUE)
	ChangeTurf(/turf/closed/rimworld_constructed/smooth)
	return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/// Use this proc to make ores and whatnot spawn when mined
/turf/closed/rimworld_mineral/proc/epic_loot()
	if(prob(60))
		new /obj/item/stack/rimworld_stone(get_turf(src))
