function onUse(cid, item, frompos, item2, topos)
if item.uid == 2444 then
queststatus = getPlayerStorageValue(cid,2444)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 hammer of wrath!.")
doPlayerAddItem(cid,2444,1 )
setPlayerStorageValue(cid,2444,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 