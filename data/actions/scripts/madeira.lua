function onUse(cid, item, frompos, item2, topos)
if item.uid == 10001 then
queststatus = getPlayerStorageValue(cid,10001)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você pegou as coins")
item_uid = doPlayerAddItem(cid,2160,2)
setPlayerStorageValue(cid,10001,1)


else
doPlayerSendTextMessage(cid,22,"ja foi retirada madeira desta arvore.")
end
else
return 0
end
return 1
end