function onSay(cid, words, param)

if doPlayerRemoveItem(cid,2160,500) and getPlayerVocation(cid) == 8 then
	doPlayerSetMagic(cid,27)
	doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
	doCreatureSay(cid, "MAGIC FULL KNIGHT!", TALKTYPE_ORANGE_1)
	addEvent(doRemoveCreature, 3*1000, cid, true)
else
	doPlayerSendCancel(cid, 'voce precisa de 10kk para usar este comando e ser elite knight.')
	doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end 