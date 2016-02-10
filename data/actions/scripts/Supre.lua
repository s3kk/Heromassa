function onUse(cid, item, frompos, item2, topos)
if item.uid == 9090 then
queststatus = getPlayerStorageValue(cid,9090)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você completou a Supreme Quest.")
doPlayerAddItem(cid,8924,1 )
doPlayerAddItem(cid,7405,1 )
doPlayerAddItem(cid,7415,1 )
doPlayerAddItem(cid,7366,1 )
doPlayerAddItem(cid,2433,1 )
doPlayerAddItem(cid,8852,1 )
setPlayerStorageValue(cid,9090,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 