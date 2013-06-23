---------------------------------------------------
-- Ranged Attack
-- Deals a ranged attack to a single target.
---------------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------------

function OnMobSkillCheck(target,mob,skill)
    if(mob:getHPP() <= 50) then
        return 0;
    end
    return 1;
end;

function OnMobWeaponSkill(target, mob, skill)
    local dmgmod = 1;

	if(mob:getHP()~=0) then
		dmgmod = mob:getHP()/mob:getMaxHP();
	end

    local baseDmg = mob:getWeaponDmg() * math.random(22,30) * dmgmod;

    local info = MobMagicalMove(mob,target,skill,baseDmg,ELE_NONE,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_FIRE,MOBPARAM_IGNORE_SHADOWS);

    -- dynamis mobs will kill themselves
    -- other mobs might now
    mob:setHP(0);

    target:delHP(dmg);
    return dmg;
end;
