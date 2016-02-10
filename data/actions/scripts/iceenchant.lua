function onUse(cid, item, frompos, item2, topos)
    
	if item2.itemid == 2383 then
		doTransformItem(item2.uid,7763,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)

	elseif item2.itemid == 2544 then
		doTransformItem(item2.uid,7839,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
	elseif item2.itemid == 7383 then
		doTransformItem(item2.uid,7764,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7384 then
		doTransformItem(item2.uid,7765,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7406 then
		doTransformItem(item2.uid,7766,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7402 then
		doTransformItem(item2.uid,7767,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2429 then
		doTransformItem(item2.uid,7768,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2430 then
		doTransformItem(item2.uid,7769,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7389 then
		doTransformItem(item2.uid,7770,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7380 then
		doTransformItem(item2.uid,7771,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2454 then
		doTransformItem(item2.uid,7772,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2423 then
		doTransformItem(item2.uid,7773,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2445 then
		doTransformItem(item2.uid,7774,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7415 then
		doTransformItem(item2.uid,7775,1000)
		doDecayItem(item2.uid)
               doRemoveItem(item.uid,1)
elseif item2.itemid == 7392 then
		doTransformItem(item2.uid,7776,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
elseif item2.itemid == 2391 then
		doTransformItem(item2.uid,7777,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)

	else 
		return 0
	end
	return 1
end