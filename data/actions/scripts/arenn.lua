function onUse(cid, item, frompos, item2, topos)
if item.uid == 1413 then
queststatus = getPlayerStorageValue(cid,1413)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Parabens voce completou a Arena!.")
doPlayerAddItem(cid,6300,1)
doPlayerAddItem(cid,2358,1)
doPlayerAddItem(cid,6391,1)
setPlayerStorageValue(cid,1413,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 