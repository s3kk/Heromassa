function onUse(cid, item, frompos, item2, topos)
if item.uid == 3789 then
queststatus = getPlayerStorageValue(cid,3789)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você achou uma fur boots")
item_uid = doPlayerAddItem(cid,7457,100)
setPlayerStorageValue(cid,3789,1)


else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end