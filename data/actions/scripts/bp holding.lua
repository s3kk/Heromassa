function onUse(cid, item, frompos, item2, topos)
if item.uid == 2365 then
queststatus = getPlayerStorageValue(cid,2365)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 bp of holding!.")
doPlayerAddItem(cid,2365,1 )
setPlayerStorageValue(cid,2365,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 