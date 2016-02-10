local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end
-- OTServ event handling functions end


-------------------------------------Healing Part------------------------------
function healCreature(cid, message, keywords, parameters)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
	if(getCreatureHealth(cid) < 65) then
		local position = getCreaturePosition(cid)
		doSendMagicEffect(position, 12)
		local healHP = 65 - getCreatureHealth(cid)
		doCreatureAddHealth(cid,healHP)
		doRemoveCondition(cid, CONDITION_ENERGY)
		doRemoveCondition(cid, CONDITION_FIRE)
		doRemoveCondition(cid, CONDITION_POISON)
		doRemoveCondition(cid, CONDITION_FREEZING)
		doRemoveCondition(cid, CONDITION_DAZZLED)
		doRemoveCondition(cid, CONDITION_CURSED)
		npcHandler:say('You are looking really bad. Let me heal your wounds.', cid)
	else
		npcHandler:say('You aren\'t looking really bad, ' .. getCreatureName(cid) .. '. I only help in cases of real emergencies. Raise your health simply by eating food.', cid)
	end	
	return true
end

function healCreatureNoMsg(cid, maxheal)
	if(getCreatureHealth(cid) < 65) then
		local position = getCreaturePosition(cid)
		doSendMagicEffect(position, 12)
		local healHP = 65 - getCreatureHealth(cid)
		doCreatureAddHealth(cid,healHP)
		doRemoveCondition(cid, CONDITION_ENERGY)
		doRemoveCondition(cid, CONDITION_FIRE)
		doRemoveCondition(cid, CONDITION_POISON)
		doRemoveCondition(cid, CONDITION_FREEZING)
		doRemoveCondition(cid, CONDITION_DAZZLED)
		doRemoveCondition(cid, CONDITION_CURSED)
	end	
	return true
end

function greet(cid, message, keywords, parameters)       
		if(getCreatureHealth(cid) >= 65) then
			npcHandler:setMessage(MESSAGE_GREET, 'Hello, ' .. getCreatureName(cid) .. '! I will heal you if you are injured. Feel free to ask me for help.')
		else
		npcHandler:setMessage(MESSAGE_GREET, 'Hello, ' .. getCreatureName(cid) .. '! You are looking really bad. Let me heal your wounds.')
			healCreatureNoMsg(cid, 65)
		end	
		return true
end

npcHandler:setCallback(CALLBACK_GREET, greet)
keywordHandler:addKeyword({'heal'},     healCreature, {maxheal = 65})

npcHandler:addModule(FocusModule:new())