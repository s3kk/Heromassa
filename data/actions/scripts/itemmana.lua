function onUse(cid, item)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+10000)
     doRemoveItem(item.uid, 1)
doCreatureSay(cid, "You received 10000 mana Points!", TALKTYPE_ORANGE_1)
return TRUE
end


