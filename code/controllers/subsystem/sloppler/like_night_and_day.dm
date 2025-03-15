GLOBAL_VAR_INIT(daynight_light_color, "#FFFFFF")
GLOBAL_VAR_INIT(daynight_light_power, 2)
GLOBAL_VAR_INIT(daynight_light_alpha, 255)

SUBSYSTEM_DEF(daynight)
	name = "Daynight"
	flags = SS_NO_FIRE
	init_order = 1000 // THE LAST ONE FUCK YOU
	runlevels = RUNLEVELS_DEFAULT
	/// List of all areas we check for in the day/night cycle
	var/list/areas_influenced = list(
		/area/vintage/surface_generator,
	)
	/// Color to use during day
	var/daytime_color = "#FFFFFF"
	/// Daytime alpha
	var/daytime_alpha = 255
	/// How long daytime lasts
	var/daytime_duration = 15 MINUTES
	/// Color to use transitioning from or to evening/morning
	var/day_transition_color = "#f6cd26"
	/// Alpha to use during transition
	var/day_transition_alpha = 200
	/// How long day transition lasts
	var/day_transition_duration = 5 MINUTES
	/// Color to use during evening/morning
	var/golden_hour_color = "#ee243d"
	/// Golden hour alpha
	var/golden_hour_alpha = 125
	/// How long golden (red) hour lasts
	var/golden_hour_duration = 5 MINUTES
	/// Color to use when reaching into night
	var/night_color = "#755f9c"
	/// Alpha for night time
	var/night_alpha = 50
	/// How long night lasts
	var/night_duration = 10 MINUTES

	/// The base for max light power to do math with
	var/maximum_light_power = 2

/// FIX THESE LATER

/// THE LIGHT UPDATES SUPER SLOW
/// MAYBE MAKE IT A SIGNAL THAT UPDATES ALL OF THE LIGHTING AT ONCE INSTEAD OF ONE BY ONE?
/// ALTRENATIVELY MAKE A FUNCTION TO ONLY MAKE TURFS THAT ARE NEXT TO A DIFFERENT AREA THE ONES THAT GLOW?
/// IT WORKS JUST WAY TOO SLOW TO BE USABLE I THINK.

/datum/controller/subsystem/daynight/Initialize()
	addtimer(CALLBACK(src, PROC_REF(start_afternoon_transition)), 10 MINUTES)
	return SS_INIT_SUCCESS

/// Gets the areas the controller will need to edit
/datum/controller/subsystem/daynight/proc/get_areas_to_edit()
	var/list/areas_to_edit = list()
	for(var/area_to_check in areas_influenced)
		areas_to_edit += GLOB.areas_by_type[area_to_check]
	return areas_to_edit

/// Finds all the turfs we need to keep track of for lighting and whatnot, for backup and debug use
/datum/controller/subsystem/daynight/proc/fill_daynight_turfs_list()
	var/list/areas_pulled_from = get_areas_to_edit()
	for(var/area/area_to_check in areas_pulled_from)
		for(var/turf/new_light_turf in area_to_check.contents)
			GLOB.daynight_effected_turfs += new_light_turf
			new_light_turf.light_color = GLOB.daynight_light_color
			new_light_turf.light_power = GLOB.daynight_light_power
			new_light_turf.light_range = GLOB.daynight_light_power + 1
			new_light_turf.light_height = LIGHTING_HEIGHT
			INVOKE_ASYNC(new_light_turf, TYPE_PROC_REF(/atom/, update_light))

/// Starts the transition to afternoon
/datum/controller/subsystem/daynight/proc/start_afternoon_transition(iteration = 1)
	var/list/areas_edited_now = get_areas_to_edit()
	for(var/area/surface_area in areas_edited_now)
		surface_area.base_lighting_alpha = LERP(daytime_alpha, day_transition_alpha, iteration / 5)
		GLOB.daynight_light_alpha = surface_area.base_lighting_alpha
		surface_area.base_lighting_color = hsl_gradient(iteration / 5, 0, daytime_color, 1, day_transition_color)
		GLOB.daynight_light_color = surface_area.base_lighting_color
		GLOB.daynight_light_power = GLOB.daynight_light_alpha * (maximum_light_power / 255)
		surface_area.update_base_lighting()
	for(var/turf/light_update_turf in GLOB.daynight_effected_turfs)
		light_update_turf.light_color = GLOB.daynight_light_color
		light_update_turf.light_power = GLOB.daynight_light_power
		light_update_turf.light_range = GLOB.daynight_light_power + 1
		INVOKE_ASYNC(light_update_turf, TYPE_PROC_REF(/atom/, update_light))
	if(iteration < 5)
		addtimer(CALLBACK(src, PROC_REF(start_afternoon_transition), iteration + 1), day_transition_duration / 5)
		return
	addtimer(CALLBACK(src, PROC_REF(start_afternoon_golden_hour)), day_transition_duration / 5)

/// Starts the transition to afternoon golden hour
/datum/controller/subsystem/daynight/proc/start_afternoon_golden_hour(iteration = 1)
	var/list/areas_edited_now = get_areas_to_edit()
	for(var/area/surface_area in areas_edited_now)
		surface_area.base_lighting_alpha = LERP(day_transition_alpha, golden_hour_alpha, iteration / 5)
		GLOB.daynight_light_alpha = surface_area.base_lighting_alpha
		surface_area.base_lighting_color = hsl_gradient(iteration / 5, 0, day_transition_color, 1, golden_hour_color)
		GLOB.daynight_light_color = surface_area.base_lighting_color
		GLOB.daynight_light_power = GLOB.daynight_light_alpha * (maximum_light_power / 255)
		surface_area.update_base_lighting()
	for(var/turf/light_update_turf in GLOB.daynight_effected_turfs)
		light_update_turf.light_color = GLOB.daynight_light_color
		light_update_turf.light_power = GLOB.daynight_light_power
		light_update_turf.light_range = GLOB.daynight_light_power + 1
		INVOKE_ASYNC(light_update_turf, TYPE_PROC_REF(/atom/, update_light))
	if(iteration < 5)
		addtimer(CALLBACK(src, PROC_REF(start_afternoon_golden_hour), iteration + 1), day_transition_duration / 5)
		return
	addtimer(CALLBACK(src, PROC_REF(start_end_of_day)), golden_hour_duration / 5)

/// Starts the transition to the end of the day
/datum/controller/subsystem/daynight/proc/start_end_of_day(iteration = 1)
	var/list/areas_edited_now = get_areas_to_edit()
	for(var/area/surface_area in areas_edited_now)
		surface_area.base_lighting_alpha = LERP(golden_hour_alpha, night_alpha, iteration / 5)
		GLOB.daynight_light_alpha = surface_area.base_lighting_alpha
		surface_area.base_lighting_color = hsl_gradient(iteration / 5, 0, golden_hour_color, 1, night_color)
		GLOB.daynight_light_color = surface_area.base_lighting_color
		GLOB.daynight_light_power = GLOB.daynight_light_alpha * (maximum_light_power / 255)
		surface_area.update_base_lighting()
	for(var/turf/light_update_turf in GLOB.daynight_effected_turfs)
		light_update_turf.light_color = GLOB.daynight_light_color
		light_update_turf.light_power = GLOB.daynight_light_power
		light_update_turf.light_range = GLOB.daynight_light_power + 1
		INVOKE_ASYNC(light_update_turf, TYPE_PROC_REF(/atom/, update_light))
	if(iteration < 5)
		addtimer(CALLBACK(src, PROC_REF(start_end_of_day), iteration + 1), day_transition_duration / 10)
		return
	addtimer(CALLBACK(src, PROC_REF(start_morning_golden_hour)), night_duration / 2)

/// Starts the transition to early morning
/datum/controller/subsystem/daynight/proc/start_morning_golden_hour(iteration = 1)
	var/list/areas_edited_now = get_areas_to_edit()
	for(var/area/surface_area in areas_edited_now)
		surface_area.base_lighting_alpha = LERP(night_alpha, golden_hour_alpha, iteration / 5)
		GLOB.daynight_light_alpha = surface_area.base_lighting_alpha
		surface_area.base_lighting_color = hsl_gradient(iteration / 5, 0, night_color, 1, golden_hour_color)
		GLOB.daynight_light_color = surface_area.base_lighting_color
		GLOB.daynight_light_power = GLOB.daynight_light_alpha * (maximum_light_power / 255)
		surface_area.update_base_lighting()
	for(var/turf/light_update_turf in GLOB.daynight_effected_turfs)
		light_update_turf.light_color = GLOB.daynight_light_color
		light_update_turf.light_power = GLOB.daynight_light_power
		light_update_turf.light_range = GLOB.daynight_light_power + 1
		INVOKE_ASYNC(light_update_turf, TYPE_PROC_REF(/atom/, update_light))
	if(iteration < 5)
		addtimer(CALLBACK(src, PROC_REF(start_morning_golden_hour), iteration + 1), day_transition_duration / 5)
		return
	addtimer(CALLBACK(src, PROC_REF(start_morning_transition)), golden_hour_duration / 5)

/// Starts the transition to morning
/datum/controller/subsystem/daynight/proc/start_morning_transition(iteration = 1)
	var/list/areas_edited_now = get_areas_to_edit()
	for(var/area/surface_area in areas_edited_now)
		surface_area.base_lighting_alpha = LERP(golden_hour_alpha, day_transition_alpha, iteration / 5)
		GLOB.daynight_light_alpha = surface_area.base_lighting_alpha
		surface_area.base_lighting_color = hsl_gradient(iteration / 5, 0, golden_hour_color, 1, day_transition_color)
		GLOB.daynight_light_color = surface_area.base_lighting_color
		GLOB.daynight_light_power = GLOB.daynight_light_alpha * (maximum_light_power / 255)
		surface_area.update_base_lighting()
	for(var/turf/light_update_turf in GLOB.daynight_effected_turfs)
		light_update_turf.light_color = GLOB.daynight_light_color
		light_update_turf.light_power = GLOB.daynight_light_power
		light_update_turf.light_range = GLOB.daynight_light_power + 1
		INVOKE_ASYNC(light_update_turf, TYPE_PROC_REF(/atom/, update_light))
	if(iteration < 5)
		addtimer(CALLBACK(src, PROC_REF(start_morning_transition), iteration + 1), day_transition_duration / 5)
		return
	addtimer(CALLBACK(src, PROC_REF(start_mid_day)), day_transition_duration / 5)

/// Starts mid-day
/datum/controller/subsystem/daynight/proc/start_mid_day(iteration = 1)
	var/list/areas_edited_now = get_areas_to_edit()
	for(var/area/surface_area in areas_edited_now)
		surface_area.base_lighting_alpha = LERP(day_transition_alpha, daytime_alpha, iteration / 5)
		GLOB.daynight_light_alpha = surface_area.base_lighting_alpha
		surface_area.base_lighting_color = hsl_gradient(iteration / 5, 0, day_transition_color, 1, daytime_color)
		GLOB.daynight_light_color = surface_area.base_lighting_color
		GLOB.daynight_light_power = GLOB.daynight_light_alpha * (maximum_light_power / 255)
		surface_area.update_base_lighting()
	for(var/turf/light_update_turf in GLOB.daynight_effected_turfs)
		light_update_turf.light_color = GLOB.daynight_light_color
		light_update_turf.light_power = GLOB.daynight_light_power
		light_update_turf.light_range = GLOB.daynight_light_power + 1
		INVOKE_ASYNC(light_update_turf, TYPE_PROC_REF(/atom/, update_light))
	if(iteration < 5)
		addtimer(CALLBACK(src, PROC_REF(start_mid_day), iteration + 1), day_transition_duration / 15)
		return
	addtimer(CALLBACK(src, PROC_REF(start_afternoon_transition)), daytime_duration / 3)
