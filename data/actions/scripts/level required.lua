function onUse(cid, item, frompos, item2, topos)
if item.actionid == 3000 and getPlayerLevel(cid) >= 1500 and isPremium(cid) then
pos = getPlayerPosition(cid)
if pos.x == topos.x then
if pos.y < topos.y then
pos.y = topos.y + 1
else
pos.y = topos.y - 1
end
elseif pos.y == topos.y then
if pos.x < topos.x then
pos.x = topos.x + 1
else
pos.x = topos.x - 1
end
else
doPlayerSendTextMessage(cid,28,'stand up front in the door.')
return 1
end
doTeleportThing(cid,pos)
doSendMagicEffect(topos,12)
else
doPlayerSendTextMessage(cid,22,"You need level 1500.")
end
end
