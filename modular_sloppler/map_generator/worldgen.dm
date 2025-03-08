/world
	maxx = 512
	maxy = 512

/datum/map_generator/rimworld_generator
	/// Used to select "zoom" level into the perlin noise, higher numbers result in slower transitions
	var/perlin_zoom = 65

/datum/map_generator/rimworld_generator/generate_terrain(list/turfs, area/generate_in)
	. = ..()
	var/generator_seed = rand(0, 50000)

	for(var/t in turfs) //Go through all the turfs and generate them
		var/turf/gen_turf = t
		var/drift_x = (gen_turf.x + rand(-2, 2)) / perlin_zoom
		var/drift_y = (gen_turf.y + rand(-2, 2)) / perlin_zoom

		var/datum/biome/selected_biome
		var/biome_noise = text2num(rustg_noise_get_at_coordinates("[generator_seed]", "[drift_x]", "[drift_y]"))

		switch(biome_noise)
			if(0 to 0.05)
				selected_biome = /datum/biome/rimworld_deep_water
			if(0.05 to 0.10)
				selected_biome = /datum/biome/rimworld_shallow_water
			if(0.10 to 0.20)
				selected_biome = /datum/biome/rimworld_mud
			if(0.20 to 0.65)
				selected_biome = /datum/biome/rimworld_dirt
			if(0.65 to 0.75)
				selected_biome = /datum/biome/rimworld_stone_floor
			if(0.75 to 1)
				selected_biome = /datum/biome/rimworld_mountain
		selected_biome = SSmapping.biomes[selected_biome] //Get the instance of this biome from SSmapping
		selected_biome.generate_turf(gen_turf)
		CHECK_TICK
