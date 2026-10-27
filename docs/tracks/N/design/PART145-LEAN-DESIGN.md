# Lean design for blueprint-N Parts 1, 4 and 5 (interfaces; weighted norms; canonical maps)

Design v1, 2026-10-27, branch `inp-design-n145`. Planning evidence, not approved Lean; nothing here is frozen
and these parts have no frozen theorem (no provider). Modeled on `PART3-LEAN-DESIGN.md` (with its audit fixes)
and track K's `PART23-LEAN-DESIGN.md`.

**The signatures.** Every result node of Parts 1, 4, 5 has its exact Lean statement in
`.drafts/design/NPart145Signatures.lean` (untracked; copied verbatim in Appendix A).
- 1270 lines, sha256 `87adf1f6ceecb412d7a0cfc521fe9d09aa6a40664ff0b8662044dc3315599afd`. `cd /root/code/KAM-inp-design-n145 && nice -n 5 lake env lean .drafts/design/NPart145Signatures.lean`
  exits 0 in about 15 s with 115 diagnostics, all `declaration uses 'sorry'`; no `set_option`, no `maxHeartbeats`.
- Proved in the file (no `sorry`): `scaleCLE` (a definition), `norm_convert` (= K's `KAM.summableWeighted_torusCoeff`),
  `norm_convert_converse` (K's `eq_fourierSum_torusCoeff` + `norm_fourierSum_le`). All other `theorem ... := sorry` are
  prover obligations; every `def`/`structure` has its real body.
- Needs only built modules (`KAM.Strip.*`, `KAM.Fourier.*`, `KAM.ODE.Basic`, frozen defs). Part 5 cites
  `KAM.ODE.{Existence,Uniqueness,Maximal,Continuation}` by name in the plans (not imported by the draft: not built in this snapshot).

## 0. Decisions in brief

1. **Three layers, shared where tracks P/N both consume.** `KAM/Weighted/*` (namespace `KAM.Weighted`, Part 4) and
   `KAM/Canonical/*` (`KAM.Canonical`, Part 5) are shared infrastructure (track P cites `bpN:p4:*`, `bpN:p5:*`; no I citation);
   `KAM/Nekhoroshev/Interfaces/*` (`KAM.Nekhoroshev`, Part 1) is N-specific. No shared module imports `KAM.Nekhoroshev.*`
   (Part 1 `Constants` imports `KAM.Weighted`, not conversely).
2. **Carriers.** Ambient types as in the frozen defs: `(Fin n → ℂ)`, `(Fin n → ℝ)`, indices `Fin n → ℤ`, phase space
   `(Fin n → ℂ) × (Fin n → ℂ)` (angles first). Functions of `(θ, I)` are *total* functions
   `u : (Fin n → ℂ) × (Fin m → ℂ) → W` (`m` independent of `n`, `D : Set (Fin m → ℂ)` arbitrary, as Part 4 requires; `m = n` only for the
   bracket). `W` is `ℂ`, or a finite-dimensional complex space (`Fin d → ℂ`, matrices) for the coefficient-level results, with K's
   instance block `[NormedSpace ℂ W] [NormedSpace ℝ W] [IsScalarTower ℝ ℂ W] [CompleteSpace W]`. No `EuclideanSpace`: `euclid x = √(∑ ‖xᵢ‖²)`.
3. **The weighted norm is a bound predicate.** `WBound D r s u M` ("`|u|_{r,s} ≤ M`") = for every `I ∈ V_r D` the coefficient series
   `∑ₖ ‖û_k(I)‖ e^{2π s|k|₁}` is summable with sum `≤ M`. Every Part 4/5 inequality is `WBound → WBound`, so no `sSup`/junk `tsum`
   value occurs in a statement; `wnorm`/`HasFiniteWNorm`/`wbound_iff` give the blueprint's `|u|_{r,s} ∈ [0,∞]` for consumers.
   Coefficients are K's `KAM.torusCoeffW` (real unit torus, `W`-valued, entrywise for vector/matrix `W` since the Pi norm is the max entry);
   weight `e^{2π s|k|₁}` with `|k|₁ = KAM.Fourier.modeSize k` and geometric width `s` (`docs/fourier-conventions.md`).
   Class `O(r,s)` is the Prop-structure `InClass D r s u` (holomorphic on `Dom n D r s`, `1`-periodic there).
4. **Flows over a gauge, not a second norm.** Blueprint's "complex norm `ν` on `ℂᴺ`" is formalized as `ν x = ‖W x‖` for a
   `W : E ≃L[ℂ] E` (`E` finite-dimensional complex normed space). `ν_{ρ,σ}` is `scaleCLE ρ σ` (`norm_scaleCLE`). This covers every consumer
   (N 6/7/11b three-block norm, P 11a-2 `ν(a,c)`), needs no instance on a type synonym, and reduces to the sup norm by conjugation.
   The flow is a total definition `flow F Ω t z` (value at `t` of a solution in `Ω` on `[-1,1]` through `z`, chosen if one exists); the standing
   hypotheses are the Prop-structure `SmallField W Ω F ε` (`Ω` open, `F` holomorphic, `ν(F) ≤ ε ≤ 1/2`), a source premise, never a conclusion.
5. **Reuse K, do not re-plan** (Section 2). `bpN:p1:norm-convert` is already K's `summableWeighted_torusCoeff`; `bpN:p4:general-cauchy`
   is K's `norm_fderiv_le_of_closedBall` by `δ ↑ R`; B.1/B.2/B.3 are coefficientwise corollaries of K's `decay`, `Fourier.convolution`,
   `Fourier.weightedNorm_partialCoeff_le`; `ext-weier` is `uniform_limits` + C.1; `holo-real` is `holomorphic_regularity` + `real_restriction` +
   `hamiltonian_real`. The ODE content of `flow` is Part 3 (`KAM.ODE.*`), proved.
6. **Part 3 coordination (C1, C2).** `Data` and `Wdom` (Part 3 `s-N#data`) are declared once, in `Interfaces/Setting.lean`; N3-10a/b must import them
   instead of declaring them. `holo_input` (Part 3) is a corollary of `holo_real_b,c,d` and is proved in package P1-2; package N3-10a is absorbed.
7. **Packages.** 25 prover packages (W4-1..8 (+9 optional), C5-1..10, P1-1..7 incl. 3a/3b), 150-800 lines each, about 11,700 lines in 7 waves.
8. **Hard rules** (verbatim, binding for every Lean brief):
   1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default heartbeats, report it as a design signal.
   2. No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules, preserving public import paths as cheap facades.

## 1. Carriers and standing objects

| Object | Lean | Notes |
|---|---|---|
| `V_r D`, `𝒟_{r,s}` | `polyNbhd D r`, `Dom n D r s := complexStrip n s ×ˢ polyNbhd D r` | frozen `actionNbhd B r = polyNbhd (realInclusion n '' B) r` (`actionNbhd_eq_polyNbhd`) |
| class `O(r,s)` | `InClass D r s u` | holomorphic + periodic on `Dom` |
| `û_k(I)` | `coeff u I k := torusCoeffW (x ↦ u (ι x, I)) k` | `ι x = fun j => (x j : ℂ)` |
| `\|u\|_{r,s} ≤ M` | `WBound D r s u M` | summability inside; `wbound_iff` for `wnorm` |
| `∂_{θⱼ}u, ∂_{Iᵢ}u` | `dtheta j u`, `dI i u` | `fderiv ℂ u z (Pi.single j 1, 0)` etc. |
| `X_φ` | frozen `KAM.hamiltonianVectorFieldℂ φ` | `= KAM.hamiltonianJ (fderiv ℂ φ z)` (K) |
| `{u,v}`, `ad_φ^j u` | `poissonBracket`, `adPow φ j u` | `poissonBracket_eq_fderiv_field`: `{u,v} = Du·X_v` |
| `ν_{ρ,σ}` | `scaledNorm ρ σ`, gauge `scaleCLE ρ σ hρ hσ` | `σ` weights angles, `ρ` actions |
| `Ω^c` | `gaugeInterior W Ω c` | closed `ν`-balls; open (`isOpen_gaugeInterior`) |
| `X^t(z)` | `flow F Ω t z` | meaningful for `\|t\| ≤ 1`, `z ∈ Ω^{1/2}` |
| symplectic form | `symplFormC` (complexified `KAM.symplecticForm`; `= v·Ω₀w` for `KAM.omegaZero`) | `YᵀJY = J` as form invariance; `YJYᵀ = J` as `{ξ∘Y, η∘Y} = {ξ,η}` for functionals via `KAM.hamiltonianJ` |
| real points | `KAM.realInclusion n`, `realInclusion₂ n`, `RealOn U u` | |
| `Data`, `Wdom` | structure / `univ ×ˢ ball 0 (R+s)` | Part 3's, moved to Part 1 |
| the seven data | `HeadParams n` (`R s M m Mc wmin`), `.Pos`, `HeadHyp p h` = (H1)-(H5) | constants `HeadParams.q B mu ell r0 A s0 sigma F epsStar C c T eps0`, exponent `expo n = 1/(2n)`; `ω_min` is `wmin` (`ω` is a token under `open scoped ContDiff`) |
| `P = {J \| ‖J‖ ≤ R/2}` in `ℂⁿ` | `centralSet n R` | the set `D` of the tubes |

Standing structures (Prop): `Data`, `InClass`, `SmallField`, `ComposeData` (`0<ρ<r≤r'-ρ`, `0<σ<s≤s'-σ`, `φ ∈ O(r',s')`, `0 ≤ Φ`, bound `Φ`, `η = 2Φ/(ρσ) ≤ 1/2`; with
`.omega = Dom (r'-ρ)(s'-σ)`, `.gauge`), `CanonData` (`0<ρ<r/2`, `0<σ<s/2`, `φ ∈ O(r,s)`, `0≤Φ`, `Φ/(ρσ) ≤ 1/2`). Instances: none declared; only Mathlib's norms on `Pi`/`Prod`
and `NormedSpace.complexToReal` (so `KAM.ODE.IsSolutionIn` applies to complex `E`).

## 2. What K and Part 3 already prove (cited, not re-planned)

| Need | Existing result | Used for |
|---|---|---|
| Cauchy, operator norm, any complex normed `E` | `KAM.norm_fderiv_le_of_closedBall` (`closedBall z δ ⊆ U`) | `general_cauchy` (C.1) = `δ ↑ R`; `flow_c` derivative bound |
| `\|û_k\| ≤ e^{-2πρ'\|k\|₁}A`, `W`-valued | `KAM.decay`, `KAM.decay_boundary_radius` | B.1(b), `norm_convert` |
| `∑\|û_k\|e^{2π(ρ-δ)\|k\|₁} ≤ coth(πδ)ⁿA` | `KAM.summableWeighted_torusCoeff` | `norm_convert` (proved in the file), B.1(b) at fixed `I` |
| `u = ∑ û_kχ_k`, `‖fourierSum‖ ≤ ‖·‖` | `KAM.eq_fourierSum_torusCoeff`, `norm_fourierSum_le`, `torusCoeff_fourierSum`, `differentiableOn_fourierSum`, `eq_zero_of_torusCoeff_holomorphic` | `norm_convert_converse`, coefficients (c),(d), B.1(a) |
| coefficient convolution `∥a*b∥ ≤ ∥a∥∥b∥` | `KAM.Fourier.convolution`, `weightedNorm_convolution_le`, `SummableWeighted.convolution`, `summable_norm_convolution`, `exp_modeSize_le_mul` | B.2 (remaining: Cauchy-product identification) |
| derivative loss `2π/(eδ)` | `KAM.Fourier.weightedNorm_partialCoeff_le`, `SummableWeighted.partialCoeff`, `mul_exp_radius_sub_le` | B.3(a) coefficientwise |
| `∑ e^{-x\|k\|₁} = coth(x/2)ⁿ`, `x e^{-ax} ≤ 1/(ea)` | `KAM.Fourier.hasSum_exp_neg_modeSize`, `exp_sums`, `rpow_mul_exp_neg_le` | B.1(b), B.3, projections |
| uniform limits | `KAM.uniform_limits` | `uniform_limit_holomorphic` |
| holomorphic regularity, symmetric `D²`, any finite-dim `E` | `KAM.holomorphic_regularity(_of_finiteDimensional)` | everywhere (`C^∞`, `DF` holomorphic) |
| real restriction, `X_H = X_{h+f}∘ι` | `KAM.real_restriction`, `hamiltonian_real`, `hamiltonian_real_fderiv`, `holomorphic_analytic(_real)`, `realInclusion₂` | `holo_real`, `flow_e`, reality parts |
| `X_φ = J Dφ`, `gradientColumn`, `omegaZero`, `omegaZeroMatrix` | `KAM.hamiltonianJ`, `hamiltonianVectorFieldℂ_eq_J`, `omegaZero_hamiltonianVectorFieldℂ`, `Matrix/Norms` | Part 5 setting, `symplectic` (matrix form for `det`) |
| first-order Taylor/increments | `KAM.taylor`, `KAM.increments` | **not** the integral-remainder form along a real curve (Mathlib has none: only `taylor_mean_remainder*`); `taylor_lie` proves it |
| ODE layer | `KAM.ODE.IsSolutionIn`, `gen_uniqueness(_inter)`, `picard_lindelof_ball`, `gen_short`, `gen_uniform_exist`, `gen_maximal`, `gen_continuation_compact`, `gen_symmetry_neg`, `ham_smooth_c1` | `flow_a`, `flow_c`, `flow_d` |

Not in K or Mathlib (new): holomorphic dependence of a parametric integral on several complex variables in the form `ext-param`
(Mathlib has `hasFDerivAt_integral_of_dominated_of_fderiv_le` only); weighted norms with `I`-dependence; bracket estimates; flows of holomorphic fields with
holomorphic dependence on initial data; integral Taylor remainder; Schwarz for `C³`.

## 3. Node tables

"Mathlib/K" lists names `#check`ed in this snapshot (`hasFDerivAt_integral_of_dominated_of_fderiv_le`, `tendstoUniformlyOn_tsum`, `Summable.tsum_prod`,
`Complex.norm_deriv_le_of_forall_mem_sphere_norm_le`, `ContDiffOn.const_smul`, `fderiv_const_smul`, `ContDiffAt.isSymmSndFDerivAt`,
`ContDiffAt.iteratedFDeriv_comp_perm` (only for smoothness `⊤`=`ω`), `ContDiffOn.restrict_scalars`, `ContinuousLinearMap.det`, `ContinuousLinearEquiv.smulLeft/prodCongr`,
`intervalIntegral.integral_deriv_eq_sub`, `intervalIntegral.norm_integral_le_of_norm_le_const`, and all K names above).

### 3.1 Part 1 (`KAM/Nekhoroshev/Interfaces/`)

| Node | Lean | Module |
|---|---|---|
| `ext-linalg`, `ext-restrict`, `ext-prod` | none (Mathlib: `LinearMap.injective_iff_surjective_of_finrank_eq_finrank`, `HasFDerivAt.restrictScalars`, `ContDiffOn.restrict_scalars`) | — |
| `ext-norms`, `norm-compare` | `euclid`, `norm_le_euclid`, `modeSize_euclid_compare`, `lattice_ball_inclusions`, `bilinear_euclid_bound` | `Norms` |
| `s-holo#data` | `Data`, `Wdom` | `Setting` |
| `realdomain` (a)-(d) | `realActionDomain_eq`, `isOpen_realActionDomain`, `ball_subset_realActionDomain`, `isOpen_Wdom`, `realInclusion₂_preimage_complexDomain`, `isOpen_actionNbhd_ball`, `isOpen_complexDomain`, `realInclusion_preimage_actionNbhd`, `tube_subset`, `tube_real`, `complexStrip_mono`, `complexStrip_zero` | `Domains` |
| `holo-real` (a)-(e) | `holo_real_a..e`, `complexHessian` | `HoloReal` |
| (Part 3 `holo-input`) | `holo_input` | `HoloReal` |
| `partials` | `partials` | `Hessian` |
| `hessian-convert` | `hessian_convert` | `Hessian` |
| `conic-coercive` | `conic_coercive` | `QuasiConvex` |
| `qc-convert` | `qcQ qcB qcMu qcEll`, `qc_convert` (`QuasiConvex`); scaling sentence: `qc_convert_tilde` (`Period`) | |
| `period-convert` (a)-(e) | `periodLift tildeH tildeh tildef`, `realHamiltonian_tilde`, `isSolutionOn_tilde_iff`, `frequencyMap_tildeh`, `fderiv_fderiv_realPart_tildeh`, `tilde_hypotheses`, `tildef_domain`, `tildef_periodic`, `tildef_fourier` | `Period` |
| `norm-convert` (+`#converse`, route nodes) | `norm_convert`, `norm_convert_converse` (proved from K) | `ConstantsAnalytic` |
| `constants`, `constants#data` (a)-(h) | `HeadParams`, `HeadHyp`, `centralSet`, defs, `const_pos`, `const_eps0`, `const_size`, `const_tubes`, `const_hyp`, `const_perturbation`, `const_exceptional`, `const_time`, `const_conclusion` | `Constants` (numerics: pos, eps0, size, conclusion, arithmetic half of time), `ConstantsAnalytic` (tubes, hyp, perturbation, exceptional, analytic half of time) |
| all `stepN:p1:*` | none (proof steps) | — |

### 3.2 Part 4 (`KAM/Weighted/`)

| Node | Lean | Module |
|---|---|---|
| `domains` (a),(b) | `polyNbhd`, `Dom`, `polydisc`, `isOpen_polyNbhd`, `isOpen_Dom`, `polyNbhd_mono`, `Dom_mono`, `polydisc_subset_Dom`, `actionNbhd_eq_polyNbhd` | `Domains` |
| `norm`, `norm#monotone` | `InClass`, `coeff`, `modeWeight`, `wsum`, `WSummable`, `WBound`, `HasFiniteWNorm`, `wnorm`, `wbound_iff`, `WBound.mono`, `wbound_pi_apply`, `wbound_pi_of_components` | `Norm` |
| `ext-param` | `holomorphic_parametric_integral` | `Parametric` |
| `general-cauchy` | `general_cauchy` | `Parametric` |
| `ext-weier` | `uniform_limit_holomorphic` | `Parametric` |
| `ext-series` | none (Tonelli: `Summable.tsum_prod`; Cauchy product: K's `convolution`) | — |
| `coefficients` (a)-(d) | `dtheta`, `dI`, `fourierSeries`, `coeff_differentiableOn`, `coefficients_deriv`, `coefficients_series`, `coefficients_repr` | `Coefficients` |
| `sup-weighted` | `coth`, `sup_le_wbound`, `wbound_of_sup_bound` | `SupWeighted` |
| `algebra` | `coeff_mul`, `wbound_mul`, `wbound_pow` | `Algebra` |
| `cauchy` | `cauchy_theta`, `cauchy_action`, `cauchy_loss` | `Cauchy` |
| `s-b4#data`, `bracket` | `wbound_bracket` (bracket defined in `Canonical/Setting`) | `Bracket` |
| `projections` | `projMode`, `truncate`, `modeAverage`, `projections`, `truncation_tail` | `Projections` |
| `sharp` (optional) | `SBound`, `wbound_of_sbound`, `sharp_sup_le`, `sharp_of_sup_bound`, `sharp_mul`, `sharp_cauchy_theta`, `sharp_cauchy_action`, `sharp_bracket`, `sharp_projections` | `Sharp` |
| `dictionary` (remark) | none | — |

### 3.3 Part 5 (`KAM/Canonical/`)

| Node | Lean | Module |
|---|---|---|
| `setting` | `poissonBracket`, `adPow`, `scaledNorm`, `scaleCLE`, `norm_scaleCLE`, `symplFormC`, `poissonBracket_eq_fderiv_field`, `_antisymm`, `differentiableOn_poissonBracket`, `differentiableOn_adPow`, `poissonBracket_eq_zero_of_snd`, `RealOn` | `Setting` |
| `vf-bound` | `differentiableOn_hamField`, `vf_bound` | `VectorField` |
| `flow` (a),(d) | `gaugeInterior`, `flow`, `SmallField`, `isOpen_gaugeInterior`, `gaugeInterior_mono`, `ball_subset_gaugeInterior`, `flow_a`, `flow_d` | `Flow` |
| `flow` (b) | `flow_b` | `FlowRegular` |
| `flow` (c),(e) | `flow_c`, `flow_e` | `FlowInverse` |
| `symplectic`, `canonical` | `symplectic`, `canonical_bracket`, `canonical_field`, `canonical_orbit` | `Symplectic` |
| `lie-derivative`, `taylor` | `lie_derivative`, `taylor_lie`, `taylor_poschel` | `Lie` |
| `adjoint` | `adjoint_bound` | `Adjoint` |
| `composition` (i)-(iv) | `ComposeData`, `.omega`, `.gauge`, `composition_domain`, `composition_series`, `composition_t`, `composition_real` | `Composition` |
| `composition-integral` | `composition_integral` | `CompositionIntegral` |
| `transform` | `liftRemainder`, `transform` | `Transform` |
| `canonical-map` (a)-(e) | `CanonData`, `.omega`, `.gauge`, `canonical_map_a..e` | `CanonicalMap` |
| `sharp-composition`, `route`, `use` | none (see Section 5, D13) | — |

## 4. Conventions binding for all modules

- Lean module system: copyright, `module`, `public import` of everything the statements use, docstring, `@[expose] public noncomputable section`
  (defs `polyNbhd`, `Dom`, `coeff`, `WBound`, `flow`, `gaugeInterior`, `poissonBracket`, `adPow`, the `HeadParams` constants must unfold: exposed).
- Side conditions are binders. Widths: every Part 4/5 statement that reads coefficients carries `0 < s` (D27); `0 < r` is not needed (`V_r D = ∅` for `r ≤ 0`).
- `ContDiffOn ℝ ∞` with `open scoped ContDiff` (not `⊤` = `ω`). `n ≥ 1` only where a constant divides by `n` (`conic_coercive`, `qc_convert`, `const_*`).
- Derivatives are two-sided `HasDerivAt` (as `IsSolutionIn`), also at the ends of `[-1,1]`; hence Ω-interior slack: `Ω^{1/2}` solutions exist on `[-1-η', 1+η']` (Section 7, C5-2).
- Prover may drop a hypothesis found unused (strictly stronger statement) only through the orchestrator; may not add one.
- `ω` is a reserved token (`open scoped ContDiff`): never use it as a binder name.

## 5. Departures from the literal blueprint text

| # | Where | Lean form | Reason |
|---|---|---|---|
| D1 | Part 4 norm | `WBound` bound predicate (+ `wnorm`, `wbound_iff`) | no junk sup/tsum values |
| D2 | `sup-weighted` (b) | hypothesis `InClass D r (s+σ) u` | blueprint issue B1 below |
| D3 | all coefficient statements | `0 < s` explicit | D27; false for `s ≤ 0, n ≥ 1` (class vacuous, coefficients unconstrained) |
| D4 | Part 4 | vector/matrix `W` only where the blueprint needs it and the proof is per-`k` (norm, coefficients, B.1, B.3); algebra, bracket, projections, series scalar | products and brackets are scalar in every consumer |
| D5 | `ComposeData`, `CanonData` | field `0 ≤ Φ` | "finite norm" is a value `≥ 0`; for `D = ∅` the bound predicate is vacuous and `SmallField` needs `ε ≥ 0` |
| D6 | `bpN:p5:flow` | canonical total `flow` + `SmallField`; `Ω^{1/2}` closed `ν`-balls | statements about "the" flow without `∃ X` |
| D7 | `bpN:p5:flow` generality | gauge `W`: `ν x = ‖W x‖` instead of an arbitrary complex norm | see issue B4 |
| D8 | `symplectic` | `det Y = 1 ∨ -1` (blueprint `±1`); `YJYᵀ=J` as functional-bracket invariance | basis-free |
| D9 | `Data`, `Wdom`, `holo_input` | declared in Part 1 | Part 3 coordination C1/C2 |
| D10 | `qc-convert` last sentence | separate `qc_convert_tilde` | needs `period-convert` (b) |
| D11 | constants (d),(g),(h) | sup-free: pointwise bounds + arithmetic for every `Ω₀ ∈ (0, 2πnM]`; `ω_min` named `wmin` | no `sup` over a ball; `ω` token |
| D12 | `composition` (ii) | "converges in the norm" as: `∀ ε>0, ∃ N, ∀ N' ≥ N, WBound (S - partial sum) ε` | bound-form of norm convergence |
| D13 | `sharp`, `sharp-composition` | Part 4 `♯` statements signed (optional package W4-9); Part 5 `♯` not planned | no consumer cites `bpN:p4:sharp`/`bpN:p5:sharp-composition` (grep of `blueprint-{N,P,I}`); P's ruling: "P uses N's norm". If ever needed, parametrize Part 5 by an abstract weighted-norm calculus rather than copying |
| D14 | `holo-real` (b) | all-order formula `((D^kH ζ : ℝ) : ℂ) = D^kG (ιζ)` | blueprint "for all orders" |
| D15 | `period-convert` (e) | `HasSum` identity (`character k (φ/2π) = e^{ik·φ}`) | Pöschel's coefficient as a change of variable |
| D16 | `partials` | any open `U` with `B(M)` (no `R,s`/`⊆ ℬ_s(R)`) | blueprint's `U` is arbitrary; Schwarz for `C³` is the only non-Mathlib step |
| D17 | `taylor` | remainder bound as `‖·‖ ≤ B/N!` given `‖ad^N u‖ ≤ B` on the trajectory | avoids `max` |

## 6. Blueprint issues

None is a mathematical defect of a theorem; B1-B3 are mis-quantifications, B4-B5 generality/degenerate-case notes. Corrected statements are in the signatures.

**B1. `bpN:p4:sup-weighted` (b), p4 L96-98.** "Let `u ∈ O(r,s)` ... If `σ>0` and `|u| ≤ M` on `𝒟_{r,s+σ}` (so `u ∈ O(r,s+σ)`)": `u ∈ O(r,s)` is a function on `𝒟_{r,s}` only, so the bound on the larger domain is meaningless and "so" is not a deduction (periodic holomorphic on the small strip does not extend). Correct hypothesis: `u ∈ O(r, s+σ)` (`InClass D r (s+σ) u`) with `|u| ≤ M` there. Lean: `wbound_of_sup_bound`. (Part 1 `norm-convert` is stated for `u : T_ρ → ℂ` and is correct as is.)

**B2. Part 4 lemmas without widths (`coefficients`, `sup-weighted`, `algebra`, `cauchy`, `projections`).** Stated for "`u ∈ O(r,s)`" with `r,s > 0` only in the definitions. For `s ≤ 0`, `n ≥ 1` the class is vacuous but `û_k` (real-torus integrals) is unconstrained, so `û_k` need not be holomorphic and the Fourier statements are false. Corrected: `0 < s` in every statement that reads coefficients (D27 convention).

**B3. `bpN:p5:composition`, `canonical-map`: "`φ ∈ O` of finite norm".** For `D = ∅` the norm predicate is vacuous for every real bound, including negative, which would make `ε := Φ/(ρσ) < 0`. Corrected: `Φ ≥ 0` in `ComposeData`/`CanonData`.

**B4. `bpN:p5:flow`: "`ν` a complex norm on `ℂᴺ`".** Not expressible without a second norm instance on `E`; and arbitrary norms are not of the form `‖W·‖`. Lean covers `ν = ‖W ·‖`, which contains every use in `blueprint-{N,P}` (weighted max norms: `ν_{ρ,σ}`, 11b's three blocks, P 11a-2 `ν(a,c)`). If a consumer needs another norm (ℓ¹-type), it needs a separate statement.

**B5. `bpN:p5:flow` (a) endpoints.** `IsSolIn F Ω [-1,1]` is two-sided at `t = ±1`; the blueprint's single Picard step with ball radius exactly `1/2` and `ε = 1/2` would exit at `|t| > 1`. Fixed by the blueprint's own slack: `Ω` open and `B̄_ν(z,1/2)` compact give `η>0` with `B̄_ν(z,1/2+η) ⊆ Ω`; take `a = 1/2+η`, `T = 1+2η` (`εT ≤ a`). No change to the statement.

Checked and found correct (no defect): B.2 `|u^j| ≤ |u|^j`; B.3(a) sum over `j` inside the `sup` (the repair already in the blueprint); B.4 constants and the `κ = ρ/h` induction in `adjoint` (`r'-r_{i-1}+κ ≥ (h+i)κ`); `composition` bound `(1-eη/4)^{-1} ≤ (1-η)^{-1}` for `η ≤ 1/2`; `canonical-map` domain chain `Dom(r-2ρ) ⊆ Ω¹`, `Dom(r-3ρ/2) ⊆ Ω^{1/2}` (needs `ρ < r/2`, `r-3ρ/2 > 0`); `hessian-convert` operator norm `≤ nM_ℂ`; constants (b),(f),(g),(h) arithmetic (`2T = A²s₀/(2πnM)`); `det Y = 1` (blueprint `±1` is weaker, fine).

## 7. Modules, import DAG, packages

Sizes are estimates (cap 1500, target ≤ 800).

| Module | Content | Lines |
|---|---|---|
| `Weighted/Domains` | `polyNbhd`, `Dom`, `polydisc`, openness, mono, `actionNbhd_eq_polyNbhd` | 150 |
| `Weighted/Norm` | `InClass`, `coeff`, `WBound`, `wnorm`, `wbound_iff`, mono, `Pi` comparison | 300 |
| `Weighted/Parametric` | `holomorphic_parametric_integral`, `general_cauchy`, `uniform_limit_holomorphic` | 450 |
| `Weighted/Coefficients` | `coeff_differentiableOn`, `_deriv`, `_series`, `_repr` | 600 |
| `Weighted/SupWeighted` | B.1 | 300 |
| `Weighted/Algebra` | B.2 | 450 |
| `Weighted/Cauchy` | B.3 | 450 |
| `Weighted/Projections` | `projMode`, `truncate`, `modeAverage` | 300 |
| `Weighted/Bracket` | B.4 (imports `Canonical/Setting`) | 400 |
| `Weighted/Sharp` (optional) | `♯` | 600 |
| `Canonical/Setting` | bracket, `adPow`, `scaledNorm`, `scaleCLE`, `symplFormC`, algebra | 250 |
| `Canonical/Flow` | gauge interiors, `flow`, `SmallField`, `flow_a`, `flow_d` | 700 |
| `Canonical/FlowRegular` | `flow_b` | 600 |
| `Canonical/FlowInverse` | `flow_c`, `flow_e` | 500 |
| `Canonical/VectorField` | `vf_bound` | 250 |
| `Canonical/Symplectic` | `symplectic`, `canonical_*` | 500 |
| `Canonical/Lie` | `lie_derivative`, `taylor_lie`, `taylor_poschel` | 450 |
| `Canonical/Adjoint` | `adjoint_bound` | 400 |
| `Canonical/Composition` | `ComposeData`, `composition_*` | 550 |
| `Canonical/CompositionIntegral` | `composition_integral` | 300 |
| `Canonical/Transform` | `transform` | 400 |
| `Canonical/CanonicalMap` | `canonical_map_a..e` | 550 |
| `Interfaces/Norms` | `euclid`, comparisons | 200 |
| `Interfaces/Setting`, `Domains` | `Data`, `Wdom`; `realdomain` | 80, 250 |
| `Interfaces/HoloReal` | `holo_real_a..e`, `holo_input` | 600 |
| `Interfaces/Hessian` | `partials`, `hessian_convert` | 400 |
| `Interfaces/QuasiConvex` | `conic_coercive`, `qc_convert` | 400 |
| `Interfaces/Period` | tilde defs, `period-convert`, `qc_convert_tilde` | 550 |
| `Interfaces/Constants` | `HeadParams`, defs, numerics | 450 |
| `Interfaces/ConstantsAnalytic` | `const_tubes/hyp/perturbation/exceptional/time`, `norm_convert(_converse)` | 550 |

**Import DAG** (`A ← B`: B imports A): `K (Strip, Fourier) ← Weighted.*, Interfaces.HoloReal`; `KAM.ODE.* ← Canonical.Flow*`;
`Weighted.Domains ← Norm ← Coefficients ← {SupWeighted, Algebra, Cauchy, Projections}`; `Parametric ← Coefficients, Canonical.FlowRegular`;
`Canonical.Setting ← Weighted.Bracket, Canonical.*`; `{Algebra, Cauchy, Canonical.Setting} ← Bracket ← Adjoint`; `{Cauchy, SupWeighted} ← VectorField`;
`Flow ← FlowRegular ← FlowInverse`; `{FlowRegular, Setting} ← {Symplectic, Lie}`; `{VectorField, Symplectic, FlowInverse} ← CanonicalMap`;
`{Adjoint, VectorField, Lie, FlowRegular, SupWeighted} ← Composition ← CompositionIntegral, Transform`;
`Interfaces.{Norms, Setting, Domains} ← HoloReal ← Hessian ← QuasiConvex ← Period(qc_convert_tilde) ← ConstantsAnalytic`; `Weighted.{Domains, SupWeighted} ← ConstantsAnalytic`.
No module imports a provider or a frozen theorem; only frozen `Defs`. `Nekhoroshev/ODE/Specialization` (Part 3) imports `Interfaces/Setting` and `HoloReal`.

Every package proves its nodes exactly as in Appendix A; a signature changes only through the orchestrator after a statement audit. Hard rules (Section 0.8) go into every brief.

| Package | Nodes | Modules | Lines | After | Wave |
|---|---|---|---|---|---|
| W4-1 | domains, norm, `#monotone` | `Domains`, `Norm` | 450 | — | 1 |
| W4-2 | ext-param, general-cauchy, ext-weier | `Parametric` | 450 | — | 1 |
| C5-1 | setting | `Canonical/Setting` | 250 | — | 1 |
| P1-1 | norm-compare, `Data`/`Wdom`, realdomain | `Norms`, `Setting`, `Domains` | 530 | — | 1 |
| P1-3a | conic-coercive | `QuasiConvex` (part) | 250 | — | 1 |
| P1-5 | constants (numerics) | `Constants` | 450 | — | 1 |
| W4-3 | coefficients | `Coefficients` | 600 | W4-1, W4-2 | 2 |
| C5-2 | flow (a),(d), gauge, `flow` | `Flow` | 700 | C5-1; Part 3 (`KAM.ODE`) | 2 |
| P1-2 | holo-real, holo-input | `HoloReal` | 600 | P1-1 | 2 |
| P1-4 | period-convert | `Period` (without `qc_convert_tilde`) | 450 | P1-1 | 2 |
| W4-4 | sup-weighted | `SupWeighted` | 300 | W4-3 | 3 |
| W4-5 | algebra | `Algebra` | 450 | W4-3 | 3 |
| W4-6 | cauchy | `Cauchy` | 450 | W4-3 | 3 |
| W4-7 | projections | `Projections` | 300 | W4-3 | 3 |
| C5-3 | flow (b) | `FlowRegular` | 600 | C5-2, W4-2 | 3 |
| P1-3b | partials, hessian-convert, qc-convert; then `qc_convert_tilde` | `Hessian`, `QuasiConvex`, `Period` | 800 | P1-2, P1-3a, P1-4 | 3 |
| W4-8 | bracket | `Bracket` | 400 | W4-5, W4-6, C5-1 | 4 |
| C5-4 | vf-bound | `VectorField` | 250 | W4-4, W4-6 | 4 |
| C5-5 | symplectic, canonical, flow (c),(e) | `FlowInverse`, `Symplectic` | 1000 (two sessions) | C5-3, C5-1 | 4 |
| C5-6 | lie-derivative, taylor | `Lie` | 450 | C5-3, C5-1 | 4 |
| C5-7 | adjoint | `Adjoint` | 400 | W4-8 | 5 |
| C5-10 | canonical-map | `CanonicalMap` | 550 | C5-4, C5-5 | 5 |
| P1-6 | constants (analytic), norm-convert | `ConstantsAnalytic` | 550 | P1-3b, P1-4, P1-5, W4-4 | 5 |
| C5-8 | composition, composition-integral | `Composition`, `CompositionIntegral` | 850 | C5-7, C5-4, C5-6, W4-4 | 6 |
| C5-9 | transform | `Transform` | 400 | C5-8, C5-6 | 7 |
| W4-9 (optional) | sharp | `Sharp` | 600 | W4-8 | deferred |

(`flow_c`, `flow_e` sit in C5-5 but are needed by C5-10 and `symplectic` only through `flow_b`; if the orchestrator wants them earlier, split `FlowInverse` out as C5-3b.)
Critical path: W4-1 → W4-3 → W4-6 → W4-8 → C5-7 → C5-8 → C5-9 (7 waves). Early consumer value: wave 3 gives all of Part 4 except bracket, flow regularity, holo-real, qc-convert; wave 4 gives bracket, canonical maps' algebra.

### 7.1 Proof plans

**W4-1.** `isOpen_polyNbhd`: `⋃ I' ∈ D, ball I' r`; `isOpen_Dom`: `IsOpen.prod (KAM.isOpen_complexStrip n s)`; `polydisc_subset_Dom`: `|Im θ'ⱼ| ≤ |Im θⱼ| + (s-s')`, `‖I'-I₀‖ ≤ ‖I'-I‖+‖I-I₀‖`. `WBound.mono`: `Summable.of_nonneg_of_le` + `Real.exp_le_exp` + `Fourier.modeSize_nonneg`. `wbound_iff`: `ciSup_le`/`le_ciSup`/`BddAbove`. `Pi` comparison: `coeff u I k a = coeff (u_a) I k` via `ContinuousLinearMap.integral_comp_comm` (`proj a`; integrability from continuity, needs `InClass`, `0<s`, `KAM.ofReal_mem_complexStrip`), then `norm_le_pi_norm`, `pi_norm_le_iff_of_nonneg`, `Finset.sum_le`.

**W4-2.** `holomorphic_parametric_integral`: at `I₀ ∈ U` choose `η` with `closedBall I₀ η ⊆ U`, apply `hasFDerivAt_integral_of_dominated_of_fderiv_le` (`𝕜 := ℂ`, `bound` = constant from `IsCompact.exists_bound_of_continuousOn` on `Q ×ˢ closedBall`), measurability by `ContinuousOn.aestronglyMeasurable`. `general_cauchy`: `norm_fderiv_le_of_closedBall_bound` with `δ<R`, `ball ⊆`, then `le_of_forall_lt` as `δ ↑ R`. `uniform_limit_holomorphic`: `general_cauchy` on `K j - K l` gives uniform Cauchy derivatives on `{z | closedBall z η ⊆ U}`; limit `Λ` in the complete `E →L[ℂ] F`; K's `uniform_limits` on the open `V_η = {z | η < infDist z Uᶜ}` (⊆ the set), then union over `η`.

**W4-3.** (a) `holomorphic_parametric_integral` with `G x I = character (-k) (ι x) • u (ι x, I)`; continuity of `u`, `D_I u` on `Dom` by `holomorphic_regularity_of_finiteDimensional` on `(Fin n → ℂ) × (Fin m → ℂ)`. (b) derivative: `u (θ+e_j, I) = u(θ, I)` differentiated; `θ`-formula is K's `torusCoeff_fderiv`-type integration by parts at fixed `I` (`KAM/Strip/Cohomological` `torusCoeff_fderiv`, or `Fourier` 1-D shift); `I`-formula from `ext-param` derivative clause. (c) Weierstrass M-test `tendstoUniformlyOn_tsum` with `‖aₖ χₖ‖ ≤ S e^{-2π(s-s')|k|₁}` (`KAM.norm_coeff_mul_character_le`, `hasSum_exp_neg_modeSize`), holomorphy by `uniform_limit_holomorphic` on each `Dom r s'`, coefficients by `torusCoeff_fourierSum` (needs `0<s`, summability at radius `≥ 0`). (d) `eq_zero_of_torusCoeff_holomorphic` for `u(·,I) - ∑ û_kχ_k` (no boundedness needed); `W`-valued case by duality `NormedSpace.norm_le_dual_bound` as in K's `norm_torusCoeffW_le_of_dual`.

**W4-4.** (a) `‖u z‖ ≤ ∑ ‖û_k‖‖χ_k z.1‖ ≤ ∑ ‖û_k‖ e^{2π s|k|₁}` (`KAM.norm_character_le`, `coefficients_repr`). (b) fixed `I`: `KAM.decay_boundary_radius` at radius `s+σ` (`W`-valued, `0<s+σ`), termwise `≤ e^{-2πσ|k|₁} M`, `Fourier.hasSum_exp_neg_modeSize` with `x = 2πσ`, `cosh(x/2)/sinh(x/2) = coth(πσ)`; scalar fixed-`I` case is `KAM.summableWeighted_torusCoeff` verbatim.

**W4-5.** Fixed `I`: `u(x,I)=∑ û_kχ_k`, `v(x,I)=∑ v̂_lχ_l` absolutely (representation), Cauchy product over `ℤⁿ` (`summable_norm_convolution`, `Summable.tsum_prod`), termwise integration against `χ_{-k}` (uniform convergence, `integral_tsum` or `hasSum_integral_of_summable_norm`), giving `coeff_mul`; norm: `Fourier.weightedNorm_convolution_le` (needs `0 ≤ s`). `InClass`: product of holomorphic periodic. Induction for `wbound_pow` (`j = 0`: coefficients of `1`).

**W4-6.** (a) `coefficients_deriv` + `Fourier.weightedNorm_partialCoeff_le` (or its termwise form `partialCoeff_weight_le`) summed over `j`: `∑ⱼ 2π|kⱼ| = 2π|k|₁` and `x e^{-ax} ≤ 1/(ea)` (`mul_exp_radius_sub_le`); global single-`j` form by `≤` of the sum. (b) coefficient Cauchy: `fderiv ℂ (û_k) I e_i` bounded by `general_cauchy`/`norm_fderiv_le_of_closedBall` applied to `û_k` on `ball I (r₀-r) ⊆ V_{r₀}D`, then Tonelli in `k`: `∑ₖ sup-over-circle` — use `‖û_k(I')‖` bound on the ball, sum over `k` first (`Summable.tsum_le_tsum`) to get `wsum u s₀ I' ≤ M`.

**W4-8.** `{u,v} = ∑ ∂θu·∂Iv - ∑ ∂Iu·∂θv`; pointwise in `I`: `wsum` subadditive (coefficients of sums), `coeff_mul` per product, then `Σᵢ aᵢbᵢ ≤ (Σ aᵢ) max bᵢ` and `cauchy_theta` (pointwise sum) / `cauchy_action` (global), restriction by `WBound.mono`; sup over `I` last. `InClass` from `differentiableOn_poissonBracket`.

**W4-7.** `coefficients_series` with `a_k = 1_S(k) û_k` gives all of `projections`; `modeAverage`: `coeff_differentiableOn`; tail: `modeWeight (s-σ) k = e^{-2πσ|k|₁} modeWeight s k ≤ e^{-2πKσ} modeWeight s k` for `|k|₁ > K`; identity `u - T_Ku = P_{|k|>K}u` by `coefficients_repr` and `tsum` split over `S, Sᶜ` (`tsum_add_tsum_compl`).

**C5-1.** Algebra: `poissonBracket_eq_fderiv_field` by expanding `fderiv ℂ u z` on the basis `(e_i,0),(0,e_i)` (`ContinuousLinearMap` linearity, `Prod` decomposition `x = ∑ xᵢ(eᵢ,0)+∑ yᵢ(0,eᵢ)`); holomorphy of bracket/`adPow` from `KAM.holomorphic_regularity_of_finiteDimensional`; `norm_scaleCLE`: `Prod.norm_def`, `norm_smul`, `Complex.norm_real`/`norm_inv`.

**C5-2.** Reduce to the sup norm by conjugation `F' = W ∘ F ∘ W⁻¹` on `W '' Ω`, or work in the gauge directly. Existence: `Ω^{1/2}` compact balls give `η`; `picard_lindelof_ball` (`a = 1/2+η`, `T = 1+2η`, `M = ε` or `max ε 1`-style; `ε = 0` constant solution) then `gen_short` keeps the solution in the ball (displacement `‖W(α t - z)‖ ≤ ε|t|`), so it is an `IsSolutionIn F Ω` on a neighbourhood of `[-1,1]` (two-sided at `±1`). Alternative (blueprint): maximal solution (`gen_maximal`) + `gen_continuation_compact` on `B̄_ν(z,ε)`. Uniqueness: `gen_uniqueness` (`ContDiffOn ℝ 1 F Ω` from `DifferentiableOn.contDiffOn` + `ContDiffOn.restrict_scalars`) on `J ∩ [-1,1]`. `flow` is the chosen solution; the 4 clauses of `flow_a` follow from `Classical.choose_spec` and uniqueness. `flow_d`: `gen_symmetry_translate`. `isOpen_gaugeInterior`: complement of `⋃` of compact preimages, or `IsCompact.exists_cthickening_subset_open` in gauge coordinates.

**C5-3.** Picard iterates `y_k(t,z) = z + ∫₀ᵗ F(y_{k-1}(τ,z)) dτ` on `[-1,1] × B_ν(z₀,η)`; holomorphic in `z` and `D_z y_k` continuous by `holomorphic_parametric_integral` applied to `t∫₀¹F(y_{k-1}(tτ',z))dτ'`; `‖y_{k+1}-y_k‖ ≤ εΛᵏ|t|^{k+1}/(k+1)!` (Lipschitz `Λ` on the convex ball: `Convex.lipschitzOnWith_of_nnnorm_fderiv_le`); uniform limit identified with `flow` (uniqueness), holomorphy and `D_z` convergence by `uniform_limit_holomorphic`; integral equation by differentiating under the integral (`holomorphic_parametric_integral` derivative clause; CLM-valued interval integral).

**C5-5.** `flow_c`: `flow_a` on `t ↦ γ_z(1+t)` + `gen_uniqueness`; derivative: `general_cauchy` in the gauge on `ball_ν(z,1/2) ⊆ Ω^{1/2}` for `G = X^t - id` (`ν(G) ≤ ε`, radius `1/2`). `flow_e`: apply `flow_a`/`gen_continuation_compact` to `E = ℝ^N` (`realInclusion₂`), `W := Ω ∩ ℝ^N`, `F|_W` real `C¹` (`KAM.real_restriction`, `holomorphic_analytic_real`); real solution is an `Ω`-solution, equal to `flow` by uniqueness. `symplectic`: `Y' = DF(X^t z) Y` (`flow_b`), `DF = J·S` with `S` the symmetric Hessian (`holomorphic_regularity` symmetric `D²`), `d/dt symplFormC(Yv,Yw) = 0` (`is_const_of_deriv_eq_zero`); `YJYᵀ=J`: invertibility from `flow_c` (`Y` has left inverse), conjugate form; `det Y^2 = 1` via `LinearMap.toMatrix'` and `Matrix.det_mul` with `omegaZeroMatrix` (K `Matrix/Norms`). `canonical_*`: chain rule (`HasFDerivAt.comp`), `hamiltonianJ` identities.

**C5-6.** `lie_derivative`: `HasDerivAt (u ∘ γ) (Du(γ)·X_φ(γ)) t` (`HasFDerivAt.comp_hasDerivAt`, `restrictScalars`), `= {u,φ}(γ t)` (`poissonBracket_eq_fderiv_field`), induction with `differentiableOn_adPow`, `ContDiffOn` via `contDiffOn_succ_iff_derivWithin`. `taylor_lie`: integral Taylor remainder by induction on `N` and `intervalIntegral.integral_mul_deriv_eq_deriv_mul` (not in Mathlib: prove once for `ℂ`-valued `C^N` on `Icc 0 1`); bound by `norm_integral_le_of_norm_le_const`-type estimate and `∫₀¹(1-t)^{N-1}/(N-1)! = 1/N!`. `taylor_poschel`: `N=2` for `h` (`ad^j h = ad^{j-1}w`), `N=1` for `f₀`, bilinearity of the bracket under the integral.

**C5-7.** Fix `h`; `κ = ρ/h`, `λ = σ/h`, `r_i = r - iκ`, `s_i = s - iλ`; induction `adPow φ i u ∈ O(r_i,s_i)`, one step = `wbound_bracket` with `(φ, ad^{i-1}u; r', s'; r_{i-1}, s_{i-1}; κ, λ)` and `poissonBracket_antisymm`; product `∏(h+i) = (2h)!/h!` (`Nat.ascFactorial`), `(2h)! ≥ (2h/e)^{2h}` (`Real.add_pow_le_pow_mul_pow_of_sq_le_sq`-free: from `exp` series `Real.pow_div_factorial_le_exp`).

**C5-4.** `cauchy_action`/`cauchy_theta` global forms, `sup_le_wbound` for each derivative (`InClass` from `coefficients_deriv`), assemble the `max`.

**C5-8.** (i) `vf_bound` + `polydisc_subset_Dom`, `ball_subset_gaugeInterior`; (ii) `adjoint_bound` for the series (geometric `∑ (eη/4)^h`, norm completeness of `{u | InClass, WBound}` via `coefficients_series` on the limit coefficients and `uniform_limit_holomorphic`), identification with `u ∘ X¹` by `taylor_lie` with hatted losses `ρ̂ = (1-ε)ρ` (`η̂ ≤ 8/9`) so the remainder `≤ (eη̂/4)^N U → 0`; (iii) `X^t = X¹_{tφ}` (uniqueness) and `|tφ| = |t||φ|`; (iv) `flow_e` + `KAM.hamiltonian_real`. Integral corollary: holomorphy by `holomorphic_parametric_integral`, coefficients by Fubini on `[0,1]×[0,1]ⁿ` (`integral_integral_swap`), Tonelli in `k`.

**C5-9.** As the blueprint: `taylor_poschel`-type expansion for `h` through `w`; series bound `∑ (eη/4)^j (Mw/(j+1)+F₀) ≤ η/(1-η)(Mw/2+F₀)` (`tsum_geometric_of_lt_one`, `e/4 ≤ 1`).

**C5-10.** `canonical_map_a`: `composition`-style (i) with `ε = Φ/(ρσ)`; component bounds from `vf_bound` along the trajectory (mean value `Convex.norm_image_sub_le_of_norm_hasDerivWithin_le`); (b): `flow_d` with `τ = (k,0)`, periodicity of `X_φ` from `InClass.periodic` differentiated, `flow_e` + `KAM.hamiltonian_real`; (c) `flow_c`; (d) `symplectic`; (e) `flow_c`.

**P1-1.** (a) `norm_le_euclid`: `Real.sqrt_le_sqrt`, `Finset.sum_le_card_nsmul`, `Real.le_sqrt`; (b),(c): Cauchy-Schwarz `Finset.sum_mul_sq_le_sq_mul_sq` and `|k|₁ ≤ √n|k|₂`. Domains: `realActionDomain_eq` `J = R/(R+s)·I`; tubes by the triangle inequality.

**P1-2.** `holo_real_a`: `DifferentiableOn.comp` of `Prod.snd`, `holomorphic_regularity_of_finiteDimensional`; `holo_real_b`: `ι(Wdom) ⊆ complexDomain` (`realInclusion₂_preimage_complexDomain`), `KAM.hamiltonian_real`/`realRestriction`-style: `H = Re G∘ι`, `Im G∘ι = 0` (frozen clauses (iv) of both defs), `ContDiffOn ℝ ∞` of `Re ∘ G ∘ ι` (`ContDiffOn.restrict_scalars`, `ContinuousLinearMap.contDiff`), all-order identity by induction on `k` with `iteratedFDeriv_succ_eq_comp_left`/`ContinuousLinearMap.iteratedFDeriv_comp_right`; `holo_real_c`: `hamiltonian_real`, `frequencyMap` and Hessian entries from the `k=1,2` clause and Schwarz (`holomorphic_regularity` last clause); `holo_real_d`: `fderiv_comp_add_right`, `Filter.EventuallyEq.fderiv_eq` (as Part 3 `ham_periodic`) and `iteratedFDeriv_comp_add_right`; `holo_real_e`: `f = 0` from `‖f‖ ≤ 0`.

**P1-3b.** `partials`: `k=1,2` from the frozen `B(M)` clause at `idx = ![i]`, `![i,j]`; `euclid ≤ √n‖·‖`; permutations: `k=2` by `ContDiffAt.isSymmSndFDerivAt`, `k=3` Schwarz twice (D³f = D²(Df), `Df ∈ C²`; `IsSymmSndFDerivAt` for `x ↦ Df x w`) — only non-Mathlib step, ~80 lines. `hessian_convert`: `holo_real_c` (Hessian entries), frozen `HasComplexHessianBound` gives `‖D²h(z)[e_i,e_j]‖ ≤ ‖D²h‖ ‖e_i‖‖e_j‖ = ≤ Mc` (`ContinuousLinearMap.le_opNorm₂`, `Pi.norm_single`), `bilinear_euclid_bound`; real Hessian via the `k=2` clause; operator-norm bound by testing against `ȳ`. `qc_convert`: `hQC` at `I ∈ ball ⊆ ℬ_s(R)`, `norm_le_euclid`, `conic_coercive` with `ℓ' = ℓ ≤ euclid ω q/(8(B+q))` from `wmin ≤ ‖ω‖ ≤ euclid ω`; `5q/8 ≥ q/2`. `conic_coercive`: blueprint steps (unit sphere by homogeneity, `e = ω/|ω|₂`, `t = ξ·e`, `u = ξ - te`, expansion, numerics `(q+B)t² ≤ q/8`, `2B|t| ≤ q/4`); `nlinarith`-free: keep `t, κ` as named reals.

**P1-4.** Unconditional parts: `fderiv_const_smul_of_field`-type (`fderiv_const_smul` for `ℂ`/`ℝ` scalar, check the non-differentiable case separately), `ContinuousLinearEquiv` `Λ` and `HasFDerivAt.comp`; `isSolutionOn_tilde_iff`: differentiability of `H̃ = 2π·H∘Λ⁻¹` at `Λz` iff `H` at `z`; chain rule gives `X_{H̃}(Λz) = (2π ∂_I H, -∂_θ H) = d/dt Λz`; `tilde_hypotheses`: `ContDiffOn.const_smul`, `iteratedFDeriv_const_smul_apply`, `realPart (tildeh h) = (2π) • realPart h`; domains/periodicity: substitution `φ = 2π θ`, `2π`-multiple of the real shift; Fourier: `KAM.character k ((2π:ℂ)⁻¹ • φ) = exp(i k·φ)`, `HasSum.mul_left`.

**P1-5/P1-6.** Numerics: `positivity` on named reals (no `nlinarith`); `HeadParams.F`, `epsStar`, ... kept as defs and unfolded one at a time; `Real.rpow_natCast`, `Real.mul_rpow`, `Real.rpow_neg`. `const_perturbation`: `wbound_of_sup_bound` with `(s,σ) = (s/2, s/4)`, domain `Dom (centralSet n R) r₀ (3s/4) ⊆ complexDomain n R s` (`const_tubes`, `complexStrip_mono`), periodicity from clause (ii) with `k = Pi.single j 1`. `const_time` (g1): tube `‖I‖ < R/2 + R/176`, `partials` on `ℬ_s(R)`.

## 8. How the consumers use the API

| Consumer | Uses |
|---|---|
| N Part 6 (normal form) | `WBound`, `projections`, `truncation_tail`, `wbound_bracket`, `transform`, `composition_*`, `canonical_map_a..e`; Part 1 `partials` |
| N Part 7 (stability) | `canonical_*`, `canonical_map_e`, `symplectic`, `flow_a/c`, `vf_bound`, `cauchy_theta` (`s'↓0`); Part 1 `holo_real`, `qc_convert`, `realdomain`, `period_convert` |
| N Parts 9, 10 | Part 1 `const_*`, `HeadParams`, `HeadHyp`, `tildef_*`, `qc_convert_tilde`, `norm_convert`; `Data`/`Wdom` |
| N Parts 11a-c, 12 | `norm-compare`, `holo_real`, `hessian_convert`, `flow` (11b: three-block gauge, `flow_a..e` verbatim), `WBound` with `m = n+2k` (generic `m`), `SmallField`; 11b's symplectic form is new (use `flow_b` + the bilinear-form-invariance argument; a generic `flow_preserves_form` lemma is a cheap addition if 11b asks) |
| N Part 3 (`holo-input`, `s-N#data`) | `Data`, `Wdom`, `holo_input` (C1/C2) |
| P Part 2 (averaging) | `WBound`/`wnorm` (P's ruling), `cauchy_*`, `wbound_bracket`, `projections`, `wbound_mul`, `flow`, `composition_*`, `canonical_map` |
| P Part 3a/b (two-scale) | `canonical_map_*`, `symplectic`, `canonical_field` (`D Φⱼ X_{Hⱼ} = X_H∘Φⱼ`) |
| P Part 11 (cp09), 11a-2 | `wbound_of_sup_bound`, `holomorphic_parametric_integral` (`bpN:p4:ext-param`), `general_cauchy`, `flow_*`, `symplectic`, `taylor_lie`, `scaledNorm`/`scaleCLE` for `ν(a,c) = max(|a|/σ, |c|/(s/2))` |
| P Part 1 (`vs-N`) | `symplectic`, `canonical_field`, `canonical_orbit` (P re-proves its own real chart version) |
| I (all parts) | none (no citation of `bpN:p[145]:` in `blueprint-I`) |

## 9. Risks

### 9.1 Elaboration and design
- The signatures elaborate in ~15 s. Proof-side: `Fin n → ℂ` products have two `NormedSpace ℝ` routes (`Pi`/`Prod` and `complexToReal`); keep generic lemmas over `E` and instantiate once, convert with `IsScalarTower` rather than `simp` through instances.
- `flow` uses `Classical.choose`: always go through `flow_a` (spec lemma); never unfold in consumers.
- `coeff` is a Bochner integral: integrability needs continuity on real points of the strip, hence `0 < s` everywhere; keep `InClass` + `0<s` in the pointwise lemmas.
- Heavy: C5-3 (Picard iterates with parameter dependence), W4-3 (coefficient holomorphy), C5-8 (series identification). Per rule 1, a default-heartbeat failure means split by estimate (`adjoint`, `vf_bound`, `cauchy`), not larger budgets.

### 9.2 Missing Mathlib API
1. Integral Taylor remainder along a curve (`taylor_integral_remainder` is only mentioned in the file header): prove once (C5-6).
2. Schwarz for `C³` (`ContDiffAt.iteratedFDeriv_comp_perm` requires smoothness `⊤`): derive from `isSymmSndFDerivAt` twice (P1-3b), or use analyticity of `h_ℝ` (`holomorphic_analytic_real`) to get `⊤`.
3. `ext-param` in several complex variables (only the real `hasFDerivAt_integral_of_dominated_of_fderiv_le`).
4. `iteratedFDeriv` of `Re∘G∘ι` (restriction of scalars at every order): induction on `k` (P1-2); fallback (orchestrator approval): `k ≤ 3`, all that consumers use.
5. No Mathlib notion of a weighted/gauge ball interior; `isOpen_gaugeInterior` by compactness.

### 9.3 Dependencies outside this design
- C5-2 and C5-3 need Part 3 (`KAM.ODE.Existence`, `Uniqueness`, `Maximal`, `Continuation`: proved on `inp`); the build snapshot of this worktree lacks `KAM.ODE.*` oleans except `Basic` (built here for the draft).
- P1-2 absorbs N3-10a; N3-10b must wait for P1-1 (`Data`, `Wdom`) and P1-2.
- Part 9 `bpN:p9:setting` is not referenced: constants (d)-(g) are stated in plain numbers so Part 1 has no forward dependency.

### 9.4 Errata candidates (reported here, not edited)
- `blueprint-N/parts/p4-weighted-norms.tex` B.1(b): hypothesis `u ∈ O(r,s)` with a bound on `𝒟_{r,s+σ}` (issue B1).
- Part 4 lemma statements without `s > 0` (issue B2), Part 5 `finite norm` for empty `D` (issue B3): minor, convention.
- `bpN:p5:symplectic`: `det Y = ±1` (true value `1`): harmless.

## Appendix A. The signatures

Verbatim copy of `.drafts/design/NPart145Signatures.lean` (sha256 `87adf1f6ceecb412d7a0cfc521fe9d09aa6a40664ff0b8662044dc3315599afd`).

```lean
/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Calculus.ContDiff.RCLike
public import Mathlib.Analysis.Calculus.FDeriv.Symmetric
public import Mathlib.Analysis.Calculus.IteratedDeriv.Defs
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Topology.Algebra.Module.Equiv.Prod
public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Defs.HamiltonianVectorFieldC
public import KAM.Frozen.Defs.RealHamiltonian
public import KAM.Frozen.Nekhoroshev.Defs.ActionBall
public import KAM.Frozen.Nekhoroshev.Defs.ComplexDomain
public import KAM.Frozen.Nekhoroshev.Defs.RealActionDomain
public import KAM.Frozen.Nekhoroshev.Defs.RealPart
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticIntegrable
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticPerturbation
public import KAM.Frozen.Nekhoroshev.Defs.HasDerivativeBounds
public import KAM.Frozen.Nekhoroshev.Defs.HasComplexHessianBound
public import KAM.Frozen.Nekhoroshev.Defs.IsStrictlyQuasiConvex
public import KAM.Frozen.Nekhoroshev.Defs.IsSolutionOn
public import KAM.Strip.Bridges
public import KAM.Strip.RealRestriction
public import KAM.Strip.FourierSeries
public import KAM.Strip.FourierBasic
public import KAM.Fourier.Convolution
public import KAM.Fourier.Derivative
public import KAM.Fourier.ExpSums
public import KAM.ODE.Basic

/-!
# Signatures of blueprint-N Parts 1, 4 and 5 (design draft)

Exact Lean statements of every result node of `blueprint-N/parts/p1-interfaces.tex`,
`p4-weighted-norms.tex` and `p5-canonical-maps.tex`. Every body is `sorry` except a few
statements derived from their siblings. Design evidence, not approved Lean. Sections correspond to the
modules of `docs/tracks/N/design/PART145-LEAN-DESIGN.md`:

* A. `KAM/Canonical/Setting.lean` (definitions shared by Parts 4 and 5),
* B. `KAM/Weighted/*` (Part 4),
* C. `KAM/Canonical/*` (Part 5),
* D. `KAM/Nekhoroshev/Interfaces/*` (Part 1).
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

/-! ## A. Setting (`KAM/Canonical/Setting.lean`): bracket, iterated brackets, scaled norm, form -/

namespace KAM.Canonical

variable {n : ℕ}

/-- `bpN:p5:setting`: the Poisson bracket `{u, v} = ∑ᵢ (∂_{θᵢ}u ∂_{Iᵢ}v - ∂_{Iᵢ}u ∂_{θᵢ}v)` of functions
on `ℂⁿ × ℂⁿ` (angles first); `Fréchet` derivatives, so total. -/
def poissonBracket (u v : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (z : (Fin n → ℂ) × (Fin n → ℂ)) : ℂ :=
  ∑ i, (fderiv ℂ u z (Pi.single i 1, 0) * fderiv ℂ v z (0, Pi.single i 1) -
    fderiv ℂ u z (0, Pi.single i 1) * fderiv ℂ v z (Pi.single i 1, 0))

/-- `bpN:p5:setting`: `ad_φ⁰ u = u`, `ad_φ^{j+1} u = {ad_φ^j u, φ}`. -/
def adPow (φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) :
    ℕ → ((Fin n → ℂ) × (Fin n → ℂ) → ℂ) → ((Fin n → ℂ) × (Fin n → ℂ) → ℂ)
  | 0, u => u
  | j + 1, u => poissonBracket (adPow φ j u) φ

/-- `bpN:p5:setting`: the scaled norm `ν_{ρ,σ}(a, b) = max(|a|/σ, |b|/ρ)`; `σ` weights angles, `ρ` actions.
It is a plain function, not an instance. -/
def scaledNorm (ρ σ : ℝ) (z : (Fin n → ℂ) × (Fin n → ℂ)) : ℝ := max (‖z.1‖ / σ) (‖z.2‖ / ρ)

/-- The gauge `W = diag(σ⁻¹, ρ⁻¹)` of `scaledNorm`: `‖scaleCLE ρ σ _ _ z‖ = scaledNorm ρ σ z`. -/
def scaleCLE (ρ σ : ℝ) (hρ : 0 < ρ) (hσ : 0 < σ) :
    ((Fin n → ℂ) × (Fin n → ℂ)) ≃L[ℂ] ((Fin n → ℂ) × (Fin n → ℂ)) :=
  (ContinuousLinearEquiv.smulLeft (Units.mk0 ((σ : ℂ)⁻¹) (by simpa using hσ.ne'))).prodCongr
    (ContinuousLinearEquiv.smulLeft (Units.mk0 ((ρ : ℂ)⁻¹) (by simpa using hρ.ne')))

theorem norm_scaleCLE {ρ σ : ℝ} (hρ : 0 < ρ) (hσ : 0 < σ) (z : (Fin n → ℂ) × (Fin n → ℂ)) :
    ‖scaleCLE ρ σ hρ hσ z‖ = scaledNorm ρ σ z := sorry

/-- The complexified frozen form `Σ (v_I w_θ - v_θ w_I)` (`KAM.symplecticForm` on `ℂⁿ × ℂⁿ`);
`symplFormC v w = ∑ i, (v.1 i, v.2 i) ⬝ Ω₀ w` for the frozen `KAM.omegaZero`. -/
def symplFormC (v w : (Fin n → ℂ) × (Fin n → ℂ)) : ℂ := ∑ i, (v.2 i * w.1 i - v.1 i * w.2 i)

/-- `bpN:p5:setting`: `{u, v} = Du · X_v` for the frozen field `X_v = KAM.hamiltonianVectorFieldℂ v`. -/
theorem poissonBracket_eq_fderiv_field (u v : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (z : (Fin n → ℂ) × (Fin n → ℂ)) :
    poissonBracket u v z = fderiv ℂ u z (KAM.hamiltonianVectorFieldℂ v z) := sorry

theorem poissonBracket_antisymm (u v : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (z : (Fin n → ℂ) × (Fin n → ℂ)) : poissonBracket u v z = - poissonBracket v u z := sorry

/-- Bracket of holomorphic functions is holomorphic (on the common open domain). -/
theorem differentiableOn_poissonBracket {U : Set ((Fin n → ℂ) × (Fin n → ℂ))} (hU : IsOpen U)
    {u v : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hu : DifferentiableOn ℂ u U)
    (hv : DifferentiableOn ℂ v U) : DifferentiableOn ℂ (poissonBracket u v) U := sorry

theorem differentiableOn_adPow {U : Set ((Fin n → ℂ) × (Fin n → ℂ))} (hU : IsOpen U)
    {φ u : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hφ : DifferentiableOn ℂ φ U)
    (hu : DifferentiableOn ℂ u U) (j : ℕ) : DifferentiableOn ℂ (adPow φ j u) U := sorry

/-- `{u, v} = 0` if `u, v` depend only on `I`. -/
theorem poissonBracket_eq_zero_of_snd {u v : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hu : ∀ θ θ' I, u (θ, I) = u (θ', I)) (hv : ∀ θ θ' I, v (θ, I) = v (θ', I))
    (z : (Fin n → ℂ) × (Fin n → ℂ)) : poissonBracket u v z = 0 := sorry

/-- "Real on real points" on a set `U ⊆ ℂⁿ × ℂⁿ`. -/
def RealOn (U : Set ((Fin n → ℂ) × (Fin n → ℂ))) (u : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) : Prop :=
  ∀ x : (Fin n → ℝ) × (Fin n → ℝ), KAM.realInclusion₂ n x ∈ U → (u (KAM.realInclusion₂ n x)).im = 0

end KAM.Canonical

/-! ## B. Part 4: weighted Fourier norms and Cauchy estimates (`KAM/Weighted/*`)

Carriers. `u : (Fin n → ℂ) × (Fin m → ℂ) → W` is a *total* function; the class `O(r,s)` is the Prop
`InClass`; the weighted norm is the *bound predicate* `WBound D r s u M` ("`|u|_{r,s} ≤ M`", with
summability of every coefficient series inside), so no `sSup`/`tsum`-junk value is ever used in a
statement. `wnorm`/`HasFiniteWNorm` are provided with `wbound_iff`. Radii: the weight is
`exp(2π s |k|₁)` with geometric width `s` (`docs/fourier-conventions.md`). Every statement that
reads coefficients (integrals over the *real* torus) carries `0 < s` (D27): for `s ≤ 0`, `n ≥ 1` the
class is vacuous and the coefficients are unconstrained, so the statements would be false. -/

namespace KAM.Weighted

open MeasureTheory

variable {n m : ℕ} {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W] [NormedSpace ℝ W]
  [IsScalarTower ℝ ℂ W] [CompleteSpace W]

/-! ### B.0 Domains (`bpN:p4:domains`; module `Weighted/Domains.lean`) -/

/-- `V_r D = {I ∈ ℂᵐ | ∃ I' ∈ D, |I - I'|_∞ < r}`. -/
def polyNbhd (D : Set (Fin m → ℂ)) (r : ℝ) : Set (Fin m → ℂ) := {I | ∃ I' ∈ D, ‖I - I'‖ < r}

/-- `𝒟_{r,s} = T_s × V_r D`. -/
def Dom (n : ℕ) (D : Set (Fin m → ℂ)) (r s : ℝ) : Set ((Fin n → ℂ) × (Fin m → ℂ)) :=
  KAM.complexStrip n s ×ˢ polyNbhd D r

/-- The closed polydisc `P̄(z; a, b)`. -/
def polydisc (a b : ℝ) (z : (Fin n → ℂ) × (Fin m → ℂ)) : Set ((Fin n → ℂ) × (Fin m → ℂ)) :=
  {w | ‖w.1 - z.1‖ ≤ a ∧ ‖w.2 - z.2‖ ≤ b}

theorem isOpen_polyNbhd (D : Set (Fin m → ℂ)) (r : ℝ) : IsOpen (polyNbhd D r) := sorry

theorem isOpen_Dom (D : Set (Fin m → ℂ)) (r s : ℝ) : IsOpen (Dom n D r s) := sorry

theorem polyNbhd_mono {D : Set (Fin m → ℂ)} {r r' : ℝ} (h : r' ≤ r) :
    polyNbhd D r' ⊆ polyNbhd D r := sorry

theorem Dom_mono {D : Set (Fin m → ℂ)} {r r' s s' : ℝ} (hr : r' ≤ r) (hs : s' ≤ s) :
    Dom n D r' s' ⊆ Dom n D r s := sorry

/-- `bpN:p4:domains` (b). -/
theorem polydisc_subset_Dom {D : Set (Fin m → ℂ)} {r r' s s' : ℝ} (hr' : 0 < r') (hrr : r' < r)
    (hs' : 0 < s') (hss : s' < s) {z : (Fin n → ℂ) × (Fin m → ℂ)} (hz : z ∈ Dom n D r' s') :
    polydisc (s - s') (r - r') z ⊆ Dom n D r s := sorry

/-- The frozen `KAM.actionNbhd` of a real set is `V_r` of its image in `ℂⁿ`. -/
theorem actionNbhd_eq_polyNbhd (B : Set (Fin n → ℝ)) (r : ℝ) :
    KAM.actionNbhd B r = polyNbhd (KAM.realInclusion n '' B) r := sorry

/-! ### B.1 The class, coefficients and the norm (`bpN:p4:norm`; `Weighted/Norm.lean`) -/

/-- `Os r s`: holomorphic on `𝒟_{r,s}` and `1`-periodic in each `θⱼ` (on `𝒟_{r,s}`). -/
structure InClass (D : Set (Fin m → ℂ)) (r s : ℝ) (u : (Fin n → ℂ) × (Fin m → ℂ) → W) : Prop where
  differentiableOn : DifferentiableOn ℂ u (Dom n D r s)
  periodic : ∀ j : Fin n, ∀ z ∈ Dom n D r s, u (z.1 + Pi.single j 1, z.2) = u z

/-- `û_k(I) = ∫_{[0,1]ⁿ} u(x, I) e^{-2πi k·x} dx` (entrywise for vector/matrix `W`; K's `torusCoeffW`). -/
def coeff (u : (Fin n → ℂ) × (Fin m → ℂ) → W) (I : Fin m → ℂ) (k : Fin n → ℤ) : W :=
  KAM.torusCoeffW (fun x : Fin n → ℝ => u (fun j => (x j : ℂ), I)) k

/-- The weight `e^{2π s |k|₁}`. -/
def modeWeight (s : ℝ) (k : Fin n → ℤ) : ℝ := Real.exp (2 * Real.pi * s * KAM.Fourier.modeSize k)

/-- `|u|_{I,s} = ∑ₖ |û_k(I)| e^{2π|k|₁ s}` (junk `0` if not summable; use `WSummable` alongside). -/
def wsum (u : (Fin n → ℂ) × (Fin m → ℂ) → W) (s : ℝ) (I : Fin m → ℂ) : ℝ :=
  ∑' k : Fin n → ℤ, ‖coeff u I k‖ * modeWeight s k

def WSummable (u : (Fin n → ℂ) × (Fin m → ℂ) → W) (s : ℝ) (I : Fin m → ℂ) : Prop :=
  Summable fun k : Fin n → ℤ => ‖coeff u I k‖ * modeWeight s k

/-- `|u|_{r,s} ≤ M`: every coefficient series over `I ∈ V_r D` is summable with sum `≤ M`. -/
def WBound (D : Set (Fin m → ℂ)) (r s : ℝ) (u : (Fin n → ℂ) × (Fin m → ℂ) → W) (M : ℝ) : Prop :=
  ∀ I ∈ polyNbhd D r, WSummable u s I ∧ wsum u s I ≤ M

def HasFiniteWNorm (D : Set (Fin m → ℂ)) (r s : ℝ) (u : (Fin n → ℂ) × (Fin m → ℂ) → W) : Prop :=
  ∃ M, WBound D r s u M

/-- `|u|_{r,s} = sup_{I ∈ V_r D} |u|_{I,s}` (meaningful only under `HasFiniteWNorm`). -/
def wnorm (D : Set (Fin m → ℂ)) (r s : ℝ) (u : (Fin n → ℂ) × (Fin m → ℂ) → W) : ℝ :=
  ⨆ I : polyNbhd D r, wsum u s I

theorem wbound_iff {D : Set (Fin m → ℂ)} {r s : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W} {M : ℝ}
    (hM : 0 ≤ M) :
    WBound D r s u M ↔ HasFiniteWNorm D r s u ∧ wnorm D r s u ≤ M := sorry

/-- `bpN:p4:norm#monotone`: restriction to smaller widths and a larger bound. -/
theorem WBound.mono {D : Set (Fin m → ℂ)} {r r' s s' : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    {M M' : ℝ} (h : WBound D r s u M) (hr : r' ≤ r) (hs : s' ≤ s) (hM : M ≤ M') :
    WBound D r' s' u M' := sorry

/-- `bpN:p4:norm#monotone`, vector values: `max_a |u_a| ≤ |u| ≤ ∑_a |u_a|` (max norm of the coefficient). -/
theorem wbound_pi_apply {d : ℕ} {D : Set (Fin m → ℂ)} {r s : ℝ}
    {u : (Fin n → ℂ) × (Fin m → ℂ) → Fin d → ℂ} {M : ℝ} (hs : 0 < s) (hu : InClass D r s u)
    (h : WBound D r s u M) (a : Fin d) :
    WBound D r s (fun z => u z a) M := sorry

theorem wbound_pi_of_components {d : ℕ} {D : Set (Fin m → ℂ)} {r s : ℝ}
    {u : (Fin n → ℂ) × (Fin m → ℂ) → Fin d → ℂ} {M : Fin d → ℝ} (hs : 0 < s) (hu : InClass D r s u)
    (h : ∀ a, WBound D r s (fun z => u z a) (M a)) : WBound D r s u (∑ a, M a) := sorry

/-! ### B.2 External facts of Part 4 (`Weighted/Parametric.lean`) -/

/-- `bpN:p4:ext-param`: holomorphic dependence on a parameter (compact `Q`, e.g. a box). -/
theorem holomorphic_parametric_integral {p q : ℕ} {Q : Set (Fin p → ℝ)} (hQ : IsCompact Q)
    {U : Set (Fin q → ℂ)} (hU : IsOpen U) {G : (Fin p → ℝ) → (Fin q → ℂ) → W}
    (hG : ContinuousOn (fun y : (Fin p → ℝ) × (Fin q → ℂ) => G y.1 y.2) (Q ×ˢ U))
    (hGd : ∀ x ∈ Q, DifferentiableOn ℂ (G x) U)
    (hDG : ContinuousOn (fun y : (Fin p → ℝ) × (Fin q → ℂ) => fderiv ℂ (G y.1) y.2) (Q ×ˢ U)) :
    DifferentiableOn ℂ (fun I => ∫ x in Q, G x I) U ∧
      ∀ I ∈ U, fderiv ℂ (fun I' => ∫ x in Q, G x I') I = ∫ x in Q, fderiv ℂ (G x) I := sorry

/-- `bpN:p4:general-cauchy` (C.1), the open-ball form: from K's `KAM.norm_fderiv_le_of_closedBall` by `δ ↑ R`. -/
theorem general_cauchy {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    [NormedAddCommGroup F] [NormedSpace ℂ F] [CompleteSpace F] {G : E → F} {v : E} {R M : ℝ}
    (hR : 0 < R) (hG : DifferentiableOn ℂ G (ball v R)) (hM : ∀ a ∈ ball v R, ‖G a‖ ≤ M) :
    ‖fderiv ℂ G v‖ ≤ M / R := sorry

/-- `bpN:p4:ext-weier`: uniform limits of holomorphic maps; derivatives converge uniformly on
`{z | closedBall z η ⊆ U}` (by `general_cauchy` applied to `K j - K l`, then K's `KAM.uniform_limits`). -/
theorem uniform_limit_holomorphic {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    [NormedAddCommGroup F] [NormedSpace ℂ F] [CompleteSpace F] {U : Set E} (hU : IsOpen U)
    {K : ℕ → E → F} {K₀ : E → F} (hK : ∀ j, DifferentiableOn ℂ (K j) U)
    (hconv : TendstoUniformlyOn K K₀ Filter.atTop U) :
    DifferentiableOn ℂ K₀ U ∧ ∀ η : ℝ, 0 < η →
      TendstoUniformlyOn (fun j z => fderiv ℂ (K j) z) (fderiv ℂ K₀) Filter.atTop
        {z | closedBall z η ⊆ U} := sorry

/-! ### B.3 Coefficients, derivatives, series (`bpN:p4:coefficients`; `Weighted/Coefficients.lean`) -/

/-- `∂_{θⱼ} u` and `∂_{Iᵢ} u` (Fréchet derivatives in the coordinate directions). -/
def dtheta (j : Fin n) (u : (Fin n → ℂ) × (Fin m → ℂ) → W) : (Fin n → ℂ) × (Fin m → ℂ) → W :=
  fun z => fderiv ℂ u z (Pi.single j 1, 0)

def dI (i : Fin m) (u : (Fin n → ℂ) × (Fin m → ℂ) → W) : (Fin n → ℂ) × (Fin m → ℂ) → W :=
  fun z => fderiv ℂ u z (0, Pi.single i 1)

/-- The series `∑ₖ aₖ(I) χₖ(θ)` of `bpN:p4:coefficients`(c). -/
def fourierSeries (a : (Fin n → ℤ) → (Fin m → ℂ) → ℂ) : (Fin n → ℂ) × (Fin m → ℂ) → ℂ :=
  fun z => ∑' k, a k z.2 * KAM.character k z.1

/-- (a) `û_k` is holomorphic on `V_r D`. -/
theorem coeff_differentiableOn {D : Set (Fin m → ℂ)} {r s : ℝ}
    {u : (Fin n → ℂ) × (Fin m → ℂ) → W} (hs : 0 < s) (hu : InClass D r s u) (k : Fin n → ℤ) :
    DifferentiableOn ℂ (fun I => coeff u I k) (polyNbhd D r) := sorry

/-- (b) derivatives stay in the class and act on coefficients as `2πi kⱼ` resp. `∂_{Iᵢ}`. -/
theorem coefficients_deriv {D : Set (Fin m → ℂ)} {r s : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hs : 0 < s) (hu : InClass D r s u) (j : Fin n) (i : Fin m) :
    InClass D r s (dtheta j u) ∧ InClass D r s (dI i u) ∧
      (∀ I ∈ polyNbhd D r, ∀ k, coeff (dtheta j u) I k =
        (2 * (Real.pi : ℂ) * Complex.I * (k j : ℂ)) • coeff u I k) ∧
      (∀ I ∈ polyNbhd D r, ∀ k,
        coeff (dI i u) I k = fderiv ℂ (fun I' => coeff u I' k) I (Pi.single i 1)) := sorry

/-- (c) series with holomorphic coefficients of finite weighted sum. -/
theorem coefficients_series {D : Set (Fin m → ℂ)} {r s S : ℝ} {a : (Fin n → ℤ) → (Fin m → ℂ) → ℂ}
    (hs : 0 < s) (ha : ∀ k, DifferentiableOn ℂ (a k) (polyNbhd D r))
    (hS : ∀ I ∈ polyNbhd D r, Summable (fun k => ‖a k I‖ * modeWeight s k) ∧
      ∑' k, ‖a k I‖ * modeWeight s k ≤ S) :
    (∀ s' < s, TendstoUniformlyOn (fun (Λ : Finset (Fin n → ℤ)) z => ∑ k ∈ Λ, a k z.2 * KAM.character k z.1)
      (fourierSeries a) Filter.atTop (Dom n D r s')) ∧
    InClass D r s (fourierSeries a) ∧
    (∀ I ∈ polyNbhd D r, ∀ k, coeff (fourierSeries a) I k = a k I) ∧
    WBound D r s (fourierSeries a) S := sorry

/-- (d) Fourier representation `u = ∑ₖ û_k χₖ` on `𝒟_{r,s}`, and the one-term bound. -/
theorem coefficients_repr {D : Set (Fin m → ℂ)} {r s M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hs : 0 < s) (hu : InClass D r s u) (hb : WBound D r s u M) :
    (∀ z ∈ Dom n D r s, HasSum (fun k => KAM.character k z.1 • coeff u z.2 k) (u z)) ∧
    (∀ I ∈ polyNbhd D r, ∀ k, ‖coeff u I k‖ * modeWeight s k ≤ M) := sorry

/-! ### B.4 Lemma B.1: sup versus weighted norm (`bpN:p4:sup-weighted`; `Weighted/SupWeighted.lean`) -/

/-- `coth x = cosh x / sinh x` (no Mathlib name; K writes it this way). -/
def coth (x : ℝ) : ℝ := Real.cosh x / Real.sinh x

/-- (a) `sup_{𝒟_{r,s}} |u| ≤ |u|_{r,s}`. -/
theorem sup_le_wbound {D : Set (Fin m → ℂ)} {r s M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hu : InClass D r s u) (hb : WBound D r s u M) : ∀ z ∈ Dom n D r s, ‖u z‖ ≤ M := sorry

/-- (b) `|u|_{r,s} ≤ coth(πσ)ⁿ M` if `|u| ≤ M` on `𝒟_{r,s+σ}`. From K's `KAM.decay_boundary_radius`
(or `KAM.decay`) and `KAM.Fourier.hasSum_exp_neg_modeSize`; the scalar case at fixed `I` is
`KAM.summableWeighted_torusCoeff`. -/
theorem wbound_of_sup_bound {D : Set (Fin m → ℂ)} {r s σ M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hs : 0 < s) (hσ : 0 < σ) (hu : InClass D r (s + σ) u) (hM : ∀ z ∈ Dom n D r (s + σ), ‖u z‖ ≤ M) :
    WBound D r s u (coth (Real.pi * σ) ^ n * M) := sorry

/-! ### B.5 Lemma B.2: algebra property (`bpN:p4:algebra`; `Weighted/Algebra.lean`), scalar values -/

/-- Pointwise in `I`, with the coefficient convolution (K's `KAM.Fourier.convolution`). -/
theorem coeff_mul {D : Set (Fin m → ℂ)} {r s : ℝ} {u v : (Fin n → ℂ) × (Fin m → ℂ) → ℂ}
    (hs : 0 < s) (hu : InClass D r s u) (hv : InClass D r s v) {I : Fin m → ℂ} (hI : I ∈ polyNbhd D r)
    (hu' : WSummable u s I) (hv' : WSummable v s I) :
    InClass D r s (fun z => u z * v z) ∧
    (∀ k, Summable fun l => ‖coeff u I (k - l) * coeff v I l‖) ∧
    (∀ k, coeff (fun z => u z * v z) I k = ∑' l, coeff u I (k - l) * coeff v I l) ∧
    WSummable (fun z => u z * v z) s I ∧
    wsum (fun z => u z * v z) s I ≤ wsum u s I * wsum v s I := sorry

theorem wbound_mul {D : Set (Fin m → ℂ)} {r s Mu Mv : ℝ} {u v : (Fin n → ℂ) × (Fin m → ℂ) → ℂ}
    (hs : 0 < s) (hu : InClass D r s u) (hv : InClass D r s v) (hbu : WBound D r s u Mu)
    (hbv : WBound D r s v Mv) : WBound D r s (fun z => u z * v z) (Mu * Mv) := sorry

theorem wbound_pow {D : Set (Fin m → ℂ)} {r s M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ}
    (hs : 0 < s) (hu : InClass D r s u) (hb : WBound D r s u M) (j : ℕ) :
    WBound D r s (fun z => u z ^ j) (M ^ j) := sorry

/-! ### B.6 Lemma B.3: Cauchy estimates in the weighted norm (`bpN:p4:cauchy`; `Weighted/Cauchy.lean`) -/

/-- (a) angular derivative, pointwise in `I`, summed over `j` *inside* the supremum, plus the global
single-`j` form. From K's `KAM.Fourier.weightedNorm_partialCoeff_le` coefficientwise. -/
theorem cauchy_theta {D : Set (Fin m → ℂ)} {r₀ s₀ s M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hu : InClass D r₀ s₀ u) (hb : WBound D r₀ s₀ u M) (hs0 : 0 < s) (hs : s < s₀) :
    (∀ I ∈ polyNbhd D r₀, (∀ j, WSummable (dtheta j u) s I) ∧
      ∑ j, wsum (dtheta j u) s I ≤ wsum u s₀ I / (Real.exp 1 * (s₀ - s))) ∧
    ∀ j, WBound D r₀ s (dtheta j u) (M / (Real.exp 1 * (s₀ - s))) := sorry

/-- (b) action derivative, global. -/
theorem cauchy_action {D : Set (Fin m → ℂ)} {r₀ r s₀ M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hs : 0 < s₀) (hu : InClass D r₀ s₀ u) (hb : WBound D r₀ s₀ u M) (hr : r < r₀) :
    ∀ i, WBound D r s₀ (dI i u) (M / (r₀ - r)) := sorry

/-- "In particular" (losses `σ`, `ρ`): `|∂θ u|_{r,s-σ} ≤ |u|_{r,s}/(eσ)`, `|∂I u|_{r-ρ,s} ≤ |u|_{r,s}/ρ`. -/
theorem cauchy_loss {D : Set (Fin m → ℂ)} {r s ρ σ M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hu : InClass D r s u) (hb : WBound D r s u M) (hρ : 0 < ρ) (hρr : ρ < r) (hσ : 0 < σ)
    (hσs : σ < s) :
    (∀ I ∈ polyNbhd D r, ∑ j, wsum (dtheta j u) (s - σ) I ≤ M / (Real.exp 1 * σ)) ∧
    (∀ j, WBound D r (s - σ) (dtheta j u) (M / (Real.exp 1 * σ))) ∧
    (∀ i, WBound D (r - ρ) s (dI i u) (M / ρ)) := sorry

/-! ### B.7 Lemma B.4: the Poisson bracket (`bpN:p4:bracket`, `s-b4#data`; `Weighted/Bracket.lean`; `m = n`) -/

theorem wbound_bracket {D : Set (Fin n → ℂ)} {r₀ s₀ r s ρ σ Mu Mv : ℝ}
    {u v : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hu : InClass D r₀ s₀ u) (hv : InClass D r s v) (hbu : WBound D r₀ s₀ u Mu)
    (hbv : WBound D r s v Mv) (hρ : 0 < ρ) (hρr : ρ < r) (hσ : 0 < σ) (hσs : σ < s)
    (h1 : r - ρ < r₀) (h2 : s - σ < s₀) :
    InClass D (r - ρ) (s - σ) (KAM.Canonical.poissonBracket u v) ∧
    WBound D (r - ρ) (s - σ) (KAM.Canonical.poissonBracket u v)
      (1 / Real.exp 1 * (1 / ((r₀ - r + ρ) * σ) + 1 / ((s₀ - s + σ) * ρ)) * Mu * Mv) := sorry

/-! ### B.8 Projections and truncation (`bpN:p4:projections`; `Weighted/Projections.lean`), scalar values -/

/-- `P_S u = ∑_{k ∈ S} û_k χ_k`. -/
def projMode (S : Set (Fin n → ℤ)) (u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ) :
    (Fin n → ℂ) × (Fin m → ℂ) → ℂ :=
  fun z => ∑' k, S.indicator (fun k => coeff u z.2 k * KAM.character k z.1) k

/-- `T_K u = P_{|k|₁ ≤ K} u`. -/
def truncate (K : ℝ) (u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ) : (Fin n → ℂ) × (Fin m → ℂ) → ℂ :=
  projMode {k | KAM.Fourier.modeSize k ≤ K} u

/-- The average `⟨u⟩(I) = û₀(I)` as a `θ`-independent function. -/
def modeAverage (u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ) : (Fin n → ℂ) × (Fin m → ℂ) → ℂ :=
  fun z => coeff u z.2 0

theorem projections {D : Set (Fin m → ℂ)} {r s M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ}
    (hs : 0 < s) (hu : InClass D r s u) (hb : WBound D r s u M) (S : Set (Fin n → ℤ)) :
    InClass D r s (projMode S u) ∧
    (∀ I ∈ polyNbhd D r, ∀ k, coeff (projMode S u) I k = S.indicator (coeff u I) k) ∧
    WBound D r s (projMode S u) M ∧
    InClass D r s (modeAverage u) ∧ WBound D r s (modeAverage u) M := sorry

/-- `u - T_K u = P_{|k|₁ > K} u` and `|u - T_K u|_{r,s-σ} ≤ e^{-2πKσ} |u|_{r,s}`. -/
theorem truncation_tail {D : Set (Fin m → ℂ)} {r s σ K M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ}
    (hu : InClass D r s u) (hb : WBound D r s u M) (hσ : 0 < σ) (hσs : σ < s) (hK : 0 ≤ K) :
    (∀ z ∈ Dom n D r s, u z - truncate K u z = projMode {k | K < KAM.Fourier.modeSize k} u z) ∧
    WBound D r (s - σ) (fun z => u z - truncate K u z) (Real.exp (-(2 * Real.pi * K * σ)) * M) := sorry

/-! ### B.9 The norm `♯` (OPTIONAL, deferred; `bpN:p4:sharp`; `Weighted/Sharp.lean`): no consumer cites it -/

/-- `|u|♯_{r,s} ≤ M`: coefficientwise suprema `cₖ ≥ sup_I |û_k(I)|` with `∑ cₖ e^{2π s|k|₁} ≤ M`. -/
def SBound (D : Set (Fin m → ℂ)) (r s : ℝ) (u : (Fin n → ℂ) × (Fin m → ℂ) → W) (M : ℝ) : Prop :=
  ∃ c : (Fin n → ℤ) → ℝ, (∀ I ∈ polyNbhd D r, ∀ k, ‖coeff u I k‖ ≤ c k) ∧
    Summable (fun k => c k * modeWeight s k) ∧ ∑' k, c k * modeWeight s k ≤ M

theorem wbound_of_sbound {D : Set (Fin m → ℂ)} {r s M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hs : 0 < s) (hu : InClass D r s u) (h : SBound D r s u M) : WBound D r s u M := sorry

theorem sharp_sup_le {D : Set (Fin m → ℂ)} {r s M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hu : InClass D r s u) (hb : SBound D r s u M) : ∀ z ∈ Dom n D r s, ‖u z‖ ≤ M := sorry

theorem sharp_of_sup_bound {D : Set (Fin m → ℂ)} {r s σ M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hs : 0 < s) (hσ : 0 < σ) (hu : InClass D r (s + σ) u) (hM : ∀ z ∈ Dom n D r (s + σ), ‖u z‖ ≤ M) :
    SBound D r s u (coth (Real.pi * σ) ^ n * M) := sorry

theorem sharp_mul {D : Set (Fin m → ℂ)} {r s Mu Mv : ℝ} {u v : (Fin n → ℂ) × (Fin m → ℂ) → ℂ}
    (hs : 0 < s) (hu : InClass D r s u) (hv : InClass D r s v) (hbu : SBound D r s u Mu)
    (hbv : SBound D r s v Mv) : SBound D r s (fun z => u z * v z) (Mu * Mv) := sorry

/-- Global form of B.3(a) for `♯`: the sum over `j` of the global norms is bounded. -/
theorem sharp_cauchy_theta {D : Set (Fin m → ℂ)} {r₀ s₀ s M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hu : InClass D r₀ s₀ u) (hb : SBound D r₀ s₀ u M) (hs0 : 0 < s) (hs : s < s₀) :
    ∃ c : Fin n → ℝ, (∀ j, SBound D r₀ s (dtheta j u) (c j)) ∧
      ∑ j, c j ≤ M / (Real.exp 1 * (s₀ - s)) := sorry

theorem sharp_cauchy_action {D : Set (Fin m → ℂ)} {r₀ r s₀ M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → W}
    (hs : 0 < s₀) (hu : InClass D r₀ s₀ u) (hb : SBound D r₀ s₀ u M) (hr : r < r₀) :
    ∀ i, SBound D r s₀ (dI i u) (M / (r₀ - r)) := sorry

theorem sharp_bracket {D : Set (Fin n → ℂ)} {r₀ s₀ r s ρ σ Mu Mv : ℝ}
    {u v : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hu : InClass D r₀ s₀ u) (hv : InClass D r s v) (hbu : SBound D r₀ s₀ u Mu)
    (hbv : SBound D r s v Mv) (hρ : 0 < ρ) (hρr : ρ < r) (hσ : 0 < σ) (hσs : σ < s)
    (h1 : r - ρ < r₀) (h2 : s - σ < s₀) :
    SBound D (r - ρ) (s - σ) (KAM.Canonical.poissonBracket u v)
      (1 / Real.exp 1 * (1 / ((r₀ - r + ρ) * σ) + 1 / ((s₀ - s + σ) * ρ)) * Mu * Mv) := sorry

theorem sharp_projections {D : Set (Fin m → ℂ)} {r s M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ}
    (hs : 0 < s) (hu : InClass D r s u) (hb : SBound D r s u M) (S : Set (Fin n → ℤ)) :
    SBound D r s (projMode S u) M := sorry

end KAM.Weighted

/-! ## C. Part 5: canonical maps (`KAM/Canonical/*`)

The flow lemma is stated for a general finite-dimensional complex normed space `E` and a *gauge*
`W : E ≃L[ℂ] E` (the norm `ν(x) = ‖W x‖`; for `ν_{ρ,σ}` it is `scaleCLE ρ σ`), so no second norm
instance is needed. The flow `flow F Ω t z` is a total definition: the value at `t` of a solution of
`ẋ = F x` in `Ω` on `[-1, 1]` through `z`, chosen if one exists (unique by `KAM.ODE.gen_uniqueness`). -/

namespace KAM.Canonical

open KAM.Weighted

/-! ### C.0 Gauge interiors, the flow, the standing hypotheses (`Canonical/Flow.lean`) -/

section Flow

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [FiniteDimensional ℂ E]

/-- `Ω^c = {z | B̄_ν(z, c) ⊆ Ω}` for `ν x = ‖W x‖`. -/
def gaugeInterior (W : E ≃L[ℂ] E) (Ω : Set E) (c : ℝ) : Set E :=
  {z | ∀ w, ‖W (w - z)‖ ≤ c → w ∈ Ω}

open Classical in
/-- `X^t(z)`: the value at `t` of a solution in `Ω` on `[-1, 1]` through `z` (`z` if none exists). -/
def flow (F : E → E) (Ω : Set E) (t : ℝ) (z : E) : E :=
  if h : ∃ γ : ℝ → E, KAM.ODE.IsSolutionIn F Ω (Icc (-1) 1) γ ∧ γ 0 = z then h.choose t else z

/-- Standing hypotheses of `bpN:p5:flow`: `Ω` open, `F` holomorphic on `Ω`, `ν(F) ≤ ε ≤ 1/2`.
(Source premises, not conclusions.) -/
structure SmallField (W : E ≃L[ℂ] E) (Ω : Set E) (F : E → E) (ε : ℝ) : Prop where
  isOpen : IsOpen Ω
  differentiableOn : DifferentiableOn ℂ F Ω
  eps_nonneg : 0 ≤ ε
  eps_le : ε ≤ 1 / 2
  bound : ∀ z ∈ Ω, ‖W (F z)‖ ≤ ε

/-- `Ω^c` is open (`ν`-balls are compact). -/
theorem isOpen_gaugeInterior {Ω : Set E} (hΩ : IsOpen Ω) (W : E ≃L[ℂ] E) (c : ℝ) :
    IsOpen (gaugeInterior W Ω c) := sorry

theorem gaugeInterior_mono (W : E ≃L[ℂ] E) {Ω : Set E} {c c' : ℝ} (h : c' ≤ c) :
    gaugeInterior W Ω c ⊆ gaugeInterior W Ω c' := sorry

/-- `B̄_ν(z, c - c') ⊆ Ω^{c'}` for `z ∈ Ω^c`. -/
theorem ball_subset_gaugeInterior (W : E ≃L[ℂ] E) {Ω : Set E} {c c' : ℝ} {z w : E}
    (hz : z ∈ gaugeInterior W Ω c) (hw : ‖W (w - z)‖ ≤ c - c') : w ∈ gaugeInterior W Ω c' := sorry

/-! ### C.1 `bpN:p5:flow` (a)-(e) (`Canonical/FlowExists.lean`, `Canonical/FlowRegular.lean`) -/

/-- (a) existence on `[-1, 1]`, uniqueness on `J ∩ [-1, 1]`, displacement `ν(X^t z - z) ≤ |t| ε`. -/
theorem flow_a {W : E ≃L[ℂ] E} {Ω : Set E} {F : E → E} {ε : ℝ} (h : SmallField W Ω F ε) {z : E}
    (hz : z ∈ gaugeInterior W Ω (1 / 2)) :
    flow F Ω 0 z = z ∧
    KAM.ODE.IsSolutionIn F Ω (Icc (-1) 1) (fun t => flow F Ω t z) ∧
    (∀ J : Set ℝ, J.OrdConnected → (0 : ℝ) ∈ J → ∀ γ : ℝ → E, KAM.ODE.IsSolutionIn F Ω J γ →
      γ 0 = z → ∀ t ∈ J ∩ Icc (-1) 1, γ t = flow F Ω t z) ∧
    ∀ t ∈ Icc (-1 : ℝ) 1, ‖W (flow F Ω t z - z)‖ ≤ |t| * ε := sorry

/-- (b) regularity, and the variational integral equation `Y(t) = 1 + ∫₀ᵗ DF(X^τ z) Y(τ) dτ`. -/
theorem flow_b {W : E ≃L[ℂ] E} {Ω : Set E} {F : E → E} {ε : ℝ} (h : SmallField W Ω F ε) :
    ContinuousOn (fun p : ℝ × E => flow F Ω p.1 p.2) (Icc (-1) 1 ×ˢ gaugeInterior W Ω (1 / 2)) ∧
    (∀ t ∈ Icc (-1 : ℝ) 1, DifferentiableOn ℂ (flow F Ω t) (gaugeInterior W Ω (1 / 2))) ∧
    (∀ t ∈ Icc (-1 : ℝ) 1, ∀ z ∈ gaugeInterior W Ω (1 / 2), flow F Ω t z ∈ Ω) ∧
    ContinuousOn (fun p : ℝ × E => fderiv ℂ (flow F Ω p.1) p.2)
      (Icc (-1) 1 ×ˢ gaugeInterior W Ω (1 / 2)) ∧
    ∀ t ∈ Icc (-1 : ℝ) 1, ∀ z ∈ gaugeInterior W Ω (1 / 2),
      fderiv ℂ (flow F Ω t) z = ContinuousLinearMap.id ℂ E +
        ∫ τ in (0 : ℝ)..t, (fderiv ℂ F (flow F Ω τ z)).comp (fderiv ℂ (flow F Ω τ) z) := sorry

/-- (c) inverse and derivative bound `|DX^t - 1|_ν ≤ 2ε` at `z ∈ Ω¹`. -/
theorem flow_c {W : E ≃L[ℂ] E} {Ω : Set E} {F : E → E} {ε : ℝ} (h : SmallField W Ω F ε) {z : E}
    (hz : z ∈ gaugeInterior W Ω 1) :
    flow F Ω 1 z ∈ gaugeInterior W Ω (1 / 2) ∧ flow F Ω (-1) (flow F Ω 1 z) = z ∧
    flow F Ω (-1) z ∈ gaugeInterior W Ω (1 / 2) ∧ flow F Ω 1 (flow F Ω (-1) z) = z ∧
    ∀ t ∈ Icc (-1 : ℝ) 1, ∀ v : E, ‖W (fderiv ℂ (flow F Ω t) z v - v)‖ ≤ 2 * ε * ‖W v‖ := sorry

/-- (d) translations. -/
theorem flow_d {W : E ≃L[ℂ] E} {Ω : Set E} {F : E → E} {ε : ℝ} (h : SmallField W Ω F ε) {τ : E}
    (hτΩ : (fun w => w + τ) '' Ω = Ω) (hτF : ∀ w ∈ Ω, F (w + τ) = F w) :
    (fun w => w + τ) '' gaugeInterior W Ω (1 / 2) = gaugeInterior W Ω (1 / 2) ∧
    ∀ z ∈ gaugeInterior W Ω (1 / 2), ∀ t ∈ Icc (-1 : ℝ) 1, flow F Ω t (z + τ) = flow F Ω t z + τ :=
  sorry

end Flow

/-- (e) reality, `N = 2n`: `ℝᴺ = range (KAM.realInclusion₂ n)`. -/
theorem flow_e {n : ℕ} {W : ((Fin n → ℂ) × (Fin n → ℂ)) ≃L[ℂ] ((Fin n → ℂ) × (Fin n → ℂ))}
    {Ω : Set ((Fin n → ℂ) × (Fin n → ℂ))} {F : (Fin n → ℂ) × (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    {ε : ℝ} (h : SmallField W Ω F ε)
    (hreal : ∀ x ∈ Ω, x ∈ range (KAM.realInclusion₂ n) → F x ∈ range (KAM.realInclusion₂ n)) :
    ∀ x ∈ gaugeInterior W Ω (1 / 2), x ∈ range (KAM.realInclusion₂ n) →
      ∀ t ∈ Icc (-1 : ℝ) 1, flow F Ω t x ∈ range (KAM.realInclusion₂ n) := sorry

/-! ### C.2 Hamiltonian fields, size of the field (`bpN:p5:vf-bound`; `Canonical/VectorField.lean`) -/

section Ham

variable {n : ℕ}

/-- The Hamiltonian field of a holomorphic function is holomorphic (K's `KAM.holomorphic_regularity`). -/
theorem differentiableOn_hamField {U : Set ((Fin n → ℂ) × (Fin n → ℂ))} (hU : IsOpen U)
    {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hφ : DifferentiableOn ℂ φ U) :
    DifferentiableOn ℂ (KAM.hamiltonianVectorFieldℂ φ) U := sorry

/-- `bpN:p5:vf-bound`. -/
theorem vf_bound {D : Set (Fin n → ℂ)} {r s ρ σ Φ : ℝ} {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hφ : InClass D r s φ) (hb : WBound D r s φ Φ) (hρ : 0 < ρ) (hρr : ρ < r) (hσ : 0 < σ)
    (hσs : σ < s) :
    ∀ z ∈ Dom n D (r - ρ) (s - σ), (∀ i, ‖dI i φ z‖ ≤ Φ / ρ) ∧
      (∀ i, ‖dtheta i φ z‖ ≤ Φ / (Real.exp 1 * σ)) ∧
      scaledNorm ρ σ (KAM.hamiltonianVectorFieldℂ φ z) ≤ Φ / (ρ * σ) := sorry

/-! ### C.3 Symplectic flow and canonical maps (`bpN:p5:symplectic`, `bpN:p5:canonical`; `Canonical/Symplectic.lean`) -/

/-- `bpN:p5:symplectic`: `YᵀJY = J` (form invariance), `YJYᵀ = J` (the bracket of linear
functionals is preserved), `det Y = ±1`, for `Y = DX^t(z)`. -/
theorem symplectic {W : ((Fin n → ℂ) × (Fin n → ℂ)) ≃L[ℂ] ((Fin n → ℂ) × (Fin n → ℂ))}
    {Ω : Set ((Fin n → ℂ) × (Fin n → ℂ))} {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ε : ℝ}
    (hφ : DifferentiableOn ℂ φ Ω) (h : SmallField W Ω (KAM.hamiltonianVectorFieldℂ φ) ε)
    {z : (Fin n → ℂ) × (Fin n → ℂ)} (hz : z ∈ gaugeInterior W Ω (1 / 2)) {t : ℝ}
    (ht : t ∈ Icc (-1 : ℝ) 1) (Y : ((Fin n → ℂ) × (Fin n → ℂ)) →L[ℂ] ((Fin n → ℂ) × (Fin n → ℂ)))
    (hY : Y = fderiv ℂ (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t) z) :
    (∀ v w, symplFormC (Y v) (Y w) = symplFormC v w) ∧
    (∀ ξ η : ((Fin n → ℂ) × (Fin n → ℂ)) →L[ℂ] ℂ,
      (ξ.comp Y) (KAM.hamiltonianJ (η.comp Y)) = ξ (KAM.hamiltonianJ η)) ∧
    (Y.det = 1 ∨ Y.det = -1) := sorry

/-- `bpN:p5:canonical` (a): bracket invariance (and `u ∘ Φ` is holomorphic near `z`). -/
theorem canonical_bracket {W : ((Fin n → ℂ) × (Fin n → ℂ)) ≃L[ℂ] ((Fin n → ℂ) × (Fin n → ℂ))}
    {Ω : Set ((Fin n → ℂ) × (Fin n → ℂ))} {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ε : ℝ}
    (hφ : DifferentiableOn ℂ φ Ω) (h : SmallField W Ω (KAM.hamiltonianVectorFieldℂ φ) ε)
    {z : (Fin n → ℂ) × (Fin n → ℂ)} (hz : z ∈ gaugeInterior W Ω (1 / 2)) {t : ℝ}
    (ht : t ∈ Icc (-1 : ℝ) 1) {U : Set ((Fin n → ℂ) × (Fin n → ℂ))} (hU : IsOpen U)
    (hzU : flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z ∈ U)
    {u v : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hu : DifferentiableOn ℂ u U)
    (hv : DifferentiableOn ℂ v U) :
    DifferentiableAt ℂ (fun w => u (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t w)) z ∧
    poissonBracket (fun w => u (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t w))
        (fun w => v (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t w)) z =
      poissonBracket u v (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z) := sorry

/-- `bpN:p5:canonical` (b): `DΦ(z) X_{H∘Φ}(z) = X_H(Φ z)`. -/
theorem canonical_field {W : ((Fin n → ℂ) × (Fin n → ℂ)) ≃L[ℂ] ((Fin n → ℂ) × (Fin n → ℂ))}
    {Ω : Set ((Fin n → ℂ) × (Fin n → ℂ))} {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ε : ℝ}
    (hφ : DifferentiableOn ℂ φ Ω) (h : SmallField W Ω (KAM.hamiltonianVectorFieldℂ φ) ε)
    {z : (Fin n → ℂ) × (Fin n → ℂ)} (hz : z ∈ gaugeInterior W Ω (1 / 2)) {t : ℝ}
    (ht : t ∈ Icc (-1 : ℝ) 1) {U : Set ((Fin n → ℂ) × (Fin n → ℂ))} (hU : IsOpen U)
    (hzU : flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z ∈ U)
    {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hH : DifferentiableOn ℂ H U) :
    fderiv ℂ (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t) z
        (KAM.hamiltonianVectorFieldℂ (fun w => H (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t w)) z) =
      KAM.hamiltonianVectorFieldℂ H (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z) := sorry

/-- `bpN:p5:canonical` (c): orbits transfer. -/
theorem canonical_orbit {W : ((Fin n → ℂ) × (Fin n → ℂ)) ≃L[ℂ] ((Fin n → ℂ) × (Fin n → ℂ))}
    {Ω : Set ((Fin n → ℂ) × (Fin n → ℂ))} {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ε : ℝ}
    (hφ : DifferentiableOn ℂ φ Ω) (h : SmallField W Ω (KAM.hamiltonianVectorFieldℂ φ) ε) {t : ℝ}
    (ht : t ∈ Icc (-1 : ℝ) 1) {U : Set ((Fin n → ℂ) × (Fin n → ℂ))} (hU : IsOpen U)
    {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hH : DifferentiableOn ℂ H U) {J : Set ℝ}
    {y : ℝ → (Fin n → ℂ) × (Fin n → ℂ)}
    (hy : ∀ τ ∈ J, y τ ∈ gaugeInterior W Ω (1 / 2) ∧
      HasDerivAt y (KAM.hamiltonianVectorFieldℂ
        (fun w => H (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t w)) (y τ)) τ)
    (hyU : ∀ τ ∈ J, flow (KAM.hamiltonianVectorFieldℂ φ) Ω t (y τ) ∈ U) :
    ∀ τ ∈ J, HasDerivAt (fun s => flow (KAM.hamiltonianVectorFieldℂ φ) Ω t (y s))
      (KAM.hamiltonianVectorFieldℂ H (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t (y τ))) τ := sorry

/-! ### C.4 Derivatives along the flow, Taylor (`bpN:p5:lie-derivative`, `bpN:p5:taylor`; `Canonical/Lie.lean`) -/

/-- `bpN:p5:lie-derivative`: `g(t) = u(X^t z)` is `C^∞` on `[-1, 1]`, `g⁽ʲ⁾(t) = (ad_φ^j u)(X^t z)`. -/
theorem lie_derivative {W : ((Fin n → ℂ) × (Fin n → ℂ)) ≃L[ℂ] ((Fin n → ℂ) × (Fin n → ℂ))}
    {Ω Ω₁ : Set ((Fin n → ℂ) × (Fin n → ℂ))} {φ u : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ε : ℝ}
    (hφ : DifferentiableOn ℂ φ Ω) (h : SmallField W Ω (KAM.hamiltonianVectorFieldℂ φ) ε)
    (hΩ₁ : IsOpen Ω₁) (hΩ₁Ω : Ω₁ ⊆ Ω) (hu : DifferentiableOn ℂ u Ω₁)
    {z : (Fin n → ℂ) × (Fin n → ℂ)} (hz : z ∈ gaugeInterior W Ω (1 / 2))
    (htraj : ∀ t ∈ Icc (-1 : ℝ) 1, flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z ∈ Ω₁) :
    (∀ j, DifferentiableOn ℂ (adPow φ j u) Ω₁) ∧
    ContDiffOn ℝ ∞ (fun t => u (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z)) (Icc (-1) 1) ∧
    ∀ j, ∀ t ∈ Icc (-1 : ℝ) 1,
      iteratedDerivWithin j (fun t => u (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z)) (Icc (-1) 1) t =
        adPow φ j u (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z) := sorry

/-- `bpN:p5:taylor`: Taylor with integral remainder along the flow, order `N ≥ 1`
(hypotheses of `lie_derivative`). -/
theorem taylor_lie {W : ((Fin n → ℂ) × (Fin n → ℂ)) ≃L[ℂ] ((Fin n → ℂ) × (Fin n → ℂ))}
    {Ω Ω₁ : Set ((Fin n → ℂ) × (Fin n → ℂ))} {φ u : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ε : ℝ}
    (hφ : DifferentiableOn ℂ φ Ω) (h : SmallField W Ω (KAM.hamiltonianVectorFieldℂ φ) ε)
    (hΩ₁ : IsOpen Ω₁) (hΩ₁Ω : Ω₁ ⊆ Ω) (hu : DifferentiableOn ℂ u Ω₁)
    {z : (Fin n → ℂ) × (Fin n → ℂ)} (hz : z ∈ gaugeInterior W Ω (1 / 2))
    (htraj : ∀ t ∈ Icc (-1 : ℝ) 1, flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z ∈ Ω₁)
    {N : ℕ} (hN : 1 ≤ N) :
    u (flow (KAM.hamiltonianVectorFieldℂ φ) Ω 1 z) =
        ∑ j ∈ Finset.range N, ((j.factorial : ℂ)⁻¹) * adPow φ j u z +
          ∫ t in (0 : ℝ)..1, ((((1 - t) ^ (N - 1) / ((N - 1).factorial : ℝ) : ℝ) : ℂ)) *
            adPow φ N u (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z) ∧
    ∀ B : ℝ, (∀ t ∈ Icc (0 : ℝ) 1, ‖adPow φ N u (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z)‖ ≤ B) →
      ‖∫ t in (0 : ℝ)..1, ((((1 - t) ^ (N - 1) / ((N - 1).factorial : ℝ) : ℝ) : ℂ)) *
            adPow φ N u (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z)‖ ≤ B / (N.factorial : ℝ) := sorry

/-- `bpN:p5:taylor`, displayed formula (`bpN:p5:eq:poschel`): `N = 2` for `h`, `N = 1` for `f₀`. -/
theorem taylor_poschel {W : ((Fin n → ℂ) × (Fin n → ℂ)) ≃L[ℂ] ((Fin n → ℂ) × (Fin n → ℂ))}
    {Ω Ω₁ : Set ((Fin n → ℂ) × (Fin n → ℂ))} {φ h f₀ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ε : ℝ}
    (hφ : DifferentiableOn ℂ φ Ω) (hs : SmallField W Ω (KAM.hamiltonianVectorFieldℂ φ) ε)
    (hΩ₁ : IsOpen Ω₁) (hΩ₁Ω : Ω₁ ⊆ Ω) (hh : DifferentiableOn ℂ h Ω₁)
    (hf : DifferentiableOn ℂ f₀ Ω₁) {z : (Fin n → ℂ) × (Fin n → ℂ)}
    (hz : z ∈ gaugeInterior W Ω (1 / 2))
    (htraj : ∀ t ∈ Icc (-1 : ℝ) 1, flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z ∈ Ω₁) :
    h (flow (KAM.hamiltonianVectorFieldℂ φ) Ω 1 z) + f₀ (flow (KAM.hamiltonianVectorFieldℂ φ) Ω 1 z) =
      h z + poissonBracket h φ z + f₀ z +
        ∫ t in (0 : ℝ)..1, poissonBracket
          (fun w => ((1 - t : ℝ) : ℂ) * poissonBracket h φ w + f₀ w) φ
          (flow (KAM.hamiltonianVectorFieldℂ φ) Ω t z) := sorry

/-! ### C.5 Lemma B.5: iterated brackets and composition (`bpN:p5:adjoint`, `bpN:p5:composition`) -/

/-- `bpN:p5:adjoint` (`Canonical/Adjoint.lean`). -/
theorem adjoint_bound {D : Set (Fin n → ℂ)} {r s r' s' ρ σ Φ U : ℝ}
    {φ u : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hφ : InClass D r' s' φ) (hu : InClass D r s u)
    (hbφ : WBound D r' s' φ Φ) (hbu : WBound D r s u U) (hρ : 0 < ρ) (hρr : ρ < r) (hσ : 0 < σ)
    (hσs : σ < s) (hr : r + ρ ≤ r') (hs : s + σ ≤ s') {h : ℕ} (hh : 1 ≤ h) :
    InClass D (r - ρ) (s - σ) (adPow φ h u) ∧
    WBound D (r - ρ) (s - σ) (adPow φ h u)
      ((2 * (h : ℝ) ^ 2 / (Real.exp 1 * ρ * σ)) ^ h * ((h.factorial : ℝ) / ((2 * h).factorial : ℝ)) *
        Φ ^ h * U) ∧
    WBound D (r - ρ) (s - σ) (fun z => ((h.factorial : ℂ)⁻¹) * adPow φ h u z)
      ((Real.exp 1 * (2 * Φ / (ρ * σ)) / 4) ^ h * U) := sorry

/-- The source premises of `bpN:p5:composition`: `0<ρ<r≤r'-ρ`, `0<σ<s≤s'-σ`, `φ ∈ Os r' s'` of finite
norm `Φ`, `η = 2Φ/(ρσ) ≤ 1/2`. -/
structure ComposeData (D : Set (Fin n → ℂ)) (r s r' s' ρ σ Φ : ℝ)
    (φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) : Prop where
  hρ : 0 < ρ
  hρr : ρ < r
  hr : r ≤ r' - ρ
  hσ : 0 < σ
  hσs : σ < s
  hs : s ≤ s' - σ
  φ_class : InClass D r' s' φ
  Φ_nonneg : 0 ≤ Φ
  φ_bound : WBound D r' s' φ Φ
  eta_le : 2 * Φ / (ρ * σ) ≤ 1 / 2

/-- `Ω = 𝒟_{r'-ρ, s'-σ}` and the gauge `ν_{ρ,σ}` of `bpN:p5:composition`. -/
def ComposeData.omega {D : Set (Fin n → ℂ)} {r s r' s' ρ σ Φ : ℝ}
    {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (_ : ComposeData D r s r' s' ρ σ Φ φ) :
    Set ((Fin n → ℂ) × (Fin n → ℂ)) := Dom n D (r' - ρ) (s' - σ)

def ComposeData.gauge {D : Set (Fin n → ℂ)} {r s r' s' ρ σ Φ : ℝ}
    {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : ComposeData D r s r' s' ρ σ Φ φ) :
    ((Fin n → ℂ) × (Fin n → ℂ)) ≃L[ℂ] ((Fin n → ℂ) × (Fin n → ℂ)) :=
  scaleCLE ρ σ hd.hρ hd.hσ

/-- `bpN:p5:composition` (i) (`Canonical/Composition.lean`). -/
theorem composition_domain {D : Set (Fin n → ℂ)} {r s r' s' ρ σ Φ : ℝ}
    {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : ComposeData D r s r' s' ρ σ Φ φ) :
    (∀ z ∈ hd.omega, scaledNorm ρ σ (KAM.hamiltonianVectorFieldℂ φ z) ≤ (2 * Φ / (ρ * σ)) / 2) ∧
    SmallField hd.gauge hd.omega (KAM.hamiltonianVectorFieldℂ φ) (Φ / (ρ * σ)) ∧
    Dom n D (r - ρ) (s - σ) ⊆ gaugeInterior hd.gauge hd.omega (1 / 2) ∧
    ∀ z ∈ Dom n D (r - ρ) (s - σ), ∀ t ∈ Icc (-1 : ℝ) 1,
      flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega t z ∈ Dom n D r s := sorry

/-- `bpN:p5:composition` (ii): the Lie series converges in `|·|_{r-ρ,s-σ}` to `u ∘ X¹_φ`, with the
bound `(1 - eη/4)⁻¹ |u| ≤ (1 - η)⁻¹ |u|`, `η = 2Φ/(ρσ)`. -/
theorem composition_series {D : Set (Fin n → ℂ)} {r s r' s' ρ σ Φ U : ℝ}
    {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : ComposeData D r s r' s' ρ σ Φ φ)
    {u : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hu : InClass D r s u) (hb : WBound D r s u U) :
    (∀ ε : ℝ, 0 < ε → ∃ N : ℕ, ∀ N' ≥ N, WBound D (r - ρ) (s - σ)
      (fun z => (∑' j : ℕ, ((j.factorial : ℂ)⁻¹) * adPow φ j u z) -
        ∑ j ∈ Finset.range N', ((j.factorial : ℂ)⁻¹) * adPow φ j u z) ε) ∧
    InClass D (r - ρ) (s - σ) (fun z => ∑' j : ℕ, ((j.factorial : ℂ)⁻¹) * adPow φ j u z) ∧
    WBound D (r - ρ) (s - σ) (fun z => ∑' j : ℕ, ((j.factorial : ℂ)⁻¹) * adPow φ j u z)
      ((1 - Real.exp 1 * (2 * Φ / (ρ * σ)) / 4)⁻¹ * U) ∧
    (∀ z ∈ Dom n D (r - ρ) (s - σ), u (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 z) =
      ∑' j : ℕ, ((j.factorial : ℂ)⁻¹) * adPow φ j u z) ∧
    InClass D (r - ρ) (s - σ) (fun z => u (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 z)) ∧
    WBound D (r - ρ) (s - σ) (fun z => u (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 z))
      ((1 - 2 * Φ / (ρ * σ))⁻¹ * U) := sorry

/-- `bpN:p5:composition` (iii): `X^t`, `|t| ≤ 1`, with `η` replaced by `|t| η`. -/
theorem composition_t {D : Set (Fin n → ℂ)} {r s r' s' ρ σ Φ U : ℝ}
    {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : ComposeData D r s r' s' ρ σ Φ φ)
    {u : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hu : InClass D r s u) (hb : WBound D r s u U) {t : ℝ}
    (ht : t ∈ Icc (-1 : ℝ) 1) :
    InClass D (r - ρ) (s - σ) (fun z => u (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega t z)) ∧
    WBound D (r - ρ) (s - σ) (fun z => u (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega t z))
      ((1 - |t| * (2 * Φ / (ρ * σ)))⁻¹ * U) := sorry

/-- `bpN:p5:composition` (iv): reality. -/
theorem composition_real {D : Set (Fin n → ℂ)} {r s r' s' ρ σ Φ : ℝ}
    {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : ComposeData D r s r' s' ρ σ Φ φ)
    {u : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hur : RealOn (Dom n D r s) u)
    (hφr : RealOn (Dom n D r' s') φ) :
    RealOn (Dom n D (r - ρ) (s - σ)) (fun z => u (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 z)) :=
  sorry

/-- `bpN:p5:composition-integral`. -/
theorem composition_integral {D : Set (Fin n → ℂ)} {r s r' s' ρ σ Φ V : ℝ}
    {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : ComposeData D r s r' s' ρ σ Φ φ)
    {v : ℝ → (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hv : ∀ t ∈ Icc (0 : ℝ) 1, InClass D r s (v t) ∧ WBound D r s (v t) V)
    (hc : ContinuousOn (fun p : ℝ × ((Fin n → ℂ) × (Fin n → ℂ)) => v p.1 p.2)
      (Icc 0 1 ×ˢ Dom n D r s))
    (hDc : ContinuousOn (fun p : ℝ × ((Fin n → ℂ) × (Fin n → ℂ)) => fderiv ℂ (v p.1) p.2)
      (Icc 0 1 ×ˢ Dom n D r s)) :
    InClass D (r - ρ) (s - σ)
      (fun z => ∫ t in (0 : ℝ)..1, v t (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega t z)) ∧
    WBound D (r - ρ) (s - σ)
      (fun z => ∫ t in (0 : ℝ)..1, v t (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega t z))
      ((1 - 2 * Φ / (ρ * σ))⁻¹ * V) := sorry

/-- The remainder series of `bpN:p5:transform`,
`𝓡 = ∑_{j ≥ 1} (ad^j w / (j+1)! + ad^j f₀ / j!)` with `w = {h, φ}` (indexed by `i = j - 1`). -/
def liftRemainder (φ h f₀ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) : (Fin n → ℂ) × (Fin n → ℂ) → ℂ :=
  fun z => ∑' i : ℕ, ((((i + 2).factorial : ℂ)⁻¹) * adPow φ (i + 1) (poissonBracket h φ) z +
    (((i + 1).factorial : ℂ)⁻¹) * adPow φ (i + 1) f₀ z)

/-- `bpN:p5:transform` (`Canonical/Transform.lean`): `h` of any norm, `w = {h, φ}` and `f₀` of finite
norm `Mw`, `F₀` (`η = 2Φ/(ρσ)`). -/
theorem transform {D : Set (Fin n → ℂ)} {r s r' s' ρ σ Φ Mw F₀ : ℝ}
    {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hd : ComposeData D r s r' s' ρ σ Φ φ)
    {h f₀ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hh : InClass D r s h) (hf : InClass D r s f₀)
    (hw : WBound D r s (poissonBracket h φ) Mw) (hf₀ : WBound D r s f₀ F₀) :
    (∀ z ∈ Dom n D (r - ρ) (s - σ),
      h (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 z) + f₀ (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 z) =
        h z + poissonBracket h φ z + f₀ z + liftRemainder φ h f₀ z) ∧
    (∀ z ∈ Dom n D (r - ρ) (s - σ), liftRemainder φ h f₀ z =
      ∫ t in (0 : ℝ)..1, poissonBracket
        (fun w => ((1 - t : ℝ) : ℂ) * poissonBracket h φ w + f₀ w) φ
        (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega t z)) ∧
    InClass D (r - ρ) (s - σ) (liftRemainder φ h f₀) ∧
    WBound D (r - ρ) (s - σ) (liftRemainder φ h f₀)
      (∑' i : ℕ, (Real.exp 1 * (2 * Φ / (ρ * σ)) / 4) ^ (i + 1) * (Mw / ((i : ℝ) + 2) + F₀)) ∧
    WBound D (r - ρ) (s - σ) (liftRemainder φ h f₀)
      ((2 * Φ / (ρ * σ)) / (1 - 2 * Φ / (ρ * σ)) * (Mw / 2 + F₀)) := sorry

/-! ### C.6 The canonical map `Φ = X¹_φ` on weighted domains (`bpN:p5:canonical-map`;
`Canonical/CanonicalMap.lean`) -/

/-- Source premises of `bpN:p5:canonical-map`: `0 < ρ < r/2`, `0 < σ < s/2`, `φ ∈ Os r s` of finite
norm `Φ`, `ε = Φ/(ρσ) ≤ 1/2`. -/
structure CanonData (D : Set (Fin n → ℂ)) (r s ρ σ Φ : ℝ) (φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) : Prop where
  hρ : 0 < ρ
  hρr : ρ < r / 2
  hσ : 0 < σ
  hσs : σ < s / 2
  φ_class : InClass D r s φ
  Φ_nonneg : 0 ≤ Φ
  φ_bound : WBound D r s φ Φ
  eps_le : Φ / (ρ * σ) ≤ 1 / 2

def CanonData.omega {D : Set (Fin n → ℂ)} {r s ρ σ Φ : ℝ} {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (_ : CanonData D r s ρ σ Φ φ) : Set ((Fin n → ℂ) × (Fin n → ℂ)) := Dom n D (r - ρ) (s - σ)

def CanonData.gauge {D : Set (Fin n → ℂ)} {r s ρ σ Φ : ℝ} {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hd : CanonData D r s ρ σ Φ φ) :
    ((Fin n → ℂ) × (Fin n → ℂ)) ≃L[ℂ] ((Fin n → ℂ) × (Fin n → ℂ)) := scaleCLE ρ σ hd.hρ hd.hσ

/-- (a) field bound, definedness on `𝒟_{r-3ρ/2, s-3σ/2}`, displacement, explicit components (`t = ±1`). -/
theorem canonical_map_a {D : Set (Fin n → ℂ)} {r s ρ σ Φ : ℝ} {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hd : CanonData D r s ρ σ Φ φ) :
    (∀ z ∈ hd.omega, scaledNorm ρ σ (KAM.hamiltonianVectorFieldℂ φ z) ≤ Φ / (ρ * σ)) ∧
    SmallField hd.gauge hd.omega (KAM.hamiltonianVectorFieldℂ φ) (Φ / (ρ * σ)) ∧
    Dom n D (r - 3 * ρ / 2) (s - 3 * σ / 2) ⊆ gaugeInterior hd.gauge hd.omega (1 / 2) ∧
    (∀ t ∈ Icc (-1 : ℝ) 1, DifferentiableOn ℂ (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega t)
      (Dom n D (r - 3 * ρ / 2) (s - 3 * σ / 2))) ∧
    (∀ z ∈ Dom n D (r - 3 * ρ / 2) (s - 3 * σ / 2), ∀ t ∈ Icc (-1 : ℝ) 1,
      flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega t z ∈ hd.omega ∧
      scaledNorm ρ σ (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega t z - z) ≤ |t| * (Φ / (ρ * σ))) ∧
    (∀ z ∈ Dom n D (r - 3 * ρ / 2) (s - 3 * σ / 2),
      ‖(flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 z).1 - z.1‖ ≤ Φ / ρ ∧
      ‖(flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 z).2 - z.2‖ ≤ Φ / (Real.exp 1 * σ) ∧
      ‖(flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega (-1) z).1 - z.1‖ ≤ Φ / ρ ∧
      ‖(flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega (-1) z).2 - z.2‖ ≤ Φ / (Real.exp 1 * σ)) := sorry

/-- (b) integer angle translations and reality. -/
theorem canonical_map_b {D : Set (Fin n → ℂ)} {r s ρ σ Φ : ℝ} {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hd : CanonData D r s ρ σ Φ φ) :
    (∀ k : Fin n → ℤ, ∀ z ∈ Dom n D (r - 3 * ρ / 2) (s - 3 * σ / 2),
      flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 (z.1 + (fun i => (k i : ℂ)), z.2) =
        flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 z + ((fun i => (k i : ℂ)), 0)) ∧
    (RealOn (Dom n D r s) φ → ∀ x : (Fin n → ℝ) × (Fin n → ℝ),
      KAM.realInclusion₂ n x ∈ Dom n D (r - 3 * ρ / 2) (s - 3 * σ / 2) →
        flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 (KAM.realInclusion₂ n x) ∈
          range (KAM.realInclusion₂ n)) := sorry

/-- (c) derivative `|W(DΦ - 1)W⁻¹| ≤ 2Φ/(ρσ)` on `𝒟_{r-2ρ, s-2σ}` (every `X^t`). -/
theorem canonical_map_c {D : Set (Fin n → ℂ)} {r s ρ σ Φ : ℝ} {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hd : CanonData D r s ρ σ Φ φ) :
    ∀ z ∈ Dom n D (r - 2 * ρ) (s - 2 * σ), ∀ t ∈ Icc (-1 : ℝ) 1, ∀ v,
      scaledNorm ρ σ (fderiv ℂ (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega t) z v - v) ≤
        2 * (Φ / (ρ * σ)) * scaledNorm ρ σ v := sorry

/-- (d) `(DΦ)ᵀ J DΦ = J` on `𝒟_{r-3ρ/2, s-3σ/2}` (the hypotheses of `canonical_*` hold there by (a)). -/
theorem canonical_map_d {D : Set (Fin n → ℂ)} {r s ρ σ Φ : ℝ} {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hd : CanonData D r s ρ σ Φ φ) :
    ∀ z ∈ Dom n D (r - 3 * ρ / 2) (s - 3 * σ / 2), ∀ v w,
      symplFormC (fderiv ℂ (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1) z v)
        (fderiv ℂ (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1) z w) = symplFormC v w := sorry

/-- (e) `Ψ = X⁻¹` is a two-sided inverse on `𝒟_{r-2ρ, s-2σ}`. -/
theorem canonical_map_e {D : Set (Fin n → ℂ)} {r s ρ σ Φ : ℝ} {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hd : CanonData D r s ρ σ Φ φ) :
    ∀ z ∈ Dom n D (r - 2 * ρ) (s - 2 * σ),
      flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega (-1) (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 z) = z ∧
      flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 (flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega (-1) z) = z ∧
      flow (KAM.hamiltonianVectorFieldℂ φ) hd.omega 1 z ∈ Dom n D (r - 3 * ρ / 2) (s - 3 * σ / 2) := sorry

end Ham

end KAM.Canonical

/-! ## D. Part 1: interfaces and conversion of hypotheses (`KAM/Nekhoroshev/Interfaces/*`) -/

namespace KAM.Nekhoroshev

variable {n : ℕ}

/-! ### D.0 Euclidean comparisons (`bpN:p1:norm-compare`; `Interfaces/Norms.lean`) -/

/-- `|x|₂ = √(∑ |xᵢ|²)` of a coordinate vector (never `EuclideanSpace`). -/
def euclid {𝕜 : Type*} [RCLike 𝕜] (x : Fin n → 𝕜) : ℝ := Real.sqrt (∑ i, ‖x i‖ ^ 2)

/-- (a) `|x|_∞ ≤ |x|₂ ≤ √n |x|_∞` and `|x|₂² ≤ n |x|_∞²`, every `n ≥ 0`. -/
theorem norm_le_euclid {𝕜 : Type*} [RCLike 𝕜] (x : Fin n → 𝕜) :
    ‖x‖ ≤ euclid x ∧ euclid x ≤ Real.sqrt n * ‖x‖ ∧ euclid x ^ 2 ≤ n * ‖x‖ ^ 2 := sorry

/-- (b) `|k|₂ ≤ |k|₁ ≤ √n |k|₂` for `k ∈ ℤⁿ` (`|k|₁ = KAM.Fourier.modeSize k`), and the two
inclusions of lattice balls (the direction corrected in review N06). -/
theorem modeSize_euclid_compare (k : Fin n → ℤ) :
    euclid (fun i => (k i : ℝ)) ≤ KAM.Fourier.modeSize k ∧
      KAM.Fourier.modeSize k ≤ Real.sqrt n * euclid (fun i => (k i : ℝ)) := sorry

theorem lattice_ball_inclusions (K : ℝ) :
    {k : Fin n → ℤ | KAM.Fourier.modeSize k ≤ K} ⊆ {k | euclid (fun i => (k i : ℝ)) ≤ K} ∧
    {k : Fin n → ℤ | euclid (fun i => (k i : ℝ)) ≤ K} ⊆ {k | KAM.Fourier.modeSize k ≤ Real.sqrt n * K} :=
  sorry

/-- (c) the bilinear bound `|xᵀ Q y| ≤ n M₀ |x|₂ |y|₂` if all entries are `≤ M₀`. -/
theorem bilinear_euclid_bound (Q : Fin n → Fin n → ℂ) {M₀ : ℝ} (hQ : ∀ i j, ‖Q i j‖ ≤ M₀)
    (x y : Fin n → ℂ) : ‖∑ i, ∑ j, x i * Q i j * y j‖ ≤ n * M₀ * euclid x * euclid y := sorry

/-! ### D.1 The standing data (`bpN:p1:s-holo#data`; `Interfaces/Setting.lean`)

`Data` and `Wdom` are also what Part 3 (`bpN:p3:s-N#data`) needs: they are declared here, once, and
`Nekhoroshev/ODE/Specialization.lean` imports them (coordination item C1 of the design). -/

/-- `R, s > 0`, `h ∈ A_s` integrable, `f` an `ε`-small analytic perturbation. -/
structure Data (n : ℕ) (R s ε : ℝ) (h : (Fin n → ℂ) → ℂ)
    (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) : Prop where
  hR : 0 < R
  hs : 0 < s
  hh : IsAnalyticIntegrable R s h
  hf : IsAnalyticPerturbation R s ε f

/-- `W_s = ℝⁿ × B(0, R + s)`. -/
def Wdom (n : ℕ) (R s : ℝ) : Set ((Fin n → ℝ) × (Fin n → ℝ)) :=
  univ ×ˢ ball (0 : Fin n → ℝ) (R + s)

/-! ### D.2 Domains (`bpN:p1:realdomain`; `Interfaces/Domains.lean`) -/

/-- (a) `ℬ_s(R) = B(0, R + s)` (Remark `bpN:p0:rdomain-eq`). -/
theorem realActionDomain_eq {R s : ℝ} (hR : 0 < R) (hs : 0 < s) :
    realActionDomain n R s = ball (0 : Fin n → ℝ) (R + s) := sorry

theorem isOpen_realActionDomain {R s : ℝ} (hR : 0 < R) (hs : 0 < s) :
    IsOpen (realActionDomain n R s) := sorry

theorem ball_subset_realActionDomain {R s : ℝ} (hR : 0 < R) (hs : 0 < s) :
    actionBall n R ⊆ realActionDomain n R s := sorry

theorem isOpen_Wdom (R s : ℝ) : IsOpen (Wdom n R s) := sorry

/-- (a) `D_s(R) ∩ (ℝⁿ × ℝⁿ) = W_s`, as `ι⁻¹(D_s(R)) = W_s`. -/
theorem realInclusion₂_preimage_complexDomain {R s : ℝ} (hR : 0 < R) (hs : 0 < s) :
    KAM.realInclusion₂ n ⁻¹' complexDomain n R s = Wdom n R s := sorry

/-- (b) `D_s(R)` and `B(0,R)_s` are open, and `B(0,R)_s ∩ ℝⁿ = ℬ_s(R)`. -/
theorem isOpen_actionNbhd_ball (R s : ℝ) : IsOpen (KAM.actionNbhd (actionBall n R) s) := sorry

theorem isOpen_complexDomain (R s : ℝ) : IsOpen (complexDomain n R s) := sorry

theorem realInclusion_preimage_actionNbhd (R s : ℝ) :
    KAM.realInclusion n ⁻¹' KAM.actionNbhd (actionBall n R) s = realActionDomain n R s := sorry

/-- (c) max-norm tubes: `P = {J | |J| ≤ R/2}`, `0 < r₀ ≤ min(s/2, R/8)`. -/
theorem tube_subset {R s r₀ : ℝ} (hr₀ : 0 < r₀) (hrs : r₀ ≤ s / 2) (hrR : r₀ ≤ R / 8)
    {J : Fin n → ℝ} (hJ : ‖J‖ ≤ R / 2) {I : Fin n → ℂ} (hI : ‖I - KAM.realInclusion n J‖ < r₀) :
    I ∈ KAM.actionNbhd (actionBall n R) s ∧ ‖I - KAM.realInclusion n J‖ < s := sorry

theorem tube_real {R r₀ : ℝ} (hrR : r₀ ≤ R / 8) {J : Fin n → ℝ} (hJ : ‖J‖ ≤ R / 2) {I : Fin n → ℝ}
    (hI : ‖KAM.realInclusion n I - KAM.realInclusion n J‖ < r₀) :
    ‖I‖ < 5 * R / 8 ∧ ‖I‖ < 3 * R / 4 := sorry

/-- (d) `T_ρ ⊆ T_s` for `ρ ≤ s`; `T_s = ℂ⁰` for `n = 0` (no `n > 0` hypothesis is needed). -/
theorem complexStrip_mono {ρ s : ℝ} (h : ρ ≤ s) :
    KAM.complexStrip n ρ ⊆ KAM.complexStrip n s := sorry

theorem complexStrip_zero (ρ : ℝ) : KAM.complexStrip 0 ρ = univ := sorry

/-! ### D.3 Holomorphy gives a real Hamiltonian (`bpN:p1:holo-real`; `Interfaces/HoloReal.lean`)

`G(θ, I) = h(I) + f(θ, I)`, `H = KAM.realHamiltonian h f`, `ι = KAM.realInclusion₂ n`. -/

/-- (a) `G` and `h` are `C^∞` (holomorphic) on `D_s(R)` and `B(0,R)_s`. -/
theorem holo_real_a {R s ε : ℝ} {h : (Fin n → ℂ) → ℂ} {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hd : Data n R s ε h f) :
    DifferentiableOn ℂ (fun w : (Fin n → ℂ) × (Fin n → ℂ) => h w.2 + f w) (complexDomain n R s) ∧
    ContDiffOn ℂ ∞ (fun w : (Fin n → ℂ) × (Fin n → ℂ) => h w.2 + f w) (complexDomain n R s) ∧
    ContDiffOn ℂ ∞ h (KAM.actionNbhd (actionBall n R) s) := sorry

/-- (b) `H` is `C^∞` on `W_s`, real, `H = G ∘ ι`, `D^kH = D^kG ∘ ι` at every order; same for `h_ℝ`. -/
theorem holo_real_b {R s ε : ℝ} {h : (Fin n → ℂ) → ℂ} {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hd : Data n R s ε h f) :
    ContDiffOn ℝ ∞ (KAM.realHamiltonian h f) (Wdom n R s) ∧
    ContDiffOn ℝ ∞ (realPart h) (realActionDomain n R s) ∧
    (∀ z ∈ Wdom n R s, (h (KAM.realInclusion₂ n z).2 + f (KAM.realInclusion₂ n z)).im = 0 ∧
      KAM.realHamiltonian h f z = (h (KAM.realInclusion₂ n z).2 + f (KAM.realInclusion₂ n z)).re) ∧
    (∀ z ∈ Wdom n R s, ∀ k : ℕ, ∀ ζ : Fin k → (Fin n → ℝ) × (Fin n → ℝ),
      ((iteratedFDeriv ℝ k (KAM.realHamiltonian h f) z ζ : ℝ) : ℂ) =
        iteratedFDeriv ℂ k (fun w : (Fin n → ℂ) × (Fin n → ℂ) => h w.2 + f w) (KAM.realInclusion₂ n z)
          (fun j => KAM.realInclusion₂ n (ζ j))) ∧
    (∀ I ∈ realActionDomain n R s, ∀ k : ℕ, ∀ a : Fin k → (Fin n → ℝ),
      ((iteratedFDeriv ℝ k (realPart h) I a : ℝ) : ℂ) =
        iteratedFDeriv ℂ k h (KAM.realInclusion n I) (fun j => KAM.realInclusion n (a j))) := sorry

/-- The complex Hessian entries `∂ᵢ∂ⱼ h(I)` of the frozen conventions. -/
def complexHessian (h : (Fin n → ℂ) → ℂ) (I : Fin n → ℂ) (i j : Fin n) : ℂ :=
  fderiv ℂ (fun x => fderiv ℂ h x (Pi.single j 1)) I (Pi.single i 1)

/-- (c) the field `X_H(z) = X_{h+f}(ι z)`, the frequency map and the Hessian of `h_ℝ`. -/
theorem holo_real_c {R s ε : ℝ} {h : (Fin n → ℂ) → ℂ} {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hd : Data n R s ε h f) :
    (∀ z ∈ Wdom n R s, DifferentiableAt ℝ (KAM.realHamiltonian h f) z ∧
      KAM.realInclusion₂ n (KAM.hamiltonianVectorField (KAM.realHamiltonian h f) z) =
        KAM.hamiltonianVectorFieldℂ (fun w : (Fin n → ℂ) × (Fin n → ℂ) => h w.2 + f w)
          (KAM.realInclusion₂ n z)) ∧
    (∀ I ∈ realActionDomain n R s, ∀ i,
      ((KAM.frequencyMap h I i : ℝ) : ℂ) = fderiv ℂ h (KAM.realInclusion n I) (Pi.single i 1)) ∧
    (∀ I ∈ realActionDomain n R s, ∀ i j,
      ((fderiv ℝ (fderiv ℝ (realPart h)) I (Pi.single i 1) (Pi.single j 1) : ℝ) : ℂ) =
        complexHessian h (KAM.realInclusion n I) i j ∧
      complexHessian h (KAM.realInclusion n I) i j = complexHessian h (KAM.realInclusion n I) j i) :=
  sorry

/-- (d) periodicity of `H`, `DH`, `D^kH`, `X_H` in `θ` on `W_s`, `k ∈ ℤⁿ`. -/
theorem holo_real_d {R s ε : ℝ} {h : (Fin n → ℂ) → ℂ} {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hd : Data n R s ε h f) :
    ∀ z ∈ Wdom n R s, ∀ k : Fin n → ℤ, z + KAM.ODE.angleShift k ∈ Wdom n R s ∧
      KAM.realHamiltonian h f (z + KAM.ODE.angleShift k) = KAM.realHamiltonian h f z ∧
      fderiv ℝ (KAM.realHamiltonian h f) (z + KAM.ODE.angleShift k) =
        fderiv ℝ (KAM.realHamiltonian h f) z ∧
      KAM.hamiltonianVectorField (KAM.realHamiltonian h f) (z + KAM.ODE.angleShift k) =
        KAM.hamiltonianVectorField (KAM.realHamiltonian h f) z ∧
      ∀ j : ℕ, iteratedFDeriv ℝ j (KAM.realHamiltonian h f) (z + KAM.ODE.angleShift k) =
        iteratedFDeriv ℝ j (KAM.realHamiltonian h f) z := sorry

/-- (e) `ε = 0` forces `f = 0` and `H = h_ℝ ∘ snd`. -/
theorem holo_real_e {R s : ℝ} {h : (Fin n → ℂ) → ℂ} {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hd : Data n R s 0 h f) :
    (∀ w ∈ complexDomain n R s, f w = 0) ∧
      ∀ z ∈ Wdom n R s, KAM.realHamiltonian h f z = realPart h z.2 := sorry

/-- The statement Part 3 calls `bpN:p3:holo-input` (a corollary of `holo_real_b,c,d`; proved in the
same package, so that package N3-10a of the Part 3 design is absorbed here). -/
theorem holo_input {R s ε : ℝ} {h : (Fin n → ℂ) → ℂ} {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hd : Data n R s ε h f) :
    ContDiffOn ℝ ∞ (KAM.realHamiltonian h f) (Wdom n R s) ∧
    (∀ z ∈ Wdom n R s, KAM.realInclusion₂ n (KAM.hamiltonianVectorField (KAM.realHamiltonian h f) z) =
      KAM.hamiltonianVectorFieldℂ (fun w => h w.2 + f w) (KAM.realInclusion₂ n z)) ∧
    (∀ z ∈ Wdom n R s, ∀ k : Fin n → ℤ,
      KAM.realHamiltonian h f (z + KAM.ODE.angleShift k) = KAM.realHamiltonian h f z) := sorry

/-! ### D.4 Derivative bounds, Hessians, quasi-convexity (`Interfaces/Hessian.lean`, `Interfaces/QuasiConvex.lean`) -/

/-- `bpN:p1:partials`: first-order bounds and permutation invariance of ordered partials (`k ≤ 3`),
for any open `U` with `B(M)` (only `C³` is used; the `k = 3` symmetry is Schwarz for `C³`). -/
theorem partials {M : ℝ} {h : (Fin n → ℂ) → ℂ} {U : Set (Fin n → ℝ)}
    (hB : HasDerivativeBounds U h M) {I : Fin n → ℝ} (hI : I ∈ U) :
    (∀ i, |KAM.frequencyMap h I i| ≤ M) ∧ ‖KAM.frequencyMap h I‖ ≤ M ∧
    euclid (KAM.frequencyMap h I) ≤ Real.sqrt n * M ∧
    (∀ i j, |fderiv ℝ (fderiv ℝ (realPart h)) I (Pi.single i 1) (Pi.single j 1)| ≤ M) ∧
    ∀ k : ℕ, 1 ≤ k → k ≤ 3 → ∀ (idx : Fin k → Fin n) (σ : Equiv.Perm (Fin k)),
      iteratedFDeriv ℝ k (realPart h) I (fun j => Pi.single (idx (σ j)) 1) =
        iteratedFDeriv ℝ k (realPart h) I (fun j => Pi.single (idx j) 1) := sorry

/-- `bpN:p1:hessian-convert`: entries `≤ M_ℂ`, Euclidean bilinear and operator bounds `n M_ℂ`, and the
real Hessian of `h_ℝ` on `ℬ_s(R)`. -/
theorem hessian_convert {R s Mc : ℝ} {h : (Fin n → ℂ) → ℂ} (hR : 0 < R) (hs : 0 < s)
    (hh : IsAnalyticIntegrable R s h) (hH : HasComplexHessianBound R s h Mc) :
    (∀ I ∈ KAM.actionNbhd (actionBall n R) s, (∀ i j, ‖complexHessian h I i j‖ ≤ Mc) ∧
      (∀ x y : Fin n → ℂ, ‖∑ i, ∑ j, x i * complexHessian h I i j * y j‖ ≤
        n * Mc * euclid x * euclid y) ∧
      ∀ x : Fin n → ℂ, euclid (fun i => ∑ j, complexHessian h I i j * x j) ≤ n * Mc * euclid x) ∧
    ∀ I ∈ realActionDomain n R s, ∀ x y : Fin n → ℝ,
      |fderiv ℝ (fderiv ℝ (realPart h)) I x y| ≤ n * Mc * euclid x * euclid y := sorry

/-- `bpN:p1:conic-coercive` (linear algebra core; `n ≥ 1`, `B, q > 0`, `Q` bilinear). -/
theorem conic_coercive (hn : 1 ≤ n) {B q : ℝ} (hB : 0 < B) (hq : 0 < q)
    (Q : (Fin n → ℝ) →L[ℝ] (Fin n → ℝ) →L[ℝ] ℝ) (hQ : ∀ x y, |Q x y| ≤ B * euclid x * euclid y)
    {fr : Fin n → ℝ} (hfr : fr ≠ 0) (hcoer : ∀ v, ∑ i, fr i * v i = 0 → q * euclid v ^ 2 ≤ Q v v)
    {ℓ' : ℝ} (hℓ0 : 0 ≤ ℓ') (hℓ : ℓ' ≤ euclid fr * q / (8 * (B + q))) :
    ∀ ξ, |∑ i, fr i * ξ i| ≤ ℓ' * euclid ξ → 5 / 8 * q * euclid ξ ^ 2 ≤ Q ξ ξ := sorry

/-- The constants of `bpN:p1:qc-convert`: `q = m/n`, `B_c = n M_ℂ + q`, `μ = q/2`,
`ℓ = ω_min q / (8 (B_c + q))`. -/
def qcQ (n : ℕ) (m : ℝ) : ℝ := m / n
def qcB (n : ℕ) (m Mc : ℝ) : ℝ := n * Mc + qcQ n m
def qcMu (n : ℕ) (m : ℝ) : ℝ := qcQ n m / 2
def qcEll (n : ℕ) (m Mc wmin : ℝ) : ℝ := wmin * qcQ n m / (8 * (qcB n m Mc + qcQ n m))

/-- `bpN:p1:qc-convert` (a)-(c): Pöschel's quantified quasi-convexity on `B(0,R)`. -/
theorem qc_convert (hn : 1 ≤ n) {R s m Mc wmin : ℝ} {h : (Fin n → ℂ) → ℂ} (hR : 0 < R) (hs : 0 < s)
    (hm : 0 < m) (hMc : 0 < Mc) (hω : 0 < wmin) (hh : IsAnalyticIntegrable R s h)
    (hH : HasComplexHessianBound R s h Mc) (hQC : IsStrictlyQuasiConvex (realActionDomain n R s) h m)
    (hmin : ∀ I ∈ actionBall n R, wmin ≤ ‖KAM.frequencyMap h I‖) :
    ∀ I ∈ actionBall n R,
      ((∀ x y, |fderiv ℝ (fderiv ℝ (realPart h)) I x y| ≤ qcB n m Mc * euclid x * euclid y) ∧
        (∀ v, ∑ i, KAM.frequencyMap h I i * v i = 0 →
          qcQ n m * euclid v ^ 2 ≤ fderiv ℝ (fderiv ℝ (realPart h)) I v v)) ∧
      (∀ ξ, |∑ i, KAM.frequencyMap h I i * ξ i| ≤ qcEll n m Mc wmin * euclid ξ →
        qcMu n m * euclid ξ ^ 2 ≤ fderiv ℝ (fderiv ℝ (realPart h)) I ξ ξ) ∧
      (wmin ≤ ‖KAM.frequencyMap h I‖ ∧ ‖KAM.frequencyMap h I‖ ≤ euclid (KAM.frequencyMap h I) ∧
        euclid (KAM.frequencyMap h I) ≤ Real.sqrt n * ‖KAM.frequencyMap h I‖) := sorry

/-! ### D.5 Normalisations (`bpN:p1:period-convert`, `bpN:p1:norm-convert`; `Interfaces/Period.lean`) -/

/-- `Λ(θ, I) = (2πθ, I)`. -/
def periodLift (z : (Fin n → ℝ) × (Fin n → ℝ)) : (Fin n → ℝ) × (Fin n → ℝ) :=
  ((2 * Real.pi) • z.1, z.2)

/-- `H̃(φ, I) = 2π H(φ/2π, I)`. -/
def tildeH (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ) (z : (Fin n → ℝ) × (Fin n → ℝ)) : ℝ :=
  2 * Real.pi * H (((2 * Real.pi)⁻¹ • z.1), z.2)

/-- `h̃ = 2π h`. -/
def tildeh (h : (Fin n → ℂ) → ℂ) (I : Fin n → ℂ) : ℂ := (2 * Real.pi : ℂ) * h I

/-- `f̃(φ, I) = 2π f(φ/2π, I)`. -/
def tildef (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (w : (Fin n → ℂ) × (Fin n → ℂ)) : ℂ :=
  (2 * Real.pi : ℂ) * f (((2 * Real.pi : ℂ)⁻¹ • w.1), w.2)

/-- `H̃ = H_{h̃, f̃}` when `H = H_{h,f}` (unconditional). -/
theorem realHamiltonian_tilde (h : (Fin n → ℂ) → ℂ) (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) :
    KAM.realHamiltonian (tildeh h) (tildef f) = tildeH (KAM.realHamiltonian h f) := sorry

/-- (a) dynamics: unconditional. -/
theorem isSolutionOn_tilde_iff (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ) (U : Set (Fin n → ℝ)) (J : Set ℝ)
    (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)) :
    IsSolutionOn H U J z ↔ IsSolutionOn (tildeH H) U J (fun t => periodLift (z t)) := sorry

/-- (b) quantities, unconditional: `ω_{h̃} = 2π ω_h`, `D²h̃_ℝ = 2π D²h_ℝ`. -/
theorem frequencyMap_tildeh (h : (Fin n → ℂ) → ℂ) (I : Fin n → ℝ) :
    KAM.frequencyMap (tildeh h) I = (2 * Real.pi) • KAM.frequencyMap h I := sorry

theorem fderiv_fderiv_realPart_tildeh (h : (Fin n → ℂ) → ℂ) (I : Fin n → ℝ) :
    fderiv ℝ (fderiv ℝ (realPart (tildeh h))) I = (2 * Real.pi) • fderiv ℝ (fderiv ℝ (realPart h)) I :=
  sorry

/-- (b) the four hypotheses scale: `m, M, M_ℂ, ω_min ↦ 2π ·`. -/
theorem tilde_hypotheses {R s m M Mc wmin : ℝ} {U : Set (Fin n → ℝ)} {h : (Fin n → ℂ) → ℂ} :
    (IsStrictlyQuasiConvex U h m → IsStrictlyQuasiConvex U (tildeh h) (2 * Real.pi * m)) ∧
    (HasDerivativeBounds U h M → HasDerivativeBounds U (tildeh h) (2 * Real.pi * M)) ∧
    (HasComplexHessianBound R s h Mc → HasComplexHessianBound R s (tildeh h) (2 * Real.pi * Mc)) ∧
    (∀ I : Fin n → ℝ, wmin ≤ ‖KAM.frequencyMap h I‖ →
      2 * Real.pi * wmin ≤ ‖KAM.frequencyMap (tildeh h) I‖) ∧
    (∀ I : Fin n → ℝ, euclid (KAM.frequencyMap (tildeh h) I) = 2 * Real.pi * euclid (KAM.frequencyMap h I)) :=
  sorry

/-- `bpN:p1:qc-convert`, last sentence: the conclusions (b) for `h̃` with `(2πℓ, 2πμ)`. -/
theorem qc_convert_tilde (hn : 1 ≤ n) {R s m Mc wmin : ℝ} {h : (Fin n → ℂ) → ℂ} (hR : 0 < R)
    (hs : 0 < s) (hm : 0 < m) (hMc : 0 < Mc) (hω : 0 < wmin) (hh : IsAnalyticIntegrable R s h)
    (hH : HasComplexHessianBound R s h Mc) (hQC : IsStrictlyQuasiConvex (realActionDomain n R s) h m)
    (hmin : ∀ I ∈ actionBall n R, wmin ≤ ‖KAM.frequencyMap h I‖) :
    ∀ I ∈ actionBall n R, ∀ ξ,
      |∑ i, KAM.frequencyMap (tildeh h) I i * ξ i| ≤ 2 * Real.pi * qcEll n m Mc wmin * euclid ξ →
        2 * Real.pi * qcMu n m * euclid ξ ^ 2 ≤ fderiv ℝ (fderiv ℝ (realPart (tildeh h))) I ξ ξ := sorry

/-- (c) domains: `f̃` is holomorphic on `{|Im φ| < 2πs} × B(0,R)_s` and `|f̃| ≤ 2π ε`. -/
theorem tildef_domain {R s ε : ℝ} {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hR : 0 < R) (hs : 0 < s)
    (hf : IsAnalyticPerturbation R s ε f) :
    DifferentiableOn ℂ (tildef f)
      (KAM.complexStrip n (2 * Real.pi * s) ×ˢ KAM.actionNbhd (actionBall n R) s) ∧
    ∀ w ∈ KAM.complexStrip n (2 * Real.pi * s) ×ˢ KAM.actionNbhd (actionBall n R) s,
      ‖tildef f w‖ ≤ 2 * Real.pi * ε := sorry

/-- (d) `2π`-periodicity of `f̃` (needs the periodicity clause of `IsAnalyticPerturbation`). -/
theorem tildef_periodic {R s ε : ℝ} {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hR : 0 < R) (hs : 0 < s)
    (hf : IsAnalyticPerturbation R s ε f) :
    ∀ w ∈ KAM.complexStrip n (2 * Real.pi * s) ×ˢ KAM.actionNbhd (actionBall n R) s,
      ∀ k : Fin n → ℤ, tildef f (w.1 + (2 * Real.pi : ℂ) • (fun i => (k i : ℂ)), w.2) = tildef f w := sorry

/-- (e) Fourier series: `f̃ = ∑ f̃̂_k e^{ik·φ}` with `f̃̂_k = 2π f̂_k` whenever the series of `f(·, I)`
converges to `f` at `φ/2π` (period-one coefficients `KAM.torusCoeff`). -/
theorem tildef_fourier {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {I φ : Fin n → ℂ}
    (hS : HasSum (fun k : Fin n → ℤ =>
      KAM.torusCoeff (fun x : Fin n → ℝ => f (fun j => (x j : ℂ), I)) k *
        KAM.character k ((2 * Real.pi : ℂ)⁻¹ • φ)) (f ((2 * Real.pi : ℂ)⁻¹ • φ, I))) :
    HasSum (fun k : Fin n → ℤ =>
      (2 * Real.pi : ℂ) * KAM.torusCoeff (fun x : Fin n → ℝ => f (fun j => (x j : ℂ), I)) k *
        Complex.exp (Complex.I * ∑ j, (k j : ℂ) * φ j)) (tildef f (φ, I)) := sorry

/-- `bpN:p1:norm-convert`: sup norm on a strip to the weighted norm; this is K's
`KAM.summableWeighted_torusCoeff` (`coth` as `cosh/sinh`). -/
theorem norm_convert {ρ δ A : ℝ} (hδ : 0 < δ) (hδρ : δ < ρ) {u : (Fin n → ℂ) → ℂ}
    (hu : DifferentiableOn ℂ u (KAM.complexStrip n ρ))
    (hp : ∀ (i : Fin n) z, z ∈ KAM.complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hA : ∀ z ∈ KAM.complexStrip n ρ, ‖u z‖ ≤ A) :
    KAM.Fourier.SummableWeighted (2 * Real.pi * (ρ - δ))
        (KAM.torusCoeff fun x => u fun j => (x j : ℂ)) ∧
      KAM.Fourier.weightedNorm (2 * Real.pi * (ρ - δ)) (KAM.torusCoeff fun x => u fun j => (x j : ℂ)) ≤
        (Real.cosh (Real.pi * δ) / Real.sinh (Real.pi * δ)) ^ n * A :=
  KAM.summableWeighted_torusCoeff hδ hδρ hu hp hA

/-- `bpN:p1:norm-convert#converse`: `‖u‖_ρ ≤ ∑ₖ |û_k| e^{2πρ|k|₁}`. From K's `KAM.norm_fourierSum_le`. -/
theorem norm_convert_converse {ρ A : ℝ} (hρ : 0 < ρ) {u : (Fin n → ℂ) → ℂ}
    (hu : DifferentiableOn ℂ u (KAM.complexStrip n ρ))
    (hp : ∀ (i : Fin n) z, z ∈ KAM.complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hA : ∀ z ∈ KAM.complexStrip n ρ, ‖u z‖ ≤ A)
    (hS : KAM.Fourier.SummableWeighted (2 * Real.pi * ρ) (KAM.torusCoeff fun x => u fun j => (x j : ℂ))) :
    ∀ θ ∈ KAM.complexStrip n ρ,
      ‖u θ‖ ≤ KAM.Fourier.weightedNorm (2 * Real.pi * ρ) (KAM.torusCoeff fun x => u fun j => (x j : ℂ)) := by
  intro θ hθ
  rw [KAM.eq_fourierSum_torusCoeff hρ hu hp hA hθ]
  exact KAM.norm_fourierSum_le hS hθ

/-! ### D.6 The dictionary of constants (`bpN:p1:constants`, `constants#data`; `Interfaces/Constants.lean`) -/

/-- The seven data `(n; R, s, M, m, M_ℂ, ω_min)` of N-HEAD-C. -/
structure HeadParams (n : ℕ) where
  R : ℝ
  s : ℝ
  M : ℝ
  m : ℝ
  Mc : ℝ
  wmin : ℝ

/-- `R, s, M, m, M_ℂ, ω_min > 0`. -/
structure HeadParams.Pos (p : HeadParams n) : Prop where
  hR : 0 < p.R
  hs : 0 < p.s
  hM : 0 < p.M
  hm : 0 < p.m
  hMc : 0 < p.Mc
  hω : 0 < p.wmin

/-- Hypotheses (H1)-(H5) of N-HEAD-C on `h`. -/
def HeadHyp (p : HeadParams n) (h : (Fin n → ℂ) → ℂ) : Prop :=
  IsAnalyticIntegrable p.R p.s h ∧ HasComplexHessianBound p.R p.s h p.Mc ∧
    (∀ I ∈ actionBall n p.R, p.wmin ≤ ‖KAM.frequencyMap h I‖) ∧
    IsStrictlyQuasiConvex (realActionDomain n p.R p.s) h p.m ∧
    HasDerivativeBounds (realActionDomain n p.R p.s) h p.M

/-- The exponent `a = 1/(2n)`. -/
def HeadParams.expo (n : ℕ) : ℝ := 1 / (2 * (n : ℝ))
def HeadParams.q (p : HeadParams n) : ℝ := qcQ n p.m
def HeadParams.B (p : HeadParams n) : ℝ := qcB n p.m p.Mc
def HeadParams.mu (p : HeadParams n) : ℝ := qcMu n p.m
def HeadParams.ell (p : HeadParams n) : ℝ := qcEll n p.m p.Mc p.wmin
def HeadParams.r0 (p : HeadParams n) : ℝ :=
  min (min (p.s / 2) (p.R / 8)) (min (p.ell / (2 * p.B)) (4 * p.wmin / p.mu))
def HeadParams.A (p : HeadParams n) : ℝ := 11 * p.B / p.mu
def HeadParams.s0 (p : HeadParams n) : ℝ := Real.pi * p.s
def HeadParams.sigma (p : HeadParams n) : ℝ := Real.pi * p.s / 4
def HeadParams.F (p : HeadParams n) : ℝ := 2 * Real.pi * KAM.Weighted.coth (Real.pi * p.s / 4) ^ n
def HeadParams.epsStar (p : HeadParams n) : ℝ :=
  2 * Real.pi * p.mu * p.r0 ^ 2 / (2 ^ 10 * p.A ^ (2 * n))
def HeadParams.C (p : HeadParams n) : ℝ := p.r0 / p.A * (p.F / p.epsStar) ^ HeadParams.expo n
def HeadParams.c (p : HeadParams n) : ℝ :=
  p.s0 / (6 * Real.sqrt n) * (p.epsStar / p.F) ^ HeadParams.expo n
def HeadParams.T (p : HeadParams n) : ℝ := p.A ^ 2 * p.s0 / (4 * Real.pi * n * p.M)
def HeadParams.eps0 (p : HeadParams n) : ℝ := min (p.epsStar / p.F) ((p.R / (4 * p.C)) ^ (2 * n))

/-- `P = {J ∈ ℝⁿ | |J| ≤ R/2}` embedded in `ℂⁿ` (the set `D` of the tubes `V_{r₀} P`). -/
def centralSet (n : ℕ) (R : ℝ) : Set (Fin n → ℂ) :=
  KAM.realInclusion n '' {J : Fin n → ℝ | ‖J‖ ≤ R / 2}

/-- (a) positivity and `C ε₀^a ≤ R/4`, `ε₀ ≤ ε_*/F`. -/
theorem const_pos (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) :
    0 < p.q ∧ 0 < p.B ∧ 0 < p.mu ∧ 0 < p.ell ∧ 0 < p.r0 ∧ 0 < p.A ∧ 0 < p.s0 ∧ 0 < p.sigma ∧
      0 < p.F ∧ 0 < p.epsStar ∧ 0 < p.C ∧ 0 < p.c ∧ 0 < p.T ∧ 0 < p.eps0 := sorry

theorem const_eps0 (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) :
    p.C * p.eps0 ^ HeadParams.expo n ≤ p.R / 4 ∧ p.eps0 ≤ p.epsStar / p.F := sorry

/-- (b) size relations: `r₀ ≤ ℓ/(2B_c)`, `r₀ ≤ 4ℓ/μ`, `A ≥ 22`, `R₀ = r₀/A ≤ R/176`. -/
theorem const_size (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) :
    p.r0 ≤ p.ell / (2 * p.B) ∧ p.r0 ≤ 4 * p.ell / p.mu ∧ 22 ≤ p.A ∧ p.r0 / p.A ≤ p.r0 / 22 ∧
      p.r0 / 22 ≤ p.R / 176 := sorry

/-- (c) tubes (max norm): `V_{r₀}P ⊆ B(0,R)_s` and `U_{r₀}P ⊆ B(0,5R/8) ⊆ B(0,R)`. -/
theorem const_tubes (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) :
    KAM.Weighted.polyNbhd (centralSet n p.R) p.r0 ⊆ KAM.actionNbhd (actionBall n p.R) p.s ∧
    ∀ I : Fin n → ℝ, KAM.realInclusion n I ∈ KAM.Weighted.polyNbhd (centralSet n p.R) p.r0 →
      ‖I‖ < 5 * p.R / 8 := sorry

/-- (d) hypotheses of Pöschel's Theorem 1 for `h̃`: `(ℓ_P, μ_P) = (2πℓ, 2πμ)`-quasi-convexity on
`U_{r₀}P` and the Euclidean Hessian bound `M_P = 2π B_c` on `V_{r₀}P`. (`r₀ ≤ ℓ_P/(2M_P)` is `const_size`.) -/
theorem const_hyp (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) {h : (Fin n → ℂ) → ℂ}
    (hh : HeadHyp p h) :
    (∀ I : Fin n → ℝ, KAM.realInclusion n I ∈ KAM.Weighted.polyNbhd (centralSet n p.R) p.r0 → ∀ ξ,
      |∑ i, KAM.frequencyMap (tildeh h) I i * ξ i| ≤ 2 * Real.pi * p.ell * euclid ξ →
        2 * Real.pi * p.mu * euclid ξ ^ 2 ≤ fderiv ℝ (fderiv ℝ (realPart (tildeh h))) I ξ ξ) ∧
    ∀ I ∈ KAM.Weighted.polyNbhd (centralSet n p.R) p.r0, ∀ x y : Fin n → ℂ,
      ‖∑ i, ∑ j, x i * (2 * Real.pi * complexHessian h I i j) * y j‖ ≤
        2 * Real.pi * p.B * euclid x * euclid y := sorry

/-- (e) perturbation: in Part 4's norm on `V_{r₀}P × T_{s/2}` (`m = n`), `|f| ≤ coth(πs/4)ⁿ ε`;
times `2π` this is `F ε`, and `F ε ≤ ε_*` for `ε ≤ ε₀`. -/
theorem const_perturbation (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) {ε : ℝ}
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hf : IsAnalyticPerturbation p.R p.s ε f) :
    KAM.Weighted.WBound (centralSet n p.R) p.r0 (p.s / 2) f (KAM.Weighted.coth (Real.pi * p.s / 4) ^ n * ε) ∧
    2 * Real.pi * (KAM.Weighted.coth (Real.pi * p.s / 4) ^ n * ε) = p.F * ε ∧
    (ε ≤ p.eps0 → p.F * ε ≤ p.epsStar) := sorry

/-- (f) the exceptional branch is empty: `m_P r₀/8 ≤ π ω_min < 2π ω_min ≤ |ω̃(I₀)|₂`. -/
theorem const_exceptional (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) {h : (Fin n → ℂ) → ℂ}
    (hh : HeadHyp p h) :
    ∀ I₀ ∈ ball (0 : Fin n → ℝ) (p.R / 2), 2 * Real.pi * p.mu * p.r0 / 8 ≤ Real.pi * p.wmin ∧
      Real.pi * p.wmin < 2 * Real.pi * p.wmin ∧
      2 * Real.pi * p.wmin ≤ euclid (KAM.frequencyMap (tildeh h) I₀) := sorry

/-- (g) time prefactor: `|ω̃| ≤ 2π √n M` on the Euclidean ball of radius `R₀ = r₀/A` about `I₀`, and
`2T ≤ A² s₀/Ω₀` for every `Ω₀ ∈ (0, 2π n M]`. -/
theorem const_time (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) {h : (Fin n → ℂ) → ℂ}
    (hh : HeadHyp p h) :
    (∀ I₀ ∈ ball (0 : Fin n → ℝ) (p.R / 2), ∀ I : Fin n → ℝ, euclid (I - I₀) ≤ p.r0 / p.A →
      euclid (KAM.frequencyMap (tildeh h) I) ≤ 2 * Real.pi * Real.sqrt n * p.M) ∧
    ∀ Ω₀ : ℝ, 0 < Ω₀ → Ω₀ ≤ 2 * Real.pi * n * p.M → 2 * p.T ≤ p.A ^ 2 * p.s0 / Ω₀ := sorry

/-- (h) conclusion shape (`ε > 0`): `R₀ (Fε/ε_*)^a = C ε^a` and `(s₀/6√n)(ε_*/Fε)^a = c ε^{-a}`. -/
theorem const_conclusion (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) {ε : ℝ} (hε : 0 < ε) :
    p.r0 / p.A * (p.F * ε / p.epsStar) ^ HeadParams.expo n = p.C * ε ^ HeadParams.expo n ∧
    p.s0 / (6 * Real.sqrt n) * (p.epsStar / (p.F * ε)) ^ HeadParams.expo n =
      p.c * ε ^ (-HeadParams.expo n) := sorry

end KAM.Nekhoroshev
```
