function onUse(cid, item, frompos, item2, topos)
pos = {x=404, y=464, z=7}
if item.itemid == 6536 then

doPlayerSendCancel(cid,"Voce foi teleportado!")
doTeleportThing(cid,pos)
doRemoveItem(item.uid,1)
else

doPlayerSendCancel(cid,"Falha!")


end

return 1

end 