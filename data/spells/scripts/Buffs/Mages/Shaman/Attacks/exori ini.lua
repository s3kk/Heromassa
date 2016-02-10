local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_YALAHARIGHOST)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, TRUE)

local condition1 = createConditionObject(CONDITION_SOUL)
setConditionParam(condition1, CONDITION_PARAM_TICKS, 10 * 1000)
setConditionParam(condition1, CONDITION_PARAM_SOULGAIN, -1)
setConditionParam(condition1, CONDITION_PARAM_SOULTICKS, 2000)
setCombatCondition(combat, condition1)

local condition2 = createConditionObject(CONDITION_REGENERATION)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 10 * 1000)
setConditionParam(condition2, CONDITION_PARAM_MANAGAIN, -20)
setConditionParam(condition2, CONDITION_PARAM_MANATICKS, 1000)
setCombatCondition(combat, condition2)

local condition3 = createConditionObject(EXHAUST_HEALING)
setConditionParam(condition3, CONDITION_PARAM_TICKS, 2 * 1000)
setCombatCondition(combat, condition3)

local condition4 = createConditionObject(CONDITION_PACIFIED)
setConditionParam(condition4, CONDITION_PARAM_TICKS, 2 * 1000)
setCombatCondition(combat, condition4)

local condition5 = createConditionObject(CONDITION_DRUNK)
setConditionParam(condition5, CONDITION_PARAM_TICKS, 20 * 1000)
setCombatCondition(combat, condition5)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
