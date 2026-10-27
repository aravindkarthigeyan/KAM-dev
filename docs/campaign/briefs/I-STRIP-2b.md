# Package I-STRIP-2b: W-valued summation and uniform convergence (Part 1, `bp:p1:summation`)

Read `docs/campaign/briefs/PROVER-COMMON.md`. Then read the retro audit
`docs/campaign/audits/I-STRIP-2-audit-1.md`, findings F1 and F2.

- **Worktree:** `/root/code/KAM-w-strip2b`, branch `k/strip2b`, from main.
- **Module:** a NEW file, `KAM/Strip/FourierSeriesVector.lean`. Do not edit Zohar's `FourierBasic.lean` or
  `FourierSeries.lean`; build on them.
- **Goal.** Prove `bp:p1:summation` (blueprint/parts/p1-analysis.tex L824–839, with the step nodes `step:p1:sum-*`
  in docs/graph/K/DEPGRAPH.md) for a general finite-dimensional complex normed space `W` (L24–28: vector, matrix and
  operator spaces). Use new names, e.g. the suffix `_vec`.
  - Forward direction: `a : (Fin n → ℤ) → W` with ∑ ‖a_k‖ e^{2π|k|₁ρ} < ∞ gives a series that is holomorphic,
    1-periodic and bounded by that sum on T_ρ, and that **converges uniformly** on T_ρ (F1). Its coefficients are
    a_k.
  - Converse: the weighted coefficient estimate for u : T_ρ → W, holomorphic, bounded and periodic, with the exact
    constant in the blueprint, plus the representation.
  - Route: either general `[NormedAddCommGroup W] [NormedSpace ℂ W] [CompleteSpace W]` versions, or reduction to the
    scalar results through a basis or continuous linear functionals.
  - The norm bounds must be in W's own norm. For matrices, the blueprint's norm is the operator norm under
    `open scoped Matrix.Norms.Operator`. A general-W theorem covers it when instantiated there; state such an
    instantiation as a sanity `example`.
- **Also add** a scalar uniform-convergence lemma for the existing `KAM.fourierSum` (F1), from the summable majorant
  `norm_coeff_mul_character_le`.
