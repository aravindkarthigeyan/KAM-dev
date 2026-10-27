# Package I-P1B: remaining dependency-ready lemmas of Part 1

Read `docs/campaign/briefs/PROVER-COMMON.md` first.

- **Worktree:** `/root/code/KAM-w-p1b`, branch `k/p1b`.
- **Nodes** (Part 1), each with its steps:
  - `bp:p1:uniform-limits` (L362);
  - `bp:p1:increments-open` (L423);
  - `bp:p1:periodic-bounded` (L515);
  - `bp:p1:strip-identity` (L529);
  - `bp:p1:periodic-average` (L699);
  - `bp:p1:exp-sums` (L725);
  - `bp:p1:iteration` (L1007).
- **Lemmas you may use** (already proved; `docs/graph/K/DEPGRAPH.md` gives their `LEAN_REF`):
  - Zohar's `KAM/Strip/*` (Cauchy, Regularity, Averages) and `KAM/Matrix/Neumann.lean`;
  - the landed `KAM/Matrix/{Norms,Inverse}.lean` and `KAM/Measure/*`.

  A separate package (I-ZMAP) is mapping Zohar's lemmas to graph nodes. You may use them directly whenever their
  statements fit.
- **Files:** new modules `KAM/Strip/Limits.lean` (uniform-limits, increments-open),
  `KAM/Strip/Periodic.lean` (periodic-bounded, strip-identity, periodic-average), `KAM/Fourier/ExpSums.lean`
  (exp-sums), and `KAM/Analysis/Iteration.lean` (iteration). Split as needed.
- **Notes:**
  - Mathlib has `Analysis/Calculus/UniformLimitsDeriv.lean` for uniform-limits.
  - `exp-sums` holds for `n ≥ 1` as stated, including the coth product.
  - `iteration` gives `x_{m+1} ≤ x_m²` after rescaling, plus a bound linear in `y₀`.
