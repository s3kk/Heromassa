function onUse(cid, item, frompos, item2, topos)
if item.uid == 9999 then
queststatus = getPlayerStorageValue(cid,9999)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você recebeu seu premio por ser vip!.")
doPlayerAddExp(cid,300000000 )
setPlayerStorageValue(cid,9999,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 