function onUse(cid, item, frompos, item2, topos)

if item.uid == 70010 and item.itemid == 9825 then
player1pos = {x=10099, y=10034, z=9, stackpos=253}
player1 = getThingfromPos(player1pos)

player2pos = {x=10105, y=10034, z=9, stackpos=253}
player2 = getThingfromPos(player2pos)

if player1.itemid > 0 and player2.itemid > 0 then
arenalevel = 100
player1level = getPlayerLevel(player1.uid)
player2level = getPlayerLevel(player2.uid)

if player1level >= arenalevel and player2level >= arenalevel then
for arenax = 305,316 do
for arenay = 537,541 do
arenapos = {x=arenax, y=arenay, z=5, stackpos=253}
arenacreature = getThingfromPos(arenapos)

if arenacreature.itemid > 0 then
doPlayerSendCancel(cid,"Wait for current duel to end.")
return 1
end
end
end

nplayer1pos = {x=10099, y=10034, z=9}
nplayer2pos = {x=10105, y=10034, z=9}

doSendMagicEffect(player1pos,2)
doSendMagicEffect(player2pos,2)

doTeleportThing(player1.uid,nplayer1pos)
doTeleportThing(player2.uid,nplayer2pos)

doSendMagicEffect(nplayer1pos,10)
doSendMagicEffect(nplayer2pos,10)

doPlayerSendTextMessage(player1.uid,18,"FIGHT!")
doPlayerSendTextMessage(player2.uid,18,"FIGHT!")
else
doPlayerSendCancel(cid,"Os dois tem que ser level 100 para duelar.")
end
else
doPlayerSendCancel(cid,"Voce precisa de 2 jogadores para duelar.")
end
else
return 0
end

return 1
end