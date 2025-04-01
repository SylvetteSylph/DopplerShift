/obj/structure/flora/fantasy_regrowing/grapes
	name = "colberry bush"
	desc = "A quite comically small tree, with large bunches of berries that grow from it's branches."
	harvested_name = "picked colberry bush"
	harvested_desc = "A quite comically small tree, lacking in anything enjoyable hanging from the branches."
	icon_state = "grapes"
	base_icon_state = "grapes"
	harvest_icon_state = "grapes_growing"
	product_types = list(
		/obj/item/food/fantasy_grown/grapes = 1,
	)
	harvest_amount_low = 1
	harvest_amount_high = 3
	harvest_message_low = "You pick some of the grapes."
	harvest_message_med = "You pick some of the grapes."
	harvest_message_high = "You pick some of the grapes."
	harvest_verb = "pick"
	harvest_verb_suffix = "s"
	knife_harvest = FALSE
	harvest_with_hands = TRUE
	delete_on_harvest = FALSE
	regrowth_time_low = 14 MINUTES
	regrowth_time_high = 20 MINUTES

/obj/structure/flora/fantasy_regrowing/grapes/ungrown
	spawns_harvested = TRUE

/// Berry bunches, mm tasty

/obj/item/food/fantasy_grown/grapes
	name = "colberry bunch"
	desc = "A big bunch of colberries. Not the sweetest in the world, but they still make quite the fine wine. \
		Or you could just eat them anyways, psycho."
	icon_state = "grapes"
	foodtypes = FRUIT
	turfs_we_plant_on = list()
	plant_to_make = null
	trash_type = /obj/item/food/fantasy_grown/grape_seeds // You get seeds by eating them
	tastes = list(
		"tart berry" = 3,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 2,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)

// Seeds

/obj/item/food/fantasy_grown/grape_seeds
	name = "colberry seedlets"
	desc = "The seeds from the centers of colberries, which you haven't eaten yet."
	icon_state = "grapes_seeds"
	foodtypes = NUTS
	plant_to_make = /obj/structure/flora/fantasy_regrowing/grapes/ungrown
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

/obj/item/food/fantasy_grown/grape_seeds/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/fantasy_grown/cooked_seeds, rand(45 SECONDS, 1.5 MINUTES), TRUE, FALSE)
