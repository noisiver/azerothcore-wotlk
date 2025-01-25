#include "Chat.h"
#include "Config.h"
#include "Player.h"
#include "Progression.h"
#include "Spell.h"
#include "Tools.h"
#include "WardenWin.h"

Tools::Tools() : AllBattlegroundScript("ToolsAllBattlegroundScript"), MailScript("ToolsMailScript"), PlayerScript("ToolsPlayerScript"), UnitScript("ToolsUnitScript"), ServerScript("ToolsServerScript"), WorldScript("ToolsWorldScript") {}

void Tools::OnAfterConfigLoad(bool reload)
{
    uint8 patchId = sConfigMgr->GetOption<uint8>("Progression.Patch", PATCH_ASSAULT_ON_THE_RUBY_SANCTUM);
    uint32 auraId = sConfigMgr->GetOption<uint32>("Progression.IcecrownCitadel.Aura", 4);
    bool enforceLevel = sConfigMgr->GetOption<bool>("Progression.Level.Enforced", true);
    bool enforceDungeonFinder = sConfigMgr->GetOption<bool>("Progression.DungeonFinder.Enforced", true);
    bool enforceDualTalent = sConfigMgr->GetOption<bool>("Progression.DualTalent.Enforced", true);
    bool enforceQuestInfo = sConfigMgr->GetOption<bool>("Progression.QuestInfo.Enforced", true);
    float damageModifier = sConfigMgr->GetOption<float>("Progression.Multiplier.Damage", 0.6f);
    float healingModifier = sConfigMgr->GetOption<float>("Progression.Multiplier.Healing", 0.5f);
    bool showPatchNotes = sConfigMgr->GetOption<bool>("Progression.PatchNotes.Enabled", true);

    if (reload)
    {
        if (patchId != sProgression->GetPatchId())
        {
            LOG_ERROR("server.loading", "Progression patch can't be changed at worldserver.conf reload, using current value ({}).", sProgression->GetPatchId());
        }

        if (auraId != sProgression->GetAuraId())
        {
            LOG_ERROR("server.loading", "Progression aura id can't be changed at worldserver.conf reload, using current value ({}).", sProgression->GetAuraId());
        }

        if (enforceLevel != sProgression->GetEnforceLevel())
        {
            LOG_ERROR("server.loading", "Progression level enforcement can't be changed at worldserver.conf reload, using current value ({}).", sProgression->GetEnforceLevel() ? "enabled" : "disabled");
        }

        if (enforceDungeonFinder != sProgression->GetEnforceDungeonFinder())
        {
            LOG_ERROR("server.loading", "Progression dungeon finder enforcement can't be changed at worldserver.conf reload, using current value ({}).", sProgression->GetEnforceDungeonFinder() ? "enabled" : "disabled");
        }

        if (enforceDualTalent != sProgression->GetEnforceDualTalent())
        {
            LOG_ERROR("server.loading", "Progression dual talent enforcement can't be changed at worldserver.conf reload, using current value ({}).", sProgression->GetEnforceDualTalent() ? "enabled" : "disabled");
        }

        if (enforceQuestInfo != sProgression->GetEnforceQuestInfo())
        {
            LOG_ERROR("server.loading", "Progression quest info enforcement can't be changed at worldserver.conf reload, using current value ({}).", sProgression->GetEnforceQuestInfo() ? "enabled" : "disabled");
        }

        if (damageModifier != sProgression->GetDamageModifier())
        {
            LOG_ERROR("server.loading", "Progression damage modifier can't be changed at worldserver.conf reload, using current value ({}).", sProgression->GetDamageModifier());
        }

        if (healingModifier != sProgression->GetHealingModifier())
        {
            LOG_ERROR("server.loading", "Progression healing modifier can't be changed at worldserver.conf reload, using current value ({}).", sProgression->GetHealingModifier());
        }

        if (showPatchNotes != sProgression->ShowPatchNotes())
        {
            LOG_ERROR("server.loading", "Progression show patch notes can't be changed at worldserver.conf reload, using current value ({}).", sProgression->ShowPatchNotes() ? "enabled" : "disabled");
        }
    }
    else
    {
        if (patchId < PATCH_WORLD_OF_WARCRAFT || patchId > PATCH_ASSAULT_ON_THE_RUBY_SANCTUM)
        {
            LOG_ERROR("server.loading", "Progression patch is outside the accepted range (0-21), using default value (21).");
            patchId = PATCH_ASSAULT_ON_THE_RUBY_SANCTUM;
        }

        sProgression->SetPatchId(patchId);

        if (auraId < 0 || auraId > 4)
        {
            LOG_ERROR("server.loading", "Progression aura id is outside the accepted range (0-4), using default value (4).");
            auraId = 4;
        }

        sProgression->SetAuraId(auraId);

        sProgression->SetEnforceLevel(enforceLevel);
        sProgression->SetEnforceDungeonFinder(enforceDungeonFinder);
        sProgression->SetEnforceDualTalent(enforceDualTalent);
        sProgression->SetEnforceQuestInfo(enforceQuestInfo);

        sProgression->SetDamageModifier(damageModifier);
        sProgression->SetHealingModifier(healingModifier);

        sProgression->SetShowPatchNotes(showPatchNotes);

        UpdateConfig();

        sProgression->LoadProgressionScripts();
    }
}

void Tools::UpdateConfig()
{
    uint32 TargetExpansion = EXPANSION_WRATH_OF_THE_LICH_KING;
    uint32 TargetLevel = 80;

    if (sProgression->GetPatchId() < PATCH_BEFORE_THE_STORM)
    {
        TargetExpansion = EXPANSION_CLASSIC;
        TargetLevel = 60;
    }
    else if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
    {
        TargetExpansion = EXPANSION_THE_BURNING_CRUSADE;
        TargetLevel = 70;
    }

    sWorld->setIntConfig(CONFIG_EXPANSION, TargetExpansion);
    sWorld->setIntConfig(CONFIG_MAX_PLAYER_LEVEL, (sProgression->GetEnforceLevel() || sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL) > TargetLevel) ? TargetLevel : sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL));

    sWorld->setBoolConfig(CONFIG_LOW_LEVEL_REGEN_BOOST, sProgression->GetPatchId() >= PATCH_FALL_OF_THE_LICH_KING);
    if (sProgression->GetPatchId() < PATCH_CALL_OF_THE_CRUSADE)
    {
        sWorld->setBoolConfig(CONFIG_QUEST_IGNORE_AUTO_ACCEPT, true);
    }
    if (sProgression->GetPatchId() < PATCH_FALL_OF_THE_LICH_KING && sProgression->GetEnforceDungeonFinder())
    {
        sWorld->setIntConfig(CONFIG_LFG_OPTIONSMASK, 0);
    }
    sWorld->setIntConfig(CONFIG_MIN_DUALSPEC_LEVEL, (sProgression->GetPatchId() < PATCH_SECRETS_OF_ULDUAR && sProgression->GetEnforceDualTalent() ? 255 : 40));
    sWorld->setBoolConfig(CONFIG_OBJECT_QUEST_MARKERS, sProgression->GetPatchId() >= PATCH_THE_GODS_OF_ZUL_AMAN);
    sWorld->setBoolConfig(CONFIG_OBJECT_SPARKLES, sProgression->GetPatchId() >= PATCH_THE_GODS_OF_ZUL_AMAN);
    sWorld->setBoolConfig(CONFIG_QUEST_POI_ENABLED, (sProgression->GetPatchId() >= PATCH_FALL_OF_THE_LICH_KING || !sProgression->GetEnforceQuestInfo()));
    sWorld->setBoolConfig(CONFIG_SET_BOP_ITEM_TRADEABLE, sProgression->GetPatchId() >= PATCH_CALL_OF_THE_CRUSADE);
    sWorld->setBoolConfig(CONFIG_WEATHER, sProgression->GetPatchId() >= PATCH_STORMS_OF_AZEROTH);
    sWorld->setIntConfig(CONFIG_WATER_BREATH_TIMER, (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM ? 60000 : 180000));
    if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
    {
        sWorld->setIntConfig(CONFIG_MAX_RECRUIT_A_FRIEND_BONUS_PLAYER_LEVEL, 0);
    }
    sWorld->setIntConfig(CONFIG_WINTERGRASP_ENABLE, (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM ? 2 : 1));
    sWorld->setBoolConfig(CONFIG_ARENA_SEASON_IN_PROGRESS, sProgression->GetPatchId() >= PATCH_BEFORE_THE_STORM);
    sWorld->setIntConfig(CONFIG_LEGACY_ARENA_POINTS_CALC, sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM);

    if (sProgression->GetPatchId() < PATCH_CALL_OF_THE_CRUSADE)
    {
        sWorld->setRate(RATE_XP_BG_KILL_AV, 0.0f);
        sWorld->setRate(RATE_XP_BG_KILL_WSG, 0.0f);
        sWorld->setRate(RATE_XP_BG_KILL_AB, 0.0f);
        sWorld->setRate(RATE_XP_BG_KILL_EOTS, 0.0f);
        sWorld->setRate(RATE_XP_BG_KILL_SOTA, 0.0f);
        sWorld->setRate(RATE_XP_BG_KILL_IC, 0.0f);
    }

    if (sProgression->GetPatchId() <= PATCH_BEFORE_THE_STORM)
    {
        sWorld->setIntConfig(CONFIG_ARENA_SEASON_ID, 1);
    }
    else if (sProgression->GetPatchId() < PATCH_THE_GODS_OF_ZUL_AMAN)
    {
        sWorld->setIntConfig(CONFIG_ARENA_SEASON_ID, 2);
    }
    else if (sProgression->GetPatchId() == PATCH_THE_GODS_OF_ZUL_AMAN)
    {
        sWorld->setIntConfig(CONFIG_ARENA_SEASON_ID, 3);
    }
    else if (sProgression->GetPatchId() == PATCH_FURY_OF_THE_SUNWELL)
    {
        sWorld->setIntConfig(CONFIG_ARENA_SEASON_ID, 4);
    }
    else if (sProgression->GetPatchId() == PATCH_ECHOES_OF_DOOM)
    {
        sWorld->setIntConfig(CONFIG_ARENA_SEASON_ID, 5);
    }
    else if (sProgression->GetPatchId() == PATCH_SECRETS_OF_ULDUAR)
    {
        sWorld->setIntConfig(CONFIG_ARENA_SEASON_ID, 6);
    }
    else if (sProgression->GetPatchId() == PATCH_CALL_OF_THE_CRUSADE)
    {
        sWorld->setIntConfig(CONFIG_ARENA_SEASON_ID, 7);
    }
    else if (sProgression->GetPatchId() >= PATCH_FALL_OF_THE_LICH_KING)
    {
        sWorld->setIntConfig(CONFIG_ARENA_SEASON_ID, 8);
    }

    if (sProgression->GetPatchId() < PATCH_BEFORE_THE_STORM)
    {
        sWorld->setRate(RATE_HONOR, 0);
        sWorld->setRate(RATE_ARENA_POINTS, 0);
    }
    else if (sProgression->GetPatchId() < PATCH_FALL_OF_THE_LICH_KING)
    {
        sWorld->setRate(RATE_HONOR, 0.5f);
    }

    if (sProgression->GetPatchId() >= PATCH_ASSAULT_ON_THE_RUBY_SANCTUM)
    {
        if (sProgression->GetAuraId() > 0)
        {
            sWorld->setIntConfig(CONFIG_ICC_BUFF_ALLIANCE, SPELL_ICECROWN_CITADEL_30_A);
            sWorld->setIntConfig(CONFIG_ICC_BUFF_HORDE, SPELL_ICECROWN_CITADEL_30_H);
        }
        else
        {
            sWorld->setIntConfig(CONFIG_ICC_BUFF_ALLIANCE, SPELL_ICECROWN_CITADEL_25_A);
            sWorld->setIntConfig(CONFIG_ICC_BUFF_HORDE, SPELL_ICECROWN_CITADEL_25_H);
        }
    }
    else
    {
        if (sProgression->GetAuraId() > 3)
        {
            sWorld->setIntConfig(CONFIG_ICC_BUFF_ALLIANCE, SPELL_ICECROWN_CITADEL_20_A);
            sWorld->setIntConfig(CONFIG_ICC_BUFF_HORDE, SPELL_ICECROWN_CITADEL_20_H);
        }
        else if (sProgression->GetAuraId() > 2)
        {
            sWorld->setIntConfig(CONFIG_ICC_BUFF_ALLIANCE, SPELL_ICECROWN_CITADEL_15_A);
            sWorld->setIntConfig(CONFIG_ICC_BUFF_HORDE, SPELL_ICECROWN_CITADEL_15_H);
        }
        else if (sProgression->GetAuraId() > 1)
        {
            sWorld->setIntConfig(CONFIG_ICC_BUFF_ALLIANCE, SPELL_ICECROWN_CITADEL_10_A);
            sWorld->setIntConfig(CONFIG_ICC_BUFF_HORDE, SPELL_ICECROWN_CITADEL_10_H);
        }
        else if (sProgression->GetAuraId() > 0)
        {
            sWorld->setIntConfig(CONFIG_ICC_BUFF_HORDE, SPELL_ICECROWN_CITADEL_5_H);
            sWorld->setIntConfig(CONFIG_ICC_BUFF_ALLIANCE, SPELL_ICECROWN_CITADEL_5_A);
        }
        else
        {
            sWorld->setIntConfig(CONFIG_ICC_BUFF_HORDE, SPELL_ICECROWN_CITADEL_NONE);
            sWorld->setIntConfig(CONFIG_ICC_BUFF_ALLIANCE, SPELL_ICECROWN_CITADEL_NONE);
        }
    }
}

void Tools::OnBattlegroundEndReward(Battleground* bg, Player* player, TeamId winnerTeamId)
{
    if (sProgression->GetPatchId() >= PATCH_FALL_OF_THE_LICH_KING)
    {
        return;
    }

    if (player->IsGameMaster())
    {
        return;
    }

    uint32 token = 0;

    switch (bg->GetMapId())
    {
    case 30: // Alterac Valley
        token = 20560;
        break;
    case 489: // Warsong Gulch
        token = 20558;
        break;
    case 529: // Arathi Basin
        token = 20559;
        break;
    case 566: // Eye of the Storm
        token = 29024;
        break;
    case 607: // Strand of the Ancients
        token = 42425;
        break;
    case 628: // Isle of Conquest
        token = 47395;
        break;
    default:
        break;
    }

    if (token > 0)
    {
        player->AddItem(token, (player->GetTeamId() == winnerTeamId ? 3 : 1));
    }
}

void Tools::OnBeforeMailDraftSendMailTo(MailDraft* /*mailDraft*/, MailReceiver const& /*receiver*/, MailSender const& sender, MailCheckMask& /*checked*/, uint32& /*deliver_delay*/, uint32& custom_expiration, bool& /*deleteMailItemsFromDB*/, bool& /*sendMail*/)
{
    if (Player* pSender = ObjectAccessor::FindPlayerByLowGUID(sender.GetSenderId()))
    {
        if (pSender->GetSession()->GetSecurity())
        {
            return;
        }
    }

    if (sProgression->GetPatchId() < PATCH_BLACK_TEMPLE)
    {
        custom_expiration = 3;
    }
}

void Tools::OnLogin(Player* player)
{
    ChatHandler(player->GetSession()).SendSysMessage(sProgression->GetPatchTitle());

    if (sProgression->GetPatchId() < PATCH_FALL_OF_THE_LICH_KING && sProgression->GetEnforceDungeonFinder())
    {
        ChatHandler(player->GetSession()).SendSysMessage("Note: The Dungeon Finder is not available in this patch.");
    }
}

bool Tools::OnBeforeAchiComplete(Player* /*player*/, AchievementEntry const* /*achievement*/)
{
    return !(sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM);
}

bool Tools::OnBeforeCriteriaProgress(Player* /*player*/, AchievementCriteriaEntry const* /*criteria*/)
{
    return !(sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM);
}

void Tools::OnUpdateArea(Player* player, uint32 /*oldArea*/, uint32 newArea)
{
    if (player->IsGameMaster())
    {
        return;
    }

    if (player->IsInFlight())
    {
        return;
    }

    if (sProgression->GetPatchId() < PATCH_SECRETS_OF_ULDUAR)
    {
        if (newArea == AREA_ARGENT_TOURNAMENT_GROUNDS)
        {
            player->GetSession()->SendAreaTriggerMessage("The argent tournament grounds are currently unavailable.");
            player->TeleportTo(571, 8163.57f, 799.76f, 484.03f, 3.18f);
        }
    }
}

bool Tools::ShouldBeRewardedWithMoneyInsteadOfExp(Player* player)
{
    if (sProgression->GetPatchId() < PATCH_STORMS_OF_AZEROTH)
    {
        return false;
    }

    if ((player->GetLevel() == 60 && (sWorld->getIntConfig(CONFIG_EXPANSION) == EXPANSION_CLASSIC || sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL) == 60)) ||
        (player->GetLevel() == 70 && (sWorld->getIntConfig(CONFIG_EXPANSION) == EXPANSION_THE_BURNING_CRUSADE || sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL) == 70)) ||
        (player->GetLevel() == 80 && (sWorld->getIntConfig(CONFIG_EXPANSION) == EXPANSION_WRATH_OF_THE_LICH_KING || sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL) == 80)))
    {
        return true;
    }

    return false;
}

bool Tools::OnUpdateFishingSkill(Player* /*player*/, int32 /*skill*/, int32 /*zone_skill*/, int32 chance, int32 roll)
{
    if (sProgression->GetPatchId() < PATCH_SECRETS_OF_ULDUAR)
    {
        if (chance < roll)
        {
            return false;
        }
    }

    return true;
}

bool Tools::OnReputationChange(Player* /*player*/, uint32 factionID, int32& /*standing*/, bool /*incremental*/)
{
    if ((factionID == FACTION_SILVERMOON_CITY || factionID == FACTION_EXODAR) && sProgression->GetPatchId() < PATCH_BEFORE_THE_STORM)
    {
        return false;
    }

    return true;
}

void Tools::OnQuestComputeXP(Player* /*player*/, Quest const* quest, uint32& xpValue)
{
    if (sProgression->GetPatchId() < PATCH_THE_GODS_OF_ZUL_AMAN && quest->GetQuestLevel() >= 30 && quest->GetQuestLevel() <= 60)
    {
        xpValue = uint32(ceilf(xpValue / 1.428571429f));
    }
}

void Tools::OnGiveXP(Player* /*player*/, uint32& amount, Unit* /*victim*/, uint8 xpSource)
{
    if (xpSource == PlayerXPSource::XPSOURCE_BATTLEGROUND && sProgression->GetPatchId() < PATCH_CALL_OF_THE_CRUSADE)
    {
        amount = 0;
    }
}

void Tools::OnBeforeChooseGraveyard(Player* player, TeamId /*teamId*/, bool /*nearCorpse*/, uint32& graveyardOverride)
{
    if (player->GetMapId() == MAP_NAXXRAMAS && sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
    {
        graveyardOverride = GRAVEYARD_STRATHOLME;
    }
}

void Tools::ModifyPeriodicDamageAurasTick(Unit* /*target*/, Unit* attacker, uint32& damage, SpellInfo const* /*spellInfo*/)
{
    if (!attacker)
    {
        return;
    }

    bool isPet = attacker->GetOwner() && attacker->GetOwner()->GetTypeId() == TYPEID_PLAYER;
    if (!isPet && attacker->GetTypeId() != TYPEID_PLAYER)
    {
        return;
    }

    if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
    {
        damage *= sProgression->GetDamageModifier();
    }
}

void Tools::ModifyMeleeDamage(Unit* /*target*/, Unit* attacker, uint32& damage)
{
    if (!attacker)
    {
        return;
    }

    bool isPet = attacker->GetOwner() && attacker->GetOwner()->GetTypeId() == TYPEID_PLAYER;
    if (!isPet && attacker->GetTypeId() != TYPEID_PLAYER)
    {
        return;
    }

    if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
    {
        damage *= sProgression->GetDamageModifier();
    }
}

void Tools::ModifySpellDamageTaken(Unit* /*target*/, Unit* attacker, int32& damage, SpellInfo const* /*spellInfo*/)
{
    if (!attacker)
    {
        return;
    }

    bool isPet = attacker->GetOwner() && attacker->GetOwner()->GetTypeId() == TYPEID_PLAYER;
    if (!isPet && attacker->GetTypeId() != TYPEID_PLAYER)
    {
        return;
    }

    if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
    {
        damage *= sProgression->GetDamageModifier();
    }
}

void Tools::ModifyHealReceived(Unit* /*target*/, Unit* healer, uint32& heal, SpellInfo const* spellInfo)
{
    if (!healer)
    {
        return;
    }

    bool isPet = healer->GetOwner() && healer->GetOwner()->GetTypeId() == TYPEID_PLAYER;
    if (!isPet && healer->GetTypeId() != TYPEID_PLAYER)
    {
        return;
    }

    if (spellInfo->HasAttribute(SPELL_ATTR0_NO_IMMUNITIES) && spellInfo->Mechanic == MECHANIC_BANDAGE)
    {
        return;
    }

    if (spellInfo->Id == SPELL_RUNE_TAP || spellInfo->Id == SPELL_LIFE_STEAL)
    {
        return;
    }

    if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
    {
        heal *= sProgression->GetHealingModifier();
    }
}

bool Tools::CanPacketSend(WorldSession* session, WorldPacket& packet)
{
    WardenWin* warden = (WardenWin*)session->GetWarden();
    if (!warden)
    {
        return true;
    }

    auto payloadMgr = warden->GetPayloadMgr();
    if (!payloadMgr)
    {
        return true;
    }

    if (packet.GetOpcode() == SMSG_CHAR_ENUM && sProgression->ShowPatchNotes())
    {
        const std::string* patchNotes = sProgression->GetPatchNotes();
        std::string payload = Acore::StringFormat("ServerAlertTitle:SetText('{}');local saf = ServerAlertFrame;saf:SetParent(CharacterSelect);ServerAlertText:SetText('{}');saf:Show();", patchNotes[0], patchNotes[1]);
        payloadMgr->ClearQueuedPayloads();
        SendChunkedPayload(warden, payload, 128);
    }

    if (packet.GetOpcode() == SMSG_LOGIN_VERIFY_WORLD)
    {
        std::string payload = Acore::StringFormat("SetCVar(\"showQuestTrackingTooltips\", 1);");
        if (sProgression->GetPatchId() < PATCH_FALL_OF_THE_LICH_KING && sProgression->GetEnforceQuestInfo())
        {
            payload = Acore::StringFormat("SetCVar(\"showQuestTrackingTooltips\", 0);");
        }
        payloadMgr->ClearQueuedPayloads();
        SendChunkedPayload(warden, payload, 128);
    }

    return true;
}

std::vector<std::string> Tools::GetChunks(std::string s, uint8_t chunkSize)
{
    std::vector<std::string> chunks;

    for (uint32_t i = 0; i < s.size(); i += chunkSize)
    {
        chunks.push_back(s.substr(i, chunkSize));
    }

    return chunks;
}

void Tools::SendChunkedPayload(Warden* warden, std::string payload, uint32 chunkSize)
{
    auto payloadMgr = warden->GetPayloadMgr();
    if (!payloadMgr)
    {
        return;
    }

    auto chunks = GetChunks(payload, chunkSize);

    if (!payloadMgr->GetPayloadById(_prePayloadId))
    {
        payloadMgr->RegisterPayload(_prePayload, _prePayloadId);
    }

    payloadMgr->QueuePayload(_prePayloadId);
    warden->ForceChecks();

    for (auto const& chunk : chunks)
    {
        auto smallPayload = "wlbuf = wlbuf .. [[" + chunk + "]];";

        payloadMgr->RegisterPayload(smallPayload, _tmpPayloadId, true);
        payloadMgr->QueuePayload(_tmpPayloadId);
        warden->ForceChecks();
    }

    if (!payloadMgr->GetPayloadById(_postPayloadId))
    {
        payloadMgr->RegisterPayload(_postPayload, _postPayloadId);
    }

    payloadMgr->QueuePayload(_postPayloadId);
    warden->ForceChecks();
}

void AddProgressionScripts()
{
    new Tools();
}
