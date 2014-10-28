-----------------------------------
-- Ability: Third Eye
-----------------------------------
 
require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------
-- OnUseAbility
-----------------------------------

function OnAbilityCheck(player,target,ability)
    if (player:hasStatusEffect(EFFECT_SEIGAN)) then
        ability:setRecast(ability:getRecast()/2);
    end
	return 0,0;
end;

function OnUseAbility(player, target, ability)
	player:addStatusEffect(EFFECT_THIRD_EYE,0,0,30); --power keeps track of procs
end;