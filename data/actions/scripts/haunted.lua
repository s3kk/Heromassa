function onUse(cid, item, frompos, item2, topos)
if item.uid == 7407 then
queststatus = getPlayerStorageValue(cid,7407)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 eclipe blade!.")
doPlayerAddItem(cid,7407,1 )
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