/* ADMIN */
/datum/id_trim/admin
	subdepartment_color = COLOR_SERVICE_PURPLE

/datum/id_trim/highlander
	subdepartment_color = COLOR_SERVICE_PURPLE


/* CENTCOM */
/datum/id_trim/centcom/custodian
	subdepartment_color = COLOR_SERVICE_PURPLE

/datum/id_trim/centcom/ert/medical
	subdepartment_color = COLOR_MEDICAL_GREEN

/datum/id_trim/centcom/ert/chaplain
	subdepartment_color = COLOR_SERVICE_PURPLE

/datum/id_trim/centcom/ert/janitor
	subdepartment_color = COLOR_SERVICE_PURPLE


/* COMMAND */
/datum/id_trim/job/head_of_personnel
	subdepartment_color = COLOR_SERVICE_PURPLE
	pointer_color = COLOR_SERVICE_PURPLE

/datum/id_trim/job/chief_medical_officer
	subdepartment_color = COLOR_MEDICAL_GREEN
	pointer_color = COLOR_MEDICAL_GREEN

/datum/id_trim/job/research_director
	subdepartment_color = COLOR_SCIENCE_BLUE
	pointer_color = COLOR_SCIENCE_BLUE


/* MEDICAL */
/datum/id_trim/job/chemist
	department_color = COLOR_MEDICAL_GREEN
	subdepartment_color = COLOR_MEDICAL_GREEN

/datum/id_trim/job/coroner
	department_color = COLOR_MEDICAL_GREEN
	subdepartment_color = COLOR_SERVICE_PURPLE

/datum/id_trim/job/medical_doctor
	department_color = COLOR_MEDICAL_GREEN
	subdepartment_color = COLOR_MEDICAL_GREEN

/datum/id_trim/job/paramedic
	department_color = COLOR_MEDICAL_GREEN
	subdepartment_color = COLOR_MEDICAL_GREEN

/datum/id_trim/job/psychologist
	department_color = COLOR_MEDICAL_GREEN
	subdepartment_color = COLOR_SERVICE_PURPLE


/* SECURITY */
/datum/id_trim/job/head_of_security
	assignment = JOB_CHIEF_GUARD
	intern_alt_name = "Security Chief-in-Training"
	honorifics = list("Chief Guard", "Chief")
	honorific_positions = HONORIFIC_POSITION_FIRST | HONORIFIC_POSITION_LAST | HONORIFIC_POSITION_FIRST_FULL | HONORIFIC_POSITION_NONE

/datum/id_trim/job/warden
	assignment = JOB_DISPATCHER
	honorifics = list("Dispatcher", "Guard")
	honorific_positions = HONORIFIC_POSITION_FIRST | HONORIFIC_POSITION_LAST | HONORIFIC_POSITION_FIRST_FULL | HONORIFIC_POSITION_NONE

/datum/id_trim/job/security_officer
	assignment = JOB_SECURITY_GUARD
	honorifics = list("Volunteer Guard", "Guard") // Letting you opt to really drive home the volunteer bit.
	honorific_positions = HONORIFIC_POSITION_FIRST | HONORIFIC_POSITION_LAST | HONORIFIC_POSITION_FIRST_FULL | HONORIFIC_POSITION_NONE

/datum/id_trim/job/security_officer/supply
	assignment = JOB_SECURITY_GUARD_SUPPLY

/datum/id_trim/job/security_officer/engineering
	assignment = JOB_SECURITY_GUARD_ENGINEERING

/datum/id_trim/job/security_officer/medical
	assignment = JOB_SECURITY_GUARD_MEDICAL
	subdepartment_color = COLOR_MEDICAL_GREEN

/datum/id_trim/job/security_officer/science
	assignment = JOB_SECURITY_GUARD_SCIENCE
	subdepartment_color = COLOR_SCIENCE_BLUE


/* SCIENCE */
/datum/id_trim/job/geneticist
	department_color = COLOR_SCIENCE_BLUE
	subdepartment_color = COLOR_SCIENCE_BLUE

/datum/id_trim/job/roboticist
	department_color = COLOR_SCIENCE_BLUE
	subdepartment_color = COLOR_SCIENCE_BLUE

/datum/id_trim/job/scientist
	department_color = COLOR_SCIENCE_BLUE
	subdepartment_color = COLOR_SCIENCE_BLUE


/* SERVICE */
/datum/id_trim/job/bartender
	department_color = COLOR_SERVICE_PURPLE
	subdepartment_color = COLOR_SERVICE_PURPLE

/datum/id_trim/job/pun_pun
	department_color = COLOR_SERVICE_PURPLE
	subdepartment_color = COLOR_SERVICE_PURPLE

/datum/id_trim/job/botanist
	department_color = COLOR_SERVICE_PURPLE
	subdepartment_color = COLOR_SERVICE_PURPLE

/datum/id_trim/job/chaplain
	department_color = COLOR_SERVICE_PURPLE
	subdepartment_color = COLOR_SERVICE_PURPLE

/datum/id_trim/job/cook
	department_color = COLOR_SERVICE_PURPLE
	subdepartment_color = COLOR_SERVICE_PURPLE

/datum/id_trim/job/curator
	department_color = COLOR_SERVICE_PURPLE
	subdepartment_color = COLOR_SERVICE_PURPLE

/datum/id_trim/job/janitor
	department_color = COLOR_SERVICE_PURPLE
	subdepartment_color = COLOR_SERVICE_PURPLE

/datum/id_trim/job/lawyer
	assignment = JOB_SOPHONT_RESOURCES_AGENT
	department_color = COLOR_SERVICE_PURPLE
	honorifics = list(
		", SR.",
		", IA.",
		", Liaison",
		", Negotiator",
	)
	honorific_positions = HONORIFIC_POSITION_LAST_FULL | HONORIFIC_POSITION_NONE


/* CARGO */
/datum/id_trim/job/shaft_miner
	subdepartment_color = COLOR_SCIENCE_BLUE


/* RUINS */
/datum/id_trim/away/cat_surgeon
	subdepartment_color = COLOR_SERVICE_PURPLE

/datum/id_trim/space_bartender
	department_color = COLOR_SERVICE_PURPLE
	subdepartment_color = COLOR_SERVICE_PURPLE

/datum/id_trim/away/hilbert
	subdepartment_color = COLOR_SCIENCE_BLUE


/* GHOSTROLES */

/datum/id_trim/job/visiting_doctor
	department_color = COLOR_MEDICAL_GREEN
	subdepartment_color = COLOR_MEDICAL_GREEN

/datum/id_trim/job/visiting_scientist
	department_color = COLOR_SCIENCE_BLUE
	subdepartment_color = COLOR_SCIENCE_BLUE

/datum/id_trim/medibot
	department_color = COLOR_MEDICAL_GREEN
	subdepartment_color = COLOR_MEDICAL_GREEN
