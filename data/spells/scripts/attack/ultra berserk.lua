local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_GIANTICE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -59.0, -30, -60.9, -0)

local area = createCombatArea(AREA_SQUARE1X1)
setCombatArea(combat, area)

setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end