/datum/quirk/ship_captain
	name = "Ship Captain"
	desc = "You own or otherwise have access to a spacefaring vessel capable of docking with the station, and spawn in it at roundstart."
	gain_text = span_info("Your trusty vessel is at hand.")
	lose_text = span_warning("You've lost your vessel...")
	medical_record_text = "Subject has registered micro-g hypovolemia screening due to space vessel ownership."
	icon = FA_ICON_SHIP
	value = 8
	var/datum/turf_reservation/owned_ship_reservation
	var/datum/map_template/shuttle/personal_buyable/our_shuttle_template

/datum/quirk/ship_captain/post_add()
	. = ..()
	// we have to post_add this otherwise it'll fire on every spawn which we really, really don't want
	// HEY!!! we need to check to make sure we're either on the shuttle coming in OR on station z-level
	// otherwise shit like nukies who have the quirk will pop in and then immediately tp to their own shuttle
	// recoherent reports bitrunners are also affected by this

	var/mob/living/carbon/human/human_holder = quirk_holder
	var/list/reserved_z = SSmapping.levels_by_trait(ZTRAIT_RESERVED)

	if (is_centcom_level(human_holder.z)) // don't spawn our shuttle if we're in the fucking thunderdome or deathmatch
		return
	if (!is_station_level(human_holder.z) && !locate(human_holder.z) in reserved_z) // sometimes players join in on a transit shuttle, which happens in a reserved z-level, so
		return
	if (HAS_TRAIT(human_holder, TRAIT_BITRUNNER_AVATAR)) // don't spawn this on bitrunner avatars obviously
		return

	var/template_path_key = quirk_holder.client?.prefs.read_preference(/datum/preference/choiced/ship_captain_hull)
	var/template_path = GLOB.purchasable_ship_hulls[template_path_key]
	if (template_path_key)
		our_shuttle_template = new template_path()

	if (!our_shuttle_template)
		CRASH("failed to make ship template for captain quirk at prefs read stage")

	owned_ship_reservation = SSmapping.request_turf_block_reservation(
		our_shuttle_template.width,
		our_shuttle_template.height,
		1,
		reservation_type = /datum/turf_reservation/transit,
	)
	if (!owned_ship_reservation)
		CRASH("failed to reserve an area for ship captain quirk shuttle template loading")

	var/turf/bottom_left = owned_ship_reservation.bottom_left_turfs[1]
	our_shuttle_template.load(bottom_left, centered = FALSE)
	// need to find a safe turf and drop us there
	var/affected_turfs = owned_ship_reservation.reserved_turfs //our_shuttle_template.get_affected_turfs(bottom_left, centered = FALSE)
	var/turf/spawn_turf
	for (var/turf/shuttle_turf in affected_turfs)
		if (is_safe_turf(shuttle_turf))
			spawn_turf = shuttle_turf
			break

	if (!spawn_turf)
		CRASH("failed to find a safe turf for ship captain shuttle spawning...")

	// otherwise, move us there
	human_holder.forceMove(spawn_turf)

/datum/quirk/ship_captain/remove()
	. = ..()
	if (owned_ship_reservation)
		owned_ship_reservation.Release()
	// we shouldn't clear the shuttle because the only way we can do this is by jumping to nullspace, which will qdel everything inside the shuttle.


// TODO: transponder prefs to rename the area?
// TODO: announce on command comms when thing spawns nearby (is this even possible?)
// TODO: add some 'cold storage' thing that lets people move their ships back to reservation space and call them seamlessly to a docking port?
// TODO: add more docking ports to the lavaland wastes
// TODO: seed random megabeacons throughout space so people can land there?
// TODO: put a megabeacon at roundstart/mapload on the lavalands top waste z level
// TODO: add some means of initial communication with the station to shuttles
// TODO: make some smaller salvage pod type shuttles
