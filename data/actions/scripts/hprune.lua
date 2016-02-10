function onUse(cid, item, frompos, item2, topos)
mag = getPlayerMagLevel(cid)
if mag >= 1 then
doSendMagicEffect(topos,12)
doPlayerSay(cid,"HP!",66)
doPlayerAddHealth(cid,25000)
if item.type > 1 then
doChangeTypeItem(item.uid,item.type-1)
else
doRemoveItem(item.uid,1)
end
else
doSendMagicEffect(frompos,2)
doPlayerSendCancel(cid,"VOCE NAO TEM O ML NECESSARIO PARA USAR ESSA RUNA.")
end
return 1
end