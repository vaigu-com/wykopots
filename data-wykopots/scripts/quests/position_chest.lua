local forceUntradeability = {
	[43946] = true,
	[43947] = true,
	[43948] = true,
	[43949] = true,
	[43950] = true,
}

local function extractItemData(item)
	local id = item:getId()
	local count = item:getCount()
	local actionid = item:getActionId()

	if forceUntradeability[id] and actionid == 0 then
		actionid = 1000
	end
	return { id = id, count = count, aid = actionid }
end

local function extractBagItems(items)
	local result = {}
	for _, item in pairs(items) do
		if item:isContainer() then
			result[item:getId()] = extractBagItems(item:getItems())
		else
			result[#result + 1] = extractItemData(item)
		end
	end
	return result
end

local function findPositionChestRewards(chest)
	local chestItems = chest:getItems()
	local addItems = extractBagItems(chestItems)

	local addItemsSize = TableSize(addItems) - CountNotAddableItems(addItems)

	local wrapId = nil
	if addItemsSize > 1 then
		wrapId = 2853
	end
	if addItemsSize > 8 then
		wrapId = 2854
	end
	if addItemsSize > 20 then
		wrapId = chest:getId()
	end

	if wrapId then
		addItems = { [wrapId] = addItems }
	end
	return addItems
end

local function setChestWasOpened(player, storage)
	player:setStorageValue(storage, 1)
end

--aid is registered on cpp side; default aid: Storage.PositionChest
--use item id 130 to grant exp; granted exp = actionid * count^10; eg. count 3, actionid 123 gives 123 * 3^10 = 123000 experience
--not suitable for quest items with a non-static actionid (eg.: generated by NextState())
local positionChest = Action()
function positionChest.onUse(player, chest, fromPosition, target, toPosition, isHotkey)
	local storage = chest:getPosition():ToNumber()
	local storageValue = player:getStorageValue(storage)
	if storageValue ~= -1 then
		SendChestIsEmpty(player, chest:getId())
		return true
	end

	local rewards = findPositionChestRewards(chest)
	if player:TryAddItems(rewards) then
		setChestWasOpened(player, storage)
		player:getPosition():sendMagicEffect(CONST_ME_STUN)
	end
	return true
end
positionChest:aid(Storage.PositionChest)
positionChest:register()
