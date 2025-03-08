/turf/closed/rimworld_mineral
	name = "rough stone wall"
	desc = "A wall made of solid rock. Stone sold separately"

	icon = 'icons/vintagestation/wall/nature/stone.dmi'
	icon_state = "stone-0"
	base_icon_state = "stone"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = SMOOTH_GROUP_CLOSED_TURFS + SMOOTH_GROUP_WILD_STONE_WALL
	canSmoothWith = SMOOTH_GROUP_WILD_STONE_WALL

	baseturfs = /turf/open/misc/rimworld_stone
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
