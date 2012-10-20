-----------------------------------	
-- Full Break	
-- Great Axe weapon skill	
-- Skill level: 225 (Warriors only.)	
-- Lowers enemy's attack, defense, accuracy, and evasion. Duration of effect varies with TP.	
-- Lowers attack and defense by 12.5%, evasion by 20 points, and estimated to also lower accuracy by 20 points.	
-- These enfeebles are given as four seperate status effects, resists calculated seperately for each. They almost always wear off simultaneously, but have been observed to wear off at different times.	
-- Strong against: Coeurls.	
-- Immune: Antica, Cockatrice, Crawlers, Worms.	
-- Will stack with Sneak Attack.	
-- Aligned with the Aqua Gorget & Snow Gorget.	
-- Aligned with the Aqua Belt & Snow Belt.	
-- Element: Earth	
-- Modifiers: STR:50% ; VIT:50%	
-- 100%TP    200%TP    300%TP	
-- 1.00      1.00      1.00	
-----------------------------------	
	
require("scripts/globals/status");	
require("scripts/globals/settings");	
require("scripts/globals/weaponskills");	
-----------------------------------	
	
function OnUseWeaponSkill(player, target, wsID)	
	
	numHits = 1;
	ftp100 = 1; ftp200 = 1; ftp300 = 1;
	str_wsc = 0.5; dex_wsc = 0.0; vit_wsc = 0.5; agi_wsc = 0.0; int_wsc = 0.0; mnd_wsc = 0.0; chr_wsc = 0.0;
	crit100 = 0.0; crit200 = 0.0; crit300 = 0.0;
	canCrit = false;
	acc100 = 0.0; acc200= 0.0; acc300= 0.0;
	atkmulti = 1;
	damage, tpHits, extraHits = doPhysicalWeaponskill(player,target,numHits,str_wsc,dex_wsc,vit_wsc,agi_wsc,int_wsc,mnd_wsc,chr_wsc,canCrit,crit100,crit200,crit300,acc100,acc200,acc300,atkmulti);

	if damage > 0 then
		tp = player:getTP();
		duration = (tp/100 * 30) + 60;
		if(target:hasStatusEffect(EFFECT_DEFENSE_DOWN) == false) then
			target:addStatusEffect(EFFECT_DEFENSE_DOWN, 12.5, 0, duration);
		end
		if(target:hasStatusEffect(EFFECT_ATTACK_DOWN) == false) then
			target:addStatusEffect(EFFECT_ATTACK_DOWN, 12.5, 0, duration);
		end
		if(target:hasStatusEffect(EFFECT_EVASION_DOWN) == false) then
			target:addStatusEffect(EFFECT_EVASION_DOWN, 20, 0, duration);
		end
		if(target:hasStatusEffect(EFFECT_ACCURACY_DOWN) == false) then
			target:addStatusEffect(EFFECT_ACCURACY_DOWN, 20, 0, duration);
		end
	end
	return tpHits, extraHits, damage;
	
end	
