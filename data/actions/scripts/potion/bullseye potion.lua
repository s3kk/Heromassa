local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 15000)
setConditionParam(condition, CONDITION_PARAM_SKILL_DISTANCE, 3)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, 3)

function onUse(cid, item, frompos, item2, topos)
var = numberToVariant(cid)
doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_RED)
doRemoveItem(item.uid, 1)
return 1
end