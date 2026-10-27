# I-STRIP-5 prover handoff (branch k/strip5, b9ad19f); all declarations in namespace KAM; files in KAM/Strip/

| Node | Declaration | File |
|---|---|---|
| bp:p1:holomorphic-analytic | holomorphic_analytic (general W: (a) analytic on U, (b)); holomorphic_analytic_real (W = ℂ^p, real-on-reals clause) | Analytic |
| step:p1:han-margin | han_margin | AnalyticTaylor |
| step:p1:han-cauchy | han_cauchy (torus form; NOT used by the main proof) | AnalyticCauchy |
| step:p1:han-series | exists_powerSeries_coeff | AnalyticSeries |
| step:p1:han-bounds | holomorphic_series | AnalyticSeries |
| step:p1:han-real | holomorphic_series_real, holomorphic_analytic_real | Analytic |
| bp:p1:real-restriction-consequences | real_restriction_consequences (parts norm_realRestriction_le_of_linear, exists_realRestriction_of_linear, realRestriction_add_int) | RealRestriction |
| bp:p1:real-restriction | real_restriction | RealRestriction |
| step:p1:rr-analytic / rr-derivative / rr-consequences | analyticOnNhd_realRestriction / realRestriction_fderiv / norm_fderiv_realRestriction_le (+ realRestriction_add_int) | RealRestriction |
| bp:p1:hamiltonian-real | hamiltonian_real | RealRestriction |
| step:p1:hr-derivative / hr-components / hr-matrix | hamiltonian_real_fderiv / hamiltonianVectorField_eq_of_real / hamiltonianVectorFieldℂ_eq_neg_omegaZero, omegaZero_hamiltonianVectorFieldℂ | RealRestriction |

Route: Mathlib lacks several-variable DifferentiableOn.analyticOnNhd; built via Zohar's Regularity (smoothness), n-fold Cauchy on nested polydiscs (‖Dⁿf‖ ≤ (n/ρ)ⁿ A, radius ≥ ρ/e) and Mathlib's one-variable Taylor along lines; multi-index series by induction on the number of variables (HasSum.prod_fiberwise), ‖c α‖ ≤ A/r^|α|. Core engine: analyticOnNhd_of_differentiableOn for any finite-dimensional complex E.

AUDIT QUESTIONS (the prover's declared deviations):
1. `0 < ρ` was ADDED to real_restriction_consequences and real_restriction (prover: for ρ ≤ 0 the strip is empty, primarity is vacuous, the conclusion false). Is the blueprint statement (p1 L1037-1069) really false without it, and does every consumer of these nodes in Parts 2-4 supply ρ > 0? (grep the graph: DEPS containing bp:p1:real-restriction).
2. han-series: the explicit contour-integral formula for the coefficients c_α is not formalized; han-series is covered by the expansion only. Does any graph consumer use the formula (rather than existence + bounds)?
3. W hypotheses: complete, second-countable complex normed space (blueprint: finite-dimensional W). Confirm this covers every blueprint use.
4. Definition realRestriction K := Re ∘ K ∘ ι; equals the genuine restriction under IsRealOnReals K (isRealOnReals_iff). Is every use guarded accordingly, with no junk-value reliance?
5. Holomorphy dropped from the matrix-form identity (it holds for every φ); J = Ω₀⁻¹ given by omegaZero_omegaZero instead of via operator-norms.
