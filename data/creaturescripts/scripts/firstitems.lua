local firstItems = {}
firstItems[0] =
{
2173, -- aol
2525, -- d shield
3965, -- hunting spear
2124, -- ring
2457, -- steel helmet
2647, -- plate legs
2643 -- leather boots
}
firstItems[1] =
{
2173, -- aol
2525, -- d shield
7429, -- super wand
2124, -- ring
2457, -- steel helmet
2647, -- plate legs
2643 -- leather boots
}
firstItems[2] =
{
2173, -- aol
2525, -- d shield
7429, -- super wand
2124, -- ring
2457, -- steel helmet
2647, -- plate legs
2643 -- leather boots
}
firstItems[3] =
{
2173, -- aol
2525, -- d shield
8857, -- super bow
7850, -- super arrow
2124, -- ring
2457, -- steel helmet
2647, -- plate legs
2643 -- leather boots
}
firstItems[4] =
{
2173, -- aol
2525, -- d shield
8931, -- super sword
2124, -- ring
2457, -- steel helmet
2647, -- plate legs
2643 -- leather boots
}

function onLogin(cid)
if getPlayerStorageValue(cid, 30001) == -1 then
for i = 1, table.maxn(firstItems[getPlayerVocation(cid)]) do
doPlayerAddItem(cid, firstItems[getPlayerVocation(cid)][i], 1)
end
if getPlayerSex(cid) == 0 then
doPlayerAddItem(cid, 2463, 1)
else
doPlayerAddItem(cid, 2463, 1)
end
local bag = doPlayerAddItem(cid, 1988, 1)
doAddContainerItem(bag, 2160, 100)
doAddContainerItem(bag, 2554, 1)
doAddContainerItem(bag, 2120, 1)
doAddContainerItem(bag, 7618, 1)
setPlayerStorageValue(cid, 30001, 1)
end
return TRUE
end