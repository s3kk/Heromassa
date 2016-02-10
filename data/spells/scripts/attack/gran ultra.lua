local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -109.0, -30, -110.9, -0)

local area = createCombatArea(AREA_CIRCLE3X3)
setCombatArea(combat, area)

setCombatArea(combat, area)

function onCastSpell(cid, var)
	local storage = 23009
	local spellname = "Exevo mas gran"
	local time = 60

        if exhaustion.check(cid, storage) == false then
                exhaustion.set(cid, storage, time)
                return doCombat(cid, combat, var)
        else
                doPlayerSendCancel(cid, "voce nao pode soltar o spell " .. spellname .. " POR: " ..exhaustion.get(cid, storage).." segundos.")
        end
end