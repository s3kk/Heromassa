function onSay(cid, words, param)
if getPlayerBlessing(cid,5) then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have already been blessed")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
else
if doPlayerRemoveMoney(cid, 50000) == TRUE then
for i = 1,5 do
doPlayerAddBlessing(cid,i)
end
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have received blessings!")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_ENERGYAREA)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You need 50,000 gp in backpack for blessings.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_ICEAREA)
end
end
end