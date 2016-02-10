function onUse(cid, item, frompos, item2, topos)
if item.uid == 7074 then
queststatus = getPlayerStorageValue(cid,7074)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Voce achou um Silver Goblet")
item_uid = doPlayerAddItem(cid,5806,1)
item_uid = doPlayerAddItem(cid,7342,1)
setPlayerStorageValue(cid,7074,1)


else
doPlayerSendTextMessage(cid,22,"Voce ja pegou seu premio.")
end
else
return 0
end
return 1
end