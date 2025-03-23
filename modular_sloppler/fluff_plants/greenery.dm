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

/obj/structure/flora/rimworld_grass/attack_hand(mob/user, list/modifiers)
	. = ..()
	if(.)
		return
	playsound(src, SFX_CRUNCHY_BUSH_WHACK, 50, TRUE)
	if(do_after(user, 1 SECONDS, target = src))
		playsound(src, SFX_CRUNCHY_BUSH_WHACK, 50, TRUE)
		user.mind.adjust_experience(/datum/skill/rimworld_farming, SKILL_EXP_GRANT_LITTLE)
		qdel(src)

/obj/structure/flora/rimworld_grass/short
	name = "short grass"
	desc = "A patch of short grass."
	icon_state = "grass_short"

/obj/structure/flora/rimworld_grass/yellow_flower
	name = "yellow flowers"
	desc = "A patch of yellow flowers."
	icon_state = "flower_yellow"

/obj/structure/flora/rimworld_grass/red_flower
	name = "red flowers"
	desc = "A patch of red flowers."
	icon_state = "flower_red"

/obj/structure/flora/rimworld_grass/blue_flower
	name = "blue flowers"
	desc = "A patch of blue flowers."
	icon_state = "flower_blue"

/obj/structure/flora/rimworld_grass/bramble
	name = "bramble"
	desc = "A patch of bramble."
	icon_state = "bramble"

/obj/structure/flora/rimworld_grass/bush
	name = "short bush"
	desc = "A small bush."
	icon_state = "bush"

/obj/structure/flora/rimworld_grass/moss
	name = "moss"
	desc = "A patch of moss."
	icon_state = "moss"

// Top of the tree to ya

/obj/structure/flora/rimworld_tree
	name = "the very concept of a tree"
	desc = "A tree, plain and simple."
	icon = 'modular_sloppler/fluff_plants/plants64x64.dmi'
	icon_state = "will_of_man"
	SET_BASE_PIXEL(-16,0)
	layer = FLY_LAYER
	plane = ABOVE_GAME_PLANE

	harvestable = FALSE
	can_uproot = FALSE
	product_types = null

	density = TRUE

	flora_flags = FLORA_WOODEN
	max_integrity = 500

/obj/structure/flora/rimworld_tree/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/seethrough, get_seethrough_map())

/// Gets the seethrough map for standing behind the tree
/obj/structure/flora/rimworld_tree/proc/get_seethrough_map()
	return SEE_THROUGH_MAP_DEFAULT

/obj/structure/flora/rimworld_tree/attack_hand(mob/user, list/modifiers)
	. = ..()
	if(.)
		return
	playsound(src, SFX_TREE_CHOP, 50, TRUE)
	if(do_after(user, 10 SECONDS, target = src))
		playsound(src, SFX_TREE_CHOP, 50, TRUE)
		new /obj/item/stack/rimworld_logs(get_turf(src), rand(8, 15))
		user.mind.adjust_experience(/datum/skill/rimworld_farming, SKILL_EXP_GRANT_MEDIUM)
		user.mind.adjust_experience(/datum/skill/rimworld_carpentry, SKILL_EXP_GRANT_LOTS)
		qdel(src)

/obj/structure/flora/rimworld_tree/birch
	name = "birch tree"
	desc = "A tree, this one has white bark striped black."
	icon_state = "birch_1"

/obj/structure/flora/rimworld_tree/birch/two
	icon_state = "birch_2"

/obj/structure/flora/rimworld_tree/poplar
	name = "poplar tree"
	desc = "A tree, this one grows tall and narrow, but should still make like a tree and go nowhere regardless of this."
	icon_state = "poplar_1"

/obj/structure/flora/rimworld_tree/poplar/two
	icon_state = "poplar_2"

/obj/structure/flora/rimworld_tree/oak
	name = "oak tree"
	desc = "A tree, the most tree there ever was."
	icon_state = "oak_1"

/obj/structure/flora/rimworld_tree/oak/two
	icon_state = "oak_2"
