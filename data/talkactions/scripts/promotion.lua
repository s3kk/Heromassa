function onSay(cid, words, param) 
 
local vocs = { [1] = 5, -- master sorcerer
 
               [2] = 6, -- elder druid
 
               [3] = 7, -- royal paladin
 
               [4] = 8, -- elite knight
 
               }
 
local newvoc = vocs[getPlayerVocation(cid)]
local price = 20000
             
    if getPlayerPremiumDays(cid) > 0 then
 
        if getPlayerMoney(cid) >= price then
 
            if vocs[getPlayerVocation(cid)] then
 
                doPlayerSetVocation(cid,newvoc)
                doPlayerRemoveMoney(cid, price)
                doSendAnimatedText(getPlayerPosition(cid),"PROMOTED", 79)
				doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
				setPlayerStorageValue(cid, 21323, newvoc)
            else
 
                doPlayerSendCancel(cid, "Voce nao pode ser promovido.")
                doSendMagicEffect(getThingPos(cid), CONST_ME_POFF)
            end   
 
        else
 
            doPlayerSendCancel(cid, "Voce nao tem dinheiro suficiente.")
            doSendMagicEffect(getThingPos(cid), CONST_ME_POFF)
        end
 
    else
 
        doPlayerSendCancel(cid, "Voce precisa ser premium para usar esse comando.")
        doSendMagicEffect(getThingPos(cid), CONST_ME_POFF) 
    end
 
    return true
 
end