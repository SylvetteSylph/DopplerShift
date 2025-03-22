/datum/biome/rimworld_deep_water
	turf_type = /turf/open/water/rimworld/deep
	flora_density = 0
	feature_density = 0
	fauna_density = 0
	flora_types = list()
	feature_types = list()

/datum/biome/rimworld_shallow_water
	turf_type = /turf/open/water/rimworld
	flora_density = 0
	feature_density = 0
	fauna_density = 0
	flora_types = list()
	feature_types = list()

/datum/biome/rimworld_mud
	turf_type = /turf/open/misc/rimworld_mud
	flora_density = 4
	feature_density = 0.1
	fauna_density = 0
	flora_types = list(
		/obj/structure/flora/fantasy_regrowing = 1,
		/obj/structure/flora/fantasy_regrowing/ungrown = 2,
	)
	feature_types = list(
		/obj/effect/landmark/latejoin = 1,
	)

/datum/biome/rimworld_dirt
	turf_type = /turf/open/misc/rimworld_dirt
	flora_density = 60
	feature_density = 15
	fauna_density = 0.5
	flora_types = list(
		/obj/structure/flora/rimworld_grass = 8,
		/obj/structure/flora/rimworld_grass/short = 6,
		/obj/structure/flora/rimworld_grass/yellow_flower = 3,
		/obj/structure/flora/rimworld_grass/red_flower = 3,
		/obj/structure/flora/rimworld_grass/blue_flower = 3,
		/obj/structure/flora/rimworld_grass/bramble = 5,
		/obj/structure/flora/rimworld_grass/bush = 3,
		/obj/structure/flora/rimworld_grass/moss = 5,
		/obj/structure/flora/rimworld_tree/birch = 3,
		/obj/structure/flora/rimworld_tree/birch/two = 3,
		/obj/structure/flora/rimworld_tree/poplar = 3,
		/obj/structure/flora/rimworld_tree/poplar/two = 3,
		/obj/structure/flora/rimworld_tree/oak = 3,
		/obj/structure/flora/rimworld_tree/oak/two = 3,
		/obj/structure/flora/fantasy_regrowing/rice = 1,
		/obj/structure/flora/fantasy_regrowing/hideroot = 1,
		/obj/structure/flora/fantasy_regrowing/groundnut = 1,
		/obj/structure/flora/fantasy_regrowing/millet = 1,
		/obj/structure/flora/fantasy_regrowing/parsnips = 1,
		/obj/structure/flora/fantasy_regrowing/onions = 1,
		/obj/structure/flora/fantasy_regrowing/kenaf = 1,
		/obj/structure/flora/fantasy_regrowing/cotton = 1,
		/obj/structure/flora/fantasy_regrowing/grapes = 1,
	)
	feature_types = list(
		/obj/item/stack/rimworld_stone = 1,
	)
	fauna_types = list(
		/obj/effect/spawner/random/rimworld_wild_llamas = 1,
		/obj/effect/spawner/random/rimworld_wild_yaks = 1,
		/obj/effect/spawner/random/rimworld_wild_ducks = 1,
		/obj/effect/spawner/random/rimworld_wild_goats = 1,
	)

/datum/biome/rimworld_stone_floor
	turf_type = /turf/open/misc/rimworld_stone
	flora_density = 0
	feature_density = 20
	fauna_density = 0
	flora_types = list()
	feature_types = list(
		/obj/item/stack/rimworld_stone = 1,
	)

/datum/biome/rimworld_mountain
	turf_type = /turf/closed/rimworld_mineral
	flora_density = 0
	feature_density = 0
	fauna_density = 0
	flora_types = list()
	feature_types = list()
