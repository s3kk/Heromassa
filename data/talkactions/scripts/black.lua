function onSay(cid, words, chanel, param)
if getCreatureSkullType(cid) == SKULL_BLACK then
if doPlayerRemoveMoney(cid, 1000000) then
doCreatureSetSkullType(cid, SKULL_NONE)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Black Skull removed for: " .. COST)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
else
doPlayerSendCancel(cid, "You don't have enough money.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
else
doPlayerSendCancel(cid, "You are not with Black Skull.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
end