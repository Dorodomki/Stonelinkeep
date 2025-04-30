/datum/advclass/stonekeep/bandit/knave //sneaky bastards - ranged classes of two flavors archers and rogues
	name = "Knave"
	tutorial = "Not all followers of Matthios take by force. Thieves, poachers, and ne'er-do-wells of all forms steal from others from the shadows, long gone before their marks realize their misfortune."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Dark Elf"
	)
	outfit = /datum/outfit/job/stonekeep/bandit/knave
	category_tags = list(CTAG_BANDIT)
	cmode_music = 'modular/stonekeep/sound/cmode/combat_hellish.ogg'

/datum/outfit/job/stonekeep/bandit/knave/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/axesmaces, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 5, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/stealing, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/lockpicking, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/traps, 3, TRUE)
	//H.mind.adjust_skillrank(/datum/skill/misc/tracking, 3, TRUE)
	belt = /obj/item/storage/belt/leather
	pants = /obj/item/clothing/pants/trou/leather
	shirt = /obj/item/clothing/shirt/shortshirt/random
	shoes = /obj/item/clothing/shoes/boots
	mask = /obj/item/clothing/face/facemask
	var/armor2choose = pickweight(list("Vest" = 2, "Gambeson" = 1))
	switch(armor2choose)
		if("Vest")
			armor = /obj/item/clothing/armor/leather/vest/random
		if("Gambeson")
			armor = /obj/item/clothing/armor/gambeson/arming//this one is dark
	backr = /obj/item/storage/backpack/satchel
	H.change_stat(STATKEY_SPD, 2)
	H.change_stat(STATKEY_END, 1)
	H.change_stat(STATKEY_PER, 2)
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC) //gets dodge expert but no medium armor training - gotta stay light
	ADD_TRAIT(H, TRAIT_FORAGER, TRAIT_GENERIC)
	H.adjust_blindness(-3)
	var/weapons = list("Crossbow & Dagger", "Bow & Sword")
	var/weapon_choice = input("Choose your weapon.", "TAKE UP ARMS") as anything in weapons
	H.set_blindness(0)
	switch(weapon_choice)
		if("Crossbow & Dagger") //Rogue
			head = /obj/item/clothing/head/roguehood/random/heavy
			backl= /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow //we really need to make this not a grenade launcher subtype
			beltr = /obj/item/ammo_holder/quiver/bolts
			beltl = /obj/item/weapon/knife/dagger
			backpack_contents = list(/obj/item/needle/thorn = 1, /obj/item/natural/cloth = 1, /obj/item/lockpickring/mundane = 1) //rogue gets lockpicks
		if("Bow & Sword") //Poacher
			backl= /obj/item/gun/ballistic/revolver/grenadelauncher/bow
			beltr = /obj/item/weapon/sword/iron //iron sword like literally every adventurer gets
			head = /obj/item/clothing/head/helmet/leather/volfhelm //cool hat
			neck = /obj/item/clothing/neck/coif
			backpack_contents = list(/obj/item/needle/thorn = 1, /obj/item/natural/cloth = 1, /obj/item/restraints/legcuffs/beartrap = 2) //poacher gets mantraps
