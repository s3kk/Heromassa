function onUse(cid, item, frompos, item2, topos)

item1pos = {x=957, y=979, z=9, stackpos=255} --item1pos
item2pos = {x=957, y=980, z=9, stackpos=255} --item2pos
item3pos = {x=957, y=980, z=9, stackpos=255} --item3pos
item1 = getThingfromPos(item1pos)
item2 = getThingfromPos(item2pos)
item3 = getThingfromPos(item3pos)


if item.itemid == 1945 and item1.itemid == 2516 and item2.itemid == 5901 or item1.itemid == 5901 and item2.itemid == 2516 then
doRemoveItem(item1.uid,1)
doSendMagicEffect(item1pos,13)
doRemoveItem(item2.uid,1)
doSendMagicEffect(item2pos,13)
doCreateItem(2492,1, item3pos)
doSendMagicEffect(item3pos,13)
doPlayerSendTextMessage(cid,22,'Forjado!')

elseif item.uid == 9010 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
return 0
end

return 1

end