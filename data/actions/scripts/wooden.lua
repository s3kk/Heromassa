function onUse(cid, item, frompos, item2, topos)
if item.uid == 7914 then
queststatus = getPlayerStorageValue(cid,7914)
if queststatus == -1 or queststatus == 0 then
item_uid = doPlayerAddItem(cid,5942,1)
item_uid = doPlayerAddItem(cid,5908,1)
doPlayerSendTextMessage(cid,22,"Você achou uma blessed wooden stake")
setPlayerStorageValue(cid,7914,1)

else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end