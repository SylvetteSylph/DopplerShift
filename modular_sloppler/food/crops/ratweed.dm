/obj/structure/flora/fantasy_regrowing/ungrown
	spawns_harvested = TRUE

/// Ratweed leaves

/obj/item/food/fantasy_grown/ratweed_leaf
	name = "ratweed leaves"
	desc = "The edible leaves from the ratweed plant. Mostly neutral in taste."
	icon_state = "ratweed"
	foodtypes = VEGETABLES
	turfs_we_plant_on = list()
	plant_to_make = null
	tastes = list(
		"watery greens" = 1,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
	)
	can_distill = FALSE
	distill_reagent = FALSE

// Seeds

/obj/item/food/fantasy_grown/ratweed_seeds
	name = "ratweed seeds"
	desc = "The seeds of the ratweed plant, used for growing more, but also good for cracking open and eating raw."
	icon_state = "ratweed_seeds"
	foodtypes = NUTS
	plant_to_make = /obj/structure/flora/fantasy_regrowing/ungrown
	turfs_we_plant_on = list(
		/turf/open/misc/rimworld_mud,
		/turf/open/water/rimworld,
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
