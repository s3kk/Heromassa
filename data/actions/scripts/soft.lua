function onUse(cid, item, frompos, item2, topos)
if item.uid == 2640 then
queststatus = getPlayerStorageValue(cid,2390)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 soft boots+1kk+bp of holding!.")
doPlayerAddItem(cid,2640,1 )
doPlayerAddItem(cid,2365,1 )
doPlayerAddItem(cid,2160,100 )
setPlayerStorageValue(cid,2390,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 