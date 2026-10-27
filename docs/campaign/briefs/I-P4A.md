# Package I-P4A: early dependency-ready lemmas of Part 4

Read `docs/campaign/briefs/PROVER-COMMON.md` first.

- **Worktree:** `/root/code/KAM-w-p4a`, branch `k/p4a`.
- **Nodes** (Part 4), each with its steps:
  - `bp:p4:h-bounded` (L168);
  - `bp:p4:matrix-norms` (L518);
  - `bp:p4:phase-average` (L677);
  - `bp:p4:cover-mono` (L1188);
  - `bp:p4:dyadic-approx` (L1241).

  If `bp:p4:data` (L154, a definition-like constants package) is needed by these, also formalize it, exactly as the
  blueprint defines it.
- **Lemmas you may use:**
  - landed and proved: `KAM/Matrix/{Norms,Inverse}.lean`, `KAM/Measure/*` (lattice, slab, Lipschitz, McShane,
    lipeomorphisms);
  - Zohar's `KAM/Strip/*`;
  - the frozen definitions (`KAM.Frozen.Defs.*`, e.g. `KamCover`, `FundamentalDomain`, `RealHamiltonian`,
    `FrequencyMap`), which these lemmas talk about. Read them.
- **Files:** new modules under `KAM/Measure/` or a new folder `KAM/Head/` (for HEAD's measure argument), e.g.
  `KAM/Head/Data.lean` and `KAM/Head/Basic.lean`. Split as needed.
- **Notes:**
  - `cover-mono` and `dyadic-approx` are measure-theoretic. Use (E8) and (E11) (Mathlib names at the items in Part
    1).
  - `matrix-norms` (Part 4) is a corollary with its own direct row computation. It does not need the whole
    `bp:p4:unperturbed` lemma: graph review finding F2.
