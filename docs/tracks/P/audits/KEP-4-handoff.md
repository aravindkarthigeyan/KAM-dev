# KEP-4 prover handoff (branch inp-kep4, d9a4881; contains inp-kep3 (KEP-3, delivered); offloaded package run by the main orchestrator)

File KAM/Kepler/KeplerTube.lean (640 lines; imports Mathlib, KAM.Kepler.Equation, KAM.Kepler.EquationComplex). Helpers in KAM.Kepler.Tube.
| Node | Declarations |
|---|---|
| regular-kepler (b) | regularTube, keplerLongC, regularKepler_complex, keplerLongC_ofReal, keplerLongC_shift, hasDerivAt_keplerLongC_lambda, regularKepler_jac_bound, cosh_one_lt |
| F2 (regular tube) | fderiv_keplerLongC_vec, regularKepler_jac_bound |
| kepler-eq | keplerE2, keplerTheta, keplerY0, keplerDeltaK, keplerDeltaE, keplerTube, eccAnomC, keplerConstants_pos, keplerEq_tube, keplerTube_real_points, eccAnomC_periodic, eccAnomC_zero_ecc, hasDerivAt_eccAnomC_ell |
| F2 (track I) | hasDerivAt_eccAnomC_ecc |
Prover: 23 declarations match KeplerSignatures.lean L273–351 (whitespace; cosh_one_lt moved earlier). Regular tube = KeplerData with a = v₀, b = v₁, c = λ, y₀ = 1, κ = 39/100; track-I tube a = e, b = 0, c = ℓ, κ = θ, cosh y₀ = θ/e₂; new lemma sinh y ≤ y cosh y. KEP-3 audit note: KEP-4 must instantiate the quantitative hypotheses on the concrete tubes — check that.
AUDIT FOCUS (design docs/tracks/P/design/KEPLER-LEAN-DESIGN.md §2, §7 row KEP-4, §7.1, B10; audit docs/tracks/P/audits/KEP-3-audit-1.md note): (1) statements = blueprint (regular-kepler (b), kepler-eq: constants e₂, θ, y₀, δ_K, δ_E; |J| > 3/5; contraction 0.39) and the KeplerData instances genuinely satisfy their quantitative hypotheses (not assumed); (2) defs eccAnomC, keplerLongC are the unique solutions on the tubes; real points and periodicity right; (3) hygiene. Audit only git diff inp-kep3...HEAD.
