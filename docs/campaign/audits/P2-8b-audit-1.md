# Independent audit of P2-8b

Overall verdict: **PASS**.

Audited branch `k/p2-8b`, HEAD `9e46b02f9b5874273d083895767634d8c7454dc5` (merge of main), including the prover commits through `f15c15f`. The comparison `git diff main...HEAD` contains only the 514-line `KAM/Apost/Correction.lean` and one generated import in `KAM.lean`. The untracked handoff was supplied as audit input. This audit changes only this report; no Lean source, frozen file, manifest, generated file, or git state was changed.

The governing inputs were `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the audit and P2-8b briefs and their common briefs, the handoff's AUDIT FOCUS, `docs/campaign/design/PART23-LEAN-DESIGN.md`, and the seven graph contracts in `docs/graph/K/DEPGRAPH.md:6510–6716`. The mathematical comparison is to `blueprint/parts/p2-aposteriori.tex:670–720` and Appendix A of the binding design.

## Node coverage

All locators in the last column refer to `KAM/Apost/Correction.lean`. Helper names below are qualified by `KAM.Apost.Correction`; the assembly theorem is `KAM.Apost.correction_spec`. Proof-step nodes are covered by the named helpers and the indicated local proof blocks of that declaration, rather than separate exports of every intermediate conjunction.

| Node | Lean declaration(s) | Verdict | Evidence / reason |
|---|---|---|---|
| `bp:p2:correction` | `KAM.Apost.xi`, `KAM.Apost.correction`, `KAM.Apost.correction_spec` | PASS | Definitions at 52, 58 and full signature at 398 are text-identical to Appendix A. All five bounds and six regularity properties are present on the prescribed strips. |
| `step:p2:cor-data` | `etaL_eq_eta`, `etaN_eq_eta`, `diffOn_etaL`, `diffOn_etaN`, `periodic_etaL`, `periodic_etaN`, `isRealVec_etaL`, `isRealVec_etaN`; `correction_spec` | PASS | Lines 70–103, 423–461: frequency bound, holomorphy, periodicity, realness, three data bounds, zero normal average and invertible averaged torsion are supplied by predecessors. |
| `step:p2:cor-absorb` | `gd_pos`, `le_Theta_div`, `rpow_add_one_le`, `xiN_absorb`; predecessor `KAM.Apost.mul_rpow_le`, `KAM.Apost.absorb_mul_le` | PASS | Lines 111–123, 268–276: positive denominators, nonnegative exponents and the direction of absorption are checked; no restriction beyond the source ranges enters the result. |
| `step:p2:cor-xin` | `xi0_arith`, `xiN_arith`, `gL_arith`; `correction_spec` | PASS | Lines 129–226, 463–471: exact constants for the normal constant, normal solution and longitudinal right side. `hX0` is proved locally, then used to obtain `hXN` and `hGL`. |
| `step:p2:cor-xi` | `xiL_arith`, `xi_arith`, `xiN_absorb`, `dK_arith`, `norm_sumElim_le`, `norm_correction_le`; `correction_spec` | PASS | Lines 230–276, 307–311, 361–393, 473–499: max norm on the two blocks; operator multiplication and the isometry preserve the correction bound. |
| `step:p2:cor-dxi` | `dxi_arith`, `fderiv_sumElim_apply`, `norm_sumElim_le`; `correction_spec` | PASS | Lines 280–304, 342–359, 500–510: actual derivative equals the two blocks `(gL, -etaN)`; the normal block is absorbed into the same `C_g` bound. |
| `step:p2:cor-reg` | `diffOn_sumElim`, `periodic_sumElim`, `isRealVec_sumElim`, `sumVec_correction`, `diffOn_correction`, `periodic_correction`, `isRealOnReals_correction`; `correction_spec` | PASS | Lines 321–385, 484–495: restrict the normal component and frame to the smaller strip, then apply bilinear multiplication and the continuous linear isometry. |

## Statement fidelity and hypotheses

`correction_spec` has precisely the design's binders: standing data, arbitrary `r, β, ε, δ, K`, admissibility, `0 < δ`, `δ ≤ 1`, and `2δ < r`. Inspection of `Standing` and `Admissible` in `KAM/Apost/Standing.lean:48–97` confirms source premises only: parameter ranges, Hamiltonian hypotheses, Diophantine data, holomorphy, primary periodicity, reality, domain margin, derivative bound, Gram/twist invertibility and bounds, and invariance-error bound. In particular `ε ≤ 1` is part of blueprint admissibility, not a new smallness condition added by this package.

The conclusions match the blueprint: normal solution and `gL` bounds on `r-δ`; `xi`, correction and directional derivative bounds on `r-2δ`; holomorphy, periodicity and realness. Coordinatewise periodicity and the sum-index carrier are the design's declared representations. Vector and pair norms are max norms; matrices use `open scoped Matrix.Norms.Operator`. The realness claims refer to all real arguments, as required by the design; positive strip width puts those arguments in the working strip.

No constant is chosen after `K`, frequency, loss or error. The existing definitions in `KAM/Apost/Constants.lean:63–103` give `κ=τ+n`, `a=2κ+2`, and exactly

- `C_xi0 = 2n m² (m Θ + cR C_T)`;
- `C_xiN = C_xi0 + 2n cR m`;
- `C_g = C_T C_xiN + 2n m² Θ`;
- `C_xi = cR C_g + Θ C_xiN`;
- `C_DK = 2m² C_xi`.

Their argument lists are only `(n, τ, M, σK, σB, σT)`. There are no extra premises, weakened conclusions, changed dependencies, or new standing assumptions. The conditional arithmetic and regularity helpers have distinct names; their inputs are discharged in `correction_spec` and do not replace a source result.

## Definition classification and totality

Exactly two new definitions occur; there are no new abbreviations, structures or instances.

| Definition | Classification | Whole-carrier and fallback assessment |
|---|---|---|
| `KAM.Apost.xi` | Explicit triangular solution assembled with `Sum.elim` | For every `h, K, ω, θ`, it is literally the prescribed pair of `triXiL` and `triXiN` for the data of `K`. No branch, choice of solution, radius dependence or alternate value is introduced. |
| `KAM.Apost.correction` | Explicit frame product transported to the frozen pair carrier | For every input, `sumVec (correction θ) = frameMat K θ *ᵥ xi θ`; `sumVec_correction` proves this without hypotheses. `sumVec` and its inverse are linear equivalences on the entire carriers and preserve max norms. |

The inherited operators are total: `cohR` is componentwise `cohSolution`, the Fourier `tsum` of the divided coefficients (`KAM/Apost/Tools.lean:283`, `KAM/Strip/CohomologicalDefs.lean:37`); `triXi0` uses the total matrix inverse (`KAM/Apost/Triangular.lean:51–63`). Outside their analytic/nonresonant/invertible regime these constructions are not claimed to solve an equation. This is the explicit totality convention of design §§0, 2.4, not a package-specific fallback. Inside the theorem's regime, the triangular application supplies holomorphy, bounds, zero average and Diophantine data, and explicitly proves `IsUnit (avg T).det` from the frozen twist condition using `torsionAverage_eq_avg`. No result is obtained by exploiting a divergent sum, a nonintegrable average, a singular inverse or a derivative outside its differentiability domain.

## Proof and arithmetic review

At lines 454–459, `triangular` is applied with exactly `HL = 2n m² ε`, `HN = 2n m ε`, `HT = C_T/δ`, `σ = σT`. Every analytic premise is supplied by `frequency`, `frame_basic`, `periodicity`, `exactness` and the frozen-average agreement. These are graph predecessors (possibly transitively through the data step); no frozen theorem or provider is used.

The arithmetic checks signs before clearing denominators: `γ > 0`, `δ > 0`, positivity of real powers, `ε ≥ 0`, and `m ≥ 1`. `xi0_arith` absorbs the non-small-divisor term and uses `σT ≤ m`; `xiN_arith` uses `δ^(κ+1) ≤ δ^κ`; `gL_arith` adds one further loss. `xiL_arith` uses `a=2κ+2`. `xiN_absorb` supplies the other block at the common `γ² δ^a` scale. The sum defining `C_xi` dominates both nonnegative block constants. `dK_arith` is an exact identity, and `norm_correction_le` uses the row-sum operator norm followed by the pair/sum isometry.

For the directional derivative the proof restricts both holomorphic components to the open smaller strip before converting `DifferentiableOn` to `DifferentiableAt`. Thus `fderiv_sumElim_apply` is used with actual differentiability evidence; the triangular equations give the correct signs. No fact contradicting the blueprint was found.

## Independent checks

Commands were run in `/root/code/KAM-w-p2-8b`. Compile commands were serialized, at default heartbeat and recursion settings. The targeted build used the existing worktree snapshot; no library clean or full-library rebuild was performed.

`nice -n 5 lake build KAM.Apost.Correction` — exit 0:

```text
Build completed successfully (3185 jobs).
```

`sh scripts/lint_sources.sh` — exit 0:

```text
check_lean_modules: PASS (258 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`git diff main...HEAD -- KAM/Frozen manifest` — exit 0, empty output.

`git diff --check main...HEAD` and `git diff --check` — exit 0, empty output.

`wc -l KAM/Apost/Correction.lean` — exit 0:

```text
514 KAM/Apost/Correction.lean
```

`rg -n 'set_option|sorry|admit|axiom|unsafe|opaque|EuclideanSpace|KAM\.Provider|KAM\.Frozen\.Theorems' KAM/Apost/Correction.lean` — no matches (rg exit 1). The module has the copyright header, `module`, public interface imports, module docstring and exposed public section. Lint also verifies repository-wide size, module, quarantine, generated-root and frozen invariants. The one-line root-import change agrees with the generator check; this auditor did not modify it.

A Python comparison extracted each definition up to the following blank line and the complete `correction_spec` signature up to its body, and compared them with Appendix A. Output:

```text
xi: definition text identical to Appendix A: True
correction: definition text identical to Appendix A: True
correction_spec: signature text identical to Appendix A: True
Probe prepared: 30 theorems, 2 definitions, exact Appendix A theorem statement
```

The independent probe `.lake/abi-scratch/P28bAudit.lean` imported `KAM.Apost.Correction`, opened the same norm scope and namespace, and copied the Appendix A theorem signature under the name `audit_design_correction_spec`, with body:

```lean
by
  exact correction_spec hS hK hδ hδ1 h2δ
```

It then issued `#print axioms` for all 30 package theorems and both definitions. `nice -n 5 lake env lean .lake/abi-scratch/P28bAudit.lean` exited 0, with no errors or warnings. Its complete output was:

```text
'KAM.Apost.Correction.etaL_eq_eta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.etaN_eq_eta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.diffOn_etaL' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.diffOn_etaN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.periodic_etaL' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.periodic_etaN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.isRealVec_etaL' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.isRealVec_etaN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.gd_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.le_Theta_div' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.rpow_add_one_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.xi0_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.xiN_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.gL_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.xiL_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.xi_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.xiN_absorb' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.dxi_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.dK_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.diffOn_sumElim' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.periodic_sumElim' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.isRealVec_sumElim' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.fderiv_sumElim_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.norm_sumElim_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.sumVec_correction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.diffOn_correction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.periodic_correction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.isRealOnReals_correction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Correction.norm_correction_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.correction_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.xi' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.correction' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Only `propext`, `Classical.choice` and `Quot.sound` occur. In particular, no frozen draft theorem's `sorryAx` is in the package's result dependencies. The probe was deleted after checking.

Provider exact-type probe: **not applicable**. P2-8b is an infrastructure package, with no provider or frozen theorem to seal. The Appendix A signature probe above independently checks this package's exact target statement.

## Findings, errata and limits

No blocking, major or minor findings. No proposed fix is needed. No suspected blueprint or pinned-source erratum was identified, and this audit introduced no mathematical deviation.

The proof was audited against the local blueprint, graph contracts and binding design. The cited HL19 pages were not independently re-audited against their PDF in this package audit. This verdict certifies the scoped correction package and its checked axiom dependencies; it does not certify the remaining Newton step, iteration, or frozen G1 provider.
