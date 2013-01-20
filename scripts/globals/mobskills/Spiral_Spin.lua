---------------------------------------------
--  Spiral Spin
--
--  Description: Chance of effect varies with TP. Additional Effect: Accuracy Down.
--  Type: Physical (Slashing)
---------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------

function OnMobSkillCheck(target,mob,skill)
	return 0;
end;

function OnMobWeaponSkill(target, mob, skill)

	local numhits = 1;
	local accmod = 2;
	local dmgmod = 3;
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,1,2,3);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded);

	local typeEffect = EFFECT_ACCURACY_DOWN;
	if(target:hasStatusEffect(typeEffect) == false and MobPhysicalHit(skill, dmg, target, info.hitslanded)) then
		local statmod = MOD_INT;
		local resist = applyPlayerResistance(mob,skill,target,mob:getMod(statmod)-target:getMod(statmod),0,2);
		if(resist > 0.2) then
			local mobTP = mob:getTP();
			if(mobTP <= 100) then
				local accDownTime = 30;
			elseif(mobTP <= 200) then
				local accDownTime = 60;
			else
				local accDownTime = 90;
			end
			target:addStatusEffect(typeEffect,50,0,accDownTime);
		end
	end

	target:delHP(dmg);
	return dmg;
end;
