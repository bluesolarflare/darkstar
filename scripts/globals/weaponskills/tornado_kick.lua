-------------------------------
-- Auth : Thief
-- Skill: Tornado Kick
-- Class: H2H Weapon Skill
-- Level: 225
-- Mods : STR:37.5% VIT:30%
-- 100%TP 	200%TP 	300%TP
-- 2.0x		2.75x	3.5x
-- Delivers a twofold attack. Damage varies with TP.
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/weaponskills");
-----------------------------------

function onUseWeaponSkill(player, target, wsID)

	local params = {};
	--number of normal hits for ws
	params.numHits = 2;

	--stat-modifiers (0.0 = 0%, 0.2 = 20%, 0.5 = 50%..etc)
	params.str_wsc = 0.5;		params.dex_wsc = 0.0;
	params.vit_wsc = 0.5;		params.agi_wsc = 0.0;
	params.int_wsc = 0.0;		params.mnd_wsc = 0.0;
	params.chr_wsc = 0.0;

	--ftp damage mods (for Damage Varies with TP; lines are calculated in the function ftp)
	params.ftp100 = 2.0; params.ftp200 = 2.75; params.ftp300 = 3.5;

	--critical modifiers (0.0 = 0%, 0.2 = 20%, 0.5 = 50%..etc)
	params.crit100 = 0.0; params.crit200=0.0; params.crit300=0.0;
	params.canCrit = false;

	--params.accuracy modifiers (0.0 = 0%, 0.2 = 20%, 0.5 = 50%..etc) Keep 0 if ws doesn't have accuracy modification.
	params.acc100 = 0.0; params.acc200=0.0; params.acc300=0.0;

	--attack multiplier (only some WSes use this, this varies the actual ratio value, see Tachi: Kasha) 1 is default.
	params.atkmulti = 1;
	-- Tornado kick is not considered a kick attack and is not modified by Footwork http://www.bluegartr.com/threads/121610-Rehauled-Weapon-Skills-tier-lists?p=6140907&viewfull=1#post6140907

	local mnkha = 0;
	local pupha = 0;

	if (((player:getEquipID(SLOT_MAIN) == 18764) and player:getVar("MNKHAFight") == 5)) then
	   mnkha = 1;
    end	   
	
	if (((player:getEquipID(SLOT_MAIN) == 18765) and player:getVar("PUPHAFight") == 5)) then
	   pupha = 1;
    end		
	
	
	if (USE_ADOULIN_WEAPON_SKILL_CHANGES == true) then
		params.ftp100 = 2.25; params.ftp200 = 3.25; params.ftp300 = 0.5;  --7.5
		params.str_wsc = 0.4; params.dex_wsc = 0.4; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.0; params.chr_wsc = 0.0;
		params.atkmulti = 1.5;
	end

	local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, params);
	if((player:getEquipID(SLOT_MAIN) == 18764) or (player:getEquipID(SLOT_MAIN) == 18765)) then
		if(damage > 0) then
			if(player:getTP() >= 100 and player:getTP() < 200) then
		        if (((mnkha == 1) or (pupha == 1)) and (player:hasStatusEffect(EFFECT_AFTERMATH_PLUSHA3) == false) and (player:hasStatusEffect(EFFECT_LEVEL_TWO_SC) == false) 
				    and (player:hasStatusEffect(EFFECT_LEVEL_THREE_SC) == false) and (player:hasStatusEffect(EFFECT_LEVEL_FOUR_SC) == false)) then
			        player:addStatusEffectEx(EFFECT_AFTERMATH_PLUSHA1,EFFECT_AFTERMATH_LV1,0,3,60);
                end							
				player:addStatusEffect(EFFECT_AFTERMATH, 7, 3, 20, 0, 13);
			elseif(player:getTP() >= 200 and player:getTP() < 300) then
		        if (((mnkha == 1) or (pupha == 1)) and (player:hasStatusEffect(EFFECT_AFTERMATH_PLUSHA3) == false) and (player:hasStatusEffect(EFFECT_LEVEL_TWO_SC) == false) 
				    and (player:hasStatusEffect(EFFECT_LEVEL_THREE_SC) == false) and (player:hasStatusEffect(EFFECT_LEVEL_FOUR_SC) == false)) then
			        player:addStatusEffectEx(EFFECT_AFTERMATH_PLUSHA2,EFFECT_AFTERMATH_LV2,0,3,60);
                end				
				player:addStatusEffect(EFFECT_AFTERMATH, 7, 3, 40, 0, 13);
			elseif(player:getTP() == 300) then
		        if (((mnkha == 1) or (pupha == 1)) and (player:hasStatusEffect(EFFECT_AFTERMATH_PLUSHA3) == false) and (player:hasStatusEffect(EFFECT_LEVEL_TWO_SC) == false) 
				    and (player:hasStatusEffect(EFFECT_LEVEL_THREE_SC) == false) and (player:hasStatusEffect(EFFECT_LEVEL_FOUR_SC) == false)) then
			        player:addStatusEffectEx(EFFECT_AFTERMATH_PLUSHA3,EFFECT_AFTERMATH_LV3,0,3,60);
                end				
				player:addStatusEffect(EFFECT_AFTERMATH, 7, 3, 60, 0, 13);
			end		
		
		end
	end		
	damage = damage * WEAPON_SKILL_POWER
	return tpHits, extraHits, criticalHit, damage;
end
