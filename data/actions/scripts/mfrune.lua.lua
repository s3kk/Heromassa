local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

function onCastSpell(cid, var)
doPlayerAddMana(cid, 1000)
doSendAnimatedText(getPlayerPosition(cid), "Aaaaah!!!", TEXTCOLOR_ORANGE)
return doCombat(cid, combat, var)
end