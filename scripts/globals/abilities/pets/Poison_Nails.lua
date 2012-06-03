---------------------------------------------------
-- Poison Nails  M=3? guess
---------------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------------

function OnPetAbility(target, pet, skill)
	totaldamage = 0;
	damage = pet:getMeleeHitDamage(target,95);
	if(damage>0) then
		totaldamage = totaldamage + damage*3;
	end
	numhits = 1;
	if(damage==-1) then --it missed
		numhits = 0;
	end
	totaldamage = MobFinalAdjustments(totaldamage,pet,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,numhits);
	target:delHP(totaldamage);
	target:updateEnmityFromDamage(pet,totaldamage);
	if(target:getStatusEffect(EFFECT_POISON)==nil) then
		target:addStatusEffect(EFFECT_POISON,1,3,60);
	end
	
	return totaldamage;
end