function onUse(cid, item, frompos, item2, topos)
    mag = getPlayerMagLevel(cid)
    if mag >= 1 then
        doSendAnimatedText(getPlayerPosition(cid), "Aaaah!HP!", TEXTCOLOR_RED)
        doPlayerAddHealth(cid, math.random(1000, 2000))
        doSendMagicEffect(topos, 55)

        if item.type > 1 then
            doChangeTypeItem(item.uid,item.type-1)
        else
        end
    else
        doSendMagicEffect(topos, 55)
        doPlayerSendCancel(cid,"You don't have the required magic level to use that rune.")
    end
    
    return 1
end