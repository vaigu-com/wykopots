local config = {
	bossName = "Timira the Many-Headed",
	encounterName = "Timira the Many-Headed",
	requiredLevel = 250,
	entranceTiles = {
		{ pos = Position(33809, 32702, 8), destination = Position(33787, 32680, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33808, 32702, 8), destination = Position(33787, 32680, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33807, 32702, 8), destination = Position(33787, 32680, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33806, 32702, 8), destination = Position(33787, 32680, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33805, 32702, 8), destination = Position(33787, 32680, 10), effect = CONST_ME_TELEPORT },
	},
	zoneArea = {
		from = Position(33803, 32690, 9),
		to = Position(33828, 32715, 9),
	},
	exitTpDestination = Position(33810, 32699, 8),
}

local lever = EncounterData(config)
lever:position({ x = 33810, y = 32702, z = 8 })
lever:register()

local zone = lever:getZone()
zone:addArea({ x = 33777, y = 32673, z = 10 }, { x = 33801, y = 32700, z = 10 })
zone:addArea({ x = 33784, y = 32701, z = 9 }, { x = 33806, y = 32716, z = 9 })
