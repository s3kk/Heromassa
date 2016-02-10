function onUse(cid, item, fromPosition, itemEx, toPosition)

	if item.itemid == 6527 then
	
		if getPlayerStorageValue(cid, 525250) <= 0 then
	
			doPlayerSetStorageValue(cid, 525250, 1)
		
local pPos = getPlayerPosition(cid)

			if getPlayerSex(cid) == 1 then
	
				doSendMagicEffect(pPos, 37)
				doPlayerAddOutfit(cid, 128, 3)
				doPlayerAddOutfit(cid, 129, 3)
				doPlayerAddOutfit(cid, 130, 3)
				doPlayerAddOutfit(cid, 131, 3)
				doPlayerAddOutfit(cid, 132, 3)
				doPlayerAddOutfit(cid, 133, 3)
				doPlayerAddOutfit(cid, 134, 3)
				doPlayerAddOutfit(cid, 143, 3)
				doPlayerAddOutfit(cid, 144, 3)
				doPlayerAddOutfit(cid, 145, 3)
				doPlayerAddOutfit(cid, 146, 3)
				doPlayerAddOutfit(cid, 151, 3)
				doPlayerAddOutfit(cid, 152, 3)
				doPlayerAddOutfit(cid, 153, 3)
				doPlayerAddOutfit(cid, 154, 3)
				doPlayerAddOutfit(cid, 251, 3)
				doPlayerAddOutfit(cid, 268, 3)
				doPlayerAddOutfit(cid, 273, 3)
				doPlayerAddOutfit(cid, 278, 3)
				doPlayerAddOutfit(cid, 289, 3)
				doPlayerAddOutfit(cid, 325, 3)
				doPlayerAddOutfit(cid, 328, 3)
				doPlayerAddOutfit(cid, 335, 3)
				doPlayerAddOutfit(cid, 367, 3)

		elseif getPlayerSex(cid) == 0 then
	
				doSendMagicEffect(pPos, 37)
				doPlayerAddOutfit(cid, 136, 3)
				doPlayerAddOutfit(cid, 137, 3)
				doPlayerAddOutfit(cid, 138, 3)
				doPlayerAddOutfit(cid, 139, 3)
				doPlayerAddOutfit(cid, 140, 3)
				doPlayerAddOutfit(cid, 141, 3)
				doPlayerAddOutfit(cid, 142, 3)
				doPlayerAddOutfit(cid, 147, 3)
				doPlayerAddOutfit(cid, 148, 3)
				doPlayerAddOutfit(cid, 149, 3)
				doPlayerAddOutfit(cid, 150, 3)
				doPlayerAddOutfit(cid, 155, 3)
				doPlayerAddOutfit(cid, 156, 3)
				doPlayerAddOutfit(cid, 157, 3)
				doPlayerAddOutfit(cid, 158, 3)
				doPlayerAddOutfit(cid, 252, 3)
				doPlayerAddOutfit(cid, 269, 3)
				doPlayerAddOutfit(cid, 270, 3)
				doPlayerAddOutfit(cid, 279, 3)
				doPlayerAddOutfit(cid, 288, 3)
				doPlayerAddOutfit(cid, 324, 3)
				doPlayerAddOutfit(cid, 329, 3)
				doPlayerAddOutfit(cid, 336, 3)
				doPlayerAddOutfit(cid, 366, 3)
		
		doCreatureSay(cid, "You received all the addons!", 19)
		doSendMagicEffect(getPlayerPosition(cid), 37)
		doPlayerRemoveItem(cid, 6527, 1)
		
		else
		
		doCreatureSay(cid, "You have already got all the addons.",19)
		doPlayerAddItem(cid, 6527, 1)
		
	end
	
		end
		
			end
			
		return true
		
end