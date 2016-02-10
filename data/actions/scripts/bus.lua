function onUse(cid, item, pos, frompos, item2, topos)

pos = {x=1538, y=1421, z=15}


aceso = getPlayerAccess(cid)
msg = ""
msgN = ""
posplayer = getPlayerPosition(cid)

if item.uid == 2127 then
if aceso >= 0 then

doPlayerSendTextMessage(cid, 22, msg)
getThingfromPos(posplayer)
doSendMagicEffect(posplayer,2)
doTeleportThing(cid,pos)
doSendMagicEffect(pos,10)

else
doPlayerSendTextMessage(cid, 22, msgN)

end
end
end