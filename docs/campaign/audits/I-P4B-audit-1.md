# I-P4B independent audit 1

**Verdict: PASS WITH NOTES.** All 13 assigned result/step nodes are covered. No blocking or major finding; one minor documentation correction. The declarations preserve the blueprint statements, subject to the explicitly documented positive-strip-width convention and the project's pointwise reading of uniform bounds. All 59 new public theorems passed the axiom probe.

Audited HEAD: `f8053b38f887ce35961ab2063d77a7c5eb59d22e` (`k/p4b`). Comparison base `main`: `c212a00bf58fb934dda02ba4c80a6e0cb2f9e306`. Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `PROVER-COMMON.md`, `AUDIT-PACKAGE.md`, `I-P4B.md` and `I-P4B-handoff.md`. Compared `git diff main...HEAD`, the node contracts in `docs/graph/K/DEPGRAPH.md`, the actual blueprint text, and the Lean declarations and proofs. This is an infrastructure package, not a provider or a seal of a frozen theorem.

## Node inventory and statement fidelity

All declaration names in the table have prefix `KAM.Head.`. File paths are relative to `KAM/Head/`. Blueprint locations are in `blueprint/parts/p4-measure.tex`.

| Node | Lean declaration and locator | Verdict | Reason |
|---|---|---|---|
| `bp:p4:derivative-bounds` | `derivative_bounds`, `DerivativeBounds.lean:249`; `derivConstH/F/M`, lines 47–56 | PASS | L183–195: both closed-polydisc containments; orders 1, 2, 3 for h and f; both f-vector-field bounds; all four Hamiltonian bounds with ε ≤ 1 confined to (d). Constants independent of f and ε. Unneeded standing HEAD premises omitted. |
| `step:p4:db-polydisc` | `closedBall_subset_domainD'`, `DerivativeBounds.lean:105`; `closedBall_subset_actionNbhd_three_quarters`, line 91 | PASS | L198–202: closed balls in the max norm are exactly closed polydiscs. Strict domain membership is retained at the boundary of each closed ball. |
| `step:p4:db-cauchy` | `norm_iteratedFDeriv_le_cbar`, `DerivativeBounds.lean:132`; `norm_iteratedFDeriv_h_le`, line 168; `norm_iteratedFDeriv_f_le`, line 179; `norm_iteratedFDeriv_hbold_le`, line 214 | PASS | L204–208: operator/multilinear norms, exact c̄ and δ powers, with h bounded by the inherited hBound. The general helper's finite-dimensional/completeness instances are typing data and are available for the concrete carriers. |
| `step:p4:db-vectorfield` | `hamJ`, `HamiltonianField.lean:63`; `hamiltonianVectorFieldℂ_eq_hamJ`, line 84; `hamiltonianVectorField_bounds`, line 132 | PASS | L210–222: J has the displayed signs, is a contraction, and identifies with the frozen vector field by rfl. Derivative norms through order two are bounded by the scalar derivatives through order three; specialization is performed in derivative_bounds. |
| `bp:p4:torsion-regular` | `torsion_regular`, `TorsionRegular.lean:67` | PASS | L546–561: specializes to hbold h f and domainD, with exactly the needed HEAD source premises; includes both inverse identities, holomorphy and inverse derivative, frame-column derivative agreement, both torsion matrix identities, continuity on the real slice, average agreement, and all periodicity conclusions. |
| `step:p4:tr-inverse` | `gramMatrix_inverse_regular`, `TorsionRegularGeneral.lean:87` | PASS | L564–568: nonsingularity is explicit at every strip point, the actual Lean inverse is two-sided, and its directional derivative is −G⁻¹(DG ω)G⁻¹. |
| `step:p4:tr-torsion` | `normalFrame_regular`, `TorsionRegularGeneral.lean:113`; `differentiableOn_linMat`, line 132; `torsion_regular_of_isOpen`, line 153 | PASS | L570–574: uses the shared Part 2 matrix objects and FrozenAgreement bridge; differentiability is established before identifying frozen derivatives. The general Hamiltonian helper specializes without extra premises. |
| `step:p4:tr-periodic` | `periodic_regular`, `TorsionRegularGeneral.lean:214`; `hbold_periodic`, `TorsionRegular.lean:43` | PASS | L576–580: primarity gives periodic displacement, actions and derivatives; hbold periodicity comes from f. Full integer-vector periodicity of G, N and T is proved. |
| `bp:p4:shift` | `phase_shift`, `Shift.lean:255` | PASS WITH NOTES | L686–701: (a)–(e) retained, including uniqueness of the normalizing vector. Positive width is Part 0's standing convention, documented in this module. The first bound in (e) uses arbitrary uniform real bounds; see question 1 and the bound discussion below. |
| `step:p4:shift-translation` | `differentiableOn_phaseShift`, `Shift.lean:52`; `isPrimaryOnStrip_phaseShift`, line 58; `isRealOnReals_phaseShift`, line 66; `fderiv_phaseShift`, line 78; `invarianceError_phaseShift`, line 85; `phaseShift_transfer`, line 101 | PASS | L704–709: real translations preserve the strip; exact derivative and error identities. General transfer covers properties of the value and derivative, with concrete norm and ball-containment instances at lines 109 and 116. |
| `step:p4:shift-phase` | `phaseAverage_phaseShift`, `Shift.lean:155`; `isNormalized_phaseShift_iff`, line 191; `norm_phaseAverage_le`, line 201; `norm_phaseShift_sub_le`, line 218 | PASS | L711–717: continuous periodic real displacement gives translation-invariant averaging, with the necessary +a term. Unit-volume integration and the triangle inequality give both bounds. |
| `bp:p4:mixed-difference` | `mixed_difference`, `MixedDifference.lean:143` | PASS | L800–806: U open, complex holomorphy, all t,t′ in [0,1], and the second-derivative bound only at parallelogram points. Exact alternating sum and Q‖v‖‖w‖; no global convexity or extra positivity assumption. |
| `step:p4:mixed-proof` | `mixed_difference_of_finiteDimensional`, `MixedDifference.lean:87` | PASS | L809–817: two mean value inequalities, confined to parallelogram segments; holomorphic regularity supplies DF. Generalization to finite-dimensional E and W retains the concrete statement. |

No constant has acquired dependence on the perturbation or the evaluation point. No hard step is assumed through an instance, structure field, or conclusion-shaped hypothesis. The hypotheses of phaseShift_transfer are ordinary inputs to a separately named transport helper, not premises added to the source theorem.

## Answers to the seven handoff questions

1. **Yes, positive width is within convention.** `blueprint/parts/p0-conventions.tex:19` says “The complex strip of width ρ > 0”; `Shift.lean:19–21` explicitly invokes that convention. The extra visible binder in phase_shift is therefore an allowed standing premise. For n ≥ 1 and ρ ≤ 0 the strip is empty, so strip holomorphy/primarity constrain no real points: K = 0 already contradicts the claimed phase translation formula for nonzero a. Thus one must retain the convention. The phase norm estimate alone does not need positive width: norm_phaseAverage_le proves it without that premise; the handoff's suggestion that all of (e) fails without it is too broad.

2. **Yes, the omissions give stronger results.** Derivative estimates need neither periodicity/reality nor openness of B: actionNbhd is a union of open balls for every B (`DerivativeBounds.lean:61–67`). B's boundedness is retained exactly where the hBound estimate needs it. Nonemptiness, nondegeneracy, boundary regularity, and dimension/frequency restrictions are unnecessary for these estimates. For the general torsion helpers, openness and the pointwise periodicity identity suffice; differentiating a translation identity uses equality on a neighborhood at the original point (`TorsionRegularGeneral.lean:58–65`). No global invariance of the ambient set under translations is needed. In periodic_regular, the shifted K-value also belongs to the domain because the shifted angle remains in the strip and hKB applies there.

3. **Yes, the specialized torsion_regular covers the blueprint node.** Its h/f source premises are inherited from the fixed HEAD context (`p4-measure.tex:138–152`), not additional analytic assumptions on K. Its ρ, K, image containment, determinant, and ω premises match L547–549; its four conjunctions match (a)–(d). It does not assume ε ≤ 1. The general helpers strengthen applicability; they do not replace the specialized export. FrozenAgreement identifies normalMat with the frozen normalFrame columns and the matrix torsion with the actual frozen torsion. The frame's differentiability is proved before that bridge is invoked.

4. **Yes, bounds transfer is faithful.** phaseShift_transfer quantifies over any property P of K(θ) and DK(θ), and proves its transfer by reindexing on the same strip. The bundled theorem contains the two explicitly advertised applications (derivative bounds and balls in any set). It does not restrict the ambient set or change the radius. The general helper remains available for further value/derivative bounds.

5. **Yes, IsZPeriodicOn has the right meaning.** Its body (`TorsionRegularGeneral.lean:40–41`) is literally u(θ + k) = u(θ) for every integer vector k on the strip. The proved conversion at line 44 substitutes k = eᵢ and obtains `KAM.Torus.IsPeriodicOn`, whose definition is coordinatewise period one (`KAM/Torus/Basic.lean:122–123`). There is no weakened periodicity or alternate carrier.

6. **Yes, the mixed-difference statement is exact.** The implementation first bounds the variation of DF in the w direction, then applies the mean value inequality to Ψ(x) = F(x+w) − F(x) along [a,a+v]. The blueprint writes a scalar parameterization Ψ(t); these are equivalent implementations of the two segment estimates. Every use of the Q bound is justified by hpar/hQ on the parallelogram. No Part 1 convex-open-domain mixed-difference result is imported as a substitute.

7. **Yes, the constants are exact.** derivConstH = cbar n · Mh · (deltaStar s₀ r₀)⁻¹^j; derivConstF = cbar n · (deltaStar s₀ r₀)⁻¹^j; derivConstM = cbar n · (Mh+1) · (deltaStar s₀ r₀)⁻¹^3. The inherited deltaStar is ¼ min(min(s₀,1),r₀), hBound is the stated supremum, and cbar is the finite maximum specified by the blueprint (`KAM/Head/Data.lean`, with cbar_eq = 32). No enlargement or renormalization is introduced.

For shift (e), Lean uses `∀ C, (∀ x, distance x ≤ C) → ‖phaseAverage K‖ ≤ C`, the prescribed pointwise representation of a uniform/sup bound (`PROVER-COMMON.md`, “Conventions”). It is not a conditional replacement with a new fixed bound: C is universally quantified in the conclusion. Under the source hypotheses the real-slice displacement is continuous and periodic, so the full K−K⁰ displacement is bounded by a compact fundamental-cell bound. Consequently this formulation recovers the displayed finite supremum bound. No raw real sSup of an unbounded range is used. The second estimate holds for all complex θ, strengthening the strip-restricted statement.

## Definition classification

The branch introduces exactly six definitions; no new abbrev or structure.

| Definition | Classification and whole-carrier behavior |
|---|---|
| `derivConstH` (`DerivativeBounds.lean:47`) | Explicit scalar formula for Hⱼ, with Mh supplied as an argument. Total even for δ = 0 via Lean's inverse; estimates require s₀,r₀ > 0, so no zero-inverse fallback is used. |
| `derivConstF` (line 51) | Explicit scalar formula for Fⱼ; same guarded radius behavior. |
| `derivConstM` (line 55) | Explicit scalar formula for M; same guarded radius behavior. |
| `hamJFun` (`HamiltonianField.lean:46`) | Linear evaluation of a continuous linear functional on coordinate basis vectors, with exactly the Hamiltonian signs; no fallback. |
| `hamJ` (line 63) | The same map bundled using mkContinuous and a proved norm bound; no changed body on any functional, including n = 0. |
| `IsZPeriodicOn` (`TorsionRegularGeneral.lean:40`) | Literal full ℤⁿ periodicity predicate, for arbitrary codomain. Empty-strip vacuity is standard set-restricted periodicity; substantive phase conclusions retain positive width. |

Inherited totalizations were also checked at their uses. The real hBound supremum is used as a bound only after proving boundedness from h's holomorphy and bounded B. The frozen matrix inverse is used analytically only under det G ≠ 0. Frozen fderiv terms representing analytic derivatives are identified after differentiability has been established. The main phase_average identity integrates a continuous real-slice displacement; it does not exploit the zero value of an undefined/nonintegrable integral. The standalone norm_phaseAverage_le is stronger and valid for the total integral as well. Existing Part 2 carriers, rather than parallel frame definitions, are used throughout.

## Proof dependencies and hygiene

The six new modules use frozen definitions, proved infrastructure, and Mathlib. No new module imports a provider or frozen theorem, and no shortcut through a DRAFT_SORRY anchor was found. The Part 2 frame/bridge dependency is expressly authorized by the package brief. No proof fact contradicting the blueprint was found.

Exact validation commands and observed output:

```text
$ nice -n 5 lake build KAM.Head.DerivativeBounds KAM.Head.TorsionRegular KAM.Head.Shift KAM.Head.MixedDifference
Build completed successfully (2904 jobs).
[exit 0]

$ nice -n 5 sh scripts/lint_sources.sh
check_lean_modules: PASS (225 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
[exit 0]

$ git diff main...HEAD -- KAM/Frozen manifest
[no output; exit 0]

$ git diff --check main...HEAD
[no output; exit 0]

$ wc -l KAM/Head/{DerivativeBounds,HamiltonianField,TorsionRegular,TorsionRegularGeneral,Shift,MixedDifference}.lean
  300 KAM/Head/DerivativeBounds.lean
  146 KAM/Head/HamiltonianField.lean
  112 KAM/Head/TorsionRegular.lean
  251 KAM/Head/TorsionRegularGeneral.lean
  292 KAM/Head/Shift.lean
  153 KAM/Head/MixedDifference.lean
 1254 total

$ rg -n 'set_option|sorry|admit|unsafe|opaque|axiom|EuclideanSpace' KAM/Head/{DerivativeBounds,HamiltonianField,TorsionRegular,TorsionRegularGeneral,Shift,MixedDifference}.lean
[no matches; exit 1]

$ nice -n 5 lake env lean .lake/abi-scratch/I-P4B-audit-1.lean > .lake/abi-scratch/I-P4B-audit-1-axioms.txt 2>&1
[exit 0; all 59 public theorem outputs reproduced below]
```

The build and lint (including its Lean ABI subprocess) and the axiom probe ran sequentially. All six files have copyright/authors, module, imports, module docstring and an exposed public section. Lint checks the generated root imports; the branch's KAM.lean change consists of the six corresponding import additions. No frozen/manifest change exists in the branch comparison. The working tree had no tracked changes before this audit; the handoff was already untracked. The auditor changed only this report, apart from temporary probe files under `.lake/abi-scratch/`, which were deleted after recording their output. No state-changing git command was used.

Provider exact-type probe: **not applicable**, since there is no provider or frozen theorem export in this package. The actual infrastructure results were independently imported and their axioms checked. This audit does not claim a separate leanchecker replay or a full-root library build; the requested targeted build covers all six package modules transitively.

## Findings, errata and uncertainties

- **Minor — stale module-summary locator.** `KAM/Head/TorsionRegularGeneral.lean:24` calls the general result `KAM.Head.torsion_regular`, but this file defines `KAM.Head.torsion_regular_of_isOpen` at line 153; torsion_regular is the specialization in `TorsionRegular.lean:67`. Proposed fix: change that name in the module docstring to torsion_regular_of_isOpen. No statement or proof change is needed.
- No blocking or major findings. No suspected defect in a pinned mathematical source was identified; this package was audited against the local blueprint rather than an independent PDF transcription. No new mathematical deviation was introduced by the auditor. The positive-width binder is an explicit standing convention, the omitted HEAD premises are strengthenings, and the pointwise uniform-bound formulation follows the campaign convention.
- The dependency graph still labels these nodes NOT_STARTED in this checkout. That is campaign metadata for the orchestrator to update after acceptance, not evidence that the Lean declarations are missing.

## Axiom probe output

The temporary probe imported the six package modules and issued `#print axioms KAM.Head.<name>` for every public theorem declared in those files (59 total, including all handoff exports and supporting public results). Every output has precisely the allowed three axioms; no sorryAx or frozen-theorem dependency occurs.

```text
'KAM.Head.isOpen_actionNbhd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isOpen_domainD'' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isOpen_domainD' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.deltaStar_le_stripWidth_div' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.deltaStar_le_div' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.closedBall_subset_actionNbhd_three_quarters' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.closedBall_subset_domainD'' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_iteratedFDeriv_le_cbar' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.domainD_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_iteratedFDeriv_h_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_iteratedFDeriv_f_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.differentiableOn_hbold' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_hbold_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_iteratedFDeriv_hbold_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.cbar_mul_le_derivConstM' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.derivative_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_hamJFun_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.hamJ_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_hamJ_apply_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_hamJ_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.hamiltonianVectorFieldℂ_eq_hamJ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.differentiableOn_hamiltonianVectorField' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.contDiffAt_fderiv_two' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_iteratedFDeriv_hamiltonianVectorField_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_hamiltonianVectorField_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.fderiv_hamiltonianVectorField' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.hamiltonianVectorField_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.hbold_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.torsion_regular' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.IsZPeriodicOn.isPeriodicOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.fderiv_add_eq_of_translate' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.fderiv_primary_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.add_intCast_fst' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.gramMatrix_inverse_regular' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.normalFrame_regular' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.sqMat_apply_entry' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.differentiableOn_linMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.torsion_regular_of_isOpen' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.hamiltonian_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.periodic_regular' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.add_ofReal_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.differentiableOn_phaseShift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isPrimaryOnStrip_phaseShift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isRealOnReals_phaseShift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.fderiv_phaseShift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.invarianceError_phaseShift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.invarianceError_phaseShift_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.phaseShift_transfer' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_fderiv_phaseShift_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.ball_phaseShift_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.torusAverage_const' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.re_angleDisplacement_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.phaseAverage_phaseShift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isNormalized_phaseShift_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_phaseAverage_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_phaseShift_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.phase_shift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.mixed_difference_of_finiteDimensional' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.mixed_difference' depends on axioms: [propext, Classical.choice, Quot.sound]
```
