-----------------------------------------
--	ID: 5343
--	Cutter Fireflies
--  Transports the user to SC [S]
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/teleports");
-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
	if (target:getZone() == 60) then
        return 0;
    end
    return 56;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	target:setPos(-180.028,-10.335,-559.987,0x36)
	target:addStatusEffectEx(EFFECT_TELEPORT,0,FIREFLIES_AZOUPH,0,1);
end;
