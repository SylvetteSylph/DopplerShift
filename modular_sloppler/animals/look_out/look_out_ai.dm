/datum/ai_controller/basic_controller/rimworld_look_out
	blackboard = list(
		BB_STATIONARY_MOVE_TO_TARGET = TRUE,
		BB_TARGETING_STRATEGY = /datum/targeting_strategy/basic,
	)
	ai_traits = STOP_MOVING_WHEN_PULLED
	ai_movement = /datum/ai_movement/basic_avoidance
	idle_behavior = /datum/idle_behavior/idle_random_walk
	planning_subtrees = list(
		/datum/ai_planning_subtree/find_nearest_thing_which_attacked_me_to_flee,
		/datum/ai_planning_subtree/flee_target,
	)

/obj/effect/spawner/random/rimworld_wild_ducks
	name = "Wild Ducks Spawner"
	loot = list(
		/mob/living/basic/rimworld_look_out = 1,
		/mob/living/basic/rimworld_look_out/young = 1,
	)
	spawn_random_offset = FALSE
	spawn_loot_count = 6
	spawn_scatter_radius = 2
