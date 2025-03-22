/obj/structure/flora/fantasy_regrowing/millet
	name = "pearl millet"
	desc = "A plant that grows like tall grass, with edible white grains when processed."
	harvested_name = "growing pearl millet"
	harvested_desc = "A plant that grows like tall grass, with edible white grains when processed. This one's not quite there yet."
	icon_state = "millet"
	base_icon_state = "millet"
	harvest_icon_state = "millet_growing"
	gender = PLURAL
	product_types = list(
		/obj/item/food/fantasy_grown/millet_panicle = 2,
		/obj/item/food/fantasy_grown/millet_seeds = 1,
	)
	harvest_amount_low = 3
	harvest_amount_high = 4
	harvest_with_hands = TRUE
	delete_on_harvest = TRUE
	harvest_message_low = "You cut the millet."
	harvest_message_med = "You cut the millet."
	harvest_message_high = "You cut the millet."
	harvest_message_true_thresholds = TRUE
	harvest_verb = "cut"
	harvest_verb_suffix = "s down"
	flora_flags = FLORA_HERBAL
	resistance_flags = FLAMMABLE
	regrowth_time_low = 12 MINUTES
	regrowth_time_high = 16 MINUTES
	knife_harvest = FALSE
	spawns_harvested = FALSE

/obj/structure/flora/fantasy_regrowing/millet/ungrown
	spawns_harvested = TRUE

/// Millet panicle

/obj/item/food/fantasy_grown/millet_panicle
	name = "pearl millet panicle"
	desc = "A big bunch of pearl millet stalks, with the husks that contain the actual grain still attached."
	icon_state = "millet"
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

/obj/item/food/fantasy_grown/millet_seeds
	name = "pearl millet seedlets"
	desc = "The seeds of the pearl millet plant, used for growing more."
	icon_state = "millet_seeds"
	foodtypes = NUTS
	plant_to_make = /obj/structure/flora/fantasy_regrowing/millet/ungrown
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
