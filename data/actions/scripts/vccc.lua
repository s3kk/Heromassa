function onUse(cid, item, frompos, item2, topos)

doorpos = {x=frompos.808, y=frompos.1189, z=frompos.7}
playerpos = getPlayerPosition(cid)
playervoc = getPlayerVocation(cid)
if item.uid == (1090) and doorpos.x == POSX and doorpos.y == POSY and doorpos.z == POSZ then
if playervoc == (5) if playervoc == (6) if playervoc == (7) if playervoc == (8) then
doTeleportThing(cid,doorpos)
elseif playervoc == 1 playervoc == 2 playervoc == 3 playervoc == 4 then <---vocs erradas
doPlayerSendTextMessage(cid,22,"Area para vips,adquira já a sua!.")
end
end
return 1
end