function onUse(cid, item, pos, frompos, item2, topos)

pos = {x=160, y=52, z=7}
if item.itemid == 1945 and doPlayerRemoveItem(cid,5879,5) == 1 then
doTransformItem(item.uid,item.itemid+1)

elseif item.itemid == 1946 and doPlayerRemoveItem(cid,5879,5) == 1 then
doTransformItem(item.uid,item.itemid-1)

else
doPlayerSendCancel(cid,"Desculpe ,voce precisa de 5 Gs silk!")
return 1



end

aceso = getPlayerAccess(cid)
msg = "Voce esta na Inquisition ,cuidado!"
msgN = ""
posplayer = getPlayerPosition(cid)

if item.uid == 2122 then
if aceso >= 0 then

doPlayerSendTextMessage(cid, 22, msg)
getThingfromPos(posplayer)
doSendMagicEffect(posplayer,2)
doTeleportThing(cid,pos)
doSendMagicEffect(pos,10)

else
doPlayerSendTextMessage(cid, 22, msgN)

end
end
end