# Package I-P4B: more dependency-ready Part 4 lemmas

Read `docs/campaign/briefs/PROVER-COMMON.md` first.

- **Worktree:** `/root/code/KAM-w-p4b`, branch `k/p4b`.
- **Nodes** (Part 4), each with its steps:
  - `bp:p4:derivative-bounds` (L183);
  - `bp:p4:torsion-regular` (L546);
  - `bp:p4:shift` (L686);
  - `bp:p4:mixed-difference` (L800).
- **Inputs:**
  - `KAM/Head/*` (I-P4A: data, h-bounded, matrix norms, phase average, cover monotonicity, dyadic approximation);
  - the Part 1 layer (Cauchy, Taylor, increments, averages, matrices);
  - the frozen definitions.

  For `torsion-regular`, which is about frames and the torsion, use the Part 2 carrier and its bridge to the frozen
  definitions (`KAM/Torus/{Basic,Objects,FrozenAgreement}.lean`, `KAM/Matrix/Calculus.lean`, with
  `open scoped Matrix.Norms.Operator` for matrix derivative norms) instead of inventing a parallel representation.
- **Files:** new modules under `KAM/Head/`, e.g. `DerivativeBounds.lean`, `TorsionRegular.lean`, `Shift.lean`,
  `MixedDifference.lean`.
- **Note:** `mixed-difference` (Part 4) has its own proof on a parallelogram, not via Part 1's convex lemma (graph
  review finding).
