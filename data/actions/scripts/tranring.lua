function onUse(cid, item, frompos, item2, topos) 
level = getPlayerLevel(cid)
r1 = math.random(1,10)
level = getPlayerLevel(cid)
Fist = getPlayerSkill(cid,0)
Club = getPlayerSkill(cid,1)
Sword = getPlayerSkill(cid,2)
Axe = getPlayerSkill(cid,3)
Distance = getPlayerSkill(cid,4)
mag = getPlayerMagLevel(cid)
NovoFist = 0
NovoClub = 0
NovoSword = 0
NovoAxe = 0
NovoDistance = 0
local outfit1 = {
lookType = 261,
lookAddons = 0
}
local outfit2 = {
lookType = 236,
lookAddons = 0
}
local outfit3 = {
lookType = 47,
lookHead = 0,
lookBody = 0,
lookLegs = 0,
lookFeet = 0,
lookAddons = 0
}
local outfit4 = {
lookType = 241,
lookAddons = 0
}
local outfit5 = {
lookType = 116,
lookHead = 0,
lookBody = 0,
lookLegs = 0,
lookFeet = 0,
lookAddons = 0
}
local outfit6 = {
lookType = 239,
lookAddons = 0
}
local outfit7 = {
lookType = 21,
lookHead = 20,
lookBody = 30,
lookLegs = 40,
lookFeet = 50,
lookAddons = 0
}
local outfit8 = {
lookType = 243,l
ookAddons = 0
}
local outfit9 = {
lookType = 55,
lookHead = 20,
lookBody = 30,
lookLegs = 40,
lookFeet = 50,
lookAddons = 0
}
local outfit10 = {
lookType = 240,
lookHead = 20,
lookBody = 30,
lookLegs = 40,
lookFeet = 50,
lookAddons = 0
} 
if level >= 35 then 
if getPlayerStorageValue(cid,5556) == -1 then 
if r1 == 1 then
doSetCreatureOutfit(cid, outfit1, 600000 )
doPlayerSendTextMessage(cid,22,"Você se transformou em Cristalino.")
elseif r1 == 2 then
doSetCreatureOutfit(cid, outfit2, 600000 )
doPlayerSendTextMessage(cid,22,"Você se transformou em Robotico.") 
elseif r1 == 3 then
doSetCreatureOutfit(cid, outfit3, 600000 )
doPlayerSendTextMessage(cid,22,"Você se transformou em Peixe.") 
elseif r1 == 4 then
doSetCreatureOutfit(cid, outfit4, 600000 )
doPlayerSendTextMessage(cid,22,"Você se transformou em Fantasma.") 
elseif r1 == 5 then
doSetCreatureOutfit(cid, outfit5, 600000 )
doPlayerSendTextMessage(cid,22,"Você se transformou em 4 Braços.")
elseif r1 == 6 then
doSetCreatureOutfit(cid, outfit6, 600000 )
doPlayerSendTextMessage(cid,22,"Você se transformou em Insectoide.") 
elseif r1 == 7 then
doSetCreatureOutfit(cid, outfit7, 600000 )
doPlayerSendTextMessage(cid,22,"Você se transformou em massa cinzenta.") 
elseif r1 == 8 then
doSetCreatureOutfit(cid, outfit8, 600000 )
doPlayerSendTextMessage(cid,22,"Você se transformou em Fogo.") 
elseif r1 == 9 then
doSetCreatureOutfit(cid, outfit9, 600000 )
doPlayerSendTextMessage(cid,22,"Você se transformou em rapido.") 
elseif r1 == 10 then
doSetCreatureOutfit(cid, outfit10, 600000 )
doPlayerSendTextMessage(cid,22,"Você se transformou em besta.")
end 
setPlayerStorageValue(cid,5556, 1) 
params = { [1]=cid, [2]=level, [3]=NovoFist, [4]=NovoClub, [5]=NovoSword, [6]=NovoAxe, [7]=NovoDistance, [8]=Novomag }
addEvent(min, 900000, params)
else
doPlayerSendTextMessage(cid,22,"Você tem que esperar 5 minutos após o termino do efeito do bracelete para usá-lo novamente.") 
end 
else
doPlayerSendTextMessage(cid,22,"Você não tem level necessario para usar o amuleto.")
end 
end 
function min(params) 
cid = params[1]
level = params[2]
NovoFist = params[3] * -1
NovoClub = params[4] * -1
NovoSword = params[5] * -1
NovoAxe = params[6] * -1
NovoDistance = params[7] * -1
mag = params[8]
doPlayerAddSkillTry(cid,0,NovoFist)
doPlayerAddSkillTry(cid,1,NovoClub)
doPlayerAddSkillTry(cid,2,NovoSword)
doPlayerAddSkillTry(cid,3,NovoAxe)
doPlayerAddSkillTry(cid,4,NovoDistance)
setPlayerStorageValue(cid,5556, -1)
end