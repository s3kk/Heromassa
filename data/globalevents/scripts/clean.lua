function executeClean()
	doCleanMap()
	doBroadcastMessage("Next clean in 30 minutes.")
	return true
end

function onThink(interval, lastExecution, thinkInterval)
	doBroadcastMessage("Clean in 30 seconds, please take your items!")
	addEvent(executeClean, 30000)
	return true
end
