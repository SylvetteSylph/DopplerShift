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
