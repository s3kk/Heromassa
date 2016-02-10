function onUse(cid, item)
queststatus = getPlayerStorageValue(cid,24530)
if queststatus == -1 then
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+10000)
     doRemoveItem(item.uid, 1)
doCreatureSay(cid, "voce recebeu 10000 Health Points Inicias!", TALKTYPE_ORANGE_1)
setPlayerStorageValue(cid,24530,1)
else
doPlayerSendTextMessage(cid,22,"Você ja fez essa quest!")
end
return TRUE
end


