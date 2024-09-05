local mType = Game.createMonsterType("Grand Canon Dominus")
local monster = {}

monster.description = "a grand canon dominus"
monster.experience = 11000
monster.outfit = {
	lookType = 1071,
	lookHead = 57,
	lookBody = 75,
	lookLegs = 77,
	lookFeet = 86,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 15000
monster.maxHealth = 15000
monster.race = "undead"
monster.corpse = 28737
monster.speed = 155
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10,
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false,
}

monster.events = {
	"FalconBossDeath",
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
	{ name = "platinum coin", chance = 87000, maxCount = 5 },
	{ name = "small diamond", chance = 19600, maxCount = 2 },
	{ name = "small ruby", chance = 9000, maxCount = 3 },
	{ name = "small emerald", chance = 16000, maxCount = 3 },
	{ name = "small amethyst", chance = 23200, maxCount = 3 },
	{ name = "small enchanted amethyst", chance = 91000 },
	{ name = "small topaz", chance = 28600, maxCount = 2 },
	{ id = 282, chance = 1900 },
	{ name = "assassin star", chance = 25000, maxCount = 10 },
	{ name = "great mana potion", chance = 26800, maxCount = 3 },
	{ name = "great health potion", chance = 32000, maxCount = 3 },
	{ name = "onyx arrow", chance = 14500, maxCount = 14 },
	{ name = "damaged armor plates", chance = 2000 },
	{ name = "mastermind shield", chance = 700 },
	{ name = "golden armor", chance = 700 },
	{ name = "patch of fine cloth", chance = 3500 },
	{ id = 3039, chance = 2000 },
	{ name = "violet gem", chance = 1800 },
	{ name = "green gem", chance = 1800 },
	{ name = "falcon crest", chance = 2200 },
	{ name = "falcon plate", chance = 150 },
	{ name = "falcon wand", chance = 150 },
	{ name = "falcon bow", chance = 150 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -700 },
	{ name = "combat", interval = 2000, chance = 17, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -600, length = 4, spread = 0, effect = CONST_ME_ENERGYHIT, target = false },
	{ name = "combat", interval = 2000, chance = 17, type = COMBAT_HOLYDAMAGE, minDamage = -550, maxDamage = -750, radius = 3, effect = CONST_ME_HOLYAREA, target = false },
	{ name = "combat", interval = 2000, chance = 18, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -820, range = 5, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -900, maxDamage = -1050, range = 5, radius = 4, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = true },
}

monster.defenses = {
	defense = 50,
	armor = 82,
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 200, maxDamage = 550, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 20, speedChange = 220, effect = CONST_ME_POFF, target = false, duration = 5000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 50 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 50 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 55 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType.onThink = function(monster, interval) end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature) end

mType.onMove = function(monster, creature, fromPosition, toPosition) end

mType.onSay = function(monster, creature, type, message) end

mType:register(monster)
