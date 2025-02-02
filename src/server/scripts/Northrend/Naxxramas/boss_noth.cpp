/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 3 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "CreatureScript.h"
#include "ScriptedCreature.h"
#include "naxxramas.h"

#include "Progression.h"

enum Says
{
    SAY_AGGRO                               = 0,
    SAY_SUMMON                              = 1,
    SAY_SLAY                                = 2,
    SAY_DEATH                               = 3,
    EMOTE_SUMMON                            = 4,
    EMOTE_SUMMON_WAVE                       = 5,
    EMOTE_TELEPORT_BALCONY                  = 6,
    EMOTE_TELEPORT_BACK                     = 7,
    EMOTE_BLINK                             = 8
};

enum Spells
{
    SPELL_CURSE_OF_THE_PLAGUEBRINGER_10     = 29213,
    SPELL_CURSE_OF_THE_PLAGUEBRINGER_25     = 54835,
    SPELL_CRIPPLE_10                        = 29212,
    SPELL_CRIPPLE_25                        = 54814,
    SPELL_SUMMON_PLAGUED_WARRIORS           = 29237,
    SPELL_TELEPORT                          = 29216,
    SPELL_TELEPORT_BACK                     = 29231,
    SPELL_BERSERK                           = 68378,
    SPELL_BLINK                             = 29208
};

enum Events
{
    EVENT_CURSE                             = 1,
    EVENT_CRIPPLE                           = 2,
    EVENT_SUMMON_PLAGUED_WARRIOR_ANNOUNCE   = 3,
    EVENT_MOVE_TO_BALCONY                   = 4,
    EVENT_BLINK                             = 5,
    EVENT_MOVE_TO_GROUND                    = 6,
    EVENT_SUMMON_PLAGUED_WARRIOR_REAL       = 7,
    EVENT_BALCONY_SUMMON_ANNOUNCE           = 8,
    EVENT_BALCONY_SUMMON_REAL               = 9
};

enum Misc
{
    NPC_PLAGUED_WARRIOR                     = 16984,
    NPC_PLAGUED_CONSTRUCT                   = 16982,
    NPC_PLAGUED_CHAMPION                    = 16983,
    NPC_PLAGUED_GUARDIAN                    = 16981
};

const Position summoningPosition[5] =
{
    {2728.06f, -3535.38f, 263.21f, 2.75f},
    {2725.71f, -3514.80f, 263.23f, 2.86f},
    {2728.24f, -3465.08f, 264.20f, 3.56f},
    {2704.79f, -3459.17f, 263.74f, 4.25f},
    {2652.02f, -3459.13f, 262.50f, 5.39f}
};

const Position nothPosition = {2684.94f, -3502.53f, 261.31f, 4.7f};

class boss_noth : public CreatureScript
{
public:
    boss_noth() : CreatureScript("boss_noth") { }

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return GetNaxxramasAI<boss_nothAI>(pCreature);
    }

    struct boss_nothAI : public BossAI
    {
        explicit boss_nothAI(Creature* c) : BossAI(c, BOSS_NOTH), summons(me)
        {
            pInstance = me->GetInstanceScript();
        }

        InstanceScript* pInstance;
        uint8 timesInBalcony;
        EventMap events;
        SummonList summons;

        void StartGroundPhase()
        {
            me->SetReactState(REACT_AGGRESSIVE);
            me->RemoveUnitFlag(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_DISABLE_MOVE);
            me->SetControlled(false, UNIT_STATE_ROOT);
            events.Reset();
            if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
            {
                events.ScheduleEvent(EVENT_CURSE, urand(8000, 12000));
                events.ScheduleEvent(EVENT_BLINK, urand(30000, 40000));
                switch (timesInBalcony)
                {
                case 0:
                    events.ScheduleEvent(EVENT_MOVE_TO_BALCONY, 90s);
                    break;
                case 1:
                    events.ScheduleEvent(EVENT_MOVE_TO_BALCONY, 110s);
                    break;
                default:
                    events.ScheduleEvent(EVENT_MOVE_TO_BALCONY, 180s);
                    break;
                }
            }
            else
            {
                events.ScheduleEvent(EVENT_MOVE_TO_BALCONY, 90s);
                events.ScheduleEvent(EVENT_CURSE, 15s);
                if (Is25ManRaid())
                {
                    events.ScheduleEvent(EVENT_BLINK, 26s);
                }
            }
            events.ScheduleEvent(EVENT_SUMMON_PLAGUED_WARRIOR_ANNOUNCE, 10s);
        }

        void StartBalconyPhase()
        {
            me->SetReactState(REACT_PASSIVE);
            me->AttackStop();
            me->SetUnitFlag(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_DISABLE_MOVE);
            me->SetControlled(true, UNIT_STATE_ROOT);
            events.Reset();
            if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
            {
                auto first_spawn = urand(5000, 7000);
                switch (timesInBalcony)
                {
                case 0:
                    events.ScheduleEvent(EVENT_BALCONY_SUMMON_ANNOUNCE, first_spawn + (25000 + urand(0, 5000)));
                    break;
                case 1:
                    events.ScheduleEvent(EVENT_BALCONY_SUMMON_ANNOUNCE, first_spawn + (44000 + urand(0, 5000)));
                    break;
                case 2:
                    events.ScheduleEvent(EVENT_BALCONY_SUMMON_ANNOUNCE, first_spawn + (57000 + urand(0, 5000)));
                    break;
                }
                events.ScheduleEvent(EVENT_MOVE_TO_GROUND, 70000 + (70 + 25 * timesInBalcony));
            }
            else
            {
                events.ScheduleEvent(EVENT_BALCONY_SUMMON_ANNOUNCE, 4s);
                events.ScheduleEvent(EVENT_MOVE_TO_GROUND, 70s);
            }
        }

        void SummonHelper(uint32 entry, uint32 count)
        {
            for (uint8 i = 0; i < count; ++i)
            {
                me->SummonCreature(entry, summoningPosition[urand(0, 4)]);
            }
        }

        bool IsInRoom()
        {
            if (me->GetExactDist(2684.8f, -3502.5f, 261.3f) > 80.0f)
            {
                EnterEvadeMode(EVADE_REASON_OTHER);
                return false;
            }
            return true;
        }

        void Reset() override
        {
            BossAI::Reset();
            events.Reset();
            summons.DespawnAll();
            me->CastSpell(me, SPELL_TELEPORT_BACK, true);
            me->SetControlled(false, UNIT_STATE_ROOT);
            me->SetReactState(REACT_AGGRESSIVE);
            timesInBalcony = 0;
            if (pInstance)
            {
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_NOTH_ENTRY_GATE)))
                {
                    go->SetGoState(GO_STATE_ACTIVE);
                }
            }
        }

        void EnterEvadeMode(EvadeReason why) override
        {
            me->SetControlled(false, UNIT_STATE_ROOT);
            ScriptedAI::EnterEvadeMode(why);
        }

        void JustEngagedWith(Unit* who) override
        {
            BossAI::JustEngagedWith(who);
            Talk(SAY_AGGRO);
            StartGroundPhase();
            if (pInstance)
            {
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_NOTH_ENTRY_GATE)))
                {
                    go->SetGoState(GO_STATE_READY);
                }
            }
        }

        void JustSummoned(Creature* summon) override
        {
            summons.Summon(summon);
            summon->SetInCombatWithZone();
        }

        void JustDied(Unit*  killer) override
        {
            if (me->GetPositionZ() > 270.27f)
            {
                me->RemoveUnitFlag(UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_DISABLE_MOVE);
                me->NearTeleportTo(nothPosition.GetPositionX(), nothPosition.GetPositionY(), nothPosition.GetPositionZ(), nothPosition.GetOrientation(), true);
            }
            BossAI::JustDied(killer);
            Talk(SAY_DEATH);
            if (pInstance)
            {
                if (GameObject* go = me->GetMap()->GetGameObject(pInstance->GetGuidData(DATA_NOTH_ENTRY_GATE)))
                {
                    go->SetGoState(GO_STATE_ACTIVE);
                }
            }
        }

        void KilledUnit(Unit* who) override
        {
            if (!who->IsPlayer())
                return;

            Talk(SAY_SLAY);
            if (pInstance)
            {
                pInstance->SetData(DATA_IMMORTAL_FAIL, 0);
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (!IsInRoom())
                return;

            if (!UpdateVictim())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                // GROUND
                case EVENT_CURSE:
                    if (events.GetPhaseMask() == 0)
                    {
                        if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
                        {
                            me->CastCustomSpell(SPELL_CURSE_OF_THE_PLAGUEBRINGER_10, SPELLVALUE_MAX_TARGETS, 20, me, false);
                            events.RepeatEvent(urand(50000, 60000));
                        }
                        else
                        {
                            me->CastCustomSpell(RAID_MODE(SPELL_CURSE_OF_THE_PLAGUEBRINGER_10, SPELL_CURSE_OF_THE_PLAGUEBRINGER_25), SPELLVALUE_MAX_TARGETS, RAID_MODE(3, 10), me, false);
                            events.Repeat(25s);
                        }
                    }
                    break;
                case EVENT_SUMMON_PLAGUED_WARRIOR_ANNOUNCE:
                    Talk(SAY_SUMMON);
                    Talk(EMOTE_SUMMON);
                    events.Repeat(30s);
                    events.ScheduleEvent(EVENT_SUMMON_PLAGUED_WARRIOR_REAL, 4s);
                    break;
                case EVENT_SUMMON_PLAGUED_WARRIOR_REAL:
                    me->CastSpell(me, SPELL_SUMMON_PLAGUED_WARRIORS, true);
                    if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
                    {
                        SummonHelper(NPC_PLAGUED_WARRIOR, 3);
                    }
                    else
                    {
                        SummonHelper(NPC_PLAGUED_WARRIOR, RAID_MODE(2, 3));
                    }
                    break;
                case EVENT_MOVE_TO_BALCONY:
                    Talk(EMOTE_TELEPORT_BALCONY);
                    me->CastSpell(me, SPELL_TELEPORT, true);
                    StartBalconyPhase();
                    break;
                case EVENT_BLINK:
                    DoResetThreatList();
                    if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
                    {
                        me->CastSpell(me, SPELL_CRIPPLE_10, false);
                    }
                    else
                    {
                        me->CastSpell(me, RAID_MODE(SPELL_CRIPPLE_10, SPELL_CRIPPLE_25), false);
                    }
                    me->CastSpell(me, SPELL_BLINK, true);
                    Talk(EMOTE_BLINK);
                    events.RepeatEvent(sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM ? urand(30000, 40000) : 30000);
                    break;
                // BALCONY
                case EVENT_BALCONY_SUMMON_ANNOUNCE:
                    Talk(EMOTE_SUMMON_WAVE);
                    events.Repeat(30s);
                    events.ScheduleEvent(EVENT_BALCONY_SUMMON_REAL, 4s);
                    break;
                case EVENT_BALCONY_SUMMON_REAL:
                    me->CastSpell(me, SPELL_SUMMON_PLAGUED_WARRIORS, true); // visual
                    switch (timesInBalcony)
                    {
                         case 0:
                             if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
                             {
                                 SummonHelper(NPC_PLAGUED_CHAMPION, 4);
                             }
                             else
                             {
                                 SummonHelper(NPC_PLAGUED_CHAMPION, RAID_MODE(2, 4));
                             }
                             break;
                         case 1:
                             if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
                             {
                                 SummonHelper(NPC_PLAGUED_CHAMPION, 4);
                                 SummonHelper(NPC_PLAGUED_GUARDIAN, 2);
                             }
                             else
                             {
                                 SummonHelper(NPC_PLAGUED_CHAMPION, RAID_MODE(1, 2));
                                 SummonHelper(NPC_PLAGUED_GUARDIAN, RAID_MODE(1, 2));
                             }
                             break;
                         default:
                             if (sProgression->GetPatchId() < PATCH_ECHOES_OF_DOOM)
                             {
                                 SummonHelper(NPC_PLAGUED_CHAMPION, 4);
                                 SummonHelper(NPC_PLAGUED_GUARDIAN, 2);
                                 SummonHelper(NPC_PLAGUED_CONSTRUCT, 3);
                             }
                             else
                             {
                                 SummonHelper(NPC_PLAGUED_GUARDIAN, RAID_MODE(2, 4));
                             }
                             break;
                    }
                    break;
                case EVENT_MOVE_TO_GROUND:
                    Talk(EMOTE_TELEPORT_BACK);
                    me->CastSpell(me, SPELL_TELEPORT_BACK, true);
                    timesInBalcony++;
                    if (timesInBalcony == 3 && sProgression->GetPatchId() >= PATCH_ECHOES_OF_DOOM)
                    {
                        DoCastSelf(SPELL_BERSERK);
                    }
                    StartGroundPhase();
                    break;
            }
            if (me->HasReactState(REACT_AGGRESSIVE))
                DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_noth()
{
    new boss_noth();
}
