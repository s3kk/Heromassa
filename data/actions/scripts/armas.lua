function onUse(cid, item, frompos, item2, topos)

	if item.uid == 9995 then
				queststatus = getPlayerStorageValue(cid,100)
			if queststatus == -1 then
				doPlayerSendTextMessage(cid,22,"Parabens, voce recebeu seu premio!")
				doPlayerAddItem(cid,7415,1)
				setPlayerStorageValue(cid,100,1)
		else
				doPlayerSendTextMessage(cid,22,"Voce ja recebeu seu premio.")
			end
	end

	if item.uid == 9996 then
				queststatus = getPlayerStorageValue(cid,100)
			if queststatus ~= 1 then
				doPlayerSendTextMessage(cid,22,"Parabens, voce recebeu seu premio!")
				doPlayerAddItem(cid,7366,1)
				setPlayerStorageValue(cid,100,1)
		else
				doPlayerSendTextMessage(cid,22,"Voce ja recebeu seu premio.")
			end
	end

	if item.uid == 9997 then
				queststatus = getPlayerStorageValue(cid,100)
			if queststatus ~= 1 then
				doPlayerSendTextMessage(cid,22,"Parabens, voce recebeu seu premio!")
				doPlayerAddItem(cid,7405,1)
				setPlayerStorageValue(cid,100,1)
		else
				doPlayerSendTextMessage(cid,22,"Voce ja recebeu seu premio.")
			end
	end

	if item.uid == 9998 then
				queststatus = getPlayerStorageValue(cid,100)
			if queststatus ~= 1 then
				doPlayerSendTextMessage(cid,22,"Parabens, voce recebeu seu premio!")
				doPlayerAddItem(cid,8924,1)
				setPlayerStorageValue(cid,100,1)
		else
				doPlayerSendTextMessage(cid,22,"Voce ja recebeu seu premio.")
			end
	end

	if item.uid == 9999 then
				queststatus = getPlayerStorageValue(cid,100)
			if queststatus ~= 1 then
				doPlayerSendTextMessage(cid,22,"Parabens, voce recebeu seu premio!")
				doPlayerAddItem(cid,2433,1)
				setPlayerStorageValue(cid,100,1)
		else
				doPlayerSendTextMessage(cid,22,"Voce ja recebeu seu premio.")
			end
	end

return true

end