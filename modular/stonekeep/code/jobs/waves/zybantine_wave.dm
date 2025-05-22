/datum/migrant_role/sk/zybantine/emir
	name = "Zybantine Emir"
	greet_text = "An Emir hailing from the Zybantu Ziggurat, here on business for the Mercator's Guild to the Isle of the Enigma."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Humen",
		"Elf",
		"Tiefling",
		"Dark Elf",
		"Aasimar",
	)
	outfit = /datum/outfit/job/sk_migration/zyb/emir
	grant_lit_torch = TRUE

/datum/migrant_role/sk/zybantine/after_spawn(mob/living/carbon/human/character)
	. = ..()
	character.forceMove(pick(GLOB.forestroad_starts))

/datum/outfit/job/sk_migration/zyb/emir/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = /obj/item/clothing/shoes/shalal
	gloves = /obj/item/clothing/gloves/leather
	head = /obj/item/clothing/head/crown/circlet
	cloak = /obj/item/clothing/cloak/raincloak/purple
	armor = /obj/item/clothing/armor/gambeson/arming
	belt = /obj/item/storage/belt/leather/shalal
	beltl = /obj/item/weapon/sword/sabre/shalal
	beltr = /obj/item/flashlight/flare/torch/lantern
	backr = /obj/item/storage/backpack/satchel
	ring = /obj/item/clothing/ring/gold/guild_mercator
	shirt = /obj/item/clothing/shirt/tunic/purple
	pants = /obj/item/clothing/pants/trou/leather
	neck = /obj/item/clothing/neck/shalal/emir
	backpack_contents = list(/obj/item/storage/belt/pouch/coins/veryrich = 1, /obj/item/reagent_containers/glass/bottle/wine = 1)
	if(H.gender == FEMALE)
		armor = /obj/item/clothing/armor/leather/jacket/silk_coat
		shirt = /obj/item/clothing/shirt/undershirt/lowcut
		head = /obj/item/clothing/head/crown/nyle

	H.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/riding, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/music, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	var/prev_real_name = H.real_name
	var/prev_name = H.name
	var/honorary = "Emir"
	if(H.gender == FEMALE)
		honorary = "Amirah"
	H.real_name = "[honorary] [prev_real_name]"
	H.name = "[honorary] [prev_name]"
	if(!H.has_language(/datum/language/zybantine))
		H.grant_language(/datum/language/zybantine)
		to_chat(H, "<span class='info'>I can speak Zybean with ,z before my speech.</span>")
	H.change_stat(STATKEY_INT, 1)
	H.change_stat(STATKEY_END, 2)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
	H.cmode_music = 'modular/stonekeep/sound/cmode/combat_desertrider.ogg'


/datum/migrant_role/sk/zybantine/janissary
	name = "Zybantine Janissary"
	greet_text = "You are a castrated slave soldier from the Ziggurat sent as an escort to the emirs on a foreign land, do not fail them."
	allowed_sexes = list(MALE)
	allowed_races = list("Humen",
		"Dwarf",
		"Half-Elf",
		"Tiefling",
		"Dark Elf"
	)
	outfit = /datum/outfit/job/sk_migration/zyb/janissary
	grant_lit_torch = TRUE

/datum/outfit/job/sk_migration/zyb/janissary/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = /obj/item/clothing/shoes/shalal
	head = /obj/item/clothing/head/helmet/sallet/zybantine
	gloves = /obj/item/clothing/gloves/angle
	belt = /obj/item/storage/belt/leather/shalal
	armor = /obj/item/clothing/armor/brigandine/coatplates
	beltr = /obj/item/weapon/sword/long/rider
	beltl= /obj/item/flashlight/flare/torch/lantern
	shirt = /obj/item/clothing/shirt/undershirt/black
	pants = /obj/item/clothing/pants/tights/red
	neck = /obj/item/clothing/neck/keffiyeh/red
	backl = /obj/item/storage/backpack/satchel
	backpack_contents = list(/obj/item/storage/belt/pouch/coins/poor)
	if(!H.has_language(/datum/language/zybantine))
		H.grant_language(/datum/language/zybantine)
		to_chat(H, "<span class='info'>I can speak Zybean with ,z before my speech.</span>")
	if(H.mind)
		H.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
		H.adjust_skillrank(/datum/skill/misc/lockpicking, 1, TRUE)
		H.adjust_skillrank(/datum/skill/combat/axesmaces, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
		H.adjust_skillrank(/datum/skill/combat/whipsflails, 1, TRUE)
		H.adjust_skillrank(/datum/skill/combat/shields, pick(0,1,1), TRUE)
		H.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.change_stat(STATKEY_STR, 1)
		H.change_stat(STATKEY_END, 2)
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_LIMPDICK, TRAIT_GENERIC)
	H.cmode_music = 'modular/stonekeep/sound/cmode/combat_desertrider.ogg'

/datum/migrant_role/sk/zybantine/qatil
	name = "Qatil"
	greet_text = "You are the Emir's confident and most loyal protector, you shan't let them die in these wretched lands."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Tiefling",
		"Dark Elf",
		"Rakshari"
	)
	outfit = /datum/outfit/job/sk_migration/zyb/qatil

/datum/outfit/job/sk_migration/zyb/qatil/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.adjust_skillrank(/datum/skill/combat/knives, 4, TRUE)
		H.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
		H.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
		H.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/sneaking, 4, TRUE)
		H.adjust_skillrank(/datum/skill/misc/stealing, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/lockpicking, 3, TRUE)
		H.adjust_skillrank(/datum/skill/craft/traps, 1, TRUE)
		H.change_stat(STATKEY_STR, 1)
		H.change_stat(STATKEY_SPD, 2)
		H.change_stat(STATKEY_END, 1)

	pants = /obj/item/clothing/pants/trou/leather
	beltr = /obj/item/weapon/knife/dagger/steel/special
	shoes = /obj/item/clothing/shoes/shalal
	gloves = /obj/item/clothing/gloves/angle
	belt = /obj/item/storage/belt/leather/shalal
	shirt = /obj/item/clothing/shirt/undershirt/red
	armor = /obj/item/clothing/armor/leather/splint
	backl = /obj/item/storage/backpack/satchel
	head = /obj/item/clothing/neck/keffiyeh/red
	backpack_contents = list(/obj/item/storage/belt/pouch/coins/poor, /obj/item/lockpick)
	if(!H.has_language(/datum/language/zybantine))
		H.grant_language(/datum/language/zybantine)
		to_chat(H, "<span class='info'>I can speak Zybean with ,z before my speech.</span>")

	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	H.cmode_music = 'modular/stonekeep/sound/cmode/combat_desertrider.ogg'


/datum/migrant_role/sk/zyb/slave	// ROGTODO gear and skills I guess.
	name = "Zybantine Slave"
	greet_text = "Chosen to come with the embassy, to do chores and keep the Emir comfortable, as well as possibly being a gift for the Monarch."
	allowed_races = ALL_STONEKEEP_PLAYER_RACES
	outfit = /datum/outfit/job/sk_migration/zyb/slave
	grant_lit_torch = TRUE

/datum/outfit/job/sk_migration/zyb/slave/pre_equip(mob/living/carbon/human/H)
	..()
	mask = /obj/item/clothing/mask/exoticsilkmask
	neck = /obj/item/clothing/neck/slave_collar
	belt =/obj/item/storage/belt/leather/exoticsilk
	shirt = /obj/item/clothing/shirt/exoticsilkbra
	if(H.mind)
		H.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
		H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
		H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.adjust_skillrank(/datum/skill/craft/cooking, 3, TRUE)
		H.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
		H.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/sewing, 3, TRUE)

		H.change_stat(STATKEY_STR, -4)
		H.change_stat(STATKEY_END, 2)
		ADD_TRAIT(H, TRAIT_GOODLOVER, TRAIT_GENERIC)
		H.cmode_music = 'modular/stonekeep/sound/cmode/combat_desertrider.ogg'


/datum/migrant_wave/zybantine_wave
	name = "The Ziggurat expedition"
	max_spawns = 1
	shared_wave_type = list(/datum/migrant_wave/grenzelhoft_visit,/datum/migrant_wave/zybantine_wave,/datum/migrant_wave/heartfelt)
	weight = 25
	downgrade_wave = /datum/migrant_wave/zybantine_wave_down_one
	roles = list(
		/datum/migrant_role/sk/zybantine/emir = 1,
		/datum/migrant_role/sk/zybantine/qatil = 1,
		/datum/migrant_role/sk/zybantine/janissary = 1
	)
	greet_text = "The Mercator Guild sent you, respected Zybantinian to seek favorable business proposals in these lands."

/datum/migrant_wave/zybantine_wave_down_one
	name = "The Ziggurat expedition"
	max_spawns = 1
	shared_wave_type = list(/datum/migrant_wave/grenzelhoft_visit,/datum/migrant_wave/zybantine_wave,/datum/migrant_wave/heartfelt)
	downgrade_wave = /datum/migrant_wave/zybantine_wave_down_two
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/sk/zybantine/emir = 1,
		/datum/migrant_role/sk/zybantine/qatil = 1,
		/datum/migrant_role/sk/zyb/slave = 1,
	)
	greet_text = "The Mercator Guild sent you, respected Zybantinian to seek favorable business proposals in these lands. Unfortunately most of your guards died on the way here."

/datum/migrant_wave/zybantine_wave_down_two
	name = "The Ziggurat expedition"
	max_spawns = 1
	shared_wave_type = list(/datum/migrant_wave/grenzelhoft_visit,/datum/migrant_wave/zybantine_wave,/datum/migrant_wave/heartfelt)
	downgrade_wave = /datum/migrant_wave/zybantine_wave_down_last
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/sk/zybantine/emir = 1,
		/datum/migrant_role/sk/zyb/slave = 1,
	)
	greet_text = "The Mercator Guild sent you, respected Zybantinian to seek favorable business proposals in these lands. Unfortunately your guards died on the way here."

/datum/migrant_wave/zybantine_wave_down_three
	name = "The Ziggurat expedition"
	max_spawns = 1
	shared_wave_type = list(/datum/migrant_wave/grenzelhoft_visit,/datum/migrant_wave/zybantine_wave,/datum/migrant_wave/heartfelt)
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/sk/zybantine/emir = 1,
		/datum/migrant_role/sk/zybantine/qatil = 1,
	)
	greet_text = "The Mercator Guild sent you, respected Zybantinian to seek favorable business proposals in these lands. Unfortunately your slaves died on the way here."


/datum/migrant_wave/zybantine_wave_down_last
	name = "The Ziggurat expedition"
	max_spawns = 1
	shared_wave_type = list(/datum/migrant_wave/grenzelhoft_visit,/datum/migrant_wave/zybantine_wave,/datum/migrant_wave/heartfelt)
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/sk/zybantine/emir = 1,
		/datum/migrant_role/sk/zybantine/janissary = 1,
	)
	greet_text = "The Mercator Guild sent you, respected Zybantinian to seek favorable business proposals in these lands. Unfortunately your slaves died on the way here."
