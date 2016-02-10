function onUse(cid, item, frompos, item2, topos)
if item.uid == 1355 then
queststatus = getPlayerStorageValue(cid,1355)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou seu bonus de paladin!.")
doPlayerAddItem(cid,2455,1)
doPlayerAddItem(cid,2543,1)
doPlayerAddItem(cid,2662,1)
setPlayerStorageValue(cid,1355,1)
else
doPlayerSendTextMessage(cid,22,"Você ja ganhou este bonus!")
end
else
return 0
end
return 1
end 