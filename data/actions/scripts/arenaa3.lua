function onUse(cid, item, frompos, item2, topos)
pos = {x=386, y=178, z=8}
if item.itemid == 2312 then

doPlayerSendCancel(cid,"Voce foi teleportado para a arena 1 parte 3!")
doTeleportThing(cid,pos)
doRemoveItem(item.uid,1)
else

doPlayerSendCancel(cid,"Falhou !")


end

return 1

end 