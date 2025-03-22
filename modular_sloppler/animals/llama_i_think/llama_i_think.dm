/mob/living/basic/rimworld_llama_i_think
	name = "llama"
	desc = "Just got back from the dealership, check out my new car!"
	icon = 'modular_sloppler/animals/icons/animals.dmi'
	icon_state = "llama_i_think"
	icon_living = "llama_i_think"
	icon_dead = "llama_i_think_no_more"
	icon_gib = null
	butcher_results = list(
		/obj/item/food/rimworld_meat/fat = 1,
		/obj/item/food/rimworld_meat/llama = 2,
		/obj/item/stack/rimworld_leather = 8,
	)
	speak_emote = list("hums")
	attack_sound = 'sound/items/weapons/punch1.ogg'
	attack_vis_effect = ATTACK_EFFECT_KICK
	faction = list(FACTION_NEUTRAL)
	mob_biotypes = MOB_ORGANIC | MOB_BEAST
	health = 50
	maxHealth = 50
	melee_damage_lower = 3
	melee_damage_upper = 5
	speed = 1.25
	environment_smash = ENVIRONMENT_SMASH_NONE
	blood_volume = BLOOD_VOLUME_NORMAL
	ai_controller = /datum/ai_controller/basic_controller/rimworld_llama_i_think

/mob/living/basic/rimworld_llama_i_think/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/footstep, footstep_type = FOOTSTEP_MOB_SHOE)
	AddElement(/datum/element/ai_retaliate)
	AddElement(/datum/element/ai_flee_while_injured)
	var/static/list/food_types = list(
		/obj/item/food/fantasy_grown/rice_panicle,
		/obj/item/food/fantasy_grown/millet_panicle,
	)
	AddComponent(/datum/component/tameable, food_types = food_types, tame_chance = 25, bonus_tame_chance = 15)

/mob/living/basic/rimworld_llama_i_think/examine(mob/user)
	. = ..()
	. += span_notice("It seems to like millet and white-grain.")

/mob/living/basic/rimworld_llama_i_think/tamed(mob/living/tamer, atom/food)
	playsound(src, 'sound/effects/jingle.ogg', 50)
	AddElement(/datum/element/ridable, /datum/component/riding/creature/pig)
	visible_message(span_notice("[src] seems less afraid of people."))
	new /obj/effect/temp_visual/heart(loc)
	ai_controller.replace_planning_subtrees(list(
	 	/datum/ai_planning_subtree/find_nearest_thing_which_attacked_me_to_flee,
		/datum/ai_planning_subtree/flee_target,
	))

// Babby

/mob/living/basic/rimworld_llama_i_think/young
	name = "young llama"
	desc = "One day, you'll have your very own car to ride around the world."
	icon_state = "llama_i_think_babby"
	icon_living = "llama_i_think_babby"
	icon_dead = "llama_i_think_babby_no_more"
	health = 25
	maxHealth = 25
	ai_controller = /datum/ai_controller/basic_controller/rimworld_babby

/mob/living/basic/rimworld_llama_i_think/young/Initialize(mapload)
	. = ..()
	ai_controller.set_blackboard_key(BB_FIND_MOM_TYPES, /mob/living/basic/rimworld_llama_i_think)
	AddComponent(\
		/datum/component/growth_and_differentiation,\
		growth_time = 10 MINUTES,\
		growth_path = /mob/living/basic/rimworld_llama_i_think,\
		growth_probability = 0,\
		optional_checks = CALLBACK(src, PROC_REF(ready_to_grow)),\
	)

/// We don't grow up if we're dead
/mob/living/basic/rimworld_llama_i_think/young/proc/ready_to_grow()
	return (stat == CONSCIOUS)
