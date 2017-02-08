local config = {
priceForEachMessage = 10000, -- preço de cada mensagem
}
local storage = 13700

function onSay(cid, words, param, channel)
if(param == "") then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command requires param.")
return TRUE
end
if getPlayerStorageValue(cid,13700) <= -1 then
doPlayerSendCancel(cid, "Você nao tem Vip account.")
return TRUE
end

if(doPlayerRemoveMoney(cid, config.priceForEachMessage) == TRUE) then
doBroadcastMessage("[V.I.P] " .. getPlayerName(cid) .. " Agora Diz: " .. param .. "", MESSAGE_EVENT_ADVANCE)
else
doPlayerSendCancel(cid, "Você precisa de " .. config.priceForEachMessage .. " gps para enviar a messagem.")
end

return TRUE
end