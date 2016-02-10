function onUse(cid, item, frompos, item2, topos)
if item.uid == 3553 then
queststatus = getPlayerStorageValue(cid,3553)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você achou uma Infernal bolt")
item_uid = doPlayerAddItem(cid,6529,1)
setPlayerStorageValue(cid,3553,1)


else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end