-- Script feito pelo DoidinMapper para o XTibia.com --
  function onUse(cid, topos, item, item2, frompos)
local nonremskulls = {red = SKULL_RED, white = SKULL_WHITE, black = SKULL_BLACK}

if isInArray(nonremskulls, getPlayerSkullType(cid)) then
doPlayerSendCancel(cid,"Você não pode remover o seus frags e seus skulls.")
doSendMagicEffect(getPlayerPosition(cid), 2)
else
db.executeQuery("UPDATE `killers` SET `unjustified` = 0 WHERE `id` IN (SELECT `kill_id` FROM `player_killers` WHERE `player_id` = " .. getPlayerGUID(cid) .. ")")
doCreatureSetSkullType(cid,0)
doCreatureSay(cid,"Seus frags e skulls foram removidos!",19)
doSendMagicEffect(getPlayerPosition(cid), 26)
doRemoveItem(item.uid,1)
return true
end
       
if(removesCharges == "no") then
if(item.type > 1) then
doChangeTypeItem(item.uid, item.type-1)
else
return true
end
end
end