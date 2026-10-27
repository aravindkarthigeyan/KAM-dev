# P3-1 independent audit 1

**Verdict: PASS WITH NOTES.** All five package results match the blueprint and the binding design, compile at the configured default budgets, and have only the permitted foundational axioms. The disclosed Lagrangian proof-route substitution is valid and needs no additional boundedness premise. No blocking or major finding was found.

## Scope, authorization and frozen inputs

Focused tier-2 package audit, 2026-10-27. Authority: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `AUDIT-PACKAGE.md`, `P3-1.md`, `P23-COMMON.md`, `PROVER-COMMON.md`, and the supplied handoff's AUDIT FOCUS. Read-only inspection and targeted builds/probes were authorized; the only repository artifact written is this report. No source repair, git mutation, delegation, or external publication was performed.

Snapshot v1 is HEAD `2715b86cfeaf126667df0241ec950ffee3e3ef01` on `k/p3-1`, compared against main `4f3829b84679759ca05adcc5e0407a7ac0a0bd53`. The implementation originates in `8032e1a`; HEAD also contains the subsequent main merge. All line citations below refer to this snapshot. The initially untracked `docs/campaign/audits/P3-1-handoff.md` was supplied input and was preserved.

SHA256 inventory, checked again at closeout:

| Input | SHA256 |
|---|---|
| `KAM/Uniq/Frame.lean` | `44ab4309a2dd02f0ba7f524c56efec9870ff1d2e9cf5587cd9845f82537e2b15` |
| `KAM/Uniq/Standing.lean` | `ebd61186bfbb7dc601bdf73bfe5648a2372777406906486682d8451b843dadc9` |
| `blueprint/parts/p3-uniqueness.tex` | `bbd7738a0706a2c39bc53f0a9902ec29c0bd483a8221a0febd543c6694951e19` |
| `docs/graph/K/DEPGRAPH.md` | `b0aeb613ce4e49dcc513831156cb176c6a80ac633fcc282951d264b6bf3b16d9` |
| `docs/campaign/design/PART23-LEAN-DESIGN.md` | `1b4bd7224e90844d78088822931f1d5e668dcc27cf5cd2351671da108985c125` |

Acceptance criteria were the package brief's six refutation checks, with particular attention to the handoff focus. I reconstructed statements from blueprint Part 3, expanded their premise structures, inspected all 376 lines of the implementation, checked predecessor contracts at their applications, then ran mechanical checks. A separate adversarial pass challenged strip exhaustion, absent boundedness, inverse orientation, margin weakening, constant dependence, and entrywise integrability. This was one independent auditor of the prover's work; no second auditor or independent kernel replay is claimed.

## Node verdicts

All declarations are in `KAM/Uniq/Frame.lean`, namespace `KAM.Uniq`. Their five signatures, from immediately after the theorem name through immediately before `:=`, are byte-identical to Appendix A §P3.2 (design lines 1581–1618). Separate examples copied from those signatures also elaborate.

| Graph node | Lean declaration (line) | Verdict | Comparison with blueprint |
|---|---|---|---|
| `bp:p3:matrix-norms` | `KAM.Uniq.matrix_norms` (220) | PASS | Part 3 lines 124–131: exactly (S3), together with globally fixed parameters; all seven bounds, including the stacked matrix, on the entire open strip. No S1/S2/S4 added. |
| `bp:p3:lagrangian` | `KAM.Uniq.lagrangian` (241) | PASS WITH NOTES | Lines 149–151: (S1)–(S3), conclusion `lagrangeMat K₁ θ = 0` everywhere on `T_ρ`. Valid proof-route deviation D1 below. |
| `bp:p3:frequency-bound` | `KAM.Uniq.frequency_bound` (255) | PASS | Lines 176–178: both `‖ω‖ ≤ Γ` and `γ ≤ Γ`, with unchanged Γ. |
| `bp:p3:reducibility` | `KAM.Uniq.reducibility` (267) | PASS | Lines 193–203: holomorphy of B,N,P; pointwise invertibility and explicit inverse; symplectic identity; torsion identity; full triangular reduction, with the source signs. |
| `bp:p3:torsion-bound` | `KAM.Uniq.torsion_bound` (313) | PASS | Lines 241–245: full-strip holomorphy, continuity on real space, bound on `T_(3ρ/4)`, entrywise integrability, and agreement with the frozen average. Entrywise formulation is design departure L21. |

Constants are fixed formulas, not existential witnesses chosen after torus data: `C_P = 2 n σK (1+σB)`; `Γ = C_P M`; `C_tor = C_P² M (1+4 n C_P/ρ)`. Their Lean argument lists enforce exactly their stated dependencies. None depends on h, K₁, ω or γ. There are no extra instance binders or K₂ binders in these results. The unused K₂ section variable is not captured.

Carriers and normalizations agree: vectors `Fin n → ℂ` and pairs of such vectors with max norms; rectangular frame matrices indexed by `Fin n ⊕ Fin n`; matrix row-sum operator norm from `open scoped Matrix.Norms.Operator` (Frame line 48); bilinear transpose without conjugation; period one; Lebesgue integrals over `[0,1]^n`; geometric open strips. Design L1/L3/L4/L21 document the equivalent carrier, determinant, norm and integrability presentations. No weakened conclusion was found.

## Expanded binder ledger

The following table gives one row per outer implicit data binder. All five results use these except γ, which occurs only in the four results assuming S2. Their types are respectively the dimension, real scalar parameters, ambient set, Hamiltonian, real frequency and torus map from blueprint lines 50–58 and 74–88. The outer order is the design order. There are no implicit instance assumptions.

| Binder | Bin | Source |
|---|---|---|
| n : ℕ | TYPING | Part 3 line 50 |
| τ : ℝ | TYPING | line 50 |
| ρ : ℝ | TYPING | line 50 |
| M : ℝ | TYPING | line 50 |
| σK : ℝ | TYPING | line 50 |
| σB : ℝ | TYPING | line 50 |
| σT : ℝ | TYPING | line 50 |
| μ : ℝ | TYPING | line 50 |
| 𝔅 : Set (ℂⁿ × ℂⁿ) | TYPING | lines 56–57 |
| h : ℂⁿ × ℂⁿ → ℂ | TYPING | lines 56–57 |
| ω : Fin n → ℝ | TYPING | line 57 |
| γ : ℝ | TYPING | line 57; absent in matrix_norms |
| K₁ : ℂⁿ → ℂⁿ × ℂⁿ | TYPING | line 57 |

The next table expands every logical premise of the explicit structures in theorem order `hP, h1, h2, h3`. Matrix norms has only `hP, h3`. Conjunctions in bounds, gram and twist are split into atomic requirements; their pointwise quantifiers and membership guards are those in the cited source, not additional outer hypotheses.

| Expanded premise | Bin | Source in `p3-uniqueness.tex` |
|---|---|---|
| hP.two_le: 2 ≤ n | STANDING | 50 |
| hP.tau_ge: n − 1 ≤ τ | STANDING | 50 |
| hP.ρ_pos: 0 < ρ | STANDING | 50 |
| hP.M_pos: 0 < M | STANDING | 50 |
| hP.σK_pos: 0 < σK | STANDING | 50 |
| hP.σB_pos: 0 < σB | STANDING | 50 |
| hP.σT_pos: 0 < σT | STANDING | 50 |
| hP.μ_pos: 0 < μ | STANDING | 50 |
| h1.isOpen: 𝔅 open | SOURCE | S1, 59 |
| h1.transl_mem: invariance under every integer angle shift | SOURCE | S1, 59–60 |
| h1.holo: h holomorphic on 𝔅 | SOURCE | S1, 60 |
| h1.periodic: h periodic on 𝔅 under integer shifts | SOURCE | S1, 60 |
| h1.real: h real at real points of 𝔅 | SOURCE | S1, 60–61 |
| h1.bounds: ‖Dh(z)‖ ≤ M for every z ∈ 𝔅 | SOURCE | S1, 61–62 |
| h1.bounds: ‖X_h(z)‖ ≤ M for every z ∈ 𝔅 | SOURCE | S1, 61–62 |
| h1.bounds: ‖DX_h(z)‖ ≤ M for every z ∈ 𝔅 | SOURCE | S1, 61–62 |
| h1.bounds: ‖D²X_h(z)‖ ≤ M for every z ∈ 𝔅 | SOURCE | S1, 61–62 |
| h2.gamma_pos: 0 < γ | SOURCE | S2, 63 |
| h2.dio: ω is (γ,τ)-Diophantine | SOURCE | S2, 63 |
| h3.holo: K₁ holomorphic on T_ρ | SOURCE | S3, 64 |
| h3.primary: K₁ primary on T_ρ | SOURCE | S3, 64 |
| h3.real: K₁ real on reals | SOURCE | S3, 64–65 |
| h3.ball_sub: ball(K₁ θ, μ) ⊆ 𝔅 for θ ∈ T_ρ | SOURCE | S3, 65–66 |
| h3.deriv_le: ‖DK₁ θ‖ ≤ σK − μ on T_ρ | SOURCE | S3, 66 |
| h3.gram: Gram determinant a unit on T_ρ | SOURCE | S3, 66–67 |
| h3.gram: ‖Gram⁻¹‖ ≤ σB − μ on T_ρ | SOURCE | S3, 67 |
| h3.twist: average torsion determinant a unit | SOURCE | S3, 67–68 |
| h3.twist: ‖average torsion inverse‖ ≤ σT − μ | SOURCE | S3, 68 |
| h3.invariant: invariance error zero on T_ρ | SOURCE | S3, 68 |

Counts per outer theorem: matrix_norms has SOURCE 10, STANDING 8, TYPING 12, RULED 0, EXCESS 0; each other result has SOURCE 21, STANDING 8, TYPING 13, RULED 0, EXCESS 0. These counts concern outer inputs after atomic structure expansion. Variables θ and membership guards inside conclusions remain conclusion quantifiers. All eight standing conditions are expressly documented in `Uniq/Standing.lean` lines 19–20 and 62–72; Frame imports and uses this documented bundle. Thus they meet the audit brief's standing-convention exception. S3.twist is a source premise even though this package does not use it; no hard step is hidden in a structure.

## Definitions and dependency semantics

**New `def` / `abbrev` / `structure` inventory: empty.** Frame introduces nineteen theorems, fourteen in FrameAux and the five node results. All mathematical objects are imported unchanged.

Relevant existing bodies were inspected: Params/S1/S2/S3 are literal source assumption bundles (Standing lines 62–110); the three constants above are literal formulas (lines 122–127); `lagrangeMat`, `normalMat`, `frameMat`, `normalFieldMat`, `symDefect`, `reducer`, `errDerivMat`, `triangularMat`, and `redDefect` are the displayed matrix expressions in `Torus/Objects.lean`; `avg` is real-torus averaging in `Torus/Basic.lean`. The frozen strip, Diophantine predicate, torsion and torsionAverage retain their intended formulas. `Torus/FrozenAgreement.lean` supplies the map/matrix and average bridges actually consumed here.

For these literal objects: BODY_MATCH OK; PUBLIC_CARRIER OK under the design's explicit total-function convention L2; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS for this package's uses. This does not re-certify every upstream definition on every possible carrier.

No proof exploits off-domain derivative values, the singular-matrix inverse fallback, or the integral's nonintegrable fallback. Derivatives are used at points of open holomorphic domains; Gram determinants are units; frame inversion is justified by an actual left inverse; integrability of torsion entries is proved from continuity. Source S3's assumption about the torsion average is legitimate source data, not an imported proof conclusion.

FrameAux's norm helpers have distinct names and conditional estimate premises, supplied explicitly by S3 when used in matrix_norms. They are conditional helpers, not substitutions for source results.

## Proof audit and refutation pass

### Part 2 attachment and positive margins

`standing_of` (Standing lines 145–161) constructs Apost.Standing field by field. Its Hamiltonian bound drops only the extra Dh component of S1 and keeps all three Part 2 bounds. Parameter and Diophantine fields are copied directly. No closeness, admissibility result or G1/G2 conclusion is assumed.

Frame lines 69–84 use μ > 0 to put K₁ θ in its own μ-ball and to weaken σK − μ and σB − μ to σK and σB. This is exactly what Part 2 applications require. Nonemptiness of the strip and n ≥ 2 come from the standing bundle, not extra premises.

### Lagrangian route D1: accepted

Blueprint lines 165–170 say: “By the uniqueness part ... with g=0 ... Since δ is arbitrary, Ω_{K₁}=0 on T_ρ.” Frame lines 244–251 instead apply `(KAM.Apost.cohomological ...).2 (lagrangeMat K₁) 0`.

Point-of-use contract: Apost/Tools lines 339–344 require holomorphy and periodicity of u on T_r, average zero, and `‖D u[ω]‖ ≤ H` there. They conclude `‖u θ‖ ≤ cR n τ * γ⁻¹ * δ^(-kappa n τ) * H` on T_(r−δ). There is **no boundedness hypothesis on u**. Its operator estimate comes from `cohomological_apriori_operator`, whose scalar precursor explicitly reconstructs u by cohomological uniqueness with bounded right-hand side `g = D u[ω]` (Strip/CohomologicalOperator lines 119–141). Thus the chosen estimate itself rests on proved uniqueness and assumes only boundedness of the derivative.

Here u = Ω_K₁. Holomorphy is supplied by `differentiableOn_lagrangeMat`; periodicity by `periodic_lagrangeMat`; zero average by `exactness`. The local equality E₁ = 0 on the open strip gives DE₁ = 0 through eventual equality of derivatives (Frame lines 152–161). Frame identities then prove DΩ_K₁[ω] = 0 (165–171). H = 0 is therefore supplied, not postulated. Multiplication by zero makes the estimate `‖Ω_K₁ θ‖ ≤ 0`, hence Ω_K₁ θ = 0.

For any given θ ∈ T_ρ, `exists_sub_mem` (178–188) chooses δ = (ρ − max_i |Im θ_i|)/2. Finiteness and n > 0 give the maximum; 0 < δ < ρ and θ ∈ T_(ρ−δ). This exhausts the **open** strip, so no boundary limit or uniform δ is missing. Attempted refutations by lack of a global Ω bound, circular use of lagrangian, and exclusion of points near the boundary all fail. The explicit blueprint bound `2 n σK²` is available from matrix norms but is unnecessary on this route.

### Reducibility and inverse orientation

Frame lines 286–311 prove full-strip holomorphy, then set the symplectic defect to zero using lagrangian. Frame identities give `Q * P = 1`. `Matrix.isUnit_det_of_left_inverse hQP` justifies invertibility and `Matrix.inv_eq_left_inv hQP` identifies P⁻¹ with Q in the correct order. Square finite matrices also give `P * Q = 1` via `mul_eq_one_comm`; this equality is used when cancelling Q from the reduction identity. No one-sided inverse has been treated as two-sided on a rectangular carrier.

`normalMat_transpose_mul_omega` and `reducer_eq_fromRows` prove the stacked expression using symmetry of the Gram inverse and Ω₀ᵀΩ₀ = I. DE₁ = 0 kills `redDefect`. Left multiplication by P yields precisely `A P − D P[ω] = P Λ`. Frozen `torsion_eq_mat` is applied with differentiability of N at the open-strip point, so T = B Lᵀ X_N is the frozen torsion, not an unrelated substitute.

### Torsion bound and averaging

Frame lines 322–331 obtain holomorphy of A, N, X_N and T, then continuity on real space. Each entry is integrable on the unit cube; `torsionAverage_eq_avg` consumes that continuity. This proves the source's average interpretation without relying on total-integral fallback semantics.

Lines 334–372 apply the directional Cauchy estimate to N bounded by σKσB on T_ρ, with δ = ρ/4 > 0. The target is exactly T_(ρ−ρ/4) = T_(3ρ/4). Since ∑|ω_l| ≤ n Γ, the directional derivative bound is `4 n Γ σK σB / ρ`. With ‖A‖ ≤ M, the proof gets

`‖X_N‖ ≤ M σK σB + 4 n Γ σK σB / ρ`.

It multiplies by ‖B Lᵀ‖ ≤ C_P and invokes `C_P_mul_torsion_coeff_le` (Standing lines 309–331), which uses Γ = C_P M and σKσB ≤ C_P to give exactly C_tor. Attempts to find a lost n, strip mismatch, circular torsion bound, or extra ω/γ dependence fail.

## Findings, deviations and errata

| ID | Severity | Evidence and disposition | Proposed action |
|---|---|---|---|
| D1 | Minor, nonblocking route/provenance note | Frame lines 244–251 use operator a-priori cohomology, while blueprint `step:p3:lagrangian-unique` lines 160–170 and its graph edge name entrywise uniqueness and an Ω bound. The mathematical objection was refuted by checking the invoked theorem's complete contract and its proof. The handoff and module docstring already disclose the deviation. | At landing, record the actual operator-estimate route in the graph's LEAN_NOTE/dependency provenance, citing this audit. The step's vanishing conclusion is proved by the lagrangian body; only its original argument is replaced. Do not mark an unproved standalone Ω-bound assertion as proved. No Lean change is required. |

No suspected pinned-source erratum, mathematical defect, statement deviation, conclusion-shaped premise, or unresolved tentative blocker was found. This audit checks correspondence to the checked-in blueprint; it does not independently re-audit the cited HL19/GJLV05 PDFs. No errata ledger was edited.

## Verification evidence

All compilation was serialized, with `nice -n 5`; no budget override, clean, cache update, full rebuild or shared-package mutation was requested. Toolchain: `leanprover/lean4:v4.35.0`.

1. `git diff --stat main...HEAD`:

```text
 KAM.lean            |   1 +
 KAM/Uniq/Frame.lean | 376 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 377 insertions(+)
```

The KAM.lean change is precisely `public import KAM.Uniq.Frame`; root-generation consistency passed lint. Its generation method cannot be inferred from the diff alone.

2. `git diff main...HEAD -- KAM/Frozen manifest` and `git diff --exit-code main...HEAD -- KAM/Frozen manifest`: no output; exit 0. `git diff --check main...HEAD` and `git diff --check`: no output; exit 0.

3. `nice -n 5 lake build KAM.Uniq.Frame`: exit 0.

```text
Build completed successfully (3185 jobs).
```

This was the single targeted build using the seeded build snapshot; the summary job count is Lake's target graph size, not evidence of rebuilding Mathlib from scratch.

4. `sh scripts/lint_sources.sh`: exit 0.

```text
check_lean_modules: PASS (243 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

This checks forbidden escapes/resource overrides, file sizes, module conventions, ambient-type prohibition, root imports, errata rendering, frozen source guards and ABI hashes. Frame has 376 total lines, below the 1500-line cap.

5. Mechanical exact-signature comparison used Python regex `r'theorem '+re.escape(name)+r'\b(.*?)\s*:='` on Frame and the design, then compared group(1) byte for byte for the five names:

```text
matrix_norms: signature bytes IDENTICAL
lagrangian: signature bytes IDENTICAL
frequency_bound: signature bytes IDENTICAL
reducibility: signature bytes IDENTICAL
torsion_bound: signature bytes IDENTICAL
New definitions in Frame: 0
Frame lines: 376
```

6. `nice -n 5 lake env lean .lake/abi-scratch/P31Audit.lean`: final exit 0. The probe imports Frame, opens the source's operator-norm scope and namespaces, declares its implicit section variables, then copies each entire design signature as an `example`, using respectively `KAM.Uniq.matrix_norms hP h3` or the other export applied to `hP h1 h2 h3`. Thus all five complete design types are inhabited by the actual package exports. It also prints axioms for all nineteen theorem declarations and checks the elaborated types of matrix_norms and lagrangian. Final probe SHA256: `549b0a1a2529a186adacf93aa8887fe656fd7f1ca97e8d15562a09250ce2280b`.

An initial probe run exited 1 because the audit's name extractor omitted the terminal apostrophe from three helper names. All five node examples and their axiom commands already succeeded in that run. The three scratch-only names were corrected and the full probe passed; this was an auditor probe error, not a package defect.

Exact axiom output from the final probe:

```text
'KAM.Uniq.FrameAux.mem_of_S3' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.FrameAux.deriv_le_of_S3' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.FrameAux.inv_gram_le_of_S3' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.FrameAux.isUnit_of_S3' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.FrameAux.norm_normalMat_le'' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.FrameAux.norm_transpose_tangentMat_le'' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.FrameAux.norm_inv_mul_transpose_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.FrameAux.norm_transpose_mul_omega_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.FrameAux.norm_frameMat_le'' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.FrameAux.errDerivMat_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.FrameAux.fderiv_lagrangeMat_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.FrameAux.exists_sub_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.FrameAux.normalMat_transpose_mul_omega' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.FrameAux.reducer_eq_fromRows' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.matrix_norms' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.lagrangian' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.frequency_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.reducibility' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.torsion_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
```

7. A recursive Python scan of local `public import`/`import` statements starting at `KAM.Uniq.Frame`, resolving module names to `.lean` paths, printed:

```text
Project import closure: 56 modules; forbidden theorem/provider imports: []
```

The forbidden prefixes checked were `KAM.Provider.` and `KAM.Frozen.Theorems.`. Frozen definitions are legitimate imports. Axioms of every result independently exclude transitive sorryAx.

**Provider exact-type probe:** not applicable. P3-1 is infrastructure, not a provider package; it neither modifies nor seals the frozen G2. The exact-design probes above check its own required contracts.

## Closeout

Five of five nodes classified and checked; fourteen of fourteen helpers inspected and axiom-checked; no new definitions; no EXCESS premise; no blocking/major findings. The accepted route note D1 remains for orchestrator provenance recording. All targeted checks passed. The scratch probe was deleted, input hashes remained unchanged, and only this report was created by the auditor. Package acceptance does not claim G2 theorem closure or fresh independent kernel replay of its upstream inputs.
