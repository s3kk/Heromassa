function onUse(cid, item, frompos, item2, topos)
if item.uid == 2646 then
queststatus = getPlayerStorageValue(cid,2646)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 golden boots!.")
doPlayerAddItem(cid,2646,1 )
setPlayerStorageValue(cid,2646,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 