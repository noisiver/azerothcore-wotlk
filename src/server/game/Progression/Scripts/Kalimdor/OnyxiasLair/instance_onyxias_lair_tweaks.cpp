#include "GlobalScript.h"
#include "Progression.h"
#include "Spell.h"

class instance_onyxias_lair_tweaks : public GlobalScript
{
public:
    instance_onyxias_lair_tweaks() : GlobalScript("instance_onyxias_lair_tweaks") {}

    void OnLoadSpellCustomAttr(SpellInfo* spellInfo) override
    {
        switch (spellInfo->Id)
        {
        // Onyxia
        case 15847: // Tail Sweep
            spellInfo->Effects[EFFECT_0].BasePoints = 599;
            spellInfo->Effects[EFFECT_0].DieSides = 401;
            break;
        case 17086: // Breath
        case 18351:
        case 18564:
        case 18576:
        case 18584:
        case 18596:
        case 18609:
        case 18617:
            spellInfo->Effects[EFFECT_0].BasePoints = 1274;
            spellInfo->Effects[EFFECT_0].DieSides = 451;
            break;
        case 17731: // Eruption
            spellInfo->Effects[EFFECT_0].BasePoints = 1312;
            spellInfo->Effects[EFFECT_0].DieSides = 375;
            break;
        case 18392: // Fireball
            spellInfo->Effects[EFFECT_0].BasePoints = 1699;
            spellInfo->Effects[EFFECT_0].DieSides = 601;
            break;
        case 18435: // Flame Breath
            spellInfo->Effects[EFFECT_0].BasePoints = 3062;
            spellInfo->Effects[EFFECT_0].DieSides = 875;
            break;
        case 18500: // Wing Buffet
            spellInfo->Effects[EFFECT_1].BasePoints = 562;
            spellInfo->Effects[EFFECT_1].DieSides = 375;
            break;
            // Onyxian Warder
        case 15284: // Cleave
            spellInfo->Effects[EFFECT_0].BasePoints = 9;
            spellInfo->Effects[EFFECT_0].DieSides = 1;
            break;
        case 18958: // Flame Lash
            spellInfo->Effects[EFFECT_0].BasePoints = 55;
            spellInfo->Effects[EFFECT_0].DieSides = 9;
            spellInfo->Effects[EFFECT_0].RealPointsPerLevel = 1.4f;
            spellInfo->Effects[EFFECT_1].BasePoints = -21;
            spellInfo->Effects[EFFECT_1].RealPointsPerLevel = -1.2f;
            break;
        case 20203: // Fire Nova
            spellInfo->Effects[EFFECT_0].BasePoints = 463;
            spellInfo->Effects[EFFECT_0].DieSides = 133;
            break;
        }
    }
};

void AddSC_instance_onyxias_lair_tweaks()
{
    new instance_onyxias_lair_tweaks();
}
