local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_SKULLVERTICAL)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.0, -10, -0.3, -15)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 1000)
--setConditionParam(condition, CONDITION_PARAM_SPEED, -600)
setConditionFormula(condition, -0.4, 0, -0.6, 0)
setCombatCondition(combat, condition)

local arr = {
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{0, 1, 0, 1, 0, 1, 0},
{0, 1, 1, 2, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 1, 1, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
