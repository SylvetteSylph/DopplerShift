/obj/structure/flora/fantasy_regrowing/kenaf
	name = "kenaf stalks"
	desc = "Towering, stringy stalks that can be refined into threads and fabrics. Probably not that tasty."
	harvested_name = "growing kenaf stalks"
	harvested_desc = "Towering, stringy stalks that can be refined into threads and fabrics... eventually, not now."
	icon_state = "kenaf"
	base_icon_state = "kenaf"
	harvest_icon_state = "kenaf_growing"
	product_types = list(
		/obj/item/food/fantasy_grown/kenaf = 2,
		/obj/item/food/fantasy_grown/kenaf_seeds = 1,
	)
	harvest_amount_low = 4
	harvest_amount_high = 6
	harvest_message_low = "You pick some of the kenaf."
	harvest_message_med = "You pick some of the kenaf."
	harvest_message_high = "You pick some of the kenaf."
	harvest_verb = "pick"
	harvest_verb_suffix = "s"
	knife_harvest = FALSE
	harvest_with_hands = TRUE
	delete_on_harvest = TRUE
	regrowth_time_low = 10 MINUTES
	regrowth_time_high = 14 MINUTES

/obj/structure/flora/fantasy_regrowing/kenaf/ungrown
	spawns_harvested = TRUE

/// Kenaf stalks, do not eat

/obj/item/food/fantasy_grown/kenaf
	name = "kenaf stalks"
	desc = "A bundle of cut down kenaf stalks. You should probably make this into clothes, not food."
	icon_state = "kenaf"
	foodtypes = CLOTH
	turfs_we_plant_on = list()
	plant_to_make = null
	tastes = list(
		"fibrous regret" = 5,
	)
	food_reagents = list(
		/datum/reagent/consumable/nutriment/cloth_fibers = 6
	)

// Seeds

/obj/item/food/fantasy_grown/kenaf_seeds
	name = "kenaf seedlets"
	desc = "The seeds of the kenaf plant, used for growing more."
	icon_state = "kenaf_seeds"
	foodtypes = NUTS
	plant_to_make = /obj/structure/flora/fantasy_regrowing/kenaf/ungrown
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

/obj/item/food/fantasy_grown/kenaf_seeds/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/fantasy_grown/cooked_seeds, rand(45 SECONDS, 1.5 MINUTES), TRUE, FALSE)
