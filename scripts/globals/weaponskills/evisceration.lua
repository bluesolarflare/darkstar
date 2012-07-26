-----------------------------------	
-- Evisceration	
-- Dagger weapon skill	
-- Skill level: 230	
-- In order to obtain Evisceration, the quest Cloak and Dagger must be completed.	
-- Delivers a fivefold attack. Chance of critical hit varies with TP.	
-- Will stack with Sneak Attack.	
-- Aligned with the Shadow Gorget, Soil Gorget & Light Gorget.	
-- Aligned with the Shadow Belt, Soil Belt & Light Belt.	
-- Element: None	
-- Modifiers: DEX:30%	
-- 100%TP    200%TP    300%TP	
-- 1.00      1.00      1.00	
-----------------------------------	
	
require("scripts/globals/status");	
require("scripts/globals/settings");	
require("scripts/globals/weaponskills");	
-----------------------------------	
	
function OnUseWeaponSkill(player, target, wsID)	
	
	numHits = 5;
	ftp100 = 1; ftp200 = 1; ftp300 = 1;
	str_wsc = 0.0; dex_wsc = 0.3; vit_wsc = 0.0; agi_wsc = 0.0; int_wsc = 0.0; mnd_wsc = 0.0; chr_wsc = 0.0;
	crit100 = 0.1; crit200 = 0.3; crit300 = 0.5;
	canCrit = true;
	acc100 = 0.0; acc200= 0.0; acc300= 0.0;
	atkmulti = 1;
	damage, tpHits, extraHits = doPhysicalWeaponskill(player,target,numHits,str_wsc,dex_wsc,vit_wsc,agi_wsc,int_wsc,mnd_wsc,chr_wsc,canCrit,crit100,crit200,crit300,acc100,acc200,acc300,atkmulti);

	return tpHits, extraHits, damage;
	
end	
