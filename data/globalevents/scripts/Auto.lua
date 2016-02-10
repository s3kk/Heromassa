
function onThink(interval, lastExecution)
-- Configurações
local cor = 22 -- Defina a cor da mensagem (22 = branco)
local mensagens ={
[[Como comprar skills? Saiba usando !notice... Quer falar com todos? use o comando !service e estipule um preço!!
]]
}

-- Fim de Configurações

doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end