function onUse(cid, item, frompos, item2, topos)
if item.uid == 9090 then
queststatus = getPlayerStorageValue(cid,9090)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Você completou a LORD VAMPIRE!.")
doPlayerAddItem(cid,8976,1 )
doPlayerAddItem(cid,9778,1 )
doPlayerAddItem(cid,9776,1 )
doPlayerAddItem(cid,9777,1 )
doPlayerAddItem(cid,9933,1 )
setPlayerStorageValue(cid,9090,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
else
return 0
end
return 1
end 