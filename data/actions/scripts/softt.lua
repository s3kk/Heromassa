function onUse(cid, item, frompos, item2, topos)
if item.uid == 9876 then
queststatus = getPlayerStorageValue(cid,9876)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou uma soft boots!.")
doPlayerAddItem(cid,6132,1)
doPlayerAddExp(cid,1)
setPlayerStorageValue(cid,9876,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 