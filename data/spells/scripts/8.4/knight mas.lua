local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 1000000)
setConditionParam(condition, CONDITION_PARAM_SKILL_CLUB, 100)
setConditionParam(condition, CONDITION_PARAM_SKILL_SWORD, 100)
setConditionParam(condition, CONDITION_PARAM_SKILL_AXE, 100)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, 100)
setConditionParam(condition, CONDITION_PARAM_BUFF, TRUE)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
