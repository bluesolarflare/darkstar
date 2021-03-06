-----------------------------------
-- Skill level: 290
-- Delivers light elemental damage. Additional effect: Flash. Chance of effect varies with TP.
-- Generates a significant amount of Enmity.
-- Does not stack with Sneak Attack
-- Aligned with Aqua Gorget.
-- Aligned with Aqua Belt.
-- Properties:
-- Element: Light
-- Skillchain Properties:Induration Reverberation
-- Modifiers: STR:30% MND:30%
-- Damage Multipliers by TP:
--     100%TP	200%TP	 300%TP
--      3.00	 3.00	 3.00
-----------------------------------
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/weaponskills");
-----------------------------------

function onUseWeaponSkill(player, target, wsID)

	local params = {};
	params.ftp100 = 3; params.ftp200 = 3; params.ftp300 = 3;
	params.str_wsc = 0.3; params.dex_wsc = 0.0; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.3; params.chr_wsc = 0.0;
	params.ele = ELE_DARK;
	params.skill = SKILL_STF;
	params.includemab = true;

	if (USE_ADOULIN_WEAPON_SKILL_CHANGES == true) then
		params.ftp100 = 2.75; params.ftp200 = 4; params.ftp300 = 5;
		params.str_wsc = 0.3; params.int_wsc = 0.3; params.mnd_wsc = 0.0;
	end

	local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, params);
	
	local blmha = 0;
	local smnha = 0;
	local schha = 0;
	if (((player:getEquipID(SLOT_MAIN) == 18589) and player:getVar("BLMHAFight") == 5)) then
	   blmha = 1;
    end	   
	
	if (((player:getEquipID(SLOT_MAIN) == 18601) and player:getVar("SMNHAFight") == 5)) then
	   smnha = 1;
    end	   
	
	if (((player:getEquipID(SLOT_MAIN) == 18602) and player:getVar("SCHHAFight") == 5)) then
	   schha = 1;
	end	
	
	
	if((player:getEquipID(SLOT_MAIN) == 18589) or (player:getEquipID(SLOT_MAIN) == 18601) or (player:getEquipID(SLOT_MAIN) == 18602)) then
		if(damage > 0) then
			if(player:getTP() >= 100 and player:getTP() < 200) then
		        if (((blmha == 1) or (smnha == 1) or (schha == 1)) and (player:hasStatusEffect(EFFECT_AFTERMATH_PLUSHA3) == false) and (player:hasStatusEffect(EFFECT_LEVEL_TWO_SC) == false) 
				    and (player:hasStatusEffect(EFFECT_LEVEL_THREE_SC) == false) and (player:hasStatusEffect(EFFECT_LEVEL_FOUR_SC) == false)) then
			        player:addStatusEffectEx(EFFECT_AFTERMATH_PLUSHA1,EFFECT_AFTERMATH_LV1,0,3,60);
                end							
				player:addStatusEffect(EFFECT_AFTERMATH, 7, 3, 20, 0, 13);
			elseif(player:getTP() >= 200 and player:getTP() < 300) then
		        if (((blmha == 1) or (smnha == 1) or (schha == 1)) and (player:hasStatusEffect(EFFECT_AFTERMATH_PLUSHA3) == false) and (player:hasStatusEffect(EFFECT_LEVEL_TWO_SC) == false) 
				    and (player:hasStatusEffect(EFFECT_LEVEL_THREE_SC) == false) and (player:hasStatusEffect(EFFECT_LEVEL_FOUR_SC) == false)) then
			        player:addStatusEffectEx(EFFECT_AFTERMATH_PLUSHA2,EFFECT_AFTERMATH_LV2,0,3,60);
                end				
				player:addStatusEffect(EFFECT_AFTERMATH, 7, 3, 40, 0, 13);
			elseif(player:getTP() == 300) then
		        if (((blmha == 1) or (smnha == 1) or (schha == 1)) and (player:hasStatusEffect(EFFECT_AFTERMATH_PLUSHA3) == false) and (player:hasStatusEffect(EFFECT_LEVEL_TWO_SC) == false) 
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
