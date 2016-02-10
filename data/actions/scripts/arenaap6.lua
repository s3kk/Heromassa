function onUse(cid, item, frompos, item2, topos)
pos = {x=450, y=222, z=8}
if item.itemid == 2296 then

doPlayerSendCancel(cid,"Voce foi teleportado para a arena 2 parte 6!")
doTeleportThing(cid,pos)
doRemoveItem(item.uid,1)
else

doPlayerSendCancel(cid,"Falhou !")


end

return 1

end 