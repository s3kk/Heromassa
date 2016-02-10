-- Sebasbe and Nicekid(Xtibia) --
function onPrepareDeath(cid, lastHitKiller, mostDamageKiller)
if isPlayer(cid) == true then
if (getPlayerSlotItem(cid, 2).itemid == 2196) then
doPlayerRemoveItem(cid, 2196, 1)
doCreatureSetDropLoot(cid, false) 
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYAREA)
return true
end
end
return true
end