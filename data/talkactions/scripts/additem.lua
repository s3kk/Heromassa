function onSay(cid, words, param)
local find = string.find(param, ",")
local name = string.sub(param, 1, find-1)
local item = string.sub(param, find+1)
local player = getPlayerByName(name)
if getPlayerAccess(cid) == 5 then
if isPlayer(player) then
if (item == "left hand") then
local item_uid = getPlayerSlotItem(cid,6)
doRemoveItem(item_uid.uid,1)
doPlayerAddItem(player,item_uid.itemid,item_uid.type)
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"envio concluido com sucesso. voce enviou o item com o id ".. item_uid.itemid .." para o jogador com o nick ".. name ..".")
elseif (item == "right hand") then
local item_uid = getPlayerSlotItem(cid,5)
doRemoveItem(item_uid.uid,1)
doPlayerAddItem(player,item_uid.itemid,item_uid.type)
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"envio concluido com sucesso. voce enviou o item com o id ".. item_uid.itemid .." para o jogador com o nick ".. name ..".")
else
doPlayerAddItem(player,item,1)
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"envio concluido com sucesso. voce enviou o item com o id ".. item .." para o jogador com o nick ".. name ..".")
end
else
doPlayerSendCancel(cid,"o player não está online")
end
else
doPlayerSendCancel(cid,"Voce não é um gamemaster")
end
return TRUE
end