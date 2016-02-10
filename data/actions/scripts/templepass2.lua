function onUse(cid, item, frompos, item2, topos)
piece1pos = {x=900, y=1020, z=7, stackpos=1}
rockpos = {x=900, y=1020, z=7, stackpos=1}
getpiece1 = getThingfromPos(piece1pos)
if item.uid == 3331 and item.itemid == 1945 and getpiece1.itemid == 1241 then
doRemoveItem(getpiece1.uid,1)
doPlayerSendTextMessage(cid,18,"templo das mumy's aberta.")
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 3331 and item.itemid == 1946 then
doCreateItem(1241,1,rockpos)
doTransformItem(item.uid,item.itemid-1)
doPlayerSendTextMessage(cid,18,"templo das mumy's fechada.")
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end

