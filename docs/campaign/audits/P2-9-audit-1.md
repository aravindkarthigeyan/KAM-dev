# P2-9 independent audit 1

**Verdict: PASS WITH NOTES.** No blocking or major finding. The Newton-error theorem has the binding design's exact signature, the four definitions have its exact bodies, and the proof supplies the claimed estimate without additional analytic assumptions or forbidden axioms. One minor handoff traceability finding is recorded below.

## Scope and evidence

Audited checkout: `e03dea12a7bfb556ff4b9860cf7b7685d593105f` on `k/p2-9`.
Package commit: `7374286a9ea69f5539c5134f98700223ebe8ebea`.
Comparison ref: `k/p2-8b = 9e46b02f9b5874273d083895767634d8c7454dc5`.

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the audit/package/common briefs, the supplied P2-9 handoff, design §§0–5 and Appendix A's Newton-error declarations, the eight graph contracts, and blueprint `p2-aposteriori.tex:723–785`. Inspected the entire 493-line `KAM/Apost/NewtonError.lean` and the relevant predecessor contracts and implementations.

The requested `git diff k/p2-8b...HEAD` reports:

```text
warning: k/p2-8b...HEAD: multiple merge bases, using 24bf3c3dffe878bd6548558575ca9fc0241b823e
```

Its stat is 24 files, 3819 insertions, 141 deletions. It contains merged main work and the predecessor correction module. This is not a 24-file P2-9 proof patch: `git show --stat 7374286` identifies only `NewtonError.lean` (493 lines) and its generated root import (one line). `git diff --quiet 7374286 HEAD -- KAM/Apost/NewtonError.lean` exits 0. `git diff k/p2-8b HEAD -- KAM/Apost/Correction.lean` is empty. Accordingly this report audits the P2-9 addition in the requested diff, without certifying P2-8b or the other merged packages. The supplied handoff was already untracked at audit start and was left untouched.

## Node assessment

All file locators below are in `KAM/Apost/NewtonError.lean` unless specified. Names prefixed `NE.` mean `KAM.Apost.NewtonError.`; the main result is `KAM.Apost.newton_error`.

| Node | Lean declaration / coverage | Verdict | Reason |
|---|---|---|---|
| `bp:p2:newton-error` | `KAM.Apost.newton_error`, lines 412–489; four definitions, lines 54–75 | PASS | Exact Appendix A signature; all four conclusions on the specified strip and the exact constants. |
| `step:p2:ne-invert` | `NE.sMat_spec`, lines 116–139; `NE.alg_core`, lines 93–94; assembly lines 446–465 | PASS WITH NOTES | Neumann gives unit determinant and inverse norm ≤ 2. The square-matrix right-inverse cancellation for Q is inside `alg_core`, rather than an exported Q-inverse formula. |
| `step:p2:ne-domain` | `NE.newtonMap_mem`, lines 159–164; assembly lines 472–473; `KAM.Apost.ham_mvt` | PASS WITH NOTES | Domain membership follows from correction smallness and A2. The segment assertion is discharged in `Hamiltonian.lean:360–362`, used through the remainder estimate, rather than stated by `newtonMap_mem`. |
| `step:p2:ne-expand` | `NE.sumVec_invarianceError_newtonMap`, lines 187–211; `NE.sumVec_fderiv_correction`, `NE.differentiableAt_correction`, `NE.newtonMap_eventuallyEq` | PASS | Product rule and local equality on the open strip justify differentiation of the piecewise Newton map. |
| `step:p2:ne-reduce` | `NE.alg_core`, lines 87–110; `NE.xi_equation`, lines 221–275; main proof lines 449–470 | PASS | Frame identities and the proved triangular equation cancel the first-order error. No triangular equation is assumed by the main theorem. |
| `step:p2:ne-lin` | `NE.norm_linError_le`, lines 381–396; `NE.lin_arith`, lines 310–327; assembly lines 477–479 | PASS | Correct row-sum operator norm; Ω₀ has norm ≤ 1; exponents combine as 2κ+3=a+1. |
| `step:p2:ne-quad` | `NE.norm_quadRemainder_le`, lines 284–291; assembly line 480; `NE.total_arith`, lines 355–362 | PASS | Hamiltonian Taylor bound gives M d²; M ≤ mSize produces the blueprint coefficient. The segment is proved by convexity of the admitted ball. |
| `step:p2:ne-total` | `NE.total_arith`, lines 333–370; assembly lines 481–489 | PASS | Uses γ ≤ Θ, 0<δ≤1, a≥8, norm-preserving sumVec, and C_E=4m²Θ²C_lin+m C_DK². |

## Statement, constants, and hypotheses

A Python source comparison extracted each definition through its following blank line and `newton_error` through `:=`, comparing against Appendix A of `PART23-LEAN-DESIGN.md`. Output:

```text
newtonMap: BYTE-IDENTICAL
sMat: BYTE-IDENTICAL
linError: BYTE-IDENTICAL
quadRemainder: BYTE-IDENTICAL
newton_error signature: BYTE-IDENTICAL
```

The main theorem's implicit parameters, binder order, `Standing`, `Admissible`, δ bounds, strict correction smallness and non-strict symplectic smallness all match. `Standing` contains the Part 2 source premises, and `Admissible` contains the parameter ranges and A1–A6, not conclusions of Newton error. There is no wider constant dependence: C_DK, C_sym and C_E have only `(n, τ, M, σK, σB, σT)` as parameters. The final denominator is exactly γ⁴δ^(2a). No extra frequency bound is assumed: line 438 obtains γ≤Θ from `frequency`.

Vectors use the frozen pair carrier, coordinates use `Fin n ⊕ Fin n → ℂ`, and matrices use the maximum row-sum operator norm. `sumVec` is an isometry, so the displayed vector identity and final bound retain their strength. The substitutions for the remainder and inverse follow the binding design conventions, not changed premises.

The separately named algebra/norm/domain helpers are conditional helpers. Their premises are elementary typing, differentiability, matrix identities, or bounds; all nontrivial applications are supplied by actual predecessors in `newton_error`. In particular `xi_equation` proves the triangular equation from the same data preamble as `correction_spec`, using `triangular`, exactness, periodicity, frame bounds and twist invertibility. It does not postulate a missing correction property.

## Classification of every new definition

There are exactly four new definitions; no new abbrev, structure or instance.

| Definition | Classification and whole-carrier behavior |
|---|---|
| `newtonMap` | Intended piecewise total map: K+correction on T_w, K elsewhere, exactly as the blueprint prescribes. Its outside value is intentional. `newtonMap_eventuallyEq` uses openness before differentiating; no boundary or exterior derivative is used. |
| `sMat` | Everywhere the algebraic matrix I−Ω₀E_sym; no inverse or branch in its body. The inverse appearing in the theorem is Lean's total matrix inverse, but unit determinant is proved first at every point used (lines 446–460). No singular fallback is exploited. |
| `linError` | Everywhere the intended expression E_red ξ+Ω₀E_sym ∂ωξ. Total `fderiv` and the inherited total ξ are used with proved differentiability and triangular properties on the working strip. No off-strip fallback supports the estimate. |
| `quadRemainder` | Everywhere the literal first-order Taylor residual at K with displacement correction. On T_(r−2δ), K+correction equals the blueprint's K̄; this is design departure L16. No substitution changes the on-strip residual. |

## Proof checks of the audit focus

`NE.sMat_spec` uses `KAM.neumann` with A=I and Δ=−Ω₀E_sym. Nonempty matrix indices follow from n>0, itself obtained from standing n≥2. Thus the identity matrix has norm 1. `KAM.norm_omegaZeroMatrix_le` (`Matrix/Norms.lean:260–261`) derives its bound from row sums; it is valid in the same operator norm, including the empty case. Both inversion and `norm_linError_le` use submultiplicativity with this exact norm, so no dimension factor is missing.

`alg_core` forms Q(P S')=I from QP=S and SS'=I, then uses `mul_eq_one_comm` for square matrices to obtain P S' Q=I. This is the cancellation needed for reduction; it does not assume P or Q invertible. In the concrete application SS⁻¹=I follows from the already proved unit determinant. The resulting formula has the correct positive Ω₀E_sym derivative term because I−S=Ω₀E_sym.

`ham_mvt` constructs the segment inside B_β(Kθ), using strict correction smallness, and applies the Hamiltonian Taylor theorem there. The arithmetic proof keeps M≤mSize, a+1≤2a and γ≤Θ explicit. No contradiction with the blueprint was found.

## Independently run checks

All Lean invocations were sequential, at niceness 5, with no resource override. The build used the existing worktree snapshot; no clean or full-library rebuild was requested.

1. `nice -n 5 lake build KAM.Apost.NewtonError` — exit 0:

   ```text
   Build completed successfully (3188 jobs).
   ```

2. `sh scripts/lint_sources.sh` — exit 0, combined output:

   ```text
   check_lean_modules: PASS (264 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

3. `nice -n 5 lake env lean .lake/abi-scratch/P29Audit.lean` — final run exit 0. The scratch probe imported `KAM.Apost.NewtonError`, opened `Matrix`, the operator norm scope and KAM namespaces, and used the literal Appendix A main signature under `example`, with body:

   ```lean
   by exact newton_error hS hK hδ hδ1 h2δ hβ hsym
   ```

   It then ran `#print axioms` on all 17 theorems listed below. Each printed exactly `[propext, Classical.choice, Quot.sound]`:

   ```text
   KAM.Apost.NewtonError.alg_core
   KAM.Apost.NewtonError.sMat_spec
   KAM.Apost.NewtonError.newtonMap_of_mem
   KAM.Apost.NewtonError.newtonMap_eventuallyEq
   KAM.Apost.NewtonError.newtonMap_mem
   KAM.Apost.NewtonError.sumVec_fderiv_correction
   KAM.Apost.NewtonError.differentiableAt_correction
   KAM.Apost.NewtonError.sumVec_invarianceError_newtonMap
   KAM.Apost.NewtonError.xi_equation
   KAM.Apost.NewtonError.norm_quadRemainder_le
   KAM.Apost.NewtonError.rpow_aExp_add_one_eq
   KAM.Apost.NewtonError.rpow_aExp_sq
   KAM.Apost.NewtonError.lin_arith
   KAM.Apost.NewtonError.total_arith
   KAM.Apost.NewtonError.norm_linError_le
   KAM.Apost.NewtonError.norm_mulVec_mulVec_le
   KAM.Apost.newton_error
   ```

   An initial probe run exited 1 because the auditor omitted `open Matrix`, leaving `*ᵥ` notation unresolved. Correcting that scratch-file namespace opening gave the successful run above; no repository Lean source changed. The probe was deleted afterward.

4. `git diff k/p2-8b...HEAD -- KAM/Frozen manifest` — exit 0, empty diff (only the multiple-merge-base warning above). No frozen or manifest change.
5. `wc -l KAM/Apost/NewtonError.lean` — `493 KAM/Apost/NewtonError.lean`. Module/header/import/docstring/exposed public section present.
6. `rg -n '\b(sorry|admit|axiom|unsafe|opaque|EuclideanSpace)\b|set_option' KAM/Apost/NewtonError.lean` — exit 1, no matches. The full lint also checks resource overrides and source/module invariants.
7. `git diff --check` — exit 0, no output. The final scoped report check also passes.

Provider exact-type probe: **not applicable**. This is an ordinary proof package, not a provider; it imports no provider or frozen theorem anchor. The design-signature probe above tests its actual public result instead. The axiom checks also exclude any transitive dependency on a sorry-backed frozen theorem.

## Findings and limits

**Minor — handoff step references do not individually expose every graph conclusion.**
The handoff assigns ne-invert solely to `NE.sMat_spec`, whose type concludes only S invertibility and its norm bound, while graph ne-invert also names Q invertibility and Q⁻¹=PS⁻¹. Those cancellation facts are covered internally by `NE.alg_core:93–94` and the main assembly. Likewise ne-domain's segment assertion is handled inside predecessor `ham_mvt:360–362`, not the named `newtonMap_mem`. This does not weaken the main theorem or leave an analytic assumption unpaid, but the named helper types alone are not the full graph contracts.

Proposed fix: augment the handoff/graph coverage references with the declarations and internal locators in the node table. If exact standalone step exports are required, introduce separately named corollaries for Q inversion and the segment inclusion; no main signature or proof change is needed. Do not mark a helper's type as literally the full step type.

No blocking or major findings. No new suspected pinned-source erratum was found. The blueprint already records the HL19 inversion omission at `p2-aposteriori.tex:738–740`; this package supplies the missing argument. This audit verifies the local blueprint and design contracts, not a fresh comparison against the external HL19/GJLV05 PDFs. L16 is an existing declared design representation choice, not a new deviation. No audit-introduced mathematical deviations.

Only `docs/campaign/audits/P2-9-audit-1.md` was written as a repository artifact. P2-8b remains subject to its separate audit; this verdict is not a provider seal or a claim of G1 closure.
