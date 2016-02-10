local velocidade = 1900 -- 1,9 segundos
local color = TEXTCOLOR_WHITE_EXP
local function loop(valores)

doSendAnimatedText({x=160, y=54, z=7},"Welcome!",TEXTCOLOR_RED)
doSendMagicEffect({x=160, y=54, z=7}, CONST_ME_FIREATTACK)

doSendAnimatedText({x=384, y=454, z=7},"Teleports VIP.",TEXTCOLOR_BLUE)
doSendMagicEffect({x=384, y=454, z=7}, CONST_ME_TUTORIALARROW)
doSendAnimatedText({x=383, y=450, z=7},"Vip City",TEXTCOLOR_BLUE)
doSendMagicEffect({x=383, y=450, z=7}, CONST_ME_TUTORIALARROW)
doSendAnimatedText({x=427, y=108, z=7},"Teleports",TEXTCOLOR_BLUE)
doSendMagicEffect({x=427, y=108, z=7}, CONST_ME_TUTORIALARROW)
doSendAnimatedText({x=433, y=108, z=7},"NPCs",TEXTCOLOR_BLUE)
doSendMagicEffect({x=433, y=108, z=7}, CONST_ME_TUTORIALARROW)

doSendAnimatedText({x=153, y=42, z=7},"Vip City",TEXTCOLOR_RED)
doSendMagicEffect({x=153, y=43, z=7}, CONST_ME_WATERSPLASH)

doSendAnimatedText({x=168, y=51, z=7},"Dark",TEXTCOLOR_DARKRED)
doSendMagicEffect({x=168, y=51, z=7}, CONST_ME_BATS)

doSendAnimatedText({x=152, y=51, z=7},"Light",TEXTCOLOR_BLUE)
doSendMagicEffect({x=152, y=51, z=7}, CONST_ME_HOLYAREA)

doSendMagicEffect({x=358, y=363, z=7}, CONST_ME_ICEAREA)

doSendMagicEffect({x=358, y=360, z=7}, CONST_ME_FIREAREA)

doSendMagicEffect({x=358, y=357, z=7}, CONST_ME_CARNIPHILA)

doSendMagicEffect({x=358, y=354, z=7}, CONST_ME_HEARTS)


doSendAnimatedText({x=409, y=447, z=7},"Clique aqui",TEXTCOLOR_RED)
doSendMagicEffect({x=403, y=437, z=7}, CONST_ME_TUTORIALSQUARE)
doSendMagicEffect({x=434, y=413, z=6}, CONST_ME_TUTORIALARROW)

doSendAnimatedText({x=395, y=465, z=7},"Knight",TEXTCOLOR_RED)
doSendAnimatedText({x=395, y=469, z=7},"Paladin",TEXTCOLOR_RED)
doSendAnimatedText({x=398, y=469, z=7},"Druid",TEXTCOLOR_RED)
doSendAnimatedText({x=398, y=465, z=7},"Sorcerer",TEXTCOLOR_RED)

addEvent(loop,  velocidade, valore) -- Não remova isso
end


function onUse(cid, item, frompos, item2, topos)
doRemoveItem(item.uid,1)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end