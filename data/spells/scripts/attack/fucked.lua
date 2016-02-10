local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_BIGCLOUDS)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -90.5, -30, -135.1, 0)

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
doSendAnimatedText(getPlayerPosition(cid), "Die", TEXTCOLOR_Yeloow)
	return doCombat(cid, combat, var)
end