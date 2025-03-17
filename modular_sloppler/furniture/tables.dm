/obj/structure/table/rimworld
	name = "wooden table"
	desc = "Do not apply fire to this. Rumour says it burns easily."
	icon = 'icons/vintagestation/tables/wood_table.dmi'
	icon_state = "wood_table-0"
	base_icon_state = "wood_table"
	custom_materials = null
	frame = null
	framestack = null
	glass_shard_type = null
	buildstack = null
	can_flip = FALSE
	resistance_flags = FLAMMABLE
	max_integrity = 100
	smoothing_groups = SMOOTH_GROUP_RIMWORLD_WOOD_TABLE
	canSmoothWith = SMOOTH_GROUP_RIMWORLD_WOOD_TABLE

/obj/structure/table/rimworld/stone
	name = "stone counter"
	desc = "Do apply fire to this. Rumor says it burns with much difficulty."
	icon = 'icons/vintagestation/tables/stone_table.dmi'
	icon_state = "stone_table-0"
	base_icon_state = "stone_table"
	can_flip = FALSE
	resistance_flags = FIRE_PROOF
	max_integrity = 150
	smoothing_groups = SMOOTH_GROUP_RIMWORLD_STONE_TABLE
	canSmoothWith = SMOOTH_GROUP_RIMWORLD_STONE_TABLE
