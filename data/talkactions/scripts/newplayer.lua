function onSay(cid, words, param) 
                        if(getPlayerStorageValue(cid, 25001) <= 0) then 
        local money = 100000
        local mana = 10000
        local health = 20000
        if doPlayerRemoveMoney(cid, money) then
                setCreatureMaxMana(cid, getCreatureMaxMana(cid) + mana)
doCreatureAddHealth(pid,999999999)
doPlayerAddMana(pid,999999999)
                setCreatureMaxHealth(cid, getCreatureMaxHealth(cid) + health)
                                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Boa sorte voce recebeu seu premio Por jogar XXXX Serv!.") 
                                        doPlayerSetStorageValue(cid, 25001, 1) 
                                else 
                                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Você nao tem a grana necessária.") 
                                end 
                        else 
                                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Você só pode utilizar uma vez esse comando.") 
                        end 
        return true 
end