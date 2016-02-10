local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HEARTS)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, 1, 0, 1)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 2000000)
--setConditionParam(condition, CONDITION_PARAM_SPEED, 700)
setConditionFormula(condition, 0.9, 0, 0.9, 0)
setCombatCondition(combat, condition)

local arr = {
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 3, 0}
}

function onCastSpell(cid, var)
doSendAnimatedText(getPlayerPosition(cid), "CREEEEW", TEXTCOLOR_RED)
                messageClass = MESSAGE_STATUS_CONSOLE_WARNING
	return doCombat(cid, combat, var)
end
