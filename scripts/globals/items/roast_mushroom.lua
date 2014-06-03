-----------------------------------------
-- ID: 4410
-- Item: witch_kabob
-- Food Effect: 30minutes, All Races
-----------------------------------------
-- Magic Points 10
-- Strength -1
-- Mind 3
-- Enmity -1
-- MP Recovered While Healing 2
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
	if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
		result = 246;
	end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	target:addStatusEffect(EFFECT_FOOD,0,0,1800,4410);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
	target:addMod(MOD_MP, 10);
	target:addMod(MOD_STR, -1);
	target:addMod(MOD_MND, 3);
	target:addMod(MOD_ENMITY, -1);
	target:addMod(MOD_MPHEAL, 2);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
	target:delMod(MOD_MP, 10);
	target:delMod(MOD_STR, -1);
	target:delMod(MOD_MND, 3);
	target:delMod(MOD_ENMITY, -1);
	target:delMod(MOD_MPHEAL, 2);
end;
