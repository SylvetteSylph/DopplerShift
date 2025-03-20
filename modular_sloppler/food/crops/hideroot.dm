/obj/structure/flora/fantasy_regrowing/hideroot
	name = "hideroot growth"
	desc = "A leafy plant with thick roots wrapped in a tough bark-like material, like a strong animal's hide."
	harvested_name = "growing hideroot sprout"
	harvested_desc = "A leafy plant with thick roots wrapped in a tough bark-like material, like a strong animal's hide. This one looks short and is likely still growing"
	icon_state = "hideroot"
	base_icon_state = "hideroot"
	harvest_icon_state = "hideroot_growing"
	product_types = list(
		/obj/item/food/fantasy_grown/hideroot = 1,
	)
	harvest_amount_low = 2
	harvest_amount_high = 3
	harvest_message_low = "You pull up the hideroot."
	harvest_message_med = "You pull up the hideroot."
	harvest_message_high = "You pull up the hideroot."
	harvest_verb = "pull"
	harvest_verb_suffix = "s up"
	regrowth_time_low = 12 MINUTES
	regrowth_time_high = 16 MINUTES
	knife_harvest = FALSE
	harvest_with_hands = TRUE
	delete_on_harvest = TRUE

/obj/structure/flora/fantasy_regrowing/hideroot/ungrown
	spawns_harvested = TRUE

/// Hideroot

/obj/item/food/fantasy_grown/hideroot
	name = "hideroot"
	desc = "The root of the similarly named hideroot plant, edible but toxic until cooked extensively."
	icon_state = "hideroot"
	foodtypes = VEGETABLES
	turfs_we_plant_on = list(
		/turf/open/misc/rimworld_dirt,
	)
	plant_to_make = /obj/structure/flora/fantasy_regrowing/hideroot/ungrown
	tastes = list(
		"starch" = 3,
		"dirt" = 2,
		"bitterness" = 1,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/toxin = 1,
	)
	can_distill = FALSE
	distill_reagent = FALSE
