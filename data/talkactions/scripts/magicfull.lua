function onSay(cid, words, param)

if doPlayerRemoveItem(cid,2160,500) and getPlayerVocation(cid) == 5 then
	doPlayerSetMagic(cid,250)
	doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
	doCreatureSay(cid, "MAGIC FULL SORCERER!", TALKTYPE_ORANGE_1)
	addEvent(doRemoveCreature, 3*1000, cid, true)
else
	doPlayerSendCancel(cid, 'voce precisa de 5kk para usar este comando e ser master sorcerer.')
	doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end 