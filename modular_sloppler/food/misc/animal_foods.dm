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
	trash_type = /obj/item/rimworld_cup
	foodtypes = DAIRY
	w_class = WEIGHT_CLASS_SMALL
	preserved_food = TRUE
	consumption_sound = 'sound/items/drink.ogg'

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

/obj/item/food/rimworld_egg/make_germ_sensitive(mapload)
	return

/obj/item/food/rimworld_egg/duck
	name = "duck's egg"
	desc = "The egg of a duck, maybe this one will make another duck if you leave it on the ground?"

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

/obj/item/food/rimworld_meat/make_germ_sensitive(mapload)
	return

/obj/item/food/rimworld_meat/yak
	name = "yak's meat"
	desc = "A cut of the meat of a yak."

/obj/item/food/rimworld_meat/goat
	name = "goat's meat"
	desc = "A cut of the meat of a goat."

/obj/item/food/rimworld_meat/llama
	name = "llama's meat"
	desc = "A cut of the meat of a llama."

/obj/item/food/rimworld_meat/duck
	name = "duck's meat"
	desc = "A cut of the meat of a duck."
	icon_state = "foul"

/obj/item/food/rimworld_meat/fat
	name = "animal fat"
	desc = "An animal's fat."
	icon_state = "fat"
	food_reagents = list(
		/datum/reagent/consumable/nutriment/fat = 5,
	)
