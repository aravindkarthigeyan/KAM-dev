# P2-6 independent audit 1

Overall verdict: **PASS**.

Audited branch `k/p2-6`, HEAD `8b7b475a5b4cdce96e7fc2dd3f2f7463feb1c787`, against
`main` at `6e8f7313e5501ba99f93bf5fe14b4f25be64d1ad`. Scope: Part 2 frame identities,
`KAM/Apost/Identities.lean`, following `AUDIT-PACKAGE.md` and the handoff's AUDIT FOCUS.
Read the owner rules, PLAN, DECISIONS, common/package briefs, binding design, graph contracts,
and blueprint statements and proof steps directly. No proof or statement was changed.

## Statement and node fidelity

The text from `theorem frame_identities` through its conclusion, excluding the proof assignment,
is byte-identical to design Appendix A, lines 1056–1076. Independently compared with
`blueprint/parts/p2-aposteriori.tex:441–463` and the eight graph contracts in
`docs/graph/K/DEPGRAPH.md:5705–5933`.

In this table, helper names are qualified by `KAM.Apost.Identities.`; the main export is
qualified explicitly. All Lean line locators refer to `KAM/Apost/Identities.lean`.

| Node | Lean declaration(s) and lines | Verdict | Reason |
|---|---|---|---|
| `bp:p2:frame-identities` | `KAM.Apost.frame_identities`, 445–471 | PASS | Every premise, binder order and all six conclusions match Appendix A and the blueprint. |
| `step:p2:fi-products` | `alg_LtON`, 69; `alg_NtOL`, 75; `alg_NtON`, 82; `fi_LtON`, 163; `fi_NtOL`, 168; `fi_NtON`, 173 | PASS | Correct signs and bilinear transposes. Both inverse identities and symmetry of B are proved from the Gram definition and invertibility. |
| `step:p2:fi-sym` | `alg_PtOP`, 89; `alg_symDefect`, 98; `fi_PtOP`, 180; `fi_symDefect`, 186 | PASS | All four blocks agree; subtracting Ω₀ leaves exactly diag(Ω_K, B Ω_K B). |
| `step:p2:fi-dl` | `fderiv_tangentMat_apply`, 243; `fderiv_tangent_column_omega`, 257; `fi_dL`, 269 | PASS | Mixed partials commute by holomorphic regularity; the chain rule gives A L − DE with the frozen error's sign. |
| `step:p2:fi-domegak` | `alg_dLagrange`, 110; `fi_dLagrange`, 292 | PASS | Product/transpose differentiation and AᵀΩ₀ + Ω₀A = 0 give precisely the two negative error terms. |
| `step:p2:fi-blocks` | `alg_reduced`, 403; `fi_reduced`, 415 | PASS | Whole-matrix block multiplication gives the four stated blocks; `hXP` at 424–428 proves X_L = DE. The torsion identification is proved by the existing frozen-agreement lemma. |
| `step:p2:fi-22` | `fi_dLtON`, 359; `alg_LtOXN`, 124; `fi_LtOXN`, 383 | PASS | The constant product identity is differentiated on a neighborhood inside the open strip, then (c) and Hamiltonian symplecticity give LᵀΩ₀X_N = −DEᵀΩ₀N. The reduced block consequently has the positive sign DEᵀΩ₀N. |
| `step:p2:fi-q` | `fi_QP`, 192; `fi_QE`, 200 | PASS | QP and QE follow with the exact signs. The step's additional block form of η is already proved by `KAM.Torus.eta_eq_sumElim` in `KAM/Torus/Objects.lean:121`. |

`Standing` is the inherited source assumption of Part 2, not an extra analytic premise:
its fields in `KAM/Apost/Standing.lean:41–63` match the standing assumption at blueprint
lines 56–65. The explicit positive strip width follows Part 0's convention and design L5;
the proof notes this at Lean lines 465–466. There is no primary-torus, invariance,
smallness, twist, or Lagrangian hypothesis added to the theorem. There are no existential
constants whose dependence or quantifier scope could change.

Vectors retain the frozen product carrier; `sumVec` supplies the prescribed conversion to
`Fin n ⊕ Fin n` vectors in QE. Transposes are ordinary bilinear transposes, not conjugate
transposes. Matrix differentiability uses the declared operator norm scope (line 47),
with no norm substitution or change of strip.

## Hypotheses, definitions and proof checks

There are **no new `def`, `abbrev`, or `structure` declarations** in this package's Lean
module; it contains 35 theorems. Its imported objects are the existing mathematical
definitions in `KAM/Torus/Objects.lean:56–112` and the frozen definitions. In particular,
`redDefect` contains exactly the blueprint's three nonzero blocks; `triangularMat` has
only the upper-right torsion block. Defining `symDefect` by subtraction does not hide
the substantive diagonal-form assertion, which is proved separately.

The total inverse and `fderiv` conventions do not supply spurious proofs. Inverse
cancellation is guarded by `hG`. Holomorphy of the normal frame is established via
`differentiableOn_normalMat hK hG`, including the inverse's holomorphy. All differentiated
identities use differentiability at points of the open strip. In `fi_dLtON:373–378`,
the product equals the constant −I on a neighborhood, not merely at the point.
Some purely algebraic identities hold on the whole total carrier even without
invertibility; their stronger helper signatures are legitimate.

Items (a), (b), (f) require at most pointwise `hG`; `fi_NtON`, `fi_PtOP`, `fi_QP`,
and `fi_QE` require even fewer assumptions. Items (c), (d), (e) use only the stated
holomorphy/domain/standing data, with `hG` for the normal-frame calculus in (e).
The abstract helpers' premises `hLB`, `hBL`, `hB`, `hA`, and `h0` are proved at their
concrete call sites. In particular `h0` is obtained from `fi_dLtON` and `fi_dL` at
lines 391–393. No hard step is assumed by the main theorem or by a bundled field.

The proof follows the blueprint's algebraic and derivative route. It uses
holomorphic regularity, matrix calculus, Hamiltonian symplecticity, and the
previously proved frozen-agreement lemmas. There is no provider or frozen-theorem
shortcut. This is not a provider package; the provider/frozen exact-type probe is
**not applicable**.

## Independently executed checks

All Lean invocations were serialized and used default resource limits.

1. `nice -n 5 lake build KAM.Apost.Identities` — exit 0:

   ```text
   Build completed successfully (2899 jobs).
   ```

2. `nice -n 5 lake env lean KAM/Apost/Identities.lean` — exit 0, no output.
   This fresh elaboration supplements the cached targeted build.

3. `sh scripts/lint_sources.sh` — exit 0, complete output:

   ```text
   check_lean_modules: PASS (224 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

4. `nice -n 5 lake env lean .lake/abi-scratch/P26Audit.lean` — exit 0.
   The probe imported `KAM.Apost.Identities` and issued `#print axioms` for every
   theorem in the module. Every one of the following 35 results printed exactly
   `[propext, Classical.choice, Quot.sound]`; no additional axiom occurred:

   ```text
   KAM.Apost.Identities.omega_mul_omega_mul
   KAM.Apost.Identities.alg_LtON
   KAM.Apost.Identities.alg_NtOL
   KAM.Apost.Identities.alg_NtON
   KAM.Apost.Identities.alg_PtOP
   KAM.Apost.Identities.alg_symDefect
   KAM.Apost.Identities.alg_dLagrange
   KAM.Apost.Identities.alg_LtOXN
   KAM.Apost.Identities.gram_inv_transpose
   KAM.Apost.Identities.tangent_gram_inv
   KAM.Apost.Identities.gram_inv_tangent
   KAM.Apost.Identities.fi_LtON
   KAM.Apost.Identities.fi_NtOL
   KAM.Apost.Identities.fi_NtON
   KAM.Apost.Identities.fi_PtOP
   KAM.Apost.Identities.fi_symDefect
   KAM.Apost.Identities.fi_QP
   KAM.Apost.Identities.fi_QE
   KAM.Apost.Identities.colMat_apply
   KAM.Apost.Identities.differentiableAt_fderiv_apply
   KAM.Apost.Identities.differentiableAt_ham_comp
   KAM.Apost.Identities.differentiableAt_invarianceError
   KAM.Apost.Identities.fderiv_tangentMat_apply
   KAM.Apost.Identities.fderiv_tangent_column_omega
   KAM.Apost.Identities.fi_dL
   KAM.Apost.Identities.fi_dLagrange
   KAM.Apost.Identities.fromCols_sub_fromCols
   KAM.Apost.Identities.differentiableOn_frameMat
   KAM.Apost.Identities.fderiv_frameMat
   KAM.Apost.Identities.fi_dLtON
   KAM.Apost.Identities.fi_LtOXN
   KAM.Apost.Identities.omega_mul_fromBlocks
   KAM.Apost.Identities.alg_reduced
   KAM.Apost.Identities.fi_reduced
   KAM.Apost.frame_identities
   ```

   In particular the exact main-result output was:

   ```text
   'KAM.Apost.frame_identities' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

5. Signature comparison and line count:

   ```sh
   python3 - <<'PY'
   from pathlib import Path
   p=Path('KAM/Apost/Identities.lean').read_text()
   d=Path('docs/campaign/design/PART23-LEAN-DESIGN.md').read_text()
   print('frame_identities signature byte equality:', p[p.index('theorem frame_identities'):].split(' := by',1)[0] == d[d.index('theorem frame_identities'):].split(' := sorry',1)[0])
   PY
   wc -l KAM/Apost/Identities.lean
   ```

   Output, exit 0:

   ```text
   frame_identities signature byte equality: True
   477 KAM/Apost/Identities.lean
   ```

6. `git diff main...HEAD -- KAM/Frozen manifest` and
   `git diff --check main...HEAD` — both exit 0; no diff or whitespace-error output.
   Both print this Git diagnostic:

   ```text
   warning: main...HEAD: multiple merge bases, using d90f4c6a67d1e19bcf9e79f3158da91c12bf5d4b
   ```

   `git diff main...HEAD` includes inherited P2-4/input work. To isolate authorship,
   `git diff ced5467^..HEAD --stat` shows exactly `Identities.lean` (477 added lines)
   and its generated root import (one added line). No frozen or manifest change is
   present. The multiple-base warning is a comparison-scope note, not a package defect.

The module has its copyright, `module`, imports, module documentation and public
section. The lint and direct source inspection found no forbidden proof escape,
resource override, ambient type, or quarantined import. No file exceeds the cap.

## Findings, errata, deviations and limits

No blocking, major, or minor package defect found; no corrective change proposed.
No suspected blueprint defect or newly introduced deviation found. Positive-width
explicitness is the documented design L5 convention; the stronger helper signatures
above do not weaken the exported contract.

This audit checks the current blueprint/design contracts and their Lean implementation.
It does not independently re-audit the historical HL19/GJLV05 PDF attributions or
claim closure of G1 or G2. The handoff's separate kernel-replay claim was not rerun;
the independent evidence here is targeted build, fresh elaboration, axiom inspection,
and lint. No unresolved uncertainty remains for the scoped package verdict.

Only this report was added by the auditor. The temporary axiom probe was deleted;
the pre-existing untracked handoff was preserved. No state-changing Git operation
was performed.
