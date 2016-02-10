function onStepIn(cid, item, pos)

newpos = {x=1019, y=1030, z=7}
lastpos = getPlayerPosition(cid)
msg = "Only vip players can enter"

if isPremium(cid) == TRUE and item.actionid == 10200 then
doSendMagicEffect(cid,2)
doTeleportThing(cid,newpos)
doSendMagicEffect(newpos,10)
else
doTeleportThing(cid,lastpos)
doPlayerSendTextMessage(cid, 22, msg)
end

end