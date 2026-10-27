# I-P1B prover handoff (branch k/p1b, 457aea4)

| Node | Lean declaration | File |
|---|---|---|
| bp:p1:uniform-limits | KAM.uniform_limits (general open V; holomorphic limit with DK = Λ); KAM.uniform_limits_isPrimaryOnStrip, KAM.uniform_limits_isRealOnReals (V = T_r part) | KAM/Strip/Limits.lean |
| bp:p1:increments-open | KAM.increments_open (also step io-mvt) | KAM/Strip/Limits.lean |
| bp:p1:periodic-bounded | KAM.periodic_bounded (step pb-compact) | KAM/Strip/Periodic.lean |
| bp:p1:strip-identity | KAM.strip_identity (step si-induction) | KAM/Strip/Periodic.lean |
| bp:p1:periodic-average | KAM.periodic_average (via KAM.torusAverage_add_single) | KAM/Strip/Periodic.lean |
| bp:p1:exp-sums | KAM.Fourier.exp_sums ((a),(b),(c) conjunction) | KAM/Fourier/ExpSums.lean |
| bp:p1:iteration | KAM.quadratic_iteration | KAM/Analysis/Iteration.lean |

Steps: ul-differences/ul-limit/ul-derivative are covered by Mathlib hasFDerivAt_of_tendstoUniformlyOn (cited by the blueprint at ul-derivative); ul-primary = the two strip lemmas; pa-one = Function.Periodic.intervalIntegral_add_eq; es-power = KAM.Fourier.rpow_mul_exp_neg_le; es-product = hasSum_exp_neg_modeSize + cosh_div_sinh_half_le; es-nonzero = tsum_exp_neg_modeSize_ne_zero_le; it-super = quadratic_iteration_super (+ _tendsto); it-linear = quadratic_iteration_linear.

AUDIT QUESTIONS:
1. `0 < r` ADDED to uniform_limits_isRealOnReals only (prover: for r ≤ 0, T_r is empty and realness fails). Part 0 defines strips only for ρ > 0. Is this within the standing convention, and do consumers supply r > 0?
2. Are the ul-* steps legitimately covered by the cited Mathlib theorem?
3. Generalizations (any complex normed E/F; exp_sums for every n incl. n = 0; real p in quadratic_iteration; coordinatewise periodicity) — confirm each is a strengthening, not a change of meaning.
