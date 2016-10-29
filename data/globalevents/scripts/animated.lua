local positions = {
    ["Heromassa"] = {x = 10160, y = 10054, z = 7},
    ["Teleports"] = {x = 10152, y = 10055, z = 7},
    ["Deposit"] = {x = 10169, y = 10055, z = 7},
	["BattleEvt"] = {x = 10152, y = 10048, z = 7},
	["Castle24H"] = {x = 10152, y = 10049, z = 7},
	["Quests"] = {x = 10152, y = 10050, z = 7}
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end

    return true
end