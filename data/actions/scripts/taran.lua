function onUse(cid, item, pos)

idcidade = 1
mensagem = 'Voce virou um morador da Taran City'

if item.uid == 3339 then
	doPlayerSetTown(cid,idcidade)
	doPlayerSendTextMessage(cid,22,mensagem)
return 1
end
end