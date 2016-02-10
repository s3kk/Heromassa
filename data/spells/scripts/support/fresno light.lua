function onCastSpell(cid, var)
	local pos = getPlayerPosition(cid)
	doSendMagicEffect(pos, CONST_ME_MAGIC_BLUE)
	return doSetCreatureLight(cid, 110, 2150, (600*33+100)*10000)
end