function onUse(cid, item, frompos, item2, topos)
if item.uid == 7008 then
queststatus = getPlayerStorageValue(cid,100)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Parabéns Voce recebeu seu premio.")
doPlayerAddItem(cid,2433,1)
setPlayerStorageValue(cid,100,1)
else
doPlayerSendTextMessage(cid,22,"Voce ja recebeu seu premio.")
end
end
if item.uid == 7009 then
queststatus = getPlayerStorageValue(cid,100)
if queststatus ~= 1 then
doPlayerSendTextMessage(cid,22,"Parabéns Voce recebeu seu premio.")
doPlayerAddItem(cid,8924,1)
setPlayerStorageValue(cid,100,1)
else
doPlayerSendTextMessage(cid,22,"Voce ja recebeu seu premio.")
end
end
if item.uid == 7010 then
queststatus = getPlayerStorageValue(cid,100)
if queststatus ~= 1 then
doPlayerSendTextMessage(cid,22,"Parabéns Voce recebeu seu premio.")
doPlayerAddItem(cid,7405,1)
setPlayerStorageValue(cid,100,1)
else
doPlayerSendTextMessage(cid,22,"Voce ja recebeu seu premio.")
end
end
if item.uid == 7011 then
queststatus = getPlayerStorageValue(cid,100)
if queststatus ~= 1 then
doPlayerSendTextMessage(cid,22,"Parabéns Voce recebeu seu premio.")
doPlayerAddItem(cid,7415,1)
setPlayerStorageValue(cid,100,1)
else
doPlayerSendTextMessage(cid,22,"Voce ja recebeu seu premio.")
end
end
if item.uid == 7012 then
queststatus = getPlayerStorageValue(cid,100)
if queststatus ~= 1 then
doPlayerSendTextMessage(cid,22,"Parabéns Voce recebeu seu premio.")
doPlayerAddItem(cid,7366,1)
setPlayerStorageValue(cid,100,1)
else
doPlayerSendTextMessage(cid,22,"Voce ja recebeu seu premio.")
end
end
return 1
end
if item.uid == 7013 then
queststatus = getPlayerStorageValue(cid,100)
if queststatus ~= 1 then
doPlayerSendTextMessage(cid,22,"Parabéns Voce recebeu seu premio.")
doPlayerAddItem(cid,8852,1)
setPlayerStorageValue(cid,100,1)
else
doPlayerSendTextMessage(cid,22,"Voce ja recebeu seu premio.")
end
end