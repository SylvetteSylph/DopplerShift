/turf/open/rimworld_constructed
	name = "debug constructed floor"
	desc = "Wall? I hope there's no Marts around here to see this."
	icon = 'icons/vintagestation/floor/nurture/unsmooth.dmi'
	icon_state = "debug"
	layer = MID_TURF_LAYER - 0.03 // Under dirt and mud and whatnot. Update if anything lower than this exists
	baseturfs = /turf/baseturf_bottom
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	tiled_dirt = FALSE
	planetary_atmos = TRUE
	luminosity = 1
	footstep = FOOTSTEP_FLOOR
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	/// The skill gained when deconstructing this
	var/gained_skill

/turf/open/rimworld_constructed/examine(mob/user)
	. = ..()
	. += span_notice("This can be deconstructed with an empty hand with <b>Right-Click</b>.")

/turf/open/rimworld_constructed/attack_hand_secondary(mob/user, list/modifiers)
	playsound(src, 'sound/items/hammering_wood.ogg', 75, TRUE)
	if(do_after(user, (3 SECONDS) * user.mind.get_skill_modifier(gained_skill, SKILL_SPEED_MODIFIER), target = src))
		playsound(src, 'sound/items/hammering_wood.ogg', 75, TRUE)
		epic_loot()
		if(gained_skill)
			user.mind.adjust_experience(gained_skill, SKILL_EXP_GRANT_LITTLE)
		ScrapeAway()
		return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
	return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/// Use this proc to make ores and whatnot spawn when mined
/turf/open/rimworld_constructed/proc/epic_loot()
	return

// Actual floors for real

/turf/open/rimworld_constructed/plank
	name = "wooden flooring"
	desc = "Planks and boards nailed to the ground. Keep away from fire."
	icon_state = "plank"
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	gianed_skill = /datum/skill/rimworld_carpentry

/turf/open/rimworld_constructed/plank/epic_loot()
	new /obj/item/stack/rimworld_logs(get_turf(src))

/turf/open/rimworld_constructed/brick
	name = "stone brick flooring"
	desc = "Bricks layered one aside another to make a sturdy looking floor."
	icon_state = "brick"
	gained_skill = /datum/skill/rimworld_masonry

/turf/open/rimworld_constructed/brick/epic_loot()
	new /obj/item/stack/rimworld_bricks(get_turf(src))

/turf/open/rimworld_constructed/smooth
	name = "smoothed stone flooring"
	desc = "Natural stone that has been smoothed to look presentable."
	icon_state = "smooth"
	gained_skill = /datum/skill/rimworld_masonry

/turf/open/rimworld_constructed/smooth/epic_loot()
	return
