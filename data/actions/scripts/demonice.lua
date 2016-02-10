function onUse(cid, item, frompos, item2, topos)
if item.uid == 3788 then
queststatus = getPlayerStorageValue(cid,3788)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você achou 100 demonic essences")
item_uid = doPlayerAddItem(cid,6500,100)
setPlayerStorageValue(cid,3788,1)


else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end