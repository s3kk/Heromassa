function onCastSpell(cid, var)

function jambolt(dir)

min = -math.random(500,1000) - getPlayerSkill(cid, magic) - getPlayerLevel(cid)
 max = -math.random(1000,2000) - getPlayerSkill(cid, magic) - getPlayerLevel(cid)
 
 doSendDistanceShoot(getCreaturePosition(cid), getPosByDir(getCreaturePosition(cid), dir), CONST_ANI_INFERNALBOLT)
 	doSendMagicEffect(getPosByDir(getCreaturePosition(cid), dir), 19)
 	doAreaCombatHealth(cid, 2, getPosByDir(getCreaturePosition(cid), dir), AREA_SQUARE3X3 , min, max, 30)
 	end

 local dirs = {6,0,7,1,5,2,4,3,6,0,7,1,5,2,4,3,6,0,7,1,5,2,4,3,6,0,7,1,5,2,4,3,6}
for i,v in pairs(dirs) do
 	addEvent(jambolt, 100*i, v)
	end 
 return 1
end