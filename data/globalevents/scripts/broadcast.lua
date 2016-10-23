
CONFIG = {

    [1] = {message = "Quest Supreme Items no centro do templo de Sphere!", color = 22},
    [2] = {message = "Lottery System a cada 2 horas.", color = 22},
    [3] = {message = "Bem-Vindos ao Server, mapa HeroMassa", color = 22},
	[4] = {message = "Use !notice para ver os comandos e informações interessantes do server!"}
}

function onThink()
    getRandom = math.random(1, #CONFIG)
    return doBroadcastMessage(CONFIG[getRandom].message, CONFIG[getRandom].color)
end