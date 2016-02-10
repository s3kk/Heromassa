function onUse(cid, item, pos, frompos, item2, topos)

pos = {x=1227, y=1324, z=8}


aceso = getPlayerAccess(cid)
msg = "Voce esta na blue legs quest."
msgN = ""
posplayer = getPlayerPosition(cid)

if item.uid == 2123 then
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