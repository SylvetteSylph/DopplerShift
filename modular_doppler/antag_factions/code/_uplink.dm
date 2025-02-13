
/datum/antagonist/traitor/on_gain()
	. = ..()
	var/list/factions = list()
	for (var/datum/antag_faction/a_faction in GLOB.antag_factions)
		factions += a_faction

	var/datum/antag_faction/faction = tgui_input_list(owner.current, "Choose your faction", "Factions", sort_names(factions))
	if (QDELETED(src) || QDELETED(owner) || QDELETED(owner.current) || QDELETED(faction) || faction.type == /datum/antag_faction/none)
		return

	if (src.type in faction.antagonist_types)
		// apply the TC adjustment
		uplink_handler.telecrystals += faction.bonus_tc
		// add our bespoke items to the uplink
		for (var/datum/antag_faction_item/item_path as anything in subtypesof(/datum/antag_faction_item))
			var/datum/antag_faction_item/faction_item = new item_path()
			if (faction_item.item && faction_item.faction == faction.type)
				uplink_handler.extra_purchasable += faction_item.get_uplink_item()
