-- Create Hydra by Czepek --
  function onUse(cid, item, frompos, item2, topos)

pos = getPlayerPosition(cid) 

if getTilePzInfo(topos) == 0 then
  if getTilePzInfo(pos) == 0 then

 if item.itemid == 5791 then
 doSummonCreature("Dragon Lord", pos)
doSendMagicEffect(topos,12)
doPlayerSay(cid,"Dragon Lord Invocation",1)
	doRemoveItem(item.uid,item.type)
   
else

     doPlayerSendCancel(cid,"You cannot use that.")
    end  
  else
    doPlayerSendCancel(cid,"You Cannot use this Item while you are in a Protect Zone.")
  end
else
  doPlayerSendCancel(cid,"You cannot use this Item on a protect zone.")
end

return 1

end