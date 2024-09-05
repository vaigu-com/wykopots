local mType = Game.createMonsterType("Fire Devil Static")
local monster = {}

monster.name = "Fire Devil"
monster.description = "a fire devil"
monster.experience = 145
monster.outfit = {
	lookType = 40,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 40
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 250,
	FirstUnlock = 10,
	SecondUnlock = 100,
	CharmsPoints = 15,
	Stars = 2,
	Occurrence = 0,
	Locations = "Desert Dungeon, Ancient Temple, Magician Tower, Shadow Tomb, Ghostlands, Goroma, \z
		Plains of Havoc at Ornamented Shield Quest, Spike Sword Quest."
		}
		
monster.health = 200
monster.maxHealth = 200
monster.race = "blood"
monster.corpse = 5985
monster.speed = 90
monster.manaCost = 530

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
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
	{text = "Hot, eh?", yell = false},
	{text = "Hell, oh hell!", yell = false}
}

monster.loot = {
	{id = 11513, chance = 19770},
	{id = 2920, chance = 10000},
	{id = 3147, chance = 10950},
	{id = 3471, chance = 1100},
	{id = 3307, chance = 3000},
	{id = 2920, chance = 1420, maxCount = 2},
	{id = 3275, chance = 1500},
	{id = 3033, chance = 320},
	{id = 3415, chance = 230},
	{id = 3069, chance = 510}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 10, attack = 35},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -60, maxDamage = -95, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -18, maxDamage = -50, range = 7, radius = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true}
}

monster.defenses = {
	defense = 15,
	armor = 13
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -20},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
