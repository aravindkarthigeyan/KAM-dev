# Package P-G3: provider of the frozen G3 (`KAM.volume_not_diophantine_le`)

Read `docs/campaign/briefs/PROVER-COMMON.md` first.

- **Worktree:** `/root/code/KAM-w-g3`, branch `k/g3`.
- **Goal:** prove the frozen theorem's exact statement as `KAM.Provider.volume_not_diophantine_le` in
  `KAM/Provider/VolumeNotDiophantineLe.lean`, which is currently a stub, through the blueprint's G3 proof.
- **Nodes** (graph closure of `bp:p0:g3`; Part 4 lines 42–135):
  - `bp:p4:lattice-count` and its step;
  - `bp:p4:lattice-sum` and its steps;
  - `bp:p4:slab` and its steps;
  - the steps of the proof of `bp:p0:g3` (`step:p4:g3-*`).

  The externals used are (E8) `bp:p1:ext-lebesgue` and (E11) `bp:p1:ext-measure`. Nothing else from Parts 1–3 is
  needed.
- **Files:**
  - lemmas in new modules `KAM/Measure/Lattice.lean` and `KAM/Measure/Slab.lean`;
  - the assembly in the provider file, which may import those modules and Mathlib only.
- **Exact type.** The provider theorem must have exactly the type of the frozen theorem in
  `KAM/Frozen/Theorems/VolumeNotDiophantineLe.lean`. Read that file; do not edit it.
  - Check the type with an untracked scratch file (delete it afterwards) that imports both modules and contains
    `example : type_of% @KAM.volume_not_diophantine_le := @KAM.Provider.volume_not_diophantine_le`.
  - Or use the equivalent `theorem` with the copied statement.
- **Sealing is not yours.** The orchestrator replaces the frozen body after an independent audit. Never edit the
  frozen file.
- **Notes:**
  - The case `n = 0` is part of the frozen statement: `τ > -1`, and `Fin 0 → ℝ` is a point. The blueprint's
    dimension-zero step handles it.
  - `IsDiophantine` is the frozen definition `KAM.Frozen.Defs.IsDiophantine`.
