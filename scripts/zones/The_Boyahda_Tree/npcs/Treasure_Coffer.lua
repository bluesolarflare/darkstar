-----------------------------------
-- Area: The Boyahada Tree
-- NPC:  Treasure Coffer
-- @zone 153
-- @pos 27 6 144
-----------------------------------
package.loaded["scripts/zones/The_Boyahda_Tree/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/Treasure");
require("scripts/globals/quests");
require("scripts/zones/The_Boyahda_Tree/TextIDs");

TreasureType = "Coffer";
TreasureLvL = 53;
TreasureMinLvL = 43;

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

	key = trade:hasItemQty(1052,1); 		-- Treasure Key
	sk = trade:hasItemQty(1115,1);			-- Skeleton Key
	lk = trade:hasItemQty(1023,1);			-- Living Key
	ttk = trade:hasItemQty(1022,1);			-- Thief's Tools
	questItemNeeded = 0;
	
	-- Player traded a key.
	if((key or sk or lk or ttk) and trade:getItemCount() == 1) then 
			
		-- IMPORTANT ITEM: AF Keyitems, AF Items, & Map -----------
		mJob = player:getMainJob();
		zone = player:getZone();
		AFHandsActivated = player:getVar("BorghertzAlreadyActiveWithJob");
		oldGauntlets = player:hasKeyItem(OLD_GAUNTLETS);
		
		if(player:hasKeyItem(MAP_OF_THE_BOYAHDA_TREE) == false) then
			questItemNeeded = 3;
		end
		
		if(AFHandsActivated == 14 and oldGauntlets == false) then 
			questItemNeeded = 1;
		else
			listAF = getAFbyZone(zone);
			
			for nb = 1,table.getn(listAF),3 do
				QHANDS = player:getQuestStatus(JEUNO,listAF[nb + 1]);
				if(QHANDS ~= QUEST_AVAILABLE and mJob == listAF[nb] and player:hasItem(listAF[nb + 2]) == false) then
					questItemNeeded = 2;
					break
				end
			end
		end
		--------------------------------------
		
		pack = openChance(player,npc,trade,TreasureType,TreasureLvL,TreasureMinLvL,questItemNeeded);
		
		if(pack[2] ~= nil) then
			player:messageSpecial(pack[2]);
			success = pack[1];
		else
			success = pack[1];
		end
		
		if(success ~= -2) then
			diceroll = math.random(); -- 0 or 1
			player:tradeComplete();
			
			if(diceroll <= success) then
				-- Succeded to open the coffer
				player:messageSpecial(CHEST_UNLOCKED);
				
				if(questItemNeeded == 1) then
					player:addKeyItem(OLD_GAUNTLETS);
					player:messageSpecial(KEYITEM_OBTAINED,OLD_GAUNTLETS); -- Old Gauntlets (KI)
				elseif(questItemNeeded == 2) then
					for nb = 1,table.getn(listAF),3 do
						if(mJob == listAF[nb]) then
							player:addItem(listAF[nb + 2]);
							player:messageSpecial(ITEM_OBTAINED,listAF[nb + 2]);
							break
						end
					end
				elseif(questItemNeeded == 3) then
					player:addKeyItem(MAP_OF_THE_BOYAHDA_TREE);
					player:messageSpecial(KEYITEM_OBTAINED,MAP_OF_THE_BOYAHDA_TREE); -- Map of the Boyahda Tree (KI)
				else
					player:setVar("["..zone.."]".."Treasure_"..TreasureType,os.time() + math.random(CHEST_MIN_ILLUSION_TIME,CHEST_MAX_ILLUSION_TIME)); 
					
					local loot = chestLoot(zone,npc);
					-- print("loot array: "); -- debug
					-- print("[1]", loot[1]); -- debug
					-- print("[2]", loot[2]); -- debug
					
					if(loot[1]=="gil") then
						player:addGil(loot[2]);
						player:messageSpecial(GIL_OBTAINED,loot[2]);
					else
						-- Item
						player:addItem(loot[2]);
						player:messageSpecial(ITEM_OBTAINED,loot[2]);
					end
				end
			end
		end
	end

end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:messageSpecial(CHEST_LOCKED,1052);
end; 

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;