# Lean design for the shared Newtonian/Kepler/Delaunay layer (blueprint-I Parts 6-7, blueprint-P Parts 6-7)

Design v1, 2026-10-27, branch `inp-design-kep` (brief: design the Lean architecture for `bpI:p6:*`, `bpI:p7:*`,
`bpP:p6:*`, `bpP:p7:*`). Planning evidence, not approved Lean. The only frozen declaration in scope is I-KEPLER
(`KAM.Iso.kepler_bordered_det`), already proved (`KAM/Iso/Kepler.lean` on branch `inp-w1gates`: `keplerBorder_det`,
`keplerBorder_det_pos`). Everything else here is new. Modeled on track K's `PART23-LEAN-DESIGN.md` and track N's
`PART3-LEAN-DESIGN.md`.

**The signatures.** Every result node has its exact Lean statement in two untracked files (copied verbatim in Appendix A):
`.drafts/design/KeplerSignatures.lean` (sections A-E: shared layer and track I; 1,006 lines, sha256 `39f557a4ca7324443508351a3600f0a363e2db726a11af0d6cc58e793d521370`)
and `.drafts/design/KeplerSignaturesP.lean` (sections F-G: Newtonian models and Poincare charts; 690 lines, sha256
`d9903304231afac0841cf0456d90c3dec04b2eb9e1a9752a9d4f9f9b7164d9c8`). Both are under the 1500-line cap (the first draft was 1,478 lines and the
audit additions would have exceeded it).
- `nice -n 5 lake env lean .drafts/design/KeplerSignatures.lean` exits 0 on its own. The second file continues the first and uses the frozen
  `FastShift`; `sh .drafts/design/check_kepler.sh` concatenates them (adding the one extra import) and elaborates them in one Lean process:
  exit 0, 294 diagnostics, all `declaration uses 'sorry'` (a draft cannot import a draft without a built `.olean.server`, hence the script).
  No `set_option`, no `maxHeartbeats`, no `axiom/admit/unsafe/opaque`.
- Imports: only `Mathlib` and `KAM.Frozen.*.Defs.*` (including `KAM.Frozen.Planetary.Defs.FastShift`, audit F1); no provider, no frozen theorem.
- No body is proved (the brief). Every Mathlib/KAM lemma relied on was `#check`ed AND probed for applicability (Section 9.2, audit F7).
- Revision 2 (this text) resolves the audit `docs/tracks/P/design/KEPLER-design-audit-1.md`; see "Audit fixes" (Section 10).

## 0. Decisions in brief

1. **One shared layer `KAM/Kepler/` (namespace `KAM.Kepler`)** holds everything that tracks I and P both use:
   planar geometry on the frozen `planeSq/planeLength/planeDot/planeCross`, the symplectic bookkeeping
   `IsSymplecticOn`, the regular Kepler equation (real and complex), the orbit maps and Delaunay chart (strength one,
   unit mass), the means, and the mass/strength dictionary. Track I specific results (the Kepler-rotation Hamiltonian,
   the period-one conversion, the exact restricted Hamiltonian in Delaunay variables) live in `KAM/Iso/`; track P
   specific results (Newtonian models, Poincare chart, product chart, D25 dictionary) live in `KAM/Planetary/`.
   The PLAN.md ownership ruling is followed: I owns Kepler fundamentals, P owns the Poincare chart and the Newtonian
   models. No module of the shared layer imports a track module.
2. **One contraction lemma serves both Kepler equations.** `KeplerData`/`keplerSol_spec` (`KAM/Kepler/EquationComplex`)
   solves `G - a sin G + b cos G = c` on any open parameter set `N` of a complete complex normed space with analytic
   coefficients (`AnalyticOnNhd`), from two inequalities (strip invariance, contraction); joint analyticity of the solution
   comes from the analytic implicit function theorem, not from a multivariable Weierstrass theorem (audit F7). Track I's `u(ell, e)` (`bpI:p7:kepler-eq`, thin
   tube around `[-e1, e1]`) is the instance `a = e, b = 0, c = ell`; track P's `F(lambda, v)` (`bpP:p7:regular-kepler` (b))
   is the instance `a = v_0, b = v_1, c = lambda`. The real solution `keplerLong` is separate and uses Mathlib's
   `C^omega` implicit function theorem (Section 9); `eccAnom ell e := keplerLong ell ![e, 0]`.
3. **Orbit maps are parameterized by `e in [0, 1)`** (`orbitMapR ell g L e`), not by `G`. All identities of
   `bpI:p7:orbit-identities` and the circular endpoint `bpI:p7:circular` are then one family of lemmas (`0 <= e < 1`);
   the Delaunay map is `delaunay w = orbitMapR ell g L (eccOf L G)`. The mass/strength chart is
   `delaunayMK m kappa = scaleMK m kappa o delaunay o (id, m^-1 .)`.
4. **Statements are about the frozen objects.** Phase points are `Phase d = (Fin d -> R) x (Fin d -> R)` (positions
   first), bodies are read with the frozen `bodyVector` (index `finProdFinEquiv (i, c)`), lengths are the frozen
   `planeLength`, the symplectic form is the frozen `symplecticForm`, the Hamilton field is the frozen
   `hamiltonianVectorField`. Complexifications use `(Fin d -> C) x (Fin d -> C)` (as `hamiltonianVectorFieldC`) and
   the frozen `actionNbhd`, `complexStrip`. No `EuclideanSpace`.
5. **Symplecticity is `IsSymplecticOn c Psi U`** (`Omega(DPsi u, DPsi v) = c Omega(u, v)` for the frozen form, source and
   target dimensions independent so that `Phase (n+n) -> Phase (n*2)` is covered). It is the content of the P1
   definition of a `c`-chart minus analyticity; Part 1's `IsChart` should unfold to `AnalyticOnNhd` + this (coordination,
   Section 7.3). The sign conventions of blueprint-I (`J = -omegaZero`) never enter: both sides use the frozen form.
6. **Quotient diffeomorphisms are stated without quotient types**: surjective onto the target region, injective modulo the
   lattice (`iff` with an integer shift), and a local analytic diffeomorphism (`OpenPartialHomeomorph` with analytic
   inverse). This is equivalent to the blueprint's "diffeomorphism of the quotient" and is what the consumers use
   (Section 5, B6).
7. **Constants are definitions, not choices** wherever the blueprint gives formulas (`keplerY0`, `keplerDeltaK`,
   `keplerDeltaE`, `shiftEps`, `tubeRadius`, `tubeD`, `tubeBigD`, `axisGap`, `axisMax`); the one chosen radius is
   `exactDelta K` (classical choice of an admissible `delta_2`, with the theorem `exact_ham` stating it is admissible), so
   no later theorem carries a conclusion-shaped premise (rule 6).
8. **Hypotheses are minimal and explicit.** Where a blueprint hypothesis is unused it is dropped (list in Section 4);
   side conditions `0 < m`, `0 < kappa`, `0 < G`, `0 <= mu`, `0 < n`, eccentricity bounds are binders.
9. **Packages.** 32 prover packages (31 new + integration of the existing `KAM/Iso/Kepler.lean`) of 250-900 lines each (about 19,500 lines of proof) in 10 waves; the critical
   path is 10 waves (Section 7). **No package needs the ODE layer `KAM/ODE/`**: this layer proves identities,
   chart properties and the passage between frozen predicates (all pointwise in time), never existence, uniqueness or
   continuation. The one coupling to track N's design is a shared helper trio whose final signatures are fixed here (Section 7.3, item 1; sub-orchestrator decision: N3-8 imports `KAM.Kepler.Plane`).

## 1. Carriers

| Object | Lean carrier | Notes |
|---|---|---|
| phase space `R^d x R^d` | `Phase d = (Fin d -> R) x (Fin d -> R)` | frozen abbrev; max norm is the Prod/Pi norm |
| one Kepler orbit | `Phase 2`, `z = (q, p)` | `q = z.1`, `p = z.2`; matches `KAM.Iso` restricted space and `KAM.ODE` |
| Delaunay variables | `Phase 2`, `w = ((ell, g), (L, G))` | positions `(ell, g)`, momenta `(L, G)`; mass version `(Lambda, C)` |
| Poincare variables, one planet | `Phase 2`, `w = ((lambda, xi), (Lambda, eta))` | positions `(lambda, xi)`, momenta `(Lambda, eta)` (the order of `secularGamma`) |
| Poincare variables, `n` planets | `Phase (n + n)`, `assemble Lambda lambda eta xi` | fast block first; `fast`/`slow` frozen; `planetBlock w i : Phase 2` |
| physical `n` planets | `Phase (n * 2)`, bodies by `bodyVector`, index `finProdFinEquiv (i, c)` | frozen |
| Newton / `N`-body | `Phase (N * 2)` (Hamiltonian side), `Fin N -> Fin 2 -> R` (frozen Newton predicates) | `ofBodies` converts; `bodyVector_ofBodies` |
| eccentric longitude | `R` | `keplerLong lam v`, `v : Fin 2 -> R` with `planeLength v < 1` |
| complex objects | `(Fin d -> C) x (Fin d -> C)`; `Fin 5 -> C` for `(ell, g, L, e, k)` | `phaseToC` complexifies; principal `cpow` for roots |
| parameter set of the contraction | any `[NormedAddCommGroup P] [NormedSpace C P]` | instances `C x C` and `C x (Fin 2 -> C)` |
| safe action region `K` | `Set (Fin 2 -> R)`, `(L, G) = (x 0, x 1)` | `SafeAction K` (compact, nonempty, in the cone) |
| strip / action neighbourhood | frozen `complexStrip 2 s`, `actionNbhd B r` | `K_delta := actionNbhd K delta` |
| times | `R`, `J : Set R` arbitrary | all reconstruction statements are pointwise for `t in J` |
| angles | radians `2 pi` inside the layer; `periodOneMap` (`S(theta, I) = (2 pi theta, I/2 pi)`) at the track-I boundary | `angleScale (2 pi)` at the track-P boundary |

Instances: none are declared on bare function or matrix types; only Mathlib's norms on `Pi`/`Prod`.

### 1.1 Standing structures (all `Prop`-valued, typing data, never produced by a theorem of this layer)

`KeplerData N a b c y0 kappa` (strip invariance, contraction, openness, holomorphic coefficients),
`ShiftConst rmin rhoMax eps0` (`bpI:p7:shift` smallness data), `SafeAction K` (compact nonempty `K` in the cone
`0 < G < L`), `AxisData a gamma A` (`gamma` lower bound of axes and gaps, `A` upper bound of axes). `ExactHamData K delta`
is the bundle of the clauses (i)-(iv) of `bpI:p7:exact-ham`; it is a `Prop`-def used only inside `exactDelta`.

### 1.2 Explicit objects (total definitions)

`rot`, `ex`, `keplerPhi`, `keplerJac`, `keplerLong`, `eccAnom`, `keplerOp`, `keplerSol`, `keplerLongC`, `eccAnomC`,
`keplerTube`, `regularTube`, `kE`, `orbitFrame`, `orbitMapR`, `orbitMapC`, `delaunay`, `delaunayC`, `deDom`,
`keplerRegion`, `elemL/elemA/elemEcc`, `eccOf`, `scaleMK`, `energyMK`, `axisMK`, `actionMK`, `regionMK`, `delaunayMK`,
`keplerRotH`, `periodOneMap(C)`, `restrictedHamTotal`, `vtheta`, `clen`, `shiftW/Psi/F/Xi/O`, `eccC`, `UDelta`, `exactF`,
`tildeF`, `keplerPart`, `pairPotential`, `fMov`, `fFix`, `gKernel`, `fKernel`, `nbodyHamiltonian`, `helioMap/Inv`,
`ofBodies`, `phaseCast`, `poincareProdCast`, `ComplexDomainData`, `complexDelta`, `orbitMapColumn`, `delaunayGen`, `NearCircularWitness`, `tubeRadius/D/BigD`, `poincareGamma/K/V/F`, `poincare`, `poincareInv`, `poincareC`, `poincareNbhd`,
`planetBlock`, `poincareProd`, `hProd`, `regionProd`, `polarMap`, `fullShift`, `angleScale`.
`restrictedHamTotal` is the frozen `restrictedHamiltonian` formula on all of `Phase 2` (`restrictedHamiltonian_eq` is
`rfl`-level), so no dependent `dite` appears. `keplerSol`, `keplerLong` and `exactDelta` use classical `if`; consumers
use only their specification theorems.

## 2. Node table

Every blueprint result is covered. "Mathlib" lists the declarations the proof should use (all `#check`ed, Section 9).
Remarks and pure notation nodes have no declaration (last row of each part).

### 2.1 Blueprint-I Part 6 (`p6-kepler.tex`; `KAM/Iso/KeplerHamiltonian.lean`, `KAM/Iso/Conversion.lean`)

| Node | Lean declaration(s) | Module | Mathlib / notes |
|---|---|---|---|
| `det-formula`, `kepler` (I-KEPLER) | `KAM.Iso.keplerBorder_det`, `keplerBorder_det_pos` | `KAM/Iso/Kepler` (exists, branch `inp-w1gates`) | `Matrix.det_fin_three`; **done** |
| `kep-ham` | `keplerRotH`, `differentiableOn_keplerRotH`, `keplerRotH_real` | `Iso/KeplerHamiltonian` | `DifferentiableOn.div` |
| `kep-border` | `frequencyMap_keplerRotH`, `fderiv_frequencyMap_keplerRotH`, `finThreeEquivSumUnit`, `borderedHessian_keplerRotH`, `det_borderedHessian_keplerRotH` | same | `Filter.EventuallyEq.fderiv_eq`, `Matrix.det_reindex_self`, `keplerBorder_det` |
| `conversion-map` | `periodOneMap`, `periodOneMapC` | `Iso/Conversion` | linear maps |
| `conversion` (a) | `periodOneMap_symplectic`, `periodOneMap_hamiltonianVectorField`, `periodOneMap_hasDerivAt_iff` | same | `Matrix.diagonal`, chain rule |
| `conversion` (b) | `keplerRotH_comp_div` (all `I`, by Lean totality) | same | `field_simp` |
| `conversion` (c), (d) | `frequencyMap_comp_div`, `keplerBorder_conversion`, `borderedHessian_conversion` | same | `Matrix.diagonal`, `Matrix.det_mul` |
| `nondeg` | `nondeg_period_one` | same | `actionNbhd` unfolds to `exists J in B, norm < r` |
| `totality`, `uses` | no declaration | | remarks |

### 2.2 Blueprint-I Part 7 (`p7-delaunay.tex`)

| Node | Lean declaration(s) | Module | Mathlib / notes |
|---|---|---|---|
| `ham-eq` | `restrictedHamTotal`, `restrictedHamiltonian_eq`, `isOpen_collisionFree`, `analyticOnNhd_restrictedHamTotal`, `restrictedVectorField_eq_hamiltonian`, `isRestrictedSolutionOn_iff` | `Iso/RestrictedHam` | `ContDiffAt.sqrt` at `omega`, `Real.contDiffAt_sqrt`; shares `KAM.ODE.restrictedField` (N3-8) |
| `newton` | `restricted_newton_iff` (pointwise in time; lowest priority) | same | `HasDerivAt` of `rot (-s)`, `hasDerivAt_pi` |
| `kepler-eq` | `KeplerData`, `keplerSol_analyticOnNhd`, `keplerSol_fderiv`, `hasDerivAt_eccAnomC_ecc`, `keplerSol_spec`, `keplerSol_differentiableOn`, `keplerConstants_pos`, `keplerEq_tube`, `keplerTube_real_points`, `eccAnomC_periodic`, `eccAnomC_zero_ecc`, `hasDerivAt_eccAnomC_ell`; real part `eccAnom_*`, `analyticOnNhd_eccAnom`, `strictMono_eccAnom` | `Kepler/EquationComplex`, `Kepler/KeplerTube`, `Kepler/Equation` | `ContractingWith.exists_fixedPoint`, `Real.arcosh`, `Real.cosh_arcosh`, `Complex.sin_add_mul_I`, `Complex.cos_add_mul_I`, `TendstoLocallyUniformlyOn.differentiableOn` (Weierstrass) |
| `ke-ift` (remark) | none | | the real part uses it (Section 9) |
| `elements` | `kE`, `keplerRegion`, `elemL/elemA/elemEcc`, `isOpen_keplerRegion` | `Kepler/Orbit` | continuity |
| `orbit-maps` | `orbitFrame`, `orbitMapR`, `delaunay`, `deDom`, `eccOf` | `Kepler/Orbit` | `Real.sqrt` |
| `orbit-maps-e` | `orbitMapC`, `orbitDomC`, `orbitMapC_differentiableOn/periodic/ofReal/real`, `orbitDomC_mem_ofReal` | `Kepler/OrbitComplex` | `DifferentiableOn.comp`, `keplerSol_differentiableOn` |
| `orbit-identities` (a)-(d), `circular` | `orbitMapR_radius/_radius_bounds/_speed_sq/_cross/_dot/_energy/_radial/_periodic`, `delaunay_mem_region`, `delaunay_elements`, `orbitMapR_eq_delaunay`, `analyticOnNhd_orbitMapR`, `analyticOnNhd_delaunay` | `Kepler/Orbit` | `Real.sin_sq_add_cos_sq`; stated for `0 <= e < 1` |
| `symplectic` | `IsSymplecticOn`, `IsSymplecticOn.comp`, `delaunay_symplectic`, `delaunay_fderiv_equiv`, `delaunay_hasFDerivAt`, `orbitMapColumn`, `fderiv_orbitMapR_basis`, `fderiv_delaunay_basis`, `delaunayGen`, `delaunay_liouville`, `delaunay_hamiltonianVectorField` | `Kepler/DelaunaySymplectic` | `HasStrictFDerivAt`, `ContinuousLinearEquiv` (Section 7.1) |
| `chart` | `delaunay_periodic`, `delaunay_eq_iff`, `keplerRegion_subset_image`, `delaunay_localDiffeo` | `Kepler/DelaunayChart` | `Complex.arg`-free: uses `exists_rot_eq`, `Real.arccos`/`Real.cos_arccos`; `ContDiffAt.toOpenPartialHomeomorph`, `ContDiffAt.to_localInverse` at `omega` |
| `near-circular` | `NearCircularWitness`, `nearCircular_witness_unique`, `nearCircular_eq`, `nearCircular_eq_image`, `isOpen_nearCircular`, `nearCircular_nonempty_iff` (about the frozen `NearCircular`) | `Iso/NearCircular` | `iso_radiusSq_eq` |
| `h0` | `delaunay_hamiltonian`, `restrictedHamTotal_zero` | `Kepler/Orbit`, `Iso/RestrictedHam` | |
| `means` | `orbitMapR_mean_inv_radius/_speed_sq/_radius` (also the circular case) | `Kepler/Means` | `intervalIntegral.integral_comp_mul_deriv'`, `Function.Periodic.intervalIntegral_add_eq`, `integral_cos_sq`, `integral_cos`, `integral_sin` |
| `scaling` | `scaleMK`, `energyMK`, `scaleMK_energy/_cross/_symplectic/_bijective`, `scaleMK_flow`, `energyMK_eq_mul_energy`, `scaleMK_hamiltonianVectorField` | `Kepler/Mass` | |
| `complex-domain` | `SafeAction`, `kEccMin/Max`, `kLMin`, `kGMin`, `kRmin`, `kRhoMax`, `SafeAction.ecc_bounds`, `eccC`, `UDelta`, `delaunayC`, `ComplexDomainData`, `complexDelta`, `complex_domain_spec` | `Iso/ComplexDomain` | `IsCompact.exists_isMinOn`, `IsCompact.sSup_mem`, `Complex.cpow` on `slitPlane`, `DifferentiableAt.cpow` |
| `shift-def`, `shift` | `vtheta`, `clen`, `e0`, `shiftW/Psi/F/Xi/O`, `ShiftConst`, `shiftEps`, `shiftCstar`, `shiftCsh`, `shiftConst_shiftEps`, `shiftF_eq_integral`, `shift_domain`, `shift_holomorphic`, `shift_mul_eq`, `shift_bound`, `shift_value_zero`, `shift_real` | `Iso/ShiftPotential` | `dslope`, `Complex.norm_cpow_of_ne_zero`, `intervalIntegral.hasFDerivAt_integral_of_dominated_of_fderiv_le` (`RCLike`), Schwarz lemma `Complex.norm_le_of_forall_mem_frontier_norm_le`, `Complex.dist_le_div_mul_dist_of_mapsTo_ball` |
| `exact-ham` | `exactF`, `exactEps`, `exactMu2`, `exactCF`, `ExactHamData`, `ExactRadiusData`, `exactDelta`, `exact_radius_spec`, `exact_ham`, `exact_positions_mem_shiftO` | `Iso/ExactHamiltonian` | `Metric.isCompact_iff_isClosed_bounded`, `Complex.differentiableOn` composition |
| `period-one` | `tildeF`, `delaunay_periodOne_symplectic`, `period_one` | `Iso/PeriodOne` | frozen `realHamiltonian`, `complexStrip`, `actionNbhd` |
| `transfer` | `transfer`, `transfer_identities` | `Iso/PeriodOne` | `HasDerivAt.comp`, `Filter.EventuallyEq.fderiv_eq` |
| `nondeg` | `nondeg_exact` | `Iso/PeriodOne` | `nondeg_period_one`, `borderedHessian_conversion` |
| `outputs`, `totality`, `errata` | no declaration | | remarks |

### 2.3 Blueprint-P Part 6 (`p6-newtonian-models.tex`; `KAM/Planetary/Newtonian/*`)

| Node | Lean declaration(s) | Module | Mathlib / notes |
|---|---|---|---|
| `plane` (a)-(c) | the `planeLength_*` family, `norm_le_planeLength`, `planeLength_le_sqrt_two_mul_norm`, `analyticAt_planeLength`, `analyticAt_inv_planeLength`, `hasFDerivAt_planeLength`, `hasFDerivAt_inv_planeLength`, `radius_eq_planeLength`, `radiusSq_eq_planeSq` | `Kepler/Plane` | `Real.sqrt`, `ContDiffAt.sqrt` at `omega`, `Finset.sum_mul_sq_le_sq_mul_sq` |
| `domain` | `collisionFreeDomain`, `isOpen_collisionFreeDomain`, `analyticOnNhd_moving/fixedHamiltonian`, `differentiableAt_*` | `Newtonian/Models` | `isOpen_iInter_of_finite`, `ContDiffAt` closure at `omega` |
| `split`, `kepler-part` | `keplerPart`, `pairPotential`, `fMov`, `fFix`, `keplerPart_eq_sum`, `movingHamiltonian_split`, `fixedHamiltonian_split`, `moving_sub_fixed`, `analyticOnNhd_fMov/fFix` | `Newtonian/Models` | `Finset.sum_comm`, `Fin.sum_univ_succ` |
| `action-reaction` | `gKernel`, `fKernel`, `sum_mass_smul_fKernel` | same | `Finset.sum_comm`, `planeLength_sub_comm` |
| `hamilton-eqs` | `hamiltonianVectorField_moving`, `hamiltonianVectorField_fixed`, `hasDerivAt_bodyVector` | same | `fderiv` of `planeLength` (Plane), `hasDerivAt_pi`, `HasFDerivAt.comp_hasDerivAt` |
| `nbody`, `reduction` (a)-(c) | `nbodyHamiltonian`, `ofBodies`, `helioMap/Inv`, `helioMap_helioInv`, `helioInv_helioMap`, `helioMap_symplectic`, `helioMap_pairing`, `nbodyHamiltonian_helio`, `nbodyHamiltonian_helio_zero_momentum`, `newton_to_moving` | `Newtonian/Reduction` | `Fin.sum_univ_succ`, `Fin.cons`; low priority (no later part cites `reduction`) |
| `bary-algebra` | `barycentricPositions_*`, `barycentricVelocities_*`, `sum_actualMasses_smul_*`, `planeLength_barycentricPositions_zero_le` | `Newtonian/Barycentric` | `Fin.cons_zero`, `Fin.cons_succ`, `Finset.sum_smul` |
| `reconstruction`, `units` | `reconstruction`, `reconstruction_all_time`, `isNewtonSolutionOn_of_isMovingSolutionOn` | `Newtonian/Reconstruction` | `HasDerivAt.sum`, `hasDerivAt_pi`, `Fin.sum_univ_succ` |
| `reconstruction-fixed` | `reconstruction_fixed`, `reconstruction_fixed_all_time` | same | |
| `orbit-transfer` | `orbit_transfer_moving`, `orbit_transfer_fixed` | same | frozen `IsPhysicalTorus` clause (viii) |
| `tube-constants` | `AxisData`, `axisMax`, `axisGap`, `axisData_canonical`, `tubeRadius`, `tubeD`, `tubeBigD` | `Newtonian/Tube` | `csInf_le`, `le_ciSup`, `Set.Finite.csInf_mem` |
| `tube-geometry` (a)-(e) | `circularTube_mono`, `circularTube_euclidean`, `circularTube_distances`, `circularTube_pair_bounds`, `circularTube_pairBounds_barycentric`, `circularTube_pairBounds_fixed` | same | `abs_planeLength_sub_le`, `planeLength_le_sqrt_two_mul_norm`, `Prod.norm_def`, `pi_norm_lt_iff` |
| `newton-in-tube` | `newton_in_tube`, `fixed_in_tube` | same | `reconstruction`, `circularTube_pair_bounds` |
| `vs-I`, `reduction-role`, `units` | no declaration | | remarks |
| `measure-positive` (a) | `circularTube_norm_lt`, `volume_lt_top_of_subset_circularTube` | `Newtonian/Assembly` | `Real.volume_Icc`, `MeasureTheory.Measure.pi`, `MeasureTheory.measure_mono`, `MeasureTheory.Measure.prod_prod` |
| `measure-positive` (b) | `measure_chart_image` (**Part 1 owns**; restated for the dependency check) | same | `MeasurableSet.image_of_continuousOn_injOn`, `MeasureTheory.Measure.addHaar_image_eq_abs_det_fderiv_mul` (Part 1); gated on P1 |
| `movkol-assembly`, `fixkol-assembly` | `movingKolmogorovSet_of_tube`, `fixedKolmogorovSet_of_tube` | `Newtonian/Assembly` | `orbit_transfer_*`, `circularTube_pair_bounds` |

### 2.4 Blueprint-P Part 7 (`p7-kepler-poincare.tex`; `KAM/Kepler/Mass`, `KAM/Planetary/Poincare/*`)

| Node | Lean declaration(s) | Module | Mathlib / notes |
|---|---|---|---|
| `kepler-data` | `scaleMK`, `energyMK`, `axisMK`, `actionMK`, `regionMK`, `delaunayMK`, `isOpen_regionMK` | `Kepler/Mass` | |
| `range` | `cross_le_action`, `cross_eq_action_iff` (pointwise equality case, B8) | `Kepler/Mass` | `planeSq_mul_planeSq` (Lagrange) |
| `kepler` (a)-(d) | `delaunayMK_symplectic`, `analyticOnNhd_delaunayMK`, `delaunayMK_image`, `delaunayMK_eq_iff`, `delaunayMK_localDiffeo`, `delaunayMK_periodic`, `delaunayMK_identities`, `delaunayMK_position`, `hasDerivAt_keplerEnergy_action`, `delaunayMK_means` | `Kepler/Mass` | `scaleMK_*`, `delaunay_*`, `orbitMapR_mean_*` |
| `regular-kepler` (a) | `keplerPhi`, `keplerJac`, `keplerMeanLongitude_eq`, `longitudeJacobian_eq`, `keplerPhi_strictMono/_bijective/_shift`, `keplerLong`, `keplerPhi_keplerLong`, `keplerLong_unique/_shift/_zero_vec`, `analyticOnNhd_keplerLong`, `hasDerivAt_keplerLong_lambda`, `fderiv_keplerLong_vec` | `Kepler/Equation` | `Continuous.surjective`, `ContDiffAt.implicitFunction`, `ContDiffAt.eventually_apply_eq_iff_implicitFunction`, `ContDiffAt.analyticAt` |
| `regular-kepler` (b) | `regularTube`, `keplerLongC`, `regularKepler_complex`, `keplerLongC_ofReal`, `keplerLongC_shift`, `hasDerivAt_keplerLongC_lambda`, `fderiv_keplerLongC_vec`, `regularKepler_jac_bound`, `cosh_one_lt` | `Kepler/KeplerTube` | `keplerSol_spec`, numerics (`Real.cosh_eq`, `Real.exp_one_lt_d9`) |
| `regular-kepler` (c) | `keplerLong_eq_add_eccAnom` | `Kepler/Equation` | uniqueness |
| `poincare-def`, `o-facts` | `poincareGamma/K/V/F`, `poincare`, `poincareDom`, `isOpen_poincareDom`, `poincare_facts`, `poincare_facts_polar` | `Poincare/Chart` | `Real.sqrt_pos`, `keplerJac_pos` |
| `poincare` (a) | `analyticOnNhd_poincareF`, `analyticOnNhd_poincare`, `poincare_periodic` | `Poincare/Chart` | `ContDiffAt` at `omega`, `analyticOnNhd_keplerLong` |
| `poincare` (b), (c), (d), (f) | `poincare_eq_delaunayMK`, `poincare_symplectic`, `poincare_elements`, `poincare_circular`, `poincare_means` | `Poincare/Symplectic` | density: `Dense.closure_eq`, `continuousOn` of `fderiv` of an analytic map (`AnalyticOnNhd.fderiv`) |
| `poincare` (e) | `poincare_image`, `poincare_eq_iff`, `poincare_localDiffeo`, `poincareInv`, `poincareInv_poincare`, `poincare_poincareInv` | `Poincare/Bijective` | `Complex.arg_mul_cos_add_sin_mul_I`, `exists_rot_eq` |
| `holomorphic` | `poincareGammaC`, `poincareVC`, `poincareC`, `poincareNbhd`, `poincare_holomorphic` | `Poincare/Holomorphic` | `DifferentiableOn.cpow`, `keplerSol_differentiableOn`, `Complex.arg_le_pi_div_two_iff`, `Complex.mem_slitPlane_iff` |
| `product-def`, `product-chart` (a)-(c) | `planetBlock`, `poincareProd`, `poincareProdDom`, `hProd`, `regionProd`, `isOpen_poincareProdDom`, `regionProd_one_iff`, `poincareProd_symplectic/_lattice/_eq_iff/_image/_localDiffeo` (lattice shift = the FROZEN `fastShift (a := n) (b := n)`), `phaseCast` and its API (module `Kepler/Basic`), `poincareProdCast`, `poincareProdCast_symplectic/_eq_iff`, `analyticOnNhd_poincareProd`, `keplerPart_poincareProd`, `hasDerivAt_nu`, `movingHamiltonian_poincareProd`, `fixedHamiltonian_poincareProd`, `isOpen_poincareProd_preimage`, `analyticOnNhd_fMov/fFix_poincareProd` | `Poincare/Product` | `finProdFinEquiv`, `Fin.append`, `fast`, `slow`, `assemble` simp lemmas (to be added) |
| `product-chart` (d) | none: it is the definition of `hamiltonianVectorField` read in the `fast`/`slow` blocks | | remark |
| `same-chart` | none (remark); `moving_sub_fixed` | | |
| `tube` | `circularPoint_eq_poincareProd`, `tube_in_chart` | `Poincare/Tube` | `IsCompact.exists_cthickening_subset_open`, `Metric.thickening` |
| `lattice` (a)-(d) | `polarDom`, `polarMap`, `fullShift`, `angleScale`, `polarMap_symplectic`, `analyticOnNhd_polarMap`, `polarMap_mapsTo`, `polarDom_shift`, `poincareProd_polar_symplectic/_lattice`, `poincareProd_polar_periodOne_symplectic/_lattice`, `polar_hamiltonian_split` | `Poincare/Lattice` | `Real.sqrt_mul_self`, `Real.sin_sq_add_cos_sq`; `angleScale` is Part 1's `S_c` (**Part 1 owns**) |
| `d25` (a)-(e) | `secularGamma_eq`, `secularRoot_eq`, `secularEccVector_eq`, `secularAxis_eq`, `ellipsePhase_eq_poincareProd`, `ellipsePhase_eq_poincareProd_self`, `keplerFunctions_poincareProd`, `exists_poincareProd_of_progradeElliptic` | `Poincare/D25` | frozen defs unfold; `poincare_elements`, `regionProd_one_iff` |
| `average` | `average_via_eccentric_longitude`, `poincareProd_means` | `Poincare/D25` | `intervalIntegral.integral_comp_mul_deriv'`, `Function.Periodic.intervalIntegral_add_eq` |
| `normalisation`, `e-comp`, `e-ift`, `e-hol`, `e-dense` ... | no declaration (`e-comp` is `IsCompact.exists_cthickening_subset_open`, cited by P14a) | | remarks / Mathlib facts |

## 3. Conventions binding for all modules

- **Lean module system.** Every file: copyright header, `module`, `public import` of everything its statements use,
  module docstring, `@[expose] public noncomputable section` (all definitions of Section 1.2 unfold in proofs, so they are
  exposed; `structure`s need no `@[expose]`).
- **Side conditions are binders.** `0 < m`, `0 < kappa`, `0 < G`, `0 < m0`, `0 <= mu`, `0 < n`, `0 < Lambda`, `0 <= e`, `e < 1`,
  `IsCompact K`, `K.Nonempty`, `kRhoMax K < 1` are explicit; nothing is hidden in a structure except typing data.
- **Angles.** `rot`, `ex`, `eccAnom`, `delaunay` use radians; `2 pi` is `2 * pi` (`open Real`; `pi` not `pi`-notation clash).
  Lattice shifts are `2 * pi * (k : R)`, `k : Z`.
- **Smoothness and analyticity.** "Real analytic" is `AnalyticOnNhd R f U` (neighbourhood form, as in `KAM.Strip`).
  Proofs go through `ContDiffAt R omega` (`omega` is `top` in `WithTop N-infty`; `open scoped ContDiff`, notation `omega`),
  then `ContDiffAt.analyticAt`; holomorphic is `DifferentiableOn C f U` on an open set. `AnalyticAt.contDiffAt` goes back.
- **Derivatives** are two-sided `HasDerivAt` / `HasFDerivAt` / `fderiv` exactly as in the frozen predicates; the fields are
  the frozen `hamiltonianVectorField`.
- **Totality.** Every division is by a quantity the statement shows positive or nonzero; where Lean's `x / 0 = 0` makes a
  statement hold without a hypothesis (`keplerRotH_comp_div`, `restrictedHamTotal_zero`, `sum_mass_smul_fKernel`), the
  hypothesis is dropped and the node says so.
- **No frozen file is touched; no provider is imported.** Only `KAM.Frozen.*.Defs.*` and, for I-KEPLER,
  `KAM.Iso.Kepler`.
- **Caveats on `Fin`/`Pi` calculus.** Index bookkeeping goes through the frozen `bodyVector`, `finProdFinEquiv`, `fast`,
  `slow`, `assemble`; add once (package P7-P) the simp lemmas `fast_assemble`, `slow_assemble`, `planetBlock_assemble`,
  `bodyVector_ofBodies`, `bodyVector_poincareProd`. A `HasDerivAt` into `Fin N -> Fin 2 -> R` or a `Prod` is decomposed by
  `hasDerivAt_pi` and `HasFDerivAt.comp_hasDerivAt` against `ContinuousLinearMap.fst/snd`.

## 4. Departures from the literal blueprint text

| # | Where | Lean form | Reason |
|---|---|---|---|
| D1 | `kepler-eq`, `regular-kepler` | one `KeplerData` contraction with holomorphic coefficients on any parameter space | both blueprint propositions are the same fixed point argument; avoids proving it twice |
| D2 | `regular-kepler` (a) | real analyticity by `ContDiffAt.implicitFunction` at `omega` + uniqueness gluing, not a separate real contraction | Mathlib has the analytic IFT (Section 9); keeps `K2` short |
| D3 | `chart`, `poincare` (e), `product-chart` (a) | surjective + injective modulo lattice + local analytic diffeo (`OpenPartialHomeomorph`) | "diffeomorphism of the quotient `(R/2 pi Z)^2 x C_0`" has no Lean carrier here; equivalent |
| D4 | `orbit-identities`, `circular` | stated once for `0 <= e < 1` via `orbitMapR` | the circular endpoint costs nothing and P7 needs it |
| D5 | `action-reaction`, `hamilton-eqs`, `bary-algebra` (a), (b) | `NoColl`, positivity of masses dropped where Lean totality makes the identity unconditional | stronger statements; listed per lemma |
| D6 | `domain` | analytic (`omega`), not only `C^infty` | `bpP:p7:product-chart` (c) cites it for analyticity (B2) |
| D7 | `tube-constants` | `AxisData a gamma A` + canonical `axisGap`, `axisMax` instead of `min`/`max` over pairs | `n = 1` has an empty pair set (junk `sInf`); consumers choose `gamma` themselves |
| D8 | `complex-domain` | "for every `(L', G') in K` within `delta_1`" replaces "nearest" | nearest point need not be unique; the blueprint's use is for any such point (B1) |
| D9 | `shift` | `shiftF = - dslope (shiftPsi q) 0 mu` instead of the integral `-int_0^1 d_mu Psi(q, t mu) dt`; `shift_real` over `shiftO` (not only the shell) | `dslope` is Mathlib's removable-singularity object; exactness needs real `q in O` off the shell (B8) |
| D10 | `exact-ham`, `period-one`, `transfer` | `exactDelta K` is chosen from the full predicate `ExactRadiusData` (positivity, `<= complexDelta K`, `ExactHamData`, positions in `shiftO`); `exact_radius_spec` certifies the selection | no conditional premises (rule 6); superseded by D20 |
| D11 | `range` | equality case pointwise (`q . p = 0 /\ planeLength q = a`) | "circular orbit" is an orbit property; the pointwise form is the one the proof gives |
| D12 | `reduction` (c) | `0 < mu`, `0 < m0`, `0 < m_i`, zero total momentum as hypotheses; conclusion `IsHamiltonianSolutionOn ... univ J z` + `NoCollision` (for `G = m0 = 1` this is `IsMovingSolutionOn`) | exact shape of the frozen predicate |
| D13 | `newton` (I) | pointwise in time, `v = x'` a separate curve | not used by frozen statements; avoids `deriv (deriv x)` |
| D14 | `ham-eq` | via `restrictedHamTotal` and `IsHamiltonianSolutionOn ... univ`, equivalent to `IsRestrictedSolutionOn` | the frozen Hamiltonian lives on a subtype |
| D15 | `conversion` (b) | unconditional in `I` | both sides are `0` at `I_0 = 0` (Lean division) |
| D16 | `holomorphic`, `complex-domain`, `shift` | `cpow` with exponents `1/2`, `-1/2`, `-3/2` (principal branch) | no `Complex.sqrt` API on `slitPlane`; `Complex.ofReal_cpow` links to real roots |
| D17 | `measure-positive` (b) | restated as `measure_chart_image` with Part 1's hypotheses | Part 1 is not designed here; owner Part 1 |
| D18 | `symplectic`, `conversion` (a) | frozen `symplecticForm` on both sides | sign convention `J = -omegaZero` of the blueprint never appears |
| D19 | `kepler-eq`, `regular-kepler` (b) | `KeplerData` has `AnalyticOnNhd` coefficients and `[CompleteSpace P]`; joint analyticity by the analytic IFT | audit F7: no multivariable Weierstrass in Mathlib; every instance is a composition of analytic maps |
| D20 | `exact-ham` | radius subordinate to a selected `complexDelta K` AND carrying the geometric control (`ExactRadiusData`); `exact_ham`, `exact_positions_mem_shiftO` are projections of `exact_radius_spec` | audit F3, audit 2 R2-1 |
| D21 | `lattice`, `product-chart` | the FROZEN `fastShift {a b}` is used, never redefined | audit F1 |

## 5. Blueprint issues

No theorem is false as written; the items below are mis-quantifications, unstated hypotheses or citations that
overstate a lemma. Corrected statements are in the signatures file.

**B1. `bpI:p7:complex-domain` (quantifier).** "for `(L, G) in K_{delta_1}` with nearest `(L', G') in K`": a point of
`K_delta` can have several nearest points, and the later uses (`bpI:p7:exact-ham`) need the bound for *every*
`(L', G') in K` within `delta_1`. Corrected (`complex_domain`): `forall x in actionNbhd K delta1, forall y in K,
norm (x - y) < delta1 -> norm (eccC x - eccOf y) < delta_E /\ norm (eccC x) < e_2`. The proof is unchanged.

**B2. `bpP:p6:domain` is cited for more than it states.** `bpP:p7:product-chart` (c) and Step `stepP:p7:pc-share` say
`f_mov, f_fix` are real analytic on `W` "by Lemma `bpP:p6:domain`, whose proof gives analyticity as well", but the lemma
states `C^infty` only. Corrected: `analyticOnNhd_movingHamiltonian`, `analyticOnNhd_fixedHamiltonian`, `analyticOnNhd_fMov`,
`analyticOnNhd_fFix` (same proof; Mathlib's `ContDiffAt` closure lemmas hold at `omega`).

**B3. Unused hypotheses (strengthenings, not defects).** `bpP:p6:action-reaction` assumes `NoColl(q)`; the identity holds
for all `q` (`l` is even, Lean division is total). `bpP:p6:hamilton-eqs` needs `NoColl` (derivative of `l`) but no
positivity of masses; `bpP:p6:bary-algebra` (a), (b) need no sign conditions. Lean drops them.

**B4. `bpP:p6:tube-constants` for `n = 1`.** The minimum over `i != j` of `|a_i - a_j|` is over the empty set; the blueprint
omits it. In Lean `min` over an empty finset is junk. Corrected: hypotheses `AxisData a gamma A` (gamma below the axes and the
gaps, `A` above the axes); `d = gamma/2`, `D = 2 A + gamma`, `zeta_* = min {eta, gamma/6}`. The blueprint's `gamma_a` is
`axisGap a` (`sInf` of the set of axes and gaps, well defined and positive for `0 < n`, injective positive `a`), and
`a_max = axisMax a`; `axisData_canonical` proves the match. Numerics unchanged (`sqrt 2 < 1.4143`).

**B5. `bpP:p7:regular-kepler` (a)/(E1): analytic IFT.** The blueprint cites a "real-analytic inverse function theorem
(E1)". Checked: Mathlib has it, as `ContDiffAt.implicitFunction`/`ContDiffAt.to_localInverse` for
`n : WithTop N-infty` including `omega`, and `ContDiffAt R omega f x <-> AnalyticAt R f x`
(`ContDiffAt.analyticAt`, `AnalyticAt.contDiffAt`). What Mathlib does not have is a *global* statement; the blueprint's
global uniqueness (strict monotonicity of `Phi(., v)`) is exactly what glues the local solutions
(`eventually_apply_eq_iff_implicitFunction`). No defect; the route is recorded in the proof plan of package K2.

**B6. `bpP:p7:poincare` (e) / `bpP:p7:kepler` (a) / `bpI:p7:chart`: quotient diffeomorphism.** "induces a real-analytic
diffeomorphism of `O/(2 pi Z x {0})` onto `K`" quantifies over a quotient manifold that no Lean carrier here provides.
Corrected (D3): `poincare_image` (onto), `poincare_eq_iff` (injective modulo the lattice), `poincare_localDiffeo`
(`OpenPartialHomeomorph` with analytic inverse at every point of the domain). These three are equivalent to the blueprint
statement and are exactly what P12 and P14 use.

**B7. `bpP:p7:range`, equality case.** "equality iff the orbit is circular (`|q|` constant)": a property of the orbit, not
of the point. The proof gives `Q . P = 0 /\ r = L^2` at the point. Corrected (`cross_eq_action_iff`): `C = Lambda <->
q . p = 0 /\ |q| = a`.

**B8. `bpI:p7:shift` (Lemma, real part).** "For real `q in O` and real `mu`... `(q, mu)` is collision free": `O` is the
`eps_0/2`-neighbourhood of the shell `{r_min <= |q'| <= rho_max}`, so a real `q in O` need not lie on the shell. The
exactness proof (`stepI:p7:eh-exact`) needs exactly this (the real point `q(w)` is only known to be in `O`). Lean states
`shift_real` for real `q` with `phase_to_C q in shiftO rmin rhoMax eps0`, not for `q` on the shell.

**B9. `bpI:p7:exact-ham` (ii), (iii): real points of `U(delta_2)`.** "for every real `w in U(delta_2)`" means
`phaseToC w in UDelta K delta_2`; its `(L, G)` is then in the cone only because of `complex_domain` (real points of
`K_delta` lie in `C_0`). Lean has this in `complex_domain` and as the conjunct `0 < G < L` of `ExactHamData`.

**B10. Minor (no action).** (i) `bpP:p7:regular-kepler` (b) claims `|J| > 3/5` and contraction `0.39`: both true with
`cosh 1 < 1.55` (`0.25 * 1.55 = 0.3875 < 0.39`, `1 - 0.3875 > 0.6`). (ii) `bpP:p6:newton-in-tube` mixes
`zeta <= zeta_*` with `U_zeta`; Lean takes `0 < zeta <= gamma/6` (which is what the pair bounds use) and `AxisData`.
(iii) `bpP:p6:reconstruction` for the D25 predicates needs the rewrite `1 * actualMasses 1 m mu = actualMasses 1 m mu`;
provided as `isNewtonSolutionOn_of_isMovingSolutionOn`. (iv) The blueprint names `bpP:p6:reduction` as a forward
reference for Part 14 but Part 14a/14b do not cite it; its packages are scheduled last.

**What was checked and found correct** (so provers need not recheck): the sign/order conventions of `Omega_chart =
dLambda ^ dlambda + d eta ^ d xi` against `symplecticForm` (positions `(lambda, xi)`); the constants `delta_K`, `delta_E`,
`y_0` of `bpI:p7:kepler-eq` (`delta_K + e_2 sinh y_0 + delta_E cosh y_0 <= y_0`, with `e_2 sinh y_0 = theta_* tanh y_0 <=
theta_* y_0`); the shift-lemma constants (`eps_0 < sqrt 5 - 2 < 1/4`); the sizes in `bpP:p7:holomorphic` (`|s| < 1.42/sqrt Lambda_0`,
`|v_0| + |v_1| < 0.1875 < 1/4`); the identities `|v|^2 = 1 - k^2`, `M^{-1} = k^{-1}(I - v v^T/(1+k))` used in the explicit inverse;
the frozen `movingHamiltonian`/`fixedHamiltonian` against `H_Kep + mu f_mov`, `H_Kep + eps f_fix`; the frozen D25
`ellipsePosition/Momentum` against the chart at `kappa = 1`; the Newton equations `V_0' = mu G sum m_i g_i`.

## 6. Modules and import DAG

Sizes are realistic estimates; the hard cap is 1500 lines (target <= 950). Revision 2: the early energy/region definitions move to a small
module `Kepler/Energy` (so `Iso/RestrictedHam`, `Newtonian/Models` and `Poincare/Chart` need not import the late mass chart), `phaseCast` lives in
`Kepler/Basic`, and every edge needed by a statement or a proof plan is in the DAG (audit F5).

| Module | Content | Lines |
|---|---|---|
| `KAM/Kepler/Basic.lean` | `IsSymplecticOn` (+ `comp`, scaling, linear-map lemmas), `phaseToC`, `rot`, `ex`, `phaseCast` and its API (`phaseCast_symplectic/_hamiltonianVectorField/_volume/_analytic`) | 350 |
| `KAM/Kepler/Plane.lean` | planar geometry, calculus of `planeLength`, Lagrange, `radius_eq_planeLength` | 400 |
| `KAM/Kepler/Energy.lean` | `kE`, `eccOf`, `deDom`, `keplerRegion`, `elemL/A/Ecc`, `scaleMK`, `energyMK`, `axisMK`, `actionMK`, `regionMK` (definitions + openness/scaling lemmas) | 200 |
| `KAM/Kepler/Equation.lean` | `keplerPhi/Jac/Long`, `eccAnom`, real analyticity (IFT), derivatives | 550 |
| `KAM/Kepler/EquationComplex.lean` | `keplerOp`, `KeplerData`, `keplerSol`, contraction, analyticity, derivatives, real/periodic corollaries | 650 |
| `KAM/Kepler/KeplerTube.lean` | `regularTube`, `keplerLongC` (instance P7), `keplerE2`...`keplerTube`, `eccAnomC` (instance I), all derivative formulas, `cosh_one_lt` | 700 |
| `KAM/Kepler/Orbit.lean` | `orbitFrame`, `orbitMapR`, identities, `delaunay`, analyticity, `delaunay_hamiltonian` | 600 |
| `KAM/Kepler/OrbitComplex.lean` | `orbitMapC`, domain, holomorphy, real points | 400 |
| `KAM/Kepler/DelaunaySymplectic.lean` | `orbitMapColumn`, `fderiv_*_basis`, six bracket identities, `delaunay_symplectic`, `delaunay_liouville`, invertibility | 900 |
| `KAM/Kepler/DelaunayChart.lean` | periodicity, injectivity modulo lattice, surjectivity, local diffeo | 650 |
| `KAM/Kepler/Means.lean` | the three means over `ell`, circular case | 350 |
| `KAM/Kepler/Mass.lean` | `delaunayMK`, `range`, `kepler` (a)-(d), `scaling` incl. flow | 700 |
| `KAM/Iso/Kepler.lean` | EXISTING (`keplerBorder_det`, `keplerBorder_det_pos`), cherry-picked from `inp-w1gates` | 37 |
| `KAM/Iso/KeplerHamiltonian.lean` | `keplerRotH`, frequency map, bordered Hessian | 500 |
| `KAM/Iso/Conversion.lean` | `periodOneMap`, (a)-(d), `nondeg_period_one` | 600 |
| `KAM/Iso/RestrictedHam.lean` | `restrictedHamTotal`, `ham-eq`, solution equivalence, `newton`, `restrictedHamTotal_zero` | 450 |
| `KAM/Iso/NearCircular.lean` | the statements about `NearCircular` (incl. witness uniqueness) | 300 |
| `KAM/Iso/ShiftPotential.lean` | `vtheta`...`shiftF_eq_integral`, `shift_real` | 850 |
| `KAM/Iso/ComplexDomain.lean` | `SafeAction`, constants, `eccC`, `UDelta`, `delaunayC`, `ComplexDomainData`, `complex_domain_spec` | 500 |
| `KAM/Iso/ExactHamiltonian.lean` | `exactF`, `ExactHamData`, `exactDelta`, `exact_ham`, `exact_positions_mem_shiftO` | 700 |
| `KAM/Iso/PeriodOne.lean` | `tildeF`, `period_one`, `transfer`, `transfer_identities`, `nondeg_exact` | 700 |
| `KAM/Planetary/Newtonian/Models.lean` | domain, split, kernels, Hamilton equations | 700 |
| `KAM/Planetary/Newtonian/Reduction.lean` | `nbodyHamiltonian`, `helioMap`, `newton_to_moving` | 550 |
| `KAM/Planetary/Newtonian/Barycentric.lean` | `bary-algebra` | 450 |
| `KAM/Planetary/Newtonian/Reconstruction.lean` | `reconstruction*`, `orbit_transfer_*` | 650 |
| `KAM/Planetary/Newtonian/Tube.lean` | `AxisData`, tube constants and geometry, `newton_in_tube`, `fixed_in_tube` | 800 |
| `KAM/Planetary/Newtonian/Assembly.lean` | measure statements, `movingKolmogorovSet_of_tube`, `fixedKolmogorovSet_of_tube` | 500 |
| `KAM/Planetary/Poincare/Chart.lean` | `poincare` data, facts, analyticity, periodicity | 650 |
| `KAM/Planetary/Poincare/Symplectic.lean` | (b), (c), (d), (f), means | 700 |
| `KAM/Planetary/Poincare/Bijective.lean` | (e), `poincareInv`, local diffeo | 800 |
| `KAM/Planetary/Poincare/Holomorphic.lean` | `poincareC`, `poincareNbhd`, `poincare_holomorphic` | 500 |
| `KAM/Planetary/Poincare/Product.lean` | `planetBlock`, `poincareProd`, (a)-(c), `poincareProdCast`, simp lemmas | 750 |
| `KAM/Planetary/Poincare/Tube.lean` | `circularPoint_eq_poincareProd`, `tube_in_chart` | 350 |
| `KAM/Planetary/Poincare/Lattice.lean` | polar chart, lattice statements | 550 |
| `KAM/Planetary/Poincare/D25.lean` | D25 dictionary, average, means | 700 |

About 19,500 lines. If a module approaches 1,200 lines, split along its node groups and keep the old path as a facade.

**Import DAG** (`A <- B` means B imports A; this DAG is exactly what the package table of Section 7 implements; it is acyclic by construction: every
edge goes from a lower to a higher line of the topological order `Basic, Plane, Energy, Equation, EquationComplex, KeplerTube, Orbit, OrbitComplex,
DelaunaySymplectic, DelaunayChart, Means, Mass, Iso.*, Newtonian.*, Poincare.*`):

```
[Frozen Defs, Mathlib]                                  <- Kepler.Basic <- Kepler.Plane <- Kepler.Energy
Kepler.Plane                                            <- Kepler.Equation
[Mathlib only]                                          <- Kepler.EquationComplex
Kepler.Equation, Kepler.EquationComplex                 <- Kepler.KeplerTube
Kepler.Equation, Kepler.Energy                          <- Kepler.Orbit
Kepler.Orbit, Kepler.KeplerTube                         <- Kepler.OrbitComplex
Kepler.Orbit                                            <- Kepler.DelaunaySymplectic, Kepler.Means
Kepler.Orbit, Kepler.DelaunaySymplectic                 <- Kepler.DelaunayChart
Kepler.Orbit, .DelaunaySymplectic, .DelaunayChart, .Means <- Kepler.Mass
[Iso.Kepler (existing)], Kepler.Basic, [Frozen Iso Defs: BorderedHessian, KeplerBorder, FrequencyMap] <- Iso.KeplerHamiltonian <- Iso.Conversion
Kepler.Plane, Kepler.Energy, [Frozen Iso Defs: Restricted*, CollisionFree] <- Iso.RestrictedHam
Kepler.Energy, Kepler.DelaunayChart                     <- Iso.NearCircular
Kepler.Plane                                            <- Iso.ShiftPotential
Kepler.OrbitComplex                                     <- Iso.ComplexDomain
Iso.ComplexDomain, Iso.ShiftPotential, Iso.RestrictedHam, Kepler.Orbit <- Iso.ExactHamiltonian
Iso.ExactHamiltonian, Iso.Conversion, Kepler.DelaunaySymplectic <- Iso.PeriodOne
Kepler.Plane, Kepler.Energy                             <- Newtonian.Models <- Newtonian.Reduction
Kepler.Plane                                            <- Newtonian.Barycentric
Newtonian.Models, Newtonian.Barycentric                 <- Newtonian.Reconstruction
Newtonian.Barycentric, Newtonian.Reconstruction         <- Newtonian.Tube
Newtonian.Reconstruction, Newtonian.Tube                <- Newtonian.Assembly
Kepler.Equation, Kepler.Energy                          <- Poincare.Chart
Poincare.Chart, Kepler.Mass                             <- Poincare.Symplectic
Poincare.Symplectic, Kepler.DelaunayChart               <- Poincare.Bijective
Poincare.Chart, Kepler.KeplerTube                       <- Poincare.Holomorphic
Poincare.Bijective, Newtonian.Models, [Frozen Planetary/Defs/FastShift] <- Poincare.Product
Poincare.Product                                        <- Poincare.Tube, Poincare.Lattice, Poincare.D25
```
No module imports a provider, a frozen theorem or `KAM.ODE`. Only frozen *definitions* are imported. (`KAM.Strip.Analytic` is NOT needed: every holomorphy
claim is obtained from analytic data, Section 7.1 KEP-3; if a package prefers `KAM.analyticOnNhd_of_differentiableOn` for `Fin m -> C`
inputs, it adds that import and the DAG gains the edge `KAM.Strip.Analytic <- <that module>`.)

## 7. Prover packages

Each package proves its nodes exactly as in the signature files. A package changes a signature only through the orchestrator, after a statement audit.
Hard rules for every Lean brief (verbatim):
1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure
   is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will
   not elaborate at default heartbeats, report it as a design signal.
2. No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules,
   preserving public import paths as cheap facades.

(Plus AGENTS.md rules 3-11: module files, no `axiom/admit/unsafe/opaque`, frozen files read-only, no conclusion-shaped hypotheses, ambient types, one targeted build,
quarantined providers, no edits of `README.md`/`KAM.lean`, errata reporting.)

The table lists, per package, the modules it OWNS and the packages whose modules those import (exactly the DAG of Section 6); "wave" = 1 + the maximum wave of the
packages in "After" (computed, not asserted).

| Package | Nodes | Modules owned | Lines | After (= DAG imports) | Wave |
|---|---|---|---|---|---|
| I-0 Existing determinant | `det-formula`, `kepler` (done) | `Iso/Kepler` (cherry-pick `inp-w1gates:KAM/Iso/Kepler.lean`) | 37 | - | 0 |
| KEP-1 Basics | `IsSymplecticOn` API, `phaseCast` API, `rot`, planar geometry/calculus, energy and region definitions | `Kepler/Basic`, `Kepler/Plane`, `Kepler/Energy` | 950 | - | 1 |
| KEP-3 Kepler contraction | `KeplerData`, `keplerSol_*` | `Kepler/EquationComplex` | 650 | - | 1 |
| KEP-2 Real Kepler equation | `regular-kepler` (a), (c) real, `eccAnom` | `Kepler/Equation` | 550 | KEP-1 | 2 |
| I-1 Kepler-rotation Hamiltonian | `kep-ham`, `kep-border` | `Iso/KeplerHamiltonian` | 500 | I-0, KEP-1 | 2 |
| I-3 Restricted Hamiltonian | `ham-eq`, `newton`, `h0` (second clause) | `Iso/RestrictedHam` | 450 | KEP-1 | 2 |
| I-5 Shift potential | `shift-def`, `shift` | `Iso/ShiftPotential` | 850 | KEP-1 | 2 |
| P6-1 Models | `domain`, `split`, `action-reaction`, `hamilton-eqs` | `Newtonian/Models` | 700 | KEP-1 | 2 |
| P6-2 Barycentric algebra | `bary-algebra` | `Newtonian/Barycentric` | 450 | KEP-1 | 2 |
| KEP-4 Kepler tubes | `regular-kepler` (b), `kepler-eq`, F2 derivatives | `Kepler/KeplerTube` | 700 | KEP-2, KEP-3 | 3 |
| KEP-5 Orbit maps | `elements`, `orbit-maps`, `orbit-identities`, `circular`, `h0` | `Kepler/Orbit` | 600 | KEP-2, KEP-1 | 3 |
| I-2 Conversion | `conversion-map`, `conversion`, `nondeg` | `Iso/Conversion` | 600 | KEP-1, I-1 | 3 |
| P6-3 Reconstruction | `reconstruction*`, `orbit-transfer` | `Newtonian/Reconstruction` | 650 | P6-1, P6-2 | 3 |
| P6-6 Reduction (low priority) | `nbody`, `reduction` | `Newtonian/Reduction` | 550 | P6-1 | 3 (last) |
| P7-1 Poincare chart | `poincare-def`, `o-facts`, `poincare` (a) | `Poincare/Chart` | 650 | KEP-2, KEP-1 | 3 |
| KEP-6 Delaunay symplectic | `symplectic`, explicit columns, Liouville primitive | `Kepler/DelaunaySymplectic` | 900 | KEP-5 | 4 |
| KEP-8 Means | `means`, circular means | `Kepler/Means` | 350 | KEP-5 | 4 |
| KEP-9 Complex orbit map | `orbit-maps-e` | `Kepler/OrbitComplex` | 400 | KEP-4, KEP-5 | 4 |
| P6-4 Tube | `tube-constants`, `tube-geometry`, `newton-in-tube`, `fixed_in_tube` | `Newtonian/Tube` | 800 | P6-2, P6-3 | 4 |
| P7-4 Holomorphic extension | `holomorphic` | `Poincare/Holomorphic` | 500 | P7-1, KEP-4 | 4 |
| KEP-7 Delaunay chart | `chart` | `Kepler/DelaunayChart` | 650 | KEP-5, KEP-6 | 5 |
| I-6 Complex domain | `complex-domain` | `Iso/ComplexDomain` | 500 | KEP-9 | 5 |
| P6-5 Assembly | `measure-positive`, `movkol/fixkol-assembly` | `Newtonian/Assembly` | 500 | P6-3, P6-4; **Part 1** for (b) | 5 |
| KEP-10 Mass and strength | `scaling`, `kepler-data`, `range`, `kepler` | `Kepler/Mass` | 700 | KEP-5, KEP-6, KEP-7, KEP-8 | 6 |
| I-4 Near-circular region | `near-circular` | `Iso/NearCircular` | 300 | KEP-1, KEP-7 | 6 |
| I-7 Exact Hamiltonian | `exact-ham` | `Iso/ExactHamiltonian` | 700 | I-3, I-5, I-6, KEP-5 | 6 |
| P7-2 Poincare symplectic | `poincare` (b)-(d), (f), means | `Poincare/Symplectic` | 700 | P7-1, KEP-10 | 7 |
| I-8 Period one, transfer | `period-one`, `transfer`, `transfer_identities`, `nondeg` | `Iso/PeriodOne` | 700 | I-7, I-2, KEP-6 | 7 |
| P7-3 Poincare bijective | `poincare` (e), inverse | `Poincare/Bijective` | 800 | P7-2, KEP-7 | 8 |
| P7-5 Product chart | `product-def`, `product-chart`, `poincareProdCast` | `Poincare/Product` | 750 | P7-3, P6-1 | 9 |
| P7-6 Tube and lattice | `tube`, `lattice` | `Poincare/Tube`, `Poincare/Lattice` | 900 | P7-5; **Part 1** (`S_c`) | 10 |
| P7-7 D25 and averages | `d25`, `average` | `Poincare/D25` | 700 | P7-5 | 10 |

(32 packages.) Realizability check (done by script on this table): every "After" entry names a package of strictly smaller wave, every module's imports in the DAG
are owned by packages of strictly smaller wave or by the same package, and the module sets are disjoint. **Critical path:** KEP-1 -> KEP-2 -> KEP-5 -> KEP-6 -> KEP-7 -> KEP-10 ->
P7-2 -> P7-3 -> P7-5 -> P7-6/7 (10 waves; KEP-7 is wave 5 because it imports `DelaunaySymplectic`, so KEP-10 is wave 6). Track I's path: KEP-3 (1) -> KEP-4 (3) -> KEP-9 (4) -> I-6 (5)
-> I-7 (6) -> I-8 (7). What consumers can use by wave (earliest): wave 2 gives `keplerLong`, the plane calculus, `restrictedHamTotal`, the Newtonian domain/Hamilton equations,
the barycentric algebra, `keplerRotH`, the shift potential; wave 3 the conversion, `reconstruction*`, the real orbit maps, the Poincare chart data; wave 4 the Delaunay symplectic map,
tube geometry and `newton_in_tube`/`fixed_in_tube`, the holomorphic Poincare extension; wave 5 the Delaunay chart and the complex domain; wave 6 the mass/strength chart and the exact
Hamiltonian; wave 7 the Poincare symplectic chart and `transfer`; wave 9 the product chart.

### 7.1 Proof plans (so provers do not rediscover them)

**KEP-1.** `planeLength v = sqrt (planeSq v)`; `planeLength_add_le` from Cauchy-Schwarz on the two coordinates
(`abs_planeDot_le` via `Finset.sum_mul_sq_le_sq_mul_sq` or `nlinarith [sq_nonneg (v 0 * w 1 - v 1 * w 0)]`, using Lagrange);
`norm_le_planeLength`: each coordinate squared `<= planeSq` (`pi_norm_le_iff_of_nonneg`); the `sqrt 2` bound from
`planeSq <= 2 * norm^2`. Analyticity of `planeLength` at `v != 0`: `ContDiffAt.sqrt` at `n = omega` applied to the polynomial
`planeSq` (nonzero value), then `.analyticAt`; derivative `HasFDerivAt.sqrt`/`HasFDerivAt.inv`. `exists_rot_eq`: equal
lengths `r > 0`: `g = arg b - arg a` with `Complex.arg` of `a 0 + a 1 i`, or via `Real.arccos`; `r = 0` trivial. The
`IsSymplecticOn` API: composition (`fderiv` chain rule, `IsSymplecticOn c1 f U -> IsSymplecticOn c2 g V -> MapsTo f U V ->
IsSymplecticOn (c2 * c1) (g o f) U`), `IsSymplecticOn` for a continuous linear map by a matrix identity.

**KEP-2.** `Phi(F, v) = F - v0 sin F + v1 cos F`; `J >= 1 - planeLength v` by `abs_planeDot_le` with `planeLength (orbitalUnit F) = 1`;
strict monotonicity from `StrictMonoOn`/`strictMono_of_deriv_pos`; surjectivity from `|Phi F - F| <= planeLength v` (so
`Phi -> +-inf`) and the intermediate value theorem (`Continuous.surjective`, `tendsto_atTop` of `Phi`). Analyticity: at
`(lam0, v0)` apply `ContDiffAt.implicitFunction` (`n = omega`, `E1 = R x R^2`? take `f(x, F) = Phi(F, x.2) - x.1` with
`E1 = R x (Fin 2 -> R)`, `E2 = R`, `fderiv ... inr` is multiplication by `J != 0`, invertible), glue with uniqueness
(`eventually_apply_eq_iff_implicitFunction` shows the graph of `psi` is the zero set near the point; `keplerLong_unique`
identifies `keplerLong` with `psi`). Derivatives by differentiating `Phi(F(lam, v), v) = lam`. `keplerLong_eq_add_eccAnom`: uniqueness plus
`v0 sin F - v1 cos F = e sin (F - g)`.

**KEP-3.** `S = {G : C | |Im G| <= y0}` closed (`isClosed_le`), `beta x (G) = c x + a x sin G - b x cos G`. Invariance: `Complex.sin_add_mul_I`, `Complex.cos_add_mul_I` give
`Im sin G`, `Re sin G`... with `|Im sin| <= sinh |y|`, `|Re sin| <= cosh y`; `Im (a sin G) = Re a Im sin + Im a Re sin`. Contraction: `norm (a cos G) <= norm a cosh y0`; mean value inequality on the
convex strip (`Convex.norm_image_sub_le_of_norm_hasDerivWithin_le`). Fixed point: the subtype `{G // |Im G| <= y0}` is complete (`IsClosed.completeSpace_coe`, probed) and
`ContractingWith.fixedPoint_isFixedPt` applies (probed with an explicit `Nonempty` witness `c x`, which lies in the strip by the invariance inequality). Strictness of the invariance
inequality puts the fixed point in the OPEN strip `|Im G| < y0`. **Joint analyticity (replaces the invalid Weierstrass plan):** at `x0 in N` put `Phi(x, G) = G - a x sin G + b x cos G - c x`, analytic on
`P x C` (compositions of analytic maps; `AnalyticAt.contDiffAt`), `partial_G Phi = 1 - a cos G - b sin G` has norm `>= 1 - kappa > 0`, hence is invertible
(`ContinuousLinearMap.isUnit_iff_bijective`, probed shape `(fderiv ...).IsInvertible`); `ContDiffAt.contDiffAt_implicitFunction` at `omega` (probed over `C`, generic complete `P`) gives an analytic local solution `psi`
with `Phi(x, psi x) = 0` near `x0`, and `psi x` stays in the open strip by continuity, so `psi = keplerSol` by uniqueness in the strip. `keplerSol_fderiv` is `hasStrictFDerivAt_implicitFunction` /
implicit differentiation. `keplerSol_spec`: unique fixed point; `keplerSol` is it by `dif_pos`. `keplerSol_real`: `conj` of the solution is a solution (`Complex.sin_conj`, real coefficients) with the same `|Im|`; uniqueness.

**KEP-4.** Regular tube: `y0 = 1`, `kappa = 0.39`, `N = {|Im lam| < 1/4, |v0| + |v1| < 1/4}`; the numerics `1/4 + (1/4) * (sinh 1 + cosh 1) < 1`
(`sinh 1 + cosh 1 = exp 1 < 2.7183`: `0.25 + 0.68 < 1`) or the cruder blueprint bound; `cosh_one_lt : cosh 1 < 1.55` proved in this package (probed: `rw [Real.cosh_eq, Real.exp_neg]`, `Real.exp_one_lt_d9`, `Real.exp_one_gt_d9`, `inv_lt_comm₀`, `linarith`; `Real.cosh_one_lt` does not exist and `1.5431` is true but too tight for this probe route; `1.55` suffices: `0.25 * 1.55 = 0.3875 < 0.39`, `1 - 0.3875 > 3/5`)
with `Real.exp_one_lt_d9`; `|J| > 3/5` from `|v0 cos F + v1 sin F| <= (|v0| + |v1|) cosh 1`. Real points: `keplerLongC_ofReal` by
`keplerSol_real` and `keplerLong_unique`. I's tube: instance `a = e, b = 0, c = ell` on `N = keplerTube e1`; open set: preimage of `<`
under `Metric.infDist` (continuous) and `|Im|`; invariance with `e2 sinh y0 <= theta y0` (`sinh y <= y * cosh y` for `y >= 0`: the function `y |-> y cosh y - sinh y` vanishes at `0` and has derivative `y sinh y >= 0`).

**KEP-5.** For `0 < L`, `0 <= e < 1`: `D := 1 - e cos u >= 1 - e > 0`; radius `r^2 = X^2 + Y^2 = L^4 D^2` by `rot` isometry and
`c^2 + s^2 = 1`, `k^2 = 1 - e^2` (`Real.sq_sqrt`); cross `= X P_Y - Y P_X`; dot; energy; `(L e s)^2` and `L^2 e c` identities by
`field_simp; ring` after `Real.sin_sq_add_cos_sq`. `keplerRegion` membership: `G^2 < L^2` iff `e > 0` (only for `e > 0`; this is why `delaunay_mem_region` needs `deDom`).
Analyticity: composition of `analyticOnNhd_eccAnom`, `Real.analyticAt_sin/cos`, `Real.contDiffAt_sqrt` at `omega` (radicand `1 - e^2 > 0`).

**KEP-6 (largest algebra; split into two files if needed).** The Jacobian columns are DESIGNED in the signatures (`orbitMapColumn`, `fderiv_orbitMapR_basis`, `fderiv_delaunay_basis`): in the intermediate
coordinates `(ell, g, L, e)` the frame derivatives are `d_u(X,Y,P_X,P_Y) = (-L^2 s, L^2 k c, -(c-e)/(L D^2), -k s/(L D^2))`, `d_e = (-L^2, -L^2 e s/k, -s c/(L D^2), c(c-e)/(L D^2 k))`,
`d_L = (2L(c-e), 2Lks, s/(L^2 D), -kc/(L^2 D))`, with `d_ell u = 1/D`, `d_e u = s/D` (`hasDerivAt_eccAnom`, `fderiv_keplerLong_vec`), `d g` acts by `quarterTurn`, and the chain rule through
`e(L,G)` adds `d_L e = G^2/(L^3 e)`, `d_G e = -G/(L^2 e)`. Step 1: prove `fderiv_orbitMapR_basis` coordinatewise (`HasDerivAt` of each frame entry; `field_simp`). Step 2: `delaunay_symplectic` is the six
Lagrange brackets `sum_i (d p_i/d a)(d q_i/d b) - (d q_i/d a)(d p_i/d b) = symplecticForm e_a e_b` (erratum, KEP-6 audit: a skew form cannot equal the Kronecker delta) (rotation-invariant, so `rot g` drops out: `planeDot_rot`, `planeCross_rot`), each by `field_simp` +
`nlinarith [sin_sq_add_cos_sq u, sq_sqrt (1 - e^2)]` or `ring_nf` after `k^2 = 1 - e^2`; the brackets with `g` use only `planeCross` of the frame `= G` (`orbitMapR_cross`). Step 3: `delaunay_liouville`
(`p . dq = pi . d xi + G dg`, `pi . d xi - L d ell = 2 d(L e s)`, exactly `stepI:p7:sy-g..compare`). Step 4: invertibility: a map with `Omega(Au, Av) = Omega(u, v)` is injective
(`Omega` is nondegenerate: pair with the basis), hence bijective in finite dimension (`LinearMap.injective_iff_surjective`); `delaunay_hamiltonianVectorField` is `Lemma p1:omega-algebra (b)`
specialised. Do not differentiate through `eccOf` and `eccAnom` simultaneously (two-step chain rule).

**KEP-7.** Injective modulo `2 pi`: from `orbitMapR_radius/_dot/_energy/_cross` recover `L`, `G`, `cos u`, `sin u` (`e > 0`), then `u mod 2 pi`
(`Real.Angle` or `Complex.arg`), `ell = u - e sin u` modulo `2 pi` via `Function.Periodic`, then `g` from `rot g (X,Y) = q`: `exists_rot_eq`
and uniqueness of the rotation angle mod `2 pi` for a nonzero vector. Surjectivity: the three steps of `stepI:p7:ch-surj1..3` with
`eq_of_planeDot_planeCross_eq`. Local diffeo: `HasStrictFDerivAt` from `delaunay_hasFDerivAt` + `delaunay_fderiv_equiv`,
`ContDiffAt.toOpenPartialHomeomorph` (analytic: `ContDiffAt R omega` from `analyticOnNhd_delaunay`), inverse analytic by `ContDiffAt.to_localInverse` at `omega`.

**KEP-8.** `intervalIntegral.integral_comp_mul_deriv'` with `f(u) = u - e sin u` (`f' = D`), `g = phi o eccAnom . e` (continuous):
`int_0^{2 pi} g(f(u)) f'(u) du = int_{f(0)}^{f(2 pi)} g = int_0^{2 pi} phi(eccAnom ell e) d ell`, and `eccAnom (f u) e = u`;
so `int phi(u_R(ell)) d ell = int phi(u) D(u) du`. Then trigonometric integrals
`integral_cos`, `integral_cos_sq`, `integral_cos`, `integral_sin`, `intervalIntegral.integral_sin`. The circular case `e = 0` is the same computation (`D = 1`).

**KEP-9.** Composition of `keplerSol_differentiableOn`/`eccAnomC` with polynomial, `cos`, `sin` and the division by `L * D`
(`DifferentiableOn.div`, `D != 0` from `keplerEq_tube` (a)); real points agree by `keplerTube_real_points` and `orbitMapC_ofReal` is `rot`-componentwise `push_cast`.

**KEP-10.** `scaleMK`: `Omega(S u, S v) = m Omega(u, v)` entrywise; `energyMK (S z) = m kappa^2 kE z`, `cross (S z) = m cross z`: `field_simp`. `regionMK` openness by
continuity of `energyMK`, `planeCross`, `planeLength` on `{q != 0}`. `delaunayMK_image`: `S` maps the strength-one region `C` onto `{E_{m,kappa} < 0, cr > 0, cr < Lambda}`
(`cr < Lambda <-> G^2 < -1/(2E)` by the scaling of `elemL`). `delaunayMK_means` is `orbitMapR_mean_*` after `planeLength_smul`.
`cross_le_action`: Lagrange identity as in `stepP:p7:rg-lagrange` for `S^{-1} z`.

**I-1, I-2.** `frequencyMap`: `keplerRotH` on real points is `ofReal` of `-kappa/(2 J_0^2) - Omega J_1` (`keplerRotH_real`), so
`(h . ofReal).re` is a real function equal on the open set `{0 < J_0}` to a smooth `phi`; `Filter.EventuallyEq.fderiv_eq`; the derivative of the
frequency map by `HasFDerivAt` of `g(J) = (kappa J_0^-3, -Omega)`. `borderedHessian` entries by `Matrix.ext` over `Fin 2 + Unit` using `finThreeEquivSumUnit` simp lemmas
(`Matrix.reindex_apply`, `Matrix.submatrix_apply`). Conversion: `periodOneMap_symplectic` is `n`-generic entrywise (`Finset.sum_congr`, `smul_eq_mul`, `field_simp` with
`2 pi != 0`); the curve statement by `HasDerivAt.comp` with the linear `periodOneMap` and invertibility.

**I-3.** `restrictedHamTotal` analytic on collision-free points: `analyticAt_planeLength` composed with the affine map `z |-> z.1 - primary_j`; `iso_radius_eq`
(`Radius` is `planeLength` up to `rfl`). The field identity: `hamiltonianVectorField` evaluated on `(0, single k 1)` and `(single k 1, 0)`; derivatives of `1/radius` by
`hasFDerivAt_inv_planeLength`. `isRestrictedSolutionOn_iff` is unfolding plus the field identity plus `DifferentiableAt` from analyticity.

**I-5 (shift potential).** Positivity of radicands: `|vartheta z - vartheta z'| <= clen (z - z') (clen (z - z') + 2 clen z')` (complex bilinear Cauchy-Schwarz, componentwise),
hence `Re vartheta >= c_*`. `shiftPsi q` is holomorphic on `{mu | (q, mu) in shiftXi}` (`DifferentiableAt.cpow` on `slitPlane` since `Re > 0`), `dslope` is
holomorphic in `mu` (`Complex.differentiableOn_dslope`) but joint holomorphy in `(q, mu)` is not in Mathlib: use the integral representation
`shiftF q mu = -int_0^1 d_mu Psi(q, t mu) dt` (`dslope_eq_integral`-style lemma to be proved in this file from the fundamental theorem of calculus along the
segment) and `intervalIntegral.hasFDerivAt_integral_of_dominated_of_fderiv_le` over `RCLike` `C` to differentiate in `(q, mu)` (bound `c_*^{-3/2}`-type on the compact
parameter range); alternatively Cauchy's formula `dslope f 0 mu = (2 pi i)^-1 oint f(zeta)/(zeta (zeta - mu)) d zeta`. This is the node flagged as a risk (Section 8).
Bound `|shiftF| <= C_sh`: Schwarz lemma on the disc (`Complex.dist_le_div_mul_dist_of_mapsTo_ball` with `g(0) = 0`).
`shift_value_zero`: `deriv` of `vtheta (q + mu e0)^(-1/2)` at `0` by `HasDerivAt.cpow_const`.

**I-6, I-7, I-8.** `complex_domain`: uniform continuity of `(L, G) |-> G^2/L^2` on the compact `{dist <= min/2}` (`IsCompact.uniformContinuousOn_of_continuous`), the
principal-branch estimate `|sqrt w - sqrt w'| = |w - w'|/|sqrt w + sqrt w'| <= |w - w'|/Re(...)`. `exact_ham`: pick `delta_2` by uniform continuity of `delaunayC` on the
compact closure of one period, as in `stepI:p7:eh-delta`; holomorphy of `exactF` by composition (`shift_holomorphic` with `delaunayC`), bound by `shift_bound`, exactness at real
points by `shift_real` + `delaunay_hamiltonian` + `restrictedHamTotal_zero`. `transfer`: `HasDerivAt.comp` of `delaunay . periodOneMap` with `hz`, agreement of Hamiltonians on the open set
`{(theta, I) | exists J in B, norm (I - J) < r0}` (so `fderiv` agrees: `Filter.EventuallyEq.fderiv_eq`), then `delaunay_periodOne_symplectic` and `isRestrictedSolutionOn_iff`.

**P6-1..P6-6.** Smoothness via `ContDiffAt` closure at `omega`, openness by `isOpen_iInter_of_finite` of preimages of `Ioi 0`. `split`: `Finset.sum_add_distrib`,
`planeSq (sum) = sum planeSq + 2 sum_{i<j} dot` (`Finset.sum_comm`, `Finset.sum_filter`). `hamilton-eqs`: the Hamilton field components are `fderiv` along `Pi.single`; use
`HasFDerivAt` of `planeSq`, of `1/planeLength (q_i - q_j)` composed with the linear map `z |-> bodyVector z.1 i - bodyVector z.1 j`. `reconstruction`: Steps `stepP:p6:rc-*` verbatim, with
`hasDerivAt_bodyVector`; the Sun's velocity derivative uses `sum_mass_smul_fKernel`. `tube`: `circularTube_euclidean` from `Prod.norm_def`, `pi_norm_lt_iff`, then
`planeLength_le_sqrt_two_mul_norm`; the numerics `sqrt 2 < 1.4143` by `Real.sqrt_lt'`/`norm_num`.

**P7-1..P7-7.** (P7-1) `analyticOnNhd_poincare`: `poincareF` analytic (`analyticOnNhd_keplerLong` composed with the analytic `w |-> (w.1 0, poincareV w)`, `poincareV` analytic since the radicand
`(1 - Gamma/(2 Lambda))/Lambda > 0` on `poincareDom`), `cos F`, `sin F` analytic, `1 + k >= 1`, `Lambda J > 0`. (P7-2) (b): as `stepP:p7:po-del`: with `u = F - g`, `v . c = e cos u`, `e^2/(1+k) = 1 - k`; (c): on `{xi, eta != 0}` pull back by `T(lambda, xi, Lambda, eta) = (lambda - g, g, Lambda, Lambda - Gamma)` locally (`g = arg`: use `Complex.arg` or `Real.arctan2`-free:
`Complex.arg_mul_cos_add_sin_mul_I`), `delaunayMK_symplectic`, and `d xi ^ d eta = d Gamma ^ d g`; extend by density (`IsSymplecticOn` is a closed condition: both sides are continuous in `z`
because `fderiv` of an analytic map is continuous, `AnalyticOnNhd.fderiv`; `Dense.closure_eq`, `{xi, eta != 0}` dense in the open `poincareDom`). (d) at `Gamma = 0` directly from `poincare_circular`; the LRL identity as in `stepP:p7:po-el`.
(P7-3) injectivity: `Lambda, Gamma` recovered by `poincare_elements`; `Gamma = 0` by `poincare_circular` (injective mod `2 pi` on the circle), `Gamma > 0` by `poincare_eq_delaunayMK` and `delaunayMK_eq_iff`;
surjectivity by the two cases of `stepP:p7:po-bij`; `poincareInv` by the explicit formulas with `Complex.arg`; local diffeo as KEP-7.
(P7-4) `poincareNbhd` sizes: `|Lambda| > Lambda_0/2`, `|arg Lambda| <= pi/6` (from `|Lambda - Lambda_0| < Lambda_0/2` one gets `Re Lambda > Lambda_0/2 > 0`; the real-part bounds alone give slit-plane membership of every radicand), so `Re (radicand) > 0`; then `regularTube` membership and `keplerSol_differentiableOn`.
(P7-5) `poincareProd` is blockwise `poincare` (`bodyVector_poincareProd`, `fast/slow` of `planetBlock`); `IsSymplecticOn` of a block-diagonal map: `symplecticForm` over `finProdFinEquiv` is a sum over blocks
(`Fintype.sum_prod_type`, `Equiv.sum_comp`). `tube_in_chart`: the neighbourhood form `IsCompact.exists_cthickening_subset_open` applied to the compact torus `{circularPoint phi}` (continuous image of `Icc`/`(Fin n -> Icc 0 1)`) and the open set `V_delta`.
(P7-6) polar chart: `d eta ^ d xi = dR ^ d psi` by the explicit derivative of `(psi, R) |-> sqrt (2R) (sin psi, cos psi)`. (P7-7) `average_via_eccentric_longitude`: `integral_comp_mul_deriv'` with `f = keplerPhi v_i`, `f' = keplerJac`,
`g = Xi` (continuous periodic), limits `Phi(F(0))`, `Phi(F(0)) + 2 pi`, then periodic shift of the integration window (`Function.Periodic.intervalIntegral_add_eq`); `ellipsePhase_eq_poincareProd` by unfolding the frozen defs.

### 7.2 Consumers (what the API must serve)

| Consumer | Uses | Where in this design |
|---|---|---|
| P Part 8 (secular form) | `product-chart` (a)-(c), `holomorphic` (`N(Lambda_0)`), `kepler` (c) (means), `poincare-def`, `o-facts`, `regular-kepler` (a) (derivatives), `p6:domain`, `hamilton-eqs`, `kepler-part`, `split`; `bpI:p7:orbit-identities`, `x-param` | `poincareProd_*`, `poincare_holomorphic`, `poincare_means`, `poincare_facts`, `fderiv_keplerLong_vec`, `analyticOnNhd_fMov`, `hamiltonianVectorField_*`, `keplerPart_eq_sum`, `movingHamiltonian_split` |
| P Part 9, 10 | `product-chart` (b), (c) | `keplerPart_poincareProd`, `movingHamiltonian_poincareProd` |
| P Part 11b | `poincare-def`, `regular-kepler` | `poincare`, `keplerLong`, `analyticOnNhd_keplerLong` |
| P Part 12 | `product-chart` (a)-(d), `lattice`, `tube`, `tube-constants`, `tube-geometry`, `movkol-assembly`, `newton-in-tube`, `orbit-transfer`, `reconstruction`, `measure-positive`, `bary-algebra`, `domain` | `poincareProd_*`, `poincareProd_polar_*`, `tube_in_chart`, `circularPoint_eq_poincareProd`, `AxisData`..., `movingKolmogorovSet_of_tube`, `newton_in_tube`, `orbit_transfer_moving`, `reconstruction`, `volume_lt_top_of_subset_circularTube`, `barycentricPositions_*`, `analyticOnNhd_movingHamiltonian` |
| P Part 13 | `fixkol-assembly`, `reconstruction-fixed` | `fixedKolmogorovSet_of_tube`, `reconstruction_fixed*` |
| P Part 14a | `p6:domain`, `hamilton-eqs`, `bary-algebra`, `reconstruction`, `split`, `units`; `p7:d25`, `e-comp`, `poincare`, `product-chart`, `same-chart` | as above; `e-comp` is `IsCompact.exists_cthickening_subset_open` |
| P Part 14b | `average`, `d25` | `average_via_eccentric_longitude`, `poincareProd_means`, `ellipsePhase_eq_poincareProd*`, `keplerFunctions_poincareProd`, `secular*_eq` |
| P Part 1 (cites `p7:lattice`) | `lattice` | `poincareProd_polar_*` |
| I Part 8 | `elements`, `exact-ham`, `ham-eq`, `kepler-eq`, `near-circular`, `newton`, `nondeg`, `orbit-identities`, `orbit-maps`, `period-one`, `sec-complex`, `shift`, `transfer` | `keplerRegion`/`elem*`, `exact_ham`, `isRestrictedSolutionOn_iff`, `keplerEq_tube`, `nearCircular_*`, `restricted_newton_iff`, `nondeg_exact`, `orbitMapR_*`, `delaunay`, `period_one`, `complex_domain`, `shift_*`, `transfer` |
| Track N | none | |

### 7.3 Coordination with other designs

1. **Plane-length helpers (track N, N3-8): DECIDED by the sub-orchestrator.** The helpers live in `KAM/Kepler/Plane` (KEP-1, wave 1) and the ODE design's package N3-8
   imports it (`KAM.ODE.NewtonDefs` re-uses, does not redeclare). Final signatures (identical to `NPart3Signatures.lean`, namespace `KAM.Kepler`):
   `theorem norm_le_planeLength (v : Fin 2 -> R) : ‖v‖ <= planeLength v`;
   `theorem planeLength_le_sqrt_two_mul_norm (v : Fin 2 -> R) : planeLength v <= √2 * ‖v‖`;
   `theorem planeLength_add_le (v w : Fin 2 -> R) : planeLength (v + w) <= planeLength v + planeLength w`;
   `theorem radius_eq_planeLength : KAM.Iso.radius = planeLength := rfl` (and `radiusSq_eq_planeSq := rfl`). N3-8 must `public import KAM.Kepler.Plane` and drop its own copies;
   N3-8 is then after KEP-1 (wave 1) on the N side, which the N design (N3-8 in wave 2) already satisfies. This is the only coupling to the ODE layer.
2. **Part 1 (charts).** `IsSymplecticOn` must be the one definition: Part 1's `IsChart c Psi O` should be
   `AnalyticOnNhd R Psi O /\ IsSymplecticOn c Psi O` (so `chart-field`, `torus-transport`, `liouville-lattice` consume
   `poincareProd_symplectic` directly) with source and target dimensions independent (needed for `Phase (n+n) -> Phase (n*2)`);
   `angleScale c` is Part 1's `S_c`. The heterogeneous-dimension bridge is DESIGNED here (audit F6): `phaseCast (h : d = e) : Phase d ≃L[ℝ] Phase e` (reindex by `Fin.cast` on both components; API: `phaseCast_symplectic`, `phaseCast_hamiltonianVectorField`, `phaseCast_volume`, `phaseCast_analytic`) and the equal-dimension chart `poincareProdCast m κ := poincareProd m κ ∘ phaseCast (Nat.mul_two n) : Phase (n*2) -> Phase (n*2)` with `poincareProdCast_symplectic/_eq_iff` for Part 1's `IsChart`; the body permutation stays inside `poincareProd` and is not mixed with the cast. For literal `n = 2` the cast is the identity up to `rfl`. `measure_chart_image` in the signatures file is only the consumer form of
   `bpP:p1:liouville-lattice` (package P6-5 (b) is gated on Part 1; the rest of P6-5 is not). **Caveat kept from the audit (F6):** `measure_chart_image` is a FULL-position-lattice theorem; it is NOT the interface for P12's Cartesian cylinder torus (P12:205 proves fast-lattice variants itself, and the polar lattice lemmas do not show that an arbitrary frozen cylinder torus winds in every slow angle). Consumers must not use it for the cylinder measure.
3. **Part 11a/11b/12/13 (P).** They read `poincare_*`, `poincareProd_*` as listed in 7.2; no change of statement is expected;
   P12 chooses `gamma := axisGap a`, `A := axisMax a` through `axisData_canonical`.
4. **Track I Part 8.** Takes `K` from its own safe-region lemma and `exactDelta K`; the ODE-side uniqueness
   (`restricted_reduction`, `restricted_continuation` of the N design) composes with `isRestrictedSolutionOn_iff`.

## 8. Risks

1. **Delaunay symplecticity (KEP-6).** A 4x4 Jacobian with `sqrt`, `eccAnom`, rotations. Mitigated by the explicit-columns decomposition
   (`delaunay_hasFDerivAt`) and six independent bracket identities; each should elaborate at default heartbeats after `field_simp`;
   if not, that is a design signal (split per bracket). Fallback: the generating-function route of the blueprint is **not** recommended
   (it needs differential forms).
2. **Joint holomorphy of `shiftF` (I-5).** Mathlib has `Complex.differentiableOn_dslope` (one variable) but no jointly holomorphic
   difference quotient. Two routes are given (parameter integral over `RCLike`, or Cauchy integral); the first needs the dominated
   differentiation lemma with a uniform bound on a compact parameter set; budget +200 lines if it is hard.
3. **Principal-branch bookkeeping (I-5, I-6, P7-4).** `cpow` with exponents `1/2, -1/2, -3/2` on `Re > 0`; the facts needed are
   `Complex.ofReal_cpow`, `Complex.norm_cpow_of_ne_zero`, `Complex.cpow_neg`, holomorphy on `slitPlane`. Keep all branch arguments inside `Re z > 0`
   (so `z in slitPlane`).
4. **Heterogeneous dimensions `Phase (n+n)` vs `Phase (n*2)`.** `n * 2` and `n + n` are not defeq. `poincareProd` is heterogeneous by design;
   if Part 12 needs `Phase (n*2) -> Phase (n*2)` it uses the designed `phaseCast`/`poincareProdCast` (module `Kepler/Basic`, `Poincare/Product`).
5. **`OpenPartialHomeomorph` with analytic inverse.** Uses `ContDiffAt.toOpenPartialHomeomorph` and `to_localInverse` at `omega`; both are stated for
   `n : WithTop N-infty` (checked). Fallback: state `HasStrictFDerivAt` + `AnalyticAt` of the local inverse of the local solution given by `ContDiffAt.localInverse`.
6. **`Fin` index plumbing.** `finProdFinEquiv`, `Fin.append`, `Fin.cons` simp sets are the most likely source of slow elaboration;
   package P7-5 adds the missing simp lemmas first (`fast_assemble`, ...), and every later package imports them.
7. **Statement drift.** `keplerSol`, `keplerLong`, `exactDelta` are classical choices: provers must use only the spec theorems, never unfold;
   any attempt to prove a statement by `decide` on these is wrong. `ExactHamData` is a `Prop` used only in `exactDelta` and `exact_ham`.
8. **Part 1 dependency.** `measure_chart_image` (P6-5 (b)) and `angleScale`, `fullShift` (P7-6) are Part 1's; if Part 1 renames them, only
   those declarations move.
9. **Elaboration cost in the largest packages** (KEP-6, KEP-7, P7-2, P7-3, I-5, I-7). None is known to be near the default budget; the estimated sizes
   assume the split points listed in Section 6. A package that exceeds 1,200 lines splits along its node groups.
10. **Provenance.** Everything here except I-KEPLER is new Lean, blueprint-derived; the frozen `KAM.Iso.kepler_bordered_det` already has its provider.
    The blueprint's Mathlib-level external facts (E1)-(E7) of P6/P7 and (X1)-(X8) of I-P7 are all covered by Section 9.

## 9. Mathlib checks (all by `#check`/`grep` at the pinned snapshot)

| Need | Declaration | Status |
|---|---|---|
| analytic/`C^omega` implicit function | `ContDiffAt.implicitFunction`, `.eventually_apply_eq_iff_implicitFunction`, `.contDiffAt_implicitFunction` (`n : ℕ∞ω`) | found |
| analytic inverse function | `ContDiffAt.toOpenPartialHomeomorph`, `ContDiffAt.to_localInverse`, `HasStrictFDerivAt.toOpenPartialHomeomorph` | found |
| 1-D analytic local inverse | `AnalyticAt.analyticAt_localInverse` | found (not needed) |
| analytic <-> `C^omega` | `ContDiffAt.analyticAt` (`omega`), `AnalyticAt.contDiffAt` | found |
| real roots analytic | `Real.contDiffAt_sqrt` (any `n`), `ContDiffAt.sqrt`, `ContDiffAt.rpow_const_of_ne`, `ContDiffAt.log`, `Real.analyticAt_sin/cos`, `AnalyticAt.log` | found; **`AnalyticAt.sqrt`, `AnalyticAt.rpow` do not exist**: go through `ContDiffAt` |
| complex roots | `AnalyticAt.cpow`, `AnalyticAt.clog` (`slitPlane`), `Complex.norm_cpow_of_ne_zero`, `Complex.ofReal_cpow`, `Complex.cpow_neg` | found |
| contraction | `ContractingWith.exists_fixedPoint`, `ContractingWith.fixedPoint`, `ContractingWith.fixedPoint_isFixedPt`, `fixedPoint_unique` | found |
| complex trig | `Complex.sin_add_mul_I`, `Complex.cos_add_mul_I`, `Complex.sin_sq_add_cos_sq` | found (`Complex.abs_sin_le_cosh` etc. do not exist) |
| hyperbolic | `Real.arcosh`, `Real.cosh_arcosh`, `Real.sinh_lt_cosh`, `Real.cosh_sq`, `Real.tanh_lt_one` | found |
| multivariable holomorphic -> analytic | `KAM.holomorphic_analytic`, `analyticOnNhd_of_differentiableOn`, `analyticOnNhd_comp_realInclusion` (`KAM/Strip/Analytic.lean`, main) | found (project) |
| removable singularity | `dslope`, `Complex.differentiableOn_dslope` | found (1 variable) |
| parameter integrals | `intervalIntegral.hasFDerivAt_integral_of_dominated_of_fderiv_le` (`RCLike`) | found |
| change of variables | `intervalIntegral.integral_comp_mul_deriv'`, `MeasureTheory.integral_image_eq_integral_abs_deriv_smul` | found |
| periodic integrals | `Function.Periodic.intervalIntegral_add_eq` | found |
| argument | `Complex.arg`, `Complex.arg_mul_cos_add_sin_mul_I` | found |
| determinant, reindex | `Matrix.det_fin_three`, `Matrix.reindex`, `Matrix.det_reindex_self`, `finSumFinEquiv`, `Equiv.ofUnique`, `Equiv.sumCongr` | found |
| compactness neighbourhood | `IsCompact.exists_cthickening_subset_open`, `IsCompact.exists_isMinOn` | found (N design) |
| Banach fixed point / MVT | `ContractingWith`, `Convex.norm_image_sub_le_of_norm_deriv_le` | found |

Names that do not exist at this snapshot (so the proof must not cite them): `AnalyticAt.sqrt`, `AnalyticAt.rpow`, `Real.analyticAt_log`
(use `analyticAt_log` in `Mathlib/Analysis/SpecialFunctions/Complex/Analytic.lean`), `Complex.analyticAt_cpow_const`, `Complex.abs_sin_le_cosh`,
`MeasureTheory.hasFDerivAt_integral_of_dominated_of_fderiv_le` (the interval version `intervalIntegral.hasFDerivAt_integral_of_dominated_of_fderiv_le` exists).

### 9.2 Applicability probes (audit F7)

A `#check` shows a name exists; the following probes were elaborated as proofs against the pinned Mathlib (scratch file, deleted afterwards) to show the lemma applies in the SHAPE used:
- real analytic IFT: from `hf : AnalyticAt R f u` and `(fderiv R f u ∘L ContinuousLinearMap.inr R R R).IsInvertible`, `hf.contDiffAt : ContDiffAt R ω f u`, then
  `ContDiffAt.implicitFunction`, `.implicitFunction_apply_self`, `.eventually_apply_implicitFunction` and `(… .contDiffAt_implicitFunction (by simp) h).analyticAt` give `∃ ψ, AnalyticAt R ψ u.1 ∧ ψ u.1 = u.2 ∧ ∀ᶠ x, f (x, ψ x) = f u`. OK.
- the same over `C` with a generic complete parameter space `P` (needs `[CompleteSpace P]`): `∃ ψ : P -> C, AnalyticAt C ψ u.1`. OK (this is why `KeplerData` has `[CompleteSpace P]` and `AnalyticOnNhd` coefficients).
- contraction on the closed strip: `IsClosed.completeSpace_coe` for `{G : C | |G.im| <= y}`, `Nonempty` from a witness, `ContractingWith.fixedPoint_isFixedPt`. OK.
- numerics: `Real.cosh 1 < 1.55` by `Real.cosh_eq`, `Real.exp_neg`, `Real.exp_one_lt_d9`, `Real.exp_one_gt_d9`, `inv_lt_comm₀`, `linarith`. OK (`1.5431` is true but not reachable by this route).
- change of variables: `intervalIntegral.integral_comp_mul_deriv'` with `f' = fun _ => 1`, `g = Real.sin`: `simp` closes. OK.
- `Real.contDiffAt_sqrt (n := ω) hx` gives `AnalyticAt R Real.sqrt x` via `.analyticAt`. OK.
- `(Complex.differentiableOn_dslope hmem).2 hf` gives `DifferentiableOn C (dslope f 0) (ball 0 1)`. OK (one variable only: joint holomorphy is the risk R2).
- Schwarz: `Complex.dist_le_div_mul_dist_of_mapsTo_ball` (arbitrary complex normed `E`, `F`). OK.
- NOT applicable as previously planned: `TendstoLocallyUniformlyOn.differentiableOn` is for `U : Set C` only (replaced by the IFT route); `Real.cosh_one_lt`, `Complex.norm_le_of_mapsTo_ball`, `ContractingWith.edist_iterate_fixedPoint_le`, `TendstoUniformlyOn.differentiableOn`, `intervalIntegral.integral_cos/_sin` (use root `integral_cos`, `integral_sin`) do not exist.
- project lemmas: `KAM.holomorphic_analytic` and `KAM.analyticOnNhd_of_differentiableOn` are in namespace `KAM` (file `KAM/Strip/Analytic.lean`, main), take `Fin m -> C` input, and are NOT used by this design; a package that wants them adds the import and a product-to-`Pi` adapter.
- `phaseCast`: `ContinuousLinearEquiv.piCongrLeft` with the index equivalence `finCongr h : Fin d ≃ Fin e` and `φ := fun _ : Fin e => R` elaborates (signature file, section PhaseCast).

## 10. Audit fixes (audit 1, `KEPLER-design-audit-1.md`)

| Finding | Resolution |
|---|---|
| F1 HIGH: `fastShift` redeclared | Deleted the draft definition. `KeplerSignaturesP.lean` imports the FROZEN `KAM.Planetary.Defs.FastShift` (via `check_kepler.sh`) and writes `fastShift (a := n) (b := n) k` in `poincareProd_lattice`, `poincareProd_eq_iff`, `poincareProdCast_eq_iff`. The combined file elaborates with the frozen definition present, which would have exposed the clash. Rule recorded in Section 3: never redeclare a frozen export. |
| F2: complex derivative conclusions | Added `fderiv_keplerLongC_vec` (`∂_{v_0}F = sin F/J`, `∂_{v_1}F = -cos F/J`), `regularKepler_jac_bound` (`1 - cosh 1/4 <= |J|`, `3/5 < 1 - cosh 1/4`), `hasDerivAt_eccAnomC_ecc` (`∂_e u`), and the generic `keplerSol_fderiv`, all in KEP-3/KEP-4. |
| F3: radius vs complex-domain witness | `ComplexDomainData K δ`, `complexDelta K`, `complex_domain_spec`. Audit 2 (R2-1): the first repair left the geometric output out of the choice predicate, so `exact_positions_mem_shiftO` was not justified for an arbitrary selected radius. Now `ExactRadiusData K δ := 0 < δ ∧ δ ≤ complexDelta K ∧ ExactHamData K δ ∧ (∀ w ∈ UDelta K δ, (delaunayC K w).1 ∈ shiftO …)`, `exactDelta` is chosen from `∃ δ, ExactRadiusData K δ`, and `exact_radius_spec : SafeAction K → kRhoMax K < 1 → ExactRadiusData K (exactDelta K)` is the certified specification (existence by the source construction `stepI:p7:eh-delta`: uniform continuity on a compact period gives one `δ` with all properties; all radii depend only on `K`). `exact_ham` and `exact_positions_mem_shiftO` keep their types and are projections. No premise carries `ExactRadiusData`. |
| F4: `transfer` / `newton_in_tube` overstate | `transfer` docstring now says what it gives; added `transfer_identities` (exact radius, `elemL/cross/elemA/elemEcc`, and `restrictedHamiltonian = realHamiltonian` along the orbit) and `fixed_in_tube` (finite-time fixed-Sun equations, no collision, pair bounds with the Sun at the origin); `newton_in_tube` docstring says "moving Sun". |
| F5 HIGH: packages vs DAG | Rebuilt Sections 6-7 together: four missing edges added (`DelaunayChart <- DelaunaySymplectic`; `Newtonian.Tube <- Reconstruction`; and the two early-definition problems solved by the new module `Kepler/Energy`, so `Iso/RestrictedHam` and `Newtonian/Models` import only `Plane`/`Energy`, wave 2); the package table now lists owned modules and "After" = exactly the DAG imports; waves recomputed (KEP-7 becomes wave 5, KEP-10 wave 6, P7-4 wave 4; critical path still 10 waves); the DAG is acyclic by a stated topological order; `KAM/Iso/Kepler.lean` is the explicit prerequisite package I-0 (wave 0, cherry-pick from `inp-w1gates`). 32 packages. |
| F6: heterogeneous-dimension bridge | Designed: `phaseCast` + `phaseCast_apply/_symm/_symplectic/_hamiltonianVectorField/_volume/_measurableEquiv/_analytic` and `poincareProdCast` (+ `_symplectic`, `analyticOnNhd_`, `isOpen_`, `_eq_iff`) in the signatures (module `Kepler/Basic`, `Poincare/Product`); `IsSymplecticOn.comp` carries differentiability hypotheses. The consumer table keeps the audit's caveat that `measure_chart_image` is not the P12 Cartesian interface (Section 7.3). |
| F7: names vs applicable theorems | Section 9.2: applicability probes (IFT real/complex, contraction on the strip, `cosh` numerics, change of variables, sqrt analyticity, dslope, Schwarz, `phaseCast`). Consequences: `Real.cosh_one_lt` replaced by the proved helper `cosh_one_lt : cosh 1 < 1.55`; the Weierstrass plan replaced by the analytic-IFT route with `KeplerData` taking `AnalyticOnNhd` coefficients and `[CompleteSpace P]`; project `KAM.holomorphic_analytic` import/adapter not needed, and its namespace noted. |
| C6 coverage items | Added `delaunayMK_localDiffeo`, `delaunayMK_periodic`, `delaunay_hamiltonianVectorField`, `orbitMapC_real`, `shiftF_eq_integral`, `delaunay_liouville` (+ `delaunayGen`), `nearCircular_witness_unique`, `scaleMK_flow`, and the explicit Jacobian columns (`orbitMapColumn`, `fderiv_orbitMapR_basis`, `fderiv_delaunay_basis`) that the KEP-6 plan only asserted before. `hasDerivAt_nu` is documented as a derivative lemma only. |
| R2-2 stale prose | D10 replaced (above); `phaseCast` is designed (Section 9.2 and 10), not "to be added"; the docstring of `phaseCast_analytic` names its real output; the `1.5431` remark corrected: `cosh 1 ≈ 1.543081 < 1.5431` is TRUE, the probe route with `exp 1 < 2.7182818286` and `exp(-1) < 0.37` is simply too weak to prove it, so the helper uses `1.55`. |
| Sub-orchestrator decision | Plane-length helpers live in `KAM/Kepler/Plane` (KEP-1); final signatures stated in Section 7.3 item 1 and in `KeplerSignatures.lean` section A; N3-8 imports it. |
| Line cap | The signatures are split into two files (1,006 + 690 lines). |

## Appendix A. The signature files (verbatim)

Sha256 values as in the header.

### A.0 `.drafts/design/check_kepler.sh`

```sh
#!/bin/sh
# Elaborate both signature files in ONE process (the second continues the first). Run from the worktree root.
D=.drafts/design
{ sed 's/^public import KAM.Frozen.Planetary.Defs.ProgradeElliptic$/public import KAM.Frozen.Planetary.Defs.ProgradeElliptic\npublic import KAM.Frozen.Planetary.Defs.FastShift/' $D/KeplerSignatures.lean;
  sed -n '/^-- BEGIN-P/,$p' $D/KeplerSignaturesP.lean; } > $D/_combined.lean
nice -n 5 lake env lean $D/_combined.lean
```

### A.1 `.drafts/design/KeplerSignatures.lean`

```lean
/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Frozen.Defs.SymplecticForm
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Defs.RealHamiltonian
public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Iso.Defs.BorderedHessian
public import KAM.Frozen.Iso.Defs.KeplerBorder
public import KAM.Frozen.Iso.Defs.CollisionFree
public import KAM.Frozen.Iso.Defs.NearCircular
public import KAM.Frozen.Iso.Defs.RestrictedHamiltonian
public import KAM.Frozen.Iso.Defs.RestrictedVectorField
public import KAM.Frozen.Iso.Defs.IsRestrictedSolutionOn
public import KAM.Frozen.Iso.Defs.IsHamiltonianSolutionOn
public import KAM.Frozen.Planetary.Defs.Phase
public import KAM.Frozen.Planetary.Defs.PlaneSq
public import KAM.Frozen.Planetary.Defs.PlaneLength
public import KAM.Frozen.Planetary.Defs.PlaneDot
public import KAM.Frozen.Planetary.Defs.PlaneCross
public import KAM.Frozen.Planetary.Defs.QuarterTurn
public import KAM.Frozen.Planetary.Defs.OrbitalUnit
public import KAM.Frozen.Planetary.Defs.BodyVector
public import KAM.Frozen.Planetary.Defs.NoCollision
public import KAM.Frozen.Planetary.Defs.ActualMasses
public import KAM.Frozen.Planetary.Defs.BarycentricPositions
public import KAM.Frozen.Planetary.Defs.BarycentricVelocities
public import KAM.Frozen.Planetary.Defs.PairBounds
public import KAM.Frozen.Planetary.Defs.MovingHamiltonian
public import KAM.Frozen.Planetary.Defs.FixedHamiltonian
public import KAM.Frozen.Planetary.Defs.IsNewtonSolution
public import KAM.Frozen.Planetary.Defs.IsNewtonSolutionOn
public import KAM.Frozen.Planetary.Defs.IsMovingSolutionOn
public import KAM.Frozen.Planetary.Defs.IsFixedSolution
public import KAM.Frozen.Planetary.Defs.MovingKolmogorovSet
public import KAM.Frozen.Planetary.Defs.FixedKolmogorovSet
public import KAM.Frozen.Planetary.Defs.IsPhysicalTorus
public import KAM.Frozen.Planetary.Defs.CircularPoint
public import KAM.Frozen.Planetary.Defs.CircularTube
public import KAM.Frozen.Planetary.Defs.Assemble
public import KAM.Frozen.Planetary.Defs.Fast
public import KAM.Frozen.Planetary.Defs.Slow
public import KAM.Frozen.Planetary.Defs.OscillatorAction
public import KAM.Frozen.Planetary.Defs.SecularGamma
public import KAM.Frozen.Planetary.Defs.SecularRoot
public import KAM.Frozen.Planetary.Defs.SecularAxis
public import KAM.Frozen.Planetary.Defs.SecularEccVector
public import KAM.Frozen.Planetary.Defs.LongitudeJacobian
public import KAM.Frozen.Planetary.Defs.KeplerMeanLongitude
public import KAM.Frozen.Planetary.Defs.EllipsePosition
public import KAM.Frozen.Planetary.Defs.EllipseMomentum
public import KAM.Frozen.Planetary.Defs.EllipsePhase
public import KAM.Frozen.Planetary.Defs.KeplerEnergy
public import KAM.Frozen.Planetary.Defs.KeplerAxis
public import KAM.Frozen.Planetary.Defs.KeplerAction
public import KAM.Frozen.Planetary.Defs.KeplerEccVector
public import KAM.Frozen.Planetary.Defs.ProgradeElliptic

/-!
# Signatures of the shared Newtonian/Kepler/Delaunay layer (design draft)

Exact Lean statements of every result node of blueprint-I Parts 6, 7 and blueprint-P Parts 6, 7, see
`docs/tracks/P/design/KEPLER-LEAN-DESIGN.md`. Every body is `sorry`; no `set_option`, no
`maxHeartbeats`. Design evidence, not approved Lean. This file: sections A-E (shared layer and track I); sections F-G are in `KeplerSignaturesP.lean`, which
imports this file. Sections correspond to the modules of the
design document (shared layer `KAM/Kepler/*`, track I `KAM/Iso/*`, track P `KAM/Planetary/*`).
-/

@[expose] public noncomputable section

open Set Metric Real
open scoped ContDiff

namespace KAM.Kepler

open KAM KAM.Planetary

/-! ## A. Planar geometry on the frozen lengths (`KAM/Kepler/Plane.lean`) -/

section Plane

/-- Rotation of the plane by the angle `g`. -/
def rot (g : ℝ) (v : Fin 2 → ℝ) : Fin 2 → ℝ :=
  ![Real.cos g * v 0 - Real.sin g * v 1, Real.sin g * v 0 + Real.cos g * v 1]

/-- The unit vector `e_g = R(g) (1, 0)`. -/
def ex (g : ℝ) : Fin 2 → ℝ := ![Real.cos g, Real.sin g]

theorem planeSq_eq_planeDot (v : Fin 2 → ℝ) : planeSq v = planeDot v v := sorry
theorem planeLength_sq (v : Fin 2 → ℝ) : planeLength v ^ 2 = planeSq v := sorry
theorem planeLength_nonneg (v : Fin 2 → ℝ) : 0 ≤ planeLength v := sorry
theorem planeLength_eq_zero_iff {v : Fin 2 → ℝ} : planeLength v = 0 ↔ v = 0 := sorry
theorem planeLength_pos_iff {v : Fin 2 → ℝ} : 0 < planeLength v ↔ v ≠ 0 := sorry
theorem planeLength_neg (v : Fin 2 → ℝ) : planeLength (-v) = planeLength v := sorry
theorem planeLength_sub_comm (v w : Fin 2 → ℝ) : planeLength (v - w) = planeLength (w - v) := sorry
theorem planeLength_smul (c : ℝ) (v : Fin 2 → ℝ) : planeLength (c • v) = |c| * planeLength v := sorry
theorem abs_planeDot_le (v w : Fin 2 → ℝ) : |planeDot v w| ≤ planeLength v * planeLength w := sorry
theorem planeLength_add_le (v w : Fin 2 → ℝ) : planeLength (v + w) ≤ planeLength v + planeLength w := sorry
theorem abs_planeLength_sub_le (v w : Fin 2 → ℝ) : |planeLength v - planeLength w| ≤ planeLength (v - w) := sorry
/-- `bpP:p6:plane` (b), sup norm against the Euclidean length (the factor `√2` is sharp). -/
theorem norm_le_planeLength (v : Fin 2 → ℝ) : ‖v‖ ≤ planeLength v := sorry
theorem planeLength_le_sqrt_two_mul_norm (v : Fin 2 → ℝ) : planeLength v ≤ √2 * ‖v‖ := sorry
/-- Lagrange's identity `|q|²|p|² = (q·p)² + cr(q,p)²`. -/
theorem planeSq_mul_planeSq (q p : Fin 2 → ℝ) :
    planeSq q * planeSq p = planeDot q p ^ 2 + planeCross q p ^ 2 := sorry
/-- A vector is determined by its dot and cross product with a nonzero vector. -/
theorem eq_of_planeDot_planeCross_eq {q v w : Fin 2 → ℝ} (hq : q ≠ 0)
    (hd : planeDot q v = planeDot q w) (hc : planeCross q v = planeCross q w) : v = w := sorry

theorem planeLength_rot (g : ℝ) (v : Fin 2 → ℝ) : planeLength (rot g v) = planeLength v := sorry
theorem planeDot_rot (g : ℝ) (v w : Fin 2 → ℝ) : planeDot (rot g v) (rot g w) = planeDot v w := sorry
theorem planeCross_rot (g : ℝ) (v w : Fin 2 → ℝ) : planeCross (rot g v) (rot g w) = planeCross v w := sorry
theorem rot_rot (g h : ℝ) (v : Fin 2 → ℝ) : rot g (rot h v) = rot (g + h) v := sorry
theorem rot_two_pi_int (k : ℤ) (g : ℝ) (v : Fin 2 → ℝ) : rot (g + 2 * π * k) v = rot g v := sorry
theorem rot_quarterTurn (g : ℝ) (v : Fin 2 → ℝ) : rot g (quarterTurn v) = quarterTurn (rot g v) := sorry
theorem rot_ex (g h : ℝ) : rot g (ex h) = ex (g + h) := sorry
/-- `(q, p)` is determined by `(g, ξ, π)` in the orbit frame: the rotation is onto the plane. -/
theorem exists_rot_eq {u v : Fin 2 → ℝ} (h : planeLength u = planeLength v) : ∃ g : ℝ, rot g u = v := sorry

/-- `bpP:p6:plane` (c): `ℓ` is real analytic off `0`; so are `1/ℓ`, `1/ℓ³` and `v ↦ ℓ(v)⁻³ • v`. -/
theorem analyticAt_planeLength {v : Fin 2 → ℝ} (hv : v ≠ 0) : AnalyticAt ℝ planeLength v := sorry
theorem analyticAt_inv_planeLength {v : Fin 2 → ℝ} (hv : v ≠ 0) :
    AnalyticAt ℝ (fun w => (planeLength w)⁻¹) v := sorry
theorem analyticAt_inv_cube_smul {v : Fin 2 → ℝ} (hv : v ≠ 0) :
    AnalyticAt ℝ (fun w => ((planeLength w) ^ 3)⁻¹ • w) v := sorry
/-- `D ℓ(v) h = v·h / ℓ(v)`. -/
theorem hasFDerivAt_planeLength {v : Fin 2 → ℝ} (hv : v ≠ 0) :
    HasFDerivAt planeLength
      (((planeLength v)⁻¹) • ∑ k, v k • ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) k) v := sorry
/-- `D (1/ℓ)(v) h = - v·h / ℓ(v)³`. -/
theorem hasFDerivAt_inv_planeLength {v : Fin 2 → ℝ} (hv : v ≠ 0) :
    HasFDerivAt (fun w => (planeLength w)⁻¹)
      (-((planeLength v ^ 3)⁻¹) • ∑ k, v k • ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) k) v := sorry

/-- `KAM.Iso.radius` is the frozen planar length (`rfl`); likewise `radiusSq` is `planeSq`. These and the
three helpers `norm_le_planeLength`, `planeLength_le_sqrt_two_mul_norm`, `planeLength_add_le` above are the FINAL
forms imported by the ODE design's N3-8 (`KAM.ODE.NewtonDefs`): same statements as `NPart3Signatures.lean`. -/
theorem radius_eq_planeLength : KAM.Iso.radius = planeLength := rfl
theorem radiusSq_eq_planeSq : KAM.Iso.radiusSq = planeSq := rfl

end Plane

/-! ## B. The regular Kepler equation (`KAM/Kepler/Equation.lean`, `EquationComplex.lean`) -/

section Equation

/-- `Φ(F, v) = F - v₀ sin F + v₁ cos F`: the frozen `keplerMeanLongitude` for `v = secularEccVector`. -/
def keplerPhi (v : Fin 2 → ℝ) (F : ℝ) : ℝ := F - v 0 * Real.sin F + v 1 * Real.cos F

/-- `J(F, v) = ∂_F Φ = 1 - v·(cos F, sin F)`: the frozen `longitudeJacobian`. -/
def keplerJac (v : Fin 2 → ℝ) (F : ℝ) : ℝ := 1 - planeDot v (orbitalUnit F)

theorem keplerMeanLongitude_eq (w : Phase (2 + 2)) (i : Fin 2) (F : ℝ) :
    keplerMeanLongitude w i F = keplerPhi (secularEccVector w i) F := sorry
theorem longitudeJacobian_eq (w : Phase (2 + 2)) (i : Fin 2) (F : ℝ) :
    longitudeJacobian w i F = keplerJac (secularEccVector w i) F := sorry

theorem hasDerivAt_keplerPhi (v : Fin 2 → ℝ) (F : ℝ) : HasDerivAt (keplerPhi v) (keplerJac v F) F := sorry
theorem keplerPhi_shift (v : Fin 2 → ℝ) (F : ℝ) : keplerPhi v (F + 2 * π) = keplerPhi v F + 2 * π := sorry
theorem keplerPhi_zero (F : ℝ) : keplerPhi 0 F = F := sorry
theorem keplerJac_ge {v : Fin 2 → ℝ} (F : ℝ) : 1 - planeLength v ≤ keplerJac v F := sorry
theorem keplerJac_pos {v : Fin 2 → ℝ} (hv : planeLength v < 1) (F : ℝ) : 0 < keplerJac v F := sorry
theorem keplerPhi_strictMono {v : Fin 2 → ℝ} (hv : planeLength v < 1) : StrictMono (keplerPhi v) := sorry
theorem keplerPhi_bijective {v : Fin 2 → ℝ} (hv : planeLength v < 1) : Function.Bijective (keplerPhi v) := sorry

open scoped Classical in
/-- The unique real solution `F(λ, v)` of `Φ(F, v) = λ` (junk `0` when `ℓ v ≥ 1`). -/
def keplerLong (lam : ℝ) (v : Fin 2 → ℝ) : ℝ :=
  if h : planeLength v < 1 then (keplerPhi_bijective h).surjective lam |>.choose else 0

/-- `bpP:p7:regular-kepler` (a), the real part. All statements are for `ℓ v < 1`. -/
theorem keplerPhi_keplerLong {v : Fin 2 → ℝ} (hv : planeLength v < 1) (lam : ℝ) :
    keplerPhi v (keplerLong lam v) = lam := sorry
theorem keplerLong_unique {v : Fin 2 → ℝ} (hv : planeLength v < 1) {lam F : ℝ}
    (h : keplerPhi v F = lam) : keplerLong lam v = F := sorry
theorem keplerLong_shift {v : Fin 2 → ℝ} (hv : planeLength v < 1) (lam : ℝ) :
    keplerLong (lam + 2 * π) v = keplerLong lam v + 2 * π := sorry
theorem keplerLong_zero_vec (lam : ℝ) : keplerLong lam 0 = lam := sorry
/-- Real analyticity on `ℝ × {ℓ v < 1}`: by Mathlib's implicit function theorem at `C^ω`
(`ContDiffAt.implicitFunction`), glued by uniqueness. -/
theorem analyticOnNhd_keplerLong :
    AnalyticOnNhd ℝ (fun x : ℝ × (Fin 2 → ℝ) => keplerLong x.1 x.2) {x | planeLength x.2 < 1} := sorry
theorem hasDerivAt_keplerLong_lambda {v : Fin 2 → ℝ} (hv : planeLength v < 1) (lam : ℝ) :
    HasDerivAt (fun t => keplerLong t v) (1 / keplerJac v (keplerLong lam v)) lam := sorry
/-- `∂_{v₀} F = sin F / J`, `∂_{v₁} F = -cos F / J`. -/
theorem fderiv_keplerLong_vec {v : Fin 2 → ℝ} (hv : planeLength v < 1) (lam : ℝ) :
    fderiv ℝ (fun u => keplerLong lam u) v (Pi.single 0 1) =
        Real.sin (keplerLong lam v) / keplerJac v (keplerLong lam v) ∧
      fderiv ℝ (fun u => keplerLong lam u) v (Pi.single 1 1) =
        -Real.cos (keplerLong lam v) / keplerJac v (keplerLong lam v) := sorry

/-- Track I's `u_ℝ(ℓ, e)`: Kepler's equation `u - e sin u = ℓ`, the case `v = (e, 0)`. -/
def eccAnom (ℓ e : ℝ) : ℝ := keplerLong ℓ ![e, 0]

theorem planeLength_eccVec {e : ℝ} (he : |e| < 1) : planeLength (![e, 0] : Fin 2 → ℝ) < 1 := sorry
/-- `bpI:p7:kepler-eq` (c), real part. -/
theorem eccAnom_eq (ℓ : ℝ) {e : ℝ} (he : |e| < 1) : eccAnom ℓ e - e * Real.sin (eccAnom ℓ e) = ℓ := sorry
theorem analyticOnNhd_eccAnom : AnalyticOnNhd ℝ (fun x : ℝ × ℝ => eccAnom x.1 x.2) {x | |x.2| < 1} := sorry
theorem eccAnom_zero_left {e : ℝ} (he : |e| < 1) : eccAnom 0 e = 0 := sorry
theorem eccAnom_two_pi {e : ℝ} (he : |e| < 1) : eccAnom (2 * π) e = 2 * π := sorry
theorem eccAnom_zero_ecc (ℓ : ℝ) : eccAnom ℓ 0 = ℓ := sorry
theorem hasDerivAt_eccAnom {e : ℝ} (he : |e| < 1) (ℓ : ℝ) :
    HasDerivAt (fun t => eccAnom t e) (1 / (1 - e * Real.cos (eccAnom ℓ e))) ℓ := sorry
theorem strictMono_eccAnom {e : ℝ} (he : |e| < 1) : StrictMono (fun ℓ => eccAnom ℓ e) := sorry
/-- The eccentric longitude is `g + u` (`bpP:p7:regular-kepler` (c)). -/
theorem keplerLong_eq_add_eccAnom {e g : ℝ} (he0 : 0 < e) (he1 : e < 1) (lam : ℝ) :
    keplerLong lam (e • ex g) = g + eccAnom (lam - g) e := sorry

/-! ### Complex solution by contraction -/

/-- `G - a sin G + b cos G` (the complex Kepler operator). -/
def keplerOp (a b G : ℂ) : ℂ := G - a * Complex.sin G + b * Complex.cos G

/-- Quantitative hypotheses of the contraction (data, not a conclusion). On a parameter set `N` with
holomorphic coefficients `a b c`: the strip `|Im G| ≤ y₀` is invariant and the map is a `κ`-contraction. -/
structure KeplerData {P : Type*} [NormedAddCommGroup P] [NormedSpace ℂ P] [CompleteSpace P] (N : Set P)
    (a b c : P → ℂ) (y₀ κ : ℝ) : Prop where
  isOpen : IsOpen N
  analytic_a : AnalyticOnNhd ℂ a N
  analytic_b : AnalyticOnNhd ℂ b N
  analytic_c : AnalyticOnNhd ℂ c N
  y₀_pos : 0 < y₀
  κ_lt : κ < 1
  invariant : ∀ x ∈ N, |(c x).im| + (|(a x).re| + |(b x).re|) * Real.sinh y₀
      + (|(a x).im| + |(b x).im|) * Real.cosh y₀ < y₀
  contraction : ∀ x ∈ N, (‖a x‖ + ‖b x‖) * Real.cosh y₀ ≤ κ

open scoped Classical in
/-- The unique solution in the strip `|Im G| ≤ y₀` (junk `0` if there is none). -/
def keplerSol (y₀ : ℝ) (a b c : ℂ) : ℂ :=
  if h : ∃! G : ℂ, |G.im| ≤ y₀ ∧ keplerOp a b G = c then h.choose else 0

/-- Generic Kepler contraction: `bpI:p7:kepler-eq` and `bpP:p7:regular-kepler` (b) are instances.
Joint holomorphy is by the analytic implicit function theorem (`ContDiffAt.implicitFunction` over `ℂ`, which needs
`[CompleteSpace P]`) plus uniqueness in the open strip, NOT by a multivariable Weierstrass theorem (absent from
Mathlib); hence the coefficients are `AnalyticOnNhd` (a holomorphic coefficient on `Fin m → ℂ` is analytic by
`KAM.analyticOnNhd_of_differentiableOn`; the instances below are compositions of analytic maps and need no adapter). -/
theorem keplerSol_spec {P : Type*} [NormedAddCommGroup P] [NormedSpace ℂ P] [CompleteSpace P] {N : Set P}
    {a b c : P → ℂ} {y₀ κ : ℝ} (h : KeplerData N a b c y₀ κ) {x : P} (hx : x ∈ N) :
    |(keplerSol y₀ (a x) (b x) (c x)).im| ≤ y₀ ∧
      keplerOp (a x) (b x) (keplerSol y₀ (a x) (b x) (c x)) = c x ∧
      ∀ G : ℂ, |G.im| ≤ y₀ → keplerOp (a x) (b x) G = c x → G = keplerSol y₀ (a x) (b x) (c x) := sorry
theorem keplerSol_analyticOnNhd {P : Type*} [NormedAddCommGroup P] [NormedSpace ℂ P] [CompleteSpace P] {N : Set P}
    {a b c : P → ℂ} {y₀ κ : ℝ} (h : KeplerData N a b c y₀ κ) :
    AnalyticOnNhd ℂ (fun x => keplerSol y₀ (a x) (b x) (c x)) N := sorry
theorem keplerSol_differentiableOn {P : Type*} [NormedAddCommGroup P] [NormedSpace ℂ P] [CompleteSpace P] {N : Set P}
    {a b c : P → ℂ} {y₀ κ : ℝ} (h : KeplerData N a b c y₀ κ) :
    DifferentiableOn ℂ (fun x => keplerSol y₀ (a x) (b x) (c x)) N := sorry
/-- Generic derivatives (implicit differentiation; the denominator `1 - a cos G - b sin G` is nonzero on `N`
because `‖a cos G‖ + ‖b sin G‖ ≤ κ < 1`): `∂_x G = (a' sin G - b' cos G + c')/(1 - a cos G - b sin G)` in direction `v`. -/
theorem keplerSol_fderiv {P : Type*} [NormedAddCommGroup P] [NormedSpace ℂ P] [CompleteSpace P] {N : Set P}
    {a b c : P → ℂ} {y₀ κ : ℝ} (h : KeplerData N a b c y₀ κ) {x : P} (hx : x ∈ N) (v : P) :
    fderiv ℂ (fun x => keplerSol y₀ (a x) (b x) (c x)) x v *
        (1 - a x * Complex.cos (keplerSol y₀ (a x) (b x) (c x)) - b x * Complex.sin (keplerSol y₀ (a x) (b x) (c x))) =
      fderiv ℂ a x v * Complex.sin (keplerSol y₀ (a x) (b x) (c x))
        - fderiv ℂ b x v * Complex.cos (keplerSol y₀ (a x) (b x) (c x)) + fderiv ℂ c x v := sorry
/-- Real coefficients give a real solution. -/
theorem keplerSol_real {y₀ : ℝ} {a b c : ℂ} (ha : a.im = 0) (hb : b.im = 0) (hc : c.im = 0)
    (hex : ∃ G : ℂ, |G.im| ≤ y₀ ∧ keplerOp a b G = c) (huniq : ∃! G : ℂ, |G.im| ≤ y₀ ∧ keplerOp a b G = c) :
    (keplerSol y₀ a b c).im = 0 := sorry
/-- Translation by `2π` in the right-hand side. -/
theorem keplerSol_shift {y₀ : ℝ} {a b c : ℂ} (huniq : ∃! G : ℂ, |G.im| ≤ y₀ ∧ keplerOp a b G = c) :
    keplerSol y₀ a b (c + 2 * π) = keplerSol y₀ a b c + 2 * π := sorry

/-- `bpP:p7:regular-kepler` (b): the tube `N₀`, strip `|Im F| ≤ 1`. -/
def regularTube : Set (ℂ × (Fin 2 → ℂ)) := {x | |x.1.im| < 1 / 4 ∧ ‖x.2 0‖ + ‖x.2 1‖ < 1 / 4}
/-- The complex solution `F(λ, v)` of the regular Kepler equation on `regularTube`. -/
def keplerLongC (x : ℂ × (Fin 2 → ℂ)) : ℂ := keplerSol 1 (x.2 0) (x.2 1) x.1

theorem regularKepler_complex :
    DifferentiableOn ℂ keplerLongC regularTube ∧
    (∀ x ∈ regularTube, |(keplerLongC x).im| ≤ 1 ∧
      keplerOp (x.2 0) (x.2 1) (keplerLongC x) = x.1 ∧
      3 / 5 < ‖1 - x.2 0 * Complex.cos (keplerLongC x) - x.2 1 * Complex.sin (keplerLongC x)‖) ∧
    (∀ x ∈ regularTube, ∀ G : ℂ, |G.im| ≤ 1 → keplerOp (x.2 0) (x.2 1) G = x.1 → G = keplerLongC x) := sorry
theorem keplerLongC_ofReal {lam : ℝ} {v : Fin 2 → ℝ} (h : (lam : ℂ) ∈ {z : ℂ | |z.im| < 1 / 4})
    (hv : |v 0| + |v 1| < 1 / 4) :
    keplerLongC ((lam : ℂ), fun i => (v i : ℂ)) = (keplerLong lam v : ℂ) := sorry
theorem keplerLongC_shift {x : ℂ × (Fin 2 → ℂ)} (hx : x ∈ regularTube) :
    keplerLongC (x.1 + 2 * π, x.2) = keplerLongC x + 2 * π := sorry
/-- Derivative formulas (`bpP:p7:regular-kepler` (b), last clause). -/
theorem hasDerivAt_keplerLongC_lambda {x : ℂ × (Fin 2 → ℂ)} (hx : x ∈ regularTube) :
    HasDerivAt (fun t : ℂ => keplerLongC (t, x.2))
      (1 / (1 - x.2 0 * Complex.cos (keplerLongC x) - x.2 1 * Complex.sin (keplerLongC x))) x.1 := sorry

/-- F2: the other two derivative formulas of `bpP:p7:regular-kepler` (b) in the complex tube
(`∂_{v₀}F = sin F/J`, `∂_{v₁}F = -cos F/J`), and the source's sharp Jacobian bound. -/
theorem fderiv_keplerLongC_vec {x : ℂ × (Fin 2 → ℂ)} (hx : x ∈ regularTube) :
    fderiv ℂ (fun v => keplerLongC (x.1, v)) x.2 (Pi.single 0 1) =
        Complex.sin (keplerLongC x) /
          (1 - x.2 0 * Complex.cos (keplerLongC x) - x.2 1 * Complex.sin (keplerLongC x)) ∧
    fderiv ℂ (fun v => keplerLongC (x.1, v)) x.2 (Pi.single 1 1) =
        -Complex.cos (keplerLongC x) /
          (1 - x.2 0 * Complex.cos (keplerLongC x) - x.2 1 * Complex.sin (keplerLongC x)) := sorry
theorem regularKepler_jac_bound {x : ℂ × (Fin 2 → ℂ)} (hx : x ∈ regularTube) :
    1 - Real.cosh 1 / 4 ≤
      ‖1 - x.2 0 * Complex.cos (keplerLongC x) - x.2 1 * Complex.sin (keplerLongC x)‖ ∧
    (3 / 5 : ℝ) < 1 - Real.cosh 1 / 4 := sorry
/-- Numerical helper (probed, Section 9.2): `cosh 1 < 1.55`, so the contraction constant `0.39` and `3/5` hold. -/
theorem cosh_one_lt : Real.cosh 1 < 1.55 := sorry

/-! ### Track I's tube (`bpI:p7:kepler-eq`) -/

/-- The constants of `bpI:p7:kepler-eq` for `0 < e₁ < 1`. -/
def keplerE2 (e₁ : ℝ) : ℝ := (1 + e₁) / 2
def keplerTheta (e₁ : ℝ) : ℝ := (1 + keplerE2 e₁) / 2
def keplerY0 (e₁ : ℝ) : ℝ := Real.arcosh (keplerTheta e₁ / keplerE2 e₁)
def keplerDeltaK (e₁ : ℝ) : ℝ := (1 - keplerTheta e₁) * keplerY0 e₁ / 2
def keplerDeltaE (e₁ : ℝ) : ℝ :=
  min (keplerE2 e₁ - e₁) ((1 - keplerTheta e₁) * keplerY0 e₁ / (2 * Real.cosh (keplerY0 e₁)))
/-- The thin tube `𝒫(e₁)` around the real eccentricity interval. -/
def keplerTube (e₁ : ℝ) : Set (ℂ × ℂ) :=
  {x | |x.1.im| < keplerDeltaK e₁ ∧
    Metric.infDist x.2 (Complex.ofReal '' Icc (-e₁) e₁) < keplerDeltaE e₁}
/-- Track I's holomorphic `u(ℓ, e)`. -/
def eccAnomC (e₁ : ℝ) (x : ℂ × ℂ) : ℂ := keplerSol (keplerY0 e₁) x.2 0 x.1

theorem keplerConstants_pos {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) :
    0 < keplerY0 e₁ ∧ 0 < keplerDeltaK e₁ ∧ 0 < keplerDeltaE e₁ ∧ e₁ < keplerE2 e₁ ∧
      keplerE2 e₁ < keplerTheta e₁ ∧ keplerTheta e₁ < 1 := sorry
/-- `bpI:p7:kepler-eq`: existence, uniqueness in the strip, holomorphy, (a), (b), (c). -/
theorem keplerEq_tube {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) :
    IsOpen (keplerTube e₁) ∧ DifferentiableOn ℂ (eccAnomC e₁) (keplerTube e₁) ∧
    (∀ x ∈ keplerTube e₁, |(eccAnomC e₁ x).im| ≤ keplerY0 e₁ ∧
      eccAnomC e₁ x - x.2 * Complex.sin (eccAnomC e₁ x) = x.1 ∧
      ∀ G : ℂ, |G.im| ≤ keplerY0 e₁ → G - x.2 * Complex.sin G = x.1 → G = eccAnomC e₁ x) ∧
    (∀ x ∈ keplerTube e₁, ‖Complex.sin (eccAnomC e₁ x)‖ ≤ Real.cosh (keplerY0 e₁) ∧
      ‖Complex.cos (eccAnomC e₁ x)‖ ≤ Real.cosh (keplerY0 e₁) ∧
      ‖x.2 * Complex.cos (eccAnomC e₁ x)‖ ≤ keplerTheta e₁ ∧
      1 - keplerTheta e₁ ≤ ‖1 - x.2 * Complex.cos (eccAnomC e₁ x)‖) := sorry
theorem keplerTube_real_points {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {ℓ e : ℝ} (he : |e| ≤ e₁) :
    ((ℓ : ℂ), (e : ℂ)) ∈ keplerTube e₁ ∧ eccAnomC e₁ ((ℓ : ℂ), (e : ℂ)) = (eccAnom ℓ e : ℂ) := sorry
theorem eccAnomC_periodic {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {x : ℂ × ℂ} (hx : x ∈ keplerTube e₁) :
    (x.1 + 2 * π, x.2) ∈ keplerTube e₁ ∧
      eccAnomC e₁ (x.1 + 2 * π, x.2) = eccAnomC e₁ x + 2 * π := sorry
theorem eccAnomC_zero_ecc {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {ℓ : ℂ} (hℓ : |ℓ.im| < keplerDeltaK e₁) :
    eccAnomC e₁ (ℓ, 0) = ℓ := sorry
theorem hasDerivAt_eccAnomC_ell {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {x : ℂ × ℂ} (hx : x ∈ keplerTube e₁) :
    HasDerivAt (fun t : ℂ => eccAnomC e₁ (t, x.2))
      (1 / (1 - x.2 * Complex.cos (eccAnomC e₁ x))) x.1 := sorry
/-- F2: `∂_e u = sin u/(1 - e cos u)` on the tube. -/
theorem hasDerivAt_eccAnomC_ecc {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {x : ℂ × ℂ} (hx : x ∈ keplerTube e₁) :
    HasDerivAt (fun e : ℂ => eccAnomC e₁ (x.1, e))
      (Complex.sin (eccAnomC e₁ x) / (1 - x.2 * Complex.cos (eccAnomC e₁ x))) x.2 := sorry

end Equation

/-! ## C. Symplectic bookkeeping and the Delaunay orbit maps
(`KAM/Kepler/Symplectic.lean`, `Orbit.lean`, `DelaunaySymplectic.lean`, `DelaunayChart.lean`, `Means.lean`) -/

section Delaunay

/-- `Ω(DΨ z u, DΨ z v) = c Ω(u, v)` for `z ∈ U`, with the frozen `symplecticForm` on both sides
(heterogeneous dimension, so that `Phase (n + n) → Phase (n * 2)` is covered). -/
def IsSymplecticOn {d e : ℕ} (c : ℝ) (Ψ : Phase d → Phase e) (U : Set (Phase d)) : Prop :=
  ∀ z ∈ U, ∀ u v : Phase d,
    symplecticForm (fderiv ℝ Ψ z u) (fderiv ℝ Ψ z v) = c * symplecticForm u v

/-- Chain rule for `IsSymplecticOn` (differentiability is an explicit hypothesis, since `fderiv` is total). -/
theorem IsSymplecticOn.comp {d e f : ℕ} {c₁ c₂ : ℝ} {Ψ₁ : Phase d → Phase e} {Ψ₂ : Phase e → Phase f}
    {U : Set (Phase d)} {V : Set (Phase e)} (h₁ : IsSymplecticOn c₁ Ψ₁ U) (h₂ : IsSymplecticOn c₂ Ψ₂ V)
    (hU : ∀ z ∈ U, DifferentiableAt ℝ Ψ₁ z) (hV : ∀ z ∈ V, DifferentiableAt ℝ Ψ₂ z)
    (hmaps : Set.MapsTo Ψ₁ U V) : IsSymplecticOn (c₂ * c₁) (Ψ₂ ∘ Ψ₁) U := sorry

/-- Entrywise complexification of a real phase point. -/
def phaseToC {d : ℕ} (z : Phase d) : (Fin d → ℂ) × (Fin d → ℂ) :=
  (fun i => (z.1 i : ℂ), fun i => (z.2 i : ℂ))

/-- Eccentricity `e(L, G) = √(1 - G²/L²)`. -/
def eccOf (L G : ℝ) : ℝ := √(1 - G ^ 2 / L ^ 2)

/-- Strength-one Kepler energy `E(q, p) = ½|p|² - 1/|q|`, `z = (q, p)`. -/
def kE (z : Phase 2) : ℝ := planeSq z.2 / 2 - 1 / planeLength z.1

/-- The orbit frame: position and momentum in the frame of the ellipse, at eccentric anomaly `u`. -/
def orbitFrame (L e u : ℝ) : Phase 2 :=
  (![L ^ 2 * (Real.cos u - e), L ^ 2 * √(1 - e ^ 2) * Real.sin u],
   ![-Real.sin u / (L * (1 - e * Real.cos u)), √(1 - e ^ 2) * Real.cos u / (L * (1 - e * Real.cos u))])

/-- The orbit map in the parameters `(ℓ, g, L, e)`, `0 ≤ e < 1`: includes the circular endpoint `e = 0`. -/
def orbitMapR (ℓ g L e : ℝ) : Phase 2 :=
  (rot g (orbitFrame L e (eccAnom ℓ e)).1, rot g (orbitFrame L e (eccAnom ℓ e)).2)

/-- Domain of the Delaunay variables: `w = ((ℓ, g), (L, G))` with `0 < G < L`. -/
def deDom : Set (Phase 2) := {w | 0 < w.2 1 ∧ w.2 1 < w.2 0}

/-- The Delaunay map `𝖰(ℓ, g, L, G)` (`bpI:p7:orbit-maps`). -/
def delaunay (w : Phase 2) : Phase 2 := orbitMapR (w.1 0) (w.1 1) (w.2 0) (eccOf (w.2 0) (w.2 1))

/-- Bound prograde non-circular region `𝒞` (`bpI:p7:elements`). -/
def keplerRegion : Set (Phase 2) :=
  {z | 0 < planeLength z.1 ∧ kE z < 0 ∧ 0 < planeCross z.1 z.2 ∧
    planeCross z.1 z.2 ^ 2 < -1 / (2 * kE z)}
/-- Elements on `𝒞`: `L = 1/√(-2E)`, `G = cr`, `a = L²`, `e = √(1 + 2 E cr²)`. -/
def elemL (z : Phase 2) : ℝ := 1 / √(-2 * kE z)
def elemA (z : Phase 2) : ℝ := 1 / (-2 * kE z)
def elemEcc (z : Phase 2) : ℝ := √(1 + 2 * kE z * planeCross z.1 z.2 ^ 2)

theorem isOpen_keplerRegion : IsOpen keplerRegion := sorry
theorem isOpen_deDom : IsOpen deDom := sorry

section OrbitIdentities
variable {ℓ g L e : ℝ}
/-- `bpI:p7:orbit-identities` (a)-(d) and `bpI:p7:circular`: stated for `0 ≤ e < 1`, hence also at `e = 0`. -/
theorem orbitMapR_radius (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    planeLength (orbitMapR ℓ g L e).1 = L ^ 2 * (1 - e * Real.cos (eccAnom ℓ e)) := sorry
theorem orbitMapR_radius_bounds (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    L ^ 2 * (1 - e) ≤ planeLength (orbitMapR ℓ g L e).1 ∧
      planeLength (orbitMapR ℓ g L e).1 ≤ L ^ 2 * (1 + e) := sorry
theorem orbitMapR_speed_sq (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    planeSq (orbitMapR ℓ g L e).2 =
      (1 + e * Real.cos (eccAnom ℓ e)) / (L ^ 2 * (1 - e * Real.cos (eccAnom ℓ e))) := sorry
theorem orbitMapR_cross (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    planeCross (orbitMapR ℓ g L e).1 (orbitMapR ℓ g L e).2 = L * √(1 - e ^ 2) := sorry
theorem orbitMapR_dot (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    planeDot (orbitMapR ℓ g L e).1 (orbitMapR ℓ g L e).2 = L * e * Real.sin (eccAnom ℓ e) := sorry
theorem orbitMapR_energy (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    kE (orbitMapR ℓ g L e) = -1 / (2 * L ^ 2) := sorry
/-- `(L e sin u)² = -G² + 2r - r²/L²`, `L² e cos u = L² - r`. -/
theorem orbitMapR_radial (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    (L * e * Real.sin (eccAnom ℓ e)) ^ 2 =
        -(L * √(1 - e ^ 2)) ^ 2 + 2 * planeLength (orbitMapR ℓ g L e).1
          - planeLength (orbitMapR ℓ g L e).1 ^ 2 / L ^ 2 ∧
      L ^ 2 * e * Real.cos (eccAnom ℓ e) = L ^ 2 - planeLength (orbitMapR ℓ g L e).1 := sorry
theorem orbitMapR_periodic (k k' : ℤ) (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    orbitMapR (ℓ + 2 * π * k) (g + 2 * π * k') L e = orbitMapR ℓ g L e := sorry
theorem analyticOnNhd_orbitMapR :
    AnalyticOnNhd ℝ (fun x : Fin 4 → ℝ => orbitMapR (x 0) (x 1) (x 2) (x 3))
      {x | 0 < x 2 ∧ 0 ≤ x 3 ∧ x 3 < 1} := sorry
end OrbitIdentities

/-- `bpI:p7:orbit-identities` for the Delaunay map, with the elements of `𝖰(w)`. -/
theorem delaunay_mem_region {w : Phase 2} (hw : w ∈ deDom) : delaunay w ∈ keplerRegion := sorry
theorem delaunay_elements {w : Phase 2} (hw : w ∈ deDom) :
    elemL (delaunay w) = w.2 0 ∧ planeCross (delaunay w).1 (delaunay w).2 = w.2 1 ∧
      elemA (delaunay w) = w.2 0 ^ 2 ∧ elemEcc (delaunay w) = eccOf (w.2 0) (w.2 1) := sorry
theorem orbitMapR_eq_delaunay {ℓ g L G : ℝ} (hw : (![ℓ, g], ![L, G]) ∈ deDom) :
    orbitMapR ℓ g L (eccOf L G) = delaunay (![ℓ, g], ![L, G]) := sorry
theorem analyticOnNhd_delaunay : AnalyticOnNhd ℝ delaunay deDom := sorry
theorem eccOf_mem_Ioo {L G : ℝ} (h : (![L, G] : Fin 2 → ℝ) 1 < (![L, G] : Fin 2 → ℝ) 0)
    (hG : 0 < G) : 0 < eccOf L G ∧ eccOf L G < 1 := sorry

/-- `bpI:p7:h0`: `Ham^K ∘ 𝖰 = -1/(2L²) - G`; and `Ham^K = E - Γ`. -/
theorem delaunay_hamiltonian {w : Phase 2} (hw : w ∈ deDom) :
    kE (delaunay w) - planeCross (delaunay w).1 (delaunay w).2 = -1 / (2 * w.2 0 ^ 2) - w.2 1 := sorry

/-- F-audit C6 (`bpI:p7:symplectic`, Liouville primitive): `𝖰^*(Σ p dq) = L dℓ + G dg + dF`, `F = 2 L e sin u`. -/
def delaunayGen (w : Phase 2) : ℝ :=
  2 * w.2 0 * eccOf (w.2 0) (w.2 1) * Real.sin (eccAnom (w.1 0) (eccOf (w.2 0) (w.2 1)))
theorem delaunay_liouville {w : Phase 2} (hw : w ∈ deDom) (u : Phase 2) :
    planeDot (delaunay w).2 (fderiv ℝ delaunay w u).1 =
      w.2 0 * u.1 0 + w.2 1 * u.1 1 + fderiv ℝ delaunayGen w u := sorry
/-- C6: the Hamiltonian-field consequence of symplecticity (`D𝖰 X_{H∘𝖰} = X_H ∘ 𝖰`). -/
theorem delaunay_hamiltonianVectorField {H : Phase 2 → ℝ} {w : Phase 2} (hw : w ∈ deDom)
    (hH : DifferentiableAt ℝ H (delaunay w)) :
    fderiv ℝ delaunay w (hamiltonianVectorField (H ∘ delaunay) w) = hamiltonianVectorField H (delaunay w) := sorry

/-- EXPLICIT Jacobian columns (audit: the decomposition promised for KEP-6 is designed here, not only asserted).
Frame derivatives, with `u = eccAnom ℓ e`, `c = cos u`, `s = sin u`, `k = √(1-e²)`, `D = 1 - e c`:
`∂_u (X, Y, P_X, P_Y) = (-L² s, L² k c, -(c-e)/(L D²), -k s/(L D²))`,
`∂_e (at fixed u) = (-L², -L² e s/k, -s c/(L D²), c (c-e)/(L D² k))`,
`∂_L = (2 L (c-e), 2 L k s, s/(L² D), -k c/(L² D))`, and `∂_ℓ u = 1/D`, `∂_e u = s/D`. -/
def orbitMapColumn (ℓ g L e : ℝ) : Fin 4 → Phase 2 :=
  let u := eccAnom ℓ e
  let c := Real.cos u
  let s := Real.sin u
  let k := √(1 - e ^ 2)
  let D := 1 - e * c
  let fu : Phase 2 := (![-L ^ 2 * s, L ^ 2 * k * c], ![-(c - e) / (L * D ^ 2), -k * s / (L * D ^ 2)])
  let fe : Phase 2 := (![-L ^ 2, -L ^ 2 * e * s / k], ![-s * c / (L * D ^ 2), c * (c - e) / (L * D ^ 2 * k)])
  let fL : Phase 2 := (![2 * L * (c - e), 2 * L * k * s], ![s / (L ^ 2 * D), -k * c / (L ^ 2 * D)])
  let q := (orbitMapR ℓ g L e)
  ![(rot g ((1 / D) • fu.1), rot g ((1 / D) • fu.2)),
    (quarterTurn q.1, quarterTurn q.2),
    (rot g fL.1, rot g fL.2),
    (rot g (fe.1 + (s / D) • fu.1), rot g (fe.2 + (s / D) • fu.2))]
theorem fderiv_orbitMapR_basis {ℓ g L e : ℝ} (hL : 0 < L) (he0 : 0 < e) (he1 : e < 1) (i : Fin 4) :
    fderiv ℝ (fun x : Fin 4 → ℝ => orbitMapR (x 0) (x 1) (x 2) (x 3)) ![ℓ, g, L, e] (Pi.single i 1) =
      orbitMapColumn ℓ g L e i := sorry
/-- Chain rule through `e(L, G)`: `∂_L e = G²/(L³ e)`, `∂_G e = -G/(L² e)`. -/
theorem fderiv_delaunay_basis {w : Phase 2} (hw : w ∈ deDom) :
    fderiv ℝ delaunay w (Pi.single 0 1, 0) = orbitMapColumn (w.1 0) (w.1 1) (w.2 0) (eccOf (w.2 0) (w.2 1)) 0 ∧
    fderiv ℝ delaunay w (Pi.single 1 1, 0) = orbitMapColumn (w.1 0) (w.1 1) (w.2 0) (eccOf (w.2 0) (w.2 1)) 1 ∧
    fderiv ℝ delaunay w (0, Pi.single 0 1) =
      orbitMapColumn (w.1 0) (w.1 1) (w.2 0) (eccOf (w.2 0) (w.2 1)) 2 +
        (w.2 1 ^ 2 / (w.2 0 ^ 3 * eccOf (w.2 0) (w.2 1))) •
          orbitMapColumn (w.1 0) (w.1 1) (w.2 0) (eccOf (w.2 0) (w.2 1)) 3 ∧
    fderiv ℝ delaunay w (0, Pi.single 1 1) =
      (-w.2 1 / (w.2 0 ^ 2 * eccOf (w.2 0) (w.2 1))) •
        orbitMapColumn (w.1 0) (w.1 1) (w.2 0) (eccOf (w.2 0) (w.2 1)) 3 := sorry

/-- `bpI:p7:symplectic`: `𝖰^*(Σ dq∧dp) = dℓ∧dL + dg∧dG`, i.e. factor one for the frozen form
(positions `(ℓ, g)`, momenta `(L, G)`), and `D𝖰` is invertible. -/
theorem delaunay_symplectic : IsSymplecticOn 1 delaunay deDom := sorry
theorem delaunay_fderiv_equiv {w : Phase 2} (hw : w ∈ deDom) :
    ∃ A : Phase 2 ≃L[ℝ] Phase 2, (A : Phase 2 →L[ℝ] Phase 2) = fderiv ℝ delaunay w := sorry
/-- Explicit Jacobian columns, in the intermediate variables (helper for the proof; the symplectic
identity is then six rational identities, see the design document). -/
theorem delaunay_hasFDerivAt {w : Phase 2} (hw : w ∈ deDom) :
    HasFDerivAt delaunay (fderiv ℝ delaunay w) w := sorry

/-- `bpI:p7:chart`: periodic, injective modulo `(2πℤ)² × {0}`, surjective onto `𝒞`, local analytic
diffeomorphism (the quotient diffeomorphism of the blueprint, stated without a quotient type). -/
theorem delaunay_periodic {w : Phase 2} (hw : w ∈ deDom) (k k' : ℤ) :
    delaunay ((w.1 + ![2 * π * k, 2 * π * k'], w.2)) = delaunay w := sorry
theorem delaunay_eq_iff {w w' : Phase 2} (hw : w ∈ deDom) (hw' : w' ∈ deDom) :
    delaunay w = delaunay w' ↔
      ∃ k k' : ℤ, w'.1 = w.1 + ![2 * π * k, 2 * π * k'] ∧ w'.2 = w.2 := sorry
theorem keplerRegion_subset_image : keplerRegion ⊆ delaunay '' deDom := sorry
theorem delaunay_localDiffeo {w : Phase 2} (hw : w ∈ deDom) :
    ∃ φ : OpenPartialHomeomorph (Phase 2) (Phase 2), w ∈ φ.source ∧
      (φ : Phase 2 → Phase 2) = delaunay ∧ AnalyticOnNhd ℝ φ.symm φ.target := sorry

/-- The complex orbit map `𝖰_el(ℓ, g, L, e, k)` (`bpI:p7:orbit-maps`), coordinates `x 0 .. x 4`. -/
def orbitMapC (e₁ : ℝ) (x : Fin 5 → ℂ) : (Fin 2 → ℂ) × (Fin 2 → ℂ) :=
  let u := eccAnomC e₁ (x 0, x 3)
  let D := 1 - x 3 * Complex.cos u
  let X := x 2 ^ 2 * (Complex.cos u - x 3)
  let Y := x 2 ^ 2 * x 4 * Complex.sin u
  let PX := -Complex.sin u / (x 2 * D)
  let PY := x 4 * Complex.cos u / (x 2 * D)
  (![Complex.cos (x 1) * X - Complex.sin (x 1) * Y, Complex.sin (x 1) * X + Complex.cos (x 1) * Y],
   ![Complex.cos (x 1) * PX - Complex.sin (x 1) * PY, Complex.sin (x 1) * PX + Complex.cos (x 1) * PY])
def orbitDomC (e₁ : ℝ) : Set (Fin 5 → ℂ) := {x | (x 0, x 3) ∈ keplerTube e₁ ∧ x 2 ≠ 0}

/-- `bpI:p7:orbit-maps-e`: holomorphic on the tube (through `e = 0`), `2π`-periodic in `ℓ` and `g`,
real at real points, agreeing with `orbitMapR`. -/
theorem orbitMapC_differentiableOn {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) :
    DifferentiableOn ℂ (orbitMapC e₁) (orbitDomC e₁) := sorry
theorem orbitMapC_periodic {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {x : Fin 5 → ℂ} (hx : x ∈ orbitDomC e₁) :
    orbitMapC e₁ (Function.update x 0 (x 0 + 2 * π)) = orbitMapC e₁ x ∧
      orbitMapC e₁ (Function.update x 1 (x 1 + 2 * π)) = orbitMapC e₁ x := sorry
/-- C6: reality for arbitrary real `k` and nonzero real `L` (not only the principal `k = √(1-e²)`). -/
theorem orbitMapC_real {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {x : Fin 5 → ℝ} (hL : x 2 ≠ 0) (he : |x 3| ≤ e₁) :
    (∀ i, ((orbitMapC e₁ (fun j => (x j : ℂ))).1 i).im = 0) ∧
    (∀ i, ((orbitMapC e₁ (fun j => (x j : ℂ))).2 i).im = 0) := sorry
theorem orbitMapC_ofReal {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {ℓ g L e : ℝ} (hL : 0 < L)
    (he : |e| ≤ e₁) :
    orbitMapC e₁ ![(ℓ : ℂ), (g : ℂ), (L : ℂ), (e : ℂ), ((√(1 - e ^ 2) : ℝ) : ℂ)] =
      phaseToC (orbitMapR ℓ g L e) := sorry
theorem orbitDomC_mem_ofReal {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {ℓ g L e : ℝ} (hL : 0 < L)
    (he : |e| ≤ e₁) : (![(ℓ : ℂ), (g : ℂ), (L : ℂ), (e : ℂ), ((√(1 - e ^ 2) : ℝ) : ℂ)] : Fin 5 → ℂ) ∈
      orbitDomC e₁ := sorry

/-- `bpI:p7:means` and `bpI:p7:circular`: time averages over the mean anomaly, `0 ≤ e < 1`. -/
theorem orbitMapR_mean_inv_radius {g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    (2 * π)⁻¹ * ∫ ℓ in (0 : ℝ)..2 * π, 1 / planeLength (orbitMapR ℓ g L e).1 = 1 / L ^ 2 := sorry
theorem orbitMapR_mean_speed_sq {g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    (2 * π)⁻¹ * ∫ ℓ in (0 : ℝ)..2 * π, planeSq (orbitMapR ℓ g L e).2 = 1 / L ^ 2 := sorry
theorem orbitMapR_mean_radius {g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    (2 * π)⁻¹ * ∫ ℓ in (0 : ℝ)..2 * π, planeLength (orbitMapR ℓ g L e).1 = L ^ 2 * (1 + e ^ 2 / 2) := sorry

/-! ### Mass and strength (`KAM/Kepler/Mass.lean`): `bpI:p7:scaling`, `bpP:p7:kepler-data`, `range`, `kepler` -/

/-- `𝖲_{m,κ}(Q, P) = (Q/κ, mκ P)` (for `m = 1` this is `𝖲_κ` of `bpI:p7:scaling`). -/
def scaleMK (m κ : ℝ) (z : Phase 2) : Phase 2 := (κ⁻¹ • z.1, (m * κ) • z.2)
/-- `E_{m,κ}(q, p) = |p|²/(2m) - κ m/|q|` (the frozen `keplerEnergy` at `κ = 1`). -/
def energyMK (m κ : ℝ) (z : Phase 2) : ℝ := planeSq z.2 / (2 * m) - κ * m / planeLength z.1
def axisMK (m κ : ℝ) (z : Phase 2) : ℝ := -(κ * m) / (2 * energyMK m κ z)
def actionMK (m κ : ℝ) (z : Phase 2) : ℝ := m * √(κ * axisMK m κ z)
/-- `𝒦_{m,κ}`: prograde bound region (`q ≠ 0`, `E < 0`, `cr > 0`). -/
def regionMK (m κ : ℝ) : Set (Phase 2) :=
  {z | 0 < planeLength z.1 ∧ energyMK m κ z < 0 ∧ 0 < planeCross z.1 z.2}
/-- `𝖰_{m,κ}(ℓ, g, Λ, C) = 𝖲_{m,κ} ∘ 𝖰(ℓ, g, Λ/m, C/m)`. -/
def delaunayMK (m κ : ℝ) (w : Phase 2) : Phase 2 := scaleMK m κ (delaunay (w.1, m⁻¹ • w.2))

theorem isOpen_regionMK {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) : IsOpen (regionMK m κ) := sorry
theorem scaleMK_energy {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) (z : Phase 2) :
    energyMK m κ (scaleMK m κ z) = m * κ ^ 2 * kE z := sorry
theorem scaleMK_cross {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) (z : Phase 2) :
    planeCross (scaleMK m κ z).1 (scaleMK m κ z).2 = m * planeCross z.1 z.2 := sorry
theorem scaleMK_symplectic {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) : IsSymplecticOn m (scaleMK m κ) univ := sorry
theorem scaleMK_bijective {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) : Function.Bijective (scaleMK m κ) := sorry
/-- `bpP:p7:range`: on `𝒦_{m,κ}`, `0 < C ≤ Λ`, equality iff the radius is constant. -/
theorem cross_le_action {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {z : Phase 2} (hz : z ∈ regionMK m κ) :
    planeCross z.1 z.2 ≤ actionMK m κ z := sorry
theorem cross_eq_action_iff {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {z : Phase 2} (hz : z ∈ regionMK m κ) :
    planeCross z.1 z.2 = actionMK m κ z ↔ planeDot z.1 z.2 = 0 ∧ planeLength z.1 = axisMK m κ z := sorry
/-- `bpP:p7:kepler` (a): analytic, periodic, symplectic of factor one in `(ℓ, g; Λ, C)`, local analytic
diffeomorphism, bijective modulo the lattice onto `𝒦^*_{m,κ} = {C < Λ}`. -/
theorem delaunayMK_symplectic {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) : IsSymplecticOn 1 (delaunayMK m κ) deDom := sorry
theorem analyticOnNhd_delaunayMK {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) : AnalyticOnNhd ℝ (delaunayMK m κ) deDom := sorry
theorem delaunayMK_image {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) :
    delaunayMK m κ '' deDom = {z | z ∈ regionMK m κ ∧ planeCross z.1 z.2 < actionMK m κ z} := sorry
theorem delaunayMK_eq_iff {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w w' : Phase 2} (hw : w ∈ deDom)
    (hw' : w' ∈ deDom) : delaunayMK m κ w = delaunayMK m κ w' ↔
      ∃ k k' : ℤ, w'.1 = w.1 + ![2 * π * k, 2 * π * k'] ∧ w'.2 = w.2 := sorry
/-- C6 (`bpP:p7:kepler` (a), completing the B6 interface for the mass chart). -/
theorem delaunayMK_localDiffeo {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w : Phase 2} (hw : w ∈ deDom) :
    ∃ φ : OpenPartialHomeomorph (Phase 2) (Phase 2), w ∈ φ.source ∧
      (φ : Phase 2 → Phase 2) = delaunayMK m κ ∧ AnalyticOnNhd ℝ φ.symm φ.target := sorry
theorem delaunayMK_periodic {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w : Phase 2} (hw : w ∈ deDom) (k k' : ℤ) :
    delaunayMK m κ (w.1 + ![2 * π * k, 2 * π * k'], w.2) = delaunayMK m κ w := sorry
/-- `bpP:p7:kepler` (b), (d): identities and `E ∘ 𝖰 = h_m(Λ) = -κ²m³/(2Λ²)`. -/
theorem delaunayMK_identities {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w : Phase 2} (hw : w ∈ deDom) :
    energyMK m κ (delaunayMK m κ w) = -(κ ^ 2 * m ^ 3) / (2 * w.2 0 ^ 2) ∧
    planeCross (delaunayMK m κ w).1 (delaunayMK m κ w).2 = w.2 1 ∧
    actionMK m κ (delaunayMK m κ w) = w.2 0 ∧
    axisMK m κ (delaunayMK m κ w) = w.2 0 ^ 2 / (m ^ 2 * κ) ∧
    planeLength (delaunayMK m κ w).1 =
      (w.2 0 ^ 2 / (m ^ 2 * κ)) * (1 - eccOf (w.2 0) (w.2 1) * Real.cos (eccAnom (w.1 0) (eccOf (w.2 0) (w.2 1)))) := sorry
theorem delaunayMK_position {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w : Phase 2} (hw : w ∈ deDom) :
    (delaunayMK m κ w).1 =
      (w.2 0 ^ 2 / (m ^ 2 * κ)) • rot (w.1 1) ![Real.cos (eccAnom (w.1 0) (eccOf (w.2 0) (w.2 1))) - eccOf (w.2 0) (w.2 1),
        √(1 - eccOf (w.2 0) (w.2 1) ^ 2) * Real.sin (eccAnom (w.1 0) (eccOf (w.2 0) (w.2 1)))] := sorry
theorem hasDerivAt_keplerEnergy_action {m κ Λ : ℝ} (hm : 0 < m) (hκ : 0 < κ) (hΛ : 0 < Λ) :
    HasDerivAt (fun x => -(κ ^ 2 * m ^ 3) / (2 * x ^ 2)) (κ ^ 2 * m ^ 3 / Λ ^ 3) Λ := sorry
/-- `bpP:p7:kepler` (c), including the circular endpoint `C = Λ` (`e = 0`). -/
theorem delaunayMK_means {m κ g Λ e : ℝ} (hm : 0 < m) (hκ : 0 < κ) (hΛ : 0 < Λ) (he0 : 0 ≤ e) (he1 : e < 1) :
    let a := Λ ^ 2 / (m ^ 2 * κ)
    let f := fun ℓ => scaleMK m κ (orbitMapR ℓ g (Λ / m) e)
    (2 * π)⁻¹ * (∫ ℓ in (0 : ℝ)..2 * π, 1 / planeLength (f ℓ).1) = 1 / a ∧
    (2 * π)⁻¹ * (∫ ℓ in (0 : ℝ)..2 * π, planeSq (f ℓ).2) = m ^ 2 * κ / a ∧
    (2 * π)⁻¹ * (∫ ℓ in (0 : ℝ)..2 * π, planeLength (f ℓ).1) = a * (1 + e ^ 2 / 2) := sorry
/-- `bpI:p7:scaling`: the flow statement (`m = 1`), and the mass dictionary `H = m E_κ(q, p/m)`. -/
theorem energyMK_eq_mul_energy (m κ : ℝ) (hm : 0 < m) (z : Phase 2) :
    energyMK m κ z = m * energyMK 1 κ (z.1, m⁻¹ • z.2) := sorry
/-- `bpI:p7:scaling`, flow clause: if `Z` solves the strength-one Hamilton equations at `τ = κ² t`, then
`t ↦ 𝖲_κ(Z(κ² t))` solves those of `E_κ` (time change by `κ²`). -/
theorem scaleMK_flow {κ : ℝ} (hκ : 0 < κ) {Zc : ℝ → Phase 2} {t : ℝ}
    (hZ : HasDerivAt Zc (hamiltonianVectorField kE (Zc (κ ^ 2 * t))) (κ ^ 2 * t))
    (hE : DifferentiableAt ℝ kE (Zc (κ ^ 2 * t))) :
    HasDerivAt (fun s => scaleMK 1 κ (Zc (κ ^ 2 * s)))
      (hamiltonianVectorField (energyMK 1 κ) (scaleMK 1 κ (Zc (κ ^ 2 * t)))) t := sorry
theorem scaleMK_hamiltonianVectorField {κ : ℝ} (hκ : 0 < κ) {H : Phase 2 → ℝ} {z : Phase 2}
    (hH : DifferentiableAt ℝ H (scaleMK 1 κ z)) :
    (scaleMK 1 κ) (hamiltonianVectorField (H ∘ scaleMK 1 κ) z) = hamiltonianVectorField H (scaleMK 1 κ z) := sorry

end Delaunay

end KAM.Kepler

/-! ## D. Track I, Part 6: the Kepler-rotation Hamiltonian and the period-one conversion
(`KAM/Iso/KeplerHamiltonian.lean`, `KAM/Iso/Conversion.lean`) -/

namespace KAM.Iso

open KAM KAM.Kepler KAM.Planetary

section Part6

/-- `bpI:p6:kep-ham`: `h_{κ,Ω}(I) = -κ/(2 I₁²) - Ω I₂` on `ℂ²` (Lean division: junk at `I₁ = 0`). -/
def keplerRotH (κ Ω : ℝ) (I : Fin 2 → ℂ) : ℂ := -(κ : ℂ) / (2 * I 0 ^ 2) - Ω * I 1

/-- The reindexing `ε : Fin 3 ≃ Fin 2 ⊕ Unit`, `0, 1 ↦ inl 0, inl 1`, `2 ↦ inr`. -/
def finThreeEquivSumUnit : Fin 3 ≃ Fin 2 ⊕ Unit :=
  (finSumFinEquiv (m := 2) (n := 1)).symm.trans (Equiv.sumCongr (Equiv.refl _) (Equiv.ofUnique (Fin 1) Unit))

theorem differentiableOn_keplerRotH (κ Ω : ℝ) : DifferentiableOn ℂ (keplerRotH κ Ω) {I | I 0 ≠ 0} := sorry
theorem keplerRotH_real (κ Ω : ℝ) (J : Fin 2 → ℝ) :
    keplerRotH κ Ω (fun i => (J i : ℂ)) = ((-κ / (2 * J 0 ^ 2) - Ω * J 1 : ℝ) : ℂ) := sorry

/-- `bpI:p6:kep-border`: frequency map, its derivative, the bordered Hessian and its determinant. -/
theorem frequencyMap_keplerRotH (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : 0 < I 0) :
    frequencyMap (keplerRotH κ Ω) I = ![κ / I 0 ^ 3, -Ω] := sorry
theorem fderiv_frequencyMap_keplerRotH (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : 0 < I 0) (a b : Fin 2) :
    fderiv ℝ (frequencyMap (keplerRotH κ Ω)) I (Pi.single b 1) a =
      if a = 0 ∧ b = 0 then -3 * κ / I 0 ^ 4 else 0 := sorry
theorem borderedHessian_keplerRotH (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : 0 < I 0) :
    borderedHessian (keplerRotH κ Ω) I =
      Matrix.reindex finThreeEquivSumUnit finThreeEquivSumUnit (keplerBorder κ Ω ⟨I 0, hI⟩) := sorry
theorem det_borderedHessian_keplerRotH (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : 0 < I 0) :
    (borderedHessian (keplerRotH κ Ω) I).det = 3 * κ * Ω ^ 2 / I 0 ^ 4 := sorry

/-- `bpI:p6:conversion-map`: `𝖲(θ, I) = (2πθ, I/(2π))`, on real and complex phase space. -/
def periodOneMap {n : ℕ} (z : Phase n) : Phase n := ((2 * π) • z.1, (2 * π)⁻¹ • z.2)
def periodOneMapC {n : ℕ} (z : (Fin n → ℂ) × (Fin n → ℂ)) : (Fin n → ℂ) × (Fin n → ℂ) :=
  (((2 * π : ℝ) : ℂ) • z.1, (((2 * π)⁻¹ : ℝ) : ℂ) • z.2)

/-- `bpI:p6:conversion` (a). -/
theorem periodOneMap_symplectic (n : ℕ) : IsSymplecticOn 1 (periodOneMap (n := n)) univ := sorry
theorem periodOneMap_hamiltonianVectorField {n : ℕ} {H : Phase n → ℝ} {z : Phase n}
    (hH : DifferentiableAt ℝ H (periodOneMap z)) :
    periodOneMap (hamiltonianVectorField (H ∘ periodOneMap) z) = hamiltonianVectorField H (periodOneMap z) := sorry
theorem periodOneMap_hasDerivAt_iff {n : ℕ} {H : Phase n → ℝ} {w : ℝ → Phase n} {t : ℝ}
    (hH : DifferentiableAt ℝ H (periodOneMap (w t))) :
    HasDerivAt w (hamiltonianVectorField (H ∘ periodOneMap) (w t)) t ↔
      HasDerivAt (fun s => periodOneMap (w s)) (hamiltonianVectorField H (periodOneMap (w t))) t := sorry

/-- `bpI:p6:conversion` (b): holds for every `I` by Lean totality (at `I₀ = 0` both sides equal `-(Ω/(2π))·I₁`; erratum noted by the I-2 audit). -/
theorem keplerRotH_comp_div (κ Ω : ℝ) (I : Fin 2 → ℂ) :
    keplerRotH κ Ω (fun i => I i / ((2 * π : ℝ) : ℂ)) = keplerRotH (κ * (2 * π) ^ 2) (Ω / (2 * π)) I := sorry
/-- (c). -/
theorem frequencyMap_comp_div (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : 0 < I 0) :
    frequencyMap (fun J => keplerRotH κ Ω (fun i => J i / ((2 * π : ℝ) : ℂ))) I =
        ![κ * (2 * π) ^ 2 / I 0 ^ 3, -(Ω / (2 * π))] ∧
      frequencyMap (fun J => keplerRotH κ Ω (fun i => J i / ((2 * π : ℝ) : ℂ))) I =
        (2 * π)⁻¹ • frequencyMap (keplerRotH κ Ω) (fun i => I i / (2 * π)) := sorry
/-- (d). -/
theorem keplerBorder_conversion (κ Ω : ℝ) (L : {L : ℝ // 0 < L}) :
    keplerBorder (κ * (2 * π) ^ 2) (Ω / (2 * π)) ⟨2 * π * L.1, by have := L.2; positivity⟩ =
      Matrix.diagonal ![(2 * π)⁻¹, (2 * π)⁻¹, 1] * keplerBorder κ Ω L *
        Matrix.diagonal ![(2 * π)⁻¹, (2 * π)⁻¹, 1] := sorry
theorem borderedHessian_conversion (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : 0 < I 0) :
    borderedHessian (fun J => keplerRotH κ Ω (fun i => J i / ((2 * π : ℝ) : ℂ))) I =
      Matrix.reindex finThreeEquivSumUnit finThreeEquivSumUnit
        (keplerBorder (κ * (2 * π) ^ 2) (Ω / (2 * π)) ⟨I 0, hI⟩) ∧
    (borderedHessian (fun J => keplerRotH κ Ω (fun i => J i / ((2 * π : ℝ) : ℂ))) I).det =
      3 * κ * Ω ^ 2 / I 0 ^ 4 := sorry
/-- `bpI:p6:nondeg`: `h̃ = h_{(2π)², 1/(2π)}`; `B_{r₀}` is `actionNbhd B r₀`. -/
theorem nondeg_period_one (B : Set (Fin 2 → ℝ)) {r₀ : ℝ} (hr₀ : 0 < r₀)
    (hB : ∀ J ∈ B, 0 < J 0 ∧ 2 * r₀ ≤ J 0) :
    DifferentiableOn ℂ (keplerRotH ((2 * π) ^ 2) (1 / (2 * π))) (actionNbhd B r₀) ∧
    (∀ I ∈ actionNbhd B r₀, 0 < (I 0).re) ∧
    (∀ I : Fin 2 → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
      0 < I 0 ∧ 0 < (borderedHessian (keplerRotH ((2 * π) ^ 2) (1 / (2 * π))) I).det) := sorry

end Part6

/-! ## E. Track I, Part 7: the restricted problem in Delaunay variables
(`KAM/Iso/RestrictedHam.lean`, `NearCircular.lean`, `ShiftPotential.lean`, `ComplexDomain.lean`,
`ExactHamiltonian.lean`, `PeriodOne.lean`) -/

section Part7Ham

/-- The total (Lean) restricted Hamiltonian, equal to `restrictedHamiltonian` on collision-free points. -/
def restrictedHamTotal (μ : ℝ) (z : Phase 2) : ℝ :=
  radiusSq z.2 / 2 + z.1 1 * z.2 0 - z.1 0 * z.2 1 - (1 - μ) / radius (z.1 - primary₁ μ)
    - μ / radius (z.1 - primary₂ μ)

theorem restrictedHamiltonian_eq (μ : ℝ) (z : {z : Phase 2 // CollisionFree μ z}) :
    restrictedHamiltonian μ z = restrictedHamTotal μ z.1 := sorry
theorem isOpen_collisionFree (μ : ℝ) : IsOpen {z : Phase 2 | CollisionFree μ z} := sorry
/-- `bpI:p7:ham-eq`. -/
theorem analyticOnNhd_restrictedHamTotal (μ : ℝ) :
    AnalyticOnNhd ℝ (restrictedHamTotal μ) {z : Phase 2 | CollisionFree μ z} := sorry
theorem restrictedVectorField_eq_hamiltonian {μ : ℝ} {z : Phase 2} (hz : CollisionFree μ z) :
    restrictedVectorField μ ⟨z, hz⟩ = hamiltonianVectorField (restrictedHamTotal μ) z := sorry
theorem isRestrictedSolutionOn_iff (μ : ℝ) (J : Set ℝ) (z : ℝ → Phase 2) :
    IsRestrictedSolutionOn μ J z ↔
      (∀ t ∈ J, CollisionFree μ (z t)) ∧ IsHamiltonianSolutionOn (restrictedHamTotal μ) univ J z := sorry
/-- `bpI:p7:newton` (pointwise in time; not used by the frozen statements, lowest priority). -/
theorem restricted_newton_iff {μ t : ℝ} {x v : ℝ → Fin 2 → ℝ}
    (hcf : CollisionFree μ (rot (-t) (x t), rot (-t) (v t))) :
    (HasDerivAt x (v t) t ∧
      HasDerivAt v (-((1 - μ) / planeLength (x t - rot t (primary₁ μ)) ^ 3) • (x t - rot t (primary₁ μ))
        - (μ / planeLength (x t - rot t (primary₂ μ)) ^ 3) • (x t - rot t (primary₂ μ))) t) ↔
    HasDerivAt (fun s => (rot (-s) (x s), rot (-s) (v s)))
      (restrictedVectorField μ ⟨(rot (-t) (x t), rot (-t) (v t)), hcf⟩) t := sorry

/-- `bpI:p7:h0`, second clause: `Ham^R3_0 = E - Γ` (Lean totality, no hypothesis). -/
theorem restrictedHamTotal_zero (z : Phase 2) : restrictedHamTotal 0 z = kE z - planeCross z.1 z.2 := sorry

/-- The frozen witness conditions of `NearCircular`, with the witnesses explicit (C6: uniqueness clause). -/
def NearCircularWitness (aMinus aPlus eMinus ePlus : ℝ) (z : Phase 2) (r a e : ℝ) : Prop :=
  0 < r ∧ r ^ 2 = radiusSq z.1 ∧ 0 < a ∧ 0 < e ∧ e < 1 ∧ aMinus < a ∧ a < aPlus ∧ eMinus < e ∧ e < ePlus ∧
    radiusSq z.2 / 2 - 1 / r = -1 / (2 * a) ∧ 0 < z.1 0 * z.2 1 - z.1 1 * z.2 0 ∧
    (z.1 0 * z.2 1 - z.1 1 * z.2 0) ^ 2 = a * (1 - e ^ 2)
theorem nearCircular_witness_unique {aMinus aPlus eMinus ePlus : ℝ} {z : Phase 2} {r a e r' a' e' : ℝ}
    (h : NearCircularWitness aMinus aPlus eMinus ePlus z r a e)
    (h' : NearCircularWitness aMinus aPlus eMinus ePlus z r' a' e') :
    r = r' ∧ a = a' ∧ e = e' ∧ r = planeLength z.1 ∧ a = elemA z ∧ e = elemEcc z := sorry
/-- `bpI:p7:near-circular` (`NearCircular` is the frozen set). -/
theorem nearCircular_eq (aMinus aPlus eMinus ePlus : ℝ) :
    NearCircular aMinus aPlus eMinus ePlus =
      {z | z ∈ keplerRegion ∧ aMinus < elemA z ∧ elemA z < aPlus ∧ eMinus < elemEcc z ∧ elemEcc z < ePlus} := sorry
theorem nearCircular_eq_image (aMinus aPlus eMinus ePlus : ℝ) :
    NearCircular aMinus aPlus eMinus ePlus =
      delaunay '' {w | w ∈ deDom ∧ aMinus < w.2 0 ^ 2 ∧ w.2 0 ^ 2 < aPlus ∧
        eMinus < eccOf (w.2 0) (w.2 1) ∧ eccOf (w.2 0) (w.2 1) < ePlus} := sorry
theorem isOpen_nearCircular (aMinus aPlus eMinus ePlus : ℝ) : IsOpen (NearCircular aMinus aPlus eMinus ePlus) := sorry
theorem nearCircular_nonempty_iff (aMinus aPlus eMinus ePlus : ℝ) :
    (NearCircular aMinus aPlus eMinus ePlus).Nonempty ↔
      ∃ L G : ℝ, 0 < G ∧ G < L ∧ aMinus < L ^ 2 ∧ L ^ 2 < aPlus ∧ eMinus < eccOf L G ∧ eccOf L G < ePlus := sorry

end Part7Ham

section Part7Shift

/-- `ϑ(z) = z₀² + z₁²` on `ℂ²`. -/
def vtheta (z : Fin 2 → ℂ) : ℂ := z 0 ^ 2 + z 1 ^ 2
/-- The Euclidean length on `ℂ²`. -/
def clen (z : Fin 2 → ℂ) : ℝ := √(‖z 0‖ ^ 2 + ‖z 1‖ ^ 2)
/-- `𝐞 = (1, 0)` on `ℂ²`. -/
def e0 : Fin 2 → ℂ := ![1, 0]
/-- `w(q) = ϑ(q)^{-1/2}`, principal branch. -/
def shiftW (q : Fin 2 → ℂ) : ℂ := vtheta q ^ (-(1 / 2 : ℂ))
/-- `Ψ(q, μ) = (1-μ) ϑ(q + μ𝐞)^{-1/2} + μ ϑ(q - (1-μ)𝐞)^{-1/2}`. -/
def shiftPsi (q : Fin 2 → ℂ) (μ : ℂ) : ℂ :=
  (1 - μ) * vtheta (q + μ • e0) ^ (-(1 / 2 : ℂ)) + μ * vtheta (q - (1 - μ) • e0) ^ (-(1 / 2 : ℂ))
/-- `f(q, μ)` with `μ f = w - Ψ`: `-dslope (Ψ q) 0 μ` (value at `μ = 0` is `-∂_μΨ`). -/
def shiftF (q : Fin 2 → ℂ) (μ : ℂ) : ℂ := -dslope (shiftPsi q) 0 μ
/-- The domain `Ξ`. -/
def shiftXi : Set ((Fin 2 → ℂ) × ℂ) :=
  {x | 0 < (vtheta x.1).re ∧ 0 < (vtheta (x.1 + x.2 • e0)).re ∧ 0 < (vtheta (x.1 - (1 - x.2) • e0)).re}

/-- Typing data of `bpI:p7:shift`: `0 < r_min ≤ ρ_max < 1` and `ε₀` with the two smallness inequalities. -/
structure ShiftConst (rmin ρmax ε₀ : ℝ) : Prop where
  rmin_pos : 0 < rmin
  rmin_le : rmin ≤ ρmax
  rho_lt : ρmax < 1
  eps_pos : 0 < ε₀
  h₁ : ε₀ * (ε₀ + 2 * ρmax) < rmin ^ 2
  h₂ : ε₀ * (ε₀ + 4) < (1 - ρmax) ^ 2
/-- An explicit admissible `ε₀` (no choice). -/
def shiftEps (rmin ρmax : ℝ) : ℝ := min (rmin ^ 2) ((1 - ρmax) ^ 2) / 16
def shiftCstar (rmin ρmax ε₀ : ℝ) : ℝ := min (rmin ^ 2 - ε₀ * (ε₀ + 2 * ρmax)) ((1 - ρmax) ^ 2 - ε₀ * (ε₀ + 4))
def shiftCsh (rmin ρmax ε₀ : ℝ) : ℝ := 6 / (ε₀ * √(shiftCstar rmin ρmax ε₀))
/-- `𝒪`: complex points within `ε₀/2` of the real shell `r_min ≤ |q'| ≤ ρ_max`. -/
def shiftO (rmin ρmax ε₀ : ℝ) : Set (Fin 2 → ℂ) :=
  {q | ∃ q' : Fin 2 → ℝ, rmin ≤ planeLength q' ∧ planeLength q' ≤ ρmax ∧ clen (q - fun i => (q' i : ℂ)) < ε₀ / 2}

theorem shiftConst_shiftEps {rmin ρmax : ℝ} (h0 : 0 < rmin) (h1 : rmin ≤ ρmax) (h2 : ρmax < 1) :
    ShiftConst rmin ρmax (shiftEps rmin ρmax) := sorry
/-- `bpI:p7:shift`: the numerators, `𝒪 × D̄(0, ε₀/2) ⊆ Ξ`, `Re ϑ ≥ c_*`, `|ϑ^{-1/2}| ≤ c_*^{-1/2}`. -/
theorem shiftF_eq_integral {rmin ρmax ε₀ : ℝ} (h : ShiftConst rmin ρmax ε₀) {q : Fin 2 → ℂ}
    (hq : q ∈ shiftO rmin ρmax ε₀) {μ : ℂ} (hμ : ‖μ‖ < ε₀ / 2) :
    shiftF q μ = -∫ t in (0 : ℝ)..1, deriv (shiftPsi q) ((t : ℂ) * μ) := sorry
theorem shift_domain {rmin ρmax ε₀ : ℝ} (h : ShiftConst rmin ρmax ε₀) {q : Fin 2 → ℂ}
    (hq : q ∈ shiftO rmin ρmax ε₀) {μ : ℂ} (hμ : ‖μ‖ ≤ ε₀ / 2) :
    (q, μ) ∈ shiftXi ∧ shiftCstar rmin ρmax ε₀ ≤ (vtheta q).re ∧
      shiftCstar rmin ρmax ε₀ ≤ (vtheta (q + μ • e0)).re ∧
      shiftCstar rmin ρmax ε₀ ≤ (vtheta (q - (1 - μ) • e0)).re ∧ 0 < shiftCstar rmin ρmax ε₀ := sorry
theorem shift_holomorphic {rmin ρmax ε₀ : ℝ} (h : ShiftConst rmin ρmax ε₀) :
    DifferentiableOn ℂ (fun x : (Fin 2 → ℂ) × ℂ => shiftF x.1 x.2)
      (shiftO rmin ρmax ε₀ ×ˢ ball (0 : ℂ) (ε₀ / 2)) := sorry
theorem shift_mul_eq {rmin ρmax ε₀ : ℝ} (h : ShiftConst rmin ρmax ε₀) {q : Fin 2 → ℂ}
    (hq : q ∈ shiftO rmin ρmax ε₀) {μ : ℂ} (hμ : ‖μ‖ < ε₀ / 2) :
    μ * shiftF q μ = shiftW q - shiftPsi q μ := sorry
theorem shift_bound {rmin ρmax ε₀ : ℝ} (h : ShiftConst rmin ρmax ε₀) {q : Fin 2 → ℂ}
    (hq : q ∈ shiftO rmin ρmax ε₀) {μ : ℂ} (hμ : ‖μ‖ < ε₀ / 2) :
    ‖shiftF q μ‖ ≤ shiftCsh rmin ρmax ε₀ := sorry
theorem shift_value_zero {q : Fin 2 → ℂ} (hq : (q, (0 : ℂ)) ∈ shiftXi) :
    shiftF q 0 = shiftW q + q 0 * vtheta q ^ (-(3 / 2 : ℂ)) - vtheta (q - e0) ^ (-(1 / 2 : ℂ)) := sorry
/-- Real points: `(q, μ)` collision free and `f` real; `Ψ` is the frozen potential. -/
theorem shift_real {rmin ρmax ε₀ : ℝ} (h : ShiftConst rmin ρmax ε₀) {q : Fin 2 → ℝ}
    (hq : (fun i => (q i : ℂ)) ∈ shiftO rmin ρmax ε₀) {μ : ℝ} (hμ : |μ| < ε₀ / 2) (p : Fin 2 → ℝ) :
    CollisionFree μ (q, p) ∧
      shiftW (fun i => (q i : ℂ)) = ((1 / planeLength q : ℝ) : ℂ) ∧
      shiftPsi (fun i => (q i : ℂ)) μ =
        (((1 - μ) / radius (q - primary₁ μ) + μ / radius (q - primary₂ μ) : ℝ) : ℂ) ∧
      (shiftF (fun i => (q i : ℂ)) μ).im = 0 := sorry

end Part7Shift

section Part7Exact

/-- Standing data of `bpI:p7:sec-complex`: a safe action region (`(L, G) = (x 0, x 1)`). -/
structure SafeAction (K : Set (Fin 2 → ℝ)) : Prop where
  isCompact : IsCompact K
  nonempty : K.Nonempty
  sub_cone : ∀ x ∈ K, 0 < x 1 ∧ x 1 < x 0

def kEccMin (K : Set (Fin 2 → ℝ)) : ℝ := sInf ((fun x => eccOf (x 0) (x 1)) '' K)
def kEccMax (K : Set (Fin 2 → ℝ)) : ℝ := sSup ((fun x => eccOf (x 0) (x 1)) '' K)
def kLMin (K : Set (Fin 2 → ℝ)) : ℝ := sInf ((fun x => x 0) '' K)
def kGMin (K : Set (Fin 2 → ℝ)) : ℝ := sInf ((fun x => x 1) '' K)
def kRmin (K : Set (Fin 2 → ℝ)) : ℝ := sInf ((fun x => x 0 ^ 2 * (1 - eccOf (x 0) (x 1))) '' K)
def kRhoMax (K : Set (Fin 2 → ℝ)) : ℝ := sSup ((fun x => x 0 ^ 2 * (1 + eccOf (x 0) (x 1))) '' K)

theorem SafeAction.ecc_bounds {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) :
    0 < kEccMin K ∧ kEccMax K < 1 ∧ 0 < kLMin K ∧ 0 < kGMin K ∧ 0 < kRmin K ∧ kRmin K ≤ kRhoMax K := sorry

/-- `eccC(L, G) = (1 - G²/L²)^{1/2}` (principal branch). -/
def eccC (L G : ℂ) : ℂ := (1 - G ^ 2 / L ^ 2) ^ (1 / 2 : ℂ)
/-- `𝒰(δ)`: `|Im ℓ|, |Im g| < δ`, `(L, G) ∈ 𝒦_δ`; `w = ((ℓ, g), (L, G))`. -/
def UDelta (K : Set (Fin 2 → ℝ)) (δ : ℝ) : Set ((Fin 2 → ℂ) × (Fin 2 → ℂ)) :=
  {w | (∀ i, |(w.1 i).im| < δ) ∧ w.2 ∈ actionNbhd K δ}
/-- The complex Delaunay map `𝖰 = 𝖰_el(ℓ, g, L, e(L, G), G/L)`. -/
def delaunayC (K : Set (Fin 2 → ℝ)) (w : (Fin 2 → ℂ) × (Fin 2 → ℂ)) : (Fin 2 → ℂ) × (Fin 2 → ℂ) :=
  orbitMapC (kEccMax K) ![w.1 0, w.1 1, w.2 0, eccC (w.2 0) (w.2 1), w.2 1 / w.2 0]

/-- The full output of `bpI:p7:complex-domain` at a given `δ₁` (exact factorization of the earlier statement). -/
def ComplexDomainData (K : Set (Fin 2 → ℝ)) (δ₁ : ℝ) : Prop :=
  0 < δ₁ ∧ δ₁ ≤ min (keplerDeltaK (kEccMax K)) (min (kLMin K) (kGMin K)) / 2 ∧
    (∀ x ∈ actionNbhd K δ₁, x 0 ≠ 0 ∧ kLMin K / 2 < (x 0).re) ∧
    DifferentiableOn ℂ (fun x : Fin 2 → ℂ => eccC (x 0) (x 1)) (actionNbhd K δ₁) ∧
    (∀ x ∈ actionNbhd K δ₁, ∀ y ∈ K, ‖x - fun i => (y i : ℂ)‖ < δ₁ →
      ‖eccC (x 0) (x 1) - (eccOf (y 0) (y 1) : ℝ)‖ < keplerDeltaE (kEccMax K) ∧
      ‖eccC (x 0) (x 1)‖ < keplerE2 (kEccMax K)) ∧
    (∀ y : Fin 2 → ℝ, (fun i => (y i : ℂ)) ∈ actionNbhd K δ₁ → 0 < y 1 ∧ y 1 < y 0 ∧
      eccC (y 0) (y 1) = (eccOf (y 0) (y 1) : ℝ)) ∧
    (∀ w ∈ UDelta K δ₁, ![w.1 0, w.1 1, w.2 0, eccC (w.2 0) (w.2 1), w.2 1 / w.2 0] ∈ orbitDomC (kEccMax K)) ∧
    DifferentiableOn ℂ (delaunayC K) (UDelta K δ₁) ∧
    (∀ w : Phase 2, phaseToC w ∈ UDelta K δ₁ → delaunayC K (phaseToC w) = phaseToC (delaunay w))

open scoped Classical in
/-- The selected `δ₁` (F3). -/
def complexDelta (K : Set (Fin 2 → ℝ)) : ℝ := if h : ∃ δ₁ : ℝ, ComplexDomainData K δ₁ then h.choose else 0

/-- `bpI:p7:complex-domain` (the quantifier "nearest `(L', G')`" is replaced by "every `(L', G') ∈ K` within
`δ₁`", see B1): the selected `δ₁` is admissible. -/
theorem complex_domain_spec {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) : ComplexDomainData K (complexDelta K) := sorry

/-- The exact perturbation `F_μ(w) = f(q(w), μ)` (`bpI:p7:exact-ham`). -/
def exactF (K : Set (Fin 2 → ℝ)) (w : (Fin 2 → ℂ) × (Fin 2 → ℂ)) (μ : ℂ) : ℂ :=
  shiftF (delaunayC K w).1 μ
def exactEps (K : Set (Fin 2 → ℝ)) : ℝ := shiftEps (kRmin K) (kRhoMax K)
def exactMu2 (K : Set (Fin 2 → ℝ)) : ℝ := exactEps K / 2
def exactCF (K : Set (Fin 2 → ℝ)) : ℝ := shiftCsh (kRmin K) (kRhoMax K) (exactEps K)

/-- The clauses (i)-(iv) of `bpI:p7:exact-ham` at a given `δ₂`. -/
def ExactHamData (K : Set (Fin 2 → ℝ)) (δ₂ : ℝ) : Prop :=
  DifferentiableOn ℂ (fun x : ((Fin 2 → ℂ) × (Fin 2 → ℂ)) × ℂ => exactF K x.1 x.2)
      (UDelta K δ₂ ×ˢ ball (0 : ℂ) (exactMu2 K)) ∧
  (∀ w ∈ UDelta K δ₂, ∀ μ : ℂ, ‖μ‖ < exactMu2 K → ‖exactF K w μ‖ ≤ exactCF K) ∧
  (∀ w ∈ UDelta K δ₂, ∀ μ : ℂ, exactF K (Function.update w.1 0 (w.1 0 + 2 * π), w.2) μ = exactF K w μ ∧
      exactF K (Function.update w.1 1 (w.1 1 + 2 * π), w.2) μ = exactF K w μ) ∧
  (∀ w : Phase 2, phaseToC w ∈ UDelta K δ₂ → ∀ μ : ℝ, |μ| < exactMu2 K →
      (exactF K (phaseToC w) μ).im = 0) ∧
  (∀ w : Phase 2, phaseToC w ∈ UDelta K δ₂ → ∀ μ : ℝ, |μ| < exactMu2 K →
      0 < w.2 1 ∧ w.2 1 < w.2 0 ∧ ∃ hcf : CollisionFree μ (delaunay w),
        restrictedHamiltonian μ ⟨delaunay w, hcf⟩ =
          -1 / (2 * w.2 0 ^ 2) - w.2 1 + μ * (exactF K (phaseToC w) μ).re) ∧
  (∀ w : Phase 2, w.2 ∈ K → phaseToC w ∈ UDelta K δ₂)

/-- The full admissibility predicate of the exact radius (audit 2, R2-1): positivity, subordination to the selected
complex-domain radius, the clauses (i)-(iv), AND the geometric control that the complex Delaunay positions lie in the
shift neighbourhood. It is a result predicate (used in a choice and in theorem conclusions), never a premise. -/
def ExactRadiusData (K : Set (Fin 2 → ℝ)) (δ : ℝ) : Prop :=
  0 < δ ∧ δ ≤ complexDelta K ∧ ExactHamData K δ ∧
    ∀ w ∈ UDelta K δ, (delaunayC K w).1 ∈ shiftO (kRmin K) (kRhoMax K) (exactEps K)

open scoped Classical in
/-- The radius `δ₂` of `bpI:p7:exact-ham`, chosen once from `ExactRadiusData`. -/
def exactDelta (K : Set (Fin 2 → ℝ)) : ℝ :=
  if h : ∃ δ : ℝ, ExactRadiusData K δ then h.choose else 0

/-- Existence (the source construction `stepI:p7:eh-delta`, by uniform continuity on a compact period) gives the
full specification of the SELECTED radius. -/
theorem exact_radius_spec {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) (hρ : kRhoMax K < 1) :
    ExactRadiusData K (exactDelta K) := sorry

/-- `bpI:p7:exact-ham`, assuming `ρ_max < 1` (the frozen `aPlus(1 + ePlus) < 1`): a projection of `exact_radius_spec`. -/
theorem exact_ham {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) (hρ : kRhoMax K < 1) :
    0 < exactDelta K ∧ exactDelta K ≤ complexDelta K ∧ ExactHamData K (exactDelta K) := sorry
/-- F3: a projection of `exact_radius_spec`; justified because the property is part of the choice predicate. -/
theorem exact_positions_mem_shiftO {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) (hρ : kRhoMax K < 1) :
    ∀ w ∈ UDelta K (exactDelta K), (delaunayC K w).1 ∈ shiftO (kRmin K) (kRhoMax K) (exactEps K) := sorry

end Part7Exact

section Part7PeriodOne

/-- `f̃_μ(θ, I) = μ F_μ(𝖲(θ, I))`. -/
def tildeF (K : Set (Fin 2 → ℝ)) (μ : ℝ) (z : (Fin 2 → ℂ) × (Fin 2 → ℂ)) : ℂ :=
  μ * exactF K (periodOneMapC z) μ

/-- `bpI:p7:period-one` (d), last clause: `𝖰 ∘ 𝖲` is symplectic (`bpI:p7:symplectic` and `bpI:p6:conversion` (a)). -/
theorem delaunay_periodOne_symplectic :
    IsSymplecticOn 1 (fun z : Phase 2 => delaunay (periodOneMap z)) {z | periodOneMap z ∈ deDom} := sorry

/-- `bpI:p7:period-one`: `s₀ = δ₂/(2π)`, `r₀ = 2πδ₂`, `B ⊆ 2π𝒦`; the data of I-HEAD. -/
theorem period_one {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) (hρ : kRhoMax K < 1)
    {B : Set (Fin 2 → ℝ)} (hB : ∀ I ∈ B, (fun i => I i / (2 * π)) ∈ K) :
    let s₀ := exactDelta K / (2 * π)
    let r₀ := 2 * π * exactDelta K
    0 < s₀ ∧ 0 < r₀ ∧
    (∀ z ∈ complexStrip 2 s₀ ×ˢ actionNbhd B r₀, periodOneMapC z ∈ UDelta K (exactDelta K)) ∧
    (DifferentiableOn ℂ (keplerRotH ((2 * π) ^ 2) (1 / (2 * π))) (actionNbhd B r₀) ∧
      ∀ I ∈ actionNbhd B r₀, π * kLMin K < (I 0).re) ∧
    (∀ μ : ℝ, |μ| < exactMu2 K →
      DifferentiableOn ℂ (tildeF K μ) (complexStrip 2 s₀ ×ˢ actionNbhd B r₀) ∧
      (∀ z ∈ complexStrip 2 s₀ ×ˢ actionNbhd B r₀, ‖tildeF K μ z‖ ≤ |μ| * exactCF K) ∧
      (∀ z ∈ complexStrip 2 s₀ ×ˢ actionNbhd B r₀, ∀ k : Fin 2 → ℤ,
        tildeF K μ (z.1 + fun i => (k i : ℂ), z.2) = tildeF K μ z)) ∧
    (∀ μ : ℝ, |μ| < exactMu2 K → ∀ z : Phase 2,
      (fun i => (z.1 i : ℂ), fun i => (z.2 i : ℂ)) ∈ complexStrip 2 s₀ ×ˢ actionNbhd B r₀ →
      (tildeF K μ (phaseToC z)).im = 0 ∧
      ∃ hcf : CollisionFree μ (delaunay (periodOneMap z)),
        restrictedHamiltonian μ ⟨delaunay (periodOneMap z), hcf⟩ =
          realHamiltonian (keplerRotH ((2 * π) ^ 2) (1 / (2 * π))) (tildeF K μ) z) := sorry

/-- `bpI:p7:transfer`: transfer of Delaunay solutions to the restricted problem and the radius interval
(the exact radius, elements and energy identities are `transfer_identities` below). -/
theorem transfer {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) (hρ : kRhoMax K < 1)
    {B : Set (Fin 2 → ℝ)} (hB : ∀ I ∈ B, (fun i => I i / (2 * π)) ∈ K) {μ : ℝ} (hμ : |μ| < exactMu2 K)
    {J : Set ℝ} {zt : ℝ → Phase 2}
    (hz : IsHamiltonianSolutionOn
      (realHamiltonian (keplerRotH ((2 * π) ^ 2) (1 / (2 * π))) (tildeF K μ)) B J zt) :
    IsRestrictedSolutionOn μ J (fun t => delaunay (periodOneMap (zt t))) ∧
    ∀ t ∈ J, planeLength (delaunay (periodOneMap (zt t))).1 ∈
      Icc ((zt t).2 0 ^ 2 / (2 * π) ^ 2 * (1 - eccOf ((zt t).2 0 / (2 * π)) ((zt t).2 1 / (2 * π))))
        ((zt t).2 0 ^ 2 / (2 * π) ^ 2 * (1 + eccOf ((zt t).2 0 / (2 * π)) ((zt t).2 1 / (2 * π)))) := sorry

/-- F4: the remaining outputs of `bpI:p7:transfer`: exact radius, recovery of the elements, and the physical energy
equal to `realHamiltonian` along the orbit. -/
theorem transfer_identities {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) (hρ : kRhoMax K < 1)
    {B : Set (Fin 2 → ℝ)} (hB : ∀ I ∈ B, (fun i => I i / (2 * π)) ∈ K) {μ : ℝ} (hμ : |μ| < exactMu2 K)
    {J : Set ℝ} {zt : ℝ → Phase 2}
    (hz : IsHamiltonianSolutionOn
      (realHamiltonian (keplerRotH ((2 * π) ^ 2) (1 / (2 * π))) (tildeF K μ)) B J zt) :
    ∀ t ∈ J,
      let w := periodOneMap (zt t)
      let z := delaunay w
      planeLength z.1 = w.2 0 ^ 2 * (1 - eccOf (w.2 0) (w.2 1) * Real.cos (eccAnom (w.1 0) (eccOf (w.2 0) (w.2 1)))) ∧
      elemL z = w.2 0 ∧ planeCross z.1 z.2 = w.2 1 ∧ elemA z = w.2 0 ^ 2 ∧ elemEcc z = eccOf (w.2 0) (w.2 1) ∧
      ∃ hcf : CollisionFree μ z, restrictedHamiltonian μ ⟨z, hcf⟩ =
        realHamiltonian (keplerRotH ((2 * π) ^ 2) (1 / (2 * π))) (tildeF K μ) (zt t) := sorry

/-- `bpI:p7:nondeg`. -/
theorem nondeg_exact {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) (hρ : kRhoMax K < 1)
    {B : Set (Fin 2 → ℝ)} (hB : ∀ I ∈ B, (fun i => I i / (2 * π)) ∈ K) :
    ∀ I : Fin 2 → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B (2 * π * exactDelta K) →
      0 < I 0 ∧ (borderedHessian (keplerRotH ((2 * π) ^ 2) (1 / (2 * π))) I).det = 3 / I 0 ^ 4 := sorry

end Part7PeriodOne

end KAM.Iso
```

### A.2 `.drafts/design/KeplerSignaturesP.lean`

```lean
/-
Continuation of `KeplerSignatures.lean` (sections F-G: Newtonian models and Poincare charts).
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. Released under Apache 2.0.

NOT a standalone module: it uses the declarations of `KeplerSignatures.lean` (namespaces `KAM.Kepler`, `KAM.Iso`)
and the frozen `FastShift`. Check by concatenation (one Lean process, see `check_kepler.sh`):
  { cat KeplerSignatures.lean; echo 'public import placeholder' | true; sed -n '/^-- BEGIN-P/,$p' KeplerSignaturesP.lean; } > combined.lean
Every body is `sorry`; no `set_option`, no `maxHeartbeats`.
-/
-- BEGIN-P
-- (F1) frozen lattice shift, used below as `fastShift (a := n) (b := n) k`:
-- the single extra import line of the combined file is `public import KAM.Frozen.Planetary.Defs.FastShift`.
/-! ## F. Track P, Part 6: Newtonian models, barycentric reduction, reconstruction, tube geometry
(`KAM/Planetary/Newtonian/Models.lean`, `Reduction.lean`, `Barycentric.lean`, `Reconstruction.lean`,
`Tube.lean`, `Assembly.lean`) -/

namespace KAM.Planetary

open KAM KAM.Kepler

section Models

variable {n : ℕ}

/-- `W`: collision-free phase points. -/
def collisionFreeDomain (n : ℕ) : Set (Phase (n * 2)) := {z | NoCollision z.1}

/-- Body-wise assembly of a coordinate vector (inverse of `bodyVector`). -/
def ofBodies {N : ℕ} (Q : Fin N → Fin 2 → ℝ) : Fin (N * 2) → ℝ :=
  fun k => Q (finProdFinEquiv.symm k).1 (finProdFinEquiv.symm k).2
theorem bodyVector_ofBodies {N : ℕ} (Q : Fin N → Fin 2 → ℝ) (i : Fin N) : bodyVector (ofBodies Q) i = Q i := sorry
theorem ofBodies_bodyVector {N : ℕ} (q : Fin (N * 2) → ℝ) : ofBodies (fun i => bodyVector q i) = q := sorry

/-- `bpP:p6:domain`: `W` is open; both Hamiltonians are real analytic on `W` (the blueprint states `C^∞`;
analyticity is what `bpP:p7:product-chart` cites, so it is part of this node). -/
theorem isOpen_collisionFreeDomain (n : ℕ) : IsOpen (collisionFreeDomain n) := sorry
theorem analyticOnNhd_movingHamiltonian (G m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) :
    AnalyticOnNhd ℝ (movingHamiltonian G m0 m μ) (collisionFreeDomain n) := sorry
theorem analyticOnNhd_fixedHamiltonian (G m0 : ℝ) (m : Fin n → ℝ) (ε : ℝ) :
    AnalyticOnNhd ℝ (fixedHamiltonian G m0 m ε) (collisionFreeDomain n) := sorry
theorem differentiableAt_movingHamiltonian (G m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) {z : Phase (n * 2)}
    (hz : NoCollision z.1) : DifferentiableAt ℝ (movingHamiltonian G m0 m μ) z := sorry
theorem differentiableAt_fixedHamiltonian (G m0 : ℝ) (m : Fin n → ℝ) (ε : ℝ) {z : Phase (n * 2)}
    (hz : NoCollision z.1) : DifferentiableAt ℝ (fixedHamiltonian G m0 m ε) z := sorry

/-- `H_Kep = Σ_i E_{m_i,κ}(q_i, p_i)` and the two coupling terms of `bpP:p6:split`. -/
def keplerPart (κ : ℝ) (m : Fin n → ℝ) (z : Phase (n * 2)) : ℝ :=
  ∑ i, (planeSq (bodyVector z.2 i) / (2 * m i) - κ * m i / planeLength (bodyVector z.1 i))
def pairPotential (G : ℝ) (m : Fin n → ℝ) (q : Fin (n * 2) → ℝ) : ℝ :=
  ∑ i, ∑ j ∈ Finset.univ.filter (fun j => i < j), G * m i * m j / planeLength (bodyVector q i - bodyVector q j)
def fMov (G m0 : ℝ) (m : Fin n → ℝ) (z : Phase (n * 2)) : ℝ :=
  planeSq (∑ i, bodyVector z.2 i) / (2 * m0) - pairPotential G m z.1
def fFix (G : ℝ) (m : Fin n → ℝ) (z : Phase (n * 2)) : ℝ := -pairPotential G m z.1

theorem keplerPart_eq_sum (κ : ℝ) (m : Fin n → ℝ) (z : Phase (n * 2)) :
    keplerPart κ m z = ∑ i, energyMK (m i) κ (bodyVector z.1 i, bodyVector z.2 i) := sorry
/-- `bpP:p6:split`, as total identities (no collision hypothesis). -/
theorem movingHamiltonian_split (G m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (z : Phase (n * 2)) :
    movingHamiltonian G m0 m μ z = keplerPart (G * m0) m z + μ * fMov G m0 m z := sorry
theorem fixedHamiltonian_split (G m0 : ℝ) (m : Fin n → ℝ) (ε : ℝ) (z : Phase (n * 2)) :
    fixedHamiltonian G m0 m ε z = keplerPart (G * m0) m z + ε * fFix G m z := sorry
theorem moving_sub_fixed (G m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (z : Phase (n * 2)) :
    movingHamiltonian G m0 m μ z - fixedHamiltonian G m0 m μ z = μ * (planeSq (∑ i, bodyVector z.2 i) / (2 * m0)) := sorry
theorem analyticOnNhd_fMov (G m0 : ℝ) (m : Fin n → ℝ) : AnalyticOnNhd ℝ (fMov G m0 m) (collisionFreeDomain n) := sorry
theorem analyticOnNhd_fFix (G : ℝ) (m : Fin n → ℝ) : AnalyticOnNhd ℝ (fFix G m) (collisionFreeDomain n) := sorry

/-- Force kernels `g_i`, `f_i` of `bpP:p6:conv` (bodies as a family of plane vectors). -/
def gKernel (q : Fin n → Fin 2 → ℝ) (i : Fin n) : Fin 2 → ℝ := ((planeLength (q i)) ^ 3)⁻¹ • q i
def fKernel (m : Fin n → ℝ) (q : Fin n → Fin 2 → ℝ) (i : Fin n) : Fin 2 → ℝ :=
  ∑ j ∈ Finset.univ.filter (fun j => j ≠ i), (m j / planeLength (q j - q i) ^ 3) • (q j - q i)

/-- `bpP:p6:action-reaction`; no collision hypothesis is needed (`ℓ` is even). -/
theorem sum_mass_smul_fKernel (m : Fin n → ℝ) (q : Fin n → Fin 2 → ℝ) : ∑ i, m i • fKernel m q i = 0 := sorry

/-- `bpP:p6:hamilton-eqs`: the Hamilton fields in the body blocks (index `finProdFinEquiv (i, c)`). -/
theorem hamiltonianVectorField_moving (G m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) {z : Phase (n * 2)}
    (hz : NoCollision z.1) (i : Fin n) (c : Fin 2) :
    (hamiltonianVectorField (movingHamiltonian G m0 m μ) z).1 (finProdFinEquiv (i, c)) =
        bodyVector z.2 i c / m i + μ / m0 * ∑ j, bodyVector z.2 j c ∧
      (hamiltonianVectorField (movingHamiltonian G m0 m μ) z).2 (finProdFinEquiv (i, c)) =
        (-(G * m0 * m i) • gKernel (fun j => bodyVector z.1 j) i
          + (μ * G * m i) • fKernel m (fun j => bodyVector z.1 j) i) c := sorry
theorem hamiltonianVectorField_fixed (G m0 : ℝ) (m : Fin n → ℝ) (ε : ℝ) {z : Phase (n * 2)}
    (hz : NoCollision z.1) (i : Fin n) (c : Fin 2) :
    (hamiltonianVectorField (fixedHamiltonian G m0 m ε) z).1 (finProdFinEquiv (i, c)) =
        bodyVector z.2 i c / m i ∧
      (hamiltonianVectorField (fixedHamiltonian G m0 m ε) z).2 (finProdFinEquiv (i, c)) =
        (-(G * m0 * m i) • gKernel (fun j => bodyVector z.1 j) i
          + (ε * G * m i) • fKernel m (fun j => bodyVector z.1 j) i) c := sorry
/-- Curve statement: a `HasDerivAt` into `Phase (n*2)` is a family of `HasDerivAt` of the body vectors. -/
theorem hasDerivAt_bodyVector {z : ℝ → Phase (n * 2)} {v : Phase (n * 2)} {t : ℝ}
    (h : HasDerivAt z v t) (i : Fin n) :
    HasDerivAt (fun s => bodyVector (z s).1 i) (bodyVector v.1 i) t ∧
      HasDerivAt (fun s => bodyVector (z s).2 i) (bodyVector v.2 i) t := sorry

end Models

section Reduction

/-- `bpP:p6:nbody`: the `(N)`-body Hamiltonian `F_μ` for the mass array `M` (`N = n + 1`, `M = actualMasses`). -/
def nbodyHamiltonian {N : ℕ} (G : ℝ) (M : Fin N → ℝ) (z : Phase (N * 2)) : ℝ :=
  (∑ k, planeSq (bodyVector z.2 k) / (2 * M k)) -
    G * ∑ k, ∑ l ∈ Finset.univ.filter (fun l => k < l),
      M k * M l / planeLength (bodyVector z.1 k - bodyVector z.1 l)

/-- `Θ(X, Y) = (Q₀, q, P₀, P)`: `Q₀ = X₀`, `q_i = X_i - X₀`, `P₀ = Σ Y_k`, `P_i = Y_i` (body `0` is the Sun). -/
def helioMap {n : ℕ} (z : Phase ((n + 1) * 2)) : Phase ((n + 1) * 2) :=
  (ofBodies (Fin.cons (bodyVector z.1 0) (fun (i : Fin n) => bodyVector z.1 i.succ - bodyVector z.1 0)),
   ofBodies (Fin.cons (∑ k, bodyVector z.2 k) (fun (i : Fin n) => bodyVector z.2 i.succ)))
def helioInv {n : ℕ} (w : Phase ((n + 1) * 2)) : Phase ((n + 1) * 2) :=
  (ofBodies (Fin.cons (bodyVector w.1 0) (fun (i : Fin n) => bodyVector w.1 i.succ + bodyVector w.1 0)),
   ofBodies (Fin.cons (bodyVector w.2 0 - ∑ i : Fin n, bodyVector w.2 i.succ) (fun (i : Fin n) => bodyVector w.2 i.succ)))

/-- `bpP:p6:reduction` (a). -/
theorem helioMap_helioInv {n : ℕ} (w : Phase ((n + 1) * 2)) : helioMap (helioInv w) = w := sorry
theorem helioInv_helioMap {n : ℕ} (z : Phase ((n + 1) * 2)) : helioInv (helioMap z) = z := sorry
theorem helioMap_symplectic (n : ℕ) : IsSymplecticOn 1 (helioMap (n := n)) univ := sorry
theorem helioMap_pairing {n : ℕ} (z : Phase ((n + 1) * 2)) :
    ∑ k, planeDot (bodyVector z.1 k) (bodyVector z.2 k) =
      planeDot (bodyVector (helioMap z).1 0) (bodyVector (helioMap z).2 0) +
        ∑ i : Fin n, planeDot (bodyVector (helioMap z).1 i.succ) (bodyVector (helioMap z).2 i.succ) := sorry
/-- (b): `F_μ` in the heliocentric coordinates; independent of `Q₀`. -/
theorem nbodyHamiltonian_helio {n : ℕ} (G m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (z : Phase ((n + 1) * 2)) :
    nbodyHamiltonian G (actualMasses m0 m μ) z =
      planeSq (bodyVector (helioMap z).2 0 - ∑ i : Fin n, bodyVector (helioMap z).2 i.succ) / (2 * m0)
        + ∑ i, planeSq (bodyVector (helioMap z).2 i.succ) / (2 * (μ * m i))
        - G * μ * ∑ i, m0 * m i / planeLength (bodyVector (helioMap z).1 i.succ)
        - G * μ ^ 2 * ∑ i, ∑ j ∈ Finset.univ.filter (fun j => i < j),
            m i * m j / planeLength (bodyVector (helioMap z).1 i.succ - bodyVector (helioMap z).1 j.succ) := sorry
theorem nbodyHamiltonian_helio_zero_momentum {n : ℕ} (G m0 : ℝ) (m : Fin n → ℝ) {μ : ℝ} (hμ : μ ≠ 0)
    (hm0 : m0 ≠ 0) (hm : ∀ i, m i ≠ 0) (x0 : Fin 2 → ℝ) (q p : Fin (n * 2) → ℝ) :
    nbodyHamiltonian G (actualMasses m0 m μ)
      (helioInv (ofBodies (Fin.cons x0 (fun i => bodyVector q i)),
        ofBodies (Fin.cons (0 : Fin 2 → ℝ) (fun i => μ • bodyVector p i)))) =
      μ * movingHamiltonian G m0 m μ (q, p) := sorry
/-- (c): Newton solutions with zero total momentum are `H_mov`-solutions (`p_i = m_i V_i`). For `G = m₀ = 1`
the conclusion is `IsMovingSolutionOn m μ J z`. -/
theorem newton_to_moving {n : ℕ} {G m0 μ : ℝ} {m : Fin n → ℝ} (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i)
    (hμ : 0 < μ) {J : Set ℝ} {Q V : ℝ → Fin (n + 1) → Fin 2 → ℝ}
    (hN : IsNewtonSolutionOn (fun k => G * actualMasses m0 m μ k) J Q V)
    (hP : ∀ t ∈ J, ∑ k, actualMasses m0 m μ k • V t k = 0) :
    let z : ℝ → Phase (n * 2) := fun t => (ofBodies (fun (i : Fin n) => Q t i.succ - Q t 0), ofBodies (fun (i : Fin n) => m i • V t i.succ))
    KAM.Iso.IsHamiltonianSolutionOn (movingHamiltonian G m0 m μ) Set.univ J z ∧ ∀ t ∈ J, NoCollision (z t).1 := sorry

end Reduction

section Reconstruction

variable {n : ℕ} {m0 μ : ℝ} {m : Fin n → ℝ}

/-- `bpP:p6:bary-algebra` (a)-(d), the frozen barycentric maps. -/
theorem barycentricPositions_succ_sub_zero (m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (q : Fin (n * 2) → ℝ) (i : Fin n) :
    barycentricPositions m0 m μ q i.succ - barycentricPositions m0 m μ q 0 = bodyVector q i := sorry
theorem barycentricPositions_succ_sub_succ (m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (q : Fin (n * 2) → ℝ) (i j : Fin n) :
    barycentricPositions m0 m μ q j.succ - barycentricPositions m0 m μ q i.succ =
      bodyVector q j - bodyVector q i := sorry
theorem barycentricPositions_zero (m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (q : Fin (n * 2) → ℝ) :
    barycentricPositions m0 m μ q 0 = (-μ / (m0 + μ * ∑ i, m i)) • ∑ i, m i • bodyVector q i := sorry
theorem barycentricVelocities_zero (m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (p : Fin (n * 2) → ℝ) :
    barycentricVelocities m0 m μ p 0 = (-μ / m0) • ∑ i, bodyVector p i := sorry
theorem barycentricVelocities_succ (m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (p : Fin (n * 2) → ℝ) (i : Fin n) :
    barycentricVelocities m0 m μ p i.succ = (1 / m i) • bodyVector p i := sorry
theorem barycentricVelocities_succ_sub_zero (hm0 : m0 ≠ 0) (m : Fin n → ℝ) (μ : ℝ) (p : Fin (n * 2) → ℝ) (i : Fin n) :
    barycentricVelocities m0 m μ p i.succ - barycentricVelocities m0 m μ p 0 =
      (1 / m i) • bodyVector p i + (μ / m0) • ∑ j, bodyVector p j := sorry
theorem sum_actualMasses_smul_barycentricPositions (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ)
    (q : Fin (n * 2) → ℝ) : ∑ k, actualMasses m0 m μ k • barycentricPositions m0 m μ q k = 0 := sorry
theorem sum_actualMasses_smul_barycentricVelocities (hm0 : 0 < m0) (hm : ∀ i, 0 < m i)
    (p : Fin (n * 2) → ℝ) : ∑ k, actualMasses m0 m μ k • barycentricVelocities m0 m μ p k = 0 := sorry
theorem planeLength_barycentricPositions_zero_le (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ)
    (q : Fin (n * 2) → ℝ) :
    planeLength (barycentricPositions m0 m μ q 0) ≤ μ / m0 * ∑ i, m i * planeLength (bodyVector q i) := sorry

/-- `bpP:p6:reconstruction`: moving Sun ⇒ Newton, on any set of times `J`. The mass argument absorbs `G`. -/
theorem reconstruction {G : ℝ} (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ) {J : Set ℝ}
    {z : ℝ → Phase (n * 2)}
    (hz : ∀ t ∈ J, NoCollision (z t).1 ∧
      HasDerivAt z (hamiltonianVectorField (movingHamiltonian G m0 m μ) (z t)) t) :
    IsNewtonSolutionOn (fun k => G * actualMasses m0 m μ k) J
      (fun t => barycentricPositions m0 m μ (z t).1) (fun t => barycentricVelocities m0 m μ (z t).2) := sorry
/-- The all-time frozen predicate (`J = univ`). -/
theorem reconstruction_all_time {G : ℝ} (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ)
    {z : ℝ → Phase (n * 2)}
    (hz : ∀ t, NoCollision (z t).1 ∧
      HasDerivAt z (hamiltonianVectorField (movingHamiltonian G m0 m μ) (z t)) t) :
    IsNewtonSolution G (actualMasses m0 m μ)
      (fun t => barycentricPositions m0 m μ (z t).1) (fun t => barycentricVelocities m0 m μ (z t).2) := sorry
/-- The D25 form (`G = m₀ = 1`): `IsMovingSolutionOn ⇒ IsNewtonSolutionOn (actualMasses 1 m μ)`. -/
theorem isNewtonSolutionOn_of_isMovingSolutionOn (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ) {J : Set ℝ}
    {z : ℝ → Phase (n * 2)} (hz : IsMovingSolutionOn m μ J z) :
    IsNewtonSolutionOn (actualMasses 1 m μ) J
      (fun t => barycentricPositions 1 m μ (z t).1) (fun t => barycentricVelocities 1 m μ (z t).2) := sorry

/-- `bpP:p6:reconstruction-fixed`. -/
theorem reconstruction_fixed {G ε : ℝ} (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) {J : Set ℝ} {z : ℝ → Phase (n * 2)}
    (hz : ∀ t ∈ J, NoCollision (z t).1 ∧
      HasDerivAt z (hamiltonianVectorField (fixedHamiltonian G m0 m ε) (z t)) t) :
    (∀ t ∈ J, ∀ i, 0 < planeLength (bodyVector (z t).1 i)) ∧
    (∀ t ∈ J, ∀ i j, i ≠ j → 0 < planeLength (bodyVector (z t).1 j - bodyVector (z t).1 i)) ∧
    (∀ t ∈ J, ∀ i, HasDerivAt (fun s => bodyVector (z s).1 i) ((1 / m i) • bodyVector (z t).2 i) t) ∧
    (∀ t ∈ J, ∀ i, HasDerivAt (fun s => (1 / m i) • bodyVector (z s).2 i)
      ((-G * m0 / planeLength (bodyVector (z t).1 i) ^ 3) • bodyVector (z t).1 i +
        ε • ∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
          (G * m j / planeLength (bodyVector (z t).1 j - bodyVector (z t).1 i) ^ 3) •
            (bodyVector (z t).1 j - bodyVector (z t).1 i)) t) := sorry
theorem reconstruction_fixed_all_time {G ε : ℝ} (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) {z : ℝ → Phase (n * 2)}
    (hz : ∀ t, NoCollision (z t).1 ∧
      HasDerivAt z (hamiltonianVectorField (fixedHamiltonian G m0 m ε) (z t)) t) :
    IsFixedSolution G m0 m ε (fun t i => bodyVector (z t).1 i) (fun t i => (1 / m i) • bodyVector (z t).2 i) := sorry

/-- `bpP:p6:orbit-transfer`: from the frozen torus predicate (clause (viii)) to Newton / fixed solutions. -/
theorem orbit_transfer_moving {G : ℝ} (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ)
    {w : Fin (n * 2) → ℝ} {K : (Fin (n * 2) → ℝ) → Phase (n * 2)}
    (hK : IsPhysicalTorus (movingHamiltonian G m0 m μ) w K) (hnc : ∀ φ, NoCollision (K φ).1) (φ : Fin (n * 2) → ℝ) :
    IsNewtonSolution G (actualMasses m0 m μ)
      (fun t => barycentricPositions m0 m μ (K (φ + t • w)).1)
      (fun t => barycentricVelocities m0 m μ (K (φ + t • w)).2) := sorry
theorem orbit_transfer_fixed {G ε : ℝ} (hm0 : 0 < m0) (hm : ∀ i, 0 < m i)
    {w : Fin (n * 2) → ℝ} {K : (Fin (n * 2) → ℝ) → Phase (n * 2)}
    (hK : IsPhysicalTorus (fixedHamiltonian G m0 m ε) w K) (hnc : ∀ φ, NoCollision (K φ).1) (φ : Fin (n * 2) → ℝ) :
    IsFixedSolution G m0 m ε (fun t i => bodyVector (K (φ + t • w)).1 i)
      (fun t i => (1 / m i) • bodyVector (K (φ + t • w)).2 i) := sorry

end Reconstruction

section Tube

variable {n : ℕ}

/-- Typing data of `bpP:p6:tube-constants`: `γ` is a lower bound of the axes and their gaps, `A` an upper
bound of the axes. Hypotheses, not conclusions; `axisData_canonical` supplies them. -/
structure AxisData (a : Fin n → ℝ) (γ A : ℝ) : Prop where
  gap_pos : 0 < γ
  le_axis : ∀ i, γ ≤ a i
  le_diff : ∀ i j, i ≠ j → γ ≤ |a i - a j|
  axis_le : ∀ i, a i ≤ A

def axisMax (a : Fin n → ℝ) : ℝ := ⨆ i, a i
def axisGap (a : Fin n → ℝ) : ℝ :=
  sInf ({x | ∃ i, x = a i} ∪ {x | ∃ i j, i ≠ j ∧ x = |a i - a j|})
theorem axisData_canonical (hn : 0 < n) {a : Fin n → ℝ} (ha : ∀ i, 0 < a i) (hinj : Function.Injective a) :
    AxisData a (axisGap a) (axisMax a) := sorry

/-- `ζ_* = min {η, γ/6}`, `d = γ/2`, `D = 2A + γ`. -/
def tubeRadius (η γ : ℝ) : ℝ := min η (γ / 6)
def tubeD (γ : ℝ) : ℝ := γ / 2
def tubeBigD (γ A : ℝ) : ℝ := 2 * A + γ

theorem tubeRadius_pos {η γ : ℝ} (hη : 0 < η) (hγ : 0 < γ) : 0 < tubeRadius η γ := sorry
theorem tubeD_lt_tubeBigD {a : Fin n → ℝ} {γ A : ℝ} (h : AxisData a γ A) (hn : 0 < n) :
    tubeD γ < tubeBigD γ A := sorry

/-- `bpP:p6:tube-geometry` (a): monotone in the radius (and `U_ζ ⊆ U_η` for `ζ ≤ η`). -/
theorem circularTube_mono {G m0 : ℝ} {m a : Fin n → ℝ} {ζ ζ' : ℝ} (h : ζ ≤ ζ') :
    circularTube G m0 m a ζ ⊆ circularTube G m0 m a ζ' := sorry
/-- (b): Euclidean closeness with the factor `√2`. -/
theorem circularTube_euclidean {G m0 : ℝ} {m a : Fin n → ℝ} {ζ : ℝ} {z : Phase (n * 2)}
    (hz : z ∈ circularTube G m0 m a ζ) :
    ∃ φ : Fin n → ℝ, ∀ i, planeLength (bodyVector z.1 i -
        a i • (![Real.cos (2 * π * φ i), Real.sin (2 * π * φ i)] : Fin 2 → ℝ)) < √2 * ζ := sorry
/-- (c): distances. -/
theorem circularTube_distances {G m0 : ℝ} {m a : Fin n → ℝ} {ζ : ℝ} {z : Phase (n * 2)}
    (hz : z ∈ circularTube G m0 m a ζ) (ha : ∀ i, 0 < a i) :
    (∀ i, a i - √2 * ζ < planeLength (bodyVector z.1 i) ∧ planeLength (bodyVector z.1 i) < a i + √2 * ζ) ∧
    (∀ i j, i ≠ j → |a i - a j| - 2 * √2 * ζ < planeLength (bodyVector z.1 j - bodyVector z.1 i) ∧
      planeLength (bodyVector z.1 j - bodyVector z.1 i) < a i + a j + 2 * √2 * ζ) := sorry
/-- (d): `d ≤ ℓ ≤ D`, hence no collision. -/
theorem circularTube_pair_bounds {G m0 : ℝ} {m a : Fin n → ℝ} {γ A ζ : ℝ} (h : AxisData a γ A)
    (hζ : 0 < ζ) (hζ' : ζ ≤ γ / 6) {z : Phase (n * 2)} (hz : z ∈ circularTube G m0 m a ζ) :
    (∀ i, tubeD γ ≤ planeLength (bodyVector z.1 i) ∧ planeLength (bodyVector z.1 i) ≤ tubeBigD γ A) ∧
    (∀ i j, i ≠ j → tubeD γ ≤ planeLength (bodyVector z.1 j - bodyVector z.1 i) ∧
      planeLength (bodyVector z.1 j - bodyVector z.1 i) ≤ tubeBigD γ A) ∧ NoCollision z.1 := sorry
/-- (e): exact `μ`-independence of the pair bounds for the barycentric and the fixed-Sun configurations. -/
theorem circularTube_pairBounds_barycentric {G m0 μ : ℝ} {m a : Fin n → ℝ} {γ A ζ : ℝ} (h : AxisData a γ A)
    (hζ : 0 < ζ) (hζ' : ζ ≤ γ / 6) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ)
    {z : Phase (n * 2)} (hz : z ∈ circularTube G m0 m a ζ) :
    PairBounds (tubeD γ) (tubeBigD γ A) (barycentricPositions m0 m μ z.1) := sorry
theorem circularTube_pairBounds_fixed {G m0 : ℝ} {m a : Fin n → ℝ} {γ A ζ : ℝ} (h : AxisData a γ A)
    (hζ : 0 < ζ) (hζ' : ζ ≤ γ / 6) {z : Phase (n * 2)} (hz : z ∈ circularTube G m0 m a ζ) :
    PairBounds (tubeD γ) (tubeBigD γ A)
      (Fin.cons (0 : Fin 2 → ℝ) (fun i => bodyVector z.1 i) : Fin (n + 1) → Fin 2 → ℝ) := sorry

/-- `bpP:p6:newton-in-tube`, moving Sun, on any set of times (fixed Sun: `fixed_in_tube`). -/
theorem newton_in_tube {G m0 μ : ℝ} {m a : Fin n → ℝ} {γ A ζ : ℝ} (h : AxisData a γ A) (hζ : 0 < ζ) (hζ' : ζ ≤ γ / 6)
    (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ) {J : Set ℝ} {z : ℝ → Phase (n * 2)}
    (hz : ∀ t ∈ J, z t ∈ circularTube G m0 m a ζ ∧
      HasDerivAt z (hamiltonianVectorField (movingHamiltonian G m0 m μ) (z t)) t) :
    IsNewtonSolutionOn (fun k => G * actualMasses m0 m μ k) J
      (fun t => barycentricPositions m0 m μ (z t).1) (fun t => barycentricVelocities m0 m μ (z t).2) ∧
    ∀ t ∈ J, PairBounds (tubeD γ) (tubeBigD γ A) (barycentricPositions m0 m μ (z t).1) := sorry

/-- F4: the fixed-Sun companion of `newton_in_tube` (finite-time equations and pair bounds). -/
theorem fixed_in_tube {G m0 ε : ℝ} {m a : Fin n → ℝ} {γ A ζ : ℝ} (h : AxisData a γ A) (hζ : 0 < ζ) (hζ' : ζ ≤ γ / 6)
    (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) {J : Set ℝ} {z : ℝ → Phase (n * 2)}
    (hz : ∀ t ∈ J, z t ∈ circularTube G m0 m a ζ ∧
      HasDerivAt z (hamiltonianVectorField (fixedHamiltonian G m0 m ε) (z t)) t) :
    (∀ t ∈ J, NoCollision (z t).1) ∧
    (∀ t ∈ J, ∀ i, HasDerivAt (fun s => bodyVector (z s).1 i) ((1 / m i) • bodyVector (z t).2 i) t ∧
      HasDerivAt (fun s => (1 / m i) • bodyVector (z s).2 i)
        ((-G * m0 / planeLength (bodyVector (z t).1 i) ^ 3) • bodyVector (z t).1 i +
          ε • ∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
            (G * m j / planeLength (bodyVector (z t).1 j - bodyVector (z t).1 i) ^ 3) •
              (bodyVector (z t).1 j - bodyVector (z t).1 i)) t) ∧
    (∀ t ∈ J, PairBounds (tubeD γ) (tubeBigD γ A)
      (Fin.cons (0 : Fin 2 → ℝ) (fun i => bodyVector (z t).1 i) : Fin (n + 1) → Fin 2 → ℝ)) := sorry

/-- `bpP:p6:measure-positive` (a): the tube is bounded. -/
theorem circularTube_norm_lt {G m0 : ℝ} {m a : Fin n → ℝ} {η : ℝ} (hG : 0 < G) (hm0 : 0 < m0)
    (ha : ∀ i, 0 < a i) {z : Phase (n * 2)} (hz : z ∈ circularTube G m0 m a η) :
    ‖z.1‖ < (⨆ i, a i) + η ∧ ‖z.2‖ < (⨆ i, |m i| * √(G * m0 / a i)) + η := sorry
theorem volume_lt_top_of_subset_circularTube {G m0 : ℝ} {m a : Fin n → ℝ} {η : ℝ} (hG : 0 < G) (hm0 : 0 < m0)
    (ha : ∀ i, 0 < a i) {S : Set (Phase (n * 2))} (hS : S ⊆ circularTube G m0 m a η) :
    MeasureTheory.volume S < ⊤ := sorry
/-- (b), the consumer form of the Liouville-lattice lemma `bpP:p1:liouville-lattice` (OWNER: Part 1, to be
adopted from the P1 design; restated here for the dependency check only). -/
theorem measure_chart_image {d : ℕ} {c : ℝ} (hc : 0 < c) {O : Set (Phase d)} (hO : IsOpen O)
    {Ψ : Phase d → Phase d} (hΨ : AnalyticOnNhd ℝ Ψ O) (hs : IsSymplecticOn c Ψ O)
    (hQ1 : ∀ z ∈ O, ∀ k : Fin d → ℤ, z + ((fun i => (k i : ℝ)), 0) ∈ O ∧ Ψ (z + ((fun i => (k i : ℝ)), 0)) = Ψ z)
    (hQ2 : ∀ z ∈ O, ∀ z' ∈ O, Ψ z' = Ψ z → ∃ k : Fin d → ℤ, z' = z + ((fun i => (k i : ℝ)), 0))
    {A : Set (Phase d)} (hA : MeasurableSet A) (hAO : A ⊆ O)
    (hAper : ∀ k : Fin d → ℤ, (fun z => z + ((fun i => (k i : ℝ)), 0)) '' A = A) :
    MeasurableSet (Ψ '' A) ∧
      MeasureTheory.volume (Ψ '' A) =
        ENNReal.ofReal (c ^ d) * MeasureTheory.volume (A ∩ {z | ∀ i, z.1 i ∈ Ico (0 : ℝ) 1}) ∧
      (0 < MeasureTheory.volume (Ψ '' A) ↔ 0 < MeasureTheory.volume A) := sorry

/-- `bpP:p6:movkol-assembly`: the physical clauses of `MovingKolmogorovSet` from the tube and the torus predicate. -/
theorem movingKolmogorovSet_of_tube {G m0 μ : ℝ} {m a : Fin n → ℝ} {γ A η : ℝ} (h : AxisData a γ A)
    (hη : 0 < η) (hn : 0 < n) (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ)
    {S : Set (Phase (n * 2))} (hS : MeasurableSet S) (hSt : S ⊆ circularTube G m0 m a (tubeRadius η γ))
    (hS2 : ∀ z ∈ S, ∃ (w : Fin (n * 2) → ℝ) (K : (Fin (n * 2) → ℝ) → Phase (n * 2)) (θ : Fin (n * 2) → ℝ),
      K θ = z ∧ Set.range K ⊆ S ∧ IsPhysicalTorus (movingHamiltonian G m0 m μ) w K) :
    MovingKolmogorovSet G m0 m a μ η (tubeD γ) (tubeBigD γ A) S := sorry
/-- `bpP:p6:fixkol-assembly`. -/
theorem fixedKolmogorovSet_of_tube {G m0 ε : ℝ} {m a : Fin n → ℝ} {γ A η : ℝ} (h : AxisData a γ A)
    (hη : 0 < η) (hn : 0 < n) (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i)
    {S : Set (Phase (n * 2))} (hS : MeasurableSet S) (hSt : S ⊆ circularTube G m0 m a (tubeRadius η γ))
    (hS2 : ∀ z ∈ S, ∃ (w : Fin (n * 2) → ℝ) (K : (Fin (n * 2) → ℝ) → Phase (n * 2)) (θ : Fin (n * 2) → ℝ),
      K θ = z ∧ Set.range K ⊆ S ∧ IsPhysicalTorus (fixedHamiltonian G m0 m ε) w K) :
    FixedKolmogorovSet G m0 m a ε η (tubeD γ) (tubeBigD γ A) S := sorry

end Tube

end KAM.Planetary

/-! ## G. Track P, Part 7: the Poincaré chart, the product chart, the D25 dictionary
(`KAM/Planetary/Poincare/Chart.lean`, `Symplectic.lean`, `Bijective.lean`, `Holomorphic.lean`;
`KAM/Planetary/Poincare/Product.lean`, `Tube.lean`, `Lattice.lean`, `D25.lean`) -/

namespace KAM.Planetary

open KAM KAM.Kepler

section PoincareChart

/-- `Γ = (ξ² + η²)/2` for `w = ((λ, ξ), (Λ, η))` (`secularGamma` for one planet). -/
def poincareGamma (w : Phase 2) : ℝ := (w.1 1 ^ 2 + w.2 1 ^ 2) / 2
def poincareK (w : Phase 2) : ℝ := 1 - poincareGamma w / w.2 0
/-- The regular eccentricity vector `v = √((1 - Γ/(2Λ))/Λ) (ξ, η)` (`secularEccVector`). -/
def poincareV (w : Phase 2) : Fin 2 → ℝ :=
  √((1 - poincareGamma w / (2 * w.2 0)) / w.2 0) • ![w.1 1, w.2 1]
/-- The eccentric longitude `F(λ, v)`. -/
def poincareF (w : Phase 2) : ℝ := keplerLong (w.1 0) (poincareV w)

/-- `bpP:p7:poincare-def`: `Ψ_{m,κ}(λ, ξ, Λ, η) = (q, p)`. -/
def poincare (m κ : ℝ) (w : Phase 2) : Phase 2 :=
  ((w.2 0 ^ 2 / (m ^ 2 * κ)) •
      (poincareK w • orbitalUnit (poincareF w) - poincareV w
        + (planeDot (poincareV w) (orbitalUnit (poincareF w)) / (1 + poincareK w)) • poincareV w),
   (m ^ 2 * κ / (w.2 0 * keplerJac (poincareV w) (poincareF w))) •
      (quarterTurn (orbitalUnit (poincareF w))
        - (planeDot (poincareV w) (orbitalUnit (poincareF w)) / (1 + poincareK w)) • quarterTurn (poincareV w)))

/-- The Poincaré domain `𝒪 = {Λ > 0, Γ < Λ}`. -/
def poincareDom : Set (Phase 2) := {w | 0 < w.2 0 ∧ poincareGamma w < w.2 0}

theorem isOpen_poincareDom : IsOpen poincareDom := sorry

/-- `bpP:p7:o-facts`. -/
theorem poincare_facts {w : Phase 2} (hw : w ∈ poincareDom) :
    0 ≤ poincareGamma w ∧ 0 < poincareK w ∧ poincareK w ≤ 1 ∧
      0 < (1 - poincareGamma w / (2 * w.2 0)) / w.2 0 ∧
      planeSq (poincareV w) = 1 - poincareK w ^ 2 ∧ planeLength (poincareV w) < 1 ∧
      0 < keplerJac (poincareV w) (poincareF w) := sorry
theorem poincare_facts_polar {w : Phase 2} (hw : w ∈ poincareDom) {ρ g : ℝ} (hρ : 0 < ρ)
    (hξ : w.1 1 = ρ * Real.cos g) (hη : w.2 1 = ρ * Real.sin g) :
    poincareGamma w = ρ ^ 2 / 2 ∧ poincareV w = √(1 - poincareK w ^ 2) • ex g ∧
      (∀ F, planeDot (poincareV w) (orbitalUnit F) = √(1 - poincareK w ^ 2) * Real.cos (F - g)) := sorry

/-- `bpP:p7:poincare` (a): analytic through `ξ = η = 0`, and `2π`-periodic in `λ`. -/
theorem analyticOnNhd_poincareF : AnalyticOnNhd ℝ poincareF poincareDom := sorry
theorem analyticOnNhd_poincare {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) : AnalyticOnNhd ℝ (poincare m κ) poincareDom := sorry
theorem poincare_periodic {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w : Phase 2} (hw : w ∈ poincareDom) (k : ℤ) :
    poincare m κ (![w.1 0 + 2 * π * k, w.1 1], w.2) = poincare m κ w := sorry
/-- (b): Delaunay on `Γ > 0`, `(ξ, η) = ρ e_g`, `ρ = √(2Γ)`. -/
theorem poincare_eq_delaunayMK {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {lam Λ Γ g : ℝ} (hΓ : 0 < Γ) (hΓΛ : Γ < Λ) :
    poincare m κ (![lam, √(2 * Γ) * Real.cos g], ![Λ, √(2 * Γ) * Real.sin g]) =
      delaunayMK m κ (![lam - g, g], ![Λ, Λ - Γ]) := sorry
/-- (c): symplectic with factor one on all of `𝒪` (density argument across `Γ = 0`). -/
theorem poincare_symplectic {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) : IsSymplecticOn 1 (poincare m κ) poincareDom := sorry
/-- (d): elements, including the Laplace-Runge-Lenz identity (`keplerEccVector` for `κ = 1`). -/
theorem poincare_elements {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w : Phase 2} (hw : w ∈ poincareDom) :
    poincare m κ w ∈ regionMK m κ ∧
    energyMK m κ (poincare m κ w) = -(κ ^ 2 * m ^ 3) / (2 * w.2 0 ^ 2) ∧
    axisMK m κ (poincare m κ w) = w.2 0 ^ 2 / (m ^ 2 * κ) ∧
    actionMK m κ (poincare m κ w) = w.2 0 ∧
    planeCross (poincare m κ w).1 (poincare m κ w).2 = w.2 0 - poincareGamma w ∧
    κ⁻¹ • ((planeSq (poincare m κ w).2 / m ^ 2 - κ / planeLength (poincare m κ w).1) • (poincare m κ w).1
      - (planeDot (poincare m κ w).1 (poincare m κ w).2 / m ^ 2) • (poincare m κ w).2) = poincareV w := sorry
/-- (e): onto `𝒦_{m,κ}`, injective modulo `2πℤ` in `λ`, local analytic diffeomorphism, explicit inverse. -/
theorem poincare_image {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) : poincare m κ '' poincareDom = regionMK m κ := sorry
theorem poincare_eq_iff {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w w' : Phase 2} (hw : w ∈ poincareDom)
    (hw' : w' ∈ poincareDom) :
    poincare m κ w = poincare m κ w' ↔ ∃ k : ℤ, w'.1 = ![w.1 0 + 2 * π * k, w.1 1] ∧ w'.2 = w.2 := sorry
theorem poincare_localDiffeo {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w : Phase 2} (hw : w ∈ poincareDom) :
    ∃ φ : OpenPartialHomeomorph (Phase 2) (Phase 2), w ∈ φ.source ∧ (φ : Phase 2 → Phase 2) = poincare m κ ∧
      AnalyticOnNhd ℝ φ.symm φ.target := sorry
/-- The explicit inverse: `Λ = m√(κ a)`, `Γ = Λ - cr`, `v` = rescaled LRL vector, `(ξ, η) = v/s`,
`c = (k Id + vvᵀ/(1+k))⁻¹ (q/a + v) = k⁻¹ (u - (v·u)/(1+k) v)` with `u = q/a + v`, `F = arg c`, `λ = Φ(F, v)`. -/
def poincareInv (m κ : ℝ) (z : Phase 2) : Phase 2 :=
  let Λ := actionMK m κ z
  let Γ := Λ - planeCross z.1 z.2
  let v := κ⁻¹ • ((planeSq z.2 / m ^ 2 - κ / planeLength z.1) • z.1 - (planeDot z.1 z.2 / m ^ 2) • z.2)
  let s := √((1 - Γ / (2 * Λ)) / Λ)
  let k := 1 - Γ / Λ
  let u := ((m ^ 2 * κ) / Λ ^ 2) • z.1 + v
  let c := k⁻¹ • (u - (planeDot v u / (1 + k)) • v)
  let F := Complex.arg ⟨c 0, c 1⟩
  (![keplerPhi v F, s⁻¹ * v 0], ![Λ, s⁻¹ * v 1])
theorem poincareInv_poincare {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w : Phase 2} (hw : w ∈ poincareDom) :
    ∃ k : ℤ, poincareInv m κ (poincare m κ w) = (![w.1 0 + 2 * π * k, w.1 1], w.2) := sorry
theorem poincare_poincareInv {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {z : Phase 2} (hz : z ∈ regionMK m κ) :
    poincareInv m κ z ∈ poincareDom ∧ poincare m κ (poincareInv m κ z) = z := sorry
/-- (f): the circular torus `Γ = 0`. -/
theorem poincare_circular {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {lam Λ : ℝ} (hΛ : 0 < Λ) :
    poincare m κ (![lam, 0], ![Λ, 0]) =
      ((Λ ^ 2 / (m ^ 2 * κ)) • (![Real.cos lam, Real.sin lam] : Fin 2 → ℝ),
       (m * √(κ / (Λ ^ 2 / (m ^ 2 * κ)))) • (![-Real.sin lam, Real.cos lam] : Fin 2 → ℝ)) := sorry
/-- Mean values over `λ` of the chart (`bpP:p7:kepler` (c) transported; includes the circular case). -/
theorem poincare_means {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w : Phase 2} (hw : w ∈ poincareDom) :
    let a := w.2 0 ^ 2 / (m ^ 2 * κ)
    let pt := fun lam : ℝ => poincare m κ (![lam, w.1 1], w.2)
    (2 * π)⁻¹ * (∫ lam in (0 : ℝ)..2 * π, 1 / planeLength (pt lam).1) = 1 / a ∧
    (2 * π)⁻¹ * (∫ lam in (0 : ℝ)..2 * π, planeSq (pt lam).2) = m ^ 2 * κ / a ∧
    (2 * π)⁻¹ * (∫ lam in (0 : ℝ)..2 * π, planeLength (pt lam).1) = a * (1 + (1 - poincareK w ^ 2) / 2) := sorry

/-! ### Holomorphic extension (`bpP:p7:holomorphic`) -/

def poincareGammaC (w : (Fin 2 → ℂ) × (Fin 2 → ℂ)) : ℂ := (w.1 1 ^ 2 + w.2 1 ^ 2) / 2
def poincareVC (w : (Fin 2 → ℂ) × (Fin 2 → ℂ)) : Fin 2 → ℂ :=
  ((1 - poincareGammaC w / (2 * w.2 0)) / w.2 0) ^ (1 / 2 : ℂ) • ![w.1 1, w.2 1]
/-- The complex chart (principal branches), coordinates `((λ, ξ), (Λ, η))`. -/
def poincareC (m κ : ℝ) (w : (Fin 2 → ℂ) × (Fin 2 → ℂ)) : (Fin 2 → ℂ) × (Fin 2 → ℂ) :=
  let k := 1 - poincareGammaC w / w.2 0
  let v := poincareVC w
  let F := keplerLongC (w.1 0, v)
  let c : Fin 2 → ℂ := ![Complex.cos F, Complex.sin F]
  let vc := v 0 * c 0 + v 1 * c 1
  (((w.2 0 ^ 2 / (((m ^ 2 * κ : ℝ)) : ℂ))) • (k • c - v + (vc / (1 + k)) • v),
   (((m ^ 2 * κ : ℝ) : ℂ) / (w.2 0 * (1 - vc))) • (![-c 1, c 0] - (vc / (1 + k)) • ![-v 1, v 0]))
/-- `𝒩(Λ°)`. -/
def poincareNbhd (Λo : ℝ) : Set ((Fin 2 → ℂ) × (Fin 2 → ℂ)) :=
  {w | |(w.1 0).im| < 1 / 4 ∧ ‖w.2 0 - Λo‖ < Λo / 2 ∧ ‖w.1 1‖ < √Λo / 16 ∧ ‖w.2 1‖ < √Λo / 16}

theorem poincare_holomorphic {m κ Λo : ℝ} (hm : 0 < m) (hκ : 0 < κ) (hΛ : 0 < Λo) :
    IsOpen (poincareNbhd Λo) ∧
    (∀ w ∈ poincareNbhd Λo, (w.1 0, poincareVC w) ∈ regularTube ∧ w.2 0 ≠ 0 ∧
      1 + (1 - poincareGammaC w / w.2 0) ≠ 0 ∧
      1 - (poincareVC w 0 * Complex.cos (keplerLongC (w.1 0, poincareVC w)) +
        poincareVC w 1 * Complex.sin (keplerLongC (w.1 0, poincareVC w))) ≠ 0) ∧
    DifferentiableOn ℂ (poincareC m κ) (poincareNbhd Λo) ∧
    (∀ w ∈ poincareNbhd Λo, (Function.update w.1 0 (w.1 0 + 2 * π), w.2) ∈ poincareNbhd Λo ∧
      poincareC m κ (Function.update w.1 0 (w.1 0 + 2 * π), w.2) = poincareC m κ w) ∧
    (∀ w : Phase 2, phaseToC w ∈ poincareNbhd Λo →
      w ∈ poincareDom ∧ poincareC m κ (phaseToC w) = phaseToC (poincare m κ w)) := sorry

end PoincareChart

section PhaseCast

/-- F6: the canonical reindexing `Phase d ≃L[ℝ] Phase e` for `h : d = e` (`Fin.cast` on both components). -/
def phaseCast {d e : ℕ} (h : d = e) : Phase d ≃L[ℝ] Phase e :=
  (ContinuousLinearEquiv.piCongrLeft ℝ (fun _ : Fin e => ℝ) (finCongr h : Fin d ≃ Fin e)).prodCongr
    (ContinuousLinearEquiv.piCongrLeft ℝ (fun _ : Fin e => ℝ) (finCongr h : Fin d ≃ Fin e))

theorem phaseCast_apply {d e : ℕ} (h : d = e) (z : Phase d) (i : Fin e) :
    (phaseCast h z).1 i = z.1 (Fin.cast h.symm i) ∧ (phaseCast h z).2 i = z.2 (Fin.cast h.symm i) := sorry
theorem phaseCast_symm {d e : ℕ} (h : d = e) : (phaseCast h).symm = phaseCast h.symm := sorry
theorem phaseCast_symplectic {d e : ℕ} (h : d = e) : IsSymplecticOn 1 (phaseCast h) univ := sorry
theorem phaseCast_hamiltonianVectorField {d e : ℕ} (h : d = e) (H : Phase e → ℝ) (z : Phase d) :
    hamiltonianVectorField (H ∘ phaseCast h) z = (phaseCast h).symm (hamiltonianVectorField H (phaseCast h z)) := sorry
theorem phaseCast_volume {d e : ℕ} (h : d = e) (A : Set (Phase d)) :
    MeasureTheory.volume (phaseCast h '' A) = MeasureTheory.volume A := sorry
theorem phaseCast_measurableEquiv {d e : ℕ} (h : d = e) {A : Set (Phase d)} (hA : MeasurableSet A) :
    MeasurableSet (phaseCast h '' A) := sorry
/-- `phaseCast` is analytic (it is a continuous linear equivalence). -/
theorem phaseCast_analytic {d e : ℕ} (h : d = e) : AnalyticOnNhd ℝ (phaseCast h) univ := sorry

end PhaseCast

section ProductChart

variable {n : ℕ}

/-- The `i`-th planet's coordinates `((λ_i, ξ_i), (Λ_i, η_i))` of a point of `Phase (n + n)` (fast block first). -/
def planetBlock (w : Phase (n + n)) (i : Fin n) : Phase 2 :=
  (![fast w.1 i, slow w.1 i], ![fast w.2 i, slow w.2 i])

/-- `bpP:p7:product-def`: `Ψ^{(n)}(w)`, the body-wise Poincaré charts, `κ = G m₀`. -/
def poincareProd (m : Fin n → ℝ) (κ : ℝ) (w : Phase (n + n)) : Phase (n * 2) :=
  (fun k => (poincare (m (finProdFinEquiv.symm k).1) κ (planetBlock w (finProdFinEquiv.symm k).1)).1
      (finProdFinEquiv.symm k).2,
   fun k => (poincare (m (finProdFinEquiv.symm k).1) κ (planetBlock w (finProdFinEquiv.symm k).1)).2
      (finProdFinEquiv.symm k).2)
def poincareProdDom (n : ℕ) : Set (Phase (n + n)) := {w | ∀ i, planetBlock w i ∈ poincareDom}
/-- `h(Λ) = -Σ κ² m_i³/(2Λ_i²)`. -/
def hProd (κ : ℝ) (m : Fin n → ℝ) (w : Phase (n + n)) : ℝ := -∑ i, κ ^ 2 * m i ^ 3 / (2 * fast w.2 i ^ 2)
/-- `𝒦^{(n)}`. -/
def regionProd (m : Fin n → ℝ) (κ : ℝ) : Set (Phase (n * 2)) :=
  {z | ∀ i, (bodyVector z.1 i, bodyVector z.2 i) ∈ regionMK (m i) κ}
-- F1: the lattice shift is the FROZEN `KAM.Planetary.fastShift {a b} (k : Fin a → ℤ) : Phase (a + b)`;
-- no redefinition here. In this layer it is used as `fastShift (a := n) (b := n) k`.

theorem isOpen_poincareProdDom (n : ℕ) : IsOpen (poincareProdDom n) := sorry
theorem regionProd_one_iff {m : Fin n → ℝ} (hm : ∀ i, 0 < m i) (z : Phase (n * 2)) :
    z ∈ regionProd m 1 ↔ ProgradeElliptic m z := sorry

/-- `bpP:p7:product-chart` (a). -/
theorem poincareProd_symplectic {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) :
    IsSymplecticOn 1 (poincareProd m κ) (poincareProdDom n) := sorry
theorem analyticOnNhd_poincareProd {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) :
    AnalyticOnNhd ℝ (poincareProd m κ) (poincareProdDom n) := sorry
theorem poincareProd_lattice {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) {w : Phase (n + n)}
    (hw : w ∈ poincareProdDom n) (k : Fin n → ℤ) :
    w + fastShift (a := n) (b := n) k ∈ poincareProdDom n ∧ poincareProd m κ (w + fastShift (a := n) (b := n) k) = poincareProd m κ w := sorry
theorem poincareProd_eq_iff {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) {w w' : Phase (n + n)}
    (hw : w ∈ poincareProdDom n) (hw' : w' ∈ poincareProdDom n) :
    poincareProd m κ w = poincareProd m κ w' ↔ ∃ k : Fin n → ℤ, w' = w + fastShift (a := n) (b := n) k := sorry
theorem poincareProd_image {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) :
    poincareProd m κ '' poincareProdDom n = regionProd m κ := sorry
theorem poincareProd_localDiffeo {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) {w : Phase (n + n)}
    (hw : w ∈ poincareProdDom n) :
    ∃ φ : OpenPartialHomeomorph (Phase (n + n)) (Phase (n * 2)), w ∈ φ.source ∧
      (φ : Phase (n + n) → Phase (n * 2)) = poincareProd m κ ∧ AnalyticOnNhd ℝ φ.symm φ.target := sorry
/-- (b): decoupling; `ν_i = κ² m_i³/Λ_i³`, `∂²h/∂Λ_i² = -3κ²m_i³/Λ_i⁴ ≠ 0`. -/
theorem keplerPart_poincareProd {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) {w : Phase (n + n)}
    (hw : w ∈ poincareProdDom n) : keplerPart κ m (poincareProd m κ w) = hProd κ m w := sorry
theorem hasDerivAt_nu {m κ x : ℝ} (hx : x ≠ 0) :
    HasDerivAt (fun y => κ ^ 2 * m ^ 3 / y ^ 3) (-3 * κ ^ 2 * m ^ 3 / x ^ 4) x := sorry
/-- (c): the two models share the chart. -/
theorem movingHamiltonian_poincareProd {m : Fin n → ℝ} {G m0 μ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < G * m0)
    {w : Phase (n + n)} (hw : w ∈ poincareProdDom n) :
    movingHamiltonian G m0 m μ (poincareProd m (G * m0) w) =
      hProd (G * m0) m w + μ * fMov G m0 m (poincareProd m (G * m0) w) := sorry
theorem fixedHamiltonian_poincareProd {m : Fin n → ℝ} {G m0 ε : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < G * m0)
    {w : Phase (n + n)} (hw : w ∈ poincareProdDom n) :
    fixedHamiltonian G m0 m ε (poincareProd m (G * m0) w) =
      hProd (G * m0) m w + ε * fFix G m (poincareProd m (G * m0) w) := sorry
theorem isOpen_poincareProd_preimage {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) :
    IsOpen (poincareProdDom n ∩ poincareProd m κ ⁻¹' collisionFreeDomain n) := sorry
theorem analyticOnNhd_fMov_poincareProd {m : Fin n → ℝ} {G m0 : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < G * m0) :
    AnalyticOnNhd ℝ (fun w => fMov G m0 m (poincareProd m (G * m0) w))
      (poincareProdDom n ∩ poincareProd m (G * m0) ⁻¹' collisionFreeDomain n) := sorry
theorem analyticOnNhd_fFix_poincareProd {m : Fin n → ℝ} {G m0 : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < G * m0) :
    AnalyticOnNhd ℝ (fun w => fFix G m (poincareProd m (G * m0) w))
      (poincareProdDom n ∩ poincareProd m (G * m0) ⁻¹' collisionFreeDomain n) := sorry

/-- `bpP:p7:tube`: the circular torus in chart coordinates, and the tube in chart coordinates. -/
theorem circularPoint_eq_poincareProd {G m0 : ℝ} {m a : Fin n → ℝ} (hG : 0 < G) (hm0 : 0 < m0)
    (hm : ∀ i, 0 < m i) (ha : ∀ i, 0 < a i) (φ : Fin n → ℝ) :
    circularPoint G m0 m a φ =
      poincareProd m (G * m0)
        (assemble (fun i => m i * √(G * m0 * a i)) (fun i => 2 * π * φ i) (0 : Fin n → ℝ) (0 : Fin n → ℝ)) := sorry
theorem tube_in_chart {G m0 : ℝ} {m a : Fin n → ℝ} (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i)
    (ha : ∀ i, 0 < a i) {δ : ℝ} (hδ : 0 < δ) :
    ∃ η₀ : ℝ, 0 < η₀ ∧ ∀ η, 0 < η → η ≤ η₀ →
      circularTube G m0 m a η ⊆ regionProd m (G * m0) ∧
      ∀ w ∈ poincareProdDom n, poincareProd m (G * m0) w ∈ circularTube G m0 m a η →
        ∀ i, |fast w.2 i - m i * √(G * m0 * a i)| < δ ∧ poincareGamma (planetBlock w i) < δ := sorry

/-- `bpP:p7:lattice`: the oscillator polar chart `Θ_n` and `Φ_n = Ψ^{(n)} ∘ Θ_n`
(coordinates `z = ((φ, ψ), (I, R))`). -/
def polarDom (n : ℕ) : Set (Phase (n + n)) := {z | ∀ i, 0 < fast z.2 i ∧ 0 < slow z.2 i ∧ slow z.2 i < fast z.2 i}
def polarMap (z : Phase (n + n)) : Phase (n + n) :=
  assemble (fast z.2) (fast z.1) (fun i => √(2 * slow z.2 i) * Real.cos (slow z.1 i))
    (fun i => √(2 * slow z.2 i) * Real.sin (slow z.1 i))
/-- The lattice shift `((2πk, 0), 0)` of all `2n` positions, `k : Fin (n+n) → ℤ`. -/
def fullShift (k : Fin (n + n) → ℤ) : Phase (n + n) := (fun i => 2 * π * (k i : ℝ), 0)
/-- `S_c(z₁, z₂) = (c z₁, z₂)` (`bpP:p1:period-convert`; OWNER Part 1, restated for the dependency check). -/
def angleScale {d : ℕ} (c : ℝ) (z : Phase d) : Phase d := (c • z.1, z.2)

theorem polarMap_symplectic (n : ℕ) : IsSymplecticOn 1 (polarMap (n := n)) (polarDom n) := sorry
theorem analyticOnNhd_polarMap (n : ℕ) : AnalyticOnNhd ℝ (polarMap (n := n)) (polarDom n) := sorry
theorem polarMap_mapsTo (n : ℕ) : MapsTo (polarMap (n := n)) (polarDom n) (poincareProdDom n) := sorry
theorem polarDom_shift (k : Fin (n + n) → ℤ) {z : Phase (n + n)} (hz : z ∈ polarDom n) :
    z + fullShift k ∈ polarDom n := sorry
theorem poincareProd_polar_symplectic {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) :
    IsSymplecticOn 1 (poincareProd m κ ∘ polarMap) (polarDom n) := sorry
theorem poincareProd_polar_lattice {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) {z z' : Phase (n + n)}
    (hz : z ∈ polarDom n) (hz' : z' ∈ polarDom n) (k : Fin (n + n) → ℤ) :
    poincareProd m κ (polarMap (z + fullShift k)) = poincareProd m κ (polarMap z) ∧
    (poincareProd m κ (polarMap z') = poincareProd m κ (polarMap z) → ∃ k : Fin (n + n) → ℤ, z' = z + fullShift k) := sorry
/-- Period-one version: `Φ_n ∘ S_{2π}` is a `2π`-chart satisfying (Q1), (Q2) for the lattice `(k, 0)`. -/
theorem poincareProd_polar_periodOne_symplectic {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) :
    IsSymplecticOn (2 * π) (poincareProd m κ ∘ polarMap ∘ angleScale (2 * π))
      (angleScale (2 * π) ⁻¹' polarDom n) := sorry
theorem poincareProd_polar_periodOne_lattice {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ)
    {z z' : Phase (n + n)} (hz : angleScale (2 * π) z ∈ polarDom n) (hz' : angleScale (2 * π) z' ∈ polarDom n)
    (k : Fin (n + n) → ℤ) :
    angleScale (2 * π) (z + ((fun i => (k i : ℝ)), 0)) ∈ polarDom n ∧
    poincareProd m κ (polarMap (angleScale (2 * π) (z + ((fun i => (k i : ℝ)), 0)))) =
      poincareProd m κ (polarMap (angleScale (2 * π) z)) ∧
    (poincareProd m κ (polarMap (angleScale (2 * π) z')) = poincareProd m κ (polarMap (angleScale (2 * π) z)) →
      ∃ k : Fin (n + n) → ℤ, z' = z + ((fun i => (k i : ℝ)), 0)) := sorry
theorem polar_hamiltonian_split {m : Fin n → ℝ} {G m0 μ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < G * m0)
    {z : Phase (n + n)} (hz : z ∈ polarDom n) :
    movingHamiltonian G m0 m μ (poincareProd m (G * m0) (polarMap z)) =
      hProd (G * m0) m (polarMap z) + μ * fMov G m0 m (poincareProd m (G * m0) (polarMap z)) := sorry

/-- F6: the equal-dimension chart `Phase (n*2) → Phase (n*2)` that Part 1's `IsChart` consumes
(`poincareProd` composed with the canonical reindexing; the body permutation stays inside `poincareProd`). -/
def poincareProdCast (m : Fin n → ℝ) (κ : ℝ) : Phase (n * 2) → Phase (n * 2) :=
  poincareProd m κ ∘ phaseCast (Nat.mul_two n)
def poincareProdCastDom (n : ℕ) : Set (Phase (n * 2)) := phaseCast (Nat.mul_two n) ⁻¹' poincareProdDom n
theorem poincareProdCast_symplectic {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) :
    IsSymplecticOn 1 (poincareProdCast m κ) (poincareProdCastDom n) := sorry
theorem analyticOnNhd_poincareProdCast {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) :
    AnalyticOnNhd ℝ (poincareProdCast m κ) (poincareProdCastDom n) := sorry
theorem isOpen_poincareProdCastDom (n : ℕ) : IsOpen (poincareProdCastDom n) := sorry
theorem poincareProdCast_eq_iff {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) {z z' : Phase (n * 2)}
    (hz : z ∈ poincareProdCastDom n) (hz' : z' ∈ poincareProdCastDom n) :
    poincareProdCast m κ z = poincareProdCast m κ z' ↔
      ∃ k : Fin n → ℤ, z' = z + (phaseCast (Nat.mul_two n)).symm (fastShift (a := n) (b := n) k) := sorry

end ProductChart

section D25

/-- `bpP:p7:d25` (a): the frozen secular definitions are the chart's `Γ, k, v` (all `w`, no domain needed). -/
theorem secularGamma_eq (w : Phase (2 + 2)) (i : Fin 2) : secularGamma w i = poincareGamma (planetBlock w i) := sorry
theorem secularRoot_eq (w : Phase (2 + 2)) (i : Fin 2) : secularRoot w i = poincareK (planetBlock w i) := sorry
theorem secularEccVector_eq (w : Phase (2 + 2)) (i : Fin 2) :
    secularEccVector w i = poincareV (planetBlock w i) := sorry
theorem secularAxis_eq (m : Fin 2 → ℝ) (w : Phase (2 + 2)) (i : Fin 2) :
    secularAxis m w i = fast w.2 i ^ 2 / (m i ^ 2 * 1) := sorry
/-- (c): for arbitrary `F`, the frozen `ellipsePhase` is the chart at `λ_j = Φ(F_j, v_j)`; at
`F_j = F_j(w)` it is `Ψ^{(2)}(w)`. -/
theorem ellipsePhase_eq_poincareProd {m : Fin 2 → ℝ} (hm : ∀ i, 0 < m i) {w : Phase (2 + 2)}
    (hw : w ∈ poincareProdDom 2) (F : Fin 2 → ℝ) :
    ellipsePhase m w F =
      poincareProd m 1 (assemble (fast w.2)
        (fun j => keplerPhi (poincareV (planetBlock w j)) (F j)) (slow w.2) (slow w.1)) := sorry
theorem ellipsePhase_eq_poincareProd_self {m : Fin 2 → ℝ} (hm : ∀ i, 0 < m i) {w : Phase (2 + 2)}
    (hw : w ∈ poincareProdDom 2) :
    ellipsePhase m w (fun j => poincareF (planetBlock w j)) = poincareProd m 1 w := sorry
/-- (d): the Kepler functions of the physical point. -/
theorem keplerFunctions_poincareProd {m : Fin 2 → ℝ} (hm : ∀ i, 0 < m i) {w : Phase (2 + 2)}
    (hw : w ∈ poincareProdDom 2) (i : Fin 2) :
    ProgradeElliptic m (poincareProd m 1 w) ∧
    keplerEnergy m (poincareProd m 1 w) i = -(m i) ^ 3 / (2 * fast w.2 i ^ 2) ∧
    keplerAxis m (poincareProd m 1 w) i = secularAxis m w i ∧
    keplerAction m (poincareProd m 1 w) i = fast w.2 i ∧
    planeCross (bodyVector (poincareProd m 1 w).1 i) (bodyVector (poincareProd m 1 w).2 i) =
      fast w.2 i - secularGamma w i ∧
    keplerEccVector m (poincareProd m 1 w) i = secularEccVector w i := sorry
theorem exists_poincareProd_of_progradeElliptic {m : Fin 2 → ℝ} (hm : ∀ i, 0 < m i) {z : Phase (2 * 2)}
    (hz : ProgradeElliptic m z) : ∃ w ∈ poincareProdDom 2, poincareProd m 1 w = z := sorry

/-- `bpP:p7:average`: the change of variable `λ_i ↔ F_i` in angular averages (other `F_j = F_j(w)` fixed). -/
theorem average_via_eccentric_longitude {m : Fin 2 → ℝ} (hm : ∀ i, 0 < m i) {w : Phase (2 + 2)}
    (hw : w ∈ poincareProdDom 2) (i : Fin 2) {φ : Phase (2 * 2) → ℝ} (hφ : Continuous φ) :
    (2 * π)⁻¹ * ∫ x in (0 : ℝ)..2 * π,
        φ (poincareProd m 1 (assemble (fast w.2) (Function.update (fast w.1) i x) (slow w.2) (slow w.1))) =
      (2 * π)⁻¹ * ∫ s in (0 : ℝ)..2 * π,
        φ (ellipsePhase m w (Function.update (fun j => poincareF (planetBlock w j)) i s)) *
          longitudeJacobian w i s := sorry
/-- The three mean values of the average corollary, for general `n` and `κ`. -/
theorem poincareProd_means {m : Fin n → ℝ} {κ : ℝ} (hm : ∀ i, 0 < m i) (hκ : 0 < κ) {w : Phase (n + n)}
    (hw : w ∈ poincareProdDom n) (i : Fin n) :
    let a := fast w.2 i ^ 2 / (m i ^ 2 * κ)
    let pt := fun x : ℝ => poincareProd m κ (assemble (fast w.2) (Function.update (fast w.1) i x) (slow w.2) (slow w.1))
    (2 * π)⁻¹ * (∫ x in (0 : ℝ)..2 * π, 1 / planeLength (bodyVector (pt x).1 i)) = 1 / a ∧
    (2 * π)⁻¹ * (∫ x in (0 : ℝ)..2 * π, planeSq (bodyVector (pt x).2 i)) = m i ^ 2 * κ / a ∧
    (2 * π)⁻¹ * (∫ x in (0 : ℝ)..2 * π, planeLength (bodyVector (pt x).1 i)) =
      a * (1 + planeSq (poincareV (planetBlock w i)) / 2) := sorry

end D25

end KAM.Planetary

```
