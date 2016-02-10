function onUse(cid, item, frompos, item2, topos)
if item.uid == 2699 then
queststatus = getPlayerStorageValue(cid,2699)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou seu bonus de druid!.")
doPlayerAddItem(cid,2186,1)
doPlayerAddItem(cid,2662,1)
doPlayerAddItem(cid,3975,1)
setPlayerStorageValue(cid,2699,1)
else
doPlayerSendTextMessage(cid,22,"Você ja ganhou este bonus!")
end
else
return 0
end
return 1
end 