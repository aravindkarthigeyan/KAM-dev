# I-MAT independent audit 1

Overall verdict: **PASS WITH NOTES**.

Audited branch `k/mat`, commit `e10f94694fdc7e40f929fc88ecec38abe4d1b21a`, on 2026-10-27.
All 13 assigned result/step nodes pass mathematical statement and proof hygiene review.
No blocking or major finding. Two minor findings concern branch hygiene and documentation.

## Scope and method

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `AUDIT-PACKAGE.md`,
`PROVER-COMMON.md`, `I-MAT.md`, and `I-MAT-handoff.md`. Compared `git diff main...HEAD`
and inspected both new modules in full. Compared every node against its contract in
`docs/graph/K/DEPGRAPH.md` and the literal blueprint statement/proof, not just its title.
Read `KAM/Matrix/Neumann.lean` and the frozen `OmegaZero`, `GramMatrix`, and `NormalFrame`
definitions for norm and consumer compatibility. No provider belongs to this package.

Files audited: `KAM/Matrix/Norms.lean` (444 lines), `KAM/Matrix/Inverse.lean` (171 lines).
Other branch changes are the two generated root imports and a tracked Python cache binary.
The auditor's only repository-content write is this report; temporary probes were placed in
`.lake/abi-scratch/` and removed after recording their contents/results below. No git state-changing
command, source repair, frozen edit, root regeneration, or full-library build was performed.

## Node-by-node statement fidelity

All names below are fully qualified. `N` means `KAM/Matrix/Norms.lean`, `I` means
`KAM/Matrix/Inverse.lean`; source lines refer to `blueprint/parts/p1-analysis.tex`.

| Node | Lean declaration and locator | Verdict | Comparison with blueprint |
|---|---|---|---|
| `bp:p1:operator-norms` | `KAM.operator_norms`, N:305 | PASS (note M2) | Source 117–121: all compatible complex matrices/blocks; induced max norm, block bound, Ω₀ transpose/square/norm. Adds attained supremum, CLM norm equality and frozen-map bridge. Positive dimension is sufficient under Part 0. |
| `step:p1:opn-rowsum` | `KAM.matrix_operator_norm_rowSum`, N:273 | PASS | Source 124–131: all p,q,M; `IsGreatest` is stronger than the stated supremum equality; row-sum and CLM norms agree. General CLM-to-matrix equality additionally proved at N:168. |
| `step:p1:opn-blocks` | `KAM.matrix_operator_norm_blocks`, N:282 | PASS | Source 133–136: four arbitrary compatible block sizes, identical maximum of the two sums, no extra hypotheses. |
| `step:p1:opn-omega` | `KAM.matrix_operator_norm_omegaZero`, N:290 | PASS (note M2) | Source 138–143: correct signs and square; includes action equality with frozen Ω₀. Norm one under `0 < n`; Part 0 assumes n ≥ 2. Row-sum-one helper is N:246. |
| `bp:p1:matrix-norms` | `KAM.matrix_norms`, N:429 | PASS | Source 146–151: all six claims retained, including m (number of rows) in transpose bound and exact vertical-stack maximum. |
| `step:p1:mn-products` | `KAM.matrix_norm_products`, N:327 | PASS | Source 154–158: arbitrary compatible matrices/vectors, both bounds with constant one. |
| `step:p1:mn-transpose` | `KAM.matrix_norm_transpose`, N:349 | PASS | Source 160–163: entry bound and transpose bound `m * ‖M‖` for m-by-m′, no dimension-factor swap. |
| `step:p1:mn-signed` | `KAM.matrix_norm_signed`, N:417 | PASS | Source 165–172: left/right Ω₀ products with distinct rectangular sizes and arbitrary vertical stacks; exact equalities. |
| `bp:p1:real-inverse` | `KAM.real_inverse`, I:82 | PASS | Source 203–206: arbitrary real invertible complex matrix; also every real argument of a matrix function. Reality expressed by an actual real preimage; invertibility is `IsUnit`. |
| `step:p1:ri-adjugate` | `KAM.real_inverse_adjugate`, I:62 | PASS | Source 209–213: nonzero determinant, real determinant/adjugate, Cramer identity and real inverse. The pointwise application is included in `real_inverse` I:86–92. |
| `bp:p1:holomorphic-inverse` | `KAM.holomorphic_inverse`, I:159 | PASS | Source 402–405: open V, differentiability on V and nonvanishing determinant; holomorphy and the full directional derivative identity at every z ∈ V. |
| `step:p1:hi-holomorphic` | `KAM.holomorphic_inverse_differentiableOn`, I:124 | PASS | Source 410–414: Cramer identity and holomorphy. Stronger: no openness assumption for within-set differentiability. |
| `step:p1:hi-derivative` | `KAM.fderiv_matrix_inv_apply`, I:135 | PASS | Source 416–420: open V, z ∈ V, every direction v; exact order and minus sign `-(A⁻¹ * DA(v) * A⁻¹)`. |

There are no existential estimate constants whose dependency order could widen. Sizes, matrices,
sets, base points, and directions are universally quantified as appropriate. The two inverse
helpers require only the source invertibility/nonvanishing and differentiability premises.
`IsUnit A` is ordinary invertibility, not an assumed inverse formula. No instance, structure field,
or premise contains an unpaid conclusion.

The generalized domain E of the holomorphic results is any complex normed space. This includes
`Fin m → ℂ` without adding a mathematical restriction to the source setting; the independent
usage probe specializes it to that carrier. Square matrices remain `Matrix (Fin p) (Fin p) ℂ`.

## Definition classification and totality

Exactly one new `def`, and no new `abbrev` or `structure`, occurs in the two modules:

| Definition | Classification | Whole-carrier assessment |
|---|---|---|
| `KAM.omegaZeroMatrix` (N:208–209) | Intended canonical symplectic matrix | Literally `Matrix.fromBlocks 0 (-1) 1 0` on `Fin n ⊕ Fin n`; correct for every n, including the empty matrix at n=0. No fallback or junk branch. Exposed through `@[expose] public noncomputable section`. |

`Equiv.sumArrowEquivProdArrow` is the canonical identification of phase-space pairs with sum-indexed
vectors; both use the maximum over the same coordinates. `omegaZeroMatrix_mulVec` (N:213–225)
proves equality of the action with frozen `omegaZero`, and `norm_omegaZero` (N:263–264) proves
norm preservation on the frozen product carrier. This representation does not change the norm.
The transpose in the matrix lemmas is bilinear transpose, consistent with `gramMatrix`, rather
than conjugate transpose. The frozen normal-frame formula uses the same Ω₀ sign and inverse.
No Gram/frame bridge is claimed proved by this package.

The row-sum test vector (N:109–121) uses complex division by the norm; at a zero entry its value
is exactly zero, as intended, and both zero/nonzero cases are proved. This is a local proof witness,
not an auxiliary definition that hides a premise. Matrix inverse totality at singular matrices is
never used to establish a source inverse claim: I:69,129,138 derive determinant/unit guards.
For the derivative, openness and z ∈ V establish differentiability at z (I:140); no zero fallback
of `fderiv` is used. The unconditional algebraic Cramer formula is legitimate also at singular
matrices because Lean's totalized determinant inverse is zero there.

## Proof and dependency review

The norm proofs use row sums, signed permutations and explicit finite sums, matching the
blueprint's mathematics. Products use the Mathlib lemmas expressly named by the blueprint.
The real-inverse proof uses determinant/adjugate naturality and Cramer's rule.
The holomorphy and derivative proofs use Mathlib normed-algebra inversion and its chain rule;
these are expressly named in blueprint 414 and 420. Although the proof is not the blueprint's
literal polynomial/product-rule derivation, it neither contradicts the blueprint nor assumes
the desired result. Checked Mathlib `Analysis/Calculus/FDeriv/Mul.lean:652–705`:
`hasFDerivAt_ringInverse` requires the ordinary normed-algebra/geometric-series instances;
its application introduces no package-specific analytic premise. I:148–154 identifies matrix
inverse with ring inverse and reduces the linear-map application by `rfl`. The independently
elaborated directional identity below confirms the exported statement in the selected operator
norm. No extra topology or conclusion-shaped class is a theorem argument.

Neither new module imports a provider or a frozen theorem. Only the frozen Ω₀ definition is
imported; no shortcut through a DRAFT_SORRY anchor occurs. Provider exact-type probe: **not
applicable**, since I-MAT is infrastructure and has no frozen theorem/provider pair.

## Independently run checks

Commands were serialized whenever Lean could execute. All commands below ran in
`/root/code/KAM-w-mat` at default resource settings. Build output's job count includes cached
dependencies; no clean or from-scratch library rebuild was requested.

1. `nice -n 5 lake build KAM.Matrix.Norms KAM.Matrix.Inverse` — exit 0:

   ```text
   Build completed successfully (2538 jobs).
   ```

2. `sh scripts/lint_sources.sh` — exit 0:

   ```text
   check_lean_modules: PASS (177 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (140 frozen declarations)
   ```

3. `git diff --exit-code main...HEAD -- KAM/Frozen manifest KAM/Matrix/Neumann.lean`
   — exit 0, no output. Frozen files, manifest and the assigned read-only predecessor are unchanged.

4. `git diff --check main...HEAD` and `git diff --check` — both exit 0, no output.

5. `wc -l KAM/Matrix/Norms.lean KAM/Matrix/Inverse.lean` — exit 0:

   ```text
     444 KAM/Matrix/Norms.lean
     171 KAM/Matrix/Inverse.lean
     615 total
   ```

6. `rg -n 'set_option|sorry|admit|axiom|unsafe|opaque|EuclideanSpace|KAM\.(Provider|Frozen\.Theorems)' KAM/Matrix/Norms.lean KAM/Matrix/Inverse.lean`
   — no matches (rg exit 1). Both files have copyright, `module`, interface imports,
   module docstring, and public section. The lint independently checks module and escape rules.
   The root diff adds only public imports of `KAM.Matrix.Inverse` and `KAM.Matrix.Norms`;
   `gen_root_imports.py --check`, invoked by lint, passes.

7. `git diff main...HEAD --numstat` — exit 0:

   ```text
   2       0       KAM.lean
   171     0       KAM/Matrix/Inverse.lean
   444     0       KAM/Matrix/Norms.lean
   -       -       scripts/__pycache__/check_lean_modules.cpython-312.pyc
   ```

8. `nice -n 5 lake env lean .lake/abi-scratch/I-MAT-audit-1.lean > .lake/abi-scratch/I-MAT-audit-1.out`
   — final run exit 0. Probe source and complete output follow. It queried every theorem
   in both modules (45), including all 13 mapped nodes, and elaborated four usage examples.
   An initial auditor-generated query accidentally omitted the final apostrophe in
   `norm_continuousLinearMap_eq_norm_toMatrix'` and exited 1 with `Unknown constant`;
   corrected only that probe identifier and reran successfully. No package-source failure.

### Probe source

```lean
import KAM.Matrix.Norms
import KAM.Matrix.Inverse
open scoped Matrix.Norms.Operator
#print axioms KAM.norm_le_iff_forall_rowSum
#print axioms KAM.rowSum_le_norm
#print axioms KAM.norm_entry_le
#print axioms KAM.norm_eq_iSup_rowSum
#print axioms KAM.exists_rowSum_eq_norm
#print axioms KAM.norm_eq_of_rowSum_eq
#print axioms KAM.norm_mulVec_apply_le_rowSum
#print axioms KAM.exists_mulVec_apply_eq_rowSum
#print axioms KAM.isGreatest_norm_mulVec
#print axioms KAM.sSup_norm_mulVec_eq
#print axioms KAM.norm_toContinuousLinearMap_mulVecLin
#print axioms KAM.norm_continuousLinearMap_eq_norm_toMatrix'
#print axioms KAM.norm_fromBlocks_le
#print axioms KAM.omegaZeroMatrix_mulVec
#print axioms KAM.omegaZero_omegaZero
#print axioms KAM.omegaZeroMatrix_mul_self
#print axioms KAM.omegaZeroMatrix_transpose
#print axioms KAM.sum_norm_omegaZeroMatrix_apply
#print axioms KAM.norm_omegaZeroMatrix
#print axioms KAM.norm_omegaZeroMatrix_le
#print axioms KAM.norm_omegaZero
#print axioms KAM.matrix_operator_norm_rowSum
#print axioms KAM.matrix_operator_norm_blocks
#print axioms KAM.matrix_operator_norm_omegaZero
#print axioms KAM.operator_norms
#print axioms KAM.matrix_norm_products
#print axioms KAM.norm_transpose_le_card_mul
#print axioms KAM.matrix_norm_transpose
#print axioms KAM.omegaZeroMatrix_mul_apply_inl
#print axioms KAM.omegaZeroMatrix_mul_apply_inr
#print axioms KAM.mul_omegaZeroMatrix_apply_inl
#print axioms KAM.mul_omegaZeroMatrix_apply_inr
#print axioms KAM.norm_omegaZeroMatrix_mul
#print axioms KAM.norm_mul_omegaZeroMatrix
#print axioms KAM.norm_fromRows
#print axioms KAM.matrix_norm_signed
#print axioms KAM.matrix_norms
#print axioms KAM.det_map_ofReal
#print axioms KAM.adjugate_map_ofReal
#print axioms KAM.real_inverse_adjugate
#print axioms KAM.real_inverse
#print axioms KAM.differentiableOn_matrix_iff_entries
#print axioms KAM.holomorphic_inverse_differentiableOn
#print axioms KAM.fderiv_matrix_inv_apply
#print axioms KAM.holomorphic_inverse

example {n : ℕ} (hn : 2 ≤ n) : ‖KAM.omegaZeroMatrix n‖ = 1 :=
  KAM.norm_omegaZeroMatrix (lt_of_lt_of_le (by decide : 0 < 2) hn)
example : ‖KAM.omegaZeroMatrix 0‖ = 0 := by
  apply le_antisymm _ (norm_nonneg _)
  exact (KAM.norm_le_iff_forall_rowSum (by rfl : (0 : ℝ) ≤ 0)).2
    (fun i => nomatch i)
example {m p : ℕ} {V : Set (Fin m → ℂ)} {A : (Fin m → ℂ) → Matrix (Fin p) (Fin p) ℂ}
    (hV : IsOpen V) (hA : DifferentiableOn ℂ A V)
    (hdet : ∀ z ∈ V, (A z).det ≠ 0) {z : Fin m → ℂ} (hz : z ∈ V) (v : Fin m → ℂ) :
    fderiv ℂ (fun w => (A w)⁻¹) z v = -((A z)⁻¹ * fderiv ℂ A z v * (A z)⁻¹) :=
  KAM.fderiv_matrix_inv_apply hV hA hdet hz v
example {m p : ℕ} {V : Set (Fin m → ℂ)} {A : (Fin m → ℂ) → Matrix (Fin p) (Fin p) ℂ}
    (hA : ∀ i j, DifferentiableOn ℂ (fun z => A z i j) V)
    (hdet : ∀ z ∈ V, (A z).det ≠ 0) :
    DifferentiableOn ℂ (fun z => (A z)⁻¹) V :=
  (KAM.holomorphic_inverse_differentiableOn
    (KAM.differentiableOn_matrix_iff_entries.mpr hA) hdet).2
```

### Complete successful probe output

```text
'KAM.norm_le_iff_forall_rowSum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.rowSum_le_norm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_entry_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_eq_iSup_rowSum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.exists_rowSum_eq_norm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_eq_of_rowSum_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_mulVec_apply_le_rowSum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.exists_mulVec_apply_eq_rowSum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.isGreatest_norm_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.sSup_norm_mulVec_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_toContinuousLinearMap_mulVecLin' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_continuousLinearMap_eq_norm_toMatrix'' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_fromBlocks_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.omegaZeroMatrix_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.omegaZero_omegaZero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.omegaZeroMatrix_mul_self' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.omegaZeroMatrix_transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.sum_norm_omegaZeroMatrix_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_omegaZeroMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_omegaZeroMatrix_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_omegaZero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matrix_operator_norm_rowSum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matrix_operator_norm_blocks' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matrix_operator_norm_omegaZero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.operator_norms' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matrix_norm_products' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_transpose_le_card_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matrix_norm_transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.omegaZeroMatrix_mul_apply_inl' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.omegaZeroMatrix_mul_apply_inr' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.mul_omegaZeroMatrix_apply_inl' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.mul_omegaZeroMatrix_apply_inr' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_omegaZeroMatrix_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_mul_omegaZeroMatrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_fromRows' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matrix_norm_signed' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.matrix_norms' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.det_map_ofReal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.adjugate_map_ofReal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.real_inverse_adjugate' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.real_inverse' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.differentiableOn_matrix_iff_entries' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.holomorphic_inverse_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.fderiv_matrix_inv_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.holomorphic_inverse' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Every queried theorem has exactly the allowed set of axioms. There is no `sorryAx` or frozen
unproved theorem dependency. The four examples produce no diagnostics. The n=0 probe verifies
the endpoint that motivates the positive-dimension condition; the n≥2 probe verifies the
blueprint specialization. Probe source and captured output were deleted after inclusion here.

## Findings and proposed fixes

### M1 — minor: compiled Python cache included in the branch

Evidence: `git diff --name-status main...HEAD` contains
`scripts/__pycache__/check_lean_modules.cpython-312.pyc`; the binary diff changes object
`181b969` to `962bb62`. This is unrelated to any matrix node and is not reproducible Lean
source evidence. It was already present in the audited commit, not introduced by this report.

Proposed fix: the orchestrator should exclude this cache change when landing the matrix
package, and consider a separate repository-wide decision on tracking Python caches.
No proof correctness impact; the auditor did not alter git state to repair it.

### M2 — minor: make the inherited dimension convention explicit in the bundle documentation

Evidence: source `p1-analysis.tex:120,143` says `|Ω₀|=1`; the standing convention is
`p0-conventions.tex:11`, “n ≥ 2 is the number of degrees of freedom”. N:290–299 explicitly
proves the equality for `0 < n`, and its docstring says “for n ≥ 1; the empty matrix has norm 0”.
This is mathematically stronger on the intended carrier than the standing n≥2 source claim;
the successful probe derives that specialization. However, the bundle docstring N:301–304
states norm one without repeating either the positivity condition or the Part 0 convention.

Proposed fix: add a sentence to that docstring (and preferably the step docstring) explicitly
linking positivity to Part 0's n≥2 convention. No theorem change is needed. This is documentation
of an allowed standing convention, not permission to silently strengthen a source premise.

## Errata, deviations and uncertainties

No suspected pinned-source defect was found in this matrix package; no errata ledger edit
is proposed. The n=0 distinction is covered by the source's standing convention, not a source
counterexample. The generalized complex normed-space domain, empty-dimension extensions,
sum-indexed matrix representation, and use of Mathlib inversion are faithful generalizations
or proof choices described above, not weakened source results. The auditor introduced no
mathematical deviation.

No unresolved mathematical uncertainty remains for the 13 audited nodes. This audit certifies
only this infrastructure package at the stated commit; it does not assert frozen-root closure
or prove later Gram/frame consumer bridges. No changes were made to the prover's code.
