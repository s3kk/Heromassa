function onUse(cid, item, frompos, item2, topos)
if item.uid == 2128 then
queststatus = getPlayerStorageValue(cid,2128)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você achou um Skull staff")
item_uid = doPlayerAddItem(cid,2160,100)
item_uid = doPlayerAddItem(cid,2646,1)
item_uid = doPlayerAddItem(cid,2494,1)
item_uid = doPlayerAddItem(cid,2495,1)


else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end