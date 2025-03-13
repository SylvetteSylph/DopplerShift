GLOBAL_LIST_EMPTY(daynight_effected_turfs)

/area/vintage
	name = "Vintage Area Basetype (DONT USE)"
	icon = 'icons/area/areas_station.dmi'
	icon_state = "mining"
	default_gravity = STANDARD_GRAVITY
	flags_1 = NONE
	area_flags = UNIQUE_AREA | FLORA_ALLOWED | CAVES_ALLOWED
	sound_environment = SOUND_AREA_LAVALAND
	ambient_buzz = null
	always_unpowered = TRUE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	requires_power = TRUE
	ambience_index = AMBIENCE_FANTASY_SURFACE
	min_ambience_cooldown = 1 MINUTES
	max_ambience_cooldown = 2 MINUTES
	/// If lighting behaves like it's outside
	var/outside_lights = FALSE

/area/vintage/Entered(atom/movable/arrived, area/old_area)
	. = ..()
	if(isturf(arrived) && outside_lights)
		var/turf/arrived_turf = arrived
		daynight_effected_turfs += arrived_turf
		arrived_turf.light_color = GLOB.daynight_light_color
		arrived_turf.light_power = GLOB.daynight_light_power
		arrived_turf.light_range = GLOB.daynight_light_power + 1
		arrived_turf.light_height = LIGHTING_HEIGHT_FLOOR

/area/vintage/Exited(atom/movable/gone, direction)
	. = ..()
	if(isturf(gone) && outside_lights)
		daynight_effected_turfs -= gone
		arrived_turf.light_color = initial(arrived_turf.light_color)
		arrived_turf.light_power = initial(arrived_turf.light_power)
		arrived_turf.light_range = initial(arrived_turf.light_range)
		arrived_turf.light_height = initial(arrived_turf.light_height)

/area/vintage/surface_generator
	name = "Surface"
	map_generator = /datum/map_generator/rimworld_generator
	area_has_base_lighting = TRUE
	base_lighting_alpha = 255
	outdoors = TRUE

/area/vintage/indoors
	name = "Indoors"
	area_flags = NONE
	sound_environment = SOUND_AREA_SMALL_ENCLOSED
	area_has_base_lighting = TRUE
	base_lighting_alpha = 150
	base_lighting_color = "#336699"
