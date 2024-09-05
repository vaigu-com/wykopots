local mType = Game.createMonsterType("Lizard Dragon Priest")
local monster = {}

monster.description = "a lizard dragon priest"
monster.experience = 1320
monster.outfit = {
	lookType = 339,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 623
monster.Bestiary = {
	class = "Reptile",
	race = BESTY_RACE_REPTILE,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Zzaion, Zao Palace and its antechambers, Muggy Plains, Corruption Hole, Razachai, \z
		Temple of Equilibrium, Northern Zao Plantations."
		}
		
monster.health = 1450
monster.maxHealth = 1450
monster.race = "blood"
monster.corpse = 10363
monster.speed = 128
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 50,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summon = {
	maxSummons = 2,
	summons = {
		{ name = "Dragon Hatchling", chance = 20, interval = 2000, count = 2 }
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I ssssmell warm blood!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 9400, maxCount = 190},
	{id = 10328, chance = 1000},
	{name = "platinum coin", chance = 4000, maxCount = 2},
	{id = 3037, chance = 970},
	{id = 3033, chance = 5200, maxCount = 3},
	{id = 10444, chance = 10010},
	{id = 8043, chance = 690},
	{id = 237, chance = 12000},
	{id = 5876, chance = 1000},
	{id = 3065, chance = 940},
	{name = "great mana potion", chance = 7860},
	{id = 10439, chance = 330},
	{id = 3071, chance = 1500},
	{id = 5881, chance = 940},
	{id = 10386, chance = 490},
	{id = 3052, chance = 820}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 30, attack = 25},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -125, maxDamage = -190, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -320, maxDamage = -400, range = 7, radius = 1, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true}
}

monster.defenses = {
	defense = 22,
	armor = 22,
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_HEALING, minDamage = 200, maxDamage = 300, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="invisible", interval = 2000, chance = 10, duration = 4000, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 85},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
