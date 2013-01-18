---------------------------------------------
--  Osmosis
--
--  Description: Steals an enemy's HP and one beneficial status effect. Ineffective against undead.
--  Type: Magical
---------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------

function OnMobSkillCheck(target,mob,skill)
	return 0;
end;

function OnMobWeaponSkill(target, mob, skill)

	-- Add Steals one beneficial status effect

	local dmgmod = 1;
	local accmod = 1;
	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*7,accmod,dmgmod,TP_MAB_BONUS,1);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);


    if(target:isUndead() == false) then
        target:delHP(dmg);
        mob:addHP(dmg);
    else
        skill:setMsg(MSG_NO_EFFECT);
    end

	return dmg;
end;
