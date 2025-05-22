
/datum/advclass/pilgrim/stonekeep/bard
	name = "Bard"
	tutorial = "Bards make up one of the largest populations of \
	registered adventurers in Enigma, mostly because they are \
	the last ones in a party to die. Their wish is to experience \
	the greatest adventures of the age and write amazing songs about them."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Dark Elf",
		"Aasimar",
		"Changeling",
		"Skylancer"
	)
	outfit = /datum/outfit/job/sk/pilgrim/bard
	category_tags = list(CTAG_PILGRIM)
	apprentice_name = "Aspiring Bard"

/datum/outfit/job/sk/pilgrim/bard/pre_equip(mob/living/carbon/human/H)
	..()
	H.adjust_skillrank(/datum/skill/combat/knives, pick(1,2), TRUE)
	H.adjust_skillrank(/datum/skill/combat/swords, pick(1,2), TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
	H.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/stealing, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/lockpicking, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/music, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/mockery)
	head = /obj/item/clothing/head/bardhat
	shoes = /obj/item/clothing/shoes/boots
	pants = /obj/item/clothing/pants/tights/random
	armor = pick(/obj/item/clothing/armor/leather/vest/random, /obj/item/clothing/armor/leather/vest/bard)
	shirt = pick(/obj/item/clothing/shirt/tunic/black, /obj/item/clothing/shirt/tunic/blue)
	if(prob(30))
		gloves = /obj/item/clothing/gloves/fingerless
	belt = /obj/item/storage/belt/leather
	cloak = /obj/item/clothing/cloak/half/random
	backl = /obj/item/storage/backpack/satchel
	beltr = /obj/item/weapon/sword/short
	beltl = /obj/item/storage/belt/pouch/coins/poor
	backpack_contents = list(/obj/item/flint)
	if(H.dna?.species?.id == "abyssariad"|| H.dna.species.name == "Undine")
		cloak = /obj/item/clothing/cloak/raincloak/guardiancloak/red
		armor = /obj/item/clothing/armor/leather/vest/kaizoku
		shoes = /obj/item/clothing/shoes/shortboots/cloudhead
		head = /obj/item/clothing/head/bardhat/bloodhunter
		beltr = /obj/item/weapon/knife/kaiken
		shirt = /obj/item/clothing/shirt/looseshirt
		gloves = /obj/item/clothing/gloves/fingerless/yugake
	var/instruments = list(
		"Harp" = /obj/item/instrument/harp,
		"Lute" = /obj/item/instrument/lute,
		"Accordion" = /obj/item/instrument/accord,
		"Guitar" = /obj/item/instrument/guitar,
		"Flute" = /obj/item/instrument/flute,
		"Drum" = /obj/item/instrument/drum,
		"Hurdy-Gurdy" = /obj/item/instrument/hurdygurdy,
		"Viola" = /obj/item/instrument/viola,
		"Shamisen" = /obj/item/instrument/shamisen )
	var/instrument_choice = input("Choose your instrument.", "XYLIX") as anything in instruments
	H.set_blindness(0)
	if(instrument_choice && instruments[instrument_choice])
		backr = instruments[instrument_choice]
	else
		backr = /obj/item/instrument/lute
	if(H.dna?.species?.id == "dwarf")
		H.cmode_music = 'sound/music/cmode/combat_dwarf.ogg'
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_BARDIC_TRAINING, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_GOODLOVER, TRAIT_GENERIC)
	H.change_stat("perception", 1)
	H.change_stat("speed", 2)
	H.change_stat("strength", -1)

