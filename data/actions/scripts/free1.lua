function onUse(cid, item, frompos, item2, topos)
if item.uid == 2029 then
queststatus = getPlayerStorageValue(cid,2029)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"O GanGrel esta lhe dando 5 crystal coins.")
item_uid = doPlayerAddItem(cid,2160,5)
setPlayerStorageValue(cid,2029,1)


else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end