# Independent audit I2-3 — audit 1

**Overall verdict: PASS WITH NOTES for package I2-3 (`bpI:p2:correction`).** No material mathematical or Lean-contract defect found. The inherited I1-5 bordered solve also passes the checks below. This is an infrastructure acceptance; no frozen anchor is supplied or made seal-ready by this package.

Date: 2026-10-28. Worktree: `/root/code/KAM-inp-i23`.
Audited HEAD: `dc4ffb73ca450595b9784a07649ce34e339805db`.
Observed `inp`: `796ef1b6b7e82b72c898add6e588d5860478cc5e`.

## Scope and baseline

Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the package audit brief, I2-3 handoff, Track I statement, the frozen I-G1 declaration and relevant frozen definitions, Part 1 bordered solve, Part 2 correction, design v2 including its signature appendix and D21 amendment, and design audits 1–2.

The user's exact report path overrides the generic brief's main-worktree output instruction. Only this report is a repository deliverable. No production source, frozen file, manifest, generated file, or git state was changed.

`git diff inp...HEAD` warns of multiple merge bases and selects `9f8e018c769d276602fb0cb08d809b3cd6bae31c`. Its complete source delta is:

| File | Lines | Public theorems | New definitions |
|---|---:|---:|---:|
| `KAM/Iso/Apost/Correction.lean` | 443 | 12 | 0 |
| `KAM/Iso/Linear/BorderSolve.lean` | 403 | 10 | 0 |
| `KAM/Iso/Linear/BorderUnique.lean` | 292 | 13 | 0 |

The handoff's suggested `git diff inp-i15...HEAD` is not a clean I2-3 delta in this merged history: it shows 88 files, including unrelated packages and generated-root changes. The actual I2-3 commit delta `git diff 34be453 HEAD --stat` is exactly `Correction.lean | 443 insertions`. I reviewed all three files in the user-required `inp...HEAD` comparison, including I1-5 rather than assuming a prior audit.

## Anchor status

| Anchor / node | Verdict | Scope |
|---|---|---|
| `bpI:p2:correction` | PASS WITH NOTES | Exact approved design signature; complete correction bounds and regularity proved. |
| `bpI:p1:border-solve` (inherited I1-5) | PASS | Bordered system, estimates, uniqueness modulo phase, realness. |
| Frozen `KAM.Iso.isoenergetic_kam` | Not a seal candidate in this package | Remains `by sorry` at the audited snapshot. I2-3 exports no provider. |
| Other I/N/P frozen anchors | Not targeted | No sealing or proof-closure claim. |

Provider/frozen-type and frozen seal-body probes are **not applicable**: there is no new `KAM.Provider` declaration or proposed frozen seal. Comparing `correction` to the entire frozen I-G1 would compare different theorems. Instead the independent probe copied the literal `correction` signature from the design appendix (lines 1364–1400), renamed it, proved it using the new export, and checked definitional equality in both directions:

```lean
-- Full copied binders and conclusion precede this body:
  exact KAM.Iso.Apost.correction hS hK hδ hδ1 h2δ
example : (type_of% @AuditI23.correction_contract) =
    (type_of% @KAM.Iso.Apost.correction) := rfl
```

This elaborated at default resource settings, with no placeholders.

## Refutation checks and focus

1. **Correction versus blueprint:** `Correction.lean:385–438` matches `blueprint-I/parts/p2-iso-iteration.tex:132–166`. All hat constants retain only `(n,τ,M,σK,σB,σT)` dependence. The bounds for ξ₀ and ξω have denominator γδ^(κ+1); ξN and gL use the r−δ strip and denominators γδ^(κ+1), γδ^(κ+2). The full ξ and ΔK use r−2δ and γ²δ^a; directional derivatives use γδ^(κ+2), γ²δ^(a+1). Both frequency displacement and ΔK are bounded by dStep. No smaller norm or different carrier is substituted.
2. **Core specialization:** at `Correction.lean:423–426`, `hS.setting hK.s_gt.le` supplies `Setting` at `s • ωstar`; `hK.toAdmissibleNoTwist`, `hK.twist`, and `hK.energy_le` supply precisely the remaining core premises. The core does not assume invertibility of the unbordered torsion. `hK.s_gt` gives the needed `s≥1`; no positivity or Diophantine condition at the updated frequency is silently assumed.
3. **Border and energy signs:** at lines 226–246, `havg` and `torsionAverage_eq_avg` identify `bordAvg` with the literal frozen extended-torsion average. Its energy row stays `DH(K)N`, not ωᵀ. `isoBordData.ηω = -(energyAverage−E₀)` has zero imaginary part by `energy_approx`; its norm bound follows from B7. `border_solve` supplies the actual equations, not an equation-shaped external premise. Normal forcing has zero mean by K's proved `exactness`.
4. **Frequency update:** `isoNewS_smul_sub` proves the negative update, unconditionally for the total definitions. `isoNewS_smul_eq` assumes only reality of ξω and proves the complex-vector identity. Reality is a proved component of `correction_core`, so this helper introduces no unpaid proof step. The real part in `s(1−Re ξω)` agrees with the real ξω returned by the theorem. No claim that the new s stays on the segment is made without later smallness/margin assumptions.
5. **Derivative bound:** `norm_fderiv_frameMat_le` uses `fi_dL` and the definition of the normal field, with `‖∂ωL‖≤m²+nε/δ` and `‖∂ωN‖≤m³+CX/δ`. Positivity and ε,δ≤1 give CP/δ. The final product rule is applied only at interior strip points with genuine differentiability. Geometry and all absorption inequalities are discharged by the existing proved no-A5 and arithmetic interfaces.
6. **Inherited bordered solve:** all five parts of the blueprint hold with the intended max vector norm and row-sum matrix/energy-row norms. The second differential equation is actually established on the larger r−δ strip. The normal homogeneous difference is proved constant by cohomological uniqueness; averaging the tangential derivative then gives the two bordered rows and forces the normal constant and ξω. The remaining tangential difference is constant. Continuity supplies integrability before average linearity is used; no conclusion is bundled into an input assumption.

## Notes and suspected documentation defects

**N1 — energy-defect focus does not apply to this module.** The handoff requests checking that “energy_defect is used with its cube-local signature”; design amendment D21 (`PART123-LEAN-DESIGN.md:2075–2079`) calls I2-3 “the consumer”. Actual I2-3 neither imports `EnergyDefect` nor calls `energy_defect`. It uses `energy_approx` for reality of the energy average. The design table at lines 198–199 places the energy-defect consumer in I2-4 (`newton-error`), consistently with the blueprint. The current `EnergyDefect.lean:151–177` was inspected: both bound quantifiers are restricted to `[0,1]ⁿ` as amended. There is no all-real misuse in I2-3; applicability of an eventual I2-4 call is outside this package. Correct the consumer label/focus to I2-4; no Lean repair is required here.

**N2 — baseline instructions require care.** The stale `inp-i15` branch ref is not the merged-input commit. Use the user-required comparison for complete scope and `34be453..dc4ffb7` for the own-package delta. The protected-path comparison against `inp...HEAD` is empty, despite the unrelated generated-root changes visible against `inp-i15`.

No new suspected defect in a pinned mathematical source was found. This is a blueprint/implementation audit, not a fresh PDF transcription audit. The blueprint's existing HL19 sign and combined-error corrections remain disclosed; none was silently altered. In particular a zero invariance error does not justify dropping the separate target-energy error.

## Definition classification

There are **zero new def/abbrev/structure declarations** in the full three-file delta. Existing I-D0 definitions were checked at their actual uses: `isoBordData` packages the specified forcing/torsion/energy row; `isoXi` is the sum-eliminated pair with zero tangential phase; `isoXiOmega` selects the scalar component; `isoCorrection` is the inverse sum-vector isometry applied to Pξ; `isoNewS` is s(1−Re ξω). They are total algebraic constructions, not selectors asserting existence. Matrix inversion is used mathematically only after proving the determinant is a unit. Fourier/cohomological objects receive their analytic, periodic and zero-average premises. No argument relies on an off-domain fallback.

## Declaration inventory

Names below are fully qualified. PASS for an auxiliary algebraic or transport theorem means its local premises are appropriate for that helper; the source-node exports discharge those premises rather than adding them to the source theorem.

| Node / role | Lean declaration (file:line) | Verdict | Reason |
|---|---|---|---|
| p1:border-solve | `KAM.Iso.Linear.bordMat_mulVec` (BorderUnique.lean:43) | PASS | Exact bordered linear algebra. |
| p1:border-solve | `KAM.Iso.Linear.bordAvg_mulVec_bordSol` (BorderUnique.lean:52) | PASS | Exact bordered linear algebra. |
| p1:border-solve | `KAM.Iso.Linear.eq_bordSol_of_mulVec` (BorderUnique.lean:60) | PASS | Exact bordered linear algebra. |
| p1:border-solve | `KAM.Iso.Linear.bordSol_rows` (BorderUnique.lean:70) | PASS | Exact bordered linear algebra. |
| p1:border-solve | `KAM.Iso.Linear.eq_bordSol_of_rows` (BorderUnique.lean:84) | PASS | Exact bordered linear algebra. |
| p1:border-solve | `KAM.Iso.Linear.avg_congr` (BorderUnique.lean:107) | PASS | Guarded average identity. |
| p1:border-solve | `KAM.Iso.Linear.avg_const` (BorderUnique.lean:113) | PASS | Guarded average identity. |
| p1:border-solve | `KAM.Iso.Linear.avg_add_of_continuous` (BorderUnique.lean:119) | PASS | Guarded average identity. |
| p1:border-solve | `KAM.Iso.Linear.avg_sub_of_continuous` (BorderUnique.lean:126) | PASS | Guarded average identity. |
| p1:border-solve | `KAM.Iso.Linear.avg_dotProduct_const` (BorderUnique.lean:135) | PASS | Guarded average identity. |
| p1:border-solve | `KAM.Iso.Linear.eq_zero_of_fderiv_eq_zero` (BorderUnique.lean:150) | PASS | Cohomological uniqueness at zero forcing. |
| p1:border-solve | `KAM.Iso.Linear.eq_avg_of_fderiv_eq_zero` (BorderUnique.lean:170) | PASS | Subtract mean and apply zero-average uniqueness. |
| p1:border-solve | `KAM.Iso.Linear.border_unique` (BorderUnique.lean:190) | PASS | Uniqueness of normal/scalar solution from the bordered rows. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_omega_le` (BorderSolve.lean:46) | PASS | Elementary max/row norm estimate. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_sumElim_le` (BorderSolve.lean:51) | PASS | Elementary max/row norm estimate. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_bordXi0_le` (BorderSolve.lean:59) | PASS | Exact bordered linear algebra. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_bordXiOmega_le` (BorderSolve.lean:63) | PASS | Exact bordered linear algebra. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_dotProduct_le` (BorderSolve.lean:68) | PASS | Elementary max/row norm estimate. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_bordSol_le` (BorderSolve.lean:79) | PASS | Max forcing bound and inverse row-sum norm. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.norm_bordXiN_bordGL_le` (BorderSolve.lean:115) | PASS | Triangle inequalities, including |ω|S. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.avg_bordGL_eq_zero` (BorderSolve.lean:142) | PASS | First bordered row cancels the mean. |
| p1:border-solve | `KAM.Iso.Linear.BorderSolve.bordSol_im_eq_zero` (BorderSolve.lean:167) | PASS | Real averages and inverse preserve reality. |
| p1:border-solve | `KAM.Iso.Linear.border_solve` (BorderSolve.lean:218) | PASS | All five blueprint clauses with correct signs and strips. |
| p2:correction | `KAM.Iso.Apost.CorrectionAux.sumVec_isoCorrection` (Correction.lean:61) | PASS | Exact Pξ transport through the sum-vector isometry. |
| p2:correction | `KAM.Iso.Apost.CorrectionAux.diffOn_isoCorrection` (Correction.lean:65) | PASS | Holomorphic matrix-vector product and linear transport. |
| p2:correction | `KAM.Iso.Apost.CorrectionAux.periodic_isoCorrection` (Correction.lean:70) | PASS | Product of periodic P and ξ. |
| p2:correction | `KAM.Iso.Apost.CorrectionAux.isRealOnReals_isoCorrection` (Correction.lean:74) | PASS | Real matrix-vector multiplication. |
| p2:correction | `KAM.Iso.Apost.CorrectionAux.norm_isoCorrection_le` (Correction.lean:81) | PASS | Operator norm product bound. |
| p2:correction | `KAM.Iso.Apost.CorrectionAux.sumVec_fderiv_isoCorrection` (Correction.lean:88) | PASS | Product rule under pointwise differentiability. |
| p2:correction | `KAM.Iso.Apost.CorrectionAux.norm_fderiv_frameMat_le` (Correction.lean:110) | PASS | fi_dL and normal-field identity yield CP/δ. |
| p2:correction | `KAM.Iso.Apost.CorrectionAux.Msigma_le_mSize` (Correction.lean:148) | PASS | Each positive parameter is bounded by m; product ≤m³. |
| p2:correction | `KAM.Iso.Apost.CorrectionAux.correction_core` (Correction.lean:168) | PASS | General-frequency proof; no unbordered twist premise. |
| p2:correction | `KAM.Iso.Apost.isoNewS_smul_sub` (Correction.lean:358) | PASS | Exact real negative frequency update. |
| p2:correction | `KAM.Iso.Apost.isoNewS_smul_eq` (Correction.lean:366) | PASS | Exact complex update given proved reality. |
| p2:correction | `KAM.Iso.Apost.correction` (Correction.lean:385) | PASS | Exact design contract and blueprint estimates. |

## Independent verification receipts

All explicit build/probe/kernel commands below used `LEAN_NUM_THREADS=1`; no resource-budget override was used.

```text
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i23 KAM.Iso.Apost.Correction
[inp-gate] slot 1 acquired 02:32:43 for KAM.Iso.Apost.Correction
Build completed successfully (3209 jobs).
exit 0

LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I23Audit.lean
exit 0
```

The signature-copy and rfl equality checks emitted no diagnostics. The same probe ran `#print axioms` for **all 35 public theorems** in the full delta. Exact output:

```text
'KAM.Iso.Linear.bordMat_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.bordAvg_mulVec_bordSol' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.eq_bordSol_of_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.bordSol_rows' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.eq_bordSol_of_rows' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.avg_congr' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.avg_const' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.avg_add_of_continuous' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.avg_sub_of_continuous' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.avg_dotProduct_const' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.eq_zero_of_fderiv_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.eq_avg_of_fderiv_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.border_unique' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_omega_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_sumElim_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_bordXi0_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_bordXiOmega_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_dotProduct_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_bordSol_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.norm_bordXiN_bordGL_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.avg_bordGL_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.BorderSolve.bordSol_im_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.border_solve' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.CorrectionAux.sumVec_isoCorrection' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.CorrectionAux.diffOn_isoCorrection' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.CorrectionAux.periodic_isoCorrection' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.CorrectionAux.isRealOnReals_isoCorrection' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.CorrectionAux.norm_isoCorrection_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.CorrectionAux.sumVec_fderiv_isoCorrection' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.CorrectionAux.norm_fderiv_frameMat_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.CorrectionAux.Msigma_le_mSize' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.CorrectionAux.correction_core' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoNewS_smul_sub' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoNewS_smul_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.correction' depends on axioms: [propext, Classical.choice, Quot.sound]
```

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Apost.Correction KAM.Iso.Linear.BorderSolve KAM.Iso.Linear.BorderUnique
replaying KAM.Iso.Linear.BorderUnique
replaying KAM.Iso.Linear.BorderSolve
replaying KAM.Iso.Apost.Correction
exit 0
```

```text
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (354 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

Lint passes under the brief's explicit exception: the only failing check is the expected stale generated `KAM.lean`. No root regeneration was performed. The module check covers 354 files; frozen byte/ABI checks cover 144 declarations.

Static checks: all three new files have copyright, `module`, public imports, module docstrings and exposed public sections; sizes are 443/403/292 lines. No forbidden proof escape, resource override or ambient `EuclideanSpace` occurs. A recursive import walk from `KAM.Iso.Apost.Correction` found 80 local modules and **zero provider or frozen-theorem imports**. Frozen definition imports are legitimate. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` is empty (apart from git's merge-base warning). `git diff --check` exits 0.

Audit execution deviation: the first lint shell was started while the targeted build was still pending, without an explicit `LEAN_NUM_THREADS=1` prefix. Since lint itself invokes Lean for ABI hashes, that scheduling did not guarantee the requested serialization/thread limit. It was repeated after the build, signature probe and kernel replay had finished, with `LEAN_NUM_THREADS=1 nice -n 5`; the complete final receipt above is from that serialized rerun. No mathematical or source deviation was introduced.

Temporary probe source, declaration list, and captured outputs were removed after embedding the receipts here. The pre-existing untracked `I2-3-handoff.md` was preserved. No state-changing git command was run.

## Remaining limits

No uncertainty remains about the exported correction type, its axiom closure, or the three-module kernel replay at this snapshot. The frozen I-G1 proof, Newton error, torsion propagation, iteration and limit are separate obligations. No package acceptance here discharges those obligations. N1 is a documentation correction for the orchestrator, not a blocking Lean defect. No replacement theorem or frozen change is requested.
