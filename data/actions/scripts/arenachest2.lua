-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 9603 then
   		queststatus = getPlayerStorageValue(cid,9501)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Mystic Blade.")
   			doPlayerAddItem(cid,7384,1)
   			setPlayerStorageValue(cid,9501,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 9604 then
   		queststatus = getPlayerStorageValue(cid,9501)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Cranial Basher.")
   			doPlayerAddItem(cid,7415,1)
   			setPlayerStorageValue(cid,9501,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 9605 then
   		queststatus = getPlayerStorageValue(cid,9501)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Heroic Axe.")
   			doPlayerAddItem(cid,7389,1)
   			setPlayerStorageValue(cid,9501,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
