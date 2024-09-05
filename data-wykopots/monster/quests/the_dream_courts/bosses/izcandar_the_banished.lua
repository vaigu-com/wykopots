local mType = Game.createMonsterType("Izcandar the Banished")
local monster = {}

monster.description = "Izcandar the Banished"
monster.experience = 55000
monster.outfit = {
	lookType = 1137,
	lookHead = 1,
	lookBody = 95,
	lookLegs = 76,
	lookFeet = 19,
	lookAddons = 2,
	lookMount = 0,
}

monster.health = 120000
monster.maxHealth = 120000
monster.race = "blood"
monster.corpse = 6068
monster.speed = 150
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 15,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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

monster.events = {
	"IzcandarTransform",
	"IzcandarDeath",
	"DreamBossDeath",
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
	{ name = "platinum coin", chance = 100000, maxCount = 10 },
	{ name = "crystal coin", chance = 23000 },
	{ name = "gold ingot", chance = 10000 },
	{ name = "energy bar", chance = 90000 },
	{ name = "pomegranate", chance = 20000 },
	{ id = 3039, chance = 28000 },
	{ name = "yellow gem", chance = 38000 },
	{ name = "green gem", chance = 19000, maxCount = 2 },
	{ name = "violet gem", chance = 5000 },
	{ name = "blue gem", chance = 24000 },
	{ name = "giant sapphire", chance = 4500 },
	{ name = "royal star", chance = 40000, minCount = 50, maxCount = 100 },
	{ name = "berserk potion", chance = 20000, maxCount = 10 },
	{ name = "bullseye potion", chance = 20000, maxCount = 10 },
	{ name = "mastermind potion", chance = 20000, maxCount = 10 },
	{ name = "supreme health potion", chance = 24000, maxCount = 10 },
	{ name = "ultimate mana potion", chance = 24000, maxCount = 20 },
	{ name = "gold token", chance = 40000, minCount = 2, maxCount = 2 },
	{ name = "silver token", chance = 90000, minCount = 2, maxCount = 3 },
	{ name = "huge chunk of crude iron", chance = 25100 },
	{ name = "mysterious remains", chance = 90000 },
	{ name = "piggy bank", chance = 90000 },
	{ name = "chaos mace", chance = 9000 },
	{ name = "skull staff", chance = 10000 },
	{ name = "winterblade", chance = 3000 },
	{ name = "summerblade", chance = 3000 },
	{ id = 3341, chance = 4000 }, -- arcane staff
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000 },
	{ name = "combat", interval = 2000, chance = 45, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -700, range = 7, shootEffect = CONST_ANI_WHIRLWINDSWORD, target = false },
	{ name = "berserk", interval = 2000, chance = 25, minDamage = -500, maxDamage = -1500, target = false },
}

monster.defenses = {
	defense = 60,
	armor = 60,
	{ name = "izcandar summon", interval = 4000, chance = 18, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
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

-- TRANSFORM
local izcandarTransform = CreatureEvent("IzcandarTransform")

local function izcandarSummerSpawn(creatureid)
	local creature = Creature(creatureid)
	if not creature then
		return false
	end
	local pos = creature:getPosition()
	local newForm = nil
	if (pos.x >= 6325 and pos.x <= 6332) and (pos.y >= 1949 and pos.y <= 1964) and pos.z == 14 then
		newForm = "izcandar champion of summer"
		if newForm then
			creature:setType(newForm)
		end
	elseif (pos.x >= 6333 and pos.x <= 6340) and (pos.y >= 1949 and pos.y <= 1964) and pos.z == 14 then
		newForm = "izcandar champion of winter"
		if newForm then
			creature:setType(newForm)
		end
	end
	Game.setStorageValue(GlobalStorage.IzcandarTransforming, 0)
	return true
end

function izcandarTransform.onThink(creature)
	if not creature or not creature:isMonster() then
		return false
	end
	local pos = creature:getPosition()
	if Game.getStorageValue(GlobalStorage.IzcandarTransforming) <= 0 then
		Game.setStorageValue(GlobalStorage.IzcandarTransforming, 1)
		addEvent(izcandarSummerSpawn, 6000, creature:getId())
	end
	return true
end
izcandarTransform:register()
