mystic = {x=307, y=135, z=6}
enigma = {x=356, y=411, z=6}
liberty = {x=3107, y=3291, z=6}
vertigo = {x=2962, y=2808, z=7}
jungle = {x=132, y=169, z=7}


local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false

function onThingMove(creature, thing, oldpos, oldstackpos, cid, item, frompos, item2, topos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('Good bye then.')
          focus = 0
          talk_start = 0
  	end
end


function onCreatureTurn(creature)

end


function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)
	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hiho ' .. getCreatureName(cid) .. '! 	Can I take you to,Vip city,ice island,arumha,vertigo,jungle city. To go where they want?. Pointing out that travel costs 50 gps.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

  	elseif focus == cid then
		talk_start = os.clock()

			if msgcontains(msg, 'vip city') then
				if(doPlayerRemoveMoney(cid, 50) == TRUE) then
					doTeleportThing(cid,mystic)
    					doSendMagicEffect(mystic,10)
					selfSay("Let's GO")
					focus = 0
					talk_start = 0
				else
					selfSay("Sorry, you don\'t have enough money.")
				end

			elseif msgcontains(msg, 'ice island') then
				if(doPlayerRemoveMoney(cid, 50) == TRUE) then
					doTeleportThing(cid,enigma)
    					doSendMagicEffect(enigma,10)
					selfSay("Let's GO")
					focus = 0
					talk_start = 0
				else
					selfSay("Sorry, you don\'t have enough money.")
				end

			elseif msgcontains(msg, 'arumha') then
				if(doPlayerRemoveMoney(cid, 50) == TRUE) then
					doTeleportThing(cid,liberty)
    					doSendMagicEffect(liberty,10)
					selfSay("Let's GO")
					focus = 0
					talk_start = 0
				else
					selfSay("Sorry, you don\'t have enough money.")
				end

			elseif msgcontains(msg, 'vertigo') then
				if(doPlayerRemoveMoney(cid, 50) == TRUE) then
					doTeleportThing(cid,vertigo)
    					doSendMagicEffect(vertigo,10)
					selfSay("Let's GO")
					focus = 0
					talk_start = 0
				else
					selfSay("Sorry, you don\'t have enough money.")
				end

			elseif msgcontains(msg, 'jungle city') then
				if(doPlayerRemoveMoney(cid, 50) == TRUE) then
					doTeleportThing(cid,jungle)
    					doSendMagicEffect(jungle,10)
					selfSay("Let's GO")
					focus = 0
					talk_start = 0
				else
					selfSay("Sorry, you don\'t have enough money.")
				end



		

        elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
            selfSay('Bye ' .. creatureGetName(cid) .. ', go back.')
            focus = 0
            talk_start = 0

        elseif msg ~= "" then
            selfSay('how? I do not understand!')
            talk_state = 0
        end
    end
end

function onCreatureChangeOutfit(creature)
end

function onThink()
    doNpcSetCreatureFocus(focus)
    if (os.clock() - talk_start) > 30 then
        if focus > 0 then
            selfSay('Next please!!...')
        end
        focus = 0
        talk_start = 0
    end
    if focus ~= 0 then
        if getDistanceToCreature(focus) > 5 then
            selfSay('Good Bye')
            focus = 0
            talk_start = 0
        end
    end
end
