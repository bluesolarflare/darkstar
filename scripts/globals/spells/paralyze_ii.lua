-----------------------------------------
-- Spell: Paralyze II
-- Spell accuracy is most highly affected by Enfeebling Magic Skill, Magic Accuracy, and MND.
-- caster:getMerit() returns a value which is equal to the number of merit points TIMES the value of each point
-- Paralyze II value per point is '1' This is a constant set in the table 'merits'
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)

    if(target:hasStatusEffect(EFFECT_PARALYSIS)) then --effect already on, do nothing
        spell:setMsg(75);
    else
        -- Calculate duration.
        local duration = 180;
		
		    if (caster:hasStatusEffect(EFFECT_SABOTEUR)) then
        duration = duration * 2;
    end

        -- Grabbing variables for paralyze potency
        local pMND = caster:getStat(MOD_MND);
        local mMND = target:getStat(MOD_MND);

        local merits = caster:getMerit(MERIT_PARALYZE_II);

        local dMND = (pMND - mMND);

        -- Calculate potency.
        local potency = (pMND + dMND)/5; --simplified from (2 * (pMND + dMND)) / 10

        if (potency > 30) then
            potency = 30;
        end
		    if (caster:hasStatusEffect(EFFECT_SABOTEUR)) then
        potency = potency * 2;
    end
    caster:delStatusEffect(EFFECT_SABOTEUR);

        potency = potency + merits; --similar to Slow II, merit potency bonus is added after the cap

        --printf("Duration : %u",duration);
        --printf("Potency : %u",potency);
        local resist = applyResistanceEffect(caster,spell,target,dMND,35,merits*2,EFFECT_PARALYSIS);

        if(resist >= 0.5) then --there are no quarter or less hits, if target resists more than .5 spell is resisted completely
            if(target:addStatusEffect(EFFECT_PARALYSIS,potency,0,duration*resist)) then
                spell:setMsg(236);
            else
                -- no effect
                spell:setMsg(75);
            end
        else
            -- resist
            spell:setMsg(85);
        end
    end

    return EFFECT_PARALYSIS;
end;
