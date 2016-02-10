function onUse(cid, item, frompos, item2, topos)
pos = {x=448, y=184, z=8}
if item.itemid == 2281 then

doPlayerSendCancel(cid,"Voce foi teleportado para a arena 2 parte 4!")
doTeleportThing(cid,pos)
doRemoveItem(item.uid,1)
else

doPlayerSendCancel(cid,"Falhou !")


end

return 1

end 