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
	//we may need to do the spawn-movement in a callback on a timer, as paxil mentions that perhaps the templates aren't loading in immediately
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
	var/mob/living/carbon/human/human_holder = quirk_holder
	human_holder.forceMove(spawn_turf)

	to_chat(human_holder, span_notice("<b>OOC NOTE</b>: If you're using a larger ship, please try to avoid automatic docking (use the navigation computer and place your ship manually near the station and EVA across). There are also known issues with rotation screwing up some shuttle templates, and staff can't fix this for you if it happens mid round!"))

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
// TODO: add some means of initial communication with the station to shuttles
// TODO: make some smaller salvage pod type shuttles

/datum/quirk_constant_data/ship_captain
	associated_typepath = /datum/quirk/ship_captain
	customization_options = list(
		/datum/preference/choiced/ship_captain_hull,
	)

/datum/preference/choiced/ship_captain_hull
	category = PREFERENCE_CATEGORY_MANUALLY_RENDERED
	savefile_key = "ship_captain_hull"
	savefile_identifier = PREFERENCE_CHARACTER
	can_randomize = FALSE

/datum/preference/choiced/ship_captain_hull/init_possible_values()
	return assoc_to_keys(GLOB.purchasable_ship_hulls)

/datum/preference/choiced/ship_captain_hull/create_default_value()
	return "CAS Hafila"

/datum/preference/choiced/ship_captain_hull/is_accessible(datum/preferences/preferences)
	if (!..())
		return FALSE

	return "Ship Captain" in preferences.all_quirks

/datum/preference/choiced/ship_captain_hull/apply_to_human(mob/living/carbon/human/target, value)
	return

/datum/preference/choiced/ship_captain_hull/is_valid(value)
	. = ..()
	var/datum/map_template/shuttle/personal_buyable/our_choice = GLOB.purchasable_ship_hulls[value]
	if (our_choice)
		to_chat(usr, span_info("<b>[our_choice.name]</b>"))
		to_chat(usr, span_info("<b>Vessel size</b>: [our_choice.personal_shuttle_size]"))
		to_chat(usr, span_info(our_choice.description))

GLOBAL_LIST_INIT(purchasable_ship_hulls, generate_purchasable_ship_hulls())

/proc/generate_purchasable_ship_hulls()
	var/list/hulls = list()
	var/list/shuttle_types = subtypesof(/datum/map_template/shuttle/personal_buyable/ferries) + subtypesof(/datum/map_template/shuttle/personal_buyable/mining) + subtypesof(/datum/map_template/shuttle/personal_buyable/incomplete) + subtypesof(/datum/map_template/shuttle/personal_buyable/pod)
	// remove the mothership from it
	for(var/datum/map_template/shuttle/personal_buyable/path as anything in shuttle_types)
		hulls["[path.name]"] = path

	return hulls
