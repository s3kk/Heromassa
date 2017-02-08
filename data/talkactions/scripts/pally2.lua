function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2160,100) then
doPlayerSetVocation(cid,7)
doCreatureAddHealth(cid,-9999999999)
doCreatureAddHealth(cid,-99999999999)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doCreatureSay(cid, "Promoted", TALKTYPE_ORANGE_1)
else
doPlayerSendCancel(cid, 'You do not have 100 crystal coin.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end  