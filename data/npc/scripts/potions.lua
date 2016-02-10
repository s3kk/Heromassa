local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
if focus == cid then
selfSay('Good bye then.')
focus = 0
talk_start = 0
end
end


function onCreatureTurn(creature)

end


function msgcontains(txt, str)
return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
local msg = string.lower(msg)

if msgcontains(msg, 'hi') and focus == 0 and getDistanceToCreature(cid) < 4 then
selfSay('Hello ' .. creatureGetName(cid) .. '! I sell potions and bp potions.')
focus = cid
talk_start = os.clock()

elseif msgcontains(msg, 'hi') and focus ~= cid and getDistanceToCreature(cid) < 4 then
selfSay('Sorry, ' .. creatureGetName(cid) .. '! I talk to you in a minute.')

elseif focus == cid then
talk_start = os.clock()

if msgcontains(msg, 'potions') then
selfSay('I sell Mana Potion (50gps), Health Potion (45gps), SHP (100gps), SMP (80gps), GHP (190gps) and GMP (120gps).')
elseif msgcontains(msg, 'bp potions') then
selfSay('I sell Bp Mana Potion (1k), Bp Health Potion (900gps), Bp SHP (2k), Bp SMP (1.6k), Bp GHP (3.8k) and Bp GMP (2.4k).')

elseif msgcontains(msg, 'mp') then
buy(cid,7620,1,50)
elseif msgcontains(msg, ' hp') then
buy(cid,7618,1,45)
elseif msgcontains(msg, 'shp') then
buy(cid,7588,1,100)
elseif msgcontains(msg, 'smp') then
buy(cid,7589,1,80)
elseif msgcontains(msg, 'ghp') then
buy(cid,7591,1,190)
elseif msgcontains(msg, 'gmp') then
buy(cid,7590,1,120)

elseif msgcontains(msg, 'bp mana potion') then
buyContainer(cid,2003,7620,1,1000)

elseif msgcontains(msg, 'bp health potion') then
buyContainer(cid,2000,7618,1,900)

elseif msgcontains(msg, 'bp strong health') then
buyContainer(cid,2001,7588,1,2000)

elseif msgcontains(msg, 'bp strong mana') then
buyContainer(cid,2002,7589,1,1600)

elseif msgcontains(msg, 'bp great health') then
buyContainer(cid,2000,7591,1,3800)

elseif msgcontains(msg, 'bp great mana') then
buyContainer(cid,2000,7590,1,2400) 

elseif string.find(msg, '(%a*)bye(%a*)') and getDistanceToCreature(cid) < 4 then
selfSay('Good bye, ' .. creatureGetName(cid) .. '!')
focus = 0
talk_start = 0
end
end
end

function onCreatureChangeOutfit(creature)

end


function onThink()
if (os.clock() - talk_start) > 30 then
if focus > 0 then
selfSay('Next Please...')
end
focus = 0
end
if focus ~= 0 then
if getDistanceToCreature(focus) > 5 then
selfSay('Good bye then.')
focus = 0
end
end
end