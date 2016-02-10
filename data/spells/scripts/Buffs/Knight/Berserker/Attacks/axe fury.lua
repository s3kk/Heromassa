local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, FALSE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_YELLOW)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0.98, 0, 1.32, 0)

local condition = createConditionObject(EXHAUST_HEALING)
setConditionParam(condition, CONDITION_PARAM_TICKS, 2000)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
