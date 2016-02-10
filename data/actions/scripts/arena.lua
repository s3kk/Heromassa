function onUse(cid, item, frompos, item2, topos)

	if item.uid == 7001 and item.itemid == 1945 then
		player1pos = {x=10119, y=10035, z=9, stackpos=253}
		player1 = getThingfromPos(player1pos)

		player2pos = {x=10131, y=10035, z=9, stackpos=253}
		player2 = getThingfromPos(player2pos)

		if player1.itemid > 0 and player2.itemid > 0 then
			arenalevel = 100
			player1level = getPlayerLevel(player1.uid)
			player2level = getPlayerLevel(player2.uid)

			if player1level >= arenalevel and player2level >= arenalevel then
				for arenax = 10121,10129 do
					for arenay = 10035,10035 do
						arenapos = {x=arenax, y=arenay, z=9, stackpos=253}
						arenacreature = getThingfromPos(arenapos)

						if arenacreature.itemid > 0 then
							doPlayerSendCancel(cid,"Espere o duelo terminar.")
							return 1
						end
					end
				end

				nplayer1pos = {x=10121, y=10035, z=9}
				nplayer2pos = {x=10129, y=10035, z=9}

				doSendMagicEffect(player1pos,2)
				doSendMagicEffect(player2pos,2)

				doTeleportThing(player1.uid,nplayer1pos)
				doTeleportThing(player2.uid,nplayer2pos)

				doSendMagicEffect(nplayer1pos,10)
				doSendMagicEffect(nplayer2pos,10)

				doPlayerSendTextMessage(player1.uid,18,"FIGHT!")
				doPlayerSendTextMessage(player2.uid,18,"FIGHT!")
			else
				doPlayerSendCancel(cid,"Os dois lutadores devem ter no minimo level 100.")
			end
		else
			doPlayerSendCancel(cid,"Voce precisa de 2 jogadores para lutar.")
		end
	else
		return 0
   	end

	return 1
end