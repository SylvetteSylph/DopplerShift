// Alcoholic drinks

/obj/item/food/rimworld_alcohol
	name = "evil debug beer"
	desc = "Wouldn't you want to know where this comes from."
	icon = 'modular_sloppler/food/icons/big_cook.dmi'
	icon_state = "beer"
	food_reagents = list(
		/datum/reagent/consumable/ethanol/hooch = 10, // And thy punishment, is death
		/datum/reagent/consumable/nutriment/peptides = 5,
	)
	tastes = list("the end of the world" = 30)
	eatverbs = list(
		"slurp",
		"sip",
		"drink",
	)
	trash_type = /obj/item/rimworld_cup
	foodtypes = ALCOHOL
	w_class = WEIGHT_CLASS_SMALL
	preserved_food = TRUE
	consumption_sound = 'sound/items/drink.ogg'
	pickup_sound = 'sound/items/handling/reagent_containers/plastic_bottle/plastic_bottle_liquid_slosh1.ogg'
	drop_sound = 'sound/items/handling/reagent_containers/plastic_bottle/plastic_bottle_liquid_slosh2.ogg'
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/rimworld_alcohol/make_germ_sensitive(mapload)
	return

/obj/item/food/rimworld_alcohol/make_grillable()
	return

// Get real

/obj/item/food/rimworld_alcohol/wine
	name = "colberry wine"
	desc = "Wine from the humble colberry. If you're caught saying this makes society, it's on sight."
	icon_state = "wine"
	food_reagents = list(
		/datum/reagent/consumable/ethanol/wine = 10,
		/datum/reagent/consumable/nutriment/peptides = 5,
	)
	tastes = list("not so fine wine" = 2)

/obj/item/food/rimworld_alcohol/hideroot_slop
	name = "hideroot brew"
	desc = "A not entirely appealing drink made of brewed hideroot that has been cooked before-hand. \
		Much more useful for it's medical uses than drinking but... nothing's stopping you?"
	icon_state = "slop"
	food_reagents = list(
		/datum/reagent/consumable/ethanol/beer/maltliquor = 7,
		/datum/reagent/consumable/nutriment/peptides = 5,
		/datum/reagent/medicine/omnizine/godblood = 5
	)
	tastes = list("burning alcohol" = 30)

/obj/item/food/rimworld_alcohol/rice_beer
	name = "white-grain beer"
	desc = "Beer from white-grain, it'd be silly to name it something else."
	icon_state = "beer"
	food_reagents = list(
		/datum/reagent/consumable/ethanol/rice_beer = 10,
		/datum/reagent/consumable/nutriment/peptides = 5,
	)
	tastes = list("mild carbonated malt" = 2)

/obj/item/food/rimworld_alcohol/beer_beer
	name = "millet beer"
	desc = "Beer brewed from millet, now all you need to do is invent a can to crack open."
	icon_state = "beer_2"
	food_reagents = list(
		/datum/reagent/consumable/ethanol/beer = 10,
		/datum/reagent/consumable/nutriment/peptides = 5,
	)
	tastes = list("mild carbonated malt" = 2)

// Technically related

/obj/item/food/rimworld_dough
	name = "evil debug dough"
	desc = "Wouldn't you want to know where this comes from."
	icon = 'modular_sloppler/food/icons/big_cook.dmi'
	icon_state = "rice_dough"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 7,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
	tastes = list("raw dough" = 3)
	foodtypes = GRAIN
	w_class = WEIGHT_CLASS_SMALL
	preserved_food = TRUE
	pickup_sound = 'sound/items/handling/glove_pick_up.ogg'
	drop_sound = 'sound/items/handling/glove_drop.ogg'
	crafting_complexity = FOOD_COMPLEXITY_2

/obj/item/food/rimworld_dough/make_grillable()
	return

/obj/item/food/rimworld_dough/make_germ_sensitive(mapload)
	return

/obj/item/food/rimworld_dough/rice
	name = "white-grain dough"
	desc = "Prepared dough made with white-grain flour, now all you need to do is cook it."
	icon_state = "rice_dough"

/obj/item/food/rimworld_dough/rice/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/rimworld_bread/rice, rand(1 MINUTES, 2 MINUTES), TRUE, FALSE)

/obj/item/food/rimworld_dough/millet
	name = "millet dough"
	desc = "Prepared dough made with millet flour, now all you need to do is cook it."
	icon_state = "millet_dough"

/obj/item/food/rimworld_dough/millet/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/rimworld_bread/millet, rand(1 MINUTES, 2 MINUTES), TRUE, FALSE)

// Getting the bread

/obj/item/food/rimworld_bread
	name = "evil debug bread"
	desc = "A sizeable loaf of bread, made for the hard working individial."
	icon = 'modular_sloppler/food/icons/big_cook.dmi'
	icon_state = "bread"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 10,
		/datum/reagent/consumable/nutriment/vitamin = 5,
	)
	tastes = list("getting that bread" = 3)
	foodtypes = GRAIN
	w_class = WEIGHT_CLASS_NORMAL
	preserved_food = TRUE
	pickup_sound = 'sound/items/handling/glove_pick_up.ogg'
	drop_sound = 'sound/items/handling/glove_drop.ogg'
	crafting_complexity = FOOD_COMPLEXITY_3

/obj/item/food/rimworld_bread/make_grillable()
	return

/obj/item/food/rimworld_bread/make_germ_sensitive(mapload)
	return

/obj/item/food/rimworld_bread/rice
	name = "white-grain bread"

/obj/item/food/rimworld_bread/millet
	name = "millet bread"
