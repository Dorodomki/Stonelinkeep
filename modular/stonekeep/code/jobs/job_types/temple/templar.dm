/datum/job/stonekeep/templar
	title = "Templar"
	flag = 	SK_TEMPLAR
	department_flag = CHURCHMEN
	tutorial = "Templars are warriors who have forsaken wealth and title in lieu of service to the church, due to either zealotry or a past shame. They guard the church and its priest, while keeping a watchful eye against heresy and nite-creechers. Within troubled dreams, they wonder if the blood they shed makes them holy or stained."

	allowed_races = list(
		"Humen",
		"Elf",
		"Dwarf",
		"Aasimar",
		"Half-Elf",
	)
	allowed_patrons = ALL_TEMPLAR_PATRONS
	outfit = /datum/outfit/job/stonekeep/templar
	total_positions = 2
	spawn_positions = 2
	display_order = TEMPLAR_ORDER
	give_bank_account = 10
	cmode_music = 'sound/music/cmode/church/combat_templar.ogg'

/datum/outfit/job/stonekeep/templar
	name = "Templar"
	jobtype = /datum/job/stonekeep/templar
	allowed_patrons = ALL_TEMPLAR_PATRONS

/datum/outfit/job/stonekeep/templar/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/helmet/heavy/bucket
	cloak = /obj/item/clothing/cloak/tabard/crusader/tief
	switch(H.patron?.type)
		if(/datum/patron/divine/astrata)
			neck = /obj/item/clothing/neck/psycross/silver/astrata
			head = /obj/item/clothing/head/helmet/heavy/bucket/templar
			cloak = /obj/item/clothing/cloak/stabard/templar/astrata
			backl = /obj/item/weapon/sword/long
			beltr = /obj/item/weapon/knife/dagger
		if(/datum/patron/divine/noc)
			neck = /obj/item/clothing/neck/psycross/noc
			head = /obj/item/clothing/head/helmet/heavy/bucket/templar/noc
			cloak = /obj/item/clothing/cloak/stabard/templar/noc
			backr = /obj/item/weapon/shield/tower/buckleriron
			beltr = /obj/item/weapon/sword/scimitar
		if(/datum/patron/divine/dendor)
			neck = /obj/item/clothing/neck/psycross/silver/dendor
			head = /obj/item/clothing/head/helmet/heavy/bucket/templar/dendor
			cloak = /obj/item/clothing/cloak/stabard/templar/dendor
			backl = /obj/item/weapon/sword/long
			beltr = /obj/item/weapon/knife/dagger
		if(/datum/patron/divine/necra)
			neck = /obj/item/clothing/neck/psycross/silver/necra
			head = /obj/item/clothing/head/helmet/heavy/bucket/templar/necra
			cloak = /obj/item/clothing/cloak/stabard/templar/necra
			backl = /obj/item/weapon/mace/warhammer
			backr = /obj/item/weapon/shield/tower/metal
		if(/datum/patron/divine/pestra)
			neck = /obj/item/clothing/neck/psycross/silver/pestra
			head = /obj/item/clothing/head/helmet/pestracage
			cloak = /obj/item/clothing/cloak/stabard/templar/pestra
			backr = /obj/item/weapon/shield/tower/metal
			beltr = /obj/item/weapon/sword/scimitar/messer
		if(/datum/patron/divine/eora)
			head = /obj/item/clothing/head/helmet/sallet/eoran
			wrists = /obj/item/clothing/neck/psycross/silver/eora
			neck = /obj/item/clothing/neck/chaincoif
			cloak = /obj/item/clothing/cloak/stabard/templar/eora
			backr = /obj/item/weapon/shield/tower/metal
			beltr = /obj/item/weapon/sword
			H.virginity = FALSE
		if(/datum/patron/divine/ravox)
			wrists = /obj/item/clothing/neck/psycross/silver/ravox
			head = /obj/item/clothing/head/helmet/heavy/bucket/templar/ravox
			cloak = /obj/item/clothing/cloak/stabard/templar/ravox
			backl = /obj/item/weapon/sword/long
			beltr = /obj/item/weapon/knife/dagger
		if(/datum/patron/divine/malum)
			wrists = /obj/item/clothing/neck/psycross/silver/malum
			head = /obj/item/clothing/head/helmet/heavy/bucket/templar/malum
			cloak = /obj/item/clothing/cloak/stabard/templar/malum
			backl = /obj/item/weapon/mace/warhammer/steel
			backr = /obj/item/weapon/shield/tower/metal
		if(/datum/patron/divine/abyssor)
			head = /obj/item/clothing/head/helmet/heavy/bucket/templar/abyssor
			wrists = /obj/item/clothing/neck/psycross/silver/abyssor
			backr = /obj/item/weapon/shield/wood/rattan
			r_hand = /obj/item/weapon/polearm/spear/bronze
			H.adjust_skillrank(/datum/skill/labor/fishing, 1, TRUE)


	armor = /obj/item/clothing/armor/chainmail/hauberk
	shirt = /obj/item/clothing/armor/gambeson/light
	pants = /obj/item/clothing/pants/tights/random
	shoes = /obj/item/clothing/shoes/boots

	belt = /obj/item/storage/belt/leather/black/church
	beltl = /obj/item/storage/belt/pouch/coins/poor
	gloves = /obj/item/clothing/gloves/chain

	H.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/axesmaces, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
	H.adjust_skillrank(/datum/skill/magic/holy, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.change_stat("strength", 2)
	H.change_stat("constitution", 2)
	H.change_stat("endurance", 2)
	H.change_stat("speed", -1)
	H.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
	switch(H.patron?.type)
		if(/datum/patron/divine/malum)
			H.adjust_skillrank(/datum/skill/combat/axesmaces, 1, TRUE)
		if(/datum/patron/divine/necra)
			H.adjust_skillrank(/datum/skill/combat/axesmaces, 1, TRUE)
		if(/datum/patron/divine/abyssor)
			H.adjust_skillrank(/datum/skill/combat/polearms, 4, TRUE)
		else
			H.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)

	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)

	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(H, H.patron)
	//Max devotion limit - Templars are stronger but cannot pray to gain more abilities beyond t1
	C.grant_spells_templar(H)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
	if(H.dna?.species)
		if(H.dna.species.id == "humen")
			H.dna.species.soundpack_m = new /datum/voicepack/male/knight()



