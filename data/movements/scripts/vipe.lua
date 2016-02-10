-- Vip System by Zero
function onStepIn(cid, item, position, fromPosition)

local config = {
msgDenied = "Somente Players Vips Poden Entrar.",
msgWelcome = "Bem-Vindo a Area Vip!"
}

if getPlayerPremiumDays(cid) <= 0 then
doTeleportThing(cid, fromPosition, true)
doPlayerSendTextMessage(cid,22, config.msgDenied)
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
return true
end
doPlayerSendTextMessage(cid,22, config.msgWelcome)
return true
end