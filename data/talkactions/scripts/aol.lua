local config = {

	price = 10000, -- preço unidade

	effect = CONST_ME_POFF, -- efeito ao comprar aol

	id = 2173 -- id do item comprado (aol no caso)

}


function onSay(cid, words, param)

	if param == "" and doPlayerRemoveMoney(cid,config.price) then

		doPlayerAddItem(cid, config.id)

		doSendMagicEffect(getThingPos(cid), config.effect)

	else

		local config2 = {

			error = "You do not have enought money.",

			msg = "You bought an amulet of loss."

		}

		if doPlayerRemoveMoney(cid, config.price) then

			doSendMagicEffect(getThingPos(cid), config.effect)

			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, config2.msg)

				for i = 1,param do

					doPlayerAddItem(cid, config.id, 1)

				end

		else

			doPlayerSendCancel(cid, config2.error)

		end

	end

	return true
	end