function onUse(cid, item, frompos, item2, topos)
if item.uid == 6528 then
queststatus = getPlayerStorageValue(cid,6528)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 Avenger!.")
doPlayerAddItem(cid,6528,1 )
setPlayerStorageValue(cid,6528,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 