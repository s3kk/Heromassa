local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 2200000)
setConditionFormula(condition, 99.7, -9956, 99.7, -9956)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
doSendAnimatedText(getPlayerPosition(cid), "FRESNO", TEXTCOLOR_PURPLE)
	return doCombat(cid, combat, var)
end