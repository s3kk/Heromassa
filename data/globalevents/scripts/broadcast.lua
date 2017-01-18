
CONFIG = {

    [1] = {message = "Quest Supreme a esquerda do templo de Sphere!", color = 22},
    [2] = {message = "Use !comandos para ver todos os comandos disponíveis para você!", color = 22},
    [3] = {message = "Use !notice para ver os comandos e informações interessantes do server!"}
}

function onThink()
    getRandom = math.random(1, #CONFIG)
    return doBroadcastMessage(CONFIG[getRandom].message, CONFIG[getRandom].color)
end