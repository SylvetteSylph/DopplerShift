/obj/structure/flora/fantasy_regrowing/cotton
	name = "cotton bush"
	desc = "A bush with balls of cotton growing from it's branches."
	harvested_name = "growing cotton stalks"
	harvested_desc = "A bush that will have balls of cotton growing from it's branches, one day."
	icon_state = "cotton"
	base_icon_state = "cotton"
	harvest_icon_state = "cotton_growing"
	product_types = list(
		/obj/item/food/fantasy_grown/cotton = 3,
		/obj/item/food/fantasy_grown/cotton_seeds = 1,
	)
	harvest_amount_low = 3
	harvest_amount_high = 5
	harvest_message_low = "You pick some of the cotton."
	harvest_message_med = "You pick some of the cotton."
	harvest_message_high = "You pick some of the cotton."
	harvest_verb = "pick"
	harvest_verb_suffix = "s"
	knife_harvest = FALSE
	harvest_with_hands = TRUE
	delete_on_harvest = FALSE
	regrowth_time_low = 14 MINUTES
	regrowth_time_high = 20 MINUTES

/obj/structure/flora/fantasy_regrowing/cotton/ungrown
	spawns_harvested = TRUE

/// cotton stalks, do not eat

/obj/item/food/fantasy_grown/cotton
	name = "cotton balls"
	desc = "A pile of unrefined cotton balls. Definitely do not eat."
	icon_state = "cotton"
	foodtypes = CLOTH
	turfs_we_plant_on = list()
	plant_to_make = null
	tastes = list(
		"fibrous regret" = 5,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment/cloth_fibers = 6
	)
	can_distill = FALSE
	distill_reagent = FALSE

// Seeds

/obj/item/food/fantasy_grown/cotton_seeds
	name = "cotton seedlets"
	desc = "The seeds of the cotton plant, used for growing more."
	icon_state = "cotton_seeds"
	foodtypes = NUTS
	plant_to_make = /obj/structure/flora/fantasy_regrowing/cotton/ungrown
	turfs_we_plant_on = list(
		/turf/open/misc/rimworld_dirt,
	)
	tastes = list(
		"dried seeds" = 2,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	can_distill = FALSE
	distill_reagent = FALSE
