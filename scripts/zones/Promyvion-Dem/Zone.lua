-----------------------------------
--
-- Zone: Promyvion-Dem (18)
--
-----------------------------------
package.loaded["scripts/zones/Promyvion-Dem/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/missions");
require("scripts/zones/Promyvion-Dem/TextIDs");

-----------------------------------
-- onInitialize
-----------------------------------

function onInitialize(zone)

	--
	zone:registerRegion(11,157,-4,-82,161,4,-77);	    -- Level 1  Return
	zone:registerRegion(12,117,-4,-283,122,4,-277);		-- Level 1   MR   
	--					
	zone:registerRegion(21,-383,-4,-2,-278,4,2);		-- Level Two Return  
	zone:registerRegion(22,-82,-4,76,-77,4,80);			-- Level Two MR1  
	zone:registerRegion(23,-361,-4,36,-356,4,42);		-- Level Two MR2  
	zone:registerRegion(24,-83,-4,-83,-77,4,-76);		-- Level Two MR3  
	zone:registerRegion(25,-282,-4,-202,-277,4,-196);	-- Level Two MR4  
	--						
	zone:registerRegion(31,-160,-4,437,-157,4,441);		-- Level Three West Return
	zone:registerRegion(32,-42,-4,317,-37,4,322);		-- Level Three West MR1  
	zone:registerRegion(33,-322,-4,156,-316,4,162);		-- Level Three West MR2  
	zone:registerRegion(34,-122,-4,157,-118,4,163);		-- Level Three West MR3
	--					
	zone:registerRegion(35,-2,-4,-322,2,4,-317);		-- Level Three East Return
	zone:registerRegion(36,37,-4,-203,43,4,-198);		-- Level Three East MR1
	zone:registerRegion(37,-122,-4,-242,-116,4,-237);	-- Level Three East MR2
	zone:registerRegion(38,-122,-4,-402,-116,4,-396);	-- Level Three East MR3
	--						
	zone:registerRegion(41,357,-4,237,361,4,242);		-- Level Four Return

end;		

-----------------------------------		
-- onZoneIn		
-----------------------------------		

function onZoneIn(player,prevZone)		
cs = -1;	
	
	if(player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then	
 		player:setPos(175,0,-63,98);
 	end
	
	if(player:getCurrentMission(COP) == BELOW_THE_ARKS and player:getVar("PromathiaStatus") == 2) then
		player:completeMission(COP,BELOW_THE_ARKS);
		player:addMission(COP,THE_MOTHERCRYSTALS); -- start mission 1.3
		player:setVar("PromathiaStatus",0);
	end
	
	-- First enter in promy dem
	if(player:getVar("FirstPromyvionDem") == 1)then
		player:setVar("FirstPromyvionDem",0);
		cs = 0x0032;
	end
	
	-- ZONE LEVEL RESTRICTION	
	player:addStatusEffect(EFFECT_LEVEL_RESTRICTION,30,0,0);
	
	return cs;	
end;		

-----------------------------------	
-- onRegionEnter	
-----------------------------------	

function onRegionEnter(player,region)
--regionID =region:GetRegionID();
--printf("regionID: %u",regionID);

	switch (region:GetRegionID()): caseof
	{
		[11] = function (x) player:startEvent(0x002E); end,
		[12] = function (x) 
			if(GetMobAction(16850971) == 24) then 
				player:startEvent(30); 
			end
		end,
		[21] = function (x) player:startEvent(41); end,
		[22] = function (x)
			if(GetMobAction(16851032) == 24) then 
				if(math.random() >= 0.5) then	
					player:startEvent(31);  
				else
					player:startEvent(34);  
				end
			end
		end,
		[23] = function (x)
			if(GetMobAction(16851046) == 24) then 
				if(math.random() >= 0.5) then
					player:startEvent(31);  
				else
					player:startEvent(34);  
				end
			end
		end,
		[24] = function (x)
			if(GetMobAction(16851025) == 24) then
				if(math.random() >= 0.5) then
					player:startEvent(31);  
				else
					player:startEvent(34);  
				end
			end
		end,
		[25] = function (x)
			if(GetMobAction(16851039) == 24) then 
				if(math.random() >= 0.5) then
					player:startEvent(31);  
				else
					player:startEvent(34);  
				end
			end
		end,
		[31] = function (x) player:startEvent(30); end,
		[32] = function (x) 
			if(GetMobAction(16851158) == 24) then 
				player:startEvent(32);
			end
		end,
		[33] = function (x) 
			if(GetMobAction(16851149) == 24) then 
				player:startEvent(32); 
			end
		end,
		[34] = function (x) 
			if(GetMobAction(16851167) == 24) then 
				player:startEvent(32); 
			end
		end,
		[35] = function (x) player:startEvent(30); end,
		[36] = function (x) 
			if(GetMobAction(16851072) == 24) then 
				player:startEvent(32); 
			end
		end,
		[37] = function (x) 
			if(GetMobAction(16851081) == 24) then 
				player:startEvent(32); 
			end
		end,
		[38] = function (x) 
			if(GetMobAction(16851090) == 24) then 
				player:startEvent(32); 
			end
		end,
		[41] = function (x)
			if(math.random() >= 0.5) then
				player:startEvent(31);  
			else
				player:startEvent(34);  
			end
		end,
	}
	
end;
	
-----------------------------------	
-- onRegionLeave	
-----------------------------------	

function onRegionLeave(player,region)
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
	
	if(csid == 0x002e and option == 1) then
		player:setVar("Stelepoint",2);
		player:setPos(274 ,-82 ,-62 ,180 ,14); -- -> back to Hall of Transferance
	end
	
end;