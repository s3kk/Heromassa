local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
--setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 89.9, -30, 99.6, 0)

function onGetFormulaValues(cid, level, maglevel)
	min = (level * 2 + maglevel * 3) * 99.0 - 25
	max = (level * 2 + maglevel * 3) * 99.2
	
	if min < 250 then
		min = 250
	end

	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "exura vip:spell by geanriot apenas vips usam.")
	return doCombat(cid, combat, var)
end
