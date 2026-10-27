# Package I-STRIP-3: the cohomological equation on strips (claimed overnight; it gates G1/G2 design waves 5–8)

Read `docs/campaign/briefs/PROVER-COMMON.md` first. Also read the Part 2/3 design
`docs/campaign/design/PART23-LEAN-DESIGN.md`: §2.4 (the interface), the Appendix A text of `KAM.Apost.cohR` and
`KAM.Apost.cohomological` (Tools), and the Part 3 consumers listed in the design audit
`docs/campaign/audits/DESIGN-P23-P3-audit-1.md` ("Part 1 interfaces").

- **Worktree:** `/root/code/KAM-w-strip3`, branch `k/strip3`.
- **Nodes** (Part 1), each with its steps:
  1. `bp:p1:fourier-basic` (L757) and `bp:p1:summation` (L824). Zohar's `KAM/Strip/{FourierBasic,FourierSeries}.lean`
     (I-STRIP-2) probably covers them already. Map each node to its exact declarations, as package I-ZMAP did, and
     add an adapter in a new file only where a node is not exactly covered. Never edit Zohar's files.
  2. `bp:p1:cohomological` (L887) and `bp:p1:cohomological-operator` (L971). Prove them in a new module
     `KAM/Strip/Cohomological.lean`, ABOUT the existing definitions `KAM.cohSolution` and `KAM.cohConst`
     (`KAM/Strip/CohomologicalDefs.lean`), exactly as design §2.4 requires:
     - existence;
     - uniqueness among holomorphic periodic zero-average solutions on `T_{ρ−δ}`, without a boundedness premise on
       the candidate (this includes g = 0);
     - the bound `‖u‖_{ρ−δ} ≤ c(n,τ) γ⁻¹ δ^{−(τ+n)} ‖g‖_ρ` with exactly `KAM.cohConst` (Part 3's constants use it);
     - realness;
     - componentwise for `Fin p → ℂ`;
     - the operator-norm a-priori bound for `Matrix (Fin p) (Fin q) ℂ`, the row-sum norm under
       `open scoped Matrix.Norms.Operator`.

     The statements must let the Appendix A theorem `KAM.Apost.cohomological` (Part 2) be proved from them.
- **Inputs:**
  - Zohar's coefficient solver `KAM/Diophantine/*` (`Diophantine.solve`, `weightedNorm_solve_le`) and
    `KAM/Strip/{Fourier,FourierBasic,FourierSeries}.lean`;
  - `KAM.decay` / `KAM.decay_boundary_radius` (Bridges, W-valued);
  - `KAM.strip_identity`, `KAM.periodic_int_shift`, `KAM.Fourier.exp_sums`.
- **If Zohar lands his own I-STRIP-3 on main while you work** (check `git -C /root/code/KAM log origin/main` now and
  then), stop and report. Do not race him.
