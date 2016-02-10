-------------------------------------------------
---------------Script By Noob Less---------------
-------------------------------------------------

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'spellbook of enlightenment', 'enlightenment'},	8900, 100000,	'spellbook of enlightenment')
shopModule:addBuyableItem({'spellbook of warding', 'warding'},	                8901, 120000,	'spellbook of warding')
shopModule:addBuyableItem({'spellbook of mind control', 'mind control'},	8902, 140000,	'spellbook of mind control')
shopModule:addBuyableItem({'spellbook of lost souls', 'lost souls'},	        8903, 160000,	'spellbook of lost souls')

npcHandler:addModule(FocusModule:new())
