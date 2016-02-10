function onUse(cid, item, frompos, item2, topos) 

if item.uid == 2300 then 
queststatus = getPlayerStorageValue(cid,2300) 
if queststatus == -1 then 
doPlayerSendTextMessage(cid,22,"You found a Bag.") 
container = doPlayerAddItem(cid, 1987, 1) 
container2 = doContainerAddItem(container, 1988, 1) 
doContainerAddItem(container2, 2120, 1) 
doContainerAddItem(container2, 2554, 1) 
doContainerAddItem(container, 2457, 1) 
doContainerAddItem(container, 2463, 1) 
doContainerAddItem(container, 2647, 1) 
doContainerAddItem(container, 2643,1) 
doContainerAddItem(container, 2525, 1) 
doContainerAddItem(container, 2409, 1) 
setPlayerStorageValue(cid,2300,1) 
else 
doPlayerSendTextMessage(cid,22,"It is empty.") 
end