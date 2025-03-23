/obj/structure/flora/fantasy_regrowing
	name = "ratweed"
	desc = "A small plant with edible leaves. Called ratweed because it tastes like rat food."
	harvested_name = "growing ratweed"
	harvested_desc = "A small plant with edible leaves. This one doesn't have any yet."
	icon = 'modular_sloppler/food/icons/plants.dmi'
	icon_state = "rat_weed"
	base_icon_state = "rat_weed"
	max_integrity = 50
	gender = PLURAL
	product_types = list(
		/obj/item/food/fantasy_grown/ratweed_leaf = 1,
		/obj/item/food/fantasy_grown/ratweed_seeds = 1,
	)
	harvest_amount_low = 3
	harvest_amount_high = 5
	harvest_with_hands = TRUE
	delete_on_harvest = TRUE
	harvest_message_low = "You pull the ratweed."
	harvest_message_med = "You pull the ratweed."
	harvest_message_high = "You pull the ratweed."
	harvest_message_true_thresholds = TRUE
	harvest_verb = "pull"
	harvest_verb_suffix = "s up"
	flora_flags = FLORA_HERBAL
	resistance_flags = FLAMMABLE
	regrowth_time_low = 8 MINUTES
	regrowth_time_high = 12 MINUTES
	/// The icon state of the plant when it is harvested
	var/harvest_icon_state = "rat_weed_growing"
	/// If this takes a knife tool to harvest
	var/knife_harvest = FALSE
	/// Does this spawn harvested and do we need to wait to grow?
	var/spawns_harvested = FALSE

/obj/structure/flora/fantasy_regrowing/Initialize(mapload)
	. = ..()
	// Everything grows faster in rich soil, if you can find it
	if(istype(get_turf(src), /turf/open/misc/rimworld_dirt/super))
		regrowth_time_low -= 2 MINUTES
		regrowth_time_high -= 2 MINUTES
	if(spawns_harvested)
		set_harvested_on_spawn()

/// Sets the plant to look and act harvested when its placed, good for things planted from seeds
/obj/structure/flora/fantasy_regrowing/proc/set_harvested_on_spawn()
	name = harvested_name
	desc = harvested_desc
	icon_state = harvest_icon_state
	update_appearance()
	harvested = TRUE
	addtimer(CALLBACK(src, PROC_REF(regrow)), rand(regrowth_time_low, regrowth_time_high))

/obj/structure/flora/fantasy_regrowing/harvest(mob/user, product_amount_multiplier)
	if(!..())
		return FALSE
	icon_state = harvest_icon_state
	update_appearance()
	user.mind.adjust_experience(/datum/skill/rimworld_farming, SKILL_EXP_GRANT_MEDIUM)
	return TRUE

/obj/structure/flora/fantasy_regrowing/can_harvest(mob/user, obj/item/harvesting_item)
	if(flags_1 & HOLOGRAM_1)
		return FALSE
	if(harvested || !harvestable)
		return null
	if(harvesting_item)
		//Check to see if wooden flora is being attacked by a saw item (letting the items on/off state control this is better than putting them in the list)
		if((flora_flags & FLORA_WOODEN) && (harvesting_item.tool_behaviour == TOOL_SAW))
			return TRUE
		//Check to see if stone flora is being attacked by a mining item (same reason as above)
		if((flora_flags & FLORA_STONE) && (harvesting_item.tool_behaviour == TOOL_MINING))
			return TRUE
		// Check and see if we need a knife to harvest this
		if(knife_harvest && (harvesting_item.tool_behaviour == TOOL_KNIFE))
			return TRUE
		//We checked all item interactions and could not harvest, lets return
		return FALSE
	//If there was no harvesting item supplied, check if it is hand harvestable
	if(harvest_with_hands)
		return TRUE
	return FALSE

/obj/structure/flora/fantasy_regrowing/regrow()
	..()
	icon_state = base_icon_state
