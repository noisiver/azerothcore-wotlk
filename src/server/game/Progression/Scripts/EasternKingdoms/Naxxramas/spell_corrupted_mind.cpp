#include "SpellScript.h"
#include "SpellScriptLoader.h"

#include "Log.h"

class spell_corrupted_mind : public SpellScript
{
    PrepareSpellScript(spell_corrupted_mind);

    void HandleDummy(SpellEffIndex effIndex)
    {
        LOG_INFO("server.loading", "Testing the test");
        if (Unit* caster = GetCaster())
        {
            if (Unit* target = GetHitUnit())
            {
                LOG_INFO("server.loading", "Hit Unit: {}", target->GetName());
                if (target->IsPlayer())
                {
                    switch (target->getClass())
                    {
                    case CLASS_PALADIN:
                        caster->CastSpell(target, 29196);
                        break;
                    case CLASS_PRIEST:
                        caster->CastSpell(target, 29185);
                        break;
                    case CLASS_SHAMAN:
                        caster->CastSpell(target, 29198);
                        break;
                    case CLASS_DRUID:
                        caster->CastSpell(target, 29194);
                        break;
                    default:
                        break;
                    }
                }
            }
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_corrupted_mind::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

void AddSC_spell_corrupted_mind()
{
    RegisterSpellScript(spell_corrupted_mind);
}
