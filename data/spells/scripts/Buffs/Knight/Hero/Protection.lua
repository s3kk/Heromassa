local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_STUN)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition1 = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition1, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition1, CONDITION_PARAM_SUBID, 3)
setConditionParam(condition1, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition1, CONDITION_PARAM_SKILL_SHIELDPERCENT, 140)
setConditionParam(condition1, CONDITION_PARAM_SKILL_MELEEPERCENT, 110)
setCombatCondition(combat, condition1)

local condition2 = createConditionObject(CONDITION_REGENERATION)
setConditionParam(condition2, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition2, CONDITION_PARAM_SUBID, 3)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition2, CONDITION_PARAM_HEALTHGAIN, 10)
setConditionParam(condition2, CONDITION_PARAM_HEALTHTICKS, 1000)
setCombatCondition(combat, condition2)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
