function onThink(interval, lastExecution)
_Lib_Battle_Days = {
["Sunday"] = {
["15:00"] = {players = 10},
["16:00"] = {players = 12},
["17:00"] = {players = 12},
["18:00"] = {players = 12},
["19:00"] = {players = 12},
["20:00"] = {players = 12},
["21:00"] = {players = 12}
},
["Monday"] = {
["15:00"] = {players = 10},
["16:00"] = {players = 12},
["17:00"] = {players = 12},
["18:00"] = {players = 12},
["19:00"] = {players = 12},
["20:00"] = {players = 12},
["21:00"] = {players = 12}
},
["Tuesday"] = {
["15:00"] = {players = 10},
["16:00"] = {players = 12},
["17:00"] = {players = 12},
["18:00"] = {players = 12},
["19:00"] = {players = 12},
["20:00"] = {players = 12},
["21:00"] = {players = 12}
},
["Wednesday"] = {
["15:00"] = {players = 10},
["16:00"] = {players = 12},
["17:00"] = {players = 12},
["18:00"] = {players = 12},
["19:00"] = {players = 12},
["20:00"] = {players = 12},
["21:00"] = {players = 12}
},
["Thursday"] = {
["15:00"] = {players = 10},
["16:00"] = {players = 12},
["17:00"] = {players = 12},
["18:00"] = {players = 12},
["19:00"] = {players = 12},
["20:00"] = {players = 12},
["21:00"] = {players = 12}
},
["Friday"] = {
["15:00"] = {players = 10},
["16:00"] = {players = 12},
["17:00"] = {players = 12},
["18:00"] = {players = 12},
["19:00"] = {players = 12},
["20:00"] = {players = 12},
["21:00"] = {players = 12}
},
["Saturday"] = {
["15:00"] = {players = 10},
["16:00"] = {players = 12},
["17:00"] = {players = 12},
["18:00"] = {players = 12},
["19:00"] = {players = 12},
["20:00"] = {players = 12},
["21:00"] = {players = 12}
},
}
if _Lib_Battle_Days[os.date("%A")] then
hours = tostring(os.date("%X")):sub(1, 5)
tb = _Lib_Battle_Days[os.date("%A")][hours]
if tb and (tb.players % 2 == 0) then
local tp = doCreateItem(1387, 1, _Lib_Battle_Info.tpPos)
doItemSetAttribute(tp, "aid", 45000)
CheckEvent(_Lib_Battle_Info.limit_Time)
doBroadcastMessage("The event BattleField was opened and We are waiting "..tb.players.." Players! Team divided into "..((tb.players)/2).." VS "..((tb.players)/2))
return setGlobalStorageValue(_Lib_Battle_Info.storage_count, tb.players)
end
end
return true
end