//Bartender's Safe
/obj/structure/secure_safe/bartender
	name = "gun safe"

/obj/structure/secure_safe/bartender/PopulateContents()
	new /obj/item/gun/ballistic/shotgun/doublebarrel(src)
	new /obj/item/storage/box/beanbag(src)
	new /obj/item/storage/belt/bandolier(src)
	new /obj/item/stack/spacecash/c100(src)

//Chaplain's Safe
/obj/structure/secure_safe/chaplain
	name = "relic safe"

/obj/structure/secure_safe/chaplain/PopulateContents()
	new /obj/item/book/granter/action/spell/smoke/lesser(src)
	new /obj/item/soulstone/anybody/chaplain(src)
	new /obj/item/toy/clockwork_watch(src)
	new /obj/item/reagent_containers/cup/glass/bottle/holywater(src)
