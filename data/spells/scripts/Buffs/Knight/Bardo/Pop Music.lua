local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition1 = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition1, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition1, CONDITION_PARAM_SUBID, 7)
setConditionParam(condition1, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition1, CONDITION_PARAM_SKILL_MELEEPERCENT, 115)
setCombatCondition(combat, condition1)

local condition2 = createConditionObject(CONDITION_REGENERATION)
setConditionParam(condition2, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition2, CONDITION_PARAM_SUBID, 7)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition2, CONDITION_PARAM_MANAGAIN, -15)
setConditionParam(condition2, CONDITION_PARAM_MANATICKS, 1000)
setCombatCondition(combat, condition2)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
