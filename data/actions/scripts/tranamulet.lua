function onUse(cid, item, frompos, item2, topos) 
level = getPlayerLevel(cid)
if level >= 20 then
local outfit = {
lookType = 101,
lookHead = 20,
lookBody = 30,
lookLegs = 40,
lookFeet = 50,
lookAddons = 0
}
doSetCreatureOutfit(cid, outfit, 600000 )
elsedoPlayerSendTextMessage(cid,22,"Você não tem level necessário para usar o amuleto.")
end
end