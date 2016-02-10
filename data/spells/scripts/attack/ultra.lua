local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -69.0, -30, -70.9, -0)

local area = createCombatArea(AREA_CIRCLE3X3)
setCombatArea(combat, area)

setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end