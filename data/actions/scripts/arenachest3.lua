-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 9606 then
   		queststatus = getPlayerStorageValue(cid,9502)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Justice Seeker.")
   			doPlayerAddItem(cid,7390,1)
   			setPlayerStorageValue(cid,9502,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 9607 then
   		queststatus = getPlayerStorageValue(cid,9502)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Blessed Sceptre.")
   			doPlayerAddItem(cid,7429,1)
   			setPlayerStorageValue(cid,9502,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 9608 then
   		queststatus = getPlayerStorageValue(cid,9502)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Royal Axe.")
   			doPlayerAddItem(cid,7434,1)
   			setPlayerStorageValue(cid,9502,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
