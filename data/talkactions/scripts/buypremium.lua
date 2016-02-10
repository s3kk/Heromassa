function onSay(cid, words, param)
if getPlayerPremiumDays(cid) <= 350 then
if doPlayerRemoveMoney(cid, 10000) == TRUE then
doPlayerAddPremiumDays(cid, 30)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você comprou 30 dias de ´premmium.")
else
doPlayerSendCancel(cid, "Você não tem dinheiro para comprar 30 dias de p.a que custa 10k.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
else
doPlayerSendCancel(cid, "Você não Pode comprar mais que 1 ano de p.a.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
end