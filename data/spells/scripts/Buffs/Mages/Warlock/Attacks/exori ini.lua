local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_PURPLEENERGY)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGYBALL)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, TRUE)

local condition2 = createConditionObject(CONDITION_REGENERATION)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 20 * 1000)
setConditionParam(condition2, CONDITION_PARAM_MANAGAIN, -10)
setConditionParam(condition2, CONDITION_PARAM_MANATICKS, 500)
setCombatCondition(combat, condition2)

local condition3 = createConditionObject(EXHAUST_HEALING)
setConditionParam(condition3, CONDITION_PARAM_TICKS, 2 * 1000)
setCombatCondition(combat, condition3)

local condition4 = createConditionObject(CONDITION_DROWN)
setConditionParam(condition4, CONDITION_PARAM_DELAYED, 1)
setConditionParam(condition4, CONDITION_PARAM_STARTVALUE, 30)
setConditionParam(condition4, CONDITION_PARAM_MINVALUE, 1)
setConditionParam(condition4, CONDITION_PARAM_MAXVALUE, 150)
setConditionParam(condition4, CONDITION_PARAM_TICKINTERVAL, 1 * 1000)
setCombatCondition(combat, condition4)


function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
