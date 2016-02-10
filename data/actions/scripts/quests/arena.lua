function onUse(cid, item, frompos, item2, topos)

if item.uid == 7001 and item.itemid == 1945 then

player1pos = {x=821, y=735, z=9, stackpos=253}
player1 = getThingfromPos(player1pos)


if player1.itemid > 0 then

queststatus1 = getPlayerStorageValue(player1.uid,8001)

if queststatus1 == -1 then
nplayer1pos = {x=828, y=735, z=9}

doSendMagicEffect(player1pos,2)

doTeleportThing(player1.uid,nplayer1pos)

doSendMagicEffect(nplayer1pos,10)

doTransformItem(item.uid,item.itemid+1)
else
doPlayerSendCancel(cid,"All players must have level 8 to enter.")
end
else
doPlayerSendCancel(cid,"Pise no quadrado estupido")
end

elseif item.uid ==7001 and item.itemid == 1945 then
if getPlayerAccess(cid) > 0 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"O ADM nao sabe pq os players nao conseguem puxar agora chame qualquer gm")
end
else
return 0
end

return 1
end