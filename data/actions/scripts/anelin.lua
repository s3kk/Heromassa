function onUse(cid, item, frompos, item2, topos)
if item.uid == 4547 then
queststatus = getPlayerStorageValue(cid,4547)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você achou um Rope!")
item_uid = doPlayerAddItem(cid,7731,1)
setPlayerStorageValue(cid,4547,1)


else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end