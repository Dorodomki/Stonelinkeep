
/datum/map_adjustment/stonehamlet
	map_file_name = "stonehamlet.dmm"

	blacklist = list(
		/datum/job/tapster, //Unneeded.
		/datum/job/shophand, //Unneeded honestly.
		/datum/job/gaffer_assistant, //Never filled, prefer to just ditch it.

		/datum/job/archivist,
		/datum/job/consort,
		/datum/job/matron,
		/datum/job/apothecary,
		/datum/job/minor_noble,
		/datum/job/prince,

		/datum/job/scribe,
		/datum/job/artificer,
		/datum/job/courtphys,
		/datum/job/armorsmith,
		/datum/job/weaponsmith,
		/datum/job/tailor,

		/datum/job/innkeep_son,
		/datum/job/orphan,
		/datum/job/churchling,
		/datum/job/bapprentice,
		/datum/job/servant,

		/datum/job/royalknight,
		/datum/job/veteran,
		/datum/job/guardsman,
		/datum/job/forestwarden,
		/datum/job/forestguard,
		/datum/job/jailor,
		/datum/job/dungeoneer,
		/datum/job/gaffer,

		/datum/job/butcher,
		/datum/job/carpenter,
		/datum/job/town_elder,
		/datum/job/fisher,
		/datum/job/cheesemaker,
		/datum/job/archivist,
		/datum/job/bard,
		/datum/job/prisoner,
		/datum/job/hunter,
		/datum/job/miner,

		/datum/job/templar,
		/datum/job/undertaker,
		/datum/job/men_at_arms,

		/datum/job/wapprentice,
		/datum/job/inquisitor,
		/datum/job/monk,
		/datum/job/gatemaster,)




/*
/datum/map_adjustment/stonehamlet/job_change()
	. = ..()
	change_job_position(/datum/job/consort, 2)



	var/list/dorfkingdom = list(
		/datum/job/lord,
	)

/datum/map_adjustment/stonehamlet/job_change()
	. = ..()
	for(var/datum/job/dorf in dorfkingdom)
		var/datum/job/J = SSjob.GetJobType(dorf)
		J?.allowed_races = list(
			"Humen",
			"Dwarf"
		)

*/
