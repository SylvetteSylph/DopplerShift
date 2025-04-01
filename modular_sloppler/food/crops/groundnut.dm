/obj/structure/flora/fantasy_regrowing/groundnut
	name = "highland groundnut bush"
	desc = "A plant common to highlands that hangs low to the ground, producing edible nuts."
	harvested_name = "picked highland groundnut bush"
	harvested_desc = "A plant common to highlands that hangs low to the ground, producing edible nuts. This one currently seems neuter, ouch."
	icon_state = "groundnuts"
	base_icon_state = "groundnuts"
	harvest_icon_state = "groundnuts_growing"
	product_types = list(
		/obj/item/food/fantasy_grown/groundnut = 1,
	)
	harvest_amount_low = 2
	harvest_amount_high = 4
	harvest_message_low = "You pick some of the groundnuts."
	harvest_message_med = "You pick some of the groundnuts."
	harvest_message_high = "You pick some of the groundnuts."
	harvest_verb = "pick"
	harvest_verb_suffix = "s"
	knife_harvest = FALSE
	harvest_with_hands = TRUE
	delete_on_harvest = FALSE
	regrowth_time_low = 14 MINUTES
	regrowth_time_high = 20 MINUTES

/obj/structure/flora/fantasy_regrowing/groundnut/ungrown
	spawns_harvested = TRUE

/// Nuts of the wetland groundnut plant

/obj/item/food/fantasy_grown/groundnut
	name = "groundnuts"
	desc = "A collection of groundnuts, which make for good eating either raw or roasted."
	icon_state = "groundnuts"
	foodtypes = NUTS
	turfs_we_plant_on = list(
		/turf/open/misc/rimworld_dirt,
	)
	plant_to_make = /obj/structure/flora/fantasy_regrowing/groundnut/ungrown
	tastes = list(
		"tree nut" = 3,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)

/obj/item/food/fantasy_grown/groundnut/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/fantasy_grown/groundnut/cooked, rand(1 MINUTES, 2 MINUTES), TRUE, FALSE)

/obj/item/food/fantasy_grown/groundnut/cooked
	name = "roasted groundnuts"
	desc = "A collection of groundnuts, which have been roasted finely."
	icon_state = "groundnuts_cooked"
	foodtypes = NUTS
	turfs_we_plant_on = list()
	plant_to_make = null
	crafting_complexity = FOOD_COMPLEXITY_2
	tastes = list(
		"char" = 1,
		"tree nut" = 2,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
