function onUse(cid, item, frompos, item2, topos)
piece1pos = {x=835, y=1060, z=5, stackpos=1}
rockpos = {x=835, y=1060, z=5, stackpos=1}
getpiece1 = getThingfromPos(piece1pos)
if item.uid == 2021 and item.itemid == 1945 and getpiece1.itemid == 1304 then
doRemoveItem(getpiece1.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 2021 and item.itemid == 1946 then
doCreateItem(1304,1,rockpos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Desculpe,Nao Eh Possivel.")
end
return 1
end

