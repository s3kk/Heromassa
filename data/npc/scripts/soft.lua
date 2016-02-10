local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false

function onThingMove(creature, thing, oldpos, oldstackpos)

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
  		selfSay('Ola ' .. getCreatureName(cid) .. '! I can fix Worn Soft Boots for 50k, just say repair.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

  	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'ghfghdfhfghfghf') then
     selfSay('Eu não vendo as botas apenas reparo, se você quiser repará suas Worn Soft Boots diga: Repair.')
     
     elseif msgcontains(msg, 'yes') then
     selfSay('Se quiser reparar suas Worn Soft Boots diga: Repair.')

     elseif msgcontains(msg, 'hfghfghfhghgfh') then
			buy(cid,5941,getCount(msg),500)
                        selfSay('Para transformar sua wooden stake em blessed wooden stake fale com Eremo.')
     elseif msgcontains(msg, 'fghfhfghfghfgh') then
			buy(cid,5908,getCount(msg),10000)

     elseif msgcontains(msg, 'hfghfhfhgff') then
     if getPlayerStorageValue(cid,8586756) == 2 then
     selfSay('Obrigado, agora vou ler a carta, quando sair a próxima versão do Thyrania me pergunte sobre ela dizendo: carta.')
     setPlayerStorageValue(cid,8586757,1)
     else
     selfSay('Ah então você leu meu aviso... Estou contratando exploradores para achar minha garrafa em POH, se quiser saber mais diga: mission')
     end

     elseif msgcontains(msg, 'fghgfhfhfhfhffgf') then
     selfSay('A garrafa está numa pequena caverna rodiada por agua, somente nadando eh possivel chegar la, e para pegar a garrafa precisa do meu encantamento, se quiser ser encantado diga: enchant')
     
     elseif msgcontains(msg, 'gfhfhfhfhff') then
     if getPlayerStorageValue(cid,8586756) == 2 then
     selfSay('Você já foi encantado e pegou a garrafa.')
     else
     selfSay('Você foi encantado e agora pode pegar a garrafa, va e me traga a garrafa para eu poder lhe dar uma recompensa e talvez lhe contratar para outra missão.')
     setPlayerStorageValue(cid,8586756,1)
     end

     elseif msgcontains(msg, 'repair') then
     if doPlayerRemoveMoney(cid,50000) == 0 or doPlayerRemoveItem(cid,10021,1) == 0 then
     selfSay('Sorry, you don\'t have the item.')
     else
     doPlayerAddItem(cid,6132,1)
     selfSay('Here you are.')
     
          end

		elseif msgcontains(msg, 'bye') and focus == cid and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye, ' .. getCreatureName(cid) .. '!')
			focus = 0
			talk_start = 0
		end
	end
end


function onCreatureChangeOutfit(creature)

end

function onThink()
 
 if (os.clock() - talk_start) > 20 then
  		if focus > 0 then
  			selfSay('...')
  		end
  			focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('...')
 			focus = 0
 		end
 	end
end