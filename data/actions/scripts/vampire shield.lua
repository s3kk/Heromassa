function onUse(cid, item, frompos, item2, topos)
if item.uid == 2534 then
queststatus = getPlayerStorageValue(cid,2534)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 vampire shield!.")
doPlayerAddItem(cid,2534,1 )
setPlayerStorageValue(cid,2534,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 