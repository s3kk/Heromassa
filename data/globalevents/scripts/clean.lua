function executeClean()
	doCleanMap()
	doBroadcastMessage("Proximo Clean em 1 Hr.")
	return true
end

function onThink(interval, lastExecution, thinkInterval)
	doBroadcastMessage("Clean no mapa em 30 segundos,por favor peguem seus itens!")
	addEvent(executeClean, 3000000)
	return true
end
