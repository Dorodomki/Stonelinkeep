/datum/job/stonekeep/woodsman
	title = "Woodsman"
	tutorial = "Living on the outskirts of civliziation, you got roots in the local community, but spend most of your time alone in the forest."
	allowed_sexes = list(MALE,FEMALE)
	flag = SK_WOODSMAN
	department_flag = PEASANTS
	allowed_races = RACES_PLAYER_NONDISCRIMINATED
	outfit = /datum/outfit/job/stonekeep/woodsman
	min_pq = -25
	give_bank_account = 15
	advclass_cat_rolls = list(CTAG_SKWOODSMAN = 20)
	display_order = WOODSMAN_ORDER
	total_positions = 3
	spawn_positions = 3
	apprentice_name = "Forager"
	cmode_music = 'sound/music/cmode/combat_guard.ogg'

/datum/outfit/job/stonekeep/woodsman/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/pants/tights/provisoner
	shirt = /obj/item/clothing/shirt/shortshirt/provisoner
	neck = /obj/item/storage/belt/pouch/coins/poor
	backr = /obj/item/storage/backpack/satchel
	belt = /obj/item/storage/belt/leather
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/tanning, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/bows, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/labor/butchering, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/labor/lumberjacking, 1, TRUE)
		H.change_stat("endurance", 1)
		H.change_stat("perception", 3)
		if(H.age == AGE_OLD)
			H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE)
			H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)


/datum/advclass/sk/woodsman/hunter
	name = "Hunter"
	tutorial = "Harvesting pelts and meat from the animals of the wild provide you with what you need, and enough to barter to town-dwellers for things you can´t make yourself."
	outfit = /datum/outfit/job/stonekeep/woodsman_hunter
	category_tags = list(CTAG_SKWOODSMAN)

/datum/outfit/job/stonekeep/woodsman_hunter/pre_equip(mob/living/carbon/human/H)
	..()
	if(prob(50))
		head = /obj/item/clothing/head/archercap
	cloak = /obj/item/clothing/cloak/raincloak/woodsman
	armor = /obj/item/clothing/armor/leather/hide
	backl= /obj/item/gun/ballistic/revolver/grenadelauncher/bow
	beltr = /obj/item/ammo_holder/quiver/arrows
	shoes = /obj/item/clothing/shoes/boots/leather
	beltl = /obj/item/storage/meatbag
	backpack_contents = list(/obj/item/restraints/legcuffs/beartrap = 1, /obj/item/flashlight/flare/torch = 1, /obj/item/weapon/knife/hunting = 1, /obj/item/key/woodsman = 1, /obj/item/bait = 2)
	H.mind?.adjust_skillrank(/datum/skill/craft/traps, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/labor/taming, 3, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/craft/tanning, 1, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/combat/polearms, pick(1,2), TRUE)//boar hunting

/datum/advclass/sk/woodsman/lumberjack
	name = "Lumberjack"
	tutorial = "Rugged, hard-working, rustic. The trees themselves provide you with what you need to survive, and perhaps prosper."
	outfit = /datum/outfit/job/stonekeep/woodsman_lumberjack
	category_tags = list(CTAG_SKWOODSMAN)

/datum/outfit/job/stonekeep/woodsman_lumberjack/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/hatfur
	wrists = /obj/item/clothing/wrists/bracers/leather
	armor = /obj/item/clothing/armor/leather/hide
	beltl = /obj/item/weapon/knife/villager
	backl = /obj/item/weapon/polearm/halberd/bardiche/woodcutter
	shoes = /obj/item/clothing/shoes/shortboots
	backpack_contents = list(/obj/item/needle/thorn = 1, /obj/item/natural/cloth = 1, /obj/item/flashlight/flare/torch = 1, /obj/item/key/woodsman = 1)
	H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/labor/lumberjacking, 2, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 2, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/combat/polearms, pick(1,2), TRUE)//boar hunting
