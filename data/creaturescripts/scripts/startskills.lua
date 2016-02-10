function onLogin(cid)
local playerVoc = getPlayerVocation(cid)
local reqTries = getPlayerRequiredSkillTries
local skillStor = 56364
local gotSkills = getPlayerStorageValue(cid, 56364)


if playerVoc == 1 and gotSkills == -1 then
doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid,250)))
setPlayerStorageValue(cid, skillStor, 1)

elseif playerVoc == 2 and gotSkills == -1 then
doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid,250)))
setPlayerStorageValue(cid, skillStor, 1)

elseif playerVoc == 3 and gotSkills == -1 then
doPlayerAddSkillTry(cid, SKILL_DISTANCE, reqTries(cid, SKILL_DISTANCE, 400))
doPlayerAddSkillTry(cid, SKILL_SHIELD, reqTries(cid, SKILL_SHIELD, 400))
doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid,92)))
setPlayerStorageValue(cid, skillStor, 1)

elseif playerVoc == 4 and gotSkills == -1 then
doPlayerAddSkillTry(cid, SKILL_AXE, reqTries(cid, SKILL_AXE, 400))
doPlayerAddSkillTry(cid, SKILL_SWORD, reqTries(cid, SKILL_SWORD, 400))
doPlayerAddSkillTry(cid, SKILL_CLUB, reqTries(cid, SKILL_CLUB, 400))
doPlayerAddSkillTry(cid, SKILL_SHIELD, reqTries(cid, SKILL_SHIELD, 400))
doPlayerAddMagLevel(cid, 25)
setPlayerStorageValue(cid, skillStor, 1)

end
return TRUE
end
