// Burn healing
/obj/item/stack/medical/ointment/rimworld_burn_wrap
	name = "cloth burn dressings"
	singular_name = "cloth burn dressing"
	desc = "Dressing special made for healing short term burns."
	icon = 'modular_sloppler/war/icons/objects.dmi'
	icon_state = "cotton_dressing"
	inhand_icon_state = null
	gender = PLURAL
	novariants = TRUE
	amount = 12
	max_amount = 12
	self_delay = 3 SECONDS
	other_delay = 1 SECONDS
	heal_burn = 10
	heal_brute = 5
	flesh_regeneration = 2.5
	sanitization = 0.25
	merge_type = /obj/item/stack/medical/ointment/rimworld_burn_wrap

/obj/item/stack/medical/ointment/rimworld_burn_wrap/cloth
	merge_type = /obj/item/stack/medical/ointment/rimworld_burn_wrap/cloth

/obj/item/stack/medical/ointment/rimworld_burn_wrap/cloth/crafted
	amount = 6

/obj/item/stack/medical/ointment/rimworld_burn_wrap/jute
	name = "jute burn dressings"
	singular_name = "jute burn dressing"
	icon_state = "jute_dressing"
	heal_burn = 10
	heal_brute = 0
	flesh_regeneration = 2.5
	sanitization = 0.2
	merge_type = /obj/item/stack/medical/ointment/rimworld_burn_wrap/jute

/obj/item/stack/medical/ointment/rimworld_burn_wrap/jute/crafted
	amount = 6

// Sutures
/obj/item/stack/medical/suture/rimworld_suture
	name = "cloth sutures"
	singular_name = "cloth suture"
	desc = "A simple suture tiped with a needle of whatever was sturdy enough."
	icon = 'modular_sloppler/war/icons/objects.dmi'
	icon_state = "cotton_suture"
	inhand_icon_state = null
	novariants = TRUE
	amount = 12
	max_amount = 12
	heal_brute = 12
	stop_bleeding = 0.75
	merge_type = /obj/item/stack/medical/suture/rimworld_suture

/obj/item/stack/medical/suture/rimworld_suture/cloth
	merge_type = /obj/item/stack/medical/suture/rimworld_suture/cloth

/obj/item/stack/medical/suture/rimworld_suture/cloth/crafted
	amount = 6

/obj/item/stack/medical/suture/rimworld_suture/jute
	name = "jute sutures"
	singular_name = "jute suture"
	icon_state = "jute_suture"
	heal_brute = 10
	stop_bleeding = 0.75
	merge_type = /obj/item/stack/medical/suture/rimworld_suture/jute

/obj/item/stack/medical/suture/rimworld_suture/jute/crafted
	amount = 6
