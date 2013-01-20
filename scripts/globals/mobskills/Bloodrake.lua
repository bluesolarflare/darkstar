---------------------------------------------
--  Bloodrake
--
--  Description: Slashes up a single target. Additional effect: Drain
--  Type: Physical
--  Utsusemi/Blink absorb: 1 shadow?
--  Range: Melee
--  Notes: A spell equivalent to Sanguine Blade in terms of functionality where damage dealt is absorbed as health recovered.
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
	local accmod = 1;
	local dmgmod = 1;
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded);

    target:delHP(dmg);

    if(MobPhysicalHit(skill, dmg, target, info.hitslanded) and target:isUndead() == false) then
    end

	return dmg;
end;
