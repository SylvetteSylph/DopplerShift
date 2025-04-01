// Milk

/obj/item/food/rimworld_milk
	name = "evil debug milk"
	desc = "Wouldn't you want to know where this comes from."
	icon = 'modular_sloppler/food/icons/animal_products.dmi'
	icon_state = "milj"
	food_reagents = list(
		/datum/reagent/consumable/milk = 10,
		/datum/reagent/consumable/nutriment/peptides = 2,
	)
	tastes = list("milk" = 3)
	eatverbs = list(
		"slurp",
		"sip",
		"drink",
	)
	trash_type = /obj/item/rimworld_cup
	foodtypes = DAIRY
	w_class = WEIGHT_CLASS_SMALL
	preserved_food = TRUE
	consumption_sound = 'sound/items/drink.ogg'
	pickup_sound = 'sound/items/handling/reagent_containers/plastic_bottle/plastic_bottle_liquid_slosh1.ogg'
	drop_sound = 'sound/items/handling/reagent_containers/plastic_bottle/plastic_bottle_liquid_slosh2.ogg'

/obj/item/food/rimworld_milk/make_germ_sensitive(mapload)
	return

/obj/item/food/rimworld_milk/yak
	name = "yak's milk"
	desc = "The milk of a yak."

/obj/item/food/rimworld_milk/goated
	name = "goat's milk"
	desc = "The milk of a goat."

// Eggs

/obj/item/food/rimworld_egg
	name = "egg"
	desc = "An egg!"
	icon = 'modular_sloppler/food/icons/animal_products.dmi'
	icon_state = "egg"
	inhand_icon_state = null
	food_reagents = list(/datum/reagent/consumable/eggyolk = 2, /datum/reagent/consumable/eggwhite = 4)
	foodtypes = MEAT | RAW
	w_class = WEIGHT_CLASS_TINY
	preserved_food = TRUE
	pickup_sound = 'sound/items/handling/glove_pick_up.ogg'
	drop_sound = 'sound/items/handling/glove_drop.ogg'

/obj/item/food/rimworld_egg/make_germ_sensitive(mapload)
	return

/obj/item/food/rimworld_egg/cooked
	name = "cooked egg"
	desc = "An egg! Cooked."
	icon_state = "egg_cooked"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 3,
		/datum/reagent/consumable/eggyolk = 1,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	foodtypes = MEAT | FRIED

/obj/item/food/rimworld_egg/duck
	name = "duck's egg"
	desc = "The egg of a duck, maybe this one will make another duck if you leave it on the ground?"

/obj/item/food/rimworld_egg/duck/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/rimworld_egg/cooked/duck, rand(1 MINUTES, 2 MINUTES), TRUE, FALSE)

/obj/item/food/rimworld_egg/cooked/duck
	name = "cooked duck's egg"
	desc = "The egg of a duck, cooked in it's own shell. Much tastier than not cooked unless you're a lizard, maybe."

// Meats

/obj/item/food/rimworld_meat
	name = "debug meat"
	desc = "A slab ?? of meat."
	icon = 'modular_sloppler/food/icons/animal_products.dmi'
	icon_state = "slab"
	bite_consumption = 3
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/fat = 2,
		/datum/reagent/consumable/nutriment/vitamin = 1,
	)
	w_class = WEIGHT_CLASS_SMALL
	tastes = list("meat" = 1)
	foodtypes = MEAT | RAW
	preserved_food = TRUE
	pickup_sound = 'sound/items/handling/glove_pick_up.ogg'
	drop_sound = 'sound/items/handling/glove_drop.ogg'

/obj/item/food/rimworld_meat/make_germ_sensitive(mapload)
	return

/obj/item/food/rimworld_meat/cooked
	name = "cooked debug meat"
	desc = "A slab cooked ?? of meat."
	icon_state = "slab_cooked"
	bite_consumption = 3
	food_reagents = list(
		/datum/reagent/consumable/nutriment/protein = 5,
		/datum/reagent/consumable/nutriment/fat = 1,
		/datum/reagent/consumable/nutriment/vitamin = 4,
	)
	w_class = WEIGHT_CLASS_SMALL
	tastes = list("meat" = 1)
	foodtypes = MEAT
	preserved_food = TRUE

/obj/item/food/rimworld_meat/yak
	name = "yak's meat"
	desc = "A cut of the meat of a yak."

/obj/item/food/rimworld_meat/yak/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/rimworld_meat/cooked/yak, rand(1 MINUTES, 2 MINUTES), TRUE, FALSE)

/obj/item/food/rimworld_meat/cooked/yak
	name = "seared yak's meat"
	desc = "A cut of yak's meat, seared over a fire."

/obj/item/food/rimworld_meat/goat
	name = "goat's meat"
	desc = "A cut of the meat of a goat."

/obj/item/food/rimworld_meat/goat/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/rimworld_meat/cooked/goat, rand(1 MINUTES, 2 MINUTES), TRUE, FALSE)

/obj/item/food/rimworld_meat/cooked/goat
	name = "seared goat's meat"
	desc = "A cut of goat's meat, seared over a fire."

/obj/item/food/rimworld_meat/llama
	name = "llama's meat"
	desc = "A cut of the meat of a llama."

/obj/item/food/rimworld_meat/llama/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/rimworld_meat/cooked/llama, rand(1 MINUTES, 2 MINUTES), TRUE, FALSE)

/obj/item/food/rimworld_meat/cooked/llama
	name = "seared llama's meat"
	desc = "A cut of llama's meat, seared over a fire."

/obj/item/food/rimworld_meat/duck
	name = "duck's meat"
	desc = "A cut of the meat of a duck."
	icon_state = "foul"

/obj/item/food/rimworld_meat/duck/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/rimworld_meat/cooked/duck, rand(1 MINUTES, 2 MINUTES), TRUE, FALSE)

/obj/item/food/rimworld_meat/cooked/duck
	name = "seared duck's meat"
	desc = "A cut of duck's meat, seared over a fire."
	icon_state = "foul_cooked"

/obj/item/food/rimworld_meat/fat
	name = "animal fat"
	desc = "An animal's fat."
	icon_state = "fat"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/fat = 5,
	)

/obj/item/food/rimworld_meat/fat/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/rimworld_meat/cooked/fat, rand(1 MINUTES, 2 MINUTES), TRUE, FALSE)

/obj/item/food/rimworld_meat/cooked/fat
	name = "seared animal fat"
	desc = "An animal's fat, made more palatable by fire."
	icon_state = "fat_cooked"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/fat = 4,
		/datum/reagent/consumable/nutriment/vitamin = 2,
	)
