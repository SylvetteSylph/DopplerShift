
/datum/action/cooldown/spell/pointed/abyssal_gaze
	name = "Abyssal Gaze"
	desc = "This spell instills a deep terror in your target, temporarily chilling and blinding it."
	ranged_mousepointer = 'icons/effects/mouse_pointers/cult_target.dmi'
	background_icon_state = "bg_demon"
	overlay_icon_state = "bg_demon_border"

	button_icon = 'icons/mob/actions/actions_cult.dmi'
	button_icon_state = "abyssal_gaze"

	school = SCHOOL_EVOCATION
	cooldown_time = 75 SECONDS
	invocation_type = INVOCATION_NONE
	spell_requirements = NONE
	antimagic_flags = MAGIC_RESISTANCE|MAGIC_RESISTANCE_HOLY|MAGIC_RESISTANCE_MIND

	cast_range = 5
	active_msg = "You prepare to instill a deep terror in a target..."

	/// The duration of the blind on our target
	var/blind_duration = 4 SECONDS
	/// The amount of temperature we take from our target
	var/amount_to_cool = 200

/datum/action/cooldown/spell/pointed/abyssal_gaze/is_valid_target(atom/cast_on)
	return iscarbon(cast_on)

/datum/action/cooldown/spell/pointed/abyssal_gaze/cast(mob/living/carbon/cast_on)
	. = ..()
	if(cast_on.can_block_magic(antimagic_flags))
		to_chat(owner, span_warning("The spell had no effect!"))
		to_chat(cast_on, span_warning("You feel a freezing darkness closing in on you, but it rapidly dissipates."))
		return FALSE

	to_chat(cast_on, span_userdanger("A freezing darkness surrounds you..."))
	cast_on.playsound_local(get_turf(cast_on), 'sound/effects/hallucinations/i_see_you1.ogg', 50, 1)
	owner.playsound_local(get_turf(owner), 'sound/effects/ghost2.ogg', 50, 1)
	cast_on.adjust_temp_blindness(blind_duration)
	if(ishuman(cast_on))
		var/mob/living/carbon/human/human_cast_on = cast_on
		human_cast_on.adjust_coretemperature(-amount_to_cool)
	cast_on.adjust_bodytemperature(-amount_to_cool)
