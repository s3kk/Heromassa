function onSay(cid, words, param) 
                        if(getPlayerStorageValue(cid, 250001) <= 0) then 
        local money = 5000000
        local mana = 100000
        local health = 200000
        if doPlayerRemoveMoney(cid, money) then
                setCreatureMaxMana(cid, getCreatureMaxMana(cid) + mana)
doCreatureAddHealth(pid,999999999)
doPlayerAddMana(pid,999999999)
                setCreatureMaxHealth(cid, getCreatureMaxHealth(cid) + health)
                                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Boa sorte no Serv!.") 
                                        doPlayerSetStorageValue(cid, 250001, 1) 
                                else 
                                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Você nao tem 5KK.") 
                                end 
                        else 
                                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Você só pode utilizar uma vez esse comando.") 
                        end 
        return true 
end