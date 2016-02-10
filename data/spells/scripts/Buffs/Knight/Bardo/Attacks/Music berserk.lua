local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_GREEN)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0, -188, 0, -271)

local condition = createConditionObject(EXHAUST_HEALING)
setConditionParam(condition, CONDITION_PARAM_TICKS, 1000)
setCombatCondition(combat, condition)

local area = createCombatArea(AREA_SQUARE1X1)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end