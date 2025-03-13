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

	footstep = FOOTSTEP_FLOOR
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/rimworld_constructed/Initialize(mapload)
	. = ..()
	var/area/our_area = get_area(src)
	if(our_area.outside_lights)
		set_up_outside_lights()

/turf/open/rimworld_constructed/proc/set_up_outside_lights()
	GLOB.daynight_effected_turfs += src
	light_color = GLOB.daynight_light_color
	light_power = GLOB.daynight_light_power
	light_range = GLOB.daynight_light_power + 1
	light_height = LIGHTING_HEIGHT
	update_light()

// Terrible solution to my problems
/turf/open/rimworld_constructed/on_change_area(area/old_area, area/new_area)
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

// Actual floors for real

/turf/open/rimworld_constructed/plank
	name = "wooden flooring"
	desc = "Planks and boards nailed to the ground. Keep away from fire."
	icon_state = "plank"

	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/rimworld_constructed/brick
	name = "stone brick flooring"
	desc = "Bricks layered one aside another to make a sturdy looking floor."
	icon_state = "brick"

/turf/open/rimworld_constructed/smooth
	name = "smoothed stone flooring"
	desc = "Natural stone that has been smoothed to look presentable."
	icon_state = "smooth"
