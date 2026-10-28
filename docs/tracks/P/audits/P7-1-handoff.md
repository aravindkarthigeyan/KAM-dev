# P7-1 prover handoff (branch inp-p71, a056574; offloaded package run by the main orchestrator)

File KAM/Planetary/Poincare/Chart.lean (276 lines; imports KAM.Kepler.Equation, KAM.Kepler.Energy).
| Node | Declarations (KAM.Planetary) |
|---|---|
| poincare-def | poincareGamma, poincareK, poincareV, poincareF, poincare, poincareDom, isOpen_poincareDom |
| o-facts | poincare_facts, poincare_facts_polar |
| poincare (a) | analyticOnNhd_poincareF, analyticOnNhd_poincare, poincare_periodic |
Prover: 12 declarations verbatim from KeplerSignaturesP.lean (whitespace only). hm/hκ unused in analyticOnNhd_poincare, poincare_periodic (total division; kept, signature fixed). KAM.lean not regenerated (expected lint "out of date").
AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §2.4, §7 row P7-1, §7.1 plan): (1) the defs are blueprint-P p7-kepler-poincare.tex's Poincaré chart on their whole carrier — any junk value off poincareDom relied on?; (2) o-facts and poincare (a) statements = blueprint (radicand positivity, Jacobian bound, analyticity domain, 2π-periodicity in λ); (3) unused hm/hκ do not hide a meaning change; (4) hygiene; no frozen theorem/provider imported.
