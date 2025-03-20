/obj/structure/flora/fantasy_regrowing/onions
	name = "onion sprout"
	desc = "The leaves and very top bit of onions sticking from the ground."
	harvested_name = "growing onion sprout"
	harvested_desc = "The leaves and very top bit of onions sticking from the ground. This one's not done yet."
	icon_state = "onions"
	base_icon_state = "onions"
	harvest_icon_state = "onions_growing"
	product_types = list(
		/obj/item/food/fantasy_grown/onions = 1,
	)
	harvest_amount_low = 3
	harvest_amount_high = 5
	harvest_message_low = "You pick some of the onions."
	harvest_message_med = "You pick some of the onions."
	harvest_message_high = "You pick some of the onions."
	harvest_verb = "pick"
	harvest_verb_suffix = "s"
	knife_harvest = FALSE
	harvest_with_hands = TRUE
	delete_on_harvest = TRUE
	regrowth_time_low = 12 MINUTES
	regrowth_time_high = 16 MINUTES

/obj/structure/flora/fantasy_regrowing/onions/ungrown
	spawns_harvested = TRUE

/// Berry bunches, mm tasty

/obj/item/food/fantasy_grown/onions
	name = "onion"
	desc = "Behold, an onion."
	icon_state = "onions"
	foodtypes = VEGETABLES
	plant_to_make = /obj/structure/flora/fantasy_regrowing/onions/ungrown
	turfs_we_plant_on = list(
		/turf/open/misc/rimworld_dirt,
	)
	tastes = list(
		"onion" = 2,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	can_distill = FALSE
	distill_reagent = FALSE
