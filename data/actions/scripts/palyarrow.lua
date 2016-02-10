function onUse(cid, item, frompos, item2, topos)
if item.uid == 8852 then
queststatus = getPlayerStorageValue(cid,8852)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você recebeu se premio")
item_uid = doPlayerAddItem(cid,7840,1)
setPlayerStorageValue(cid,8852,1)


else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end