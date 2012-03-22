-------------------------------
-- Auth : Thief
-- Skill: Full Break
-- Class: G.Axe Weapon Skill
-- Level: 225
-- Mods : STR:50%, VIT:50%
-- Desc : Lowers enemies Evasion/Attack/Accuracy/Defense. Duration of effect varies with TP. (max40sec)
-------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/weaponskills");
require("/scripts/globals/status");

function OnUseWeaponSkill(attacker, target, wsID)

	--ftp damage mods (for Damage Varies with TP; lines are calculated in the function
	ftp100 = 1.0; ftp200 = 1.0; ftp300 = 1.0;

	-- Lower enemy stats for up to 40secs. All effects seem to have similar duration.
	durationMod = fTP(attacker:getTP(),ftp100,ftp200,ftp300);
	duration = math.random(10,20*durationMod);

	target:addStatusEffect(EFFECT_ATTACK_DOWN,0,12.5,math.floor(duration), FLAG_DISPELABLE);
	target:addStatusEffect(EFFECT_DEFENSE_DOWN,0,12.5,math.floor(duration), FLAG_DISPELABLE);
	target:addStatusEffect(EFFECT_ACCURACY_DOWN,0,20,math.floor(duration), FLAG_DISPELABLE);
	target:addStatusEffect(EFFECT_EVASION_DOWN,0,20,math.floor(duration), FLAG_DISPELABLE);

	--number of normal hits for ws (example = Sturmwind)
	numHits = 1;

	--stat-modifiers (0.0 = 0%, 0.2 = 20%, 0.5 = 50%..etc)
	str_mod = 0.5;		dex_mod = 0.0;
	vit_mod = 0.5;		agi_mod = 0.0;
	int_mod = 0.0;		mnd_mod = 0.0;
	chr_mod = 0.0;

	--critical modifiers (0.0 = 0%, 0.2 = 20%, 0.5 = 50%..etc)
	crit100 = 0.0; crit200=0.0; crit300=0.0;
	canCrit = false;

	--accuracy modifiers (0.0 = 0%, 0.2 = 20%, 0.5 = 50%..etc) Keep 0 if ws doesn't have accuracy modification.
	acc100 = 0.0; acc200=0.0; acc300=0.0;

	--attack multiplier (only some WSes use this, this varies the actual ratio value, see Tachi: Kasha) 1 is default.
	atkMulti = 1;

	damage = doPhysicalWeaponskill(attacker,target, numHits, str_mod, dex_mod, vit_mod, agi_mod, int_mod, mnd_mod, chr_mod, canCrit, crit100, crit200, crit300, acc100, acc200, acc300, atkMulti);

	return damage;
end
