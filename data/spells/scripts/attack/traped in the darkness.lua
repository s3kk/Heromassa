local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 1498)

local area = createCombatArea(TRAPE_IN_THE_DARKNESS)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
