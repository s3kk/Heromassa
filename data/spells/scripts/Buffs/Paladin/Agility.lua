local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition1 = createConditionObject(CONDITION_HASTE)
setConditionParam(condition1, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition1, CONDITION_PARAM_SUBID, 1)
setConditionParam(condition1, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionFormula(condition1, 0.4, -10, 0.4, -10)
setCombatCondition(combat, condition1)

local condition2 = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition2, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition2, CONDITION_PARAM_SUBID, 1)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition2, CONDITION_PARAM_SKILL_DISTANCEPERCENT, 107)
setCombatCondition(combat, condition2)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
