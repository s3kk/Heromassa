
CONFIG = {

    [1] = {message = "Quest Dos Supreme Items, Teleport em frente NPC Orlan Promotion No Templo ", color = 22},
    [2] = {message = "Lottery System De 2 em 2h. Chame os Amigos e Bom Jogo ", color = 22},
    [3] = {message = "Bem vindos ao nosso server heromassa", color = 22},
}

function onThink()
    getRandom = math.random(1, #CONFIG)
    return doBroadcastMessage(CONFIG[getRandom].message, CONFIG[getRandom].color)
end