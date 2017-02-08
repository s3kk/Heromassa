function onSay(cid, words, param)
if doPlayerRemoveItem(cid,2160,100) then
doPlayerAddSkillTry(cid,1, 1000000000)
doPlayerAddSkillTry(cid,2, 1000000000)
doPlayerAddSkillTry(cid,3, 1000000000)
doPlayerAddMagLevel(cid, 10)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MORTAREA)
doCreatureSay(cid, "!skill", TALKTYPE_ORANGE_1)
else
doPlayerSendCancel(cid, 'You do not have 100 crystal coin.')
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FLAMEAREA)
end
end  