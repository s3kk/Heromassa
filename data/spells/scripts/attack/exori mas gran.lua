local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT,36)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 1.3, 20, 1.4, 0)

local condition = createConditionObject(CONDITION_DRUNK)
setConditionParam(condition, CONDITION_PARAM_TICKS, 1000)
setCombatCondition(combat, condition)

local arr = {
{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1},
{1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1},
{1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1},
{1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1},
{1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1},
{1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1},
{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1},
}



local area = createCombatArea(arr)

setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end