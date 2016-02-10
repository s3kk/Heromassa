function onSay(cid, words, param)
	if (getTilePzInfo(getCreaturePosition(cid)) == FALSE) then
		doPlayerSendTextMessage(cid,22,"You have to be in protection zone.")
		doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
		return true
	end

	if getPlayerVocation(cid) ~= 8 then
		doPlayerSendCancel(cid, "You are not a Hero Knight.")
		doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
					elseif getPlayerVocation(cid) == 8 then
						doPlayerRemoveItem(cid,2160,500)
						return doPlayerSetSkill(cid, 3, 400)

			else
				doPlayerSendCancel(cid, "You need 5kk.")
				doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
	end
end