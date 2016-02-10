local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_YELLOW)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0, -188, 0, -271)

local condition = createConditionObject(EXHAUST_HEALING)
setConditionParam(condition, CONDITION_PARAM_TICKS, 1100)
setCombatCondition(combat, condition)

local area = createCombatArea(AREA_CIRCLE2X2)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end