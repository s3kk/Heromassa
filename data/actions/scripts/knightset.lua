function onUse(cid, item, frompos, item2, topos)
if item.uid == 2476 then
queststatus = getPlayerStorageValue(cid,2476)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 Knight Set!.")
doPlayerAddItem(cid,2476,1 )
doPlayerAddItem(cid,2477,1 )
doPlayerAddItem(cid,2462,1 )
setPlayerStorageValue(cid,2476,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 