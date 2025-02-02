#include "GlobalScript.h"
#include "Progression.h"
#include "Spell.h"

class instance_naxxramas_tweaks : public GlobalScript
{
public:
    instance_naxxramas_tweaks() : GlobalScript("instance_naxxramas_tweaks") {}

    void OnLoadSpellCustomAttr(SpellInfo* spellInfo) override
    {
        switch (spellInfo->Id)
        {
        case 29204: // (Loatheb)
            spellInfo->Effects[EFFECT_0].BasePoints = 2549 * 0.8f;
            break;
        case 29214: // Wrath of the Plaguebringer (Noth the Plaguebringer)
            spellInfo->Effects[EFFECT_0].BasePoints = 1757 * 0.8f;
            spellInfo->Effects[EFFECT_0].DieSides = 285;
            spellInfo->Effects[EFFECT_1].BasePoints = 874 * 0.8f;
            spellInfo->Effects[EFFECT_1].DieSides = 251;
            break;
        case 29325: // Acid Volley (Stoneskin Gargoyle)
            spellInfo->Effects[EFFECT_1].BasePoints = 129;
            spellInfo->Effects[EFFECT_1].DieSides = 21;
            break;
        case 29371: // Eruption (Heigan the Unclean
            spellInfo->Effects[EFFECT_0].BasePoints = 3499 * 0.8f;
            spellInfo->Effects[EFFECT_0].DieSides = 1001;
            break;
        case 29407: // Mind Flay (Eye Stalk)
            spellInfo->Effects[EFFECT_0].BasePoints = 749;
            spellInfo->Effects[EFFECT_1].BasePoints = -21;
            break;
        case 29915: // Flesh Rot (Infectious Ghoul)
            spellInfo->Effects[EFFECT_1].BasePoints = 787;
            spellInfo->Effects[EFFECT_1].DieSides = 225;
            break;
        case 29998: // Decrepit Fever (Heigan the Unclean)
            spellInfo->Effects[EFFECT_1].BasePoints = 499 * 0.8f;
            break;
        case 30109: // Slime Burst (Mutated Grub)
            spellInfo->Effects[EFFECT_0].BasePoints = 231;
            spellInfo->Effects[EFFECT_0].DieSides = 37;
            break;
        case 30122: // Plague Cloud (Heigan the Unclean)
            spellInfo->Effects[EFFECT_0].BasePoints = 3999 * 0.8f;
            break;
        case 30138: // Shadow Shock (Plagued Champion)
            spellInfo->Effects[EFFECT_0].BasePoints = 554;
            spellInfo->Effects[EFFECT_0].DieSides = 91;
            break;
        }
    }
};

void AddSC_instance_naxxramas_tweaks()
{
    new instance_naxxramas_tweaks();
}
