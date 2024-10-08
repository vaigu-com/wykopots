local movement = MoveEvent()

function movement.onStepIn(creature, item, toPosition, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if player:getStorageValue(Storage.PitsOfInferno.Pumin) > 8 then
		player:teleportTo(Position(32786, 32308, 15))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	else
		player:teleportTo(fromPosition)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "To enter Pumin's domain you must gain permission from the bureaucrats.")
	end
	return true
end

movement:type("stepin")
movement:aid(50087)
movement:register()
