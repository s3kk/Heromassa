local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DROWNDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_POFF)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -0, 0, -0)

local area = createCombatArea(AREA_CIRCLE3X3)
setCombatArea(combat, area)

local condition = createConditionObject(CONDITION_DROWN)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 8, 5000, -20)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end