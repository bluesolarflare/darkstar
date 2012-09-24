-----------------------------------
--
-- 
--
-----------------------------------
package.loaded["scripts/globals/conquest"] = nil;
-----------------------------------

require("scripts/globals/quests");
require("scripts/globals/missions");
require("scripts/globals/conquest");
require("scripts/globals/status");

-----------------------------------
--
-----------------------------------

function onMobDeathEx(mob,killer)
	
	-- DRK quest - Blade Of Darkness
	if(killer:getEquipID(SLOT_MAIN) == 16607) then
		local SwordKills = killer:getVar("Blade_of_Darkness_SwordKills"); 
		if(SwordKills < 200) then
			killer:setVar("Blade_of_Darkness_SwordKills", SwordKills + 1);	
		end
	end	
	if(killer:getCurrentMission(WINDURST) == A_TESTING_TIME) then
		if(killer:hasCompletedMission(WINDURST,A_TESTING_TIME) and killer:getZone() == 118) then
			killer:setVar("testingTime_crea_count",killer:getVar("testingTime_crea_count") + 1);
		elseif(killer:hasCompletedMission(WINDURST,A_TESTING_TIME) == false and killer:getZone() == 117) then
			killer:setVar("testingTime_crea_count",killer:getVar("testingTime_crea_count") + 1);
		end
	end
	
end;