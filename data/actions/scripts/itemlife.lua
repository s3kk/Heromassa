function onUse(cid, item)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+10000)
     doRemoveItem(item.uid, 1)
doCreatureSay(cid, "You received 10000 Health Points!", TALKTYPE_ORANGE_1)
return TRUE
end


