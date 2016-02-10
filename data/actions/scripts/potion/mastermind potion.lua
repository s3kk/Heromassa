local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 15000)
setConditionParam(condition, CONDITION_PARAM_SKILL_MAGICPOINTS, 3)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, 3)

function onUse(cid, item, frompos, item2, topos)
if(isInArray({1,2,5,6,9,10}, getPlayerVocation(cid)) == TRUE) then
var = numberToVariant(cid)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_RED)
doRemoveItem(item.uid, 1)
else
doPlayerSendTextMessage(cid,22,"Somente classes de sorcerers e druids podem usar essa potion")
return 1
end
end