local vortexAnomaly = MoveEvent()

function vortexAnomaly.onStepIn(creature, item, position, fromPosition)
	if item.itemid == 22894 then
		if creature:isMonster() then
			if creature:getName():lower() == "charged anomaly" then
				creature:addHealth(-6000, true, COMBAT_DROWNDAMAGE)
			end
		elseif isPlayer(creature) then
			creature:addHealth(-100, true, COMBAT_ENERGYDAMAGE)
		end
	end
	return true
end

vortexAnomaly:type("stepin")
vortexAnomaly:id(22894)
vortexAnomaly:register()
