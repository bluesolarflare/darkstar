-----------------------------------
-- Area: Jugner Forest (S)
-- NPC:  Decrepit Gnole
-----------------------------------
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
	mob:setLocalVar("transformTime", os.time())
end;

-----------------------------------
-- OnMobRoam Action
-----------------------------------
function OnMobRoam(mob)
	local spawnTime = mob:getLocalVar("transformTime");
	local roamChance = math.random(1,100);
	local roamMoonPhase = getMoonPhase();
	
	if(roamChance > 100-roamMoonPhase) then
		if(mob:AnimationSub() == 0 and os.time() - transformTime > 300) then
			mob:AnimationSub(1);
			mob:setLocalVar("transformTime", os.time());
		elseif(mob:AnimationSub() == 1 and os.time() - transformTime > 300) then
			mob:AnimationSub(0);
			mob:setLocalVar("transformTime", os.time());
		end
	end
end;

-----------------------------------
-- onMobEngaged
-- Change forms every 60 seconds
-----------------------------------

function onMobEngaged(mob,target)	
	local changeTime = mob:getLocalVar("changeTime");
	local chance = math.random(1,100);
	local moonPhase = getMoonPhase();
	
	if(chance > 100-moonPhase) then
		if(mob:AnimationSub() == 0 and mob:getBattleTime() - changeTime > 45) then
			mob:AnimationSub(1);
			mob:setLocalVar("changeTime", mob:getBattleTime());
		elseif(mob:AnimationSub() == 1 and mob:getBattleTime() - changeTime > 45) then
			mob:AnimationSub(0);
			mob:setLocalVar("changeTime", mob:getBattleTime());
		end
	end
end;