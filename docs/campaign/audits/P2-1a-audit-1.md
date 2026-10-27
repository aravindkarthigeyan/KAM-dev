# P2-1a independent package audit 1

**Overall verdict: FAIL as submitted.** One major instance-scope issue must be addressed before landing. The carrier infrastructure, literal torus objects, rectangular matrix calculus and finite-index transpose estimate pass this audit. The failure concerns the globally exported derivative `Norm`, not a false proved theorem or an axiom escape.

Audited 2026-10-27 at HEAD `8cfccb9d9ba23bb649403781b04e4a3c382ad62a` on `k/p2-1a`; read-only comparison base `main = 3bda00f27f8ea0366bbb5d20da7b01746c107ee7`. Scope: `AUDIT-PACKAGE.md`, the four numbered AUDIT FOCUS questions in `P2-1a-handoff.md`, package brief and binding design. Signatures had a separate design audit; this audit checked the actual bodies, norm semantics, proof premises and consumer applicability. No source, frozen file, manifest, generated root or git state was changed. Temporary probes were confined to `.lake/abi-scratch/` and removed after recording their contents/results below.

## Frozen input identity

```text
9591874c80e8744aceae184842f41782fdcf2dbd976332a99813931ce6b48997  KAM/Matrix/Calculus.lean
9781d3ef7054eb49d26609f49d57c5c725682887efda9cf476c65a76c76a8fa8  KAM/Torus/Basic.lean
b2a48ffc77d6a0696131860c6239a84356e17c7cf651b21ca5df493209d95160  KAM/Torus/Objects.lean
c8fe335ca1f87390d803ffec36254804290f3962910284b9d7afd8fec3530f30  blueprint/parts/p2-aposteriori.tex
1b4bd7224e90844d78088822931f1d5e668dcc27cf5cd2351671da108985c125  docs/campaign/design/PART23-LEAN-DESIGN.md
```

`git diff --stat main...HEAD` reports three new implementation modules (308, 210 and 129 lines) and three generated import additions in `KAM.lean`, 650 insertions total. `git diff main...HEAD -- KAM/Frozen manifest` is empty. The supplied untracked handoff was present before the audit and was left unchanged.

## Node and interface verdicts

All names below are in `KAM.Torus` unless explicitly qualified.

| Node / interface | Lean declarations | Verdict | Reason |
|---|---|---|---|
| `bp:p2:objects`, definitions | `tangentMat` through `redDefect` | PASS | Literal matrix formulas, carrier dictionary and adopted totality convention L2; see body table below. |
| `bp:p2:objects`, displayed block identity / `step:p2:fi-q` portion | `eta_eq_sumElim`, `omegaZeroMatrix_mulVec_sumElim` | PASS | Correct signs for Ω₀(a,b)=(-b,a); identity is unconditional and stronger than its source-domain specialization. This does not certify the rest of frame-identities. |
| Carrier infrastructure, design §1.2/§1.5 | `sumVec`, `norm_sumVec`, `colMat`, `sqMat`, `norm_colMat`, `norm_sqMat`, `colMat_mulVec`, `sqMat_mulVec` | PASS | Max norm isometry and exact row-sum operator norms; no dimension factor hidden in the conversions. |
| Conventions, design §1.4 | `IsPeriodicOn`, `IsRealVec`, `IsRealMat`, `avg`, `primary_coordinatewise` | PASS | Period one, componentwise realness, real-unit-cube average. |
| Finite-index Cauchy transpose bridge, design §0/§1.5 | `cauchy_transpose_fintype` | PASS | Target cardinality, not domain cardinality times target cardinality; compiled pair-carrier consumer gives precisely 2n δ⁻¹ A. |
| Rectangular calculus, design §7.2 | `HasFDerivAt.matrix_mul`, `KAM.fderiv_matrix_mul_apply`, matrix-vector, transpose, entry and constant-factor rules | PASS | Continuous bilinear/linear maps supply the derivatives; no extra estimate assumed. |
| Added global topology instances | `KAM.instSecondCountableTopologyMatrix`, `KAM.instIsNormableSpaceMatrix` | PASS | Correct properties of finite product topology; no data-bearing norm is chosen by either property. |
| Added global derivative norm | `KAM.instNormContinuousLinearMapMatrix` | FAIL (major) | Correct row-sum norm in the adopted scope, but leaks into other norm scopes and conflicts numerically with their generic operator norm. F1 below. |

Provider exact-type check: **N/A**. This package has no provider or frozen theorem implementation; it imports frozen definitions only. No frozen theorem/provider shortcut occurs in the three modules.

## Definition classification and whole-carrier check

All 29 new `def`/`abbrev` declarations are literal constructions; none is a characterization-defined choice, assumption bundle, arbitrary witness or theorem-shaped replacement. The three instances are classified separately below.

| Definitions | Classification and body check |
|---|---|
| `sumVec`, `sumVecIso` | Explicit linear equivalence `(a,b) ↦ Sum.elim a b`, then its linear isometry wrapper. `norm_sumVec` proves the max norm identity, including n=0. The proof checks both halves of the sum type against the product max norm. |
| `colMat`, `sqMat` | Basis matrices of `sumVec ∘ U` and `sumVec ∘ U ∘ sumVec.symm`. `norm_colMat`/`norm_sqMat` use the independently available operator-norm/toMatrix theorem and pre/postcomposition by a linear isometry. |
| `IsPeriodicOn` | Literal coordinatewise period-one predicate on the strip; no hidden regularity/estimate. |
| `IsRealVec`, `IsRealMat` | Literal vanishing of every imaginary part at every real argument. |
| `avg` | Literal abbreviation of `torusAverage` after coordinatewise `Complex.ofReal`. `KAM/Strip/Averages.lean:32-33` defines that as the Bochner integral over `Set.pi univ (fun _ => Icc 0 1)`; the cube has volume one (line 37). Thus no missing normalization factor. |
| Seven calculus maps | `KAM.matMulCLM`, `matMulVecCLM`, `matEntryCLM`, `matMulRightCLM`, `matMulVecRightCLM`, `matTransposeCLE`, `matTransposeCLM`: exactly multiplication, multiplication by a vector, entry evaluation, the two fixed-right-factor maps and transposition. Continuity/bounds are proved from matrix norm inequalities or finite-dimensional continuity. |

For `Objects.lean`, the 14 bodies match on their entire declared carrier:

| Definition (line) | Body / source object |
|---|---|
| `tangentMat` (56) | `colMat (fderiv ℂ K θ)` = L = DK. |
| `linMat` (59) | `sqMat (fderiv ℂ X_h (K θ))` = A. |
| `lagrangeMat` (63) | Lᵀ Ω₀ L. |
| `normalMat` (67) | Ω₀ L (gramMatrix K θ)⁻¹ = Ω₀ L B. |
| `frameMat` (71) | `fromCols L N`. |
| `normalFieldMat` (76) | A N − DN[ω], with real ω cast coordinatewise into ℂ. |
| `symDefect` (80) | Pᵀ Ω₀ P − Ω₀. |
| `reducer` (84) | −(Ω₀ Pᵀ Ω₀). |
| `eta` (88) | (Ω₀ Pᵀ Ω₀) E, E converted by `sumVec`. |
| `etaL` (93) | −(Nᵀ Ω₀ E). |
| `etaN` (97) | Lᵀ Ω₀ E. |
| `errDerivMat` (101) | `colMat (fderiv ℂ E θ)`. |
| `triangularMat` (105) | `fromBlocks 0 T 0 0`. |
| `redDefect` (109) | Blocks NᵀΩ₀DE, 0, −LᵀΩ₀DE, (DE)ᵀΩ₀N, exactly source frame-identities(e), `p2-aposteriori.tex:450-454`. |

Compared directly with `p2-aposteriori.tex:270-293`, design §1.3 and Appendix A. Frozen `gramMatrix` expands to the bilinear dot product of the derivative columns, not a Hermitian product. The consumer probe below additionally proves `gramMatrix = Lᵀ L` on every input. Frozen `invarianceError` has exactly `X_h(K θ) − DK θ ω`. Ω₀ has the adopted negative upper-right block.

Whole-carrier status for each literal definition above:

```text
BODY_MATCH: OK
PUBLIC_CARRIER: OK (including explicit adopted totality convention L2)
WELL_DEFINEDNESS: N/A_LITERAL
CHARACTERIZATION: N/A_LITERAL
CHOICE_INDEPENDENCE: N/A
DEFINITION_VERDICT: PASS
```

The source defines inverse-dependent objects on the invertible locus; the binding design explicitly adopts total derivatives and Mathlib matrix inverse globally (L2, design:299). There is no new `if`, default branch or off-locus theorem being used to conceal a missing proof. This audit does not assert source geometric identities outside their hypotheses. Likewise the total Bochner integral convention does not prove integrability of arbitrary functions: continuity/integrability remains required by consumers, as the design states.

## Premises and transpose consumers

`eta_eq_sumElim` has only typing/data binders n, h, K, ω, θ and no logical premise. The `sumVec` and matrix conversion identities have only dimensions and their maps/vectors. They add no assumptions.

For `cauchy_transpose_fintype` (`Basic.lean:139-159`): n, the arbitrary index type ι with its `Fintype`, ρ, δ, A and f are typing/data; `hf` is source holomorphy, `hA` is the source pointwise bound and `hδ` is the source positive loss. θ and membership in the smaller strip are universally quantified in the conclusion. There is no extra standing package, sign assumption on A, positive ρ assumption, or hard estimate binder. Nonnegativity of A is obtained in the proof from hA at the evaluation point. Empty index types and empty strips are handled without inventing a point.

The proof bounds each of the `card ι` entries in a transposed row by the directional Cauchy estimate δ⁻¹A, then sums once. With `ι = Fin n ⊕ Fin n` and `f = sumVec ∘ E` it yields 2n δ⁻¹ε for `‖(DE)ᵀ‖` (`step:p2:geo-de`, source:566-569). Applying the same statement to `sumVec ∘ (K̃−K)` yields 2n δ⁻¹d for the transposed tangent difference (`step:p2:pt-dl`, source:839-842); derivative linearity identifies the matrix difference on the open strip. No extra n is introduced. The following full consumer-type example, as well as the Gram check, compiled:

```lean
import KAM.Matrix.Calculus
import KAM.Torus.Objects
open scoped Matrix.Norms.Operator
open Matrix KAM KAM.Torus
example {n : ℕ} {ρ δ A : ℝ}
    {f : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hf : DifferentiableOn ℂ f (complexStrip n ρ))
    (hA : ∀ θ ∈ complexStrip n ρ, ‖f θ‖ ≤ A) (hδ : 0 < δ)
    {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n (ρ - δ)) :
    ‖(colMat (fderiv ℂ f θ))ᵀ‖ ≤ (2 * n : ℕ) * δ⁻¹ * A := by
  have hdiff : DifferentiableOn ℂ (fun z => sumVec n (f z)) (complexStrip n ρ) :=
    fun z hz => ((differentiableAt_sumVec_iff).2
      (hf.differentiableAt ((isOpen_complexStrip n ρ).mem_nhds hz))).differentiableWithinAt
  have hb : ∀ z ∈ complexStrip n ρ, ‖sumVec n (f z)‖ ≤ A :=
    fun z hz => by simpa only [norm_sumVec] using hA z hz
  have hc := cauchy_transpose_fintype hdiff hb hδ θ hθ
  have hm : (Matrix.of fun (i : Fin n ⊕ Fin n) (j : Fin n) =>
      fderiv ℂ (fun z => sumVec n (f z)) θ (Pi.single j 1) i) = colMat (fderiv ℂ f θ) := by
    ext i j
    change (fderiv ℂ (fun z => sumVec n (f z)) θ (Pi.single j 1)) i =
      colMat (fderiv ℂ f θ) i j
    rw [fderiv_sumVec_apply]
    rfl
  simpa only [hm, Fintype.card_sum, Fintype.card_fin, ← two_mul] using hc

example {n : ℕ} (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (θ : Fin n → ℂ) : gramMatrix K θ = (tangentMat K θ)ᵀ * tangentMat K θ := by
  ext i j
  exact dotℂ_eq_dotProduct_sumVec _ _

```

Calculus hypotheses are typing instances (complex normed domain and finite matrix indices), map/point/direction data, and the stated differentiability of each variable factor. Fixed factors do not acquire differentiability assumptions. The transpose formula without a differentiability hypothesis is legitimate: transposition is a continuous linear equivalence, and both total derivatives vanish in the nondifferentiable case (`Calculus.lean:275-284`). No conclusion-shaped hypothesis was found.

## F1 — major: globally fixed row-sum derivative norm leaks across scopes

Evidence: `KAM/Matrix/Calculus.lean:155-160` exports a data-valued `Norm` instance globally. Its body explicitly selects `Matrix.linftyOpSeminormedAddCommGroup` regardless of the matrix norm currently opened by a consumer.

Mathematical validity within the adopted Part 2 convention: **yes**. The norm is literally

```lean
‖L‖ = sInf {c : ℝ | 0 ≤ c ∧ ∀ x, ‖L x‖ ≤ c * ‖x‖}
```

when the matrix norm on the right is the row-sum norm. A `rfl` probe proves this. A term-level application of `KAM.increments_open` to a matrix-valued function and its derivative bound also compiles. Thus no numerical error was found in current row-sum results.

Global coherence across Mathlib's norm choices: **no**. In both Operator and Elementwise contexts, `#synth Norm (ℂ →L[ℂ] Matrix (Fin 1) (Fin 2) ℂ)` selects `KAM.instNormContinuousLinearMapMatrix`. For the same continuous linear map `dup : z ↦ [[z,z]]`, the following probe proves:

- matrix row-sum norm of `dup z` = 2‖z‖;
- matrix elementwise norm of `dup z` = ‖z‖;
- the global notation `‖dup‖` = 2;
- `ContinuousLinearMap.opNorm dup`, with the explicit elementwise normed structure, = 1.

This is a numerical difference, not merely a failed definitional equality. Mathlib's `Analysis/Normed/Operator/Basic.lean:170-177` defines `hasOpNorm` from the ambient domain/target normed structures. Its matrix norms deliberately use scopes (`Analysis/Matrix/Normed.lean:210`, `481-484`). A general module importing this file inherits a row-sum choice for derivative norms even when it selects a different matrix norm. The generated root imports this file, so the exposure is repository-wide.

The lack of a synthesizable `NormedAddCommGroup` on the default-topology CLM is **not itself unsoundness**: a `Norm` is a function, and the bound-infimum is mathematically meaningful. But it is not a replacement for a coherent normed-group API. `#synth NormedAddCommGroup (ℂ →L[ℂ] M)` fails in the tested default and scoped contexts even though `#synth Norm ...` succeeds. Generic normed-space lemmas cannot be presumed available for that default-topology derivative type. Supplying explicit structures or using generic theorems at the matching normed topology is a distinct step.

Refutation attempt: explicitly select both row-sum and elementwise matrix normed structures; try `example (L : ℂ →L[ℂ] M) : ‖L‖ = ContinuousLinearMap.opNorm L := rfl`. The row-sum version succeeds; the elementwise version fails. The numeric test below then proves distinct values. Conversely, the positive `increments_open` application refutes the stronger claim that all matrix-valued generic calculus is broken. No contradictory theorem or kernel inconsistency is alleged.

**Proposed fix:** remove the global instance registration for `instNormContinuousLinearMapMatrix`; register this choice in `Matrix.Norms.Operator`, or in a dedicated KAM norm scope opened explicitly by Part 2/3 modules. Keep it visibly coupled to the row-sum convention. A priority change alone does not provide that coupling. Re-run row-sum consumer probes and a negative cross-scope regression after that change. A fuller long-term alternative is an explicit topology-compatible row-sum normed matrix carrier/API, rather than a bare derivative `Norm`. No repair was made during this audit.

Minimal numeric witness (compiled exit 0, no output):

```lean
import KAM.Matrix.Calculus
noncomputable section
abbrev M := Matrix (Fin 1) (Fin 2) ℂ
def dup : ℂ →L[ℂ] M :=
  ContinuousLinearMap.pi fun _ => ContinuousLinearMap.pi fun _ => ContinuousLinearMap.id ℂ ℂ

@[simp] theorem dup_apply (z : ℂ) (i : Fin 1) (j : Fin 2) : dup z i j = z := rfl

open scoped Matrix.Norms.Operator in
example (z : ℂ) : ‖dup z‖ = 2 * ‖z‖ := by
  simp [KAM.norm_eq_iSup_rowSum, dup_apply, two_mul]

open scoped Matrix.Norms.Elementwise in
example (z : ℂ) : ‖dup z‖ = ‖z‖ := by
  change ‖fun (_ : Fin 1) (_ : Fin 2) => z‖ = ‖z‖
  simp

example : ‖dup‖ = 2 := by
  change sInf {c : ℝ | 0 ≤ c ∧ ∀ x : ℂ,
    @Norm.norm M Matrix.linftyOpSeminormedAddCommGroup.toNorm (dup x) ≤ c * ‖x‖} = 2
  have hn (x : ℂ) : @Norm.norm M Matrix.linftyOpSeminormedAddCommGroup.toNorm (dup x) = 2 * ‖x‖ := by
    simp [KAM.norm_eq_iSup_rowSum, dup_apply, two_mul]
  simp only [hn]
  apply le_antisymm
  · apply csInf_le
    · exact ⟨0, fun c hc => hc.1⟩
    · exact ⟨by norm_num, fun x => le_rfl⟩
  · apply le_csInf
    · exact ⟨2, by norm_num, fun x => le_rfl⟩
    · intro c hc
      simpa using hc.2 1

section
local instance : NormedAddCommGroup M := Matrix.normedAddCommGroup
local instance : NormedSpace ℂ M := Matrix.normedSpace
example : ContinuousLinearMap.opNorm dup = 1 := by
  change sInf {c : ℝ | 0 ≤ c ∧ ∀ x : ℂ, ‖dup x‖ ≤ c * ‖x‖} = 1
  have hn (x : ℂ) : ‖dup x‖ = ‖x‖ := by
    change ‖fun (_ : Fin 1) (_ : Fin 2) => x‖ = ‖x‖
    simp
  simp only [hn]
  apply le_antisymm
  · apply csInf_le
    · exact ⟨0, fun c hc => hc.1⟩
    · exact ⟨by norm_num, fun x => by simp⟩
  · apply le_csInf
    · exact ⟨1, by norm_num, fun x => by simp⟩
    · intro c hc
      simpa using hc.2 1
end

```

## The two topology instances

`Calculus.lean:145-151` uses `inferInstanceAs` for the finite function space. Both statements are correct for the default product topology, including empty dimensions. Finite-dimensional row-sum and elementwise norms induce that topology; their difference is a definitional/elaboration issue, not a mathematical topological discrepancy.

`SecondCountableTopology` and `IsNormableSpace` are Prop-valued. Overlapping proofs of the same property are proof-irrelevant, so these do not install competing matrix norm or topology data. `IsNormableSpace` asserts existence of a compatible norm; it does not assert that an arbitrarily separately synthesized `Norm` is that norm. The two `rfl` probes comparing the exported instances to the corresponding function-space proofs succeed.

**Recommendation:** these two property instances may remain global. Scoping them for project hygiene is optional, not required to fix a mathematical diamond. The derivative norm is the one that must be scoped. Do not describe all three instances as equally problematic.

The complete successful coherence probe is:

```lean
import KAM.Matrix.Calculus
import KAM.Torus.Objects

noncomputable section

abbrev M := Matrix (Fin 1) (Fin 2) ℂ

section
open scoped Matrix.Norms.Operator
#synth NormedAddCommGroup M
#synth NormedSpace ℂ M
#synth CompleteSpace M
#synth SecondCountableTopology M
#check fun (f : ℂ → M) (x : ℂ) => ‖iteratedFDeriv ℂ 2 f x‖
example (L : ℂ →L[ℂ] M) :
    ‖L‖ = sInf {c : ℝ | 0 ≤ c ∧ ∀ x : ℂ, ‖L x‖ ≤ c * ‖x‖} := rfl
example {U : Set ℂ} (hU : IsOpen U) {f : ℂ → M}
    (hf : DifferentiableOn ℂ f U) {A : ℝ}
    (hA : ∀ x ∈ U, ‖fderiv ℂ f x‖ ≤ A) {z w : ℂ}
    (hs : segment ℝ z (z + w) ⊆ U) : ‖f (z + w) - f z‖ ≤ A * ‖w‖ := by
  exact KAM.increments_open hU hf hA hs
end

-- A matrix-derivative type already carrying the actual normed topology.
section
local instance : NormedAddCommGroup M := Matrix.linftyOpNormedAddCommGroup
local instance : NormedSpace ℂ M := Matrix.linftyOpNormedSpace
#synth Norm (ℂ →L[ℂ] M)
example (L : ℂ →L[ℂ] M) : ‖L‖ = ContinuousLinearMap.opNorm L := rfl
example (L : ℂ →L[ℂ] M) (z : ℂ) : ‖L z‖ ≤ ‖L‖ * ‖z‖ := L.le_opNorm z
end

-- Same test for the elementwise norm.
section
open scoped Matrix.Norms.Elementwise
local instance : NormedAddCommGroup M := Matrix.normedAddCommGroup
local instance : NormedSpace ℂ M := Matrix.normedSpace
#synth Norm (ℂ →L[ℂ] M)
example (L : ℂ →L[ℂ] M) :
    ‖L‖ = sInf {c : ℝ | 0 ≤ c ∧ ∀ x : ℂ,
      @Norm.norm M Matrix.linftyOpSeminormedAddCommGroup.toNorm (L x) ≤ c * ‖x‖} := rfl
end

-- Instance proofs of topology properties remain proof-irrelevant.
example : KAM.instSecondCountableTopologyMatrix (l := Fin 1) (m := Fin 2) =
    inferInstanceAs (SecondCountableTopology (Fin 1 → Fin 2 → ℂ)) := rfl
example : KAM.instIsNormableSpaceMatrix (l := Fin 1) (m := Fin 2) =
    inferInstanceAs (IsNormableSpace ℂ (Fin 1 → Fin 2 → ℂ)) := rfl

```

Its exact stdout:

```text
Matrix.linftyOpNormedAddCommGroup
Matrix.linftyOpNormedSpace
complete_of_proper
KAM.instSecondCountableTopologyMatrix
fun f x => ‖iteratedFDeriv ℂ 2 f x‖ : (ℂ → M) → ℂ → ℝ
KAM.instNormContinuousLinearMapMatrix
KAM.instNormContinuousLinearMapMatrix
```

## Main-only Taylor / increments interface

`KAM/Strip/Taylor.lean` and `KAM/Strip/Increments.lean` do **not** exist in this worktree. No merge, checkout or copied implementation was used. I read the exact main revision above using:

```sh
git show main:KAM/Strip/Taylor.lean
git show main:KAM/Strip/Increments.lean
```

Static applicability: `KAM.increments` is polymorphic in a complex normed target W. `KAM.taylor_iteratedFDeriv` additionally requires `CompleteSpace W`, `SecondCountableTopology W` and a finite-dimensional complex normed domain. Finite matrix targets with the row-sum norm meet these mathematical requirements. The coherence probe synthesizes the matrix normed group, normed space, completeness and second countability, and elaborates the iterated-second-derivative norm. The existing `increments_open` application checks the first-derivative bound and conclusion with the actual row-sum instances.

This is positive static/interface evidence, **not a replay of the prover's missing main-only matrix probe**. Actual applications of `KAM.increments` and `KAM.taylor_iteratedFDeriv` were not compiled here because the modules are absent, as anticipated by AUDIT FOCUS 4. Their types introduce no new mathematical hypothesis obstructing a matrix target. Retest their exact applications after ordinary orchestrator integration; the plain nested `fderiv` norm and the iterated multilinear derivative norm should not be silently identified at mismatched inferred structures.

## Hygiene and reproducible checks

All Lean runs were sequential and used `nice -n 5`, default resource budgets. No builds of the whole library, cache changes, override or state-changing git command were used.

| Command | Exit / exact output or scoped result |
|---|---|
| `nice -n 5 lake build KAM.Matrix.Calculus KAM.Torus.Basic KAM.Torus.Objects` | 0; `Build completed successfully (2886 jobs).` Targeted build using the existing snapshot. |
| `sh scripts/lint_sources.sh` | 0; stdout below. |
| `git diff main...HEAD -- KAM/Frozen manifest` | 0; empty output. |
| `git diff --check` | 0; empty output. |
| `wc -l KAM/Matrix/Calculus.lean KAM/Torus/Basic.lean KAM/Torus/Objects.lean` | 308, 210, 129 (647 total); all below 1500 total lines, hence below the code-line cap. |
| Package source inspection plus repository lint | Copyright, `module`, imports, module docstrings, exposed public sections present; no forbidden proof escapes, resource overrides, EuclideanSpace or quarantined theorem/provider imports. |
| `nice -n 5 lake env lean .lake/abi-scratch/P21aAxioms.lean > .lake/abi-scratch/P21aAxioms.log` | 0; all 75 exports (43 theorems, 29 definitions/abbreviations, 3 instances) have only the allowed three axioms; full stdout below. |
| `nice -n 5 lake env lean .lake/abi-scratch/P21aCoherence.lean` | 0; exact content/stdout above. |
| `nice -n 5 lake env lean .lake/abi-scratch/P21aNumbers.lean` | 0; empty output; exact content above. |
| `nice -n 5 lake env lean .lake/abi-scratch/P21aConsumer.lean` | 0; empty output; content above, including the full-carrier Gram identity. |
| `nice -n 5 lake env lean .lake/abi-scratch/P21aInstances.lean` | 1, deliberately mixed positive/negative diagnostic probe: topology/Norm syntheses succeeded; default matrix and derivative normed-group synthesis failed; unscoped `opNorm L` could not infer a target seminormed group. Later isolated positive/negative and numeric tests above establish the finding without relying on diagnostic failure alone. |

Exact lint stdout:

```text
check_lean_modules: PASS (206 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
```

The axiom probe imported the two independent package roots `KAM.Matrix.Calculus` and `KAM.Torus.Objects`, then issued `#print axioms` for every new theorem, definition, abbreviation and instance. Exact stdout:

```text
'KAM.matMulCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulVecCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulRightCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulVecRightCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matEntryCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matTransposeCLE_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matTransposeCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'HasFDerivAt.matrix_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'DifferentiableWithinAt.matrix_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'DifferentiableAt.matrix_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'DifferentiableOn.matrix_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.fderiv_matrix_mul_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.fderiv_matrix_const_mul_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.fderiv_matrix_mul_const_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'HasFDerivAt.matrix_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'DifferentiableWithinAt.matrix_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'DifferentiableAt.matrix_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'DifferentiableOn.matrix_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.fderiv_matrix_mulVec_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'HasFDerivAt.matrix_transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'DifferentiableWithinAt.matrix_transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'DifferentiableAt.matrix_transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'DifferentiableOn.matrix_transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.fderiv_matrix_transpose_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'HasFDerivAt.matrix_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'DifferentiableAt.matrix_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.fderiv_matrix_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sumVec_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.norm_sumVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sumVecIso_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sumVec_symm_apply_sumVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.norm_colMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.colMat_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.norm_sqMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sqMat_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.cauchy_transpose_fintype' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.primary_coordinatewise' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.isRealVec_sumVec_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.dotℂ_eq_dotProduct_sumVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.differentiableAt_sumVec_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.fderiv_sumVec_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.omegaZeroMatrix_mulVec_sumElim' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.eta_eq_sumElim' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulCLM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulVecCLM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matEntryCLM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulRightCLM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulVecRightCLM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matTransposeCLE' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matTransposeCLM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.instSecondCountableTopologyMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.instIsNormableSpaceMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.instNormContinuousLinearMapMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sumVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sumVecIso' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.colMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sqMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.IsPeriodicOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.IsRealVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.IsRealMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.avg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.tangentMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.linMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.lagrangeMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.normalMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.frameMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.normalFieldMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.symDefect' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.reducer' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.eta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.etaL' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.etaN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.errDerivMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.triangularMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.redDefect' depends on axioms: [propext, Classical.choice, Quot.sound]

```

## Limits, errata, deviations and closeout

- One major accepted finding: F1, global derivative-norm scope. No other mathematical defect was found in the package bodies or proof statements.
- No suspected defect in the pinned mathematical sources was discovered. This audit compares the package to the adopted blueprint/design; it is not a fresh PDF audit of HL19/GJLV05.
- Existing documented deviations L1/L2 (sum-index matrix carrier and total functions) and L9 (unconditional block identity) are preserved. F1 is an additional implementation-level norm-scope deviation from the design's scoped convention.
- No frozen theorem is sealed by this infrastructure audit. Full `frozen_agreement`, geometry, later provider assembly and main-only Taylor/increments integration are outside the completed proof checks here.
- Acceptance gate: scope the derivative norm, preserve both correct topology properties and all current row-sum theorem types, and re-run the positive consumer and cross-scope regression. Until then the submitted package verdict remains FAIL.
