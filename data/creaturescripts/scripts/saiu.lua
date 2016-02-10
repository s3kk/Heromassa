function onLogout(cid)
doBroadcastMessage(getPlayerName(cid) .. " [" .. getPlayerLevel(cid) .. "]: just logged out.", MESSAGE_STATUS_CONSOLE_BLUE)
return TRUE
end