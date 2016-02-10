function onSay(cid, words, param)
local config = {
loss_life = 500,
storage_check = 19469,
time = 1,
pos_preso = {x=10133, y=10050, z=7}, -- pos da sua prisao
pos_solto = {x=10135, y=10050, z=7} -- pos pra onde ele vai dps que acabar o tempo na prisao
}

if getTilePzInfo(getCreaturePosition(cid)) == FALSE then
if getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE then
doCreatureAddHealth(cid, -config.loss_life)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Chingar mae é feio voce perde "..config.loss_life.." de life por fazer isso.")
else
doTeleportThing(cid, config.pos_preso)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR," Chingar mãe não vale. Você está preso por 15 min. .")
addEvent(setPlayerStorageValue, config.time*60*1000-1000, cid, config.storage_check, -1)
addEvent(doTeleportThing, config.time*60*1000-500, cid, config.pos_solto)
end 
else
if getPlayerStorageValue(cid, config.storage_check) <= 0 then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR," Chingar mãe não vale. Na próxima irá para prisão.")
setPlayerStorageValue(cid, config.storage_check, 1)
else
doTeleportThing(cid, config.pos_preso)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR," Chingar mãe não vale. Você está preso por 15 min. .")
addEvent(setPlayerStorageValue, config.time*60*1000-1000, cid, config.storage_check, -1)
addEvent(doTeleportThing, config.time*60*1000-500, cid, config.pos_solto)
end 
end
return FALSE
end

