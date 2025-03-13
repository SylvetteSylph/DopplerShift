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
	var/area/our_area = get_area(src)
	if(our_area.outside_lights)
		set_up_outside_lights()

/turf/closed/rimworld_mineral/proc/set_up_outside_lights()
	GLOB.daynight_effected_turfs += src
	light_color = GLOB.daynight_light_color
	light_power = GLOB.daynight_light_power
	light_range = GLOB.daynight_light_power + 1
	light_height = LIGHTING_HEIGHT
	update_light()

// Terrible solution to my problems
/turf/closed/rimworld_mineral/on_change_area(area/old_area, area/new_area)
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
