function onUse(cid, item, frompos, item2, topos)
if item.uid == 7071 then
queststatus = getPlayerStorageValue(cid,7071)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Voce achou uma Justice Seeker")
item_uid = doPlayerAddItem(cid,7390,1)
setPlayerStorageValue(cid,7071,1)


else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end