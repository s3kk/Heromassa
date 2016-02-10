function onUse(cid, item, frompos, item2, topos)
if isPremium(cid) then
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
doPlayerSendTextMessage(cid,22,'Fique De Frente Com A Porta.')
return 1
end
doTeleportThing(cid,pos)
doSendMagicEffect(topos,12)
else
doPlayerSendTextMessage(cid,18,"Somente Jogadores Vip Account.")
end
end
