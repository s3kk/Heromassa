local time = 5 -- tempo em segundos para permitir o login(coloque um pouco mais do tempo de um Server Game do seu mapa)

function onSay()
    doSetGameState(GAMESTATE_CLOSED)
    db.query("UPDATE `players` SET `level` = "..getConfigInfo("newPlayerLevel").." WHERE `group_id` < 6;")
    db.query("DELETE FROM `player_depotitems` WHERE `itemtype` NOT IN (8924, 8851, 7415, 7405, 7366, 7364, 6531, 6433, 2660, 2644, 2504, 2433, 2127, 8853, 8109, 7424, 6096, 6095, 5918, 5462, 2527, 2352, 2294, 2267, 12608, 10518, 8932, 8929, 8925, 7443, 9971, 1294);")
    db.query("DELETE FROM `player_items` WHERE `itemtype` NOT IN (8924, 8851, 7415, 7405, 7366, 7364, 6531, 6433, 2660, 2644, 2504, 2433, 2127, 8853, 8109, 7424, 6096, 6095, 5918, 5462, 2527, 2352, 2294, 2267, 12608, 10518, 8932, 8929, 8925, 7443, 9971, 1294);")
    return addEvent(doSetGameState, 1000 * time, GAMESTATE_NORMAL)
end