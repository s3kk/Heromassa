function onUse(cid, item, frompos, item2, topos)
if item.uid == 8905 then
queststatus = getPlayerStorageValue(cid,8905)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 rainbow shield!.")
doPlayerAddItem(cid,8905,1 )
setPlayerStorageValue(cid,8905,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 