local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE) 
setCombatParam(combat, COMBAT_PARAM_EFFECT, 52) 
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC,  -10.6, -50, -10.8, 0) 
 
combat_arr = { 
        {1, 1, 1}, 
        {1, 1, 1}, 
        {1, 1, 1}, 
        {0, 1, 0}, 
        {0, 2, 0} 
} 
 
local combat_area = createCombatArea(combat_arr) 
setCombatArea(combat, combat_area) 
 
 
function onCastSpell(cid, var) 
        return doCombat(cid, combat, var) 
end


