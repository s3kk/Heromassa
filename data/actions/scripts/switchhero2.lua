function onUse(cid, item, frompos, item2, topos)
piece1pos = {x=78, y=348, z=7, stackpos=1}
rockpos = {x=78, y=348, z=7, stackpos=1}
getpiece1 = getThingfromPos(piece1pos)
if item.uid == 2002 and item.itemid == 1945 and getpiece1.itemid == 1544 then
doRemoveItem(getpiece1.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 2002 and item.itemid == 1946 then
doCreateItem(1544,1,rockpos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end

