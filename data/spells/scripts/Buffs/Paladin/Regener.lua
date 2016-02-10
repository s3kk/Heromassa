local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_REGENERATION)
setConditionParam(condition, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition, CONDITION_PARAM_SUBID, 4)
setConditionParam(condition, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition, CONDITION_PARAM_MANAGAIN, 25)
setConditionParam(condition, CONDITION_PARAM_MANATICKS, 1500)
setConditionParam(condition, CONDITION_PARAM_HEALTHGAIN, 25)
setConditionParam(condition, CONDITION_PARAM_HEALTHTICKS, 1500)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
