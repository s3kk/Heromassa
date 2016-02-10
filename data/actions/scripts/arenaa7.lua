function onUse(cid, item, frompos, item2, topos)
pos = {x=386, y=230, z=8}
if item.itemid == 2288 then

doPlayerSendCancel(cid,"Voce foi teleportado para a arena 1 parte 7!")
doTeleportThing(cid,pos)
doRemoveItem(item.uid,1)
else

doPlayerSendCancel(cid,"Falhou !")


end

return 1

end 