function onUse(cid, item, frompos, item2, topos)

item1pos = {x=958, y=974, z=9} --item1pos
item2pos = {x=958, y=975, z=9} --item2pos
item1 = getThingfromPos(item1pos)
item2 = getThingfromPos(item2pos)
item3 = getThingfromPos(item3pos)

if item.itemid == 1945 and item1.itemid == 2160 and item2.itemid == 2150 then
doRemoveItem(item1.uid,1)
doSendMagicEffect(item1pos,13)
doRemoveItem(item2.uid,1)
doSendMagicEffect(item1pos,13)
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