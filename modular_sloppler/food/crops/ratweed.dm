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

/obj/item/food/fantasy_grown/ratweed_leaf/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/fantasy_grown/ratweed_leaf/cooked, rand(45 SECONDS, 1.5 MINUTES), TRUE, FALSE)

/obj/item/food/fantasy_grown/ratweed_leaf/cooked
	name = "charred ratweed leaves"
	desc = "The leaves of the ratweed plant, charred nearly black by a fire. \
		They... Don't cook very well, but are a common medicinal treatment when charred this way."
	icon_state = "ratweed_cooked"
	foodtypes = VEGETABLES
	turfs_we_plant_on = list()
	plant_to_make = null
	tastes = list(
		"coal" = 1,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/medicine/omnizine/godblood = 3,
		/datum/reagent/medicine/coagulant/seraka_extract = 1,
		/datum/reagent/medicine/mine_salve = 2,
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

/obj/item/food/fantasy_grown/ratweed_seeds/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/fantasy_grown/cooked_seeds, rand(45 SECONDS, 1.5 MINUTES), TRUE, FALSE)

/obj/item/food/fantasy_grown/cooked_seeds
	name = "roasted seeds"
	desc = "The seeds of some plant, it doesn't matter anymore. What does matter is that these taste a good bit better."
	icon_state = "cooked_seeds"
	foodtypes = NUTS
	plant_to_make = null
	turfs_we_plant_on = list()
	tastes = list(
		"roasted seeds" = 2,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	can_distill = FALSE
	distill_reagent = FALSE
