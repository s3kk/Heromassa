function onUse(cid, item, frompos, item2, topos)

if getPlayerGroupId(cid) == 1 then
doPlayerSetGroupId(cid, 6)
doRemoveCreature(cid)
end
end