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
void AddSC_instance_onyxias_lair_tweaks();
void AddSC_map_alterac_valley();
void AddSC_npc_alterac_valley_commander();

void Progression::LoadProgressionScripts()
{
    uint32 id = sConfigMgr->GetOption<uint32>("Progression.Patch", PATCH_ASSAULT_ON_THE_RUBY_SANCTUM);

    if (id < PATCH_ECHOES_OF_DOOM)
    {
        AddSC_instance_blackrock_spire_progression();
    }

    if (id < PATCH_CALL_OF_THE_CRUSADE)
    {
        AddSC_instance_onyxias_lair_tweaks();
    }

    AddSC_map_alterac_valley();

    if (id < PATCH_THE_GODS_OF_ZUL_AMAN)
    {
        AddSC_npc_alterac_valley_commander();
    }
}
