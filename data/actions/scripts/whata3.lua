--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==8890 then
queststatus = getPlayerStorageValue(cid,)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid,22,"Parabens!Voce completou a Whatahell Quest!")
doSendMagicEffect(topos,61)
coins_uid = doPlayerAddItem(cid,8890,1)
setPlayerStorageValue(cid,,1)
end
return 0
end
return 1
end
