-----------------------------------------
--	Spell: PHALANX
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onSpellCast(caster,target,spell)
	enhskill = caster:getSkillLevel(ENHANCING_MAGIC_SKILL);
	final = 0;
	duration = 180;
	if (caster:hasStatusEffect(EFFECT_COMPOSURE) == true and caster:getID() == target:getID()) then
		duration = duration * 3;
	end

	if(enhskill<=300) then
		final = (enhskill/10) -2;
		if(final<0) then
			final = 0;
		end
	elseif(enhskill>300) then
		final = (enhskill/29) + 28;
	else
		print("Warning: Unknown enhancing magic skill for phalanx.");
	end

	if(final>35) then
		final = 35;
	end

	if(target:hasStatusEffect(EFFECT_PHALANX)) then
		oldeffect = target:getStatusEffect(EFFECT_PHALANX);
		if(oldeffect:getPower()<=final) then --overwrite
			target:delStatusEffect(EFFECT_PHALANX);
			target:addStatusEffect(EFFECT_PHALANX,final,0,180);
			spell:setMsg(0);
		else --no effect
			spell:setMsg(75);
		end
	else
		target:addStatusEffect(EFFECT_PHALANX,final,0,duration);
		spell:setMsg(0);
	end

	return EFFECT_PHALANX;
end;