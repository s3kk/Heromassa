function onSay(cid, words, param, channel)
if getPlayerAccess(cid) > 3 then
return false
elseif getPlayerStorageValue(cid,9564) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, 'Você ainda não recebeu um novo número de confirmação anti-bot.')
elseif tonumber(param) == getPlayerStorageValue(cid,9564) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, 'Confirmado com sucesso. Bom jogo.')
doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, 'Antha anti-bot system by Gean Riot')
setPlayerStorageValue(cid,9564,-1)
setPlayerStorageValue(cid,9565,-1)
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING,'Número de confirmação errado. O seu número de confirmação é '..getPlayerStorageValue(cid,9564)..'.')
end
return true
end