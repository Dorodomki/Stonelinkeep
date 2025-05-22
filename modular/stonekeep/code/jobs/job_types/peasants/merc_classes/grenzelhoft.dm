/datum/advclass/mercenary/sk/grenzelhoft
	name = "Grenzelhoftter Mercenary"
	tutorial = "A mercenary from the Grenzelhoft Empire's Mercenary Guild. Their only care is coin, and the procurement of coin."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Humen",
		"Dwarf"
	)
	outfit = /datum/outfit/job/stonekeep/merc/grenzelhoft
	category_tags = list(CTAG_SKMERCENARY)
	maximum_possible_slots = 6

	cmode_music = 'modular/stonekeep/sound/cmode/combat_grenzelhoft.ogg'

/datum/outfit/job/stonekeep/merc/grenzelhoft/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)	//Big sword user so - really helps them.
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)

	if(H.gender == FEMALE)
		H.underwear = "Femleotard"
		H.underwear_color = CLOTHING_SOOT_BLACK
		H.update_body()

	pants = /obj/item/clothing/pants/grenzelpants
	shoes = /obj/item/clothing/shoes/grenzelhoft
	gloves = /obj/item/clothing/gloves/angle/grenzel
	belt = /obj/item/storage/belt/leather/mercenary
	shirt = /obj/item/clothing/shirt/grenzelhoft
	head = /obj/item/clothing/head/helmet/skullcap/grenzelhoft
	backr = /obj/item/storage/backpack/satchel
	backpack_contents = list(/obj/item/weapon/knife/dagger = 1, /obj/item/storage/belt/pouch/coins/poor = 1)

	if(!H.has_language(/datum/language/oldpsydonic))
		H.grant_language(/datum/language/oldpsydonic)
		to_chat(H, "<span class='info'>I can speak Old Psydonic with ,m before my speech.</span>")

	H.merctype = 6

	H.change_stat("strength", 1)
	H.change_stat("endurance", 1)
	H.change_stat("constitution", 1)
	H.change_stat("intelligence", -1)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)

	H.skin_tone = SKIN_COLOR_ICECAP

	H.adjust_blindness(-3)
	var/weapons = list("Grenzelhoffter Greatswordsman","Grenzelhoffter Footman", "Grenzelhoffter Archer")
	var/weapon_choice = input("CHOOSE YOUR WEAPONS.", "ROGVE UP") as anything in weapons
	H.set_blindness(0)
	switch(weapon_choice)
		if("Grenzelhoffter Greatswordsman") //light Armor and good starting weapon, offensive focus + skills
			r_hand = /obj/item/weapon/sword/long/greatsword/zwei
			neck = /obj/item/clothing/neck/highcollier/iron
			armor = /obj/item/clothing/armor/cuirass/grenzelhoft
			wrists = pick (/obj/item/clothing/wrists/bracers/leather, /obj/item/clothing/wrists/bracers/splint)
			H.mind?.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
			H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, pick(2,3), TRUE)
			H.mind?.adjust_skillrank(/datum/skill/combat/polearms, pick(2,3), TRUE)
			H.change_stat("strength", 1) // They need this to roll at least min STR for the Zwei.
		if("Grenzelhoffter Footman") //Mercenary footman with warhammer + shield, warhammer fantasy style yeahh
			backl= /obj/item/weapon/shield/tower/buckleriron
			r_hand = /obj/item/weapon/mace/warhammer
			neck =	/obj/item/clothing/neck/gorget
			armor = /obj/item/clothing/armor/cuirass/grenzelhoft
			wrists = /obj/item/clothing/wrists/bracers/leather
			H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 3, TRUE)
			H.mind?.adjust_skillrank(/datum/skill/combat/swords, pick(2,3), TRUE)
			H.mind?.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE)
		if("Grenzelhoffter Archer") //Mercenary boltslinger with different gear set + bow, really weak armor as exchange for ranged skills
			backl= /obj/item/gun/ballistic/revolver/grenadelauncher/bow
			r_hand = /obj/item/weapon/mace/cudgel/carpenter
			neck =	/obj/item/clothing/neck/coif/cloth
			armor = /obj/item/clothing/armor/leather/splint
			wrists = /obj/item/clothing/wrists/bracers/leather
			beltl = /obj/item/ammo_holder/quiver/arrows
			H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 3, TRUE)
			H.mind?.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
			H.mind?.adjust_skillrank(/datum/skill/combat/crossbows, pick(2,3), TRUE)
			H.change_stat("strength", -1)
			H.change_stat("perception", 1)
