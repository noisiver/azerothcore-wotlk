#ifndef TOOLS_H
#define TOOLS_H

#include "ScriptMgr.h"

class Tools : public AllBattlegroundScript, MailScript, PlayerScript, UnitScript, ServerScript, WorldScript
{
public:
    Tools();

    // AllBattlegroundScript
    void OnBattlegroundEndReward(Battleground* /*bg*/, Player* /*player*/, TeamId /*winnerTeamId*/) override;

    // MailScript
    void OnBeforeMailDraftSendMailTo(MailDraft* /*mailDraft*/, MailReceiver const& /*receiver*/, MailSender const& /*sender*/, MailCheckMask& /*checked*/, uint32& /*deliver_delay*/, uint32& /*custom_expiration*/, bool& /*deleteMailItemsFromDB*/, bool& /*sendMail*/) override;

    // PlayerScript
    void OnLogin(Player* /*player*/) override;
    bool OnBeforeAchiComplete(Player* /*player*/, AchievementEntry const* /*achievement*/) override;
    bool OnBeforeCriteriaProgress(Player* /*player*/, AchievementCriteriaEntry const* /*criteria*/) override;
    void OnUpdateArea(Player* /*player*/, uint32 /*oldArea*/, uint32 /*newArea*/) override;
    bool ShouldBeRewardedWithMoneyInsteadOfExp(Player* /*player*/) override;
    bool OnUpdateFishingSkill(Player* /*player*/, int32 /*skill*/, int32 /*zone_skill*/, int32 /*chance*/, int32 /*roll*/) override;
    bool OnReputationChange(Player* /*player*/, uint32 /*factionID*/, int32& /*standing*/, bool /*incremental*/) override;
    void OnQuestComputeXP(Player* player, Quest const* /*quest*/, uint32& /*xpValue*/) override;
    void OnGiveXP(Player* /*player*/, uint32& /*amount*/, Unit* /*victim*/, uint8 /*xpSource*/) override;
    void OnBeforeChooseGraveyard(Player* /*player*/, TeamId /*teamId*/, bool /*nearCorpse*/, uint32& /*graveyardOverride*/) override;

    // UnitScript
    void ModifyPeriodicDamageAurasTick(Unit* /*target*/, Unit* /*attacker*/, uint32& /*damage*/, SpellInfo const* /*spellInfo*/) override;
    void ModifyMeleeDamage(Unit* /*target*/, Unit* /*attacker*/, uint32& /*damage*/) override;
    void ModifySpellDamageTaken(Unit* /*target*/, Unit* /*attacker*/, int32& /*damage*/, SpellInfo const* /*spellInfo*/) override;
    void ModifyHealReceived(Unit* /*target*/, Unit* /*healer*/, uint32& /*heal*/, SpellInfo const* /*spellInfo*/) override;

    // ServerScript
    bool CanPacketSend(WorldSession* /*session*/, WorldPacket& /*packet*/) override;

    // WorldScript
    void OnAfterConfigLoad(bool /*reload*/) override;

private:
    void UpdateConfig();

    std::vector<std::string> GetChunks(std::string /*s*/, uint8_t /*chunkSize*/);
    void SendChunkedPayload(Warden* /*warden*/, std::string /*payload*/, uint32 /*chunkSize*/);
    std::string _prePayload = "wlbuf = '';";
    std::string _postPayload = "loadstring(wlbuf)();wlbuf = nil;";
    uint16 _prePayloadId = 5500;
    uint16 _postPayloadId = 5501;
    uint16 _tmpPayloadId = 5502;
};

#endif
