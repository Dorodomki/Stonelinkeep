//dagger and huntknife
/datum/advclass/combat/sk/treasurehunter
	name = "Treasure Hunter"
	tutorial = "Grave robbers sell themselves as treasure hunters, but be sure to wipe that \
	necrotic flesh off of that trinket you found."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = ALL_RACES_BY_NAME
	outfit = /datum/outfit/job/sk/adventurer/treasurehunter
	min_pq = 0
	category_tags = list(CTAG_ADVENTURER)
	cmode_music = 'sound/music/cmode/church/CombatGravekeeper.ogg'

/datum/outfit/job/sk/adventurer/treasurehunter/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/pants/tights/black
	armor = /obj/item/clothing/armor/leather/vest/black
	shirt = /obj/item/clothing/shirt/undershirt/black
	backl = /obj/item/storage/backpack/satchel
	belt = /obj/item/storage/belt/leather/rope
	backpack_contents = list(/obj/item/weapon/pick = 1, /obj/item/weapon/knife/hunting = 1, /obj/item/lockpickring/mundane)
	gloves = /obj/item/clothing/gloves/fingerless
	cloak = /obj/item/clothing/cloak/raincloak/mortus
	armor = /obj/item/clothing/armor/leather/basic
	shoes = /obj/item/clothing/shoes/boots/leather
	beltr = /obj/item/flashlight/flare/torch/lantern
	beltl = /obj/item/weapon/whip // You know why.
	backr = /obj/item/weapon/shovel
	head = /obj/item/clothing/head/helmet/leather/inquisitor
	neck = /obj/item/storage/belt/pouch
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/whipsflails, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 5, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/lockpicking, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.change_stat("strength", 1)
		H.change_stat("perception", 2)
		H.change_stat("intelligence", 1)
		H.change_stat("endurance", 2)
		H.change_stat("speed", 1)
		H.change_stat("fortune", -1) // Tradeoff for never being cursed when graverobbing.
		ADD_TRAIT(H, TRAIT_NOSTINK, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_GRAVEROBBER, TRAIT_GENERIC)
