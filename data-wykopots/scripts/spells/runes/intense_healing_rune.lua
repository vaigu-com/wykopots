local summons = {
	"grovebeast",
	"skullfrost",
	"emberwing",
	"thundergiant",
	"ugly monster",
}

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 3.2) + 20
	local max = (level / 5) + (maglevel * 5.4) + 40
	return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local rune = Spell("rune")

function rune.onCastSpell(creature, var, isHotkey)
	if creature:getStorageValue(Storage.healLock) == 1 then
		creature:sendCancelMessage("You cannot heal on this event.")
		return false
	end
	local target = Creature(var:getNumber())
	if isInArray(summons, target:getName():lower()) then
		creature:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		return false
	end
	return combat:execute(creature, var)
end

rune:id(4)
rune:group("healing")
rune:name("intense healing rune")
rune:castSound(SOUND_EFFECT_TYPE_SPELL_OR_RUNE)
rune:impactSound(SOUND_EFFECT_TYPE_SPELL_INTENSE_HEALING_RUNE)
rune:runeId(3152)
rune:allowFarUse(true)
rune:charges(1)
rune:level(15)
rune:magicLevel(1)
rune:cooldown(1 * 1000)
rune:groupCooldown(1 * 1000)
rune:isAggressive(false)
rune:needTarget(true)
rune:isBlocking(true) -- True = Solid / False = Creature
rune:register()
