function onUse(cid, item, pos, frompos, item2, topos)

pos = {x=1220, y=1143, z=8}


aceso = getPlayerAccess(cid)
msg = ""
msgN = ""
posplayer = getPlayerPosition(cid)

if item.uid == 1007 then
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