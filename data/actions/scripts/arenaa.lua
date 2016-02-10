function onUse(cid, item, frompos, item2, topos)
if item.uid == 5000 then
if item.itemid == 1945 then

player1pos = {x=798, y=734, z=9, stackpos=253}
player1 = getThingfromPos(player1pos)

player2pos = {x=805, y=734, z=9, stackpos=253}
player2 = getThingfromPos(player2pos)

player3pos = {x=798, y=734, z=9, stackpos=253}
player3 = getThingfromPos(player3pos)

player4pos = {x=805, y=734, z=9, stackpos=253}
player4 = getThingfromPos(player4pos)


if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then

player1level = getPlayerLevel(player1.uid)
player2level = getPlayerLevel(player2.uid)
player3level = getPlayerLevel(player3.uid)
player4level = getPlayerLevel(player4.uid)

questlevel = 200

if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and player4level >= questlevel then


	nplayer1pos = {x=798, y=734, z=9}
	nplayer2pos = {x=805, y=734, z=9}
	nplayer3pos = {x=798, y=734, z=9}
	nplayer4pos = {x=805, y=734, z=9}

	doSendMagicEffect(player1pos,2)
	doSendMagicEffect(player2pos,2)
	doSendMagicEffect(player3pos,2)
	doSendMagicEffect(player4pos,2)

	doTeleportThing(player1.uid,nplayer1pos)
	doTeleportThing(player2.uid,nplayer2pos)
	doTeleportThing(player3.uid,nplayer3pos)
	doTeleportThing(player4.uid,nplayer4pos)

	doSendMagicEffect(nplayer1pos,10)
	doSendMagicEffect(nplayer2pos,10)
	doSendMagicEffect(nplayer3pos,10)
	doSendMagicEffect(nplayer4pos,10)

	doTransformItem(item.uid,1945)

	else
	doPlayerSendCancel(cid,"Apenas level 200 podem entrar.")
	end
	else
	doPlayerSendCancel(cid,"Voce nao tem 2 players para entrar na arena.")
end
end
if item.itemid == 1945 then

starting={x=188, y=111, z=10, stackpos=253}
checking={x=starting.x, y=starting.y, z=starting.z, stackpos=starting.stackpos}
ending={x=210, y=122, z=10, stackpos=253}
players=0
totalmonsters=0
monster = {}
repeat
creature= getThingfromPos(checking)
if creature.itemid > 0 then
if getPlayerAccess(creature.uid) == 0 then
players=players+1
end
if getPlayerAccess(creature.uid) ~= 0 and getPlayerAccess(creature.uid) ~= 3 then
totalmonsters=totalmonsters+1
monster[totalmonsters]=creature.uid
	end
end
checking.x=checking.x+1
if checking.x>ending.x then
checking.x=starting.x
checking.y=checking.y+1
end
until checking.y>ending.y
if players==0 then
trash= {x=233, y=125, z=10}
current=0
repeat
current=current+1
doTeleportThing(monster[current],trash)
until current>=totalmonsters
doTransformItem(item.uid,1946)
end


end
end
return 1
end