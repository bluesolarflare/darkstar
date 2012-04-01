-----------------------------------	
-- Spinning Attack	
-- Hand-to-Hand weapon skill	
-- Spinning Attack (Magic Pot) has an identical name. If an internal link incorrectly referred you to this page, please change the link to point directly to Spinning Attack (Magic Pot).	
-- Skill Level: 150	
-- Delivers an area attack. Radius varies with TP.	
-- Will stack with Sneak Attack.	
-- Aligned with the Flame Gorget & Thunder Gorget.	
-- Aligned with the Flame Belt & Thunder Belt.	
-- Element: None	
-- Modifiers: STR:35%	
-- 100%TP    200%TP    300%TP	
-- 1.00      1.00      1.00	
-----------------------------------	
	
require("scripts/globals/status");	
require("scripts/globals/settings");	
require("scripts/globals/weaponskills");	
-----------------------------------	
	
function OnUseWeaponSkill(player, target, wsID)	
	
	numHits = 2;
	ftp100 = 1; ftp200 = 1; ftp300 = 1;
	str_wsc = 0.35; dex_wsc = 0.0; vit_wsc = 0.0; agi_wsc = 0.0; int_wsc = 0.0; mnd_wsc = 0.0; chr_wsc = 0.0;
	crit100 = 0.0; crit200 = 0.0; crit300 = 0.0;
	canCrit = false;
	acc100 = 0.0; acc200= 0.0; acc300= 0.0;
	atkmulti = 1;
	damage = doPhysicalWeaponskill(player,target,numHits,str_wsc,dex_wsc,vit_wsc,agi_wsc,int_wsc,mnd_wsc,chr_wsc,canCrit,crit100,crit200,crit300,acc100,acc200,acc300,atkmulti);
	
	return damage;
	
end	
