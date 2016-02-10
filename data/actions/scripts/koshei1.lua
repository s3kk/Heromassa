function onUse(cid, item, frompos, item2, topos)
if item.uid == 2125 then
queststatus = getPlayerStorageValue(cid,2125)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você desenterrou scarab coins")
item_uid = doPlayerAddItem(cid,2159,1)
setPlayerStorageValue(cid,2125,1)


else
doPlayerSendTextMessage(cid,22,"Voce ja desenterrou o scarab coin.")
end
else
return 0
end
return 1
end