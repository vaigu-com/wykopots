local tile = MoveEvent()

function tile.onStepIn(player, item, fromPosition, target, toPosition, isHotkey)
	local aid = item:getActionId()
	if not player:isPlayer() then
		return false
	end

	if not (player:getStorageValue(Storage.TeatrTaniejSensacji.Mission11) == 2) then
		return
	end

	if Game.getStorageValue(aid) == 1 then
		return
	end

	if Game.createMonster("juerdo titsgo", player:getPosition()) then
		Game.setStorageValue(aid, 1)
	end
end

tile:aid(Storage.TeatrTaniejSensacji.Spawns.JuerdoTitsgo)
tile:register()
