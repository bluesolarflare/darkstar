-----------------------------------------
-- ID: 4329
-- Item: serving_of_newt_flambe
-- Food Effect: 240Min, All Races
-----------------------------------------
-- Dexterity 4
-- Mind -3
-- Attack % 18
-- Attack Cap 65
-- Virus Resist 5
-- Curse Resist 5
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
	target:addStatusEffect(EFFECT_FOOD,0,0,14400,4329);
end;

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
	target:addMod(MOD_DEX, 4);
	target:addMod(MOD_MND, -3);
	target:addMod(MOD_FOOD_ATTP, 18);
	target:addMod(MOD_FOOD_ATT_CAP, 65);
	target:addMod(MOD_VIRUSRES, 5);
	target:addMod(MOD_CURSERES, 5);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
	target:delMod(MOD_DEX, 4);
	target:delMod(MOD_MND, -3);
	target:delMod(MOD_FOOD_ATTP, 18);
	target:delMod(MOD_FOOD_ATT_CAP, 65);
	target:delMod(MOD_VIRUSRES, 5);
	target:delMod(MOD_CURSERES, 5);
end;
