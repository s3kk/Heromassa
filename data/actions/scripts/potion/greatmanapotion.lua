function onUse(cid, item, frompos, item2, topos)

playerpos = {x=topos.x, y=topos.y, z=topos.z, stackpos=253}
player = getThingfromPos(playerpos)
ml = getPlayerMagLevel(cid)
lvl = getPlayerLevel(cid)
voc = getPlayerVocation(cid)
ex = getPlayerStorageValue(cid,4862)
r1 = math.random(2500,3000)


params = { [1]=cid, [2]=lvl, [3]=voc, [4]=ml }

if item2.itemid == 1 then
if item.itemid == 7635 then
doPlayerSendCancel(cid,"It is empty.")
else
if item2.uid == cid then
if lvl >= 1 then
if voc == 1 or voc == 2 or voc == 3 or voc == 6 or voc == 8 or voc == 9 then
if ex == -1 then
doPlayerAddMana(cid,r1)
doSendMagicEffect(playerpos,12)
addEvent(ums,700,params)
setPlayerStorageValue(cid,4862, 1)
doTransformItem(item.uid,7635)
doSendAnimatedText(getPlayerPosition(cid), "Mana Up!", TEXTCOLOR_PURPLE)
else
doPlayerSendCancel(cid,'You are exhausted.')
doSendMagicEffect(playerpos,2)
end
else
doPlayerSendCancel(cid, 'Mana Potion')
end
else
doPlayerSendCancel(cid,'Mana Potion')
end
else
splash = doCreateItem(2025,7,topos)
doTransformItem(item.uid,7635)
doDecayItem(splash)
end
end
else
if item.itemid == 7635 then
doPlayerSendCancel(cid,"It is empty.")
else
splash = doCreateItem(2025,7,topos)
doTransformItem(item.uid,7635)
doDecayItem(splash)
end
end
return 1
end

function ums(params)
cid = params[1]
setPlayerStorageValue(cid,4862, -1)
end