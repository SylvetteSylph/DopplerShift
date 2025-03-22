/mob/living/basic/rimworld_goated
	name = "goat"
	desc = "Not known for their pleasant disposition."
	icon = 'modular_sloppler/animals/icons/animals.dmi'
	icon_state = "goated"
	icon_living = "goated"
	icon_dead = "goated_no_more"
	icon_gib = null
	butcher_results = list(
		/obj/item/food/rimworld_meat/fat = 2,
		/obj/item/food/rimworld_meat/goat = 3,
		/obj/item/stack/rimworld_leather = 6,
	)
	speak_emote = list("brays")
	attack_sound = 'sound/items/weapons/punch1.ogg'
	attack_vis_effect = ATTACK_EFFECT_KICK
	faction = list(FACTION_NEUTRAL)
	mob_biotypes = MOB_ORGANIC | MOB_BEAST
	layer = MOB_LAYER
	health = 60
	maxHealth = 60
	melee_damage_lower = 3
	melee_damage_upper = 5
	environment_smash = ENVIRONMENT_SMASH_NONE
	blood_volume = BLOOD_VOLUME_NORMAL
	ai_controller = /datum/ai_controller/basic_controller/rimworld_goated
	/// does this one make milk?
	var/makes_milk = TRUE

/mob/living/basic/rimworld_goated/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/footstep, footstep_type = FOOTSTEP_MOB_SHOE)
	AddElement(/datum/element/ai_retaliate)
	AddElement(/datum/element/ai_flee_while_injured)
	if((gender != MALE) && makes_milk)
		AddComponent(/datum/component/mob_harvest_cool, \
			harvest_tool = /obj/item/rimworld_cup, \
			produced_item_typepath = /obj/item/food/rimworld_milk/goated, \
			produced_item_desc = "milk", \
			max_ready = 3, \
			item_generation_wait = 6 MINUTES, \
			item_harvest_time = 5 SECONDS, \
			item_harvest_sound = SFX_LIQUID_POUR, \
			delete_harvest_item = TRUE, \
		)
	var/static/list/food_types = list(
		/obj/item/food/fantasy_grown/rice_panicle,
		/obj/item/food/fantasy_grown/millet_panicle,
	)
	AddComponent(/datum/component/tameable, food_types = food_types, tame_chance = 25, bonus_tame_chance = 15, unique = TRUE)

/mob/living/basic/rimworld_goated/examine(mob/user)
	. = ..()
	. += span_notice("It seems to like millet and white-grain.")
	if((gender == MALE) && makes_milk)
		. += span_notice("[src] appears to be male, and thus won't produce milk.")

/mob/living/basic/rimworld_goated/tamed(mob/living/tamer, atom/food)
	playsound(src, 'sound/effects/jingle.ogg', 50)
	AddElement(/datum/element/ridable, /datum/component/riding/creature/pig)
	visible_message(span_notice("[src] seems less afraid of people."))
	new /obj/effect/temp_visual/heart(loc)
	ai_controller.replace_planning_subtrees(list(
	 	/datum/ai_planning_subtree/find_nearest_thing_which_attacked_me_to_flee,
		/datum/ai_planning_subtree/flee_target,
	))

/mob/living/basic/rimworld_goated/spawn_gibs(drop_bitflags)
	return

// Babby goated

/mob/living/basic/rimworld_goated/young
	name = "young goat"
	desc = "Not known for their pleasant disposition. This one hasn't grown to hate the world yet"
	icon = 'modular_sloppler/animals/icons/animals.dmi'
	icon_state = "goated_babby"
	icon_living = "goated_babby"
	icon_dead = "goated_babby_no_more"
	health = 30
	maxHealth = 30
	ai_controller = /datum/ai_controller/basic_controller/rimworld_babby
	makes_milk = FALSE

/mob/living/basic/rimworld_goated/young/Initialize(mapload)
	. = ..()
	ai_controller.set_blackboard_key(BB_FIND_MOM_TYPES, list(/mob/living/basic/rimworld_goated))
	AddComponent(\
		/datum/component/growth_and_differentiation,\
		growth_time = 10 MINUTES,\
		growth_path = /mob/living/basic/rimworld_goated,\
		growth_probability = 0,\
		optional_checks = CALLBACK(src, PROC_REF(ready_to_grow)),\
	)

/// We don't grow up if we're dead
/mob/living/basic/rimworld_goated/young/proc/ready_to_grow()
	return (stat == CONSCIOUS)
