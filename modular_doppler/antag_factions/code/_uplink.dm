
/datum/antagonist/traitor/on_gain()
	. = ..()
	var/datum/antag_faction/faction = new /datum/antag_faction/cybersun // TODO: retrieve path from prefs
	if (faction.type == /datum/antag_faction/none)
		return
	if (src.type in faction.antagonist_types)
		// apply the TC adjustment
		uplink_handler.telecrystals += faction.bonus_tc
		// add our bespoke items to the uplink
		for (var/datum/antag_faction_item/item_path as anything in subtypesof(/datum/antag_faction_item))
			var/datum/antag_faction_item/faction_item = new item_path()
			if (faction_item.item && faction_item.faction == faction.type)
				uplink_handler.extra_purchasable += faction_item.get_uplink_item()
