function onEquip(cid, item, position, fromPosition)
local config = {
	rateExperience = getConfigInfo('rateExperience'),
		exp = getExperienceStage(getPlayerLevel(cid), getVocationInfo(getPlayerVocation(cid)).experienceMultiplier)
}
doPlayerSetExperienceRate(cid, 2)
doPlayerSendTextMessage(cid,22,"Ring de experiencia ativado com sucesso!!! sua exp está x" .. config.exp .. " Multiplicado por 2.")
return TRUE
end
function onDeEquip(cid, item, position, fromPosition)
doPlayerSetExperienceRate(cid, 1.0)
doPlayerSendTextMessage(cid,22,"Sua experiencia voltou ao original.")
return TRUE
end