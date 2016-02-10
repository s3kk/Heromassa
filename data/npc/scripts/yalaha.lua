--------------------------------------------------------------
----------Recharger Firewalker boots by Ricktcs---------------
--------------------------------------------------------------
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

function rechargeFirewalker(cid, message, keywords, parameters, node)
if(not npcHandler:isFocused(cid)) then
return false
end

local playermoney = getPlayerMoney(cid)
if playermoney >= 0 then
if doPlayerRemoveItem(cid,8981,1) == 1 then
doPlayerAddItem(cid, 9933, 1)
doPlayerRemoveMoney(cid, 0)
npcHandler:say("Voce precisa ir na zona de elfs em flower e subir em cima de um chao especial, o chao fika no solo e esta muito ao sul!", cid)
else
npcHandler:say("Voce nao tem o livro de yarhar.", cid)
end
else
npcHandler:say("You don't have enough money.", cid)
end
keywordHandler:moveUp(1)
return true
end

local node1 = keywordHandler:addKeyword({'yarhar jornal'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce trouxe meu jornal de yarhar? se voce trouxe diga yes e eu lhe darei mais informaçoes sobre yarhar'})
node1:addChildKeyword({'yes'}, rechargeFirewalker, {blessing = 1})
node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, moveup = 1, text = 'Hun..'})

keywordHandler:addKeyword({'trade'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Eu nao vendo nada, mais sou um ex-morador de yarhar city diga help para mais informaçao."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce precisa ir nas profundesas de forbidden city perto dos demons e pegar meu jornal."})

npcHandler:addModule(FocusModule:new())