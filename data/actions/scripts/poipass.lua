function onUse(cid, item, frompos, item2, topos)
piece1pos = {x=1336, y=1118, z=8, stackpos=1}
rockpos = {x=1336, y=1118, z=8, stackpos=1}
getpiece1 = getThingfromPos(piece1pos)
if item.uid == 4949 and item.itemid == 9827 and getpiece1.itemid == 1543 then
doRemoveItem(getpiece1.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 4949 and item.itemid == 9828 then
doCreateItem(1543,1,rockpos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Desculpe,Nao eh Possivel.")
end
return 1
end

