/turf/open/water/rimworld
	name = "shallow water"
	desc = "A pool of water, is it a pond? Is it a river? I don't know, you're the one looking at it, you tell me."
	icon = 'icons/vintagestation/floor/nature/shallow_water.dmi'
	icon_state = "shallow_water-255"
	base_icon_state = "shallow_water"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = SMOOTH_GROUP_TURF_OPEN + SMOOTH_GROUP_SHALLOW_WATER_HORIZON
	canSmoothWith = SMOOTH_GROUP_SHALLOW_WATER_HORIZON

	baseturfs = /turf/open/water/rimworld
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS
	planetary_atmos = TRUE
	immerse_overlay_color = "#3c6677"

/turf/open/water/rimworld/Initialize(mapload)
	. = ..()
	var/area/our_area = get_area(src)
	if(our_area.outside_lights)
		set_up_outside_lights()

/turf/open/water/rimworld/proc/set_up_outside_lights()
	GLOB.daynight_effected_turfs += src
	light_color = GLOB.daynight_light_color
	light_power = GLOB.daynight_light_power
	light_range = GLOB.daynight_light_power + 1
	light_height = LIGHTING_HEIGHT
	update_light()

// Terrible solution to my problems
/turf/open/water/rimworld/on_change_area(area/old_area, area/new_area)
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

/turf/open/water/rimworld/deep
	name = "deep water"
	icon = 'icons/vintagestation/floor/nature/deep_water.dmi'
	icon_state = "deep_water-255"
	base_icon_state = "deep_water"
	smoothing_groups = SMOOTH_GROUP_TURF_OPEN + SMOOTH_GROUP_DEEP_WATER_HORIZON
	canSmoothWith = SMOOTH_GROUP_DEEP_WATER_HORIZON

	baseturfs = /turf/open/water/rimworld/deep
	immerse_overlay_color = "#314755"

	slowdown = 2
