---------------------------------------------
--  Deafening Tantara
--
--  Description: Inflicts silence in an area of effect.
--  Type: Enfeebling
--  Utsusemi/Blink absorb: Ignores shadows
--  Range: 10'
--  Notes: Doesn't use this if its horn is broken.
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------
function OnMobSkillCheck(target,mob,skill)
	return 0;
end;

function OnMobWeaponSkill(target, mob, skill)
	local message = MSG_MISS;
	local typeEffect = EFFECT_SILENCE;
	if(target:hasStatusEffect(typeEffect) == false) then
		local statmod = MOD_INT;
		local resist = applyPlayerResistance(mob,skill,target,mob:getMod(statmod)-target:getMod(statmod),0,4);
		if(resist > 0.5) then
			message = MSG_ENFEEB_IS;
			target:addStatusEffect(typeEffect,1,0,30);--power=1;tic=0;duration=30;
		end
	else
		message = MSG_NO_EFFECT;
	end
	skill:setMsg(message);
	return typeEffect;
end;
