Config = {
ExpExtra = 0.2
}

function onEquip(cid, item, slot)
doPlayerSetExperienceRate(cid, getConfigValue('rateExperience') * Config.ExpExtra)
return true
end

function onDeEquip(cid, item, slot)
doPlayerSetExperienceRate(cid, getConfigValue('rateExperience'))
return true
end