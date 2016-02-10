local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

function creatureSayCallback(cid, type, msg)
if(not npcHandler:isFocused(cid)) then
return false
end
--------------------------------------------------------------------------------
msg = string.lower(msg)
if msgcontains(msg, 'help') or msgcontains(msg, 'job') then
selfSay('Eu mando mensagens para os jogadores online. Para enviar, diga {msg}.', cid)

elseif msgcontains(msg, 'msg') or msgcontains(msg, 'message') then
selfSay('Você dejesa enviar uma mensagem por 5000 gold?', cid)
talk_state = 1

elseif msgcontains(msg, 'yes') and talk_state == 1 then
selfSay('Qual mensagem você dejesa enviar?', cid)
talk_state = 2

elseif msg ~= "" and msg ~= 'no' and talk_state == 2 then
if doPlayerRemoveMoney(cid,15000) then
broadcastMessage("[NPC Mensageiro] " ..getPlayerName(cid).. " says: "..msg.."")
talk_state = 0
else
selfSay('Você não tem dinheiro!', cid)
talk_state = 0
end

elseif msg == 'no' then
selfSay('Ok. Volte sempre.', cid)
end
return TRUE
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())