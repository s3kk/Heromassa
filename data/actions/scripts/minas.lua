velocidade = 400
pessoass = 1
local function move(paramis)


local npos = {x=centerpos.x+1, y=centerpos.y, z=centerpos.z, stackpos=1}
local getplayer = getThingfromPos(npos)
if getplayer.itemid == 7122 and getplayer.actionid ~= 100 then
doTeleportThing(paramis.cida, {x=centerpos.x+1, y=centerpos.y, z=centerpos.z})
centerpos = {x=centerpos.x+1, y=centerpos.y, z=centerpos.z}
addEvent(move,  velocidade, paramis)
doSetItemOutfit(paramis.cida, 7131, 6000)
else
local npos = {x=centerpos.x+1, y=centerpos.y, z=centerpos.z, stackpos=1}
local getplayer = getThingfromPos(npos)
if getplayer.itemid == 7124 and getplayer.actionid ~= 100 then
doTeleportThing(paramis.cida, {x=centerpos.x+1, y=centerpos.y, z=centerpos.z})
centerpos = {x=centerpos.x+1, y=centerpos.y, z=centerpos.z}
addEvent(move,  velocidade, paramis)
doSetItemOutfit(paramis.cida, 7131, 6000)
else
local npos = {x=centerpos.x, y=centerpos.y+1, z=centerpos.z, stackpos=1}
local getplayer = getThingfromPos(npos)
if getplayer.itemid == 7121 and getplayer.actionid ~= 100 then
doTeleportThing(paramis.cida, {x=centerpos.x, y=centerpos.y+1, z=centerpos.z})
centerpos = {x=centerpos.x, y=centerpos.y+1, z=centerpos.z}
addEvent(move,  velocidade, paramis)
doSetItemOutfit(paramis.cida, 7132, 6000)
else

local npos = {x=centerpos.x, y=centerpos.y-1, z=centerpos.z, stackpos=1}
local getplayer = getThingfromPos(npos)
if getplayer.itemid == 7121 and getplayer.actionid == 100 then
doTeleportThing(paramis.cida, {x=centerpos.x, y=centerpos.y-1, z=centerpos.z})
centerpos = {x=centerpos.x, y=centerpos.y-1, z=centerpos.z}
addEvent(move,  velocidade, paramis)
doSetItemOutfit(paramis.cida, 7132, 6000)
else

local npos = {x=centerpos.x-1, y=centerpos.y, z=centerpos.z, stackpos=1}
local getplayer = getThingfromPos(npos)
if getplayer.itemid == 7122 and getplayer.actionid == 100 then
doTeleportThing(paramis.cida, {x=centerpos.x-1, y=centerpos.y, z=centerpos.z})
centerpos = {x=centerpos.x-1, y=centerpos.y, z=centerpos.z}
addEvent(move,  velocidade, paramis)
doSetItemOutfit(paramis.cida, 7131, 6000)
else
local npos = {x=centerpos.x, y=centerpos.y+1, z=centerpos.z, stackpos=1}
local getplayer = getThingfromPos(npos)
if getplayer.itemid == 7126 and getplayer.actionid ~= 100 then
doTeleportThing(paramis.cida, {x=centerpos.x, y=centerpos.y+1, z=centerpos.z})
centerpos = {x=centerpos.x, y=centerpos.y+1, z=centerpos.z}
addEvent(move,  velocidade, paramis)
doSetItemOutfit(paramis.cida, 7132, 6000)
else
local npos = {x=centerpos.x-1, y=centerpos.y, z=centerpos.z, stackpos=1}
local getplayer = getThingfromPos(npos)
if getplayer.itemid == 7125 and getplayer.actionid == 100 then
doTeleportThing(paramis.cida, {x=centerpos.x-1, y=centerpos.y, z=centerpos.z})
centerpos = {x=centerpos.x-1, y=centerpos.y, z=centerpos.z}
addEvent(move,  velocidade, paramis)
doSetItemOutfit(paramis.cida, 7131, 6000)
else
local npos = {x=centerpos.x, y=centerpos.y-1, z=centerpos.z, stackpos=1}
local getplayer = getThingfromPos(npos)
if getplayer.itemid == 7124 and getplayer.actionid == 100 then
doTeleportThing(paramis.cida, {x=centerpos.x, y=centerpos.y-1, z=centerpos.z})
centerpos = {x=centerpos.x, y=centerpos.y-1, z=centerpos.z}
addEvent(move,  velocidade, paramis)
doSetItemOutfit(paramis.cida, 7132, 6000)
else
local npos = {x=centerpos.x-1, y=centerpos.y, z=centerpos.z, stackpos=1}
local getplayer = getThingfromPos(npos)
if getplayer.itemid == 7123 and getplayer.actionid ~= 100 then
doTeleportThing(paramis.cida, {x=centerpos.x-1, y=centerpos.y, z=centerpos.z})
centerpos = {x=centerpos.x-1, y=centerpos.y, z=centerpos.z}
addEvent(move,  velocidade, paramis)
doSetItemOutfit(paramis.cida, 7131, 6000)
else

local npos = {x=centerpos.x, y=centerpos.y+1, z=centerpos.z, stackpos=1}
local getplayer = getThingfromPos(npos)
if getplayer.itemid == 7125 and getplayer.actionid ~= 100 then
doTeleportThing(paramis.cida, {x=centerpos.x, y=centerpos.y+1, z=centerpos.z})
centerpos = {x=centerpos.x, y=centerpos.y+1, z=centerpos.z}
addEvent(move,  velocidade, paramis)
doSetItemOutfit(paramis.cida, 7132, 6000)
else
local npos = {x=centerpos.x+1, y=centerpos.y, z=centerpos.z, stackpos=1}
local getplayer = getThingfromPos(npos)
if getplayer.itemid == 7126 and getplayer.actionid == 100 then
doTeleportThing(paramis.cida, {x=centerpos.x+1, y=centerpos.y, z=centerpos.z})
centerpos = {x=centerpos.x+1, y=centerpos.y, z=centerpos.z}
addEvent(move,  velocidade, paramis)
doSetItemOutfit(paramis.cida, 7131, 6000)
else
local npos = {x=centerpos.x, y=centerpos.y-1, z=centerpos.z, stackpos=1}
local getplayer = getThingfromPos(npos)
if getplayer.itemid == 7123 and getplayer.actionid == 100 then
doTeleportThing(paramis.cida, {x=centerpos.x, y=centerpos.y-1, z=centerpos.z})
centerpos = {x=centerpos.x, y=centerpos.y-1, z=centerpos.z}
addEvent(move,  velocidade, paramis)
doSetItemOutfit(paramis.cida, 7132, 6000)
else
doSetItemOutfit(paramis.cida, 7131, 1)
pessoass = 1

end
end
end
end
end
end
end
end
end
end
end
end
end




function onUse(cid, item, frompos, item2, topos)
if pessoass == 1 then
local paramis = {cida = cid, poina = topos}
centerpos = topos
doTeleportThing(cid, centerpos)
doSetItemOutfit(cid, 7131, 1000)
addEvent(move,  400, paramis)
pessoass = 2
else
doSendAnimatedText(topos, "ESPERA!", TEXTCOLOR_RED)
doPlayerSendCancel(cid,'Desculpe está sendo usado.')
end
end