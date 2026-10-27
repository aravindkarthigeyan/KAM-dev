# I-P1C independent audit 1

**Overall verdict: PASS WITH NOTES.** Both result nodes and all four substantive steps are proved with the required constants. No blocking finding, extra analytic premise, forbidden axiom, or source-statement defect was found. Matrix consumers need explicit instance management; merely opening the operator-norm scope does not suffice. This is an integration requirement, not a gap in the generic estimates.

Audited snapshot: branch `k/p1c`, HEAD `92516f2cb7428a78aa8f41c553cb3b11180f02e3`; comparison main `52e99b94c4391b6ced6e62ed936d7501bcae121d`. Date: 2026-10-27. Read AGENTS.md, PLAN.md, DECISIONS.md, AUDIT-PACKAGE.md, PROVER-COMMON.md, I-P1C.md, the supplied handoff, the six graph records, raw blueprint statements/proofs, and the Part 2/3 design. Used the statement-audit skill's source reconstruction, expanded-binder, and carrier checks. These are infrastructure nodes, with no manifest-owned frozen export or provider; frozen-provider exact-type checks are **N/A**.

Only this report was added. Temporary probes were placed in `.lake/abi-scratch/` and removed. The pre-existing untracked `I-P1C-handoff.md` was preserved. No state-changing git command was used.

## Node-by-node verdicts

| Node | Lean declaration and locator | Verdict | Reason |
|---|---|---|---|
| bp:p1:taylor | `KAM.taylor`, KAM/Strip/Taylor.lean:177; `KAM.taylor_iteratedFDeriv`, :186 | PASS | Matches p1-analysis.tex:436–439, including **A/2**, squared norm and the whole real segment. General finite-dimensional normed domain includes the source max-norm domain and pair carrier. The iterated-derivative version directly accepts source D²F bounds. |
| step:p1:tay-lipschitz | `KAM.taylor_lipschitz`, Taylor.lean:148 | PASS | Matches :442–445 for every real t in [0,1]. Derivative holomorphy is proved through Regularity, not assumed in this export. The smaller segment is proved contained in the original segment. |
| step:p1:tay-integrate | `KAM.taylor_integrate`, Taylor.lean:162 | PASS WITH NOTES | Proves the stronger all-t remainder bound (A/2)t²‖w‖². At t=1 it gives exactly the source's final estimate (:447–451). Uses differential comparison instead of explicit integration; no integral identity is claimed as a Lean export. |
| bp:p1:increments | `KAM.increments`, KAM/Strip/Increments.lean:123 | PASS | Matches :551–555 under the campaign's pointwise-sup convention. Quantifies over every derivative bound B and every value bound A, with exact constant nδ⁻¹. No periodicity, completeness or boundedness is assumed for the first assertion. |
| step:p1:inc-mvt | `KAM.increments_mvt`, Increments.lean:76 | PASS | Matches :558–561 with the pointwise bound B. Proves strip convexity and segment containment, then applies increments_open. |
| step:p1:inc-cauchy | `KAM.increments_cauchy`, Increments.lean:90 | PASS | Matches :563–565 as a pointwise operator bound nδ⁻¹A. Uses the already proved stronger A/δ Cauchy bound for n≥1; separately proves derivative zero for n=0. |

No additional existential constants occur: A, B, radii, base points, increments and t remain universally quantified at their stated scopes. The design contains no separate mandatory I-P1C signature; its requested names, pointwise norms and exact factor 1/2 are supplied. In particular, design :510–513 explicitly recommends the differential-comparison route used here.

## Answers to the four audit questions

1. **Exact or stronger:** yes, under the explicitly adopted pointwise-sup encoding (PROVER-COMMON.md and PART23-LEAN-DESIGN.md §1.4). `taylor_iteratedFDeriv` gives the exact source second-derivative hypothesis. The generalized target assumptions hold for every source finite-dimensional W. Removing δ<ρ and allowing all n is a valid extension. For n≥1, either endpoint's inner-strip membership implies ρ−δ>0, so δ<ρ was redundant. For n=0 membership does not imply positivity, but every increment is zero and the code handles it correctly. “Strictly stronger” should be understood as the enlarged signature; on the intended nonzero dimensions it removes a redundant premise. Universal pointwise bounds faithfully encode the finite sup cases; the source's infinite derivative-sup case imposes no finite estimate. The separate Cauchy step supplies the intermediate derivative bound as well as the final increment estimate.

2. **Target assumptions and D²F:** `CompleteSpace W` and `SecondCountableTopology W` are consequences of the source's finite-dimensional complex normed W convention (p1-analysis.tex:26–32), so they are not excess source hypotheses. E is finite-dimensional, not required to be literally a Pi carrier; the original max-norm domains are included. The nested continuous-linear-map operator norm is exactly the bilinear norm, with no dimension factor. Independently compiled the identity
   `‖fderiv ℂ (fderiv ℂ F) x‖ = ‖iteratedFDeriv ℂ 2 F x‖`
   by `norm_iteratedFDeriv_one` and `norm_iteratedFDeriv_fderiv`. The latter identity is actually used in Taylor.lean:190–192. Conditional `_of_differentiableOn_fderiv` helpers have a distinct, explicit hDF premise; the source exports discharge it from holomorphy using Regularity. They do not replace that proof obligation by a source assumption.

3. **Route substitution:** acceptable. Taylor.lean:84–120 constructs g, proves its real derivative on the segment, bounds that derivative by At‖w‖², differentiates B(t)=(A/2)t²‖w‖², and invokes `image_norm_le_of_norm_deriv_right_le_deriv_boundary`. The resulting inequality proves the step's required bound, and even all intermediate t. Neither the scalar integral evaluation nor an explicit vector-valued FTC identity is exported. This is a documented alternative proof, consistent with D27 and expressly anticipated by the consumer design. Keep tay-integrate mapped to the proved inequality; do not mark this whole step BYPASSED, because its mathematical bound is proved and used. The literal E6 integration route is the part replaced.

4. **Consumers:** pair-to-pair Taylor with an `iteratedFDeriv` hypothesis and pair-valued increments both compile at arbitrary n with the usual max norm. Matrix-valued applications also compile at arbitrary n,p,q with explicitly selected `Matrix.linftyOpNormedAddCommGroup` and `Matrix.linftyOpNormedSpace`, plus an explicit proper-space second-countability witness for Taylor. The successful probe additionally checks `Matrix.linfty_opNorm_def`, ensuring the target norm is the row-sum norm. The scope-only interface has a reproducible instance problem: `#synth Norm ((Fin 2 → ℂ) →L[ℂ] Matrix (Fin 2) (Fin 3) ℂ)` and `#synth SecondCountableTopology (Matrix (Fin 2) (Fin 3) ℂ)` fail. Thus mathematical applicability is confirmed, while automatic consumer elaboration from `open scoped Matrix.Norms.Operator` alone is **not** certified. Explicit instance setup is needed; no unproved mathematical bridge or norm change is needed.

## Expanded binder audit

SOURCE = literal source premise/parameter restriction; STANDING = consequence of the finite-dimensional source convention; TYPING = ambient type formation or universally quantified data. RULED and EXCESS counts are zero for all six node exports. No bundled assumption structures or hidden project-owned classes occur.

The following table expands every binder of `taylor`; the same list applies to `taylor_iteratedFDeriv`, replacing hA's nested derivative with the bilinear one. It also applies to the two source Taylor steps with the two extra rows indicated below. Rows listing separate indexed instances refer to their respective carrier, not a shared additional assumption.

| Binder | Bin | Source/justification |
|---|---|---|
| E : Type* | TYPING | Domain carrier; source C^m embeds in this generality. |
| NormedAddCommGroup E | TYPING | Source normed domain, p1 :29–32. |
| NormedSpace ℂ E | TYPING | Complex domain, p1 :29–32. |
| FiniteDimensional ℂ E | STANDING | Source domain C^m. |
| W : Type* | TYPING | Target carrier, p1 :26. |
| NormedAddCommGroup W | TYPING | Source normed target, p1 :26–28. |
| NormedSpace ℂ W | TYPING | Complex target, p1 :26–28. |
| CompleteSpace W | STANDING | Consequence of finite-dimensional complex normed target. |
| SecondCountableTopology W | STANDING | Same finite-dimensional convention. |
| U : Set E | TYPING | Source domain parameter, :437. |
| hU : IsOpen U | SOURCE | Open U, :437. |
| F : E → W | TYPING | Source map, :437. |
| hF : DifferentiableOn ℂ F U | SOURCE | Holomorphic F, :437; convention :29–30. |
| A : ℝ | TYPING | Arbitrary source bound, :437. |
| hA : ∀ x ∈ U, ‖D(DF)(x)‖ ≤ A | SOURCE | Second derivative bound, :437; norm equality :443. |
| z : E | TYPING | Base point, :437. |
| w : E | TYPING | Increment, :437. |
| hseg : segment ℝ z (z+w) ⊆ U | SOURCE | Whole-segment condition, :437. |
| t : ℝ (steps only) | TYPING | Segment parameter, :444–450. |
| ht : t ∈ Icc 0 1 (steps only) | SOURCE | Parameter range, :444. |

Counts per taylor / taylor_iteratedFDeriv: SOURCE 4, STANDING 3, TYPING 11, RULED 0, EXCESS 0. Per Taylor step: SOURCE 5, STANDING 3, TYPING 12, RULED 0, EXCESS 0.

The next table expands `increments`, including the universally quantified bounds inside its conclusion. For `increments_mvt`, retain B/hB only. For `increments_cauchy`, retain A/hA, replace θ,v,hθ,hθv by x and hx in the output pointwise assertion. All omitted width/n restrictions weaken premises rather than add any.

| Binder | Bin | Source/justification |
|---|---|---|
| n : ℕ | TYPING | Strip dimension; extends source n≥1 convention, p1 :36–37. |
| W : Type* | TYPING | Source target, p1 :26–28; generalized to arbitrary normed W. |
| NormedAddCommGroup W | TYPING | Normed target, p1 :26. |
| NormedSpace ℂ W | TYPING | Complex target, p1 :26. |
| ρ : ℝ | TYPING | Outer width, :552. |
| δ : ℝ | TYPING | Width loss, :552. |
| u : (Fin n → ℂ) → W | TYPING | Source strip map, :552. |
| hu : DifferentiableOn ℂ u (complexStrip n ρ) | SOURCE | Holomorphy, :552. |
| hδ : 0 < δ | SOURCE | Positive loss, :552. |
| θ : Fin n → ℂ | TYPING | Source base point, :552. |
| v : Fin n → ℂ | TYPING | Source increment, :552. |
| hθ : θ ∈ complexStrip n (ρ−δ) | SOURCE | First endpoint, :552. |
| hθv : θ+v ∈ complexStrip n (ρ−δ) | SOURCE | Second endpoint, :552. |
| B : ℝ | TYPING | Arbitrary derivative sup bound, :553, :559–561; pointwise convention. |
| hB : ∀ x ∈ complexStrip n (ρ−δ), ‖Du(x)‖ ≤ B | SOURCE | Pointwise encoding of derivative sup bound, same references. |
| A : ℝ | TYPING | Arbitrary value sup bound, :554–555, :564–565. |
| hA : ∀ x ∈ complexStrip n ρ, ‖u(x)‖ ≤ A | SOURCE | Pointwise encoding of boundedness, same references. |
| x : Fin n → ℂ (Cauchy output only) | TYPING | Pointwise evaluation of sup derivative bound. |
| hx : x ∈ complexStrip n (ρ−δ) (Cauchy output only) | SOURCE | Domain of derivative bound, :565. |

Counts: increments SOURCE 6, TYPING 11; increments_mvt SOURCE 5, TYPING 10; increments_cauchy SOURCE 4, TYPING 9. STANDING, RULED, EXCESS are zero in each of these three.

The private helpers add no analytic assumptions: `add_smul_mem_segment` has only real-module typing data, z,w,t and t∈[0,1]; `segment_subset_complexStrip` has n,r,θ,η and the two source memberships; `complexStrip_sub_subset` has n,ρ,δ and δ≥0. The three conditional Taylor helpers share the corresponding ambient/data binders without finite-dimensionality/completeness/second-countability and explicitly assume hDF. Relative to the source root that hDF would be EXCESS; these are correctly named conditional lemmas, not source-node substitutes. All three unconditional exports produce hDF internally. The Lipschitz conditional helper needs only hDF, not hF, because it estimates DF directly.

## Definition classification and proof dependencies

There are **no new def, abbrev or structure declarations** in either added module. Thus no new choice construction, junk value, default branch, or globally advertised partial object is introduced. BODY_MATCH, PUBLIC_CARRIER, WELL_DEFINEDNESS, CHARACTERIZATION and CHOICE_INDEPENDENCE for new definitions are N/A; definition review is PASS (empty inventory).

The only project-owned definition in these theorem types is the existing frozen `KAM.complexStrip` (KAM/Frozen/Defs/ComplexStrip.lean:24–25): `{θ | ∀ i, |(θ i).im| < ρ}`. BODY_MATCH: OK; PUBLIC_CARRIER: OK; WELL_DEFINEDNESS: N/A_LITERAL; CHARACTERIZATION: N/A_LITERAL; CHOICE_INDEPENDENCE: N/A; DEFINITION_VERDICT: PASS. At n=0 it is univ for every width, an honest consequence of the literal formula, not a fabricated fallback. For intended positive dimensions/widths it is exactly the source strip. The frozen guard and ABI checks pass.

Local `let g` is the literal Taylor remainder on the real line. fderiv's standard totalization is never used to fake a derivative at a source point: holomorphy and openness establish differentiability there, and Regularity supplies differentiability of DF. Outside-U derivative values are unused. No bound or regularity fact is hidden in an instance or conclusion-shaped hypothesis.

Inspected predecessor use: Taylor calls `increments_open` and `differentiableOn_fderiv_of_isOpen`; increments calls `increments_open` and `norm_fderiv_le_of_mem_complexStrip`. Their statements and relevant proofs in Limits, Regularity and Cauchy have the required hypotheses, norms and carriers. There is no import of a provider or frozen theorem. The numerical Cauchy weakening uses A≥0 derived at an actual point, not a new premise. The n=0 branch uses subsingleton-domain linearity.

## Findings and proposed fixes

1. **Major integration note, nonblocking for I-P1C — scope-only matrix consumer setup is insufficient.** Evidence: design :114–120 prescribes opening `Matrix.Norms.Operator`; the two failed `#synth` checks in audit question 4 reproduce the handoff's derivative-norm warning and also reveal second-countability synthesis failure. The underlying finite-dimensional matrix spaces satisfy all requirements, and the explicit-instance application probe below succeeds, preserving the row-sum norm. Proposed fix in the downstream carrier/calculus package: install coherent row-sum normed-group/normed-space instances and a second-countability witness, and verify actual matrix derivative applications. Do not substitute the entrywise max norm. A direct bare `#synth Norm` can still fail even after local normed-space declarations, so test the actual application or pass its instances explicitly.

2. **Minor documentation error — zero-dimensional strip positivity.** Increments.lean:38–39 says “θ ∈ T_{ρ−δ} already forces ρ−δ > 0.” The theorem quantifies over n=0 too, where the coordinatewise condition is vacuous (e.g. ρ=0, δ=1). Proposed fix: qualify that sentence by n≥1, and mention that the proof handles n=0 separately. No theorem or proof repair is needed.

3. **Minor provenance note — alternative integration route.** The graph's tay-integrate record still names E6 and all six nodes are NOT_STARTED. Record the differential-comparison route and the audited declaration mapping when the orchestrator updates graph status. The numeric step is proved; this report does not change the graph. The design already authorizes the suggested route mathematically.

Suspected pinned-source errata: **none identified in this scope**. No external PDF claim is being certified. Deviations to record: generalized normed carriers/targets, omitted redundant δ<ρ and added valid n=0 case, pointwise-sup reformulation, differential comparison in place of integration, and stronger A/δ predecessor weakened to nA/δ. No deviations were introduced by the auditor into code.

## Hygiene and independently rerun checks

Commands were run serially for every Lean/build invocation, with no resource override, no clean and no dependency rebuild request.

```text
$ git diff --name-status main...HEAD
M KAM.lean
A KAM/Strip/Increments.lean
A KAM/Strip/Taylor.lean
$ git diff main...HEAD -- KAM/Frozen manifest
(no output; exit 0)
$ git diff --check main...HEAD
(no output; exit 0)
$ wc -l KAM/Strip/Taylor.lean KAM/Strip/Increments.lean
  196 KAM/Strip/Taylor.lean
  133 KAM/Strip/Increments.lean
  329 total
$ nice -n 5 lake build KAM.Strip.Taylor KAM.Strip.Increments
Build completed successfully (2848 jobs).
(exit 0; one targeted invocation)
$ sh scripts/lint_sources.sh
check_lean_modules: PASS (203 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
(exit 0)
```

The exact scoped forbidden-token/import scan was:

```sh
rg -n '\b(def|abbrev|structure|sorry|admit|axiom|unsafe|opaque|set_option|EuclideanSpace)\b|^([a-z]+ )?import KAM\.(Provider|Frozen\.Theorems)' KAM/Strip/Taylor.lean KAM/Strip/Increments.lean
```

No output (rg exit 1 = no matches). Both files have copyright, module, public imports, module docstring and exposed public section. No file exceeds 1500 lines; the repository lint also checks this globally. The root diff is exactly the two generated imports and `gen_root_imports.py --check` passes inside lint. README is unchanged. No frozen/provider exact-type probe is applicable.

### Positive axiom, pair-carrier and derivative-norm probe

```sh
nice -n 5 lake env lean .lake/abi-scratch/I_P1C_audit.lean
```

Exit 0. Source (reproducible after recreating the deleted scratch file):

```lean
import KAM.Strip.Taylor
import KAM.Strip.Increments
import KAM.Matrix.Norms
open Set
#print axioms KAM.taylor_lipschitz_of_differentiableOn_fderiv
#print axioms KAM.taylor_integrate_of_differentiableOn_fderiv
#print axioms KAM.taylor_of_differentiableOn_fderiv
#print axioms KAM.taylor_lipschitz
#print axioms KAM.taylor_integrate
#print axioms KAM.taylor
#print axioms KAM.taylor_iteratedFDeriv
#print axioms KAM.increments_mvt
#print axioms KAM.increments_cauchy
#print axioms KAM.increments
example {n : ℕ} {U : Set ((Fin n → ℂ) × (Fin n → ℂ))}
    (hU : IsOpen U) {F : ((Fin n → ℂ) × (Fin n → ℂ)) → ((Fin n → ℂ) × (Fin n → ℂ))}
    (hF : DifferentiableOn ℂ F U) {A : ℝ}
    (hA : ∀ x ∈ U, ‖iteratedFDeriv ℂ 2 F x‖ ≤ A)
    {z w : (Fin n → ℂ) × (Fin n → ℂ)}
    (hseg : segment ℝ z (z+w) ⊆ U) :
    ‖F (z+w) - F z - fderiv ℂ F z w‖ ≤ A / 2 * ‖w‖^2 :=
  KAM.taylor_iteratedFDeriv hU hF hA hseg
example {n : ℕ} {ρ δ : ℝ}
    {u : (Fin n → ℂ) → ((Fin n → ℂ) × (Fin n → ℂ))}
    (hu : DifferentiableOn ℂ u (KAM.complexStrip n ρ)) (hδ : 0 < δ)
    {θ v : Fin n → ℂ} (hθ : θ ∈ KAM.complexStrip n (ρ-δ))
    (hθv : θ+v ∈ KAM.complexStrip n (ρ-δ)) {A : ℝ}
    (hA : ∀ x ∈ KAM.complexStrip n ρ, ‖u x‖ ≤ A) :
    ‖u (θ+v) - u θ‖ ≤ n * δ⁻¹ * A * ‖v‖ :=
  (KAM.increments hu hδ hθ hθv).2 A hA
example {E W : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    [NormedAddCommGroup W] [NormedSpace ℂ W] (F : E → W) (x : E) :
    ‖fderiv ℂ (fderiv ℂ F) x‖ = ‖iteratedFDeriv ℂ 2 F x‖ := by
  rw [← norm_iteratedFDeriv_one (𝕜 := ℂ), norm_iteratedFDeriv_fderiv]
```

Output:

```text
'KAM.taylor_lipschitz_of_differentiableOn_fderiv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.taylor_integrate_of_differentiableOn_fderiv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.taylor_of_differentiableOn_fderiv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.taylor_lipschitz' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.taylor_integrate' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.taylor' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.taylor_iteratedFDeriv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.increments_mvt' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.increments_cauchy' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.increments' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Matrix regression and positive application probe

Command: `nice -n 5 lake env lean .lake/abi-scratch/I_P1C_audit.lean` (initial diagnostic version). Appending these commands to the preceding imports:

```lean
open scoped Matrix.Norms.Operator
#synth NormedAddCommGroup (Matrix (Fin 2) (Fin 3) ℂ)
#synth NormedSpace ℂ (Matrix (Fin 2) (Fin 3) ℂ)
#synth CompleteSpace (Matrix (Fin 2) (Fin 3) ℂ)
#synth SecondCountableTopology (Matrix (Fin 2) (Fin 3) ℂ)
#synth Norm ((Fin 2 → ℂ) →L[ℂ] Matrix (Fin 2) (Fin 3) ℂ)
```

produced:

```text
Matrix.linftyOpNormedAddCommGroup
Matrix.linftyOpNormedSpace
complete_of_proper
error: failed to synthesize
  SecondCountableTopology (Matrix (Fin 2) (Fin 3) ℂ)
error: failed to synthesize
  Norm ((Fin 2 → ℂ) →L[ℂ] Matrix (Fin 2) (Fin 3) ℂ)
(exit 1; these are expected diagnostic failures, not package build failures)
```

The following positive probe succeeds:

```sh
nice -n 5 lake env lean .lake/abi-scratch/I_P1C_matrix.lean
```

No output; exit 0. Source:

```lean
import KAM.Strip.Taylor
import KAM.Strip.Increments
import KAM.Matrix.Norms
open Set
open scoped Matrix.Norms.Operator
noncomputable section
variable {n p q : ℕ}
local instance : NormedAddCommGroup (Matrix (Fin p) (Fin q) ℂ) :=
  Matrix.linftyOpNormedAddCommGroup
local instance : NormedSpace ℂ (Matrix (Fin p) (Fin q) ℂ) :=
  Matrix.linftyOpNormedSpace
example : SecondCountableTopology (Matrix (Fin p) (Fin q) ℂ) :=
  @secondCountable_of_proper _
    (Matrix.linftyOpNormedAddCommGroup.toMetricSpace.toPseudoMetricSpace) inferInstance
example {ρ δ A : ℝ} {u : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ}
    (hu : DifferentiableOn ℂ u (KAM.complexStrip n ρ)) (hδ : 0 < δ)
    {θ v : Fin n → ℂ} (hθ : θ ∈ KAM.complexStrip n (ρ-δ))
    (hθv : θ+v ∈ KAM.complexStrip n (ρ-δ))
    (hA : ∀ x ∈ KAM.complexStrip n ρ, ‖u x‖ ≤ A) :
    ‖u (θ+v) - u θ‖ ≤ n * δ⁻¹ * A * ‖v‖ :=
  (@KAM.increments n (Matrix (Fin p) (Fin q) ℂ)
    Matrix.linftyOpNormedAddCommGroup Matrix.linftyOpNormedSpace
    ρ δ u hu hδ θ v hθ hθv).2 A hA
example {U : Set ((Fin n → ℂ) × (Fin n → ℂ))}
    (hU : IsOpen U) {F : ((Fin n → ℂ) × (Fin n → ℂ)) → Matrix (Fin p) (Fin q) ℂ}
    (hF : DifferentiableOn ℂ F U) {A : ℝ}
    (hA : ∀ x ∈ U, ‖iteratedFDeriv ℂ 2 F x‖ ≤ A)
    {z w : (Fin n → ℂ) × (Fin n → ℂ)}
    (hseg : segment ℝ z (z+w) ⊆ U) :
    ‖F (z+w) - F z - fderiv ℂ F z w‖ ≤ A / 2 * ‖w‖^2 := by
  let : SecondCountableTopology (Matrix (Fin p) (Fin q) ℂ) :=
    @secondCountable_of_proper _
      (Matrix.linftyOpNormedAddCommGroup.toMetricSpace.toPseudoMetricSpace) inferInstance
  exact KAM.taylor_iteratedFDeriv (W := Matrix (Fin p) (Fin q) ℂ) hU hF hA hseg
example (M : Matrix (Fin p) (Fin q) ℂ) :
    ‖M‖ = ((Finset.univ : Finset (Fin p)).sup
      (fun i => ∑ j, ‖M i j‖₊) : NNReal) := Matrix.linfty_opNorm_def M
end
```

Exploratory probe revisions also exposed a missing noncomputable marker on local instance definitions and missing NNReal notation scope in the probe itself. These scratch-only errors were corrected without changing project files or options; they are not attributed to I-P1C. All final positive probe sources and results are reproduced above.

The audit certifies the six package nodes at the stated snapshot. It does not certify the future Part 2/3 implementations, a source PDF beyond these blueprint contracts, or closure of any frozen KAM theorem.

Final cleanup: deleted only `.lake/abi-scratch/I_P1C_audit.lean` and `.lake/abi-scratch/I_P1C_matrix.lean`. Final `git status --short` shows only the pre-existing untracked handoff and this untracked audit report; tracked source changes are absent. Report whitespace and paired Markdown fences checked successfully.
