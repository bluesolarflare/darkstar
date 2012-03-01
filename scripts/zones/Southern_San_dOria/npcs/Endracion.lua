-----------------------------------
-- Area: Northern San d'Oria
-- NPC:  Endracion
-- @zone 230
-- @pos -110 1 -34
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
package.loaded["scripts/globals/missions"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/missions");
require("scripts/zones/Southern_San_dOria/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	
	CurrentMission = player:getCurrentMission(SANDORIA);
	BatHuntCompleted = player:hasCompletedMission(SANDORIA,BAT_HUNT);
	TheCSpringCompleted = player:hasCompletedMission(SANDORIA,THE_CRYSTAL_SPRING);
	MissionStatus = player:getVar("MissionStatus");
	Count = trade:getItemCount();
	
	if(CurrentMission ~= 255) then
		if(CurrentMission == SMASH_THE_ORCISH_SCOUTS and trade:hasItemQty(16656,1) and Count == 1) then -- Trade Orcish Axe
			player:startEvent(0x03ea); -- Finish Mission "Smash the Orcish scouts"
		elseif(CurrentMission == BAT_HUNT and trade:hasItemQty(1112,1) and Count == 1 and BatHuntCompleted == false and MissionStatus == 2) then -- Trade Orcish Mail Scales
			player:startEvent(0x03ff); -- Finish Mission "Bat Hunt"
		elseif(CurrentMission == BAT_HUNT and trade:hasItemQty(891,1) and Count == 1 and BatHuntCompleted and MissionStatus == 2) then -- Trade Bat Fang
			player:startEvent(0x03eb); -- Finish Mission "Bat Hunt" (repeat)
		elseif(CurrentMission == THE_CRYSTAL_SPRING and trade:hasItemQty(4528,1) and Count == 1 and TheCSpringCompleted == false) then -- Trade Crystal Bass
			player:startEvent(0x0406); -- Dialog During Mission "The Crystal Spring"
		elseif(CurrentMission == THE_CRYSTAL_SPRING and trade:hasItemQty(4528,1) and Count == 1 and TheCSpringCompleted) then -- Trade Crystal Bass
			player:startEvent(0x03f5); -- Finish Mission "The Crystal Spring" (repeat)
		else
			player:startEvent(0x03f0); -- Wrong Item
		end
	else
		player:startEvent(0x03f2); -- Mission not activated
	end
	
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
	if(player:getNation() ~= SANDORIA) then
		player:startEvent(0x03F3); -- for Non-San d'Orians
	else
		CurrentMission = player:getCurrentMission(SANDORIA);
		MissionStatus = player:getVar("MissionStatus");
		pRank = player:getRank();
		cs, p, offset = getMissionOffset(player,1,CurrentMission,MissionStatus);
		
		if(CurrentMission <= 15 and (cs ~= 0 or offset ~= 0)) then
			if(cs == 0) then
				player:showText(npc,ORIGINAL_MISSION_OFFSET + offset); -- dialog after accepting mission
			else
				player:startEvent(cs,p[1],p[2],p[3],p[4],p[5],p[6],p[7],p[8]);
			end
		elseif(pRank == 1 and player:hasCompletedMission(SANDORIA,SMASH_THE_ORCISH_SCOUTS) == false) then
			player:startEvent(0x03e8); -- Start First Mission "Smash the Orcish scouts"
		elseif(CurrentMission ~= 255) then
			player:startEvent(0x03e9); -- Have mission already activated
		else
			mission_mask, repeat_mask = getMissionMask(player);
			player:startEvent(0x03F1,mission_mask, 0, 0 ,0 ,0 ,repeat_mask); -- Mission List
		end
	end
	
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("onUpdateCSID: %u",csid);
--printf("onUpdateOPTION: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("onFinishCSID: %u",csid);
--printf("onFinishOPTION: %u",option);
	
	MissionList = getStartMissionList(player);
	
	if(csid == 0x03e8 and option == 0) then ----- Start First Mission
		player:addMission(SANDORIA,SMASH_THE_ORCISH_SCOUTS);
		player:messageSpecial(YOU_ACCEPT_THE_MISSION);
	elseif(csid == 0x03F1) then ----- Start Other Mission
		for nb = 1, table.getn(MissionList), 4 do
			if(option == MissionList[nb]) then
				
				player:addMission(SANDORIA,MissionList[nb + 1]);
				
				if(player:hasCompletedMission(SANDORIA,MissionList[nb + 1]) == false) then
					player:setVar("MissionStatus",MissionList[nb + 2]);
				else
					player:setVar("MissionStatus",MissionList[nb + 3]);
				end
				
				player:messageSpecial(YOU_ACCEPT_THE_MISSION);
				break;
				
			end
		end
	elseif(csid == 0x03ea) then ----- MISSION 1-1
		player:tradeComplete();
		player:addRankPoints(150);
		player:messageSpecial(YOUVE_EARNED_CONQUEST_POINTS);
		player:completeMission(SANDORIA,SMASH_THE_ORCISH_SCOUTS);
	elseif(csid == 0x03eb or csid == 0x03ff) then ----- MISSION 1-2
		player:tradeComplete();
		player:addRankPoints(200);
		player:setVar("MissionStatus",0);
		player:messageSpecial(YOUVE_EARNED_CONQUEST_POINTS);
		player:completeMission(SANDORIA,BAT_HUNT);
	elseif(csid == 0x03ec) then ----- MISSION 1-3
		player:setRank(2);
		player:setVar("OptionalCSforSavetheChildren",1);
		player:setVar("MissionStatus",0);
		player:addRankPoints(250);
		player:messageSpecial(YOUVE_EARNED_CONQUEST_POINTS);
		player:addGil(GIL_RATE*1000);
		player:messageSpecial(GIL_OBTAINED,GIL_RATE*1000);
		player:completeMission(SANDORIA,SAVE_THE_CHILDREN);
	elseif(csid == 0x0400) then ----- MISSION 1-3 (Repeat)
		player:setVar("MissionStatus",0);
		player:messageSpecial(YOUVE_EARNED_CONQUEST_POINTS);
		player:completeMission(SANDORIA,SAVE_THE_CHILDREN);
	elseif(csid == 0x03ed) then ----- MISSION 2-1
		player:delKeyItem(RESCUE_TRAINING_CERTIFICATE);
		player:setVar("MissionStatus",0);
		player:messageSpecial(YOUVE_EARNED_CONQUEST_POINTS);
		player:completeMission(SANDORIA,THE_RESCUE_DRILL);
	elseif(csid == 0x03f4) then ----- MISSION 3-1
		player:setVar("MissionStatus",0);
		player:addRankPoints(350);
		player:messageSpecial(YOUVE_EARNED_CONQUEST_POINTS);
		player:completeMission(SANDORIA,INFILTRATE_DAVOI);
	elseif(csid == 0x0406) then ----- MISSION 3-2
		player:tradeComplete();
		player:setVar("MissionStatus",2);
	elseif(csid == 0x03f5) then ----- MISSION 3-2 (repeat)
		player:tradeComplete();
		player:setVar("MissionStatus",0);
		player:addRankPoints(400);
		player:messageSpecial(YOUVE_EARNED_CONQUEST_POINTS);
		player:completeMission(SANDORIA,THE_CRYSTAL_SPRING);
	end
	
end;