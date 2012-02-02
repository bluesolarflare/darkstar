-----------------------------------
-- Area: Maze of Shakhrami
-- NPC:  Excavation Point
-- Used in Quest: The Holy Crest
-- @zone 198
-- @pos 234 0 -110
-----------------------------------

package.loaded["scripts/zones/Maze_of_Shakhrami/TextIDs"] = nil;
require("scripts/zones/Maze_of_Shakhrami/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

	if(trade:hasItemQty(605,1) and trade:getItemCount() == 1) then
		if(player:getVar("TheHolyCrest_Event") == 3 and player:hasItem(1159) == false) then
			if(player:getFreeSlotsCount(0) >= 1) then
				player:tradeComplete();
				player:addItem(1159);
				player:messageSpecial(ITEM_OBTAINED, 1159); -- Wyvern Egg
			else
			   player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, 1159); -- Wyvern Egg
			end
		end
	end
	
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
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