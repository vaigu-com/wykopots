local mType = Game.createMonsterType("Witch")
local monster = {}

monster.description = "a witch"
monster.experience = 120
monster.outfit = {
	lookType = 54,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 54
monster.Bestiary = {
	class = "Human",
	race = BESTY_RACE_HUMAN,
	toKill = 500,
	FirstUnlock = 25,
	SecondUnlock = 250,
	CharmsPoints = 15,
	Stars = 2,
	Occurrence = 0,
	Locations = "Vandura, west of the Dwarf Mines in a small house, Amazon Tower north of Carlin, \z
		Triangle Tower, Temple of Xayepocax, Green Claw Swamp and Amazon Camp (Venore), \z
		Dark Cathedral (2 levels underground), Goroma Volcano (underground), west from Necromant House, \z
		Mammoth Shearing Factory, Trade Quarter in Yalahar, The Witches' Cliff (only accessible during a quest)."
		}
		
monster.health = 300
monster.maxHealth = 300
monster.race = "blood"
monster.corpse = 18257
monster.speed = 102
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 30,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = false,
	canWalkOnPoison = true,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Horax pokti!", yell = false},
	{text = "Herba budinia ex!", yell = false},
	{text = "Hihihihi!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 64000, maxCount = 40},
	{id = 3598, chance = 29750, maxCount = 8},
	{id = 3552, chance = 4950},
	{id = 12548, chance = 920},
	{id = 3293, chance = 3910},
	{id = 3565, chance = 4870},
	{id = 3562, chance = 2010},
	{id = 3012, chance = 10120},
	{id = 3736, chance = 8950},
	{id = 3083, chance = 1000},
	{id = 3290, chance = 500},
	{id = 3069, chance = 1140},
	{id = 9653, chance = 100},
	{id = 10294, chance = 10},
	{id = 9652, chance = 10000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -20},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -30, maxDamage = -55, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = false},
	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="outfit", interval = 2000, chance = 1, range = 5, target = true, duration = 2000, outfitMonster = "green frog"}
}

monster.defenses = {
	defense = 12,
	armor = 8
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
