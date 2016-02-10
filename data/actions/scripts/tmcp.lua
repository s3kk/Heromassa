

function onUse(cid, item, topos)

pos = {x=1008, y=1052, z=7}
PlayerTown = getPlayerTown(cid)
msg = "Voce virou morador da Forbidden City!"
msgN = "Voce ja é desta cidade."
posplayer = getPlayerPosition(cid)

if item.actionid == 7071 and getPlayerTown(cid) ~= 1 then
doPlayerSendTextMessage(cid, 22, msg)
getThingfromPos(posplayer)
doSendMagicEffect(posplayer,2)
doTeleportThing(cid,pos)
doSendMagicEffect(pos,10)
doPlayerSetTown(cid,1)
else
doPlayerSendTextMessage(cid, 22, msgN)
doSendMagicEffect(posplayer,2)
doTeleportThing(cid,pos)
doSendMagicEffect(pos,10)
end
end