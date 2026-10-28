# I1-5 independent package audit 1

**PASS WITH NOTES — `bpI:p1:border-solve`, `KAM.Iso.Linear.border_solve`.** No material mathematical, statement, or axiom defect found. The result is usable as infrastructure; I1-5 has no frozen theorem to seal. `iso.isoenergetic_kam.v1` remains **FROZEN_UNPROVED / DRAFT_SORRY**; this report does not promote I-G1 or any N/P anchor.

## Scope, authority and snapshot

Focused tier-2 refute-first audit, 2026-10-28. Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the handoff, track-I statement, design v2 §7/§A7, both design reviews, blueprint `p1-iso-linear.tex` and the relevant p2 consumers. User authority overrides the brief's generic main-worktree destination: this report belongs at `/root/code/KAM-inp-i15/docs/tracks/I/audits/I1-5-audit-1.md`.

Frozen-v1 inputs: HEAD `df7b59e3cc65d91a131ac5796c3a2226a0111a5e`; inp `14bad61e5e7d839388a52ad9331e9caa6d06f4a0`; inp-i11 `3626838deeef8b58e1a2a12dfd62e74467cc4a2d`. `git diff inp...HEAD` warns of multiple merge bases and selects `ddafdac0fda9b423caf119844f75f00579a37cb4` (the other is `2bf3f7acfd6c4f974a769263479b45d1b43244d7`). This exact requested comparison contains eight new Lean files, 1640 lines. The handoff's `inp-i11...HEAD` comparison additionally contains unrelated merged campaign work; it is not used to attribute that work to I1-5.

| File | Lines | SHA-256 |
|---|---:|---|
| `KAM/Iso/Apost/Defs.lean` | 225 | `2e533d62fe1239b2b77ca202d9472206099e05a14e769992a027460953bb6008` |
| `KAM/Iso/Charts/Defs.lean` | 168 | `204bdaa63495090382b0563cd2a9bfa734791d10822a20d703c448a6c56bde50` |
| `KAM/Iso/Charts/Inputs.lean` | 94 | `a8f405840e6a94be71deeb6632aba601e237961933f3d4e26e81e5bb21ad3bfe` |
| `KAM/Iso/Linear/BorderSolve.lean` | 403 | `fc52c97460de3796c73e34622ec5309be9d07df1d6ed4d25cb4dabc003cf6fd0` |
| `KAM/Iso/Linear/BorderUnique.lean` | 292 | `793ccca946907e9c8aa9697552d9961a12776624d30bd9cd084ca4a0be98e117` |
| `KAM/Iso/Linear/Defs.lean` | 141 | `f08cbdb606c96d8290c31f1c66009cc2cf66c74e463a65a6eec7602189383844` |
| `KAM/Iso/Linear/FreqMap.lean` | 218 | `aab3c4aa4dc894f549ed033a5bb4256e2b87fbe6cb9bdfe5b644ef58a614a193` |
| `KAM/Iso/Linear/Tools.lean` | 99 | `0bd70679112ce3f3e761e8d7087e7a58467d68d60279cb4daecede1050f7366c` |

The handoff was already untracked when the audit started. No tracked source was edited. Scratch Lean probes are confined to `.lake/abi-scratch/` and removed at closeout. No commits, git state changes, generated-file repairs, cache operations or broad rebuilds were performed.

## Source and contract correspondence

Pinned HL19 was read locally at `/root/code/KAM-inp/sources/pdf/arxiv_1711.05515.pdf`, PDF/printed pp.46–47, Lemma 6.1, (6.7)–(6.10), SHA-256 `ed457633b5c4f0412b7f2c81c3818ef88829dee3420b97864e42223b77eb5241` (matches docs/sources.json). The immediate authoritative package target is the supplied blueprint proof, including its declared sign conversion, exponent κ=τ+n, complex data, and additional uniqueness clause.

`BorderSolve.lean:218–278` has **exactly the design §A7 signature after whitespace removal**. A fresh theorem with that design type elaborates with the explicit body:

```lean
by
  exact KAM.Iso.Linear.border_solve hγ hτ hdio hr hδ h2δ d
    hηL hηLp hηN hηNp hHL hHN hηN0 hT hTp hY hYp hHT hHY hinv hσ ξL0
```

Provider=frozen ABI and seal-body checks are **N/A for I1-5**: there is no provider export in this delta. The copied-design-type probe is a helper-contract check, not a frozen seal. The frozen I-G1 manifest entry is `iso.isoenergetic_kam.v1`, path `KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean`, export `KAM.Iso.isoenergetic_kam`, ABI `165645ea4aeb3d278f29d2336981a4bc924803cea8eaee49efbfca9874203b16`; source HL19 Theorem 3.6/Remark 3.7 and D20. Its draft body remains unchanged. Frozen `extendedTorsion`, `extendedTorsionAverage`, `energyAverage`, and the K strip/Diophantine/average definitions were inspected for the relevant conventions; the frozen/ABI guards pass.

The construction uses the full bordered average inverse on `Fin n ⊕ Unit`, never an inverse of ⟨T⟩ alone. Both forcing averages have plus signs after converting HL19's negative directional-derivative operator. Vector and border-vector norms are max norms; matrix norms are row-sum operator norms; the Y bound is explicitly ∑‖Y_b‖. The free phase constant is arbitrary and remains outside the second cohomological solve.

### Expanded binder test

Every outer binder of `border_solve` is listed below; `d : BordData n` is expanded into its five data fields. There are no hidden result fields or typeclass hypotheses. Counts: SOURCE=21, TYPING=17, STANDING=0, RULED=0, EXCESS=0.

| Binder / expanded field | Bin | Evidence |
|---|---|---|
| `n` | TYPING | Blueprint p1-iso-linear.tex:382–420: finite dimension; no n ≥ 2 is needed (stronger). |
| `γ` | TYPING | Blueprint p1-iso-linear.tex:382–420: real small-divisor parameter. |
| `τ` | TYPING | Blueprint p1-iso-linear.tex:382–420: real exponent. |
| `ω` | TYPING | Blueprint p1-iso-linear.tex:382–420: Fin n → ℝ. |
| `hγ` | SOURCE | Blueprint p1-iso-linear.tex:382–420: γ > 0. |
| `hτ` | SOURCE | Blueprint p1-iso-linear.tex:382–420: τ ≥ 0. |
| `hdio` | SOURCE | Blueprint p1-iso-linear.tex:382–420: Diophantine lower bound for every nonzero integer Fourier index. |
| `r` | TYPING | Blueprint p1-iso-linear.tex:382–420: real strip width. |
| `δ` | TYPING | Blueprint p1-iso-linear.tex:382–420: real strip loss. |
| `hr` | SOURCE | Blueprint p1-iso-linear.tex:382–420: r > 0. |
| `hδ` | SOURCE | Blueprint p1-iso-linear.tex:382–420: δ > 0. |
| `h2δ` | SOURCE | Blueprint p1-iso-linear.tex:382–420: 2δ < r. |
| `d.ηL` | TYPING | Blueprint p1-iso-linear.tex:382–420: complex vector forcing function. |
| `d.ηN` | TYPING | Blueprint p1-iso-linear.tex:382–420: complex vector forcing function. |
| `d.T` | TYPING | Blueprint p1-iso-linear.tex:382–420: complex matrix function. |
| `d.Y` | TYPING | Blueprint p1-iso-linear.tex:382–420: complex row function. |
| `d.ηω` | TYPING | Blueprint p1-iso-linear.tex:382–420: complex scalar energy forcing. |
| `HL` | TYPING | Blueprint p1-iso-linear.tex:382–420: real bound. |
| `HN` | TYPING | Blueprint p1-iso-linear.tex:382–420: real bound. |
| `HT` | TYPING | Blueprint p1-iso-linear.tex:382–420: real bound. |
| `HY` | TYPING | Blueprint p1-iso-linear.tex:382–420: real row-sum bound. |
| `σ` | TYPING | Blueprint p1-iso-linear.tex:382–420: real inverse bound. |
| `hηL` | SOURCE | Blueprint p1-iso-linear.tex:382–420: ηL holomorphic on T_r. |
| `hηLp` | SOURCE | Blueprint p1-iso-linear.tex:382–420: ηL period one on T_r. |
| `hηN` | SOURCE | Blueprint p1-iso-linear.tex:382–420: ηN holomorphic on T_r. |
| `hηNp` | SOURCE | Blueprint p1-iso-linear.tex:382–420: ηN period one on T_r. |
| `hHL` | SOURCE | Blueprint p1-iso-linear.tex:382–420: ηL bounded on T_r. |
| `hHN` | SOURCE | Blueprint p1-iso-linear.tex:382–420: ηN bounded on T_r. |
| `hηN0` | SOURCE | Blueprint p1-iso-linear.tex:382–420: period-one average ηN = 0. |
| `hT` | SOURCE | Blueprint p1-iso-linear.tex:382–420: T holomorphic on T_r. |
| `hTp` | SOURCE | Blueprint p1-iso-linear.tex:382–420: T period one on T_r. |
| `hY` | SOURCE | Blueprint p1-iso-linear.tex:382–420: Y holomorphic on T_r. |
| `hYp` | SOURCE | Blueprint p1-iso-linear.tex:382–420: Y period one on T_r; unused. |
| `hHT` | SOURCE | Blueprint p1-iso-linear.tex:382–420: T row-sum operator bound on T_(r−δ). |
| `hHY` | SOURCE | Blueprint p1-iso-linear.tex:382–420: sum of norms of Y entries bounded on T_(r−δ). |
| `hinv` | SOURCE | Blueprint p1-iso-linear.tex:382–420: bordered average determinant is a unit, equivalent to nonzero over ℂ. |
| `hσ` | SOURCE | Blueprint p1-iso-linear.tex:382–420: bordered inverse row-sum norm ≤ σ. |
| `ξL0` | TYPING | Blueprint p1-iso-linear.tex:382–420: arbitrary complex phase constant. |

The binders inside (c) quantify arbitrary **upper bounds** S and G, not additional outer premises. The logical inputs inside (d) are exactly the competing solution's holomorphy, periodicity and three source equations. Clause (e) has exactly the data-reality conditions and reality of ξL0. Each is SOURCE or TYPING within its source conclusion; none is EXCESS.

### Proof and adversarial checks

- **bs-first/bs-second:** `KAM.cohomological` is applied with loss δ on r and then r−δ; 2δ<r supplies positivity and both strict loss inequalities. `cohR` and `triU` are the existing componentwise Fourier solution, not fresh chosen solutions. `cR=max(1,cohConst)` depends only on n,τ and κ=τ+n. No bound is selected after the forcing.
- **bs-averages/bs-bordered:** norm bounds derive from the compact real period-one cube. Continuity of ηL,T,Y,uN supplies integrability where integral additivity is used. `bordAvg_mulVec_bordSol` and `eq_bordSol_of_rows` use the determinant-unit hypothesis on the complete border matrix.
- **bs-energy/bs-second:** the second border row proves ⟨YξN⟩=ηω; the first proves ⟨gL⟩=0. The first differential equation follows from ∂ωξL=gL. The gL estimate retains **‖ω‖ S**, and no γ or δ power is dropped.
- **bs-unique:** `border_unique` is distinctly named and proves only frequency/normal uniqueness, under fewer forcing/size hypotheses. The full `border_solve` then proves the tangential difference constant. The helper assumes the candidate equations because it is a uniqueness lemma; the source existence theorem does not assume its own solution.
- **Kernel lemma challenge:** applying cohomological uniqueness with zero forcing on width ρ+1 and loss 1 does not extend the candidate u: only zero forcing needs that larger strip; u is required solely on width ρ. Thus no missing extension or boundedness hypothesis arises.
- **bs-real:** real averages and real matrix inverse give real border constants; cohomological realness gives both vector functions. No realness premise is silently imposed on general complex data.
- **Attempted refutations:** checked singular ⟨T⟩ with invertible full border, unsupported product-integral linearity, an unbounded competing solution on its open strip, missing frequency term, loss of the tangential constant, unused hYp, and n=0/1. None survives inspection of the actual invoked hypotheses. There is no additional n≥2 premise; the matrix invertibility premise handles degenerate dimensions. This was a separate adversarial pass by the same independent auditor, not a second-agent review.

## Public declaration ledger

Each row is a new public theorem in the requested diff. Local conditional lemmas are audited as their own named algebra/analysis statements, not substituted for source nodes.

| Node | Lean declaration | Verdict | Reason / note |
|---|---|---|---|
| p3:K-bridge | `KAM.Iso.Charts.fractD_eq_domainD` | PASS | Literal bridge to track K; rfl. |
| p3:K-bridge | `KAM.Iso.Charts.totalH_eq_hbold` | PASS | Literal Hamiltonian bridge; rfl. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_omega_le` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_sumElim_le` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_bordXi0_le` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_bordXiOmega_le` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_dotProduct_le` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_bordSol_le` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_bordXiN_bordGL_le` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.avg_bordGL_eq_zero` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.bordSol_im_eq_zero` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.border_solve` | PASS | Exact design §A7 type; blueprint (a)–(e), with documented pointwise estimates and larger second-equation strip. |
| p1:border-solve | `KAM.Iso.Linear.bordMat_mulVec` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.bordAvg_mulVec_bordSol` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.eq_bordSol_of_mulVec` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.bordSol_rows` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.eq_bordSol_of_rows` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.avg_congr` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.avg_const` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.avg_add_of_continuous` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.avg_sub_of_continuous` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.avg_dotProduct_const` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.eq_zero_of_fderiv_eq_zero` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.eq_avg_of_fderiv_eq_zero` | PASS | Explicit algebra, average, kernel or norm sublemma; conditional premises are local inputs, not a replacement source result. |
| p1:border-solve | `KAM.Iso.Linear.border_unique` | PASS | Distinct helper: uniqueness of frequency and normal component only; used inside full (d). |
| p1:border-solve | `KAM.Iso.Linear.extendedTorsion_eq_bordMat` | PASS | Frozen extended torsion equals the literal block matrix. |
| p1:freq-map / B4 | `KAM.Iso.Linear.freq_map_local` | PASS | Holomorphic real-slice gradient/Hessian; no Kolmogorov premise. |
| p1:freq-map / B4 | `KAM.Iso.Linear.freq_map_contDiff` | PASS | C1 real-slice regularity and derivative identity; hreal retained, unused. |
| p1:ray | `KAM.Iso.Linear.isDiophantine_smul` | PASS | Ray scaling, s ≥ 1, even without positivity restrictions on γ,τ. |
| p1:ext-neumann | `KAM.Iso.Linear.isUnit_det_one_sub` | PASS | Finite-index Neumann unit criterion. |
| p1:ext-neumann | `KAM.Iso.Linear.neumann_fintype` | PASS | Finite-index inverse bounds 2σ and 2σ²‖Δ‖. |
| K:p1:real-inverse | `KAM.Iso.Linear.inv_im_eq_zero` | PASS | Real entries of inverse; includes the singular total inverse convention. |

Blueprint (a) also discusses uN and existence of product averages explicitly. The design puts uN facts in the upstream cohomological theorem and does not repeat integrability fields in `border_solve`. The proof supplies their continuity; the named average identities are applied with those proofs. This is the approved signature decomposition, not an assumed average-existence premise. The projection bounds for ξ0 and ξω are separately public lemmas. The second differential equation holds on the larger T_(r−δ); arbitrary S/G bounds in (c) give the stated S* estimates and preserve constant dependence (design departure D5).

## Definition classification

**I1-5 itself introduces no definitions.** Its used I-D0 objects `BordData`, `bordAvg`, `bordSol`, `bordXi0`, `bordXiOmega`, `bordXiN`, `bordGL`, `bordXiL`, and `bordMat` are literal formulas/data, not characterization-defined objects or classical choices. On their full Lean carriers they agree with the explicit design formulas. The inverse is the existing total matrix inverse, and average/Fourier operators have their existing total semantics; inversion and analytic identities are used only after their actual hypotheses are proved or supplied. No new fallback is used to prove the source result.

For these literal I1-5 dependencies:

```text
BODY_MATCH: OK
PUBLIC_CARRIER: OK
WELL_DEFINEDNESS: N/A_LITERAL
CHARACTERIZATION: N/A_LITERAL
CHOICE_INDEPENDENCE: N/A
DEFINITION_VERDICT: PASS
```

The remaining definition inventory below is included because the requested diff also brings in I-D0. Part 2 limits and Part 3 output predicates are not a proof of convergence or existence; this audit does not certify those future source nodes. In particular, prescribed off-strip updates and `limUnder` are reported openly rather than treated as already established limits. They do not occur in the I1-5 theorem or proof. Whole upstream gate aliases are intentional design interfaces; I1-5 assumes none of them.

| Locator | Declaration | Classification | Disposition |
|---|---|---|---|
| `KAM/Iso/Apost/Defs.lean:46` | `IsoStanding` | Literal source standing/admissibility/output predicate | I-D0 interface only; no existence is inferred from this structure. |
| `KAM/Iso/Apost/Defs.lean:65` | `rayMargin` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:69` | `IsoAdmissible` | Literal source standing/admissibility/output predicate | I-D0 interface only; no existence is inferred from this structure. |
| `KAM/Iso/Apost/Defs.lean:82` | `hatCS` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:84` | `hatCxiN` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:85` | `hatCg` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:87` | `hatCxi` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:88` | `hatCDK` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:89` | `hatCDelta` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:91` | `CP` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:92` | `hatCpartial` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:94` | `hatClin` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:97` | `hatCE1` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:100` | `hatCE2` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:103` | `hatCE` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:104` | `CY` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:106` | `CDTbord` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:107` | `hatcStep` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:109` | `hatcSum` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:111` | `hatcStar` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:116` | `dStep` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:121` | `isoBordData` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:127` | `isoXi` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:131` | `isoXiOmega` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:136` | `isoCorrection` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:142` | `isoNewS` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:148` | `isoNewtonMap` | Prescribed strip update with original K outside | Literal design convention; absent from border_solve; no Newton estimate certified here. |
| `KAM/Iso/Apost/Defs.lean:154` | `isoQuadX` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:160` | `isoQuadH` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:166` | `isoEpsSeq` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:173` | `isoDSeq` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:177` | `isoSeq` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:186` | `IterHyp` | Literal source standing/admissibility/output predicate | I-D0 interface only; no existence is inferred from this structure. |
| `KAM/Iso/Apost/Defs.lean:204` | `isoLimit` | Prescribed total limUnder construction | I-D0 / future iteration work; convergence is not certified by I1-5 and these are absent from border_solve. |
| `KAM/Iso/Apost/Defs.lean:210` | `isoSLimit` | Prescribed total limUnder construction | I-D0 / future iteration work; convergence is not certified by I1-5 and these are absent from border_solve. |
| `KAM/Iso/Apost/Defs.lean:215` | `isoC1` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Apost/Defs.lean:220` | `isoC2` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:53` | `rhoIso` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:56` | `dB` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:59` | `eta1` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:61` | `sSet` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:63` | `mhConst` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:65` | `MgConst` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:68` | `ShConst` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:71` | `nuConst` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:72` | `sigmaOmegaConst` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:75` | `sigmaKConst` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:76` | `sigmaTConst` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:78` | `epsT` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:83` | `perp` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:84` | `det2` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:85` | `aCoord` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:86` | `bCoord` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:87` | `slope` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:89` | `hessR` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:92` | `chartDom` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:95` | `chartM` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:97` | `chartPhi` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:99` | `jac2` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:104` | `IsPatch` | Literal source standing/admissibility/output predicate | I-D0 interface only; no existence is inferred from this structure. |
| `KAM/Iso/Charts/Defs.lean:129` | `IsPatch.toEnergyPatch` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:139` | `IsRay` | Literal source standing/admissibility/output predicate | I-D0 interface only; no existence is inferred from this structure. |
| `KAM/Iso/Charts/Defs.lean:145` | `flatRemainder` | Literal formula / recursive construction / projection | I-D0 declaration inventory; no Part 2/3 proof closure claimed. |
| `KAM/Iso/Charts/Defs.lean:151` | `ToriSide` | Literal source standing/admissibility/output predicate | I-D0 interface only; no existence is inferred from this structure. |
| `KAM/Iso/Charts/Inputs.lean:46` | `IG1Body` | Literal upstream statement alias | Interface only; no theorem is proved or assumed by I1-5. |
| `KAM/Iso/Charts/Inputs.lean:80` | `IG1Statement` | Literal upstream statement alias | Interface only; no theorem is proved or assumed by I1-5. |
| `KAM/Iso/Charts/Inputs.lean:88` | `G3Statement` | Literal upstream statement alias | Interface only; no theorem is proved or assumed by I1-5. |
| `KAM/Iso/Linear/Defs.lean:45` | `Setting` | Literal source data/standing predicate | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:53` | `energyRow` | Literal block/formula construction | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:58` | `bordMat` | Literal block/formula construction | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:69` | `BordData` | Literal source data/standing predicate | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:77` | `bordAvg` | Literal block/formula construction | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:81` | `bordSol` | Literal block/formula construction | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:85` | `bordXi0` | Literal block/formula construction | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:86` | `bordXiOmega` | Literal block/formula construction | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:89` | `bordXiN` | Literal block/formula construction | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:93` | `bordGL` | Literal block/formula construction | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:97` | `bordXiL` | Literal block/formula construction | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:101` | `isoLinError` | Literal block/formula construction | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:109` | `isoResidual` | Literal block/formula construction | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:117` | `bordOp` | Literal block/formula construction | PASS; body and carrier agree with design; no new choice or fallback. |
| `KAM/Iso/Linear/Defs.lean:124` | `AdmissibleNoTwist` | Literal source data/standing predicate | PASS; body and carrier agree with design; no new choice or fallback. |

## Verification evidence

All targeted build/probe/replay commands below completed; no heartbeat or recursion/synthesis override was used. The build uses the campaign gate; it replayed cached dependencies, not a clean rebuild.

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i15 KAM.Iso.Linear.BorderSolve KAM.Iso.Linear.FreqMap KAM.Iso.Apost.Defs KAM.Iso.Charts.Defs KAM.Iso.Charts.Inputs
```

Exit 0. Output: `[inp-gate] slot 2 acquired 02:14:52 ...`; `Build completed successfully (3251 jobs).` The only replayed warning was pre-existing `KAM/ODE/Exit.lean:36:0` unused `[NormedSpace ℝ E]` in `KAM.ODE.gen_exit`.

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Linear.BorderSolve KAM.Iso.Linear.BorderUnique KAM.Iso.Linear.Tools KAM.Iso.Linear.Defs KAM.Iso.Linear.FreqMap KAM.Iso.Apost.Defs KAM.Iso.Charts.Defs KAM.Iso.Charts.Inputs
```

Exit 0; complete output:

```text
replaying KAM.Iso.Charts.Inputs
replaying KAM.Iso.Charts.Defs
replaying KAM.Iso.Apost.Defs
replaying KAM.Iso.Linear.FreqMap
replaying KAM.Iso.Linear.Defs
replaying KAM.Iso.Linear.Tools
replaying KAM.Iso.Linear.BorderUnique
replaying KAM.Iso.Linear.BorderSolve
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I15Audit.lean
```

Exit 0. The copied-signature theorem elaborated; complete `#print axioms` output:

```text
'KAM.Iso.Charts.fractD_eq_domainD' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.totalH_eq_hbold' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_omega_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_sumElim_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_bordXi0_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_bordXiOmega_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_dotProduct_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_bordSol_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_bordXiN_bordGL_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.avg_bordGL_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.bordSol_im_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.border_solve' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.bordMat_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.bordAvg_mulVec_bordSol' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.eq_bordSol_of_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.bordSol_rows' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.eq_bordSol_of_rows' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.avg_congr' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.avg_const' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.avg_add_of_continuous' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.avg_sub_of_continuous' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.avg_dotProduct_const' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.eq_zero_of_fderiv_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.eq_avg_of_fderiv_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.border_unique' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.extendedTorsion_eq_bordMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.freq_map_local' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.freq_map_contDiff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.isDiophantine_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.isUnit_det_one_sub' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.neumann_fintype' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.inv_im_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, exclusively the explicitly allowed stale generated-root diagnostic; complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (342 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I15Aliases.lean
```

Exit 0, empty output. The probe imports the frozen anchors only inside scratch and checks:

```lean
example : (type_of% @KAM.Iso.isoenergetic_kam) = KAM.Iso.Charts.IG1Statement := rfl
example : (type_of% @KAM.volume_not_diophantine_le) = KAM.Iso.Charts.G3Statement := rfl
```

These compare types without using the draft theorem as a proof input to I1-5. The main axiom probe ran before either frozen anchor was imported into a probe.


```sh
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
git diff --check inp...HEAD
```

Both exit 0 with no diff/check output, apart from Git's multiple-merge-base warning. Eight added files have 99–403 physical lines (well below 1500); module checker confirms copyright/module/import/docstring/public-section conventions. No prohibited proof escape, resource override, provider import or frozen theorem import occurs in these eight production modules. All 32 theorem axiom closures are standard foundations only.

**Auditor execution deviation:** the first lint invocation was started while leanchecker was active. Its internal `abi_hashes.py` spawned Lean, causing a brief overlap; the shell lint command also lacked the requested thread/nice environment. This was an auditor runner error, not a package defect. Both completed successfully, and lint was rerun separately with `LEAN_NUM_THREADS=1 nice -n 5` after replay/probe completion. No claim of perfect serialization is made for that initial attempt.

## Findings, errata and closeout

No material finding survives the refutation pass. **PASS WITH NOTES** reflects the expected stale generated-root lint diagnostic, the absence of a frozen seal in this infrastructure package, and the runner deviation above. `hYp` is retained to match the exact source-facing signature though unused; continuity of Y suffices in its actual uses.

No new suspected pinned-source erratum was found. HL19's p.47 proof says “It is analogous to Lemma 5.1”; the blueprint supplies the detailed proof and an additional uniqueness clause. Its p1: border-remarks explicitly explains the sign convention and why our zero-average gL estimate carries the constant ωξω term; this is a documented adaptation, not an unreported repair or a new allegation that the printed estimate is false.

No implementation deviation was introduced. No N/P result or Part 2 iteration/Part 3 existence proof was audited for closure. I-G1 remains unproved; package PASS does not discharge it. Closeout: mathematical/statement review complete; new public theorem inventory and axiom checks complete; kernel replay complete; protected diff empty; report-only scope maintained; final serial lint/alias evidence and scratch cleanup recorded below.

Final closeout: the eight Lean SHA-256 values were rechecked unchanged; both auditor-created probes `I15Audit.lean` and `I15Aliases.lean` were removed. The only new deliverable is this report; the pre-existing untracked handoff is untouched. Final `git diff --check` exits 0.
