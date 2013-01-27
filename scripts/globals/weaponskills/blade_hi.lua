-----------------------------------     
-- Blade HI    
-- Katana weapon skill  
-- Skill level: N/A
-- Description: Deals quadruple damage. Chance of params.critical hit varies with TP. Kannagi: Aftermath.
-- Available only when equipped with Kannagi (85)/(90)/(95)/(99) or Tobi +1/+2/+3.
-- Aligned with the Shadow Gorget & Soil Gorget.
-- Aligned with the Shadow Belt & Soil Belt.
-- Element: None        
-- Modifiers: AGI:60% 
-- Skillchain Properties: Darkness/Gravitation
-- 100%TP    200%TP    300%TP   
-- 4.00      4.00      4.00   
--
-- params.critical Hit Rate by TP:
-- 100%TP    200%TP    300%TP
-- 15%	     20%       25%
--
-----------------------------------        
require("scripts/globals/status");      
require("scripts/globals/settings");    
require("scripts/globals/weaponskills");        
-----------------------------------     
        
function OnUseWeaponSkill(player, target, wsID) 
        
	local params = {};
	params.numHits = 1;
	params.ftp100 = 4; params.ftp200 = 4; params.ftp300 = 4;
	params.str_wsc = 0.0; params.dex_wsc = 0.0; params.vit_wsc = 0.0; params.agi_wsc = 0.6; params.int_wsc = 0.0; params.mnd_wsc = 0.0; params.chr_wsc = 0.0;
	params.crit100 = 0.15; params.crit200 = 0.2; params.crit300 = 0.25;
	params.canCrit = true;
	params.acc100 = 0.0; params.acc200= 0.0; params.acc300= 0.0;
	params.atkmulti = 1;
	local damage, tpHits, extraHits = doPhysicalWeaponskill(player, target, params);        

	return tpHits, extraHits, damage;
        
end     