local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -0, 0, -320)

local area = createCombatArea(AREA_CIRCLE2X2)
setCombatArea(combat, area)

--[[local condition = createConditionObject(CONDITION_ENERGY)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 7, 4000, -25)
setCombatCondition(combat, condition)
]]--
function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end