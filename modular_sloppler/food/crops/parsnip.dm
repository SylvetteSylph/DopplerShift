/obj/structure/flora/fantasy_regrowing/parsnips
	name = "parsnip sprout"
	desc = "The leaves and very top bit of parsnips sticking from the ground."
	harvested_name = "growing parsnip sprout"
	harvested_desc = "The leaves and very top bit of parsnips sticking from the ground. This one's not done yet."
	icon_state = "parsnips"
	base_icon_state = "parsnips"
	harvest_icon_state = "parsnips_growing"
	product_types = list(
		/obj/item/food/fantasy_grown/parsnips = 1,
	)
	harvest_amount_low = 2
	harvest_amount_high = 4
	harvest_message_low = "You pick some of the parsnips."
	harvest_message_med = "You pick some of the parsnips."
	harvest_message_high = "You pick some of the parsnips."
	harvest_verb = "pick"
	harvest_verb_suffix = "s"
	knife_harvest = FALSE
	harvest_with_hands = TRUE
	delete_on_harvest = TRUE
	regrowth_time_low = 12 MINUTES
	regrowth_time_high = 16 MINUTES

/obj/structure/flora/fantasy_regrowing/parsnips/ungrown
	spawns_harvested = TRUE

/// Berry bunches, mm tasty

/obj/item/food/fantasy_grown/parsnips
	name = "parsnip"
	desc = "Behold, a parsnip."
	icon_state = "parsnip"
	foodtypes = VEGETABLES
	plant_to_make = /obj/structure/flora/fantasy_regrowing/parsnips/ungrown
	turfs_we_plant_on = list(
		/turf/open/misc/rimworld_dirt,
	)
	tastes = list(
		"parsnip" = 2,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 1,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	can_distill = FALSE
	distill_reagent = FALSE

/obj/item/food/fantasy_grown/parsnips/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/fantasy_grown/parsnips/cooked, rand(1 MINUTES, 2 MINUTES), TRUE, FALSE)

/obj/item/food/fantasy_grown/parsnips/cooked
	name = "roasted parsnip"
	desc = "Behold, a roasted parsnip."
	icon_state = "parsnip_cooked"
	foodtypes = VEGETABLES
	plant_to_make = null
	turfs_we_plant_on = list()
	tastes = list(
		"parsnip" = 2,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/nutriment/vitamin = 3,
	)
	can_distill = FALSE
	distill_reagent = FALSE
