function onSay(cid, words, param)
if (getTilePzInfo(getCreaturePosition(cid)) == FALSE) then
doPlayerSendTextMessage(cid,22,"você precisa estar em protection zone pra poder usar este comando.")
return TRUE
end

if doPlayerRemoveItem(cid,2160,500) and getPlayerVocation(cid) == 7 then
doPlayerSetSkill(cid, 5, 400)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doCreatureSay(cid, "SHIELD FULL PALADIN!", TALKTYPE_ORANGE_1)
addEvent(doRemoveCreature, 3*1000, cid, true)
else
doPlayerSendCancel(cid, 'voce precisa de 5kk para usar este comando e ser PALADIN.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end 