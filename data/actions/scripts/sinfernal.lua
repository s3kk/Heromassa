function onUse(cid, item, frompos, item2, topos)
if item.uid == 9813 then
queststatus = getPlayerStorageValue(cid,9813)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou um infernal bolt!.")
doPlayerAddItem(cid,6529,1)
setPlayerStorageValue(cid,9813,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 