/obj/structure/flora/fantasy_regrowing/rice
	name = "white-grain"
	desc = "A plant that grows like tall grass, with edible white grains when processed."
	harvested_name = "growing white-grain"
	harvested_desc = "A plant that grows like tall grass, with edible white grains when processed. This one's not quite there yet."
	icon_state = "rice"
	base_icon_state = "rice"
	harvest_icon_state = "rice_growing"
	gender = PLURAL
	product_types = list(
		/obj/item/food/fantasy_grown/rice_panicle = 2,
		/obj/item/food/fantasy_grown/rice_seeds = 1,
	)
	harvest_amount_low = 3
	harvest_amount_high = 4
	harvest_with_hands = TRUE
	delete_on_harvest = TRUE
	harvest_message_low = "You cut the white-grain."
	harvest_message_med = "You cut the white-grain."
	harvest_message_high = "You cut the white-grain."
	harvest_message_true_thresholds = TRUE
	harvest_verb = "cut"
	harvest_verb_suffix = "s down"
	flora_flags = FLORA_HERBAL
	resistance_flags = FLAMMABLE
	regrowth_time_low = 12 MINUTES
	regrowth_time_high = 16 MINUTES
	knife_harvest = FALSE
	spawns_harvested = FALSE

/obj/structure/flora/fantasy_regrowing/rice/ungrown
	spawns_harvested = TRUE

/// rice panicle

/obj/item/food/fantasy_grown/rice_panicle
	name = "white-grain panicle"
	desc = "A big bunch of white-grain stalks, with the husks that contain the actual grain still attached."
	icon_state = "rice"
	foodtypes = GRAIN
	turfs_we_plant_on = list()
	plant_to_make = null
	tastes = list(
		"tough grain husk" = 1,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
	)
	can_distill = FALSE
	distill_reagent = FALSE

// Seeds

/obj/item/food/fantasy_grown/rice_seeds
	name = "white-grain seedlets"
	desc = "The seeds of the white-grain plant, used for growing more."
	icon_state = "rice_seeds"
	foodtypes = NUTS
	plant_to_make = /obj/structure/flora/fantasy_regrowing/rice/ungrown
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

/obj/item/food/fantasy_grown/rice_seeds/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/fantasy_grown/cooked_seeds, rand(45 SECONDS, 1.5 MINUTES), TRUE, FALSE)
