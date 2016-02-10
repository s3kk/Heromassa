local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'ring of healing'}, 2214, 3500, 'ring of healing')
shopModule:addBuyableItem({'life ring'}, 2168, 3000, 'life ring')
shopModule:addBuyableItem({'dwarven ring'}, 2213, 1500, 'dwarven ring')
shopModule:addBuyableItem({'energy ring'}, 2167, 2000, 'energy ring')
shopModule:addBuyableItem({'time ring'}, 2169, 5000, 'time ring')
shopModule:addBuyableItem({'sword ring'}, 2207, 1500, 'sword ring')
shopModule:addBuyableItem({'axe ring'}, 2208, 1100, 'axe ring')
shopModule:addBuyableItem({'club ring'}, 2209, 1100, 'club ring')

shopModule:addBuyableItem({'amulet of loss'}, 2173, 10000, 'amulet of loss')
shopModule:addBuyableItem({'scarf'}, 2661, 900, 'scarf')

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
