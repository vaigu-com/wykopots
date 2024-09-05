local mType = Game.createMonsterType("Pirate Cutthroat Raid")
local monster = {}

monster.name = "Pirate Cutthroat"
monster.description = "a pirate cutthroat"
monster.experience = 175
monster.outfit = {
	lookType = 96,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 248
monster.Bestiary = {
	class = "Human",
	race = BESTY_RACE_HUMAN,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Nargor, Tyrsung (on the ship), Yalahar, Krailos Steppe.",
}

monster.health = 325
monster.maxHealth = 325
monster.race = "blood"
monster.corpse = 18198
monster.speed = 107
monster.manaCost = 495

monster.changeTarget = {
	interval = 4000,
	chance = 15,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Give up!", yell = false },
	{ text = "Hiyaa!", yell = false },
	{ text = "Plundeeeeer!", yell = false },
}

monster.loot = {
	{ name = "silver raid token", chance = 600 },
	{ name = "gold coin", chance = 78000, maxCount = 50 },
	{ id = 3377, chance = 3000 },
	{ id = 3409, chance = 2800 },
	{ id = 6126, chance = 500 },
	{ id = 6097, chance = 550 },
	{ id = 6098, chance = 450 },
	{ id = 5792, chance = 110 },
	{ id = 5918, chance = 980 },
	{ id = 5552, chance = 90 },
	{ id = 5710, chance = 2000 },
	{ id = 5090, chance = 1000 },
	{ id = 5927, chance = 1000 },
	{ id = 10302, chance = 10120 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 75, attack = 40, condition = { type = CONDITION_POISON, totalDamage = 10, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -95, range = 7, radius = 1, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_EXPLOSIONAREA, target = true },
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 10 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -5 },
	{ type = COMBAT_HOLYDAMAGE, percent = 20 },
	{ type = COMBAT_DEATHDAMAGE, percent = -5 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
