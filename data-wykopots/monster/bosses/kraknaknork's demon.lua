local mType = Game.createMonsterType("Kraknaknork'S Demon")
local monster = {}

monster.description = "Kraknaknork'S Demon"
monster.experience = 0
monster.outfit = {
	lookType = 12,
	lookHead = 117,
	lookBody = 58,
	lookLegs = 117,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 120
monster.maxHealth = 120
monster.race = "fire"
monster.corpse = 6068
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 15,
}

monster.strategiesTarget = {
	nearest = 60,
	health = 15,
	damage = 15,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "STEP A BIT CLOSER, RIGHT THERE, HAHAHA!", yell = true },
	{ text = "COME AND DIE!", yell = true },
	{ text = "ROOKIE FOR BREAKFAST", yell = true },
}

monster.loot = {
	{ name = "gold coin", chance = 48025, maxCount = 186 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 95, attack = 95 },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -10, maxDamage = -40, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = true },
}

monster.defenses = {
	defense = 5,
	armor = 10,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -5 },
	{ type = COMBAT_EARTHDAMAGE, percent = -8 },
	{ type = COMBAT_FIREDAMAGE, percent = 25 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
