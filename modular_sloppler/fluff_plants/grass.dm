/obj/structure/flora/rimworld_grass
	name = "grass"
	desc = "A patch of grass."
	icon = 'modular_sloppler/fluff_plants/plants32x48.dmi'
	icon_state = "grass_tall"
	gender = PLURAL

	harvestable = FALSE
	can_uproot = FALSE
	product_types = null

	flora_flags = FLORA_HERBAL
	max_integrity = 10

/obj/structure/flora/rimworld_grass/Initialize(mapload)
	. = ..()
	if(prob(50))
		icon_state = "grass_short"
