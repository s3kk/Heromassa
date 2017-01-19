
function onThink(interval, lastExecution)
-- Configurações
local cor = 22 -- Defina a cor da mensagem (22 = branco)
local mensagens ={
[[Upgrade System do 0 ao 10 para weapons melee, armaduras, shields e arcos. Upgrade Stone através do Zombie Event e Battlefield!!!
]]
}

-- Fim de Configurações

doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end