function onUse(cid, item, frompos, item2, topos)
    
	if item2.itemid == 2383 then
		doTransformItem(item2.uid,7869,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)

	elseif item2.itemid == 2544 then
		doTransformItem(item2.uid,7838,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
	elseif item2.itemid == 7383 then
		doTransformItem(item2.uid,7870,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7384 then
		doTransformItem(item2.uid,7871,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7406 then
		doTransformItem(item2.uid,7872,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7402 then
		doTransformItem(item2.uid,7873,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2429 then
		doTransformItem(item2.uid,7874,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2430 then
		doTransformItem(item2.uid,7875,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7389 then
		doTransformItem(item2.uid,7876,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7380 then
		doTransformItem(item2.uid,7877,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2454 then
		doTransformItem(item2.uid,7878,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2423 then
		doTransformItem(item2.uid,7879,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 2445 then
		doTransformItem(item2.uid,7880,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
        elseif item2.itemid == 7415 then
		doTransformItem(item2.uid,7881,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
elseif item2.itemid == 7392 then
		doTransformItem(item2.uid,7882,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)
elseif item2.itemid == 2391 then
		doTransformItem(item2.uid,7883,1000)
		doDecayItem(item2.uid)
                doRemoveItem(item.uid,1)

	else 
		return 0
	end
	return 1
end