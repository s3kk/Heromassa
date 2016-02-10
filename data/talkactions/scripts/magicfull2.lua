function onSay(cid, words, param)
	if (getTilePzInfo(getCreaturePosition(cid)) == FALSE) then
		doPlayerSendTextMessage(cid,22,"You have to be in protection zone.")
		doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
		return true
	end

	if getPlayerVocation(cid) ~= 6 then
		doPlayerSendCancel(cid, "You are not a Hero Druid.")
		doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
					elseif getPlayerVocation(cid) == 6 then
						doPlayerRemoveItem(cid,2160,500)
						return doPlayerSetMagic(cid, 250)

			else
				doPlayerSendCancel(cid, "You need 5kk.")
				doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
	end
end