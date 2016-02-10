function onUse(cid, item, frompos, item2, topos)
if item.uid == 15044 then

getPlayerStorageValue(cid,1354)
doPlayerSendTextMessage(cid,22,"Você pegou 100 brown mushroom!.")
doPlayerAddItem(cid,2789,100)
setPlayerStorageValue(cid,1354,1)
else

doPlayerSendTextMessage(cid,22,"Você pegou 100 brown mushroom!")


end

return 1

end 