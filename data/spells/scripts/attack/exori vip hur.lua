local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_REDSTAR)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -12, -10, -12, -10, 4, 5, 2, 6)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
