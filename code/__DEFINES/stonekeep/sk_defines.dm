#define ALL_STONEKEEP_PLAYER_RACES		list("Humen", "Half-Elf", "Dark Elf", "Elf", "Dwarf","Tiefling", "Aasimar", "Half-orc", "Changeling","Skylancer","Ogrun","Undine")	// the normal lineup sans Rakshari who are not generally available
#define ALL_STONEKEEP_RACES_NORMALSPRITE		list("Humen", "Half-Elf", "Dark Elf", "Elf", "Tiefling", "Aasimar", "Changeling","Skylancer","Ogrun", "Orc", "orc")	// for clothes without dwarf sprites
#define ALL_RACES_FOR_REAL			list("human", "rakshari", "dwarf", "elf", "tiefling", "aasimar", "halforc", "orc", "zizombie", "kobold",  "abyssariad", "harpy")
#define ALL_RACES_WITH_FACIALHAIR		list("human", "rakshari", "dwarf", "elf", "tiefling", "halforc", "orc", "zizombie", "kobold",  "abyssariad")
#define ALL_RACES_BY_NAME		list("Humen", "Half-Elf", "Dark Elf", "Elf", "Dwarf","Tiefling", "Aasimar", "Half-orc", "Changeling","Skylancer","Ogrun","Undine", "Rakshari")
#define NORMAL_TOWNER_RACES 	list("Humen","Elf","Half-Elf","Dwarf")
#define PEASANT_RACES 			list("Humen","Aasimar","Half-Elf","Dwarf")

#define FACTION_BURAKUMIN "Burakumin"

#define CTAG_SKMERCENARY 	"CAT_SKMERCENART"  		// Mercenary classes
#define CTAG_SKGARRISON		"CAT_SKGARRISON"

#define isgoblin(A) (is_species(A, /datum/species/goblin))

#define VALID_HUNTING_AREAS list(\
	/area/rogue/outdoors/bog,/area/rogue/outdoors/woods )

/proc/is_valid_hunting_area(area/A)
	for(var/i in VALID_HUNTING_AREAS)
		if(istype(A, i))
			return TRUE
	return FALSE

GLOBAL_LIST_INIT(outlaw_quotes, world.file2list("strings/rt/outlawlines.txt"))
GLOBAL_LIST_INIT(outlaw_aggro, world.file2list("strings/rt/outlawaggrolines.txt"))

GLOBAL_LIST_EMPTY(bogroad_starts)
GLOBAL_LIST_EMPTY(forestroad_starts)
GLOBAL_LIST_EMPTY(mountainroad_starts)
GLOBAL_LIST_EMPTY(bogevil_starts)
GLOBAL_LIST_EMPTY(forestevil_starts)
GLOBAL_LIST_EMPTY(mountainevil_starts)
GLOBAL_LIST_EMPTY(zizo_starts)

#define CTAG_NITEMAIDEN		"CAT_NITEMAIDEN" 		// 2 choices, bathhouse only or inn focus.
#define CTAG_SKHAND			"CAT_SKHAND"
#define CTAG_SKWOODSMAN		"CAT_SKWOODSMAN"
#define CTAG_OLDVETERAN		"CAT_OLDVETERAN"

/mob/living/carbon/human
	// Another Boolean. But this time entirely for Kaizoku content to define those whom Abyssariads considers 'impure', and for champions.
	var/burakumin = FALSE
	var/champion = FALSE

	//a var used for a rather niched power.
	var/purification = FALSE

	//These vars are used for Changeling special quirks.
	var/mutable_appearance/eldritch_maw
	var/mob/living/carbon/human/var/list/transformed = null
	var/true_gender_string // <- this stores "male" or "female" for full safety
	var/list/true_original_form = null
	var/original_gender_mimicry = null
	var/overlay_eldritchjaw = 0

	//This var is used for Skylancer special quirk.
	var/flight_processing = FALSE

	//Vars for Abyssariad Raiders NPCs, specifically for special attacks.
	var/special_timer = 0
	var/special_cooldown = 20 // 20 seconds
	var/shuriken_count = 0 //used only for NPC stuff.

	var/aggressive //Outdated NPC stuff. Remove when the Raiders are updated.
	var/next_reposition = 0 //Outdated NPC stuff. Remove when the Raiders are updated.

#define SK_LORD			(1<<0)
#define SK_CONSORT		(1<<1)
#define SK_HAND			(1<<2)
#define SK_STEWARD		(1<<3)
#define SK_WIZARD		(1<<4)
#define SK_ARCHIVIST	(1<<5)
#define SK_SERVANT		(1<<6)
#define SK_JESTER		(1<<7)

#define SK_SHERIFF		(1<<0)
#define SK_GUARD		(1<<1)
#define SK_SQUIRE		(1<<2)

#define SK_PRIEST		(1<<0)
#define SK_ACOLYTE		(1<<1)
#define SK_GRAVETENDER	(1<<2)
#define SK_TEMPLAR		(1<<3)
#define SK_INQUISITOR	(1<<4)
#define SK_ADEPT		(1<<5)

#define SK_MERCHANT		(1<<0)
#define SK_INNKEEP		(1<<1)
#define SK_GUILDMASTER	(1<<2)
#define SK_FELDSHER		(1<<3)
#define SK_BLACKSMITH	(1<<4)
#define SK_MASON		(1<<5)
#define SK_NITEMAN		(1<<6)

#define SK_ELDER		(1<<0)
#define SK_SOILSON		(1<<1)
#define SK_COOK			(1<<2)
#define SK_WEAVER		(1<<3)
#define SK_WOODSMAN		(1<<4)
#define SK_STEVEDORE	(1<<5)
#define SK_BATHMAID		(1<<6)
#define SK_BEGGAR		(1<<7)

#define SK_MERCENARY	(1<<0)
#define SK_ADVENTURER	(1<<1)
#define SK_PILGRIM		(1<<2)
#define SK_BANDIT		(1<<3)

#define SK_OUTSIDERS    (1<<7)

#define LORD_ORDER			1
#define CONSORT_ORDER		2
#define HAND_ORDER			3
#define STEWARD_ORDER		4
#define COURTWIZARD_ORDER	6
#define ARCHIVIST_ORDER		7
#define SERVANT_ORDER		8
#define JESTER_ORDER		9

#define SHERIFF_ORDER		11
#define GARRISON_ORDER		13
#define SQUIRE_ORDER		15

#define PRIEST_ORDER		21
#define ACOLYTE_ORDER		22
#define GRAVEKEEPER_ORDER	23
#define TEMPLAR_ORDER		24
#define INQUISITOR_ORDER	27
#define ADEPT_ORDER			28

#define MERCHANT_ORDER		31
#define GUILDMASTER_ORDER	32
#define INNKEEP_ORDER		33
#define FELDSHER_ORDER		34
#define BLACKSMITH_ORDER	35
#define MASON_ORDER			36
#define NITEMAN_ORDER		38

#define ELDER_ORDER			40
#define SOILSON_ORDER		43
#define COOK_ORDER			44
#define WEAVER_ORDER		45
#define WOODSMAN_ORDER		46
#define STEVEDORE_ORDER		47
#define BATHMAID_ORDER		48
#define BEGGAR_ORDER		49

#define MERCENARY_ORDER		51
#define PILGRIM_ORDER		53
#define ADVENTURER_ORDER	55


#define GATOR_HEALTH 220


//Kaizoku Unique Roles

#define SK_MASTERSOHEI		(1<<0)
#define SK_SOHEI			(1<<1)

#define MASTERSOHEI_ORDER	25
#define SOHEI_ORDER			29
