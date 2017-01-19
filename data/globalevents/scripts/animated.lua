local positions = {
    ["Heromassa"] = {x = 10153, y = 10048, z = 7},
    ["Teleports"] = {x = 10146, y = 10042, z = 7},
    ["Deposit"] = {x = 10169, y = 10055, z = 7},
	["BattleEvt"] = {x = 10147, y = 10042, z = 7},
	["Castle24H"] = {x = 10144, y = 10042, z = 7},
	["Supreme"] = {x = 10145, y = 10042, z = 7},
	["Trainers"] = {x = 10148, y = 10042, z = 7},
	["Lord Vampire"] = {x = 10149, y = 10042, z = 7}
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end

    return true
end