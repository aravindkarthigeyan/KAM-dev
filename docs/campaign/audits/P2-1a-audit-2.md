# P2-1a independent delta audit 2

**Verdict: PASS. F1 is resolved.** The row-sum derivative norm is scoped to `Matrix.Norms.Operator`, the negative regressions pass, the numerical witness has the intended scope-dependent behavior, and the previously unavailable matrix-valued Taylor/increments applications now compile. All other package verdicts from audit 1 remain PASS.

## Scope and immutable inputs

Same independent auditor as `P2-1a-audit-1.md`; delta audit on 2026-10-27. Audited HEAD: `224663115844dd6b896b2614f5adf46c243b1e12`, branch `k/p2-1a`. Previous audited HEAD: `8cfccb9d9ba23bb649403781b04e4a3c382ad62a`.

The actual merge is `d40557d` with parents `8cfccb9` and `dcdde7bb3d8a22f7e6fed660e0c55f5a1160b3b1`; `2246631` is the subsequent fix commit. At this audit's check, `main` points to `015387fc05b5b6ff91a34daab63f96cea4a06999`, which has advanced beyond the merged main revision. Consequently `git merge-base main HEAD` is `dcdde7bb3d8a22f7e6fed660e0c55f5a1160b3b1`. This verdict covers the submitted HEAD and its merged dependencies, not subsequent main-only changes.

Read the governing instructions, current audit/package briefs, handoff and the relevant design/source again. Source correspondence and whole-carrier classification from audit 1 were preserved by byte/code comparisons below; the norm fix and new integration evidence were independently rechecked. No implementation, frozen file, manifest, prior report or git state was changed. Only this report and auditor-owned temporary probes were written.

SHA-256 inputs:

```text
37d97014a1e7ad6e2e608fecc6012f956e269a6ad28336be38187b5707f64e23  KAM/Matrix/Calculus.lean
9781d3ef7054eb49d26609f49d57c5c725682887efda9cf476c65a76c76a8fa8  KAM/Torus/Basic.lean
b2a48ffc77d6a0696131860c6239a84356e17c7cf651b21ca5df493209d95160  KAM/Torus/Objects.lean
c8fe335ca1f87390d803ffec36254804290f3962910284b9d7afd8fec3530f30  blueprint/parts/p2-aposteriori.tex
1b4bd7224e90844d78088822931f1d5e668dcc27cf5cd2351671da108985c125  docs/campaign/design/PART23-LEAN-DESIGN.md
daf63580464889184e11d5ab82aec7c77b41c8d3fa68ad497cc567076af516a7  .lake/abi-scratch/p21a_probe.lean
```

## Findings and node verdicts

| Node / interface | Lean declarations | Verdict | Delta evidence |
|---|---|---|---|
| `bp:p2:objects`, literal definitions | `KAM.Torus.tangentMat` through `redDefect` | PASS | `Objects.lean` byte-identical to audit 1; defining formulas and carriers unchanged. |
| `bp:p2:objects`, block identity | `KAM.Torus.eta_eq_sumElim`, `omegaZeroMatrix_mulVec_sumElim` | PASS | Statements and proofs unchanged; allowed axiom closure rechecked. |
| Carrier infrastructure, design §1.2/§1.5 | `sumVec`, `norm_sumVec`, `colMat`, `sqMat`, norm and `mulVec` conversions | PASS | `Basic.lean` byte-identical; original consumer and full-carrier Gram identity rerun. |
| Conventions, design §1.4 | `IsPeriodicOn`, `IsRealVec`, `IsRealMat`, `avg`, `primary_coordinatewise` | PASS | Literal bodies unchanged; period-one and unit-cube normalization verdicts preserved. |
| Finite-index transpose bridge | `KAM.Torus.cauchy_transpose_fintype` | PASS | Original exact pair-carrier consumer recompiles with factor 2n, not 2n². |
| Rectangular calculus, design §7.2 | `HasFDerivAt.matrix_mul`, `KAM.fderiv_matrix_mul_apply`, matrix-vector/transpose/entry/constant-factor rules | PASS | All theorem statements and proof code unchanged; supplied Gram derivative application compiles. |
| Global topology properties | `KAM.instSecondCountableTopologyMatrix`, `instIsNormableSpaceMatrix` | PASS | Statements/bodies unchanged; remain global Prop-valued properties. |
| F1: row-sum derivative norm | `KAM.instNormContinuousLinearMapMatrix` | PASS; finding CLOSED | Plain definition at `Calculus.lean:162-166`; only scoped registration at lines 317-321. Numeric and negative tests pass. |
| Main integration | `KAM.cauchy_strip`, `increments`, `increments_mvt`, `taylor_iteratedFDeriv` specialized to matrices | PASS | Actual term-level applications in the supplied probe compile at the audited HEAD. Audit 1's missing-module limitation is discharged for these applications. |

No remaining blocking, major or minor finding. No repair is proposed. Provider exact-type probe: **N/A**, because this package implements infrastructure and no provider/frozen theorem.

## F1 resolution and independent numerical replay

The norm constructor's arguments and body are unchanged. It is now a plain `@[instance_reducible] def`, not a globally registered instance. The registration is exactly:

```lean
namespace Matrix.Norms.Operator
attribute [scoped instance] KAM.instNormContinuousLinearMapMatrix
end Matrix.Norms.Operator
```

The two topology properties are still the finite-function-space proofs approved in audit 1. They install no competing norm data.

For `dup : ℂ →L[ℂ] Matrix (Fin 1) (Fin 2) ℂ`, `dup z = [[z,z]]`, the independent replay proves:

| Context | Result |
|---|---|
| `Matrix.Norms.Operator` | `‖dup z‖ = 2 * ‖z‖` and `‖dup‖ = 2`. |
| `Matrix.Norms.Elementwise` | `‖dup z‖ = ‖z‖`; explicit elementwise `ContinuousLinearMap.opNorm dup = 1`. |
| No norm scope | `Norm (ℂ →L[ℂ] M)` is not synthesized. |
| Elementwise scope alone | `Norm (ℂ →L[ℂ] M)` is not synthesized; in particular the row-sum derivative norm does not leak here. |

The absence of the bare derivative `Norm` in the last two rows is intentional. This audit does not claim the fix introduces a new elementwise derivative-norm API. The explicit elementwise operator norm remains usable when its matrix normed structures are supplied. The two valid numeric values now belong to explicitly selected norm conventions; the erroneous global selection is gone.

Exact independent numeric/negative probe, compiled with exit 0 and empty output:

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

open scoped Matrix.Norms.Operator in
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


section
example : True := by
  fail_if_success (have _ : Norm (ℂ →L[ℂ] M) := inferInstance)
  trivial
end
section
open scoped Matrix.Norms.Elementwise
example : True := by
  fail_if_success (have _ : Norm (ℂ →L[ℂ] M) := inferInstance)
  trivial
end

```

The supplied `.lake/abi-scratch/p21a_probe.lean` was read and independently rerun unchanged. Its `fail_if_success` tests check absence of the bare norm in unscoped and Elementwise contexts. Its Operator section verifies the synthesized instance is definitionally the KAM norm constructor; proves both basic operator-norm inequalities; applies Cauchy with the derivative norm, `increments_mvt`, `increments` with a row-sum input/output bound, and `taylor_iteratedFDeriv` with a pair-space domain and matrix target. It also computes the derivative of LᵀL using the package's product/transpose rules. These are actual consumer applications, not merely declaration reachability or class synthesis.

Exact supplied-probe stdout:

```text
KAM.instSecondCountableTopologyMatrix
KAM.instIsNormableSpaceMatrix
KAM.instNormContinuousLinearMapMatrix
```

## Signature and semantic preservation after the merge

The entire `Torus/Basic.lean`, `Torus/Objects.lean`, `PART23-LEAN-DESIGN.md` and `p2-aposteriori.tex` are byte-identical to the first audit snapshot. Appendix A §T1/§T2 contains the following **28** package declarations, all unchanged:

```text
sumVec, norm_sumVec, colMat, sqMat, norm_colMat, colMat_mulVec, norm_sqMat, sqMat_mulVec, IsPeriodicOn, IsRealVec, IsRealMat, avg, cauchy_transpose_fintype, tangentMat, linMat, lagrangeMat, normalMat, frameMat, normalFieldMat, symDefect, reducer, eta, etaL, etaN, errDerivMat, triangularMat, redDefect, eta_eq_sumElim
```

For `Calculus.lean`, I stripped comments with the repository's `scripts/check_lean_modules.py:code_mask`, normalized whitespace, replaced the old `instance instNormContinuousLinearMapMatrix` token sequence by `@[instance_reducible] def instNormContinuousLinearMapMatrix`, and removed the new scoped registration block from the new side. The remaining code is exactly equal. Therefore no calculus theorem statement or proof body, section binder, map body, or norm constructor body changed. The only executable delta is the requested definition/registration change.

Exact comparison output:

```text
Calculus code equality: PASS after only the declared def/attribute registration change.
Seven core semantic dependencies: byte-identical to audit 1.
```

Those seven dependencies are `KAM/Matrix/{Norms,Bridges}.lean`, `KAM/Strip/{Bridges,Cauchy,Averages}.lean`, and frozen definitions `GramMatrix.lean`, `InvarianceError.lean`. The merge does add modules from main, including Taylor and increments, but does not alter these meaning-carrying inputs. No Appendix A signature changed, no new hypothesis was introduced, and no conclusion was weakened.

Definition classification remains literal throughout: the 29 original literal definitions/abbreviations retain the body/carrier PASS of audit 1, and the norm constructor is now a thirtieth ordinary definition rather than a global instance. It literally returns the row-sum operator-norm structure; it has no choice/fallback branch. The remaining two instances are correct topology properties. There are no new characterization-defined objects or deferred semantics. The adopted source-domain/totality conventions L1/L2/L9 are unchanged.

The replay `.lake/abi-scratch/P21aDeltaConsumer.lean` was reconstructed from the exact successful consumer snippet in audit 1 and rerun. It proves the 2n δ⁻¹ A transpose bound for maps into the frozen pair carrier, including derivative transport by `sumVec`, and the identity `gramMatrix K θ = (tangentMat K θ)ᵀ * tangentMat K θ` on the whole carrier. Exit 0; empty output.

## Hygiene and exact checks

Lean commands ran one at a time with `nice -n 5`, default budgets and the existing worktree build snapshot. No whole-library rebuild, clean, merge, checkout or shared-package mutation was performed.

| Command | Exit and output |
|---|---|
| `nice -n 5 lake build KAM.Matrix.Calculus KAM.Torus.Basic KAM.Torus.Objects KAM.Strip.Taylor KAM.Strip.Increments` | 0; `Build completed successfully (2888 jobs).` |
| `nice -n 5 lake env lean .lake/abi-scratch/p21a_probe.lean` | 0; exact three-line stdout above. |
| `nice -n 5 lake env lean .lake/abi-scratch/P21aDeltaNumbers.lean` | 0; empty stdout. |
| `nice -n 5 lake env lean .lake/abi-scratch/P21aDeltaConsumer.lean` | 0; empty stdout. |
| `nice -n 5 lake env lean .lake/abi-scratch/P21aDeltaAxioms.lean > .lake/abi-scratch/P21aDeltaAxioms.log` | 0; full output below. All 75 package exports checked: 43 theorems, 30 definitions/abbreviations, 2 global property instances. |
| `sh scripts/lint_sources.sh` | 0; `check_lean_modules: PASS (217 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (144 frozen declarations)`. |
| `git diff main...HEAD -- KAM/Frozen manifest` | 0; empty stdout. Main's merged additions to other tracks are not package edits to protected files. |
| `git diff --check` | 0; empty stdout. |
| `wc -l KAM/Matrix/Calculus.lean KAM/Torus/Basic.lean KAM/Torus/Objects.lean` | 323, 210, 129; 662 total; all below the 1500 code-line cap. |

Module headers, public exposed sections and import quarantine remain valid. The repository linter checks forbidden proof escapes and resource overrides as well as generated-file and frozen-anchor integrity. No package theorem depends on a project axiom or `sorryAx`.

Exact axiom stdout:

```text
'KAM.matMulCLM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulVecCLM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulVecCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matEntryCLM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulRightCLM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulRightCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulVecRightCLM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matMulVecRightCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matEntryCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matTransposeCLE' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matTransposeCLE_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matTransposeCLM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matTransposeCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.instSecondCountableTopologyMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.instIsNormableSpaceMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.instNormContinuousLinearMapMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
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
'KAM.Torus.sumVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sumVec_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.norm_sumVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sumVecIso' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sumVecIso_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sumVec_symm_apply_sumVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.colMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sqMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.norm_colMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.colMat_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.norm_sqMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.sqMat_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.IsPeriodicOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.IsRealVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.IsRealMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.avg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.cauchy_transpose_fintype' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.primary_coordinatewise' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.isRealVec_sumVec_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.dotℂ_eq_dotProduct_sumVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.differentiableAt_sumVec_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.fderiv_sumVec_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
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
'KAM.Torus.omegaZeroMatrix_mulVec_sumElim' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Torus.eta_eq_sumElim' depends on axioms: [propext, Classical.choice, Quot.sound]

```

## Limits and handoff

This is a delta approval of P2-1a at `2246631`, not an audit of unrelated packages merged from main and not a frozen G1/G2 closure claim. The distinction between a bare derivative `Norm` and a complete normed-group structure on the default-topology CLM remains as described in audit 1; all requested row-sum applications now have compiled evidence. No suspected source erratum or new deviation was found. F1's scoped norm requirement is satisfied.

The original auditor report, supplied handoff and supplied prover probe were preserved. All four auditor-created scratch artifacts (three Lean probes and the axiom output log) were removed after capture. Only `docs/campaign/audits/P2-1a-audit-2.md` is the new deliverable.
