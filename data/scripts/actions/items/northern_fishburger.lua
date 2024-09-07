local fishingCondition = Condition(CONDITION_ATTRIBUTES)
fishingCondition:setParameter(CONDITION_PARAM_SUBID, JeanPierreFishing)
fishingCondition:setParameter(CONDITION_PARAM_BUFF_SPELL, 1)
fishingCondition:setParameter(CONDITION_PARAM_TICKS, 60 * 60 * 1000)
fishingCondition:setParameter(CONDITION_PARAM_SKILL_FISHING, 50)
fishingCondition:setParameter(CONDITION_PARAM_FORCEUPDATE, true)

local errorMessage = "You need to wait before using it again."
local northernFishburger = Action()

function northernFishburger.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local canUse = player:canUseCooldownItem("special-foods-cooldown")
	if not canUse then
		player:say(errorMessage)
	end

	if IsOnEvent(player) then
		player:sendCancelMessage("You cannot eat dishes on this event.")
		return true
	end
	
	player:addCondition(fishingCondition)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You felt fishing inspiration.")
	player:say("Smack.", TALKTYPE_MONSTER_SAY)
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
	player:setExhaustion("special-foods-cooldown", 10 * 60)
	item:remove(1)
	return true
end

northernFishburger:id(9088)
northernFishburger:register()
