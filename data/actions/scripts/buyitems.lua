local coin = 2157 -- sua moeda vip
local lever = {
[6001] = {20,1294}
}
function onUse(cid,item,fromPosition,itemEx,toPosition)
                  if doPlayerRemoveItem(cid,coin,lever[item.actionid][1]) == FALSE then
                  return doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "você precisa de "..lever[item.actionid][1].." " ..getItemNameById(coin))
                  end
                                doPlayerAddItem(cid,lever[item.actionid][2], isItemStackable(lever[item.actionid][2]) and 1 or 1)
                                doPlayerSendTextMessage(cid,22,"você comprou uma " .. getItemNameById(lever[item.actionid][2]))
                                doSendMagicEffect(getCreaturePosition(cid), math.random(28,30))
                return true
end