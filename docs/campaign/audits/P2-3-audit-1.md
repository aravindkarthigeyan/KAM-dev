# P2-3 independent package audit 1

Overall verdict: **PASS WITH NOTES** for the delivered, gate-limited package: matrix facts, averages and the literal componentwise operator definition. **The cohomological theorem is BLOCKED, not proved or certified.** No blocking or major finding was found in the delivered implementation.

Audit date: 2026-10-27. Independent of the prover. Focused source-correspondence audit (tier 2), with direct proof inspection, a second refutation pass, executable exact-signature and consumption probes, and axiom/hygiene checks. This report does not certify any frozen G1/G2 theorem or the entire KAM argument.

## Scope, authority and snapshot

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `AUDIT-PACKAGE.md`, `P2-3.md`, `P23-COMMON.md`, `PROVER-COMMON.md`, the handoff, the binding design, the graph contracts and their raw blueprint text. Applied the manuscript-audit and lean-statement-audit skills within the package audit's permission envelope. The audited declarations are infrastructure, not manifest-bound frozen exports; the provider-specific exact-type test is consequently **N/A**.

Frozen-v1 revision: `56acd991e324a9b9abfdf776a0e1c0d0605566e7`, branch `k/p2-3`. Comparison main: `7d7a4c59e2237131030aeb877c65cf16b85503df`.

`git diff --stat main...HEAD`:

```text
 KAM.lean             |   1 +
 KAM/Apost/Tools.lean | 287 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 288 insertions(+)
```

The root difference is the single generated import `public import KAM.Apost.Tools`; the generator's check passes. No implementation, source, frozen anchor, manifest, ledger or git history was changed during this audit. Only this report and the subsequently deleted scratch probe were written. The untracked handoff existed before the audit.

| Frozen-v1 input | SHA256 |
|---|---|
| `KAM/Apost/Tools.lean` | `9da9fa8a5ba40f7d4d22b6434095d63998220032a4c903eec00a671b595e0675` |
| `docs/campaign/design/PART23-LEAN-DESIGN.md` | `1b4bd7224e90844d78088822931f1d5e668dcc27cf5cd2351671da108985c125` |
| `blueprint/parts/p2-aposteriori.tex` | `c8fe335ca1f87390d803ffec36254804290f3962910284b9d7afd8fec3530f30` |
| `docs/graph/K/DEPGRAPH.md` | `5915d5df1622b42ff529fea0a38b7f3035ac5f56e86ac96080019e35c9e41957` |
| `docs/campaign/briefs/AUDIT-PACKAGE.md` | `76b821648f341c99cd6787211cf983e5e1f281aff186f9b9c0b252b8f9d0e275` |
| `docs/campaign/briefs/P2-3.md` | `f4afedd789a9086885e8492f5129a30f3f32c6ba2f3e2d051b0ec3cf3ea3c4ed` |
| `docs/campaign/audits/P2-3-handoff.md` | `903cba7f6ce6b4e7ceb83ceb25aa9a1c89bb783e7c91b55fd7edf0146752efa1` |
| `KAM/Strip/Averages.lean` | `309f39e38ccfc34c3db40e4a51f6316383d257c170e51f5c0010e12947c980ce` |
| `KAM/Strip/CohomologicalDefs.lean` | `545bcf5ebf74716bb2fe7ec0bd81f58a49190549d95e7e0b418ca90c70448ce1` |
| `KAM/Torus/Basic.lean` | `9781d3ef7054eb49d26609f49d57c5c725682887efda9cf476c65a76c76a8fa8` |
| `KAM/Matrix/Norms.lean` | `da4a42ca1020275c7af4f7b327d2abe549785f26b07e89e88301ef6ca557194f` |

Line references below refer to this snapshot. All Part 2 source locators are in `blueprint/parts/p2-aposteriori.tex`.

## Node ledger

`Tools` below expands to `KAM.Apost.Tools`; unqualified matrix and averaging infrastructure names expand to `KAM` unless explicitly prefixed with `Matrix`.

| Node | Lean declaration(s) | Verdict | Evidence / reason |
|---|---|---|---|
| `bp:p2:matrix` | `KAM.Apost.matrix_facts` (`Tools.lean:218–242`) | PASS | All four source clauses, L122–139. Literal Appendix A signature match, design L884–900; exact-type application elaborates. Row-sum operator norm, max vector norm, conformal finite index types. |
| `step:p2:matrix-op` | `KAM.isGreatest_norm_mulVec`, `KAM.norm_entry_le`; row-sum bridge `KAM.norm_eq_iSup_rowSum` | PASS | Source L142–144. Attainment is stronger than the requested supremum equality; every entry is bounded. No extra mathematical premise. |
| `step:p2:matrix-transpose` | `KAM.norm_transpose_le_card_mul`, `Matrix.linfty_opNorm_mul`, `Matrix.linfty_opNorm_mulVec` | PASS | Source L146–147; transpose factor is the number of rows of the original matrix, not columns. The last declaration supplements the abbreviated handoff mapping. |
| `step:p2:matrix-blocks` | `Tools.norm_fromCols_le_add`, `KAM.norm_fromBlocks_le`, `Tools.norm_fromBlocks_diagonal`; `KAM.omegaZeroMatrix_transpose`, `KAM.omegaZeroMatrix_mul_self`, `Tools.omegaZeroMatrix_transpose_mul_self`, `Tools.omegaZeroMatrix_inv`, `KAM.norm_omegaZeroMatrix`, `Tools.omegaZeroMatrix_mul_fromRows` | PASS | Source L149–155. Direct row-sum proof of blocks, then algebraic inverse/transpose and column action. All facts are assembled in `matrix_facts`; no extra premise about an inverse. |
| `bp:p2:averages` | `KAM.Apost.averages` (`Tools.lean:248–277`) | PASS | Source L158–167, all (a)/(b) claims. Literal Appendix A signature match, design L905–924; exact-type application elaborates. The Banach target generalization is stronger than source. |
| `step:p2:avg-bound` | `Tools.torusAverage_basic`, `Tools.torusAverage_vector_apply`, `Tools.im_integral_eq_zero`, `KAM.torusAverage_matrix_apply` | PASS | Source L170–173. Compact-cube integrability, integral linearity, coordinate evaluation, realness and volume-one norm bound. Periodicity is unnecessary for the cube bound; retaining it in the aggregate does not add a premise. |
| `step:p2:avg-deriv` | `Tools.torusAverage_fderiv_apply_eq_zero` | PASS | Source L175–179. Holomorphy implies regularity on the real torus; no boundedness, separability, derivative continuity or integrability premise is inserted in the public theorem. See the route and non-integrability checks below. |
| `step:p2:avg-deriv#real-route` | Scalar predecessor `KAM.torusAverage_complex_direction_eq_zero`, via `KAM.torusAverage_complex_coordinate_eq_zero`, `KAM.continuous_fderiv_real_of_holomorphic` and `KAM.torusAverage_coordinate_eq_zero`; lifted by `Tools.torusAverage_fderiv_apply_eq_zero` | PASS / selected | Graph L6280–6306, source L176–178. This is the selected route, with duality as an additional target-space adapter. |
| `step:p2:avg-deriv#bounded-route` | None needed | BYPASSED (alternative) | Graph L6308–6334, source “Alternatively … bounded on T_{r/2}”. The proof does not shrink the strip or invoke `periodic_bounded`. This is an alternative, not a missing conjunct. |
| `cohR` (definition attached to `bp:p2:cohomological`) | `KAM.Apost.cohR` (`Tools.lean:282–283`) | PASS as literal definition | Literal Appendix A body and signature; definitional componentwise equality verified by `rfl`. No equation, convergence or uniqueness theorem is certified by this row. |
| `bp:p2:cohomological` | Deliberately absent | BLOCKED / authorized omission | P2-3 gate requires I-STRIP-3. Neither `KAM.Apost.cohomological` nor a replacement assumed result is present. Source L186–198 remains unpaid. |
| `step:p2:coh-components` | No solution theorem | BLOCKED with parent | `cohR` supplies the formula only, not the analytic solution properties. |
| `step:p2:coh-apriori` | Only prerequisites `Tools.differentiableOn_fderiv_apply`, `Tools.isPeriodicOn_fderiv_apply`, and `averages` (b) | PARTIAL / blocked with parent | Source L207–211: regularity, periodicity and zero average are available. The inverse/cohomological a-priori estimate itself is not claimed. |

The graph's checked-in `NOT_STARTED` labels are bookkeeping at the snapshot, not evidence against the implementation. The orchestrator should apply the above mapping and mark the unused route according to D27; this audit does not edit graph status.

## Statement, premise and constant checks

Direct comparison was against the blueprint text, not just the handoff or Appendix A. The script separately compared the two theorem signatures through the `:=` boundary and the entire `cohR` declaration/body, giving:

```text
matrix_facts: True
averages: True
cohR: True
```

The probe also copied each Appendix A theorem signature and proved the resulting `example` by the corresponding package export. This detects hidden section parameters and elaboration-level signature drift.

The logical inputs expand as follows (SOURCE / STANDING / TYPING / RULED / EXCESS categories). No structures, instances carrying proof obligations, or Prop aliases conceal additional hypotheses.

| Declaration / clause | Expanded inputs | Classification and source |
|---|---|---|
| `matrix_facts` (a) | Index types `m`, `k`; their two `Fintype` instances; `A : Matrix m k ℂ` | TYPING, source L124–125. Arbitrary finite types generalize the dimension indices. |
| (b) | Index types `m`, `k`, `l`; their three `Fintype` instances; matrices `A`, `B`; vector `v` | TYPING, conformability in L126. |
| (c) | Index types `m₁`, `m₂`, `k₁`, `k₂`; their four `Fintype` instances; four blocks `A₁₁`, `A₁₂`, `A₂₁`, `A₂₂` | TYPING, source L127–132. No restriction on the blocks. |
| (d) | Dimension `n`; index type `q`; `Fintype q`; `U₁`, `U₂` | TYPING, source L133–137; `Fin n ⊕ Fin n` is design L1's canonical splitting. |
| (d), norm-one subclause | `0 < n` | STANDING convention: Part 2 fixes `n ≥ 2` (source L57, design §2.1); generalized theorem also covers `n = 0` for all other identities. The module's docstring advertises all finite index types. This prevents the false norm-one claim in dimension zero; it is not a new premise in any intended application. |
| `averages`, outer parameter | `n : ℕ` | TYPING. Generalizes the standing dimension range. |
| (a), target | `W`; `NormedAddCommGroup W`; `NormedSpace ℂ W`; `CompleteSpace W` | TYPING for a complex Banach target; strictly generalizes the finite-dimensional scalar/vector/matrix source carriers. |
| (a), functions | `f`, `g` | TYPING, two functions when stating linearity. |
| (a), regularity | `Continuous f`; `Continuous g` | SOURCE, L160 and the same class for sums. Continuity of a second summand is precisely its membership in the source class, not a hard proof step. |
| (a), periodicity | `∀ (i : Fin n) x, f (x + Pi.single i 1) = f x` | SOURCE, L160; unused because cube integral assertions hold more generally. Periodicity of `g` is not required: stronger result. |
| (a), scalar | `c : ℂ` | TYPING for complex linearity, L161. |
| (a), bound | `A : ℝ`; `∀ x ∈ [0,1]^n, ‖f x‖ ≤ A` | SOURCE equivalent pointwise formulation of the sup bound, L162 and design §1.4. No hidden dependence or chosen constant. |
| Matrix entrywise/realness clause | `p`, `q`; `f`; `Continuous f`; coordinates `i`, `j`; `(∀ x i j, (f x i j).im = 0)` | Dimensions/function/coordinates TYPING; continuity and realness SOURCE, L160–162. No periodicity required for these particular assertions: stronger result. |
| Vector entrywise/realness clause | `p`; `f`; `Continuous f`; coordinate `i`; `(∀ x i, (f x i).im = 0)` | Same classification; vectors are the stated source carrier. |
| (b), target | `W` and its three normed/Banach instances | TYPING, broader target class than source L163–164. No finite-dimensional or separability premise is added. |
| (b), strip/function/direction | `r : ℝ`; `v`; `ω : Fin n → ℝ`; coordinate `ℓ : Fin n` | TYPING, source L163–166. Real direction is the blueprint's `ω`; the helper permits all complex directions. |
| (b), width | `0 < r` | SOURCE / explicit standing strip convention, design L5 and graph `SOURCE_QUANTIFIERS`. |
| (b), analytic hypotheses | `DifferentiableOn ℂ v (complexStrip n r)`; `IsPeriodicOn v r` | SOURCE. Expanded periodicity is `∀ (i : Fin n) z, z ∈ complexStrip n r → v (z + Pi.single i 1) = v z`. |
| `cohR` | `n`, `p`; `ω`; `g` | TYPING; no theorem premise. Both component dimensions and the frequency are explicit arguments. |

EXCESS: **0**. RULED repairs of mathematical statements: **0**. No constants are chosen existentially in the delivered statements; the matrix factors and norm constants are literal, and `cohR` depends only on `ω` and `g`, with dimensions implicit. There is no wider dependence on strip widths, loss parameters, Hamiltonians or standing-data witnesses.

The two additional derivative helpers are honestly named prerequisites. `differentiableOn_fderiv_apply` assumes finite-dimensional target to use existing holomorphic regularity; it does not stand in for the cohomological estimate. `isPeriodicOn_fderiv_apply` needs only local equality on the open strip and translation invariance of `fderiv`; even at non-differentiability points this is a valid equality of total derivatives. Neither helper assumes its own conclusion or a missing Part 1 theorem.

## Derivative-average focus and refutation pass

At `Tools.lean:161–180`, the proof splits on integrability. The false branch uses `integral_undef hint`; the true branch uses `SeparatingDual.eq_zero_of_forall_dual_eq_zero` over ℂ. For each functional `φ`, holomorphy and periodicity of `φ ∘ v` follow from the corresponding source hypotheses, and the chain rule identifies its derivative with `φ` applied to the derivative of `v`. The Bochner integral commutes with `φ` under the produced integrability branch. Scalar zero average then implies the original average is zero.

The scalar predecessor is in `KAM/Strip/Averages.lean:199–217`. Its coordinate proof (L174–196) derives continuous differentiability of the real restriction, applies the real-coordinate average theorem, and that theorem uses Fubini and the fundamental theorem of calculus with periodic endpoints. Thus the graph's **real-route** is realized semantically and by the actual dependency chain. It is not the smaller bounded-strip route, and it assumes no extra C¹ hypothesis.

Refutation candidate: “the average vanishes only because a non-integrable derivative has default integral zero.” This does **not** survive on the blueprint's intended carriers. The final Lean probe proved, for every finite-dimensional complex normed target `W`, that holomorphy on a positive-width strip implies integrability on the cube of every constant directional derivative. It uses `FiniteDimensional.proper ℂ W`, `continuous_fderiv_real_of_holomorphic`, and `integrableOn_unitCube_of_continuous`; no periodicity or global bound is needed for this integrability fact. It was then instantiated with `W := Matrix (Fin p) (Fin q) ℂ`, and the package's matrix-valued average equality was directly consumed. Scalar and vector targets are covered by the same theorem. Therefore no source-relevant case can enter the non-integrable branch.

For arbitrary Banach `W`, the public theorem is an equality of Mathlib's total Bochner integrals. This package proof does not separately export a general integrability theorem. It makes no claim that the non-integrable branch establishes analytic regularity. This qualification does not weaken any source statement: source targets are finite-dimensional, and their integrability was checked independently.

Other attempted refutations:

- A weakened `Ω₀` norm statement at `n=0`: rejected on intended inputs because Part 2 fixes `n ≥ 2`; all other identities are extended to zero dimension, and no false zero-dimensional norm claim is made.
- Wrong matrix norm or transpose factor: rejected by the explicit operator norm scope, row-sum helper proofs, and original-row cardinality in the exact signature. No Euclidean norm enters.
- A missing `g` periodicity/continuity assumption in linearity: continuity of both functions is present; periodicity of the second is unnecessary for the stronger cube-integral theorem.
- Missing cohomological result hidden as a premise or an axiom: rejected by inspection of all 14 declarations, the omitted theorem, and their axiom lists.
- `cohR` replaced by an unrelated default-valued operator: rejected by literal body comparison and definitional equality, expanded below.

These are the auditor's second-pass challenges, independent of the prover's rationale; no additional reviewer or subagent was used.

## Definition classification

There is exactly **one** new definition, **zero** new abbrevs and **zero** new structures in the branch's implementation: `KAM.Apost.cohR`.

```lean
def cohR {n p : ℕ} (ω : Fin n → ℝ) (g : (Fin n → ℂ) → Fin p → ℂ) :
    (Fin n → ℂ) → Fin p → ℂ :=
  fun θ i => cohSolution ω (fun θ' => g θ' i) θ
```

Classification: **literal, explicit componentwise Fourier construction**, design §2.4 and Appendix A L926–928. Expanding the unchanged predecessor `cohSolution` gives the Fourier sum with coefficients `Diophantine.solve ω (torusCoeff (gᵢ ∘ ofReal))`; `solve` is zero at index zero and otherwise divides by `2πi (k·ω)`. The character is `exp(2πi k·θ)`; the coefficient uses `character (-k)`. This preserves period one and the positive `∂_ω` convention. No strip-dependent selection, classical chosen solution, invented witness, additional branch or new fallback occurs in `cohR`.

The inherited total Fourier sum/division/integral conventions on non-admissible inputs are the explicit total construction required by design §0.4/§2.4 and blueprint totality conventions. They are not being used to certify an analytic solution on those inputs. In particular, analytic convergence, uniqueness and equation satisfaction remain obligations of I-STRIP-3 and the absent Part 2 corollary. This is a definition audit, not a passed characterization/closure audit of that absent theorem.

```text
BODY_MATCH: OK
PUBLIC_CARRIER: OK (explicit total construction required by the design)
WELL_DEFINEDNESS: N/A_LITERAL (total Fourier expression, no analytic solution claim)
CHARACTERIZATION: N/A_LITERAL (cohomological properties remain BLOCKED)
CHOICE_INDEPENDENCE: N/A
DEFINITION_VERDICT: PASS
```

The relevant unchanged meanings were also inspected: `avg` is the torus average of the real restriction, `torusAverage` is the integral on `[0,1]^n` with volume one, `IsPeriodicOn` is coordinatewise period one, and `omegaZeroMatrix` is the canonical block matrix `(0 -I; I 0)`. No assumption bundles occur in the delivered theorem types.

## Verification and hygiene

All commands were run in `/root/code/KAM-w-p2-3`, with at most one Lean build/check running at a time and `nice -n 5` on each explicit Lake command. No library clean, dependency update, resource override or broad rebuild was requested.

1. `nice -n 5 lake build KAM.Apost.Tools` — exit **0**, exact output:

   ```text
   Build completed successfully (2895 jobs).
   ```

   This is the targeted build; the job count is Lake's dependency graph count, not a claim that all those modules were recompiled.

2. `sh scripts/lint_sources.sh` — exit **0**, exact output:

   ```text
   check_lean_modules: PASS (219 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

3. `git diff main...HEAD -- KAM/Frozen manifest` — exit **0**, empty output. Also `git diff --quiet main...HEAD -- KAM/Frozen manifest` — exit **0**. Frozen files and manifest are untouched.

4. `git diff --check main...HEAD` — exit **0**, empty output.

5. `python3 -I scripts/gen_root_imports.py --check` — exit **0**, empty output. The generated root import is consistent.

6. `rg -n 'sorry|admit|axiom|unsafe|opaque|set_option|EuclideanSpace' KAM/Apost/Tools.lean` — **no matches** (rg exit 1). `wc -l KAM/Apost/Tools.lean` — `287`. Header, `module`, public interface imports, module docstring and exposed public noncomputable section are present. No frozen theorem/provider is imported; all transitive proof dependencies pass axiom checks. Providers are not part of this package.

7. `nice -n 5 lake env lean .lake/abi-scratch/P23Audit1.lean` — final exit **0**, only the following output:

```text
'KAM.Apost.Tools.norm_fromCols_le_add' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Tools.norm_fromBlocks_diagonal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Tools.omegaZeroMatrix_transpose_mul_self' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Tools.omegaZeroMatrix_inv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Tools.omegaZeroMatrix_mul_fromRows' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Tools.im_integral_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Tools.torusAverage_basic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Tools.torusAverage_vector_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Tools.torusAverage_fderiv_apply_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Tools.differentiableOn_fderiv_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Tools.isPeriodicOn_fderiv_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.matrix_facts' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.averages' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.cohR' depends on axioms: [propext, Classical.choice, Quot.sound]
```

All **13 theorem results and the definition** have only the three permitted foundational axioms, with no `sorryAx` or custom axiom. The final probe's exact-type, definition and integrability/consumption checks have no errors or warnings.

Earlier scratch-only attempts failed because the probe omitted `open Matrix` / a noncomputable section and attempted direct concrete `SecondCountableTopology (Matrix …)` instance synthesis. Adding a local `ProperSpace` to that concrete query still did not synthesize it. The final probe instead establishes integrability at a generic finite-dimensional normed target and instantiates the theorem at matrices with an inferred conclusion, respecting the design's matrix-instance warning (§1.4). None of those failed scratch attempts changed a package statement or source file. The successful probe is reproduced below so that the correction and final evidence are reviewable.

## Findings, notes and disposition

No blocking, major or minor correctness finding remains in the delivered code. No suspected pinned-source erratum was identified; no repair/deviation was introduced by this audit.

| Item | Severity / disposition | Evidence and proposed follow-up |
|---|---|---|
| N1: gated theorem absent | Scope note, not a defect | P2-3 brief explicitly says “leave `cohomological` out of the module” if I-STRIP-3 is absent. Keep `bp:p2:cohomological`, `step:p2:coh-components` and the actual a-priori estimate blocked; reassign after the required interface theorem lands. Do not mark the full three-node package mathematically closed. |
| N2: route mapping | Minor bookkeeping note | Selected real-route traced above; bounded-route is an alternative. Update graph statuses/mappings through the orchestrator under D27. Include `Matrix.linfty_opNorm_mulVec` in the transpose/products mapping and the base `KAM` matrix lemmas in the block mapping. No code repair is needed. |
| N3: general Banach semantics | Nonblocking explanatory note | `integral_undef` appears at `Tools.lean:166`, but finite-dimensional source inputs have integrable derivatives, as independently elaborated. No consumer-relevant source case depends on a junk average. Keep this distinction visible if later claiming Banach-valued integrability from the average equality alone. |

Closeout: all handoff nodes and both derivative routes classified; every new definition classified; both delivered aggregate statements source-checked and exact-type tested; package proof and axiom closure checked; lint and targeted build pass; frozen/manifest unchanged; no implementation repair performed. **This report accepts the permitted partial delivery, not I-STRIP-3, the absent cohomological corollary, or frozen theorem closure.** Published HL19/GJLV05 PDFs and unrelated predecessor proofs were not independently re-audited; the requested immediate authority here is the pinned local blueprint and binding design.

## Reproducible successful probe

The scratch file was deleted after the final successful check. To reproduce, put the following in `.lake/abi-scratch/P23Audit1.lean`, run the command above serially, then delete that file. It is audit evidence, not a proposed repository module.

```lean
import KAM.Apost.Tools
open scoped Matrix.Norms.Operator
open MeasureTheory KAM KAM.Torus Matrix
noncomputable section
#print axioms KAM.Apost.Tools.norm_fromCols_le_add
#print axioms KAM.Apost.Tools.norm_fromBlocks_diagonal
#print axioms KAM.Apost.Tools.omegaZeroMatrix_transpose_mul_self
#print axioms KAM.Apost.Tools.omegaZeroMatrix_inv
#print axioms KAM.Apost.Tools.omegaZeroMatrix_mul_fromRows
#print axioms KAM.Apost.Tools.im_integral_eq_zero
#print axioms KAM.Apost.Tools.torusAverage_basic
#print axioms KAM.Apost.Tools.torusAverage_vector_apply
#print axioms KAM.Apost.Tools.torusAverage_fderiv_apply_eq_zero
#print axioms KAM.Apost.Tools.differentiableOn_fderiv_apply
#print axioms KAM.Apost.Tools.isPeriodicOn_fderiv_apply
#print axioms KAM.Apost.matrix_facts
#print axioms KAM.Apost.averages
#print axioms KAM.Apost.cohR
example :
    (∀ {m k : Type} [Fintype m] [Fintype k] (A : Matrix m k ℂ),
      (∀ i j, ‖A i j‖ ≤ ‖A‖) ∧
      IsGreatest ((fun v : k → ℂ => ‖A *ᵥ v‖) '' Metric.closedBall 0 1) ‖A‖ ∧
      ‖Aᵀ‖ ≤ Fintype.card m * ‖A‖) ∧
    (∀ {m k l : Type} [Fintype m] [Fintype k] [Fintype l] (A : Matrix m k ℂ) (B : Matrix k l ℂ)
      (v : k → ℂ), ‖A * B‖ ≤ ‖A‖ * ‖B‖ ∧ ‖A *ᵥ v‖ ≤ ‖A‖ * ‖v‖) ∧
    (∀ {m₁ m₂ k₁ k₂ : Type} [Fintype m₁] [Fintype m₂] [Fintype k₁] [Fintype k₂]
      (A₁₁ : Matrix m₁ k₁ ℂ) (A₁₂ : Matrix m₁ k₂ ℂ) (A₂₁ : Matrix m₂ k₁ ℂ) (A₂₂ : Matrix m₂ k₂ ℂ),
      ‖Matrix.fromCols A₁₁ A₁₂‖ ≤ ‖A₁₁‖ + ‖A₁₂‖ ∧
      ‖Matrix.fromBlocks A₁₁ A₁₂ A₂₁ A₂₂‖ ≤ max (‖A₁₁‖ + ‖A₁₂‖) (‖A₂₁‖ + ‖A₂₂‖) ∧
      ‖Matrix.fromBlocks A₁₁ 0 0 A₂₂‖ = max ‖A₁₁‖ ‖A₂₂‖) ∧
    (∀ n : ℕ, (omegaZeroMatrix n)ᵀ = -omegaZeroMatrix n ∧
      omegaZeroMatrix n * omegaZeroMatrix n = -1 ∧ (omegaZeroMatrix n)ᵀ * omegaZeroMatrix n = 1 ∧
      (omegaZeroMatrix n)⁻¹ = (omegaZeroMatrix n)ᵀ ∧ (0 < n → ‖omegaZeroMatrix n‖ = 1) ∧
      ∀ {q : Type} [Fintype q] (U₁ U₂ : Matrix (Fin n) q ℂ),
        omegaZeroMatrix n * Matrix.fromRows U₁ U₂ = Matrix.fromRows (-U₂) U₁)  := KAM.Apost.matrix_facts
example {n : ℕ} :
    (∀ {W : Type} [NormedAddCommGroup W] [NormedSpace ℂ W] [CompleteSpace W]
      (f g : (Fin n → ℝ) → W), Continuous f → Continuous g →
      (∀ (i : Fin n) x, f (x + Pi.single i 1) = f x) →
      IntegrableOn f (Set.pi Set.univ fun _ => Set.Icc (0 : ℝ) 1) ∧
      torusAverage (f + g) = torusAverage f + torusAverage g ∧
      (∀ c : ℂ, torusAverage (c • f) = c • torusAverage f) ∧
      ∀ A, (∀ x ∈ Set.pi Set.univ (fun _ => Set.Icc (0 : ℝ) 1), ‖f x‖ ≤ A) →
        ‖torusAverage f‖ ≤ A) ∧
    (∀ {p q : ℕ} (f : (Fin n → ℝ) → Matrix (Fin p) (Fin q) ℂ), Continuous f →
      (∀ i j, torusAverage f i j = ∫ x in Set.pi Set.univ (fun _ => Set.Icc (0 : ℝ) 1), f x i j) ∧
      ((∀ x i j, (f x i j).im = 0) → ∀ i j, (torusAverage f i j).im = 0)) ∧
    (∀ {p : ℕ} (f : (Fin n → ℝ) → Fin p → ℂ), Continuous f →
      (∀ i, torusAverage f i = ∫ x in Set.pi Set.univ (fun _ => Set.Icc (0 : ℝ) 1), f x i) ∧
      ((∀ x i, (f x i).im = 0) → ∀ i, (torusAverage f i).im = 0)) ∧
    (∀ {W : Type} [NormedAddCommGroup W] [NormedSpace ℂ W] [CompleteSpace W]
      {r : ℝ} (v : (Fin n → ℂ) → W) (ω : Fin n → ℝ), 0 < r →
      DifferentiableOn ℂ v (complexStrip n r) → IsPeriodicOn v r →
      (∀ ℓ : Fin n, avg (fun θ => fderiv ℂ v θ (Pi.single ℓ 1)) = 0) ∧
      avg (fun θ => fderiv ℂ v θ (fun l => (ω l : ℂ))) = 0)  := KAM.Apost.averages

example {n p : ℕ} (ω : Fin n → ℝ) (g : (Fin n → ℂ) → Fin p → ℂ) :
    KAM.Apost.cohR ω g = fun θ i => KAM.cohSolution ω (fun z => g z i) θ := rfl

-- Integrability on every source-relevant codomain, without any boundedness premise.
example {n : ℕ} {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W]
    [CompleteSpace W] [SecondCountableTopology W] {r : ℝ} (hr : 0 < r)
    {v : (Fin n → ℂ) → W} (hv : DifferentiableOn ℂ v (complexStrip n r))
    (ω : Fin n → ℂ) :
    IntegrableOn (fun x : Fin n → ℝ => fderiv ℂ v (fun i => (x i : ℂ)) ω)
      (Set.pi Set.univ fun _ => Set.Icc (0 : ℝ) 1) := by
  exact integrableOn_unitCube_of_continuous
    ((continuous_fderiv_real_of_holomorphic hr hv).clm_apply continuous_const)

example {p q : ℕ} : CompleteSpace (Matrix (Fin p) (Fin q) ℂ) := inferInstance
example {p q : ℕ} : NormedSpace ℂ (Matrix (Fin p) (Fin q) ℂ) := inferInstance
example {p : ℕ} : SecondCountableTopology (Fin p → ℂ) := inferInstance

-- Finite dimensionality discharges all analytic regularity and integrability inputs.
theorem auditDerivativeIntegrable {n : ℕ} {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W]
    [FiniteDimensional ℂ W] {r : ℝ} (hr : 0 < r)
    {v : (Fin n → ℂ) → W} (hv : DifferentiableOn ℂ v (complexStrip n r))
    (ω : Fin n → ℂ) :
    IntegrableOn (fun x : Fin n → ℝ => fderiv ℂ v (fun i => (x i : ℂ)) ω)
      (Set.pi Set.univ fun _ => Set.Icc (0 : ℝ) 1) := by
  have : ProperSpace W := FiniteDimensional.proper ℂ W
  exact integrableOn_unitCube_of_continuous
    ((continuous_fderiv_real_of_holomorphic hr hv).clm_apply continuous_const)

example {n p q : ℕ} {r : ℝ} (hr : 0 < r)
    {v : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ}
    (hv : DifferentiableOn ℂ v (complexStrip n r)) (hp : IsPeriodicOn v r)
    (ω : Fin n → ℝ) :
    avg (fun θ => fderiv ℂ v θ (fun l => (ω l : ℂ))) = 0 := by
  have hi := auditDerivativeIntegrable (W := Matrix (Fin p) (Fin q) ℂ) hr hv
    (fun l => (ω l : ℂ))
  have hzero := (KAM.Apost.averages (n := n)).2.2.2 v ω hr hv hp
  exact hzero.2
```
