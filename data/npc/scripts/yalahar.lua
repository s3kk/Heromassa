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

shopModule:addBuyableItem({'yalahar backpack', 'yalahar backpack'},	9774, 200,	'yalahar backpack')
shopModule:addBuyableItem({'yalahar bag', 'yalahar bag'},	        9775, 100,	'yalahar bag')
shopModule:addBuyableItem({'yalahari helmet', 'yalahari helmet'},	9778, 500000,	'yalahari helmet')
shopModule:addBuyableItem({'yalahari armor', 'yalahari armor'},	        9776, 1500000,	'yalahari armor')
shopModule:addBuyableItem({'yalahari leg piece', 'yalahari leg piece'},	9777, 800000,	'yalahari leg piece')

npcHandler:addModule(FocusModule:new())
