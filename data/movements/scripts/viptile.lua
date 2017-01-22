function onStepIn(cid, item, position, fromPosition)
    if not isPlayer(cid) then
        return true
    end
    
if getPlayerPremiumDays(cid) <= 0 then
doPlayerSendCancel(cid, "Only premium accounts may pass.")
doTeleportThing(cid, fromPosition)
doSendMagicEffect(position, 13)
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Welcome to the premium area.")
doSendMagicEffect(position, 12)
end
return true
end