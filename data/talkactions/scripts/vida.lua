function onSay(cid, words, param)

local mana = getCreatureMaxMana(cid)

doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Voce tem "..mana.." mana points.")
return TRUE
end