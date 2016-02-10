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

shopModule:addBuyableItem({'mace'}, 2398, 40, 'mace')
shopModule:addBuyableItem({'spike sword'}, 2383, 1500, 'spike sword')
shopModule:addBuyableItem({'serpent sword'}, 2409, 2500, 'serpent sword')
shopModule:addBuyableItem({'steel axe'}, 8601, 2000, 'steel axe')
shopModule:addBuyableItem({'bright sword'}, 2407, 10000, 'bright sword')

shopModule:addSellableItem({'mace'}, 2398, 30, 'mace')
shopModule:addSellableItem({'katana'}, 2412, 45, 'katana')
shopModule:addSellableItem({'scimitar'}, 2419, 120, 'scmitar')

shopModule:addSellableItem({'dragon slayer'}, 7402, 15000, 'dragon slayer')
shopModule:addSellableItem({'wyvern fang'}, 7408, 1500, 'wyvern fang')
shopModule:addSellableItem({'war hammer'}, 2391, 1000, 'war hammer')
shopModule:addSellableItem({'battle hammer'}, 2417, 216, 'battle hammer')
shopModule:addSellableItem({'battle axe'}, 2378, 256, 'battle axe')

shopModule:addSellableItem({'halberd'}, 2381, 400, 'halberd')
shopModule:addSellableItem({'double axe'}, 2387, 250, 'double axe')
shopModule:addSellableItem({'axe'}, 2386, 25, 'axe')
shopModule:addSellableItem({'dragon lance'}, 2414, 9000, 'dragon lance')
shopModule:addSellableItem({'knight axe'}, 2430, 2500, 'knight axe')
shopModule:addSellableItem({'fire axe'}, 2432, 8000, 'fire axe')
shopModule:addSellableItem({'chain armor'}, 2464, 70, 'chain armor')
shopModule:addSellableItem({'scale armor'}, 2483, 75, 'scale armor')

shopModule:addSellableItem({'dragon scale mail'}, 2492, 40000, 'dragon scale mail')
shopModule:addSellableItem({'noble armor'}, 2486, 740, 'noble armor')
shopModule:addSellableItem({'dark helmet'}, 2490, 150, 'dark helmet')
shopModule:addSellableItem({'steel helmet'}, 2457, 190, 'steel helmet')
shopModule:addSellableItem({'iron helmet'}, 2459, 145, 'iron helmet')

shopModule:addSellableItem({'warrior helmet'}, 2475, 5000, 'warrior helmet')
shopModule:addSellableItem({'dwarven shield'}, 2525, 400, 'dwarven shield')
shopModule:addSellableItem({'battle shield'}, 2513, 95, 'battle shield')
shopModule:addSellableItem({'guardian shield'}, 2515, 1900, 'guardian shield')
shopModule:addSellableItem({'tower shield'}, 2528, 7500, 'tower shield')
shopModule:addSellableItem({'dragon shield'}, 2516, 3000, 'dragon shield')

shopModule:addSellableItem({'dragonbone staff'}, 7430, 2000, 'dragonbone staff')
shopModule:addSellableItem({'dragon hammer'}, 2434, 1500, 'dragon hammer')
shopModule:addSellableItem({'broadsword'}, 2413, 500, 'broadsword')
shopModule:addSellableItem({'morning star'}, 2394, 300, 'morning star')
shopModule:addSellableItem({'crossbow'}, 2455, 150, 'crossbow')
shopModule:addSellableItem({'enchanted spear'}, 7367, 400, 'enchanted spear')
shopModule:addSellableItem({'wand of inferno'}, 2187, 3500, 'wand of inferno')
shopModule:addSellableItem({'medusa shield'}, 2536, 9000, 'medusa shield')
shopModule:addSellableItem({'royal helmet'}, 2498, 30000, 'royal helmet')
shopModule:addSellableItem({'crown armor'}, 2487, 12000, 'crown armor')
shopModule:addSellableItem({'blue robe'}, 2656, 10000, 'blue robe')
shopModule:addSellableItem({'skull staff'}, 2436, 6000, 'skull staff')
shopModule:addSellableItem({'serpent sword'}, 2409, 900, 'serpent sword')
shopModule:addSellableItem({'ice rapier'}, 2396, 5000, 'ice rapier')
shopModule:addSellableItem({'giant sword'}, 2393, 15000, 'giant sword')
shopModule:addSellableItem({'demon shield'}, 2520, 30000, 'demon shield')
shopModule:addSellableItem({'mastermind shield'}, 2514, 35000, 'mastermind shield')
shopModule:addSellableItem({'knight armor'}, 2476, 5000, 'knight armor')
shopModule:addSellableItem({'boots of haste'}, 2195, 25000, 'boots of haste')
shopModule:addSellableItem({'crown legs'}, 2488, 12000, 'crown legs')

shopModule:addSellableItem({'golden armor'}, 2466, 19000, 'golden armor')
shopModule:addSellableItem({'magic plate armor'}, 2472, 70000, 'magic plate armor')
shopModule:addSellableItem({'paladin armor'}, 8891, 14000, 'paladin armor')
shopModule:addSellableItem({'skullcracker armor'}, 8889, 18000, 'skullcracker armor')
shopModule:addSellableItem({'golden legs'}, 2470, 40000, 'golden legs')
shopModule:addSellableItem({'Lightning Legs'}, 7895, 10000, 'Lightning Legs')
shopModule:addSellableItem({'Knight Legs'}, 2477, 5000, 'Knight Legs')


function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
