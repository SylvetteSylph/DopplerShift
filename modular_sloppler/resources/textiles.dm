GLOBAL_LIST_INIT(rimworld_kenaf_recipes, list(
	new/datum/stack_recipe("jute chestrags", /obj/item/clothing/under/rimworld_chestrags/kenaf, 2, time = 6 SECONDS, category = CAT_TOOLS),
	new/datum/stack_recipe("jute waistrags", /obj/item/clothing/under/rimworld_waistrags/kenaf, 1, time = 4 SECONDS, category = CAT_TOOLS),
))
GLOBAL_LIST_INIT(rimworld_cloth_recipes, list(
	new/datum/stack_recipe("cloth chestrags", /obj/item/clothing/under/rimworld_chestrags/cloth, 2, time = 6 SECONDS, category = CAT_TOOLS),
	new/datum/stack_recipe("cloth waistrags", /obj/item/clothing/under/rimworld_waistrags/cloth, 1, time = 4 SECONDS, category = CAT_TOOLS),
))
GLOBAL_LIST_INIT(rimworld_leather_recipes, list())

// Kenaf

/obj/item/stack/medical/gauze/rimworld_kenaf
	name = "jute sheets"
	singular_name = "jute sheet"
	desc = "Kenaf woven into sheets that can be used for many things. \
		If not clothes, then at least bandages, you remember that much right?"
	icon = 'modular_sloppler/resources/icons/resources.dmi'
	icon_state = "kenaf"
	base_icon_state = "kenaf"
	inhand_icon_state = null
	merge_type = /obj/item/stack/medical/gauze/rimworld_kenaf
	max_amount = 10
	resistance_flags = FLAMMABLE
	w_class = WEIGHT_CLASS_NORMAL
	force = 0
	throwforce = 0
	throw_speed = 5
	throw_range = 3
	campfire_fuel_value = 2 MINUTES
	novariants = FALSE
	splint_factor = 0.65
	burn_cleanliness_bonus = 0.7
	absorption_rate = 0.075
	absorption_capacity = 4
	pickup_sound = 'sound/items/handling/materials/skin_pick_up.ogg'
	drop_sound = 'sound/items/handling/materials/skin_drop.ogg'

/obj/item/stack/medical/gauze/rimworld_kenaf/Initialize(mapload, new_amount, merge, list/mat_override, mat_amt)
	. = ..()
	update_appearance()

/obj/item/stack/medical/gauze/rimworld_kenaf/get_main_recipes()
	. = ..()
	. = GLOB.rimworld_kenaf_recipes

// Cloth

/obj/item/stack/medical/gauze/rimworld_cloth
	name = "cloth sheets"
	singular_name = "cloth sheet"
	desc = "Cotton woven into sheets that can be used for many things. \
		If not clothes, then at least bandages, you remember that much right?"
	icon = 'modular_sloppler/resources/icons/resources.dmi'
	icon_state = "cloth"
	base_icon_state = "cloth"
	inhand_icon_state = null
	merge_type = /obj/item/stack/medical/gauze/rimworld_cloth
	max_amount = 10
	resistance_flags = FLAMMABLE
	w_class = WEIGHT_CLASS_NORMAL
	force = 0
	throwforce = 0
	throw_speed = 5
	throw_range = 3
	campfire_fuel_value = 2 MINUTES
	novariants = FALSE
	splint_factor = 0.7
	burn_cleanliness_bonus = 0.75
	absorption_rate = 0.075
	absorption_capacity = 5
	self_delay = 3 SECONDS
	pickup_sound = 'sound/items/handling/materials/skin_pick_up.ogg'
	drop_sound = 'sound/items/handling/materials/skin_drop.ogg'

/obj/item/stack/medical/gauze/rimworld_cloth/Initialize(mapload, new_amount, merge, list/mat_override, mat_amt)
	. = ..()
	update_appearance()

/obj/item/stack/medical/gauze/rimworld_cloth/get_main_recipes()
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
	pickup_sound = 'sound/items/handling/materials/skin_pick_up.ogg'
	drop_sound = 'sound/items/handling/materials/skin_drop.ogg'

/obj/item/stack/rimworld_leather/Initialize(mapload, new_amount, merge, list/mat_override, mat_amt)
	. = ..()
	update_appearance()

/obj/item/stack/rimworld_leather/get_main_recipes()
	. = ..()
	. = GLOB.rimworld_leather_recipes
