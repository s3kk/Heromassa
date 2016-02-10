local CAR_ID = {9742, 9742, 9742, 9742}

function onStepIn(cid, item, pos, frompos)
        if isPlayer(cid) == TRUE then
                local oldPos = getThingPos(item.uid)
                addEvent(carMove, 200, cid, oldPos)
        end
end

function carMove(cid, oldPos)
        local car = getThingfromPos(oldPos)
        local newPos = getCreatureLookPosition(cid)
        if getDistanceBetween(getThingPos(cid), oldPos) == 0 then
                if isInArray(CAR_ID, car.itemid) == TRUE then
                        local tmp = newPos
                        tmp.stackpos = 253
                        if getTileThingByPos({x=newPos.x, y=newPos.y, z=newPos.z}).uid ~= 0 and doTileQueryAdd(car.uid, newPos) == 1
                           and getTilePzInfo(newPos) == FALSE and isCreature(getThingFromPos(tmp).uid) == FALSE then
                                local carId = CAR_ID[getCreatureLookDirection(cid)+1]
                                doTransformItem(car.uid, carId)
                                doTeleportThing(car.uid, newPos, false)
                                doTeleportThing(cid, newPos, false)
                                doSendMagicEffect(oldPos, 34)
                        end
                end
        end
end