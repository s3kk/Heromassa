function onSay(cid, words, param, channel)
	local cfg = {
		["citizen"] = {
			outfit = {
				male = 128,
				female = 136,
				addon = 3,
				storage = 11001
			},
			items = {
				{2160,100}
			}
		},
		["hunter"] = {
			outfit = {
				male = 129,
				female = 137,
				addon = 3,
				storage = 11002
			},
			items = {
				{2160,100}
			}
		},
		["mage"] = {
			outfit = {
				male = 130,
				female = 138,
				addon = 3,
				storage = 11003
			},
			items = {
				{2160,100}
			}
		},
		["knight"] = {
			outfit = {
				male = 131,
				female = 139,
				addon = 3,
				storage = 11004
			},
			items = {
				{2160,100}
			}
		},
		["nobleman"] = {
			outfit = {
				male = 132,
				female = 140,
				addon = 3,
				storage = 11005
			},
			items = {
				{2160,100}
			}
		},
		["summoner"] = {
			outfit = {
				male = 133,
				female = 141,
				addon = 3,
				storage = 11006
			},
			items = {
				{2160,100}
			}
		},
		["warrior"] = {
			outfit = {
				male = 134,
				female = 142,
				addon = 3,
				storage = 11007
			},
			items = {
				{2160,100}
			}
		},
		["barbarian"] = {
			outfit = {
				male = 147,
				female = 143,
				addon = 3,
				storage = 11008
			},
			items = {
				{2160,100}
			}
		},
		["druid"] = {
			outfit = {
				male = 148,
				female = 144,
				addon = 3,
				storage = 11009
			},
			items = {
				{2160,100}
			}
		},
		["wizard"] = {
			outfit = {
				male = 149,
				female = 145,
				addon = 3,
				storage = 11010
			},
			items = {
				{2160,100}
			}
		},
		["oriental"] = {
			outfit = {
				male = 150,
				female = 146,
				addon = 3,
				storage = 11011
			},
			items = {
				{2160,100}
			}
		},
		["pirate"] = {
			outfit = {
				male = 151,
				female = 155,
				addon = 3,
				storage = 11012
			},
			items = {
				{2160,100}
			}
		},
		["assassin"] = {
			outfit = {
				male = 152,
				female = 156,
				addon = 3,
				storage = 11013
			},
			items = {
				{2160,100}
			}
		},
		["beggar"] = {
			outfit = {
				male = 153,
				female = 157,
				addon = 3,
				storage = 11014
			},
			items = {
				{2160,100}
			}
		},
		["shaman"] = {
			outfit = {
				male = 154,
				female = 158,
				addon = 3,
				storage = 11015
			},
			items = {
				{2160,100}
			}
		},
		["norseman"] = {
			outfit = {
				male = 251,
				female = 252,
				addon = 3,
				storage = 11016
			},
			items = {
				{2160,100}
			}
		},
		["nightmare"] = {
			outfit = {
				male = 268,
				female = 269,
				addon = 3,
				storage = 11017
			},
			items = {
				{2160,100}
			}
		},
		["jester"] = {
			outfit = {
				male = 273,
				female = 270,
				addon = 3,
				storage = 11018
			},
			items = {
				{2160,100}
			}
		},
		["brotherhood"] = {
			outfit = {
				male = 278,
				female = 279,
				addon = 3,
				storage = 11019
			},
			items = {
				{2160,100}
			}
		},
		["demon hunter"] = {
			outfit = {
				male = 289,
				female = 288,
				addon = 3,
				storage = 11020
			},
			items = {
				{2160,100}
			}
		},
		["yalaharian"] = {
			outfit = {
				male = 325,
				female = 324,
				addon = 3,
				storage = 11021
			},
			items = {
				{2160,100}
			}
		},
		["warmaster"] = {
			outfit = {
				male = 335,
				female = 336,
				addon = 3,
				storage = 11022
			},
			items = {
				{2160,100}
			}
		}
	}
	local v, removeItems = cfg[param], 0, 0
        if(param == "") then
                doPlayerSendCancel(cid, "Command requires param.")
		return true
	end
        if (not isPremium(cid)) then
	        doPlayerSendCancel(cid, "Você nao tem premium account.")
	        return true
        end
	if(getPlayerStorageValue(cid, v.outfit.storage) == -1) then
		for i = 1, #v.items do
			if(getPlayerItemCount(cid, v.items[i][1]) >= v.items[i][2]) then
				removeItems = removeItems+1
			end
		end
		if(removeItems == #v.items) then
			if(getPlayerSex(cid) == 1) then
				doPlayerAddOutfit(cid, v.outfit.male, v.outfit.addon)
			elseif(getPlayerSex(cid) == 0) then
				doPlayerAddOutfit(cid, v.outfit.female, v.outfit.addon)
			end
			for i = 1, #v.items do
				doPlayerRemoveItem(cid, v.items[i][1], v.items[i][2])
			end
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Você recebeu uma nova outfit!")
                        doSendMagicEffect(getThingPos(cid), CONST_ME_FIREWORK_YELLOW)
			setPlayerStorageValue(cid, v.outfit.storage, 1)
		else
			for i = 1, #v.items do
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "você precisa " .. v.items[i][2] .. "x " .. getItemNameById(v.items[i][1]) .. " para comprar a outfit.")
			end
		end
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Você ja tem está outfit.")
	end
	return true
end