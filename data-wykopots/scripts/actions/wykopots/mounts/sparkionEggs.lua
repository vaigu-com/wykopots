local action = Action()

function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local config = {
		[23538] = { mountId = 94, message = "You receive the permission to ride a sparkion" },
		[23684] = { mountId = 98, message = "You receive the permission to ride a neon sparkid" },
		[23685] = { mountId = 99, message = "You receive the permission to ride a vortexion" },
	}

	local mount = config[item.itemid]

	if not mount then
		return true
	end

	if not player:hasMount(mount.mountId) then
		player:addMount(mount.mountId)
		player:say(mount.message, TALKTYPE_MONSTER_SAY)
		item:remove(1)
	else
		player:sendTextMessage(19, "You already have this mount")
	end
	return true
end

action:id(23538, 23684, 23685)
action:register()
