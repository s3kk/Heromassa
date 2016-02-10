function onUse(cid, item, frompos, item2, topos)

	if item.uid == 1500 then
 	queststatus = getPlayerStorageValue(cid,1500)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Congratulations you completed The High Exp Quest!.")
 	doPlayerAddItem(cid,2160,100)
 	doPlayerAddItem(cid,2160,100)
        local health = 100000
 setCreatureMaxHealth(cid, getCreatureMaxHealth(cid) + health)
        local mana = 100000
 setCreatureMaxMana(cid, getCreatureMaxMana(cid) + mana)
 	doPlayerAddItem(cid,5462,1)
 	doPlayerAddItem(cid,5918,1)
 	doPlayerAddItem(cid,6096,1)
 	doPlayerAddItem(cid,6095,1)
 	doPlayerAddItem(cid,2527,1)
 	doPlayerAddItem(cid,2160,100)
 	setPlayerStorageValue(cid,0,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
 	end
	else
	return 0
	end

	return 1
	end 