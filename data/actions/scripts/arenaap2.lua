function onUse(cid, item, frompos, item2, topos)
pos = {x=450, y=169, z=8}
if item.itemid == 2284 then

doPlayerSendCancel(cid,"Voce foi teleportado para a arena 2 parte 2!")
doTeleportThing(cid,pos)
doRemoveItem(item.uid,1)
else

doPlayerSendCancel(cid,"Falhou !")


end

return 1

end 