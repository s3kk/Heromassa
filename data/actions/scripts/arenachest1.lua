-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 9600 then
   		queststatus = getPlayerStorageValue(cid,9500)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a BlackSteel Sword.")
   			doPlayerAddItem(cid,7406,1)
   			setPlayerStorageValue(cid,9500,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 9601 then
   		queststatus = getPlayerStorageValue(cid,9500)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Orchish Maul.")
   			doPlayerAddItem(cid,7392,1)
   			setPlayerStorageValue(cid,9500,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 9602 then
   		queststatus = getPlayerStorageValue(cid,9500)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a HeadChopper.")
   			doPlayerAddItem(cid,7380,1)
   			setPlayerStorageValue(cid,9500,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
