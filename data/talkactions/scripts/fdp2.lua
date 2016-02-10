function onSay(cid, words, param)
config = {
prot="yes", -- players precisam estar em protection zone pra resetar? ("yes" or "no").
bat="yes" --players precisam estar sem fight pra resetarem? ("yes" or "no").
}
pos = {x=133, y=50, z=7}
doTeleportThing(cid,pos)
doCreatureAddHealth(cid,-500)
doCreatureAddMana(cid,-500)
doCreatureSetSkullType(cid, 3)
if(config.prot == "yes") and (getTilePzInfo(getCreaturePosition(cid)) == FALSE) then
doPlayerSendTextMessage(cid,22,"você precisa estar em protection zone pra poder resetar.")
return TRUE
end

if(config.bat == "yes") and (getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE) then
doPlayerSendTextMessage(cid,22,"você precisa estar sem battler pra poder resetar.")
return TRUE
end
doCreatureSay(cid, "FDP", TALKTYPE_ORANGE_1)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "xingar a mae e feio.")
end  