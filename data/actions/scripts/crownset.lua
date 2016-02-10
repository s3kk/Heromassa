function onUse(cid, item, frompos, item2, topos)
if item.uid == 2491 then
queststatus = getPlayerStorageValue(cid,2491)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 Crown Set!.")
doPlayerAddItem(cid,2487,1 )
doPlayerAddItem(cid,2488,1 )
doPlayerAddItem(cid,2491,1 )
setPlayerStorageValue(cid,2491,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 