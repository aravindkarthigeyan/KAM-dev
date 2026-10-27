# Package I-STRIP-5: several-variable analyticity and real restrictions (Part 1)

Read `docs/campaign/briefs/PROVER-COMMON.md` first.

- **Worktree:** `/root/code/KAM-w-strip5`, branch `k/strip5`.
- **Nodes**, each with its steps:
  - `bp:p1:holomorphic-analytic` (L294);
  - `bp:p1:real-restriction-consequences` (L1037);
  - `bp:p1:real-restriction` (L1045);
  - `bp:p1:hamiltonian-real` (L1071).
- **The hard part is `holomorphic-analytic`.** A map complex-differentiable on an open subset of `Fin m → ℂ` is
  analytic there, and its restriction to real points is real-analytic. Mathlib's `DifferentiableOn.analyticOnNhd`
  is for domain ℂ only, and the Part 1 review confirmed there is no several-variable version.
  - The blueprint proves it by the iterated Cauchy formula on polydiscs.
  - Search Mathlib first (`lean-search-discovery`): Osgood or Hartogs-type results, `torusIntegral`, and
    `HasFPowerSeriesOnBall` constructions in several variables. A route through an existing Mathlib theorem is
    welcome if its statement covers the node exactly.
  - Otherwise follow the blueprint's steps (`han-margin`, `han-cauchy`, `han-series`, `han-bounds`, `han-real`).
    Convert the multi-index series to a `FormalMultilinearSeries` with a positive radius.
- **Already proved, so reuse it:** Zohar's `KAM/Strip/Regularity.lean` (derivative regularity, `ContDiffOn`) and
  `KAM/Strip/Cauchy.lean` and `HigherCauchy.lean`. The frozen definitions `HamiltonianVectorField`,
  `HamiltonianVectorFieldC`, `SymplecticForm`, `OmegaZero` and `IsRealOnReals` are used by `hamiltonian-real`.
- **Files:** new modules `KAM/Strip/Analytic.lean` (split as needed; this may be large) and
  `KAM/Strip/RealRestriction.lean`.
- This result is worth upstreaming to Mathlib later, so keep it general and clean.
