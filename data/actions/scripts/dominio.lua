-----SoccerFix by Chain-----
function onUse(cid, item, frompos, item2, topos)

playerpos = getPlayerPosition(cid)


if item2.itemid == 2109 and item.actionid ~= 1476 then
doPlayerAddItem(cid,2109,1)
doRemoveItem(item.uid,1)
doSendAnimatedText(playerpos, "Dominio!!!", TEXTCOLOR_BLUE)
else
doPlayerSendCancel(cid,"Bola apenas de demonstração ! :)")
end

return 1
end
--