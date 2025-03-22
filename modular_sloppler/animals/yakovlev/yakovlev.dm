/mob/living/basic/rimworld_yakovlev
	name = "yak"
	desc = "A large beast, much cooler in every way in a cow could ever be."
	icon = 'modular_sloppler/animals/icons/animals.dmi'
	icon_state = "yakovlev"
	icon_living = "yakovlev"
	icon_dead = "yakovlev_no_more"
	icon_gib = null
	butcher_results = list(
		/obj/item/food/rimworld_meat/fat = 3,
		/obj/item/food/rimworld_meat/yak = 4,
		/obj/item/stack/rimworld_leather = 8,
	)
	speak_emote = list("moos","moos hauntingly")
	attack_sound = 'sound/items/weapons/punch1.ogg'
	attack_vis_effect = ATTACK_EFFECT_KICK
	faction = list(FACTION_NEUTRAL)
	mob_biotypes = MOB_ORGANIC | MOB_BEAST
	layer = MOB_LAYER
	speed = 0.75
	health = 80
	maxHealth = 80
	melee_damage_lower = 5
	melee_damage_upper = 7
	environment_smash = ENVIRONMENT_SMASH_NONE
	blood_volume = BLOOD_VOLUME_NORMAL
	ai_controller = /datum/ai_controller/basic_controller/rimworld_yakovlev
	/// Does this one produce milk, used to stop babies from doing it
	var/makes_milk = TRUE

/mob/living/basic/rimworld_yakovlev/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/footstep, footstep_type = FOOTSTEP_MOB_HEAVY)
	AddElement(/datum/element/ai_retaliate)
	AddElement(/datum/element/ai_flee_while_injured)
	if((gender != MALE) && makes_milk)
		AddComponent(/datum/component/mob_harvest_cool, \
			harvest_tool = /obj/item/rimworld_cup, \
			produced_item_typepath = /obj/item/food/rimworld_milk/yak, \
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

/mob/living/basic/rimworld_yakovlev/examine(mob/user)
	. = ..()
	. += span_notice("It seems to like millet and white-grain.")
	if((gender == MALE) && makes_milk)
		. += span_notice("[src] appears to be male, and thus won't produce milk.")

/mob/living/basic/rimworld_yakovlev/tamed(mob/living/tamer, atom/food)
	playsound(src, 'sound/effects/jingle.ogg', 50)
	AddElement(/datum/element/ridable, /datum/component/riding/creature/pig)
	visible_message(span_notice("[src] seems less afraid of people."))
	new /obj/effect/temp_visual/heart(loc)
	ai_controller.replace_planning_subtrees(list(
	 	/datum/ai_planning_subtree/find_nearest_thing_which_attacked_me_to_flee,
		/datum/ai_planning_subtree/flee_target,
	))

/mob/living/basic/rimworld_yakovlev/spawn_gibs(drop_bitflags)
	return

// Babby

/mob/living/basic/rimworld_yakovlev/young
	name = "young yak"
	desc = "A small beast, much cooler in every way in a cow could ever be."
	icon_state = "yakovlev_babby"
	icon_living = "yakovlev_babby"
	icon_dead = "yakovlev_babby_no_more"
	health = 40
	maxHealth = 40
	ai_controller = /datum/ai_controller/basic_controller/rimworld_babby
	makes_milk = FALSE

/mob/living/basic/rimworld_yakovlev/young/Initialize(mapload)
	. = ..()
	ai_controller.set_blackboard_key(BB_FIND_MOM_TYPES, list(/mob/living/basic/rimworld_yakovlev))
	AddComponent(\
		/datum/component/growth_and_differentiation,\
		growth_time = 10 MINUTES,\
		growth_path = /mob/living/basic/rimworld_yakovlev,\
		growth_probability = 0,\
		optional_checks = CALLBACK(src, PROC_REF(ready_to_grow)),\
	)

/// We don't grow up if we're dead
/mob/living/basic/rimworld_yakovlev/young/proc/ready_to_grow()
	return (stat == CONSCIOUS)
