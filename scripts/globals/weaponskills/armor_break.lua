-----------------------------------	
-- Armor Break	
-- Great Axe weapon skill	
-- Skill level: 100	
-- Lowers enemy's defense. Duration of effect varies with TP.	
-- Lowers defense by as much as 25% if unresisted.	
-- Strong against: Antica, Bats, Cockatrice, Dhalmel, Lizards, Mandragora, Worms.	
-- Immune: Ahriman.	
-- Will stack with Sneak Attack.	
-- Aligned with the Thunder Gorget.	
-- Aligned with the Thunder Belt.	
-- Element: Wind	
-- Modifiers: STR:20% ; VIT:20%	
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
	str_wsc = 0.2; dex_wsc = 0.0; vit_wsc = 0.2; agi_wsc = 0.0; int_wsc = 0.0; mnd_wsc = 0.0; chr_wsc = 0.0;
	crit100 = 0.0; crit200 = 0.0; crit300 = 0.0;
	canCrit = false;
	acc100 = 0.0; acc200= 0.0; acc300= 0.0;
	atkmulti = 1;
	damage, tpHits, extraHits = doPhysicalWeaponskill(player,target,numHits,str_wsc,dex_wsc,vit_wsc,agi_wsc,int_wsc,mnd_wsc,chr_wsc,canCrit,crit100,crit200,crit300,acc100,acc200,acc300,atkmulti);
	tp = player:getTP();
	duration = (tp/100 * 30) + 60;
	target:addStatusEffect(149, 25, 0, duration, 0, 0);
	return tpHits, extraHits, damage;
	
end	
