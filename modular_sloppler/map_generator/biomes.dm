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
	flora_density = 0
	feature_density = 0
	fauna_density = 0
	flora_types = list()
	feature_types = list()

/datum/biome/rimworld_dirt
	turf_type = /turf/open/misc/rimworld_dirt
	flora_density = 60
	feature_density = 15
	fauna_density = 0
	flora_types = list(
		/obj/structure/flora/rimworld_grass = 6,
		/obj/structure/flora/rimworld_grass/short = 4,
		/obj/structure/flora/rimworld_grass/yellow_flower = 1,
		/obj/structure/flora/rimworld_grass/red_flower = 1,
		/obj/structure/flora/rimworld_grass/blue_flower = 1,
		/obj/structure/flora/rimworld_grass/bramble = 3,
		/obj/structure/flora/rimworld_grass/bush = 1,
		/obj/structure/flora/rimworld_grass/moss = 3,
		/obj/structure/flora/rimworld_tree/birch = 1,
		/obj/structure/flora/rimworld_tree/birch/two = 1,
		/obj/structure/flora/rimworld_tree/poplar = 1,
		/obj/structure/flora/rimworld_tree/poplar/two = 1,
		/obj/structure/flora/rimworld_tree/oak = 1,
		/obj/structure/flora/rimworld_tree/oak/two = 1,
	)
	feature_types = list(
		/obj/item/stack/rimworld_stone = 1,
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
