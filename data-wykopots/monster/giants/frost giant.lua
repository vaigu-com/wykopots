local mType = Game.createMonsterType("Frost Giant")
local monster = {}

monster.description = "a frost giant"
monster.experience = 150
monster.outfit = {
	lookType = 257,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 324
monster.Bestiary = {
	class = "Giant",
	race = BESTY_RACE_GIANT,
	toKill = 500,
	FirstUnlock = 25,
	SecondUnlock = 250,
	CharmsPoints = 15,
	Stars = 2,
	Occurrence = 0,
	Locations = "Tyrsung (in the Jotunar mountain), Formorgar Glacier (single spawn), \z
		Mammoth Shearing Factory, Chyllfroest."
		}
		
monster.health = 270
monster.maxHealth = 270
monster.race = "blood"
monster.corpse = 7330
monster.speed = 95
monster.manaCost = 490

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	damage = 30,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Hmm Humansoup", yell = false},
	{text = "Stand still ya tasy snack!", yell = false},
	{text = "Joh Thun!", yell = false},
	{text = "Brore Smode!", yell = false},
	{text = "Horre Sjan Flan!", yell = false},
	{text = "Forle Bramma!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 82000, maxCount = 40},
	{id = 3577, chance = 4970, maxCount = 2},
	{id = 3294, chance = 8140},
	{id = 7441, chance = 2180},
	{id = 3413, chance = 1350},
	{id = 3269, chance = 630},
	{id = 7460, chance = 250},
	{id = 3384, chance = 180},
	{id = 266, chance = 819},
	{id = 7290, chance = 60},
	{id = 3093, chance = 130},
	{id = 9658, chance = 5000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 45, attack = 40},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -90, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false}
}

monster.defenses = {
	defense = 22,
	armor = 22,
	{name ="speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
