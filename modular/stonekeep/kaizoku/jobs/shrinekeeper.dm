/datum/advclass/combat/sk/abyss/shrinekeepers //Low-abyssanctum role, but its efficiency requires champion-tier levels entirely because of unarmed skills. They are NOT champions.
	name = "Shrinekeeper"
	allowed_sexes = list(MALE, FEMALE)
	tutorial = "The shrines needs to be cared of, and there is no one most suitable for such duty than the purifier branch. \
	Those who knows the art of folding clothes while people are still in them. The Involuntary Yoga Practicers. Bokh and Bajutsu.\
	They perform rituals to submit demonic spirits just as much they submit mortals with martial arts."
	allowed_races = list(
	"Changeling",
	"Skylancer",
	"Ogrun",
	"Undine")
	outfit = /datum/outfit/job/sk/adventurer/abyss/shrinekeepers
	category_tags = list(CTAG_ADVENTURER)
	vampcompat = FALSE
	pickprob = 100

/datum/outfit/job/sk/adventurer/abyss/shrinekeepers
	allowed_patrons = list(/datum/patron/divine/abyssor)

/datum/outfit/job/sk/adventurer/abyss/shrinekeepers/pre_equip(mob/living/carbon/human/H)
	..()
	neck = /obj/item/clothing/neck/psycross/silver/abyssanctum
	shoes = /obj/item/clothing/shoes/sandals/geta
	wrists = /obj/item/clothing/wrists/bracers/leather
	belt = /obj/item/storage/belt/leather/rope
	beltr = /obj/item/storage/belt/pouch/coins/poor
	backl = /obj/item/storage/backpack/backpack
	backr = /obj/item/weapon/polearm/woodstaff/quarterstaff/bostaff

	var/yesno = list("I wander and meditate.","I build shrines for Abyssor.")
	var/monk = input("Wayfarer or Settler?", "Wayfarer or Settler?") as anything in yesno
	switch(monk) //Just clothes.
		if("I wander and meditate.")
			head = /obj/item/clothing/head/takuhatsugasa
			cloak = /obj/item/clothing/cloak/raincloak/mino
			shirt = /obj/item/clothing/shirt/rags/monkgarb/random
			H.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
			H.set_blindness(0)
		if("I build shrines for Abyssor.")
			armor = /obj/item/clothing/shirt/robe/shrinekeeper
			shirt = /obj/item/clothing/shirt/tunic/kimono/random
			wrists = /obj/item/clothing/wrists/shrinekeeper
			H.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE) //They lose 'Medicine' to have 'Carpetry', because Shrinekeepers... repair shrines.
			H.set_blindness(0)

	H.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 5, TRUE)
	H.adjust_skillrank(/datum/skill/combat/polearms, pick(1,1,2), TRUE) // Wood staff
	H.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, pick(2,2,3), TRUE)

	H.change_stat(STATKEY_STR, 3)
	H.change_stat(STATKEY_PER, -1)
	H.change_stat(STATKEY_CON, 2)
	H.change_stat(STATKEY_END, 2)
	H.change_stat(STATKEY_SPD, 1)

	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
