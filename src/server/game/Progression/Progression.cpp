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
void AddSC_at_naxxramas();
void AddSC_npc_necro_knight_guardian();
void AddSC_instance_naxxramas_tweaks();

void Progression::LoadProgressionScripts()
{
    uint32 id = sConfigMgr->GetOption<uint32>("Progression.Patch", PATCH_ASSAULT_ON_THE_RUBY_SANCTUM);

    if (id < PATCH_ECHOES_OF_DOOM)
    {
        AddSC_instance_blackrock_spire_progression();
        AddSC_npc_necro_knight_guardian();
        AddSC_instance_naxxramas_tweaks();
    }

    if (id < PATCH_CALL_OF_THE_CRUSADE)
    {
        AddSC_instance_onyxias_lair_tweaks();
    }

    if (id >= PATCH_SHADOW_OF_THE_NECROPOLIS && id < PATCH_ECHOES_OF_DOOM)
    {
        AddSC_at_naxxramas();
    }
}
