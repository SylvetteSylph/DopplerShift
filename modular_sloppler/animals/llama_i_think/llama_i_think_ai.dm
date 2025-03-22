/datum/ai_controller/basic_controller/rimworld_llama_i_think
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
		/datum/ai_planning_subtree/target_retaliate,
		/datum/ai_planning_subtree/basic_melee_attack_subtree,
	)

/obj/effect/spawner/random/rimworld_wild_llamas
	name = "Wild Llamas Spawner"
	loot = list(
		/mob/living/basic/rimworld_llama_i_think = 1,
		/mob/living/basic/rimworld_llama_i_think/young = 1,
	)
	spawn_random_offset = FALSE
	spawn_loot_count = 5
	spawn_scatter_radius = 3
