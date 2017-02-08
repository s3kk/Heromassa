function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2160,1) then
doPlayerAddItem(cid,2173,1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doCreatureSay(cid, "!aol", TALKTYPE_ORANGE_1)
else
doPlayerSendCancel(cid, 'You do not have 1 crystal coin.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end  