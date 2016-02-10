function onUse(cid, item, pos)

idcidade = 1
mensagem = 'Voce virou um morador da Taran City'

if item.uid == 3339 then
	doPlayerSetTown(cid,idcidade)
	doPlayerSendTextMessage(cid,22,mensagem)
return 1
end
endfunction onUse(cid, item, frompos, item2, topos)
piece1pos = {x=804, y=950, z=7, stackpos=1}
rockpos = {x=804, y=950, z=7, stackpos=1}
getpiece1 = getThingfromPos(piece1pos)
if item.uid == 3332 and item.itemid == 1484 and getpiece1.itemid == 1485 then
doRemoveItem(getpiece1.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 3332 and item.itemid == 1485 then
doCreateItem(1485,1,rockpos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end