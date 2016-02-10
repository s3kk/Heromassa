function onUse(cid, item, frompos, item2, topos)
    
	if item2.itemid == 2383 then
		doTransformItem(item2.uid,7744,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)

	elseif item2.itemid == 2544 then
		doTransformItem(item2.uid,7840,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
	elseif item2.itemid == 7383 then
		doTransformItem(item2.uid,7745,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7384 then
		doTransformItem(item2.uid,7746,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7406 then
		doTransformItem(item2.uid,7747,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7402 then
		doTransformItem(item2.uid,7748,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2429 then
		doTransformItem(item2.uid,7749,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2430 then
		doTransformItem(item2.uid,7750,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7389 then
		doTransformItem(item2.uid,7751,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7380 then
		doTransformItem(item2.uid,7752,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2454 then
		doTransformItem(item2.uid,7753,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2423 then
		doTransformItem(item2.uid,7754,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2445 then
		doTransformItem(item2.uid,7755,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7415 then
		doTransformItem(item2.uid,7756,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
elseif item2.itemid == 7392 then
		doTransformItem(item2.uid,7757,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
elseif item2.itemid == 2391 then
		doTransformItem(item2.uid,7758,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)

	else 
		return 0
	end
	return 1
end