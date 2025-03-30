/datum/quirk
	/// Is this quirk disabled from choosing?
	var/event_disabled = FALSE

// Disabled quirks
/datum/quirk/item_quirk/addict
	event_disabled = TRUE

/datum/quirk/blooddeficiency
	event_disabled = TRUE

/datum/quirk/body_purist
	event_disabled = TRUE

/datum/quirk/item_quirk/brainproblems
	event_disabled = TRUE

/datum/quirk/item_quirk/chronic_illness
	event_disabled = TRUE

/datum/quirk/item_quirk/family_heirloom
	event_disabled = TRUE

/datum/quirk/item_quirk/fluoride_stare
	event_disabled = TRUE

/datum/quirk/hemiplegic
	event_disabled = TRUE

/datum/quirk/indebted
	event_disabled = TRUE

/datum/quirk/paraplegic
	event_disabled = TRUE

/datum/quirk/prosthetic_limb
	event_disabled = TRUE

/datum/quirk/prosthetic_organ
	event_disabled = TRUE

/datum/quirk/quadruple_amputee
	event_disabled = TRUE

/datum/quirk/tin_man
	event_disabled = TRUE

/datum/quirk/item_quirk/borg_ready
	event_disabled = TRUE

/datum/quirk/item_quirk/colorist
	event_disabled = TRUE

/datum/quirk/gamer
	event_disabled = TRUE

/datum/quirk/item_quirk/photographer
	event_disabled = TRUE

/datum/quirk/pineapple_hater
	event_disabled = TRUE

/datum/quirk/pineapple_liker
	event_disabled = TRUE

/datum/quirk/transhumanist
	event_disabled = TRUE

/datum/quirk/chip_connector
	event_disabled = TRUE

/datum/quirk/chipped
	event_disabled = TRUE

/datum/quirk/item_quirk/clown_enjoyer
	event_disabled = TRUE

/datum/quirk/item_quirk/mime_fan
	event_disabled = TRUE

/datum/quirk/item_quirk/musician
	event_disabled = TRUE

/datum/quirk/item_quirk/poster_boy
	event_disabled = TRUE

/datum/quirk/item_quirk/breather/nitrogen_breather
	event_disabled = TRUE

/datum/quirk/robot_limb_detach
	event_disabled = TRUE

/datum/quirk/equipping/entombed
	event_disabled = TRUE

/datum/quirk/item_quirk/ration_system
	event_disabled = TRUE

/datum/quirk/permitted_cybernetic
	event_disabled = TRUE

/datum/quirk/system_shock
	event_disabled = TRUE

/datum/quirk/tranquil
	event_disabled = TRUE

// Quirk item granting removals
/datum/quirk/item_quirk/blindness/add_unique(client/client_source)
	return

/datum/quirk/item_quirk/deafness/add_unique(client/client_source)
	return

/datum/quirk/item_quirk/scarred_eye/add_unique(client/client_source)
	return

/datum/quirk/item_quirk/bald/add_unique(client/client_source)
	return

/datum/quirk/item_quirk/settler/add_unique(client/client_source)
	return

/datum/quirk/item_quirk/signer/add_unique(client/client_source)
	return

/datum/quirk/spacer_born/post_add()
	return

/datum/quirk/item_quirk/spiritual/add_unique(client/client_source)
	return

/datum/quirk/item_quirk/tagger/add_unique(client/client_source)
	return
