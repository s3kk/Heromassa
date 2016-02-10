local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 49)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.0, -30, -10.2, 0)

local arr = {
{1, 1, 1},
{1, 2, 1},
{1, 1, 1}
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
doSendAnimatedText(getPlayerPosition(cid), "HOLY ATACK", TEXTCOLOR_PURPLE)
	return doCombat(cid, combat, var)
end

