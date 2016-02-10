function onUse(cid, item, frompos, item2, topos)
if item.uid == 7729 then
queststatus = getPlayerStorageValue(cid,7729)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 golden rope e 1 light shovel!.")
doPlayerAddItem(cid,7731,1 )
doPlayerAddItem(cid,5710,1 )
setPlayerStorageValue(cid,7729,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 