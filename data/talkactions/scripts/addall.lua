local itemretirado = 10309 
function onSay(cid, words, param, channel) 
local alpha={} 
confere(cid) 
        if doPlayerRemoveItem(cid,itemretirado,1) then 
                if(param == 'fist') and alpha[1] ~= 0 then 
                        doPlayerAddSkill(cid,0,10) 
                elseif(param == 'club') and alpha[2] ~= 1 then 
                        doPlayerAddSkill(cid,1,10) 
                elseif(param == 'sword') and alpha[3] ~= 2 then 
                        doPlayerAddSkill(cid,2,10) 
                elseif(param == 'axe') and alpha[4] ~= 3 then 
                        doPlayerAddSkill(cid,3,10) 
                elseif(param == 'distance') and alpha[5] ~= 4 then 
                        doPlayerAddSkill(cid,4,10) 
                elseif(param == 'shield') and alpha[6] ~= 5 then 
                        doPlayerAddSkill(cid,5,10) 
                else 
                        doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE,"Você já atingiu o número máxido de skills.") 
                end 
                doSendMagicEffect(getThingPos(cid),12) 
                doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE,"Skill comprado com sucesso.") 
        else 
                doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE,"Você não tem 100k para comprar esta skill.") 
        end 
        return true 
end 
 
function confere(cid) 
 
for x=0,5 do 
        if getPlayerSkillLevel(cid,x) >= 400 then 
                alpha[x+1] = x 
        end 
end 
end

