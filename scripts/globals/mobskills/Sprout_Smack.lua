---------------------------------------------
--  Sprout Smack
--
--  Description: Additional effect: Slow.  Duration of effect varies with TP.
--  Type: Physical (Blunt)
--
--
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------
function OnMobSkillCheck(target,mob,skill)
	return 0;
end;

function OnMobWeaponSkill(target, mob, skill)
	local typeEffect = EFFECT_SLOW;
	if(target:hasStatusEffect(typeEffect) == false and target:hasStatusEffect(EFFECT_HASTE) == false) then
		local statmod = MOD_INT;
		local resist = applyPlayerResistance(mob,skill,target,mob:getMod(statmod)-target:getMod(statmod),0,2);
		if(resist > 0.5) then
			local duration = 30 + (skill:getTP()/100) * math.random(7,10);
			if(resist >.7) then
				duration = duration - ((resist -.7)* 10) * math.random(1,5);
			end
			target:addStatusEffect(typeEffect,10,0,duration);--power=10;tic=0;
		end
	end

	local numhits = 1;
	local accmod = 1;
	local dmgmod = 1.3;
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);
	target:delHP(dmg);
	return dmg;
end;
