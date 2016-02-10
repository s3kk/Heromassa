--
function onStepIn(cid, item, frompos, item2, topos)
 
tele = {x=10419, y=9947, z=7}
if item.uid ==2133 then
vocation = getPlayerVocation(cid)
if vocation == 1 and getPlayerLevel(cid) > 1 then
doTeleportThing(cid,tele)
doPlayerSendTextMessage(cid,22,"Bem-vindo ao Shrine, onde voce pode encantar suas armas.")
elseif getPlayerLevel(cid) > 1 then
doTeleportThing(cid,tele)
doPlayerSendTextMessage(cid,22,"Bem-vindo ao Shrine, onde voce pode encantar suas armas.")
elseif getPlayerLevel(cid) > 1 then
doTeleportThing(cid,tele)
doPlayerSendTextMessage(cid,22,"Bem-vindo ao Shrine,onde voce pode encantar suas armas.")
elseif getPlayerLevel(cid) > 1 then
doTeleportThing(cid,tele)
doPlayerSendTextMessage(cid,22,"Bem-vindo ao Shrine, onde voce pode encantar suas armas.")

else
doPlayerSendTextMessage(cid,22,"Você precisa de level 8 para ir a sala de encantamento.")
end
return 0
end
return 1
end