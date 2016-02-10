function onSay(cid, words, param, channel)
  
	  sorcerer = {
	  cost = 0,
	  level = 200,
	  text = "Promoted to super vip Sorcerer",
	  }
	  druid = {
	  cost = 0,
	  level = 200,
	  text = "Promoted to super vip Druid",
	  }
	  paladin = {
	  cost = 0,
	  level = 200,
	  text = "Promoted to super vip Paladin",
	  }
	  knight = {
	  cost = 0,
	  level = 200,
	  text = "Promoted to super vip Knight",
	  }
  
	  if getPlayerVocation(cid) == 5 then
		  voc = sorcerer
	  elseif getPlayerVocation(cid) == 6 then
		  voc = druid
	  elseif getPlayerVocation(cid) == 7 then
		  voc = paladin
	  elseif getPlayerVocation(cid) == 8 then
		  voc = knight
	  else
		  voc = nil
	  end
	  if voc ~= nil then
		  if getPlayerLevel(cid) >= voc.level then
			  if doPlayerRemoveMoney(cid,voc.cost) == TRUE then
				  setPlayerPromotionLevel(cid, 1)
				  doSendMagicEffect(getCreaturePosition(cid),14)
				  doSendAnimatedText(getCreaturePosition(cid),voc.text,49)
			  else
				  doPlayerSendTextMessage(cid,18,"You need "..voc.cost.." to promote.")
			  end
		  else
			  doPlayerSendTextMessage(cid,18,"You need level "..voc.level.." to promote.")
		  end
	  else
		  doPlayerSendTextMessage(cid,18,"You already promoted.")
	  end
	  return TRUE
  end