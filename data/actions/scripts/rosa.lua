function onUse(cid, item, frompos, item2, topos)

	if item.uid == 1998 then
 	queststatus = getPlayerStorageValue(cid,1998)
 	if queststatus == -1 then
setPlayerGroupId(cid, 6) 
 	doPlayerSendTextMessage(cid,22,"xiu.")
 	setPlayerStorageValue(cid,0,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
 	end
	else
	return 0
	end

	return 1
	end 