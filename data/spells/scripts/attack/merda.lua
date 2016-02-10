local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_GIANTICE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -39.5, -30, -49.1, 0)

local condition = createConditionObject(CONDITION_DRUNK)
setConditionParam(condition, CONDITION_PARAM_TICKS, 10000)
setCombatCondition(combat, condition)

local arr = {
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 3, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}
}


local area = createCombatArea(arr)

setCombatArea(combat, area)

function onCastSpell(cid, var)
doSendAnimatedText(getPlayerPosition(cid), "", TEXTCOLOR_LIGHTBLUE)
	return doCombat(cid, combat, var)
end