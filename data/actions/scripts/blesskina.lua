function onUse(cid, item, frompos, item2, topos)
if item.uid == 1354 then
queststatus = getPlayerStorageValue(cid,1354)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou seu bonus de knight!.")
doPlayerAddItem(cid,3975,1)
doPlayerAddItem(cid,2430,1)
doPlayerAddItem(cid,2434,1)
doPlayerAddItem(cid,2451,1)
setPlayerStorageValue(cid,1354,1)
else
doPlayerSendTextMessage(cid,22,"Você ja ganhou este bonus!")
end
else
return 0
end
return 1
end 