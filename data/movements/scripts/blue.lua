function onStepIn(cid, item, frompos, item2, topos)

local outfit = {lookType = 128, lookHead = 22, lookBody = 22, lookLegs = 22, lookFeet = 22, lookAddons = 3}

if item.actionid == 5031 and isPlayer(cid) then
doCreatureChangeOutfit(cid, outfit)
end
return true
end