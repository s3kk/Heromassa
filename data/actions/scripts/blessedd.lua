function onUse(cid, item, frompos, item2, topos)
if item.uid == 1417 then
queststatus = getPlayerStorageValue(cid,1417)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou uma blessed legs e uma blessed robe!.")
doPlayerAddItem(cid,2469,1)
doPlayerAddItem(cid,2660,1)
setPlayerStorageValue(cid,1417,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 