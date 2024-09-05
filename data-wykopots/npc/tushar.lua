local internalNpcName = "Tushar"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 185
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 367,
	lookHead = 0,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
}

npcConfig.flags = { floorchange = 0 }

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{ text = "Zebrales sporo zelastwa? Smialo, pohandlujmy.." },
	{ text = "Skupie ekwipunek jaki zebrales w korzystnej cenie !" },
}

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Witam, skupuje wszelkiego rodzaju miecze, tarcze, zbroje i inne tego typu przedmioty. Wpisz {handel} aby zobaczyc moja oferte.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Narazie!")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Nie to nie!")
-- npcHandler:setMessage(MESSAGE_GREET_ENG, 'Hello, I buy various equipment like armors, weapons, and.. well ask about {trade} to see my whole offer.')
-- npcHandler:setMessage(MESSAGE_FAREWELL_ENG, 'Bye!')
-- npcHandler:setMessage(MESSAGE_WALKAWAY_ENG, 'See you!')
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcConfig.shop = {
	{ itemName = "battle hammer", clientId = 3305, buy = 350 },
	{ itemName = "leather boots", clientId = 3552, buy = 15 },
	{ itemName = "dwarven shield", clientId = 3425, buy = 500 },
	{ itemName = "plate armor", clientId = 3357, buy = 1200 },
	{ itemName = "two handed sword", clientId = 3265, buy = 950 },
	{ itemName = "steel helmet", clientId = 3351, buy = 580 },
	{ itemName = "chain bolter", clientId = 8022, sell = 40000 },
	{ itemName = "albino plate", clientId = 19358, sell = 1500 },
	{ itemName = "pharaoh banner", clientId = 12483, sell = 1000 },
	{ itemName = "summer dress", clientId = 8046, sell = 1500 },
	{ itemName = "witch hat", clientId = 9653, sell = 5000 },
	{ itemName = "pair of earmuffs", clientId = 7459, sell = 1500 },
	{ itemName = "wooden spellbook", clientId = 25699, sell = 12000 },
	{ itemName = "rift lance", clientId = 22727, sell = 30000 },
	{ itemName = "rift shield", clientId = 22726, sell = 50000 },
	{ itemName = "rift crossbow", clientId = 22867, sell = 45000 },
	{ itemName = "rift bow", clientId = 22866, sell = 45000 },
	{ itemName = "crimson sword", clientId = 7385, sell = 400 },
	{ itemName = "wood cape", clientId = 3575, sell = 5000 },
	{ itemName = "amazon helmet", clientId = 3393, sell = 25000 },
	{ itemName = "amazon armor", clientId = 3394, sell = 30000 },
	{ itemName = "amazon shield", clientId = 3437, sell = 25000 },
	{ itemName = "daramian mace", clientId = 3327, sell = 80 },
	{ itemName = "heavy trident", clientId = 12683, sell = 2000 },
	{ itemName = "warrior's axe", clientId = 14040, sell = 11000 },
	{ itemName = "coconut shoes", clientId = 9017, sell = 500 },
	{ itemName = "flower wreath", clientId = 9013, sell = 500 },
	{ itemName = "flower dress", clientId = 9015, sell = 1000 },
	{ itemName = "fur armor", clientId = 22085, sell = 5000 },
	{ itemName = "ogre klubba", clientId = 22171, sell = 2500 },
	{ itemName = "ogre choppa", clientId = 22172, sell = 1500 },
	{ itemName = "badger boots", clientId = 22086, sell = 7500 },
	{ itemName = "wereboar loincloth", clientId = 22087, sell = 1500 },
	{ itemName = "pair of iron fists", clientId = 17828, sell = 4000 },
	{ itemName = "helmet of the lost", clientId = 17852, sell = 2000 },
	{ itemName = "knight axe", clientId = 666, sell = 2000 },
	{ itemName = "knight axe", clientId = 785, sell = 2000 },
	{ itemName = "knight axe", clientId = 802, sell = 2000 },
	{ itemName = "knight axe", clientId = 687, sell = 2000 },
	{ itemName = "buckle", clientId = 17829, sell = 7000 },
	{ itemName = "cowtana", clientId = 21177, sell = 2500 },
	{ itemName = "oriental shoes", clientId = 21981, sell = 15000 },
	{ itemName = "spiky club", clientId = 17859, sell = 300 },
	{ itemName = "spike shield", clientId = 17810, sell = 250 },
	{ itemName = "ratana", clientId = 17812, sell = 500 },
	{ itemName = "life preserver", clientId = 17813, sell = 300 },
	{ itemName = "leather harness", clientId = 17846, sell = 750 },
	{ itemName = "alloy legs", clientId = 21168, sell = 11000 },
	{ itemName = "execowtioner axe", clientId = 21176, sell = 12000 },
	{ itemName = "glooth whip", clientId = 21172, sell = 2500 },
	{ itemName = "glooth club", clientId = 21178, sell = 1500 },
	{ itemName = "glooth cape", clientId = 21164, sell = 7000 },
	{ itemName = "glooth blade", clientId = 21179, sell = 1500 },
	{ itemName = "glooth axe", clientId = 21180, sell = 1500 },
	{ itemName = "gearwheel chain", clientId = 21170, sell = 5000 },
	{ itemName = "heat core", clientId = 21167, sell = 10000 },
	{ itemName = "moohtant cudgel", clientId = 21173, sell = 14000 },
	{ itemName = "mino shield", clientId = 21175, sell = 3000 },
	{ itemName = "mino lance", clientId = 21174, sell = 7000 },
	{ itemName = "metal spats", clientId = 21169, sell = 2000 },
	{ itemName = "metal bat", clientId = 21171, sell = 9000 },
	{ itemName = "mooh'tah plate", clientId = 21166, sell = 6000 },
	{ itemName = "rubber cap", clientId = 21165, sell = 11000 },
	{ itemName = "crest of the deep seas", clientId = 21892, sell = 10000 },
	{ itemName = "swampling club", clientId = 17824, sell = 40 },
	{ itemName = "warrior's shield", clientId = 14042, sell = 9000 },
	{ itemName = "ornate shield", clientId = 14000, sell = 42000 },
	{ itemName = "ornate mace", clientId = 14001, sell = 42000 },
	{ itemName = "ornate legs", clientId = 13999, sell = 40000 },
	{ itemName = "ornate crossbow", clientId = 14247, sell = 12000 },
	{ itemName = "ornate chestplate", clientId = 13993, sell = 60000 },
	{ itemName = "hive scythe", clientId = 14089, sell = 17000 },
	{ itemName = "hive bow", clientId = 14246, sell = 28000 },
	{ itemName = "guardian axe", clientId = 14043, sell = 9000 },
	{ itemName = "grasshopper legs", clientId = 14087, sell = 15000 },
	{ itemName = "depth scutum", clientId = 13998, sell = 36000 },
	{ itemName = "depth ocrea", clientId = 13996, sell = 16000 },
	{ itemName = "depth lorica", clientId = 13994, sell = 30000 },
	{ itemName = "depth galea", clientId = 14258, sell = 35000 },
	{ itemName = "depth calcei", clientId = 13997, sell = 25000 },
	{ itemName = "deepling staff", clientId = 13987, sell = 4000 },
	{ itemName = "deepling squelcher", clientId = 14250, sell = 7000 },
	{ itemName = "deepling axe", clientId = 13991, sell = 40000 },
	{ itemName = "carapace shield", clientId = 14088, sell = 32000 },
	{ itemName = "caloteryx cape", clientId = 14086, sell = 15000 },
	{ itemName = "noble axe", clientId = 7456, sell = 10000 },
	{ itemName = "magma legs", clientId = 821, sell = 11000 },
	{ itemName = "vampire shield", clientId = 3434, sell = 15000 },
	{ itemName = "composite hornbow", clientId = 8027, sell = 25000 },
	{ itemName = "onyx flail", clientId = 7421, sell = 22000 },
	{ itemName = "drachaku", clientId = 10391, sell = 10000 },
	{ itemName = "draken boots", clientId = 4033, sell = 40000 },
	{ itemName = "drakinata", clientId = 10388, sell = 10000 },
	{ itemName = "Elite Draken Mail", clientId = 11651, sell = 50000 },
	{ itemName = "guardian boots", clientId = 10323, sell = 35000 },
	{ itemName = "sais", clientId = 10389, sell = 16500 },
	{ itemName = "twiceslicer", clientId = 11657, sell = 28000 },
	{ itemName = "chaos mace", clientId = 7427, sell = 9000 },
	{ itemName = "twin hooks", clientId = 10392, sell = 500 },
	{ itemName = "wailing widow's necklace", clientId = 10412, sell = 3000 },
	{ itemName = "zaoan armor", clientId = 10384, sell = 14000 },
	{ itemName = "zaoan halberd", clientId = 10406, sell = 500 },
	{ itemName = "onyx flail", clientId = 7421, sell = 22000 },
	{ itemName = "zaoan helmet", clientId = 10385, sell = 45000 },
	{ itemName = "zaoan legs", clientId = 10387, sell = 14000 },
	{ itemName = "zaoan shoes", clientId = 10386, sell = 5000 },
	{ itemName = "zaoan sword", clientId = 10390, sell = 30000 },
	{ itemName = "batwing hat", clientId = 9103, sell = 8000 },
	{ itemName = "focus cape", clientId = 8043, sell = 6000 },
	{ itemName = "jade hat", clientId = 10451, sell = 9000 },
	{ itemName = "spellweavers rob", clientId = 10438, sell = 12000 },
	{ itemName = "spirit cloak", clientId = 8042, sell = 350 },
	{ itemName = "zaoan robe", clientId = 10439, sell = 12000 },
	{ itemName = "depth scutum", clientId = 13998, sell = 36000 },
	{ itemName = "spellbook of enlightenment", clientId = 8072, sell = 4000 },
	{ itemName = "spellbook of lost souls", clientId = 8075, sell = 19000 },
	{ itemName = "spellbook of mind control", clientId = 8074, sell = 13000 },
	{ itemName = "spellbook of warding", clientId = 8073, sell = 8000 },
	{ itemName = "sword", clientId = 3264, sell = 30 },
	{ itemName = "two handed sword", clientId = 3265, sell = 450 },
	{ itemName = "dagger", clientId = 3267, sell = 5 },
	{ itemName = "spike sword", clientId = 3271, sell = 1000 },
	{ itemName = "spike sword", clientId = 779, sell = 1000 },
	{ itemName = "spike sword", clientId = 794, sell = 1000 },
	{ itemName = "spike sword", clientId = 660, sell = 1000 },
	{ itemName = "spike sword", clientId = 679, sell = 1000 },
	{ itemName = "rapier", clientId = 3272, sell = 40 },
	{ itemName = "sabre", clientId = 3273, sell = 12 },
	{ itemName = "fire sword", clientId = 3280, sell = 4000 },
	{ itemName = "giant sword", clientId = 3281, sell = 17000 },
	{ itemName = "carlin sword", clientId = 3283, sell = 1000 },
	{ itemName = "ice rapier", clientId = 3284, sell = 1000 },
	{ itemName = "longsword", clientId = 3285, sell = 50 },
	{ itemName = "silver dagger", clientId = 3290, sell = 500 },
	{ itemName = "knife", clientId = 3291, sell = 3 },
	{ itemName = "combat knife", clientId = 3292, sell = 6 },
	{ itemName = "sickle", clientId = 3293, sell = 3 },
	{ itemName = "short sword", clientId = 3294, sell = 80 },
	{ itemName = "bright sword", clientId = 3295, sell = 6000 },
	{ itemName = "serpent sword", clientId = 3297, sell = 900 },
	{ itemName = "poison dagger", clientId = 3299, sell = 50 },
	{ itemName = "katana", clientId = 3300, sell = 40 },
	{ itemName = "broadsword", clientId = 3301, sell = 350 },
	{ itemName = "golden sickle", clientId = 3306, sell = 1000 },
	{ itemName = "scimitar", clientId = 3307, sell = 150 },
	{ itemName = "machete", clientId = 3308, sell = 40 },
	{ itemName = "heavy machete", clientId = 3330, sell = 90 },
	{ itemName = "epee", clientId = 3326, sell = 8000 },
	{ itemName = "pharaoh sword", clientId = 3334, sell = 23000 },
	{ itemName = "bone sword", clientId = 3338, sell = 100 },
	{ itemName = "djinn blade", clientId = 3339, sell = 15000 },
	{ itemName = "avenger", clientId = 6527, sell = 42000 },
	{ itemName = "demonrage sword", clientId = 7382, sell = 36000 },
	{ itemName = "relic sword", clientId = 7383, sell = 25000 },
	{ itemName = "relic sword", clientId = 780, sell = 25000 },
	{ itemName = "relic sword", clientId = 795, sell = 25000 },
	{ itemName = "relic sword", clientId = 661, sell = 25000 },
	{ itemName = "relic sword", clientId = 680, sell = 25000 },
	{ itemName = "mystic blade", clientId = 7384, sell = 30000 },
	{ itemName = "mystic blade", clientId = 781, sell = 30000 },
	{ itemName = "mystic blade", clientId = 796, sell = 30000 },
	{ itemName = "mystic blade", clientId = 662, sell = 30000 },
	{ itemName = "mystic blade", clientId = 681, sell = 30000 },
	{ itemName = "mercenary sword", clientId = 7386, sell = 12000 },
	{ itemName = "justice seeker", clientId = 7390, sell = 40000 },
	{ itemName = "thaian sword", clientId = 7391, sell = 16000 },
	{ itemName = "dragon slayer", clientId = 7402, sell = 15000 },
	{ itemName = "dragon slayer", clientId = 783, sell = 15000 },
	{ itemName = "dragon slayer", clientId = 798, sell = 15000 },
	{ itemName = "dragon slayer", clientId = 664, sell = 15000 },
	{ itemName = "dragon slayer", clientId = 683, sell = 15000 },
	{ itemName = "berserker", clientId = 7403, sell = 40000 },
	{ itemName = "assassin dagger", clientId = 7404, sell = 20000 },
	{ itemName = "blacksteel sword", clientId = 7406, sell = 6000 },
	{ itemName = "blacksteel sword", clientId = 782, sell = 6000 },
	{ itemName = "blacksteel sword", clientId = 797, sell = 6000 },
	{ itemName = "blacksteel sword", clientId = 663, sell = 6000 },
	{ itemName = "blacksteel sword", clientId = 682, sell = 6000 },
	{ itemName = "haunted blade", clientId = 7407, sell = 8000 },
	{ itemName = "wyvern fang", clientId = 7408, sell = 1500 },
	{ itemName = "bloody edge", clientId = 7416, sell = 30000 },
	{ itemName = "nightmare blade", clientId = 7418, sell = 35000 },
	{ itemName = "dreaded cleaver", clientId = 7419, sell = 11000 },
	{ itemName = "crystal sword", clientId = 7449, sell = 600 },
	{ itemName = "war hammer", clientId = 3279, sell = 900 },
	{ itemName = "morning star", clientId = 3282, sell = 100 },
	{ itemName = "mace", clientId = 3286, sell = 30 },
	{ itemName = "staff", clientId = 3289, sell = 25 },
	{ itemName = "battle hammer", clientId = 3305, sell = 120 },
	{ itemName = "iron hammer", clientId = 3310, sell = 50 },
	{ itemName = "clerical mace", clientId = 3311, sell = 200 },
	{ itemName = "dragon hammer", clientId = 3322, sell = 2000 },
	{ itemName = "skull staff", clientId = 3324, sell = 6000 },
	{ itemName = "hammer of wrath", clientId = 3332, sell = 30000 },
	{ itemName = "crystal mace", clientId = 3333, sell = 12000 },
	{ itemName = "crystal mace", clientId = 790, sell = 12000 },
	{ itemName = "crystal mace", clientId = 807, sell = 12000 },
	{ itemName = "crystal mace", clientId = 671, sell = 12000 },
	{ itemName = "crystal mace", clientId = 690, sell = 12000 },
	{ itemName = "studded club", clientId = 3336, sell = 35 },
	{ itemName = "bone club", clientId = 3337, sell = 50 },
	{ itemName = "heavy mace", clientId = 3340, sell = 50000 },
	{ itemName = "arcane staff", clientId = 3341, sell = 42000 },
	{ itemName = "banana staff", clientId = 3348, sell = 1000 },
	{ itemName = "brutetamers staff", clientId = 7379, sell = 1500 },
	{ itemName = "mammoth whopper", clientId = 7381, sell = 300 },
	{ itemName = "diamond sceptre", clientId = 7387, sell = 3000 },
	{ itemName = "orcish maul", clientId = 7392, sell = 6000 },
	{ itemName = "orcish maul", clientId = 792, sell = 6000 },
	{ itemName = "orcish maul", clientId = 809, sell = 6000 },
	{ itemName = "orcish maul", clientId = 673, sell = 6000 },
	{ itemName = "orcish maul", clientId = 692, sell = 6000 },
	{ itemName = "sapphire hammer", clientId = 7437, sell = 7000 },
	{ itemName = "shadow sceptre", clientId = 7451, sell = 10000 },
	{ itemName = "spiked squelcher", clientId = 7452, sell = 5000 },
	{ itemName = "queens sceptre", clientId = 7410, sell = 20000 },
	{ itemName = "abyss hammer", clientId = 7414, sell = 20000 },
	{ itemName = "cranial basher", clientId = 7415, sell = 30000 },
	{ itemName = "cranial basher", clientId = 791, sell = 30000 },
	{ itemName = "cranial basher", clientId = 808, sell = 30000 },
	{ itemName = "cranial basher", clientId = 672, sell = 30000 },
	{ itemName = "cranial basher", clientId = 691, sell = 30000 },
	{ itemName = "jade hammer", clientId = 7422, sell = 25000 },
	{ itemName = "lunar staff", clientId = 7424, sell = 5000 },
	{ itemName = "taurus mace", clientId = 7425, sell = 600 },
	{ itemName = "amber staff", clientId = 7426, sell = 8000 },
	{ itemName = "bonebreaker", clientId = 7428, sell = 10000 },
	{ itemName = "blessed sceptre", clientId = 7429, sell = 40000 },
	{ itemName = "dragonbone staff", clientId = 7430, sell = 3000 },
	{ itemName = "furry club", clientId = 7432, sell = 1000 },
	{ itemName = "battle axe", clientId = 3266, sell = 80 },
	{ itemName = "hand axe", clientId = 3268, sell = 20 },
	{ itemName = "halberd", clientId = 3269, sell = 400 },
	{ itemName = "double axe", clientId = 3275, sell = 300 },
	{ itemName = "hatchet", clientId = 3276, sell = 25 },
	{ itemName = "dragon lance", clientId = 3302, sell = 9000 },
	{ itemName = "obsidian lance", clientId = 3313, sell = 500 },
	{ itemName = "naginata", clientId = 3314, sell = 1000 },
	{ itemName = "guardian halberd", clientId = 3315, sell = 11000 },
	{ itemName = "orcish axe", clientId = 3316, sell = 350 },
	{ itemName = "barbarian axe", clientId = 3317, sell = 300 },
	{ itemName = "knight axe", clientId = 3318, sell = 2000 },
	{ itemName = "fire axe", clientId = 3320, sell = 8000 },
	{ itemName = "dwarven axe", clientId = 3323, sell = 1500 },
	{ itemName = "daramanian waraxe", clientId = 3328, sell = 900 },
	{ itemName = "daramanian axe", clientId = 3329, sell = 400 },
	{ itemName = "war axe", clientId = 3342, sell = 12000 },
	{ itemName = "war axe", clientId = 788, sell = 12000 },
	{ itemName = "war axe", clientId = 805, sell = 12000 },
	{ itemName = "war axe", clientId = 669, sell = 12000 },
	{ itemName = "war axe", clientId = 688, sell = 12000 },
	{ itemName = "beastslayer axe", clientId = 3344, sell = 2500 },
	{ itemName = "ruthless axe", clientId = 6553, sell = 45000 },
	{ itemName = "headchopper", clientId = 7380, sell = 6000 },
	{ itemName = "headchopper", clientId = 787, sell = 6000 },
	{ itemName = "headchopper", clientId = 804, sell = 6000 },
	{ itemName = "headchopper", clientId = 668, sell = 6000 },
	{ itemName = "headchopper", clientId = 687, sell = 6000 },
	{ itemName = "vile axe", clientId = 7388, sell = 30000 },
	{ itemName = "heroic axe", clientId = 7389, sell = 30000 },
	{ itemName = "heroic axe", clientId = 786, sell = 30000 },
	{ itemName = "heroic axe", clientId = 803, sell = 30000 },
	{ itemName = "heroic axe", clientId = 667, sell = 30000 },
	{ itemName = "heroic axe", clientId = 686, sell = 30000 },
	{ itemName = "ornamented axe", clientId = 7411, sell = 20000 },
	{ itemName = "butchers axe", clientId = 7412, sell = 18000 },
	{ itemName = "titan axe", clientId = 7413, sell = 4000 },
	{ itemName = "executioner", clientId = 7453, sell = 55000 },
	{ itemName = "glorious axe", clientId = 7454, sell = 3000 },
	{ itemName = "royal axe", clientId = 7434, sell = 40000 },
	{ itemName = "angelic axe", clientId = 7436, sell = 5000 },
	{ itemName = "steel helmet", clientId = 3351, sell = 300 },
	{ itemName = "chain helmet", clientId = 3352, sell = 50 },
	{ itemName = "iron helmet", clientId = 3353, sell = 150 },
	{ itemName = "brass helmet", clientId = 3354, sell = 15 },
	{ itemName = "leather helmet", clientId = 3355, sell = 10 },
	{ itemName = "devil helmet", clientId = 3356, sell = 1000 },
	{ itemName = "viking helmet", clientId = 3367, sell = 70 },
	{ itemName = "warrior helmet", clientId = 3369, sell = 5000 },
	{ itemName = "strange helmet", clientId = 3373, sell = 500 },
	{ itemName = "legion helmet", clientId = 3374, sell = 30 },
	{ itemName = "soldier helmet", clientId = 3375, sell = 20 },
	{ itemName = "studded helmet", clientId = 3376, sell = 5 },
	{ itemName = "dark helmet", clientId = 3384, sell = 250 },
	{ itemName = "crown helmet", clientId = 3385, sell = 2500 },
	{ itemName = "demon helmet", clientId = 3387, sell = 40000 },
	{ itemName = "crusader helmet", clientId = 3391, sell = 6000 },
	{ itemName = "royal helmet", clientId = 3392, sell = 30000 },
	{ itemName = "ceremonial mask", clientId = 3395, sell = 12000 },
	{ itemName = "mystic turban", clientId = 3574, sell = 150 },
	{ itemName = "tribal mask", clientId = 3403, sell = 250 },
	{ itemName = "horseman helmet", clientId = 3405, sell = 280 },
	{ itemName = "feather headdress", clientId = 3406, sell = 850 },
	{ itemName = "charmer tiara", clientId = 3407, sell = 900 },
	{ itemName = "beholder helmet", clientId = 3408, sell = 7500 },
	{ itemName = "helmet of the deep", clientId = 5460, sell = 5000 },
	{ itemName = "skull helmet", clientId = 5741, sell = 40000 },
	{ itemName = "pirate hat", clientId = 6096, sell = 1000 },
	{ itemName = "krimhorn helmet", clientId = 7461, sell = 200 },
	{ itemName = "ragnir helmet", clientId = 7462, sell = 400 },
	{ itemName = "terra hood", clientId = 830, sell = 2500 },
	{ itemName = "lightning headband", clientId = 828, sell = 2500 },
	{ itemName = "glacier mask", clientId = 829, sell = 2500 },
	{ itemName = "magma monocle", clientId = 827, sell = 2500 },
	{ itemName = "mining helmet", clientId = 875, sell = 400 },
	{ itemName = "bandana", clientId = 5917, sell = 100 },
	{ itemName = "party hat", clientId = 6578, sell = 200 },
	{ itemName = "mage hat", clientId = 7992, sell = 150 },
	{ itemName = "studded legs", clientId = 3362, sell = 60 },
	{ itemName = "golden legs", clientId = 3364, sell = 30000 },
	{ itemName = "knight legs", clientId = 3371, sell = 5000 },
	{ itemName = "brass legs", clientId = 3372, sell = 20 },
	{ itemName = "crown legs", clientId = 3382, sell = 12000 },
	{ itemName = "dwarven legs", clientId = 3398, sell = 40000 },
	{ itemName = "plate legs", clientId = 3557, sell = 200 },
	{ itemName = "chain legs", clientId = 3558, sell = 30 },
	{ itemName = "leather legs", clientId = 3559, sell = 10 },
	{ itemName = "mammoth fur shorts", clientId = 7464, sell = 100 },
	{ itemName = "terra legs", clientId = 812, sell = 11000 },
	{ itemName = "lightning legs", clientId = 822, sell = 11000 },
	{ itemName = "glacier kilt", clientId = 823, sell = 11000 },
	{ itemName = "pirate knee breeches", clientId = 5918, sell = 200 },
	{ itemName = "bast skirt", clientId = 3560, sell = 750 },
	{ itemName = "blue legs", clientId = 645, sell = 12000 },
	{ itemName = "boots of haste", clientId = 3079, sell = 30000 },
	{ itemName = "crocodile boots", clientId = 3556, sell = 1000 },
	{ itemName = "fur boots", clientId = 7457, sell = 2000 },
	{ itemName = "glacier shoes", clientId = 819, sell = 2500 },
	{ itemName = "leather boots", clientId = 3552, sell = 2 },
	{ itemName = "lightning boots", clientId = 820, sell = 2500 },
	{ itemName = "magma boots", clientId = 818, sell = 2500 },
	{ itemName = "pirate boots", clientId = 5461, sell = 3000 },
	{ itemName = "steel boots", clientId = 3554, sell = 30000 },
	{ itemName = "terra boots", clientId = 813, sell = 2500 },
	{ itemName = "plate armor", clientId = 3357, sell = 400 },
	{ itemName = "chain armor", clientId = 3358, sell = 80 },
	{ itemName = "brass armor", clientId = 3359, sell = 80 },
	{ itemName = "golden armor", clientId = 3360, sell = 20000 },
	{ itemName = "leather armor", clientId = 3361, sell = 10 },
	{ itemName = "magic plate armor", clientId = 3366, sell = 90000 },
	{ itemName = "knight armor", clientId = 3370, sell = 5000 },
	{ itemName = "scale armor", clientId = 3377, sell = 40 },
	{ itemName = "studded armor", clientId = 3378, sell = 25 },
	{ itemName = "noble armor", clientId = 3380, sell = 900 },
	{ itemName = "crown armor", clientId = 3381, sell = 12000 },
	{ itemName = "dark armor", clientId = 3383, sell = 400 },
	{ itemName = "dragon scale mail", clientId = 3386, sell = 40000 },
	{ itemName = "dwarven armor", clientId = 3397, sell = 30000 },
	{ itemName = "blue robe", clientId = 3567, sell = 10000 },
	{ itemName = "leopard armor", clientId = 3404, sell = 1000 },
	{ itemName = "pirate shirt", clientId = 6095, sell = 500 },
	{ itemName = "mammoth fur cape", clientId = 7463, sell = 6000 },
	{ itemName = "terra mantle", clientId = 811, sell = 11000 },
	{ itemName = "glacier robe", clientId = 824, sell = 11000 },
	{ itemName = "lightning robe", clientId = 825, sell = 11000 },
	{ itemName = "magma coat", clientId = 826, sell = 11000 },
	{ itemName = "focus cape", clientId = 8043, sell = 6000 },
	{ itemName = "belted cape", clientId = 8044, sell = 500 },
	{ itemName = "hibiscus dress", clientId = 8045, sell = 3000 },
	{ itemName = "lavos armor", clientId = 8049, sell = 16000 },
	{ itemName = "crystalline armor", clientId = 8050, sell = 16000 },
	{ itemName = "swamplair armor", clientId = 8052, sell = 16000 },
	{ itemName = "divine plate", clientId = 8057, sell = 55000 },
	{ itemName = "skullcracker armor", clientId = 8061, sell = 18000 },
	{ itemName = "paladin armor", clientId = 8063, sell = 15000 },
	{ itemName = "ethno coat", clientId = 8064, sell = 400 },
	{ itemName = "magicians robe", clientId = 7991, sell = 100 },
	{ itemName = "steel shield", clientId = 3409, sell = 80 },
	{ itemName = "plate shield", clientId = 3410, sell = 45 },
	{ itemName = "brass shield", clientId = 3411, sell = 110 },
	{ itemName = "wooden shield", clientId = 3412, sell = 15 },
	{ itemName = "battle shield", clientId = 3413, sell = 95 },
	{ itemName = "mastermind shield", clientId = 3414, sell = 50000 },
	{ itemName = "guardian shield", clientId = 3415, sell = 2000 },
	{ itemName = "dragon shield", clientId = 3416, sell = 4000 },
	{ itemName = "beholder shield", clientId = 3418, sell = 1200 },
	{ itemName = "crown shield", clientId = 3419, sell = 8000 },
	{ itemName = "demon shield", clientId = 3420, sell = 30000 },
	{ itemName = "dark shield", clientId = 3421, sell = 400 },
	{ itemName = "ornamented shield", clientId = 3424, sell = 1500 },
	{ itemName = "dwarven shield", clientId = 3425, sell = 100 },
	{ itemName = "studded shield", clientId = 3426, sell = 60 },
	{ itemName = "tower shield", clientId = 3428, sell = 8000 },
	{ itemName = "black shield", clientId = 3429, sell = 500 },
	{ itemName = "copper shield", clientId = 3430, sell = 50 },
	{ itemName = "viking shield", clientId = 3431, sell = 80 },
	{ itemName = "ancient shield", clientId = 3432, sell = 900 },
	{ itemName = "castle shield", clientId = 3435, sell = 5000 },
	{ itemName = "medusa shield", clientId = 3436, sell = 9000 },
	{ itemName = "phoenix shield", clientId = 3439, sell = 16000 },
	{ itemName = "scarab shield", clientId = 3440, sell = 2000 },
	{ itemName = "bone shield", clientId = 3441, sell = 80 },
	{ itemName = "tempest shield", clientId = 3442, sell = 35000 },
	{ itemName = "tusk shield", clientId = 3443, sell = 850 },
	{ itemName = "sentinel shield", clientId = 3444, sell = 120 },
	{ itemName = "salamander shield", clientId = 3445, sell = 300 },
	{ itemName = "tortoise shield", clientId = 6131, sell = 150 },
	{ itemName = "templar scytheblade", clientId = 3345, sell = 200 },
	{ itemName = "norse shield", clientId = 7460, sell = 1500 },
}

-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType) end

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)
npcType:register(npcConfig)
