time = 500

function onLogin(cid)
		piscaVip(cid)
		registerCreatureEvent(cid, "pisca")
		return true
end

function piscaVip(cid)
	if (isCreature(cid) == TRUE) then
		if (getPlayerPremiumDays(cid)) then
			doSendAnimatedText(getCreaturePosition(cid),'Premium' , math.random(1, 255))
			addEvent(piscaVip,time,cid)
		end
	end	
	return true
end 