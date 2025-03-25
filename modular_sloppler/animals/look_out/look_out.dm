/mob/living/basic/rimworld_look_out
	name = "duck"
	desc = "A duck. Valued typically for it's eggs."
	icon = 'modular_sloppler/animals/icons/animals.dmi'
	icon_state = "look_out"
	icon_living = "look_out"
	icon_dead = "look_out_no_more"
	icon_gib = null
	butcher_results = list(
		/obj/item/food/rimworld_meat/duck = 2,
		/obj/item/stack/rimworld_leather = 1,
	)
	speak_emote = list("quacks")
	attack_sound = 'sound/items/weapons/punch1.ogg'
	attack_vis_effect = ATTACK_EFFECT_SLASH
	faction = list(FACTION_NEUTRAL)
	mob_biotypes = MOB_ORGANIC | MOB_BEAST
	layer = MOB_LAYER
	health = 30
	maxHealth = 30
	melee_damage_lower = 1
	melee_damage_upper = 3
	environment_smash = ENVIRONMENT_SMASH_NONE
	blood_volume = BLOOD_VOLUME_NORMAL
	ai_controller = /datum/ai_controller/basic_controller/rimworld_look_out
	/// Does this actually lay eggs? Used to stop babies from laying eggs
	var/lays_eggs = TRUE

/mob/living/basic/rimworld_look_out/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/footstep, footstep_type = FOOTSTEP_MOB_CLAW)
	var/static/list/food_types = list(
		/obj/item/food/fantasy_grown/cotton_seeds,
		/obj/item/food/fantasy_grown/grape_seeds,
		/obj/item/food/fantasy_grown/kenaf_seeds,
		/obj/item/food/fantasy_grown/millet_seeds,
		/obj/item/food/fantasy_grown/ratweed_seeds,
		/obj/item/food/fantasy_grown/rice_seeds,
	)
	if(lays_eggs)
		AddComponent(\
			/datum/component/egg_layer,\
			/obj/item/food/rimworld_egg/duck,\
			food_types,\
			feed_messages = list("[src] snaps up the seeds happily."),\
			lay_messages = EGG_LAYING_MESSAGES,\
			eggs_left = 0,\
			eggs_added_from_eating = rand(1, 2),\
			max_eggs_held = 4,\
			egg_laid_callback = CALLBACK(src, PROC_REF(egg_laid)),\
		)

/mob/living/basic/rimworld_look_out/proc/egg_laid(obj/item/egg)
	egg.AddComponent(\
		/datum/component/fertile_egg,\
		embryo_type = /mob/living/basic/rimworld_look_out/young,\
		minimum_growth_rate = 1,\
		maximum_growth_rate = 2,\
		total_growth_required = 200,\
		current_growth = 0,\
		location_allowlist = typecacheof(list(/turf)),\
		spoilable = FALSE,\
	)

/mob/living/basic/rimworld_look_out/examine(mob/user)
	. = ..()
	. += span_notice("It seems to like all manner of seeds.")

/mob/living/basic/rimworld_look_out/tamed(mob/living/tamer, atom/food)
	playsound(src, 'sound/effects/jingle.ogg', 50)
	visible_message(span_notice("[src] seems less afraid of people."))
	new /obj/effect/temp_visual/heart(loc)

/mob/living/basic/rimworld_look_out/spawn_gibs(drop_bitflags)
	return

// Babby

/mob/living/basic/rimworld_look_out/young
	name = "duckling"
	desc = "A duckling, valuable for it's eggs eventually."
	icon_state = "look_out_babby"
	icon_living = "look_out_babby"
	icon_dead = "look_out_babby_no_more"
	health = 15
	maxHealth = 15
	ai_controller = /datum/ai_controller/basic_controller/rimworld_babby
	lays_eggs = FALSE

/mob/living/basic/rimworld_look_out/young/Initialize(mapload)
	. = ..()
	ai_controller.override_blackboard_key(BB_FIND_MOM_TYPES, list(/mob/living/basic/rimworld_look_out))
	AddComponent(\
		/datum/component/growth_and_differentiation,\
		growth_time = 6 MINUTES,\
		growth_path = /mob/living/basic/rimworld_look_out,\
		growth_probability = 0,\
		optional_checks = CALLBACK(src, PROC_REF(ready_to_grow)),\
	)

/// We don't grow up if we're dead
/mob/living/basic/rimworld_look_out/young/proc/ready_to_grow()
	return (stat == CONSCIOUS)
