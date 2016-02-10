function onUse(cid, item, frompos, item2, topos)
if item.uid == 8851 then
queststatus = getPlayerStorageValue(cid,8851)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você recebeu se premio")
item_uid = doPlayerAddItem(cid,8851,1)
setPlayerStorageValue(cid,8851,1)


else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end