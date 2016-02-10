function onSay(cid, words, param)

local voc = getCreatureName(cid)

doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "seu nome é "..voc.." .")

end