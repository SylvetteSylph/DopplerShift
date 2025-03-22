GLOBAL_LIST_INIT(rimworld_kenaf_recipes, list())
GLOBAL_LIST_INIT(rimworld_cloth_recipes, list())
GLOBAL_LIST_INIT(rimworld_leather_recipes, list())

// Kenaf

/obj/item/stack/rimworld_kenaf
	name = "jute sheets"
	singular_name = "jute sheet"
	desc = "Kenaf woven into sheets that can be used for many things."
	icon = 'modular_sloppler/resources/icons/resources.dmi'
	icon_state = "kenaf"
	base_icon_state = "kenaf"
	inhand_icon_state = null
	merge_type = /obj/item/stack/rimworld_kenaf
	max_amount = 10
	resistance_flags = FLAMMABLE
	w_class = WEIGHT_CLASS_NORMAL
	force = 0
	throwforce = 0
	throw_speed = 5
	throw_range = 3
	campfire_fuel_value = 2 MINUTES
	novariants = FALSE

/obj/item/stack/rimworld_kenaf/Initialize(mapload, new_amount, merge, list/mat_override, mat_amt)
	. = ..()
	update_appearance()

/obj/item/stack/rimworld_kenaf/get_main_recipes()
	. = ..()
	. = GLOB.rimworld_kenaf_recipes

// Cloth

/obj/item/stack/rimworld_cloth
	name = "cloth sheets"
	singular_name = "cloth sheet"
	desc = "Cotton woven into sheets that can be used for many things."
	icon = 'modular_sloppler/resources/icons/resources.dmi'
	icon_state = "cloth"
	base_icon_state = "cloth"
	inhand_icon_state = null
	merge_type = /obj/item/stack/rimworld_cloth
	max_amount = 10
	resistance_flags = FLAMMABLE
	w_class = WEIGHT_CLASS_NORMAL
	force = 0
	throwforce = 0
	throw_speed = 5
	throw_range = 3
	campfire_fuel_value = 2 MINUTES
	novariants = FALSE

/obj/item/stack/rimworld_cloth/Initialize(mapload, new_amount, merge, list/mat_override, mat_amt)
	. = ..()
	update_appearance()

/obj/item/stack/rimworld_cloth/get_main_recipes()
	. = ..()
	. = GLOB.rimworld_cloth_recipes

// Leather

/obj/item/stack/rimworld_leather
	name = "leather sheets"
	singular_name = "leather sheet"
	desc = "Leather cut into sheets that can be used for many things."
	icon = 'modular_sloppler/resources/icons/resources.dmi'
	icon_state = "leather"
	base_icon_state = "leather"
	inhand_icon_state = null
	merge_type = /obj/item/stack/rimworld_leather
	max_amount = 10
	resistance_flags = FLAMMABLE
	w_class = WEIGHT_CLASS_NORMAL
	force = 0
	throwforce = 0
	throw_speed = 5
	throw_range = 3
	campfire_fuel_value = 2 MINUTES
	novariants = FALSE

/obj/item/stack/rimworld_leather/Initialize(mapload, new_amount, merge, list/mat_override, mat_amt)
	. = ..()
	update_appearance()

/obj/item/stack/rimworld_leather/get_main_recipes()
	. = ..()
	. = GLOB.rimworld_leather_recipes
