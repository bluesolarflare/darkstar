-----------------------------------	
-- Area:  Lower Delkfutt's Tower
-- MOB:   Magic Urn	
-----------------------------------	

require("scripts/globals/groundsofvalor");	

-----------------------------------	
-- onMobDeath	
-----------------------------------	

function onMobDeath(mob,killer)	
	checkRegime(killer,mob,781,2);
end;	