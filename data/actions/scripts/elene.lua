function onUse(cid, item, frompos, item2, topos)
if item.uid == 4041 then
queststatus = getPlayerStorageValue(cid,4041)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Voc� achou um Iten para o hunter outifit")
item_uid = doPlayerAddItem(cid,5947,1)
setPlayerStorageValue(cid,4041,1)


else
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.")
end
else
return 0
end
return 1
end