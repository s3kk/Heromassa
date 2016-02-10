function onSay(cid, words, param)

local health = getCreatureMaxHealth(cid)

doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_ORANGE, "Voce tem "..health.." health points.")
return TRUE
end