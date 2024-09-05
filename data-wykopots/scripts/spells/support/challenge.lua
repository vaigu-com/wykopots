local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setArea(createCombatArea(AREA_SQUARE1X1))

function onTargetCreature(creature, target)
	return doChallengeCreature(creature, target)
end

combat:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")

local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	local target = creature:getTarget()
	if target then
		doChallengeCreature(creature, target)
		target:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
	end
	return combat:execute(creature, variant)
end

spell:name("Challenge")
spell:words("exeta res")
spell:group("support")
spell:vocation("elite knight;true")
spell:castSound(SOUND_EFFECT_TYPE_SPELL_CHALLENGE)
spell:id(93)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(20)
spell:mana(30)
spell:isAggressive(false)
spell:isPremium(true)
spell:needLearn(false)
spell:register()
