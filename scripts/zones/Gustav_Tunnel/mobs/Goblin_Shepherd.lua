-----------------------------------	
-- Area: Gustav Tunnel
-- MOB:  Goblin Shepherd	
-----------------------------------	

require("scripts/globals/groundsofvalor");	

-----------------------------------	
-- onMobDeath	
-----------------------------------	

function onMobDeath(mob,killer)	
	checkRegime(killer,mob,764,3);
	checkRegime(killer,mob,765,3);
end;	