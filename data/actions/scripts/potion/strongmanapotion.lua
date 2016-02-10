function onUse(cid, item, frompos, item2, topos)

playerpos = {x=topos.x, y=topos.y, z=topos.z, stackpos=253}
player = getThingfromPos(playerpos)
ml = getPlayerMagLevel(cid)
lvl = getPlayerLevel(cid)
voc = getPlayerVocation(cid)
ex = getPlayerStorageValue(cid,4862)
r1 = math.random(110,200)

params = { [1]=cid, [2]=lvl, [3]=voc, [4]=ml }

if item2.itemid == 1 then
if item.itemid == 7634 then
doPlayerSendCancel(cid,"It is empty.")
else
if item2.uid == cid then
if lvl >= 50 then
if voc == 1 or voc == 2 or voc == 3 or voc == 5 or voc == 6 or voc == 7 or voc == 9 or voc == 10 or voc == 11 then
if ex == -1 then
doPlayerAddMana(cid,r1)
doSendMagicEffect(playerpos,12)
addEvent(ums,1000,params)
setPlayerStorageValue(cid,4862, 1)
doTransformItem(item.uid,7634)
doSendAnimatedText(getPlayerPosition(cid), "Aaaah...", TEXTCOLOR_PURPLE)
else
doPlayerSendCancel(cid,'You are exhausted.')
doSendMagicEffect(playerpos,2)
end
else
doPlayerSendCancel(cid, 'Somente Classes de Druids, Sorcerers e Paladins de level 50 ou superior podem consumir essa potion.')
end
else
doPlayerSendCancel(cid,'Somente Classes de Druids, Sorcerers e Paladins de level 50 ou superior podem consumir essa potion.')
end
else
splash = doCreateItem(2025,7,topos)
doTransformItem(item.uid,7634)
doDecayItem(splash)
end
end
else
if item.itemid == 7634 then
doPlayerSendCancel(cid,"It is empty.")
else
splash = doCreateItem(2025,7,topos)
doTransformItem(item.uid,7634)
doDecayItem(splash)
end
end
return 1
end

function ums(params)
cid = params[1]
setPlayerStorageValue(cid,4862, -1)
end