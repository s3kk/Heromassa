-- { By Miter } --
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, FALSE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, TRUE)

function onCastSpell(cid, var)
        doCreatureAddMana(cid, math.random(3000,6000))
        doCreatureSay(cid,"Aaaah...", TALKTYPE_ORANGE_1)        
       return doCombat(cid, combat, var)
end