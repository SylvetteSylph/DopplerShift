/datum/quirk/ship_captain
	name = "Spacefarer"
	desc = "You have access to a hyperspace-capable vessel. Use a friend's crew identifier key to spawn on their shuttle, or set off solo on your own!"
	gain_text = span_info("You're ready to take on the rigors of space travel.")
	lose_text = span_warning("A station's looking real tempting right now...")
	medical_record_text = "Subject has registered micro-g hypovolemia screening due to prolonged space travel."
	icon = FA_ICON_SHIP
	value = 8
	var/datum/turf_reservation/owned_ship_reservation
	var/datum/map_template/shuttle/personal_buyable/our_shuttle_template
	var/area/quirk_shuttle_area

/datum/quirk/ship_captain/post_add()
	var/mob/living/carbon/human/human_holder = quirk_holder
	var/crewing_key = quirk_holder.client?.prefs.read_preference(/datum/preference/text/ship_captain_crewkey)
	var/list/reserved_z = SSmapping.levels_by_trait(ZTRAIT_RESERVED)

	if (is_centcom_level(human_holder.z)) // don't spawn our shuttle if we're in the fucking thunderdome or deathmatch
		return
	if (!is_station_level(human_holder.z) && !locate(human_holder.z) in reserved_z) // sometimes players join in on a transit shuttle, which happens in a reserved z-level, so
		return
	if (HAS_TRAIT(human_holder, TRAIT_BITRUNNER_AVATAR)) // don't spawn this on bitrunner avatars obviously
		return

	if (crewing_key && crewing_key != "Solo")
		var/area/potential_spawn_area = GLOB.ship_captain_pairs[crewing_key]
		var/turf/crew_spawn_turf
		if (potential_spawn_area)
			// someone else has taken this key, so we're now in "crew mode"
			// find a safe turf in this area wherever it is and port us to it
			for (var/turf/possible_spawn_turf in potential_spawn_area.contents)
				if (is_safe_turf(possible_spawn_turf))
					crew_spawn_turf = possible_spawn_turf
					break

			if (crew_spawn_turf)
				var/area/joined_ship = crew_spawn_turf.loc
				to_chat(human_holder, span_notice("You board the [joined_ship.name], and prepare for another shift of work."))
				human_holder.forceMove(crew_spawn_turf)
				return
			else
				// uh oh no safe turfs - the shuttle is spaced or something else bad has happened...
				to_chat(human_holder, span_boldwarning("You could not be moved to your designated ship as crew as there is nowhere safe to place you. Please ahelp to be moved manually."))
				message_admins("[human_holder] failed to join ship key '[crewing_key]' as crew: no safe turfs found. Consider moving them manually.")
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
	)
	if (!owned_ship_reservation)
		CRASH("failed to reserve an area for ship captain quirk shuttle template loading")

	var/turf/bottom_left = owned_ship_reservation.bottom_left_turfs[1]
	our_shuttle_template.load(bottom_left, centered = FALSE)

	// do any area customizations where appropriate
	var/ship_name = quirk_holder.client?.prefs.read_preference(/datum/preference/text/ship_captain_name)
	var/area/spawned_area = get_area(bottom_left)
	if (ship_name != "Default")
		rename_area(spawned_area, ship_name)

	// save our area - we'll need this for ship captain pairing
	quirk_shuttle_area = spawned_area

	// need to find a safe turf and drop us there
	var/affected_turfs = owned_ship_reservation.reserved_turfs
	var/turf/spawn_turf
	for (var/turf/shuttle_turf in affected_turfs)
		if (is_safe_turf(shuttle_turf))
			spawn_turf = shuttle_turf
			break

	if (!spawn_turf)
		CRASH("failed to find a safe turf for ship captain shuttle spawning...")

	// otherwise, move us there
	human_holder.forceMove(spawn_turf)

	// we're successful at this point, so earmark our crewing key and in the global pairing registry - IF we're not solo
	if (GLOB.ship_captain_pairs && crewing_key != "Solo")
		GLOB.ship_captain_pairs[crewing_key] = quirk_shuttle_area

/datum/quirk/ship_captain/remove()
	. = ..()
	if (owned_ship_reservation)
		owned_ship_reservation.Release()
	if (quirk_shuttle_area)
		// clear out our entry from the ship captain pairing table
		var/crewing_key = quirk_holder.client?.prefs.read_preference(/datum/preference/text/ship_captain_crewkey)
		if (crewing_key && crewing_key != "Solo")
			GLOB.ship_captain_pairs.Remove(crewing_key)

		// if there's nothing with a mind aboard our ship, just jump it to nullspace
		var/delete = TRUE
		var/mob/living/culprit
		var/list/things_on_our_shuttle = mobs_in_area_type(quirk_shuttle_area)
		for (var/mob/living/thing as anything in things_on_our_shuttle)
			if (thing.mind)
				delete = FALSE
				culprit = thing

		if (delete)
			var/obj/docking_port/mobile/personally_bought/shuttle_port = locate() in quirk_shuttle_area.contents
			if (shuttle_port)
				quirk_shuttle_area = null // just get ahead of the curve to prevent hard dels
				shuttle_port.jumpToNullSpace() //goodbye shuttle (and everything on it, including areas)
		else
			if (culprit)
				message_admins("Spacefaring quirk deletion tried to clean up a shuttle, but couldn't because of [culprit][ADMIN_JMP(culprit)]. Tidy up manually w/ shuttle manipulator if an issue.")

// TODO: announce on command comms when thing spawns nearby (is this even possible?)
// TODO: add more docking ports to the lavaland wastes
// TODO: seed random megabeacons throughout space so people can land there?
// TODO: put a megabeacon at roundstart/mapload on the lavalands top waste z level
// TODO: add some means of initial communication with the station to shuttles
