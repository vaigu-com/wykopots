local mType = Game.createMonsterType("Crustacea Gigantica")
local monster = {}

monster.description = "a crustacea gigantica"
monster.experience = 1800
monster.outfit = {
	lookType = 383,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 697
monster.Bestiary = {
	class = "Aquatic",
	race = BESTY_RACE_AQUATIC,
	toKill = 15,
	FirstUnlock = 5,
	SecondUnlock = 10,
	CharmsPoints = 50,
	Stars = 2,
	Occurrence = 3,
	Locations = "Calassa, Treasure Island , Seacrest Grounds. \z
		In the Seacrest Grounds the spawns are Varying Monster Spawns in which the common creature is an Abyssal Calamary. \z
		The chance to spawn a Crustacea Gigantica seems to be around 1%-2%."
		}
		
monster.health = 1600
monster.maxHealth = 1600
monster.race = "blood"
monster.corpse = 12344
monster.speed = 145
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 100,
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
	{text = "Chrchrchr", yell = true},
	{text = "Klonklonk", yell = true},
	{text = "Chrrrrr", yell = true}
}

monster.loot = {
	{name = "gold coin", chance = 100000, maxCount = 100},
	{name = "gold coin", chance = 100000, maxCount = 43},
	{id = 237, chance = 14285},
	{id = 12317, chance = 5000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -0, maxDamage = -150},
	{name ="ice strike", interval = 2000, chance = 20, minDamage = -0, maxDamage = -100, range = 5, target = true},
}

monster.defenses = {
	defense = 45,
	armor = 30,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 70, maxDamage = 200, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
