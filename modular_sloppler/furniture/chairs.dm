/obj/structure/chair/rimworld
	name = "wooden chair"
	desc = "Kick back and relax."
	icon = 'modular_sloppler/furniture/icons/chairs.dmi'
	icon_state = "wooden"
	resistance_flags = FLAMMABLE
	max_integrity = 50
	buildstacktype = /obj/item/stack/rimworld_logs
	buildstackamount = 1
	item_chair = null
	fishing_modifier = -5

/obj/structure/chair/rimworld/stone
	name = "stone stool"
	desc = "This is just a block of stone that you sit on, how can you call this a chair?."
	icon_state = "stone"
	resistance_flags = FIRE_PROOF
	max_integrity = 100
	buildstacktype = /obj/item/stack/rimworld_bricks
	buildstackamount = 1
	item_chair = null
	fishing_modifier = -2
