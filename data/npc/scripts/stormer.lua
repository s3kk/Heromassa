local check_interval = 60*1
local mindamage = 10
local maxdamage = 30
---------------------------------End Configuration----------------------------------
local check_clock = os.clock()
local focus = 0

function getplayersfromArea(areapos)
local players = { }
for areax = 690, 713 do
for areay = 590, 610 do
areapos = {x=areax, y=areay, z=7, stackpos=253}
creature = getThingfromPos(areapos)
if creature.itemid > 0 then
if isPlayer(creature.uid) == TRUE then
table.insert (players, creature.uid)
end
end
end
end
return players
end
function onThink()
local chance = math.random(1,10)
if (os.clock() - check_clock) > check_interval and chance >=5 then
players_table = getplayersfromArea(areapos)
if #players_table >= 1 then
for i = 1, #players_table do
doNpcSetCreatureFocus(players_table[i])
formdamage = math.random(mindamage, maxdamage)
doCreatureAddHealth(players_table[i],-formdamage)
stormefects = math.random(40, 43)
doSendMagicEffect(getThingPos(players_table[i]),stormefects)
doSendAnimatedText(getThingPos(players_table[i]),formdamage,179)
doPlayerSendTextMessage(players_table[i],22,'You were beaten by a storm.')
check_clock = os.clock()
focus = 0
end
elseif table.getn(players_table) < 1 then
focus = 0
check_clock = os.clock()
end
end
focus = 0
end