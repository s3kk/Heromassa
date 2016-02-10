function onUse(cid, item, frompos, item2, topos)
if item.uid == 5861 then
queststatus = getPlayerStorageValue(cid,5861)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 100 crystal coins e um bonus de 1kk de experiencia!.")
doPlayerAddItem(cid,2160,100)
doPlayerAddExp(cid,1000000)
setPlayerStorageValue(cid,5861,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 