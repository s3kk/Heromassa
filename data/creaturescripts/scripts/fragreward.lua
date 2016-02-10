function onKill(cid, target, lastHit)
local reward = {
        item = 2160, --ITEM ID!
doPlayerAddExperience(cid, 100000)
        count = 1 -- How many?
}
        if(isPlayer(cid) and isPlayer(target)) then
	if getPlayerIp(cid) ~= getPlayerIp(target) then
                doPlayerAddItem(cid, reward.item, reward.count)
else
doPlayerAddExperience(cid, 100000)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"exppp.")
                end
end
return TRUE
end