local mType = Game.createMonsterType("Massacre")
local monster = {}

monster.description = "the massacre"
monster.experience = 9800
monster.outfit = {
	lookType = 244,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 30000
monster.maxHealth = 30000
monster.race = "blood"
monster.corpse = 6335
monster.speed = 195
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0,
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
	staticAttackChance = 90,
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
}

monster.loot = {
	{ id = 3116, chance = 5880 },
	{ id = 6499, chance = 100000 },
	{ id = 239, chance = 5880 },
	{ id = 238, chance = 5880 },
	{ id = 3031, chance = 94120, maxCount = 157 },
	{ id = 3422, chance = 500 },
	{ id = 3577, chance = 88240, maxCount = 9 },
	{ id = 5021, chance = 82350, maxCount = 7 },
	{ id = 3106, chance = 64710 },
	{ id = 3035, chance = 58820, maxCount = 6 },
	{ id = 6540, chance = 100000 },
	{ id = 5944, chance = 100000 },
	{ id = 3340, chance = 1000 },
	{ id = 7403, chance = 900 },
	{ id = 3360, chance = 3500 },
	{ id = 6104, chance = 1200 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 150, attack = 150 },
	{ name = "combat", interval = 2000, chance = 24, type = COMBAT_PHYSICALDAMAGE, minDamage = -280, maxDamage = -500, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false },
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{ name = "speed", interval = 2000, chance = 12, speedChange = 380, effect = CONST_ME_MAGIC_RED, target = false, duration = 4000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 100 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
