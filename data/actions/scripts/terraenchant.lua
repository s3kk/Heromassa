function onUse(cid, item, frompos, item2, topos)
    
	if item2.itemid == 2383 then
		doTransformItem(item2.uid,7854,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)

	elseif item2.itemid == 2544 then
		doTransformItem(item2.uid,7850,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
	elseif item2.itemid == 7383 then
		doTransformItem(item2.uid,7855,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7384 then
		doTransformItem(item2.uid,7856,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7406 then
		doTransformItem(item2.uid,7857,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7402 then
		doTransformItem(item2.uid,7858,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2429 then
		doTransformItem(item2.uid,7859,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2430 then
		doTransformItem(item2.uid,7860,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7389 then
		doTransformItem(item2.uid,7861,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7380 then
		doTransformItem(item2.uid,7862,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2454 then
		doTransformItem(item2.uid,7863,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2423 then
		doTransformItem(item2.uid,7864,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2445 then
		doTransformItem(item2.uid,7865,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7415 then
		doTransformItem(item2.uid,7866,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
elseif item2.itemid == 7392 then
		doTransformItem(item2.uid,7867,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
elseif item2.itemid == 2391 then
		doTransformItem(item2.uid,7868,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)

	else 
		return 0
	end
	return 1
end