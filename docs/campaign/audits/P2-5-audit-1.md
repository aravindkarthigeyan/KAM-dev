# Independent audit of P2-5

Overall verdict: **PASS WITH NOTES**.

Audited on 2026-10-27 at `d08032aaa003ba72e94c098f0f790d8843b81517` (branch `k/p2-5`).
Comparison main: `e261bcbd67cd4bdd922ca9e26e0014bd3db5c5c0`.
Read AGENTS.md, PLAN, DECISIONS, AUDIT-PACKAGE, P2-5 and its common briefs, the handoff,
the binding design, and the graph/source locators below. Applied the statement-audit method.
This is an infrastructure-package audit, not a seal of G1 or G2.

The package adds `KAM/Apost/Frame.lean` (506 lines, 34 theorems, no definitions) and its
generated root import. The two package commits are `260b3dc` and `d08032a`; their combined
diff from `260b3dc^` is precisely those two files (507 insertions).
The audit changes only this report; the supplied untracked handoff is preserved.

Snapshot SHA256:

```text
9a327f1cbec0424b44490a323d387627a66df6ae2a1ce5c4dd384ce1a6679546  KAM/Apost/Frame.lean
1b4bd7224e90844d78088822931f1d5e668dcc27cf5cd2351671da108985c125  docs/campaign/design/PART23-LEAN-DESIGN.md
c8fe335ca1f87390d803ffec36254804290f3962910284b9d7afd8fec3530f30  blueprint/parts/p2-aposteriori.tex
```

## Node inventory and fidelity

All implementation locators below are in `KAM/Apost/Frame.lean`. `Aux` means
`KAM.Apost.FrameAux`. Source line ranges refer to `blueprint/parts/p2-aposteriori.tex`.
The graph entries occupy `docs/graph/K/DEPGRAPH.md:5428–5696`.

| Node | Lean declaration(s) | Verdict | Evidence/reason |
|---|---|---|---|
| `bp:p2:frequency` | `KAM.Apost.frequency`, L423–435 | PASS | Source L357–365; exact Appendix A signature, all three inequalities, no new premise. |
| `step:p2:freq-solve` | `Aux.ofReal_eq_inv_mul_transpose_mulVec`, L101–105 | PASS | Source L368–370; solves using `B Lᵀ L = 1`, with the actual frozen error and Gram matrix. Pointwise helper needs only invertibility. |
| `step:p2:freq-upper` | `Aux.norm_le_of_pointwise`, L108–126; `Aux.two_mul_le_Theta`, L146–159 | PASS | Source L372–375; max norms, transpose factor `2n`, same `2nσKσB(M+ε)` and `Θ`. All helper inputs supplied by the parent. |
| `step:p2:freq-lower` | `Aux.le_norm_of_dio`, L129–143 | PASS | Source L377–379; nonzero integer single-coordinate vector, weight exactly 1, then coordinate bounded by max norm. |
| `bp:p2:frame-basic` | `KAM.Apost.frame_basic`, L438–502 | PASS | Source L382–398; exact Appendix A signature and all (a)–(d) conclusions. No primary/realness assumption on K. |
| `step:p2:fb-holo` | `Aux.differentiableOn_invarianceError`, `differentiableOn_linMat`, `differentiableOn_frameMat`, `differentiableOn_normalFieldMat`, `differentiableOn_torsion`, `differentiableOn_symDefect`, `differentiableOn_reducer`, `differentiableOn_eta`, `transpose_inv_gramMatrix`, `continuous_torsion_real`, L254–337; assembly L474–490 | PASS | Source L401–406; existing tangent/Gram/normal regularity, holomorphic inverse, products and derivatives; all 13 objects covered, ordinary transpose symmetry, real-slice continuity. |
| `step:p2:fb-bounds` | `Aux.norm_tangentMat_le`, `norm_transpose_tangentMat_le`, `norm_inv_gramMatrix_le`, `norm_normalMat_le`, `norm_transpose_normalMat_le`, `norm_frameMat_le`, `norm_linMat_le`, L174–221 | PASS | Source L408–412; seven bounds respectively `m`, `2nm`, `m`, `m²`, `2nm²`, `2m²`, `m`. |
| `step:p2:fb-eta` | `Aux.norm_etaL_le`, `norm_etaN_le`, L224–241 | PASS | Source L414–416; actual eta blocks, coefficients `2nm²ε` and `2nmε`. |
| `step:p2:fb-torsion` | `Aux.arith_normalField`, `norm_normalFieldMat_le`, `norm_torsion_le`, L351–414 | PASS | Source L418–424; directional Cauchy bound and actual torsion agreement, `C_X = 5n²m⁵`, `C_T = 2nm²C_X`, one strip loss. |

Both public signatures, from `theorem …` through the conclusion before `:=`, are
**byte-identical** to their Appendix A signatures (design L1012–1051). A second check
elaborated examples whose complete types were extracted from Appendix A and whose
bodies applied the actual exported theorems. This checks the imported constants/norms,
not merely a pretty-printed name.

## Expanded binder audit

Source key: S = Part 2 standing assumption L56–66; F = frequency L357–365;
B = frame-basic L382–398; A = admissibility L306–317; D = design §3.2 L5
and §7.4 F1 (explicit positive widths/radii, already binding for this package).
All data binders are implicit in the actual public theorems; there are no instance binders.
Rows with `both` apply separately to each theorem.

| Declaration | Expanded binder/input | Bin | Citation |
|---|---|---|---|
| both | `n : ℕ` | TYPING | S |
| both | `τ : ℝ` | TYPING | S |
| both | `M : ℝ` | TYPING | S |
| both | `σK : ℝ` | TYPING | S |
| both | `σB : ℝ` | TYPING | S |
| both | `σT : ℝ` | TYPING | S |
| both | `𝔅 : Set (ℂⁿ × ℂⁿ)` | TYPING | S |
| both | `h : ℂⁿ × ℂⁿ → ℂ` | TYPING | S |
| both | `ω : Fin n → ℝ` | TYPING | S |
| both | `γ : ℝ` | TYPING | S |
| both | `hS.toParams.two_le : 2 ≤ n` | STANDING | S |
| both | `hS.toParams.tau_ge : n - 1 ≤ τ` | STANDING | S |
| both | `hS.toParams.M_pos : 0 < M` | STANDING | S |
| both | `hS.toParams.σK_pos : 0 < σK` | STANDING | S |
| both | `hS.toParams.σB_pos : 0 < σB` | STANDING | S |
| both | `hS.toParams.σT_pos : 0 < σT` | STANDING | S |
| both | `hS.isOpen` | STANDING | S |
| both | `hS.transl_mem` (all z, integer shifts, domain membership) | STANDING | S |
| both | `hS.holo` | STANDING | S |
| both | `hS.periodic` (all z and integer shifts) | STANDING | S |
| both | `hS.real` (all real θ, I with membership) | STANDING | S |
| both | `hS.bounds.1` at every z in 𝔅: `‖X_h z‖ ≤ M` | STANDING | S |
| both | `hS.bounds.2.1` at every z in 𝔅: `‖DX_h z‖ ≤ M` | STANDING | S |
| both | `hS.bounds.2.2` at every z in 𝔅: `‖D²X_h z‖ ≤ M` | STANDING | S |
| both | `hS.gamma_pos : 0 < γ` | STANDING | S |
| both | `hS.dio`: for every nonzero integer vector k, `γ / (∑ i, |k i|)^τ ≤ |∑ i, k i * ω i|` | STANDING | S; frozen `IsDiophantine` |
| both | `r : ℝ` | TYPING | F/B |
| frequency | `ε : ℝ` | TYPING | F |
| frame_basic | `β : ℝ` | TYPING | A/B |
| both | `hr : 0 < r` | RULED | D; positive-strip convention of Part 0 |
| frequency | `hε : ε ≤ 1` | SOURCE | F |
| frame_basic | `hβ : 0 < β` | RULED | D; positive-ball convention |
| both | `K : ℂⁿ → ℂⁿ × ℂⁿ` | TYPING | F/B |
| frequency | `hK𝔅 : ∀ θ ∈ T_r, K θ ∈ 𝔅` | SOURCE | F |
| frequency | `hA3 : ∀ θ ∈ T_r, ‖DK θ‖ ≤ σK` | SOURCE | F/A3 |
| frequency | `hA4.1 : ∀ θ ∈ T_r, IsUnit (G θ).det` | SOURCE | F/A4 |
| frequency | `hA4.2 : ∀ θ ∈ T_r, ‖(G θ)⁻¹‖ ≤ σB` | SOURCE | F/A4 |
| frequency | `hA6 : ∀ θ ∈ T_r, ‖E θ‖ ≤ ε` | SOURCE | F/A6 |
| frame_basic | `hK : DifferentiableOn ℂ K T_r` | SOURCE | B |
| frame_basic | `hA2 : ∀ θ ∈ T_r, ball (K θ) β ⊆ 𝔅` | SOURCE | B/A2 |
| frame_basic | `hA3 : ∀ θ ∈ T_r, ‖DK θ‖ ≤ σK` | SOURCE | B/A3 |
| frame_basic | `hA4.1 : ∀ θ ∈ T_r, IsUnit (G θ).det` | SOURCE | B/A4 |
| frame_basic | `hA4.2 : ∀ θ ∈ T_r, ‖(G θ)⁻¹‖ ≤ σB` | SOURCE | B/A4 |

Counts per theorem (conjunction fields counted separately): frequency — TYPING 13,
STANDING 16, SOURCE 6, RULED 1, EXCESS 0; frame_basic — TYPING 13,
STANDING 16, SOURCE 5, RULED 2, EXCESS 0. RULED here records the existing binding
design clarification, not a new author ruling or alteration introduced by this audit.
The Standing bundle was expanded against `Standing.lean:41–63` and the raw standing
assumption; it hides no estimate to be proved by this package.

The nested inputs of frame_basic are also source-exact: (b) quantifies θ in T_r;
(c) quantifies ε, assumes A6, then quantifies θ in T_r; (d) assumes the source frequency
bound, quantifies δ with `0 < δ`, `δ ≤ 1`, `δ < r`, then θ in T_(r-δ).
These occur only in their respective conclusions, so neither A6 nor the frequency bound
is required for (a) or (b). There are no existential constants or enlarged dependence:
m depends on `(M,σK,σB,σT)`, and Θ, C_X, C_T depend on `(n,M,σK,σB,σT)`.

The conditional Aux helpers do take previously established bounds as inputs, under
distinct names. They are not substituted for the public source results. In particular,
frame_basic L474–502 constructs normal holomorphy, N/A bounds, and torsion agreement
before supplying them to `norm_normalFieldMat_le` and `norm_torsion_le`.

## Focus checks and definitions

At L430, `hr` proves `0 ∈ T_r` coordinatewise. At L431,
`0 ≤ ‖invarianceError h K ω 0‖ ≤ ε` proves `0 ≤ ε`. Thus even a negative arbitrary ε
cannot satisfy the hypotheses. The proof uses that derived fact in the Θ arithmetic;
no positivity hypothesis has been smuggled into frequency. The lower bound uses
`n ≥ 2` inherited from the source standing data, hence an actual first coordinate exists.

For frame_basic, L473 obtains `K θ ∈ 𝔅` by applying A2 to
`Metric.mem_ball_self hβ`. The positivity clarification is therefore substantive and
already covered by design L5/F1. Real-slice continuity uses `hr` at L332–337.

New `def` / `abbrev` / `structure`: **none**. Definition verdict: N/A for new objects.
The reused definitions were read for semantic closure: max-norm `sumVec`/`colMat`/`sqMat`,
L, A, Ω_K, N, P, X_N, E_sym, Q, η, ηL, ηN in `Torus/{Basic,Objects}.lean`,
and frozen E, G, T, Diophantine condition. The object formulas match design §1.3 and
blueprint `bp:p2:objects`; constants m, Θ, C_X, C_T match blueprint L85–93 and
`Apost/Constants.lean:66–72`. These are inherited literal formulas, not new selected
witnesses or result-shaped structures. Total `fderiv` and matrix inversion are used
under holomorphy/invertibility where needed; no invented fallback supplies a result.
The torsion formula is justified by `torsion_eq_mat` using the proved differentiability
of N, not treated as an unconditional definitional equality.

Matrix statements open `Matrix.Norms.Operator` (L44). Vector carriers are max-norm
`Fin n → ℝ/ℂ` and the product thereof. The Sum index converts the two blocks without
changing the norm. No Euclidean-space substitution, conjugate transpose, or extra
factor of n appears. The torsion calculation bounds `∑ |ω_i| ≤ n‖ω‖ ≤ nΘ`,
so `‖∂_ω N‖ ≤ 4n²m⁵/δ`; `m³ ≤ n²m⁵/δ` gives C_X, then `2nm² C_X` gives C_T.

## Checks independently run

All compiler invocations were serialized and used `nice -n 5`; no budget overrides,
clean builds, root regeneration, or git mutations were performed.

`sh scripts/lint_sources.sh` — exit 0; exact stdout:

```text
check_lean_modules: PASS (224 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`nice -n 5 lake build KAM.Apost.Frame` — exit 0:

```text
Build completed successfully (2908 jobs).
```

`git diff main...HEAD -- KAM/Frozen manifest` — exit 0, no diff; stderr:

```text
warning: main...HEAD: multiple merge bases, using d90f4c6a67d1e19bcf9e79f3158da91c12bf5d4b
```

`git diff --check main...HEAD` — exit 0, same merge-base warning, no whitespace errors.
`git diff --check` — exit 0, no output before report creation.
`wc -l KAM/Apost/Frame.lean` — `506 KAM/Apost/Frame.lean`.
Lint verifies the module header, public section, line cap, forbidden proof escapes,
resource overrides, generated-root consistency, and frozen/manifest invariants.
The file uses copyright, `module`, public interface imports, docstring, and
`@[expose] public noncomputable section`. It contains only proved theorem declarations.

A Python DFS over local project imports, rooted at `KAM.Apost.Frame`, returned:

```text
Frame project import closure: 44 modules; acyclic; forbidden imports: []
Frame declarations: 34 theorems; 0 new definitions/abbreviations/structures; 506 lines
```

The forbidden set for this check was `KAM.Provider.*` and `KAM.Frozen.Theorems.*`.
The axiom results below additionally rule out hidden sorry dependencies.

Exact-type probes: created only `.lake/abi-scratch/P25Audit.lean`, then deleted it.
A Python regex extracted each `theorem frequency …` / `theorem frame_basic …`
from Appendix A up to ` :=`, compared it with Frame, and emitted it as an `example`.
The probe imported `KAM.Apost.Frame`, opened `Matrix.Norms.Operator`, `Matrix`,
`MeasureTheory`, `Filter`, `Topology`, `KAM.Torus`, and used the same implicit data
binders in namespace `KAM.Apost`. The example bodies were exactly:

```lean
by exact frequency hS hr hε hK𝔅 hA3 hA4 hA6
by exact frame_basic hS hr hβ hK hA2 hA3 hA4
```

The generator reported:

```text
frequency: signature byte-identical = True
frame_basic: signature byte-identical = True
Generated exact-design probes and 34 axiom checks in .lake/abi-scratch/P25Audit.lean
```

`nice -n 5 lake env lean .lake/abi-scratch/P25Audit.lean` — exit 0, no errors or warnings;
the two exact-design examples elaborated. The remainder of the probe was one
`#print axioms` for each theorem declared in Frame. Exact stdout:

```text
'KAM.Apost.FrameAux.norm_ofReal_vec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_tangentMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_linMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_transpose_le_two_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_sumVec_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.ofReal_eq_inv_mul_transpose_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_le_of_pointwise' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.le_norm_of_dio' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.two_mul_le_Theta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.mSize_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_tangentMat_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_transpose_tangentMat_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_inv_gramMatrix_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_normalMat_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_transpose_normalMat_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_frameMat_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_linMat_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_etaL_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_etaN_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.differentiableOn_invarianceError' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.differentiableOn_linMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.differentiableOn_frameMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.differentiableOn_normalFieldMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.differentiableOn_torsion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.differentiableOn_symDefect' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.differentiableOn_reducer' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.differentiableOn_eta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.transpose_inv_gramMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.continuous_torsion_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.arith_normalField' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_normalFieldMat_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.FrameAux.norm_torsion_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.frequency' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.frame_basic' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Only `[propext, Classical.choice, Quot.sound]` occurs, for every result and helper.
Provider exact-frozen-type probe: **N/A** — this is not a provider package; no frozen
anchor is sealed or used as a theorem input. The exact-design probes above are the
applicable checks. The handoff's kernel-replay claim was not independently repeated;
this report relies on the targeted Lake build and Lean elaboration/axiom checks.

## Findings, errata, and deviations

No blocking or major findings. No new suspected pinned-source erratum or mathematical
deviation was found. The source contract for this audit is the blueprint plus binding
design; this does not independently re-audit HL19's PDF.

1. **Minor — import DAG documentation.** Frame L10 imports `KAM.Apost.Tools`, whereas
   design §4 L367 lists Hamiltonian, Constants and Bridges for Frame. This is acceptable:
   the only explicit Tools use is `Tools.norm_fromCols_le_add` at Frame L215, the
   graph's permitted predecessor `bp:p2:matrix` / `step:p2:matrix-blocks` (Tools L65–70).
   Tools has no reverse path to Frame; the 44-module import closure is acyclic and
   has no provider or frozen-theorem imports. Proposed fix: update the design DAG's
   Frame row to include Tools. No proof change is needed.
2. **Minor — comparison provenance.** The required `git diff main...HEAD` reports multiple
   merge bases and includes inherited P2-4 and cohomological work. These are not new
   P2-5 changes. `git diff main HEAD -- KAM/Apost/Hamiltonian.lean
   KAM/Apost/Periodicity.lean KAM/Strip/Cohomological.lean` exits 0 with no output,
   confirming those inherited implementation files match current main. The package
   commits isolate Frame and the generated import. Proposed fix: retain this provenance
   qualification when landing; do not interpret the entire three-dot diff as P2-5 authorship.
3. **Minor — existing positivity clarification, already addressed.** Blueprint L358 says
   “on T_r with ε ≤ 1” and L383 says “satisfy (A2)–(A4)” without restating positive r/β.
   Binding design L5/F1 explicitly supplies those standing conventions; the code matches
   the design. Without them the frequency assumptions could be vacuous and A2 would not
   ensure domain membership. Proposed documentation fix, as already suggested by the
   design: make positive r/β explicit in a future blueprint wording pass. This is not a
   new premise introduced by the prover and is not a new source erratum.

Uncertainties: no unresolved package proof or signature issue. This audit certifies
these infrastructure nodes only; it does not certify later consumers, the full KAM
provider, or the global source correspondence outside this package.
