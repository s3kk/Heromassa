function onLogin(cid)
playerpos = getPlayerPosition(cid)
doSendAnimatedText(playerpos, "[ONLINE!]", TEXTCOLOR_BLUE)
doSendMagicEffect(playerpos,48)
doSendMagicEffect(playerpos,49)
return TRUE
end