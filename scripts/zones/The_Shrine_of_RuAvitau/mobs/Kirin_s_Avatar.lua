-----------------------------------
-- Area: The Shrine of Ru'Avitau
-- NPC:  Kirin's Avatar: 17506675
-----------------------------------
package.loaded[ "scripts/zones/The_Shrine_of_RuAvitau/TextIDs" ] = nil;
-----------------------------------

require( "scripts/zones/The_Shrine_of_RuAvitau/TextIDs" );
require( "scripts/globals/status" );
require("scripts/globals/mobscaler");

-----------------------------------
-- onMobInitialize Action
-----------------------------------
function onMobInitialize( mob )
    
end

-----------------------------------
-- onMobSpawn Action
-----------------------------------
function onMobSpawn( mob )
    mob:setLocalVar("PartySize",9);  -- Large Party of 75's can defeat Kirin
	
    mob:setModelId(math.random(791, 798));
    mob:hideName(false);
    mob:untargetable(true);
    mob:setUnkillable(true);
end

function onMobEngaged(mob, target)
    mobScaler(mob,target);
    local id = mob:getID();
    local kirin = GetMobByID(mob:getID()-5); -- Kirin's Avatar is offset by 5
    local action = GetMobAction(id);
    local distance = mob:checkDistance(target);
    local abilityId = nil;
    local modelId = mob:getModelId();
    
    switch (modelId) : caseof
    {
        [791] = function (x) abilityId = 656; end, -- Carbuncle
        [792] = function (x) abilityId = 583; end, -- Fenrir
        [793] = function (x) abilityId = 592; end, -- Ifrit
        [794] = function (x) abilityId = 601; end, -- Titan
        [795] = function (x) abilityId = 610; end, -- Leviathan
        [796] = function (x) abilityId = 619; end, -- Garuda
        [797] = function (x) abilityId = 628; end, -- Shiva
        [798] = function (x) abilityId = 637; end, -- Ramuh
    }
    
    if (abilityId ~= nil) then
        mob:useMobAbility(abilityId);
    end
end

-----------------------------------
-- onMobFight
-----------------------------------
function onMobFight( mob, target )
end

-----------------------------------
-- onMobWeaponSkill
-----------------------------------
function onMobWeaponSkill( target, mob, skill )
    mob:setUnkillable(false);
    mob:setHP(0);
end

-----------------------------------
-- onMobDeath
-----------------------------------
function onMobDeath( mob, killer )
end

-----------------------------------
-- OnMobDespawn
-----------------------------------
function onMobDespawn( mob )
end
