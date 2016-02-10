function onUse(cid, item, frompos, item2, topos)
if item.uid == 2492 then
queststatus = getPlayerStorageValue(cid,2492)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 dragon scale mail!.")
doPlayerAddItem(cid,2492,1 )
setPlayerStorageValue(cid,2492,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 