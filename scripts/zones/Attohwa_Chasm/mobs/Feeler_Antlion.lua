-----------------------------------
-- Area: Attohwa Chasm
-- NPC:  Feeler Antlion
-----------------------------------
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
	mob:addMod(MOD_REGAIN, 40);	-- Don't know exact value
	mob:addMod(MOD_REGEN, 30);
	mob:setLocalVar("SAND_BLAST",1);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;