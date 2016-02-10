function onUse(cid, item, frompos, item2, topos)
if item.uid == 1725 then
queststatus = getPlayerStorageValue(cid,1725)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 100 crystal coin e um bonus de 5kk de experience!.")
doPlayerAddItem(cid,2160,100)
doPlayerAddExp(cid,5000000)
setPlayerStorageValue(cid,1725,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 