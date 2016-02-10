function onCastSpell(cid, var)
----COPY PLAYER STATUS
local playerpos = getPlayerPosition(cid)
local cloth = getCreatureOutfit(cid)
local health = getCreatureHealth(cid)
local maxhealth = getCreatureMaxHealth(cid)

----CLONE THE PLAYER
local clone = doSummonMonster("Clone", playerpos)
doSummonMonster(cid, Clone)
setCreatureMaxHealth(clone, maxhealth)
doCreatureAddHealth(clone, health)
doSetCreatureOutfit(clone, cloth, -1)
doSendMagicEffect(playerpos, 2)
return TRUE
end

