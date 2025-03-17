/datum/rimworld_recipe
	/// The name of the recipe to show
	var/recipe_name = "generic debug recipe"
	/// The items required to create the resulting item
	var/list/recipe_requirements
	/// What the end result of this recipe should be
	var/resulting_item = /obj/item/forging
	/// How long does it normally take to make this?
	var/crafting_time = 10 SECONDS
	/// What skill is relevant to the creation of this item?
	var/relevant_skill = /datum/skill/athletics
	/// How much experience in our relevant skill do we give upon completion?
	var/relevant_skill_reward = 30

/datum/rimworld_recipe/debug_tester
	recipe_name = "players giving their opinion on a map"
	recipe_requirements = list(
		/obj/item/stack/rimworld_logs = 2,
		/obj/item/aicard = 1,
	)
	resulting_item = /obj/item/toy/plush/whiny_plushie
	crafting_time = 10 SECONDS
	relevant_skill = /datum/skill/athletics
	relevant_skill_reward = 100
