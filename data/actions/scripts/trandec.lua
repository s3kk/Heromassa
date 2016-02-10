function onUse(cid, item, frompos, item2, topos)
if item.uid == 5253 then

getPlayerStorageValue(cid,3518)
doPlayerSendTextMessage(cid,22,"Isso ai voce eh foda!.")
doPlayerAddItem(cid,7633,1)
setPlayerStorageValue(cid,3518,1)
else

doPlayerSendTextMessage(cid,22,"Isso ai voce eh foda!")


end

return 1

end 