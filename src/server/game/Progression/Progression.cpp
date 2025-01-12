#include "Config.h"
#include "Progression.h"

Progression* Progression::instance()
{
    static Progression instance;
    return &instance;
}

Progression::Progression()
{
    patchId = 21;
    auraId = 4;
    enforceLevel = true;
    enforceDungeonFinder = true;
    enforceDualTalent = true;
    enforceQuestInfo = true;
    damageModifier = 0.6f;
    healingModifier = 0.5f;
    showPatchNotes = true;
}

void AddSC_instance_blackrock_spire_progression();
void AddSC_instance_onyxias_lair_progression();
void AddSC_boss_onyxia_progression();

void Progression::LoadProgressionScripts()
{
    if (sConfigMgr->GetOption<uint32>("Progression.Patch", PATCH_ASSAULT_ON_THE_RUBY_SANCTUM) < PATCH_ECHOES_OF_DOOM)
    {
        AddSC_instance_blackrock_spire_progression();
    }

    if (sConfigMgr->GetOption<uint32>("Progression.Patch", PATCH_ASSAULT_ON_THE_RUBY_SANCTUM) < PATCH_CALL_OF_THE_CRUSADE)
    {
        AddSC_instance_onyxias_lair_progression();
        AddSC_boss_onyxia_progression();
    }
}
