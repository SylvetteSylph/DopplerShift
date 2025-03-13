/turf/open/misc/rimworld_dirt/super
	name = "rich dirt"
	desc = "Extra tasty dirt, for plants, that is."
	gender = PLURAL

	icon = 'icons/vintagestation/floor/nature/super_dirt.dmi'
	icon_state = "super_dirt-255"
	base_icon_state = "super_dirt"
	tiled_dirt = FALSE
	transform = TRANSLATE_MATRIX(-16,-16)

	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = SMOOTH_GROUP_TURF_OPEN + SMOOTH_GROUP_SLOPPLER_SUPER_DIRT
	canSmoothWith = SMOOTH_GROUP_CLOSED_TURFS + SMOOTH_GROUP_SLOPPLER_SUPER_DIRT
	layer = MID_TURF_LAYER + 0.01

	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	planetary_atmos = TRUE
	baseturfs = /turf/open/misc/rimworld_dirt/super

	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	clawfootstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

	slowdown = 0.3

/turf/open/misc/rimworld_dirt
	name = "dirt"
	desc = "It's dirt. What else did you expect to see here?"
	gender = PLURAL

	icon = 'icons/vintagestation/floor/nature/dirt.dmi'
	icon_state = "dirt-255"
	base_icon_state = "dirt"
	tiled_dirt = FALSE
	transform = TRANSLATE_MATRIX(-16,-16)

	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = SMOOTH_GROUP_TURF_OPEN + SMOOTH_GROUP_SLOPPLER_DIRT
	canSmoothWith = SMOOTH_GROUP_CLOSED_TURFS + SMOOTH_GROUP_SLOPPLER_DIRT + SMOOTH_GROUP_SLOPPLER_SUPER_DIRT
	layer = MID_TURF_LAYER

	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	planetary_atmos = TRUE
	baseturfs = /turf/open/misc/rimworld_dirt

	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	clawfootstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/misc/rimworld_dirt/Initialize(mapload)
	. = ..()
	var/area/our_area = get_area(src)
	if(our_area.outside_lights)
		set_up_outside_lights()

/turf/open/misc/rimworld_dirt/proc/set_up_outside_lights()
	GLOB.daynight_effected_turfs += src
	light_color = GLOB.daynight_light_color
	light_power = GLOB.daynight_light_power
	light_range = GLOB.daynight_light_power + 1
	light_height = LIGHTING_HEIGHT
	update_light()

// Terrible solution to my problems
/turf/open/misc/rimworld_dirt/on_change_area(area/old_area, area/new_area)
	. = ..()
	if(new_area.outside_lights)
		GLOB.daynight_effected_turfs += src
		light_color = GLOB.daynight_light_color
		light_power = GLOB.daynight_light_power
		light_range = GLOB.daynight_light_power + 1
		light_height = LIGHTING_HEIGHT
		update_light()
	else
		GLOB.daynight_effected_turfs -= src
		light_color = initial(light_color)
		light_power = initial(light_power)
		light_range = initial(light_range)
		light_height = initial(light_height)
		update_light()

/turf/open/misc/rimworld_mud
	name = "mud"
	desc = "Typically, this means water is near."
	gender = PLURAL

	icon = 'icons/vintagestation/floor/nature/mud.dmi'
	icon_state = "mud-255"
	base_icon_state = "mud"
	tiled_dirt = FALSE
	transform = TRANSLATE_MATRIX(-16,-16)

	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = SMOOTH_GROUP_TURF_OPEN + SMOOTH_GROUP_SLOPPLER_MUD
	canSmoothWith = SMOOTH_GROUP_CLOSED_TURFS + SMOOTH_GROUP_SLOPPLER_MUD + SMOOTH_GROUP_SLOPPLER_DIRT + SMOOTH_GROUP_SLOPPLER_SUPER_DIRT
	layer = MID_TURF_LAYER - 0.02

	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	planetary_atmos = TRUE
	baseturfs = /turf/open/misc/rimworld_mud

	footstep = FOOTSTEP_WATER
	barefootstep = FOOTSTEP_WATER
	clawfootstep = FOOTSTEP_WATER
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

	slowdown = 0.6

/turf/open/misc/rimworld_mud/Initialize(mapload)
	. = ..()
	var/area/our_area = get_area(src)
	if(our_area.outside_lights)
		set_up_outside_lights()

/turf/open/misc/rimworld_mud/proc/set_up_outside_lights()
	GLOB.daynight_effected_turfs += src
	light_color = GLOB.daynight_light_color
	light_power = GLOB.daynight_light_power
	light_range = GLOB.daynight_light_power + 1
	light_height = LIGHTING_HEIGHT
	update_light()

// Terrible solution to my problems
/turf/open/misc/rimworld_mud/on_change_area(area/old_area, area/new_area)
	. = ..()
	if(new_area.outside_lights)
		GLOB.daynight_effected_turfs += src
		light_color = GLOB.daynight_light_color
		light_power = GLOB.daynight_light_power
		light_range = GLOB.daynight_light_power + 1
		light_height = LIGHTING_HEIGHT
		update_light()
	else
		GLOB.daynight_effected_turfs -= src
		light_color = initial(light_color)
		light_power = initial(light_power)
		light_range = initial(light_range)
		light_height = initial(light_height)
		update_light()

/turf/open/misc/rimworld_stone
	name = "rough stone"
	desc = "Try not to trip, now."
	gender = PLURAL

	icon = 'icons/vintagestation/floor/nature/stone.dmi'
	icon_state = "stone-255"
	base_icon_state = "stone"
	tiled_dirt = FALSE
	transform = TRANSLATE_MATRIX(-16,-16)

	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = SMOOTH_GROUP_TURF_OPEN + SMOOTH_GROUP_WILD_STONE_FLOOR
	canSmoothWith = SMOOTH_GROUP_CLOSED_TURFS + SMOOTH_GROUP_WILD_STONE_FLOOR + SMOOTH_GROUP_SLOPPLER_DIRT + SMOOTH_GROUP_SLOPPLER_SUPER_DIRT
	layer = MID_TURF_LAYER - 0.01

	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	planetary_atmos = TRUE
	baseturfs = /turf/open/misc/rimworld_stone

	footstep = FOOTSTEP_FLOOR
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/misc/rimworld_stone/Initialize(mapload)
	. = ..()
	var/area/our_area = get_area(src)
	if(our_area.outside_lights)
		set_up_outside_lights()

/turf/open/misc/rimworld_stone/proc/set_up_outside_lights()
	GLOB.daynight_effected_turfs += src
	light_color = GLOB.daynight_light_color
	light_power = GLOB.daynight_light_power
	light_range = GLOB.daynight_light_power + 1
	light_height = LIGHTING_HEIGHT
	update_light()

// Terrible solution to my problems
/turf/open/misc/rimworld_stone/on_change_area(area/old_area, area/new_area)
	. = ..()
	if(new_area.outside_lights)
		GLOB.daynight_effected_turfs += src
		light_color = GLOB.daynight_light_color
		light_power = GLOB.daynight_light_power
		light_range = GLOB.daynight_light_power + 1
		light_height = LIGHTING_HEIGHT
		update_light()
	else
		GLOB.daynight_effected_turfs -= src
		light_color = initial(light_color)
		light_power = initial(light_power)
		light_range = initial(light_range)
		light_height = initial(light_height)
		update_light()
