local function revertCask(position)
	local caskItem = Tile(position):getItemById(5091)
	if caskItem then
		caskItem:transform(5093)
		position:sendMagicEffect(CONST_ME_HITBYPOISON)
	end
end

local action = Action()

function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local szansa = math.random(10)
	if szansa <= 6 then
		toPosition:sendMagicEffect(CONST_ME_POFF)
	elseif szansa >= 7 and szansa <= 8 then
		toPosition:sendMagicEffect(CONST_ME_POFF)
		player:addItem(3587, 1)
	elseif szansa >= 9 then
		toPosition:sendMagicEffect(CONST_ME_POFF)
		player:addItem(3587, 2)
	end
	item:transform(5091)
	addEvent(revertCask, 5 * 60 * 1000, toPosition) --5min
	return true
end

action:id(5093)
action:register()
