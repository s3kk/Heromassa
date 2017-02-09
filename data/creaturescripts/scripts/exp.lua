-- Monday = Segunda
-- Tuesday = Terça
-- Wednesday = Quarta
-- Thursday = Quinta
-- Friday = Sexta
-- Saturday = Sabado
-- Sunday = Domingo

function onLogin(cid)

DoubleDays = {"Sunday", "Saturday"}

	if isInArray(DoubleDays, os.date("%A")) then
		doPlayerSetRate(cid, SKILL__LEVEL, 2.0)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Double Exp Day, enjoy it!")
	end
	return true
end