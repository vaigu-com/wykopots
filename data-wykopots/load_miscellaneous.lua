do
	if DIRECTION_NONE == nil then
		DIRECTION_NONE = 8
	end
end
dofile(DATA_DIRECTORY .. "/language_config.lua")
dofile(DATA_DIRECTORY .. "/vector.lua")
dofile(DATA_DIRECTORY .. "/pos.lua")
dofile(DATA_DIRECTORY .. "/item_manipulation.lua")
dofile(DATA_DIRECTORY .. "/quest_system.lua")
dofile(DATA_DIRECTORY .. "/player_inventory.lua")
dofile(DATA_DIRECTORY .. "/escort_system.lua")
dofile(DATA_DIRECTORY .. "/util.lua")
dofile(DATA_DIRECTORY .. "/encounter.lua")