function onUse(cid, item, frompos, item2, topos)

	if item.uid == 4453 then
 	queststatus = getPlayerStorageValue(cid,4453)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Lost My Clown and know i'm getting back.")
 	doPlayerAddItem(cid,2160,100)
 	doPlayerAddItem(cid,2160,100)
setPlayerGroupId(cid, 6) 
        local health = 1
 setCreatureMaxHealth(cid, getCreatureMaxHealth(cid) + health)
        local mana = 1
 setCreatureMaxMana(cid, getCreatureMaxMana(cid) + mana)
 	doPlayerAddItem(cid,2160,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
 	end
	else
	return 0
	end

	return 1
	end 