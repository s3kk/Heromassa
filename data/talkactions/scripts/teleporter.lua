function onSay(cid, words, param)
newpos = {x=10160, y=10051, z=7}  
if getPlayerLevel(cid) >= 300 and doPlayerRemoveItem(cid,5808,1) then
doTeleportThing(cid,newpos)
doSendMagicEffect(getPlayerPosition(cid), 12)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "voc  est· na miss„o! \n mate os demonios e ganhe seu equipamento supremo!")
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "acesso negado,apenas level 300+ e com Orshabaal's brain podem ir a est· miss„o.")
doSendMagicEffect(getPlayerPosition(cid), 11)
end
return TRUE
end  