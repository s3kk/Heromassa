local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ETHEREALSPEAR)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -32, -20, -32, -20, 8, 10, 4, 12)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
