function onSay(cid, words, param)
local tmp = string.explode(param, ",")

local player = getPlayerByName(tmp[1])
local premiumdays = tonumber(tmp[2])

if isPlayer(player) ~= true then
doPlayerSendCancel(cid "Sorry, not possible.")
return false
end
if premiumdays <= 0 or premiumdays == nil then
doPlayerSendCancel(cid, "Please, choose a number of premium days.")
return false
end
doPlayerAddPremiumDays(player, premiumdays)
doPlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "You received ".. premiumdays .." Premium Account from your account .. Enjoy all our advantages of a premium account ... Thanks. Relog your account please.")
return true
end