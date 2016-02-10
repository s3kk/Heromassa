function onUse(cid, item, frompos, item2, topos)
file = io.open('livro.txt','r')
notice = file:read(-1)
doShowTextDialog(cid,8983,notice)
file:close()
end
