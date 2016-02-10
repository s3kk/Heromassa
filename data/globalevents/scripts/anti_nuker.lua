--[[
Anti-Nuker by Beholder Caolho
]]--
local config = {
msg = "Tibia system has detected that you are multi clienting.",
maxMultiClients = 5,
allowGroupId = 2,
ignoreIps = {}
}
function onLogin(cid)
if getPlayerGroupId(cid) >= config.allowGroupId then
return TRUE
end
local number
local playersOnline = getPlayersOnline()
for _, pid in pairs(playersOnline) do
local pip = getPlayerIp(pid)
if cid ~= pid and getPlayerIp(cid) == pip and not isInArray(config.ignoreIps, doConvertIntegerToIp(getPlayerIp(cid))) then
number = (number or 0) + 1
if number > config.maxMultiClients then
return FALSE, doPlayerPopupFYI(cid, config.msg)
end
end
end
return TRUE
end