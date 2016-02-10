function onUse(cid, item, frompos, item2, topos)
if item.uid == 2506 then
queststatus = getPlayerStorageValue(cid,2506)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você encontrou 1 dragon scale helmet!.")
doPlayerAddItem(cid,2506,1 )
setPlayerStorageValue(cid,2506,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 