function onUse(cid, item, frompos, item2, topos)
if item.uid == 7070 then
queststatus = getPlayerStorageValue(cid,7070)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você abriu o Caixao")
item_uid = doPlayerAddItem(cid,2152,10)
setPlayerStorageValue(cid,7070,1)


else
doPlayerSendTextMessage(cid,22,"O Caixao esta vazio.")
end
else
return 0
end
return 1
end