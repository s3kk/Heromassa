function onUse(cid, item, frompos, item2, topos)
if item.uid == 7456 then
queststatus = getPlayerStorageValue(cid,7456)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 noble axe!.")
doPlayerAddItem(cid,7456,1 )
setPlayerStorageValue(cid,7456,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 