# Lean design for blueprint-I Part 5 (I-HEAD) and Part 8 (I-R3BP)

Design v2 (revision after audit `PART58-design-audit-1.md`, see "Audit fixes"), 2026-10-27, branch `inp-design-i58` (brief: design the Lean architecture for `bpI:p5:*` and
`bpI:p8:*`, including the providers of `KAM.Iso.all_time_confinement` and `KAM.Iso.restricted_near_circular`).
Planning evidence, not approved Lean. Nothing here is frozen. Modeled on `docs/tracks/N/design/PART3-LEAN-DESIGN.md`
(with its "Audit fixes") and on track K's `PART23-LEAN-DESIGN.md`.

**The signatures.** Every result node of Parts 5 and 8 has its exact Lean statement in
`.drafts/design/IPart58Signatures.lean` (untracked; copied verbatim in Appendix A).
- The file is 1238 lines, sha256 `7aff03fdfc2ebf640555f871b74f147c4547cb47f79df5b689676359a3b372dd`.
- `cd /root/code/KAM-inp-design-i58 && nice -n 5 lake env lean .drafts/design/IPart58Signatures.lean` exits 0 against the
  build of `inp` at `a5c68cd` (plus `lake build KAM.ODE.Exit KAM.ODE.Continuation KAM.ODE.Hamiltonian
  KAM.Strip.RealRestriction` in the worktree) in about 15 s. It prints 102 diagnostics, all `declaration uses 'sorry'`;
  no other warning, no `set_option`, no `maxHeartbeats`, no `EuclideanSpace`.
- 104 theorems, 56 definitions, 14 structures. Everything outside section U (stubs of upstream declarations) is this design.
- Not `sorry`: the two **provider bodies** (section P) are written out in full against the stubs. They type-check the whole
  assembly, and two `example : @KAM.Provider.Iso.X = @KAM.Iso.X := rfl` checks prove that the provider types ARE the exact
  frozen types (`all_time_confinement`, `restricted_near_circular`; the scratch file imports the two frozen anchors for this,
  which a real module may not before the seals).
- `toC x = realInclusion n x` is `rfl` (checked), so Part 5 can use `KAM.Strip` calculus on frozen-shaped statements.

## 0. Decisions in brief

1. **Quarantine by output structures.** I-HEAD's proof applies I-G1 only through Part 3 (`bpI:p3:tori`), and I-R3BP applies
   I-HEAD only at one place. Part 5 is therefore written against **Prop-structures that are the OUTPUT of Part 3**
   (`ChartCover`, `ToriExistence`), and Part 8 against the **solution that I-HEAD delivers** (a hypothesis `zt` of the form
   "global Hamiltonian solution in `B` through the Delaunay preimage", not the conclusion of I-R3BP). Hence every lemma of
   both parts is provable now; the single I-G1-dependent step is `part3_tori`/`ToriExistence` (Part 3), the single
   I-HEAD-dependent step is one line of the R3BP provider. See section 2.
2. **Rule 6 accounting.** The blueprint states Lemmas graph, invariance, energy-coordinate, mu, Propositions separation and
   confinement "for the output of Proposition `bpI:p3:tori`" (§graph: "Fix ... and the output of Proposition p3:tori").
   They take `TorusOutput` / `GraphData` / `SepSetting` structures: standing typing data, never produced by Part 5.
   `confinement_main_of_tori` assumes `ChartCover` and `ToriExistence`; it is a conditional helper with a distinct name
   (rule 6), it never stands in for I-HEAD (the provider closes the gap with `part3_tori`). No hypothesis has the shape of
   the conclusion of the theorem it is used for.
3. **One chart interface instead of Part 3's internals.** Part 5 never mentions `∇h`, `a_c`, `σ_c`, rays or Diophantine
   data. It sees a patch only through `EnergyPatch hR B η₁`: the chart `Φ = (hR, m)` on an open `W ⊆ B`, its inverse `Ψ`,
   the window `δE, δm, ρc` (clauses P1-P3), and the two ray slopes `mPlus ∈ (δm/2, δm)`, `mMinus ∈ (-δm, -δm/2)`.
   `hR = realPart h`. This is the one coordination point with the Part 3 design (section 10).
4. **Patch constants are `∃`-structures, `ε₀` is an existence statement.** `PatchConst p r Lm LΦ κ` (the data of
   `bpI:p5:patch-const`: `𝒩 = cthickening r 𝒦`, `L_m`, `L_Φ`, `κ` as upper bounds), `Smallness` (the consequences of
   `ε < ε₀`), `exists_eps0` (`ε₀ := min {...}` as `∃ ε₀ > 0` with all bounds, over the finite patch set). Only positivity and
   the bounds are used downstream, so no `sInf`/`sSup`/`Finset.inf'` appears.
5. **`radius` is not the ambient norm (blueprint issue B1).** The collision-exclusion lemma is stated for an abstract length
   `ℓ` (subadditive, even) on an abelian group; `radius` is the instance (`radius_add_le` (from `KAM.Kepler.planeLength_add_le`)).
6. **No flow, no quotient types.** Uniqueness in Part 5 is `gen_uniqueness` on `Ioo a b`; in Part 8 it is
   `restricted_reduction` + `gen_uniqueness` (the competitor need not stay in the Delaunay region). The Delaunay preimage is
   `∃ w, w.2 ∈ actionRegion ∧ delaunay w = z₀` (Kepler design `nearCircular_eq_image`).
7. **Constants of I-R3BP in the frozen order.** `ε_H` is obtained from the frozen theorem (provider), then
   `μ₀ = min {1/2, μ₂, ε_H/(|C_F|+1), ν₀/2}` (departure D2), `d = ν₀/2`, `R = √(2/r_min)`, then `μ`, then `z₀`.
8. **Packages.** 16 prover packages (P5-0 ... P5-9, P8-1 ... P8-6) plus the two providers, 150-800 lines each, about 7,900 lines
   in total (Part 5 about 5,100, Part 8 about 2,800); critical path 6 waves in Part 5, 4 in Part 8 (section 8).
9. **Hard rules.** No heartbeat override anywhere; every file `<= 1500` lines (estimates are `<= 800`); `module`,
   `public import`, docstring, `@[expose] public section` (definitions `toC`, `realAct`, `realPart`, `totalH`, `rhoInf`,
   `fractD`, `EnergyPatch.Q/O/Omega/K`, `graphSet`, `levelSet`, `sepRegion`, `actionRegion*`, `safe*`, `r3bp*`, `exclusionMu` are
   exposed; structures need no `@[expose]`).

## 1. Carriers

| Object | Lean carrier | Notes |
|---|---|---|
| actions, angles | `Fin 2 → ℝ`, `Fin 2 → ℂ`, Fourier index `Fin 2 → ℤ` | max norm = ambient norm; `‖(z t).2 - z₀.2‖` is the sup norm |
| phase space `P = ℝ² × ℝ²` | `P2 := (Fin 2 → ℝ) × (Fin 2 → ℝ)` (abbrev) | angles first in Part 5; `(q, p)` in Part 8 |
| `ι : ℝ² → ℂ²` | `toC x := fun i => (x i : ℂ)` (abbrev; `= realInclusion 2 x` by `rfl`) | frozen statements use the lambda; unifies by reducibility |
| `U = ι⁻¹(B_{r₀})` | `realAct B r₀` | open; `⊇ B` for `r₀ > 0` |
| `h ∘ ι` real part | `realPart h I := (h (toC I)).re` | first chart coordinate `hR` |
| `H = h + f` on `ℂ²×ℂ²` | `totalH h f := fun z => h z.2 + f z` | the Hamiltonian of Part 3 and I-G1; Part 3 must use this def |
| `H_ℝ`, `X_ℝ` | frozen `realHamiltonian h f`, `hamiltonianVectorField (realHamiltonian h f)` | no new objects |
| `W_B = ℝ² × B` | `univ ×ˢ B` | the domain of the ODE layer (`gen_continuation_periodic` shape) |
| `ρ∞`, `𝔇` | `rhoInf s₀ := min s₀ 1 / 8`, `fractD B s₀ r₀ := complexStrip 2 (min s₀ 1/2) ×ˢ actionNbhd B (r₀/2)` | `bpI:p3:constants` |
| patch objects `Q, O, Ω, 𝒦, 𝒩` | `p.Q`, `p.O`, `p.Omega`, `p.K`, `cthickening r p.K` | preimage form as in the blueprint; `p.K = p.Ψ '' p.Q` (`K_eq_image`) |
| `𝒯_±`, `G`, `𝒱` | `Set.range (realRestriction K)` (= `graphSet Y`), `levelSet H E`, `sepRegion p Yp Ym` | |
| maximal solution | `KAM.ODE.IsMaximalSolution F W x₀ Tm Tp z`, `Tm Tp : EReal` | source premise (N design decision 3) |
| Delaunay/Kepler | Kepler design: `delaunay`, `deDom`, `eccOf`, `SafeAction`, `kRmin`, `kRhoMax`, `keplerRotH`, `periodOneMap`, `tildeF`, `exactDelta/Mu2/CF` | upstream, section 10 |
| action region `A`, `𝒦`, `U`, `B`, `B'` (Part 8) | `actionRegion`, `actionRegionCl`, `safeU`, `safeK`, `safeB`, `safeB'` on `(L, G) = (x 0, x 1)` | `kappa e = √(1 - e²)` |
| lengths | frozen `radius`; abstract `ℓ : X → ℝ` in the collision lemma | no `EuclideanSpace`; Part 8's `|·|₂` is `radius` |

Instances: none on bare function or matrix types; only Mathlib's `Pi`/`Prod` norms. `ProperSpace (Fin 2 → ℝ)` is by instance
(used for `IsCompact.cthickening`).

### 1.1 Standing structures (Prop unless stated; typing data, never produced by a theorem of Part 5 or 8)

| Structure | Content | Produced by |
|---|---|---|
| `BaseData B s₀ r₀ h` | `0 < s₀`, `0 < r₀`, `h` holomorphic on `B_{r₀}`, real on real points | the provider, from frozen binders `hs hr hh hhreal` |
| `HeadData B s₀ r₀ h B' η` (`extends BaseData`) | `IsOpen B`, bounded, nonempty, `det 𝖡_h ≠ 0`, `IsOpen B'`, `IsCompact (closure B')`, `closure B' ⊆ B`, `0 < η` | the provider, from `hB hBb hBne hiso hB' hcompact hinside hη`; in Part 8 by `r3bp_headData` |
| `PerturbData B s₀ r₀ f ε` | holomorphy, `ℤ²`-periodicity, reality of `f`; `0 ≤ ε`; `‖f z‖ ≤ ε` | the provider, from the five frozen `f`/`ε` hypotheses (without `ε < ε₀`); in Part 8 by `r3bp_perturbData` |
| `EnergyPatch hR B η₁` (data structure) | chart `(hR, m)` on `W`, inverse `Ψ`, `δE δm ρc`, P1-P3, slopes `mPlus mMinus` | Part 3 (cover lemma and rays; G3 is sealed) |
| `PatchConst p r Lm LΦ κ` | `cthickening r p.K ⊆ p.W`, `‖Dm‖ ≤ Lm` on it, `‖DΨ‖ ≤ LΦ` on `Q`, `0 < κ ≤ min {δm/4, δm - m₊, δm + m₋}` | `patchConst_exists` (P5-1) |
| `Smallness p r Lm LΦ κ F₁ C_K ρ∞ ε` | `0 ≤ ε ≤ 1`, `ε < δE/4`, `8 C_K ε < ρ∞`, `C_K ε < r`, `Lm C_K ε < κ`, `2 F₁ LΦ ε < 1` | `exists_eps0` (P5-1) |
| `TorusOutput h f ε C_K s₀ E K I ωt` | (T1)-(T4) of `bpI:p3:tori` for one torus (holomorphic, primary, real on reals; zero invariance error; energy `E`; closeness; `Du, Dv` bounds) | Part 3 (waits for I-G1) |
| `GraphData p H E Cε Y I mσ` | `Y` continuous, `‖Y - I‖ ≤ Cε`, `H(φ, Y φ) = E`, `I ∈ p.K`, `p.m I = mσ` | `torus_graph` + base point facts, in `confinement_main_of_tori` |
| `SepSetting ...` | base, perturb, derivative bound, `PatchConst`, `Smallness`, two `GraphData` | `confinement_main_of_tori` |
| `ChartCover B s₀ r₀ h B' η η₁ F₁ patches` | finite patch set covering `closure B'`, `0 < η₁ ≤ η`, `0 < F₁`, `‖Df‖ ≤ F₁ ε` on `𝔇` (`bpI:p3:hypothesis-d`) | Part 3 (now) |
| `ToriExistence B s₀ r₀ h B' η₁ patches ε₁ C_K` | `bpI:p3:tori`: for `f, ε < ε₁, I₀ ∈ closure B', E`: a patch with `‖I₀ - c‖ < ρc` and two `TorusOutput`s with `I_± = Ψ(E, m_±)` | Part 3 (WAITS for the seal of I-G1) |
| `R3bpParams a₋ a₊ e₋ e₊` | the six frozen binders `ha haa he hee heSmall hinner` | the provider |
| `RegionParams a₋ a₊ e₋ e₊` | `0 < a₋ < a₊`, `0 < e₋ < e₊ < 1` (also holds for the enlarged parameters) | `R3bpParams.region`, `safe_regionParams` |

### 1.2 Explicit objects (total definitions)

`toC`, `realAct`, `realPart`, `totalH`, `rhoInf`, `fractD`, `EnergyPatch.Q/O/Omega/K`, `graphSet`, `levelSet`, `sepRegion`,
`exclusionMu`, `kappa`, `actionRegion`, `actionRegionCl`, `safeT`, `safeAminus/Aplus/Eminus/Eplus`, `safeU`, `safeK`, `safeB`,
`safeB'`, `r3bpH`, `r3bpS₀`, `r3bpR₀`, `shellNu`, `r3bpMu0`, `r3bpD`, `r3bpR`. All are explicit formulas; no `choose` is used in any
statement (the one choice, `exactDelta`, is upstream).

## 2. Quarantine map: what waits for what

I-G1 is `DRAFT_SORRY`; no module may import it, or a provider. I-HEAD is likewise unsealed. The design routes the two
dependencies through single named places.

| Step | Depends on | Status |
|---|---|---|
| Part 5 modules `Setting ... Confinement`, `Main` (`confinement_main_of_tori`) | ODE layer, `KAM.Strip.RealRestriction`, Mathlib only | **provable now** |
| `ChartCover` (finite chart cover, rays by G3, `hypothesis-d`) | Part 3, sealed G3 | **provable now** (Part 3 package) |
| `ToriExistence` (`bpI:p3:tori`) | I-G1 (`KAM.Iso.isoenergetic_kam`) | **waits for the I-G1 seal** (Part 3's final package) |
| `part3_tori` (joint statement) and `confinement_main` | the two lines above | waits for the I-G1 seal; `confinement_main` is 25 lines |
| Provider `KAM.Provider.Iso.all_time_confinement` | `confinement_main` | waits for the I-G1 seal; 12 lines of glue (section P) |
| Part 8 modules `Collision`, `Region`, `Safe`, `HeadData`, `Constants`/core | Kepler design modules (not yet proved), Part 5 `Setting` | **provable once the upstream declarations of section 10 land**; no I-G1, no I-HEAD |
| `restricted_unique` | N3-8 (`restricted_reduction`, not yet proved) | provable once N3-8 lands |
| Provider `KAM.Provider.Iso.restricted_near_circular` | frozen `KAM.Iso.all_time_confinement` (one call) | **waits for the I-HEAD seal**; all other lines are provable earlier |

Why the glue is sound and not conclusion-shaped.
- Part 5: `confinement_main_of_tori (hd) (hne) (hcov : ChartCover ...) (htor : ToriExistence ...)` hypothesizes Part 3's OUTPUT
  structures. These say "tori exist" (for a patch cover), which is a Part 3 result, not "confinement exists".
- Part 8: `r3bp_core` hypothesizes nothing about I-HEAD; it says "for the constant `ε_H`, and for every global Hamiltonian solution
  `zt` in `B` through the Delaunay preimage, the physical solution exists with the four bounds". The provider obtains `ε_H` and
  `zt` from the frozen theorem. Uniqueness is separate (`restricted_unique`) and does not use I-HEAD.
- Order of choice in Part 8 (frozen quantifier order): `r3bp_core` is stated for an arbitrary `ε_H > 0` and returns `μ₀, d, R`
  that depend only on `(a_±, e_±)` and `ε_H`; the provider instantiates `ε_H := ε₀` returned by the frozen theorem for data
  fixed by `(a_±, e_±)` alone, before `μ` and `z₀`.

While I-G1 is unsealed, the whole of Part 5 can be proved and landed except the 25-line `confinement_main` and the provider; the
same holds for Part 8 with I-HEAD and the 6-line step in its provider.

## 3. Node table

"Mathlib/ODE" lists what the proof should use. All ODE names exist on `inp` (`KAM/ODE/*`); `restricted_reduction` is N3-8.

### 3.1 Part 5 (`p5-confinement.tex`)

| Blueprint node | Lean declaration(s) | Module | Notes |
|---|---|---|---|
| `real-ham` (a) | `realHam_eq`, `realHam_contDiffOn`, `realHam_periodic` | `RealHam` | `DifferentiableOn.contDiffOn`, `ContDiffOn.comp` with `realInclusion₂`, `Complex.reCLM` |
| `real-ham` (b) | `realHam_field_eq` | `RealHam` | `KAM.hamiltonian_real` |
| `real-ham` (c) | `realHam_field_contDiffOn`, `realHam_field_periodic`, `realHam_solution_iff` | `RealHam` | `ham_smooth_c1`, `ham_periodic`, `ham_reduction` |
| `real-ham` (d) | `realHam_fderiv_bound`, `toC_pair_mem_fractD` | `RealHam` | `hD` = `bpI:p3:hypothesis-d` |
| `real-ham` (e) | `realHam_sub_le` | `RealHam` | `Complex.abs_re_le_norm` |
| (used by sp-barrier, hd-uniq) | `realHam_energy_const`, `realHam_unique` | `RealHam` | `ham_energy`, `gen_uniqueness` |
| `ext-top` | no declaration | | `IsCompact.exists_isMaxOn`, `IsCompact.cthickening`, `IsOpen.frontier_eq`, `closure_minimal` |
| `sec-patch#data` | `EnergyPatch`, `.Q`, `.O`, `.Omega`, `.K`, `isCompact_K`, `K_eq_image`, `isOpen_Omega`, `Omega_subset_K` | `Setting`, `PatchConst` | |
| `patch-const` | `PatchConst`, `patchConst_exists` | `Setting`, `PatchConst` | `IsCompact.exists_cthickening_subset_open`, `ContDiffOn.continuousOn_fderiv_of_isOpen` |
| `eps0` | `Smallness`, `exists_eps0` | `Setting`, `PatchConst` | finite minimum by `Set.Finite` induction |
| `sec-graph#data` | `TorusOutput`, `ToriExistence` (T1-T4, T7), `realRestriction` | `Setting` | `KAM.realRestriction`, `real_restriction` |
| `graph` (a) | `torus_phase_sub_lipschitz`, `torus_phase_bijective`, `torus_phase_inv`; steps `gr-contr`, `gr-bij` | `Graph` | `Convex.lipschitzOnWith_of_nnnorm_fderiv_le`, `ContractingWith.fixedPoint`, `AntilipschitzWith` |
| `graph` (b), (c) | `torus_graph`, `torus_graph_mem`, `torus_graph_energy_close`; steps `gr-graph`, `gr-energy` | `Graph` | `isRealOnReals_iff`, `Metric.mem_cthickening_of_dist_le` |
| `invariance` | `torus_flow`, `torus_invariant`; steps `inv-incl`, `inv-sol`, `inv-uniq` | `Invariance` | `gen_uniqueness`, `gen_symmetry_shift`, `realRestriction_fderiv` |
| `energy-coordinate` | `energy_coordinate`; steps `ec-reduce`, `ec-lip` | `EnergyCoordinate` | `Convex.norm_image_sub_le_of_norm_deriv_le` |
| `sec-sep#data` | `GraphData`, `SepSetting`, `graphSet`, `levelSet`, `sepRegion` | `Setting` | |
| `mu` | `slope_close`, `slope_window_plus`, `slope_window_minus`, `slope_continuous`; steps `mu-cont`, `mu-lip`, `mu-order` | `Position` | `Convex.norm_image_sub_le_of_norm_fderiv_le` on a segment |
| `separation` (a) | `separation_isOpen`, `separation_init`; steps `sp-open`, `sp-init` | `Separation` | |
| `separation` (b) | `separation_closure`, `separation_window`, `separation_boundary`; steps `sp-closure`, `sp-window`, `sp-bdry` | `Separation` | `closure_prod_eq`, `IsOpen.frontier_eq`, `energy_coordinate` |
| `separation` (c) | `separation_confined` (source-facing, derives invariance), `separation_confined_of_invariant` (helper); step `sp-barrier` | `Separation` | `gen_barrier`, `realHam_energy_const`, `torus_invariant`, `isInvariantSet_union` |
| `confinement` | `confinement_prop` (source-facing), `confinement_prop_of_invariant` (helper); steps `cf-conf`, `cf-cont` | `Confinement` | `gen_continuation_periodic`, `eIoo_bot_top` |
| `hd-eps`, `hd-fix`, `hd-sol`, `hd-uniq` (proof of I-HEAD) | `confinement_main_of_tori`; `confinement_main` (provider module) | `Main`, `Provider/Iso/AllTimeConfinement` | `gen_maximal`, `realHam_solution_iff`, `realHam_unique` |
| `p3-gap`, `topology-remark`, `doubts` (remarks) | no declaration | | |

### 3.2 Part 8 (`p8-r3bp.tex`)

| Blueprint node | Lean declaration(s) | Module | Notes |
|---|---|---|---|
| `x-topo`, `x-norm`, `x-cont` | no declaration | | `kappa_strictAntiOn` is the content of `x-cont` |
| `e-vs-k` | `eccOf_mem_Ioo_iff`, `eccOf_mem_Icc_iff`, `kappa_strictAntiOn` | `R3bp/Region` | `eccOf L G = kappa (G/L)`, `kappa (kappa x) = x` |
| `A`, `sec-safe#data` | `kappa`, `actionRegion`, `actionRegionCl`, `isOpen_actionRegion`, `isCompact_actionRegionCl`, `closure_actionRegion_subset`, `actionRegionCl_subset_cone` | `R3bp/Region` | |
| `topology` (a) | `mem_actionRegion_iff`; step `tp-A` | `R3bp/Region` | |
| `topology` (b) | `nearCircular_eq_image_region`, `exists_delaunay_preimage`; step `tp-chart` | `R3bp/Region` | Kepler `nearCircular_eq_image` |
| `topology` (c) | `isOpen_nearCircular_region`; step `tp-open` | `R3bp/Region` | Kepler `isOpen_nearCircular` |
| `topology` (d) | `nearCircular_nonempty`; step `tp-nonempty` | `R3bp/Region` | |
| `collision-exclusion` (a), (b) | `exclusionMu`, `exclusionMu_pos`, `collision_exclusion_quant`, `collision_exclusion_compact`, `radius_add_le`, `radius_neg`, `radius_eq_zero_iff`, `continuous_radius`; steps `ce-quant`, `ce-compact` | `Collision` | abstract length (issue B1) |
| `shell-exclusion` | `shell_exclusion`, `shell_collisionFree`; step `se-inst` | `Collision` | instance `ℓ := radius` |
| `min-distance` (track P) | `min_distance` | `Collision` | |
| `safe` | `safeT`, `safeAminus/Aplus/Eminus/Eplus`, `safeU`, `safeK`, `safeB`, `safeB'` | `R3bp/Safe` | |
| `safe-region` (a) | `safe_inclusions` (with `SafeAction`); step `sr-incl` | `R3bp/Safe` | |
| `safe-region` (b) | `safe_elements`; step `sr-elements` | `R3bp/Safe` | |
| `safe-region` (c) | `safe_radii`, `kRmin_le`, `le_kRhoMax`; step `sr-radii` | `R3bp/Safe` | |
| `safe-region` (d), (e) | `safe_domain`, `safeT_pos`, `safe_regionParams`; step `sr-B` | `R3bp/Safe` | |
| `head-data` (a) | `r3bp_headData`; steps `hd-h`, `hd-sets` | `R3bp/HeadData` | Kepler `period_one`, `nondeg_exact` |
| `head-data` (b) | `r3bp_perturbData`; step `hd-f` | `R3bp/HeadData` | Kepler `period_one` |
| `constants` | `shellNu`, `r3bpMu0`, `r3bpD`, `r3bpR`, `r3bp_constants_pos`, `r3bp_small` | `R3bp/Constants` | departure D2 |
| `bounds` | `delaunay_orbit_bounds`; steps `bd-r`, `bd-p` | `R3bp/Constants` | Kepler `delaunay_radius_bounds`, `delaunay_energy` |
| proof of I-R3BP: `pf-coord`, `pf-small`, `pf-sol`, `pf-bounds`, `pf-dist` | `r3bp_core` | `R3bp/Constants` | Kepler `transfer`, `shell_exclusion` |
| `pf-head` | in the provider: `KAM.Iso.all_time_confinement ...` | `Provider/Iso/RestrictedNearCircular` | waits for the I-HEAD seal |
| `pf-uniq` | `restricted_unique` | `R3bp/Uniqueness` | N3-8 |
| `rotating`, `dependence`, `totality` (remarks) | no declaration | | |

## 4. Conventions binding for all modules

- **Module system.** Every file: copyright header, `module`, `public import` of everything its statements use, module docstring,
  `@[expose] public section`. The provider modules are the only ones that may import Part 3's final module and, after the seal,
  the frozen I-HEAD anchor.
- **Side conditions are binders:** `0 < s₀`, `0 < r₀`, `IsOpen B`, `0 ≤ ε`, `ε < ε₀`-consequences (`Smallness`),
  `J.OrdConnected`, `0 ∈ J`, `a < 0`, `0 < b`, `0 ≤ μ`, `μ < μ₀`, `|μ| ≤ ν₀/2` are explicit. No hypothesis is unused except
  where the frozen binder list forces it (section 11).
- **Derivatives** are two-sided `HasDerivAt` (frozen predicates). Operator norms of `fderiv ℝ`/`fderiv ℂ` are the max-norm
  operator norms.
- **Smoothness:** `ContDiffOn ℝ ∞` with `open scoped ContDiff`. `ω`, `∞`, `₊`, `₋` are reserved/not identifier characters under
  that scope (Lean): the file uses `ωt`, `ρinf`, `am ap em ep`.
- **Complex vs real.** Complex objects keep complex names (`K`, `f`); real restrictions are `realRestriction K` (existing), and
  every transfer uses `isRealOnReals_iff`, `real_restriction`, `hamiltonian_real` (existing in `KAM/Strip/RealRestriction.lean`).
- **No `EuclideanSpace`, no `Fintype`-indexed `inf'`.**

## 5. Departures from the literal blueprint text

| # | Where | Lean form | Reason |
|---|---|---|---|
| D1 | `p5:eps0`, `hd-eps` | `exists_eps0`: `∃ ε₀ > 0` with the bounds, `Smallness` | only positivity and bounds are used |
| D2 | `p8:constants` | `μ₀ = min {1/2, μ₂, ε_H/(|C_F|+1), ν₀/2}`, `ε = μ C_F` | avoids the positivity of `C_F` (from `bpI:p7:shift`); `ε = C_F μ < ε_H` still holds |
| D3 | `p8:head-data` | no extension "`f̃_μ := 0` outside `T×B_{r₀}`"; `tildeF` is a total formula | frozen hypotheses are imposed on the domain only |
| D4 | `p5:graph` | `Y` is existential (`torus_graph`), `Ψ⁻¹` existential (`torus_phase_inv`) | no `invFun` in statements |
| D5 | `p5:graph`, `separation` | per-sign statements for one `TorusOutput`; `SepSetting` carries both | the signs are symmetric; avoids `Fin 2`-indexed families |
| D6 | `p5:real-ham` (d) | operator norm of the real derivative of `I ↦ Re f(ι φ, ι I)` | the blueprint's "real derivative" of a complex-valued `f` that is real on real points |
| D7 | `p5:confinement` | premise `IsMaximalSolution` instead of "let `z` be the maximal solution" | source premise (N design decision 3); existence from `gen_maximal` |
| D8 | `p5:separation` (c), `confinement` | helpers `*_of_invariant` take `hinv`; the source-facing `separation_confined`, `confinement_prop` take `TorusOutput` for both tori and `range (realRestriction K_±) = graphSet Y_±` and derive invariance (audit F03) | `hinv` is a proof dependency, not a source premise |
| D9 | `p8:collision-exclusion` | abstract length `ℓ`; `exclusionMu` as `if c = 0 then μ₁ else min μ₁ (δ/(2c))` | issue B1; `δ/(2c)` is junk for `c = 0` |
| D10 | `p8:min-distance` | `Finite ι`, any continuous definite length | same |
| D11 | `p8:topology` (b) | `∃ w, w.2 ∈ actionRegion ∧ delaunay w = z₀` | Kepler design carries `w = ((ℓ,g),(L,G))`; no `ℝ² × A` image notation |
| D12 | `p5:ext-top` | no declaration | Mathlib names are in the node table |

## 6. Blueprint issues

No theorem of Parts 5 or 8 is false as written, and the frozen statements look correct. The items below are carrier
mismatches, unstated dependencies and cosmetic points; each has its corrected Lean form in the signatures file.

**B1. `bpI:p8:collision-exclusion`, `min-distance`: "normed space `(X, |·|)`" versus the frozen `radius`.** The shell corollary
instantiates the lemma with `X = ℝ²`, `|·| = rad`. In Lean `Fin 2 → ℝ` carries the sup norm, and `radius` (the Euclidean
length) is not that norm, so the lemma cannot be instantiated with `|·| := ‖·‖` and cannot be stated for `radius` as written.
Correct: `collision_exclusion_quant`/`_compact` take any `ℓ : X → ℝ` on an abelian group with `ℓ(u+v) ≤ ℓ u + ℓ v`,
`ℓ(-u) = ℓ u`; `radius_add_le`, `radius_neg`, `radius_eq_zero_iff`, `continuous_radius` show that `radius` is such a length.
`min-distance` (track P: `|q_i - q_j|` in `(ℝ^k)^N` with the Euclidean norm) likewise takes `ℓ` continuous, nonnegative and definite (nonnegativity is part of a norm and is needed: `ℓ ≡ -1` is a counterexample, audit F02; same fix in `collision_exclusion_compact`).
Track P should instantiate it with its own `planeLength` (`= radius`, N3 `radius_eq_planeLength` is `rfl`).

**B2. `bpI:p8:constants`: `ε_H/C_F` needs `C_F > 0`.** `C_F = 6/(ε₀ˢʰ √c*)` is positive by `bpI:p7:shift`, but the Kepler design
exposes `exactCF` only as a bound constant (`‖exactF‖ ≤ exactCF`). The Lean form uses `ε_H/(|C_F| + 1)` and `ε := μ C_F`
(`0 ≤ μ C_F` follows from the bound at any point of the nonempty domain). Same conclusions, no extra upstream lemma.

**B3. `bpI:p3:tori` is consumed through data that Part 3 does not expose.** Part 5 uses `Φ_j⁻¹` explicitly (`I_± =
Φ_j⁻¹(E, m_±)`, T7), the patch window `δE, δm, ρc`, the chart's domain `W ⊆ B`, `C¹` regularity of `Φ_j` and its inverse,
and the slopes `m_±`. T7 states `I_± = Φ_j⁻¹(E, m_{j,±})` but `Φ_j`, `W_j` are Part 3 objects. In Lean they are carried by
`EnergyPatch` (section 10): the Part 3 design must produce `EnergyPatch` values (`chartCover_exists`), not only the
existential `∃ j` of the proposition. Also, Part 5 needs the derivative constant `F₁` and `0 < η₁ ≤ η` (`ChartCover`).

**B4. `bpI:p5:real-ham` (d) conditions on a Part 3 lemma.** (d) is derived from `bpI:p3:hypothesis-d` (`‖Df‖ ≤ F₁ ε` on
`𝔇`, `ε ≤ 1`) with `F₁` the Part 3 constant; Lean takes `hD` as a binder (not a conclusion-shaped hypothesis: it is a derivative
bound on `f`). "`∂_t f(φ, I+tv)`" is the derivative of `Re f` (it is real); `realHam_fderiv_bound` states it as an operator norm.

**B5. `bpI:p5:eps0`: the minimum is over a finite family whose members depend on a choice.** Fine mathematically; in Lean the
`min` over the patch set would need `Finset.inf'` and a nonempty index. `exists_eps0` replaces it (D1); `ε₀ ≤ ε₁ ≤ 1` is
what gives `ε ≤ 1` in `real-ham` (d).

**B6 (cosmetic). `bpI:p5:graph` (T4).** The blueprint bounds `Du_±`, `Dv_±` separately but proves them from the pair `(u, v)`;
`TorusOutput` keeps the two bounds (verbatim T4). The Lean proof uses `real_restriction` on the pair `K - (θ, ι I)`
(whose complex derivative is `(Du, Dv)`, operator norm = max) so `‖Dk_d‖ ≤ ‖DK_d‖ ≤ 4 C_K ε/ρ∞`.

**B7 (cosmetic). `hd-fix`: `B' = ∅`.** The blueprint's `ε₀ = 1` is the `by_cases` of `confinement_main`; the frozen binders
`hBb`, `hBne`, `hB'` (`IsOpen B'`) are then not used by Part 5 at all (section 11).

**What was checked and found correct** (provers need not recheck): the arithmetic of `bpI:p5:mu` (`μ₋ < -δm/4`, `μ₊ > δm/4`,
`μ_± ∈ (-δm, δm)` with `κ ≤ min {δm/4, δm - m₊, δm + m₋}`); the window `δE/2 + 2ε ≤ δE` for `ε < δE/4`; the boundary argument
(`∂𝒱 = closure 𝒱 ∖ 𝒱`, `closure 𝒱 ⊆ ℝ² × 𝒦` because `𝒦` is compact, hence closed); the use of `energy-coordinate` at `(h(Y), μ_s)`
and `(h(I), μ_s)` (both in `Q`); `Ω ⊆ 𝒦 ⊆ W ⊆ B` so the maximal solution stays in a compact subset of `B`; the
estimate `a₊'(1+e₊') ≤ (1+ρ*)/2` of `safe-region` (`t(2+e₊)+t² ≤ 3t`, `t ≤ (1-ρ*)/(6a₊)`); `e₊' < 3/8 < 1`; `R = √(2/r_min) > 1 > ρ_max`;
the frozen quantifier order of both theorems.

## 7. Modules and import DAG

Sizes are realistic estimates; hard cap 1500 lines (target `<= 600`).

| Module | Content | Lines |
|---|---|---|
| `KAM/Iso/Confinement/Setting.lean` | `toC`, `realAct`, `realPart`, `totalH`, `rhoInf`, `fractD`, `P2`; `BaseData`, `HeadData`, `PerturbData`, `EnergyPatch` (+ `Q O Omega K`), `PatchConst`, `Smallness`, `TorusOutput`, `GraphData`, `SepSetting`, `graphSet`, `levelSet`, `sepRegion`, `ChartCover`, `ToriExistence` | 260 |
| `KAM/Iso/Confinement/PatchConst.lean` | `isCompact_K`, `K_eq_image`, `isOpen_Omega`, `Omega_subset_K`, `patchConst_exists`, `exists_eps0` | 450 |
| `KAM/Iso/Confinement/RealHam.lean` | `bpI:p5:real-ham` and `realHam_energy_const`, `realHam_unique` | 650 |
| `KAM/Iso/Confinement/Position.lean` | `slope_*` (`bpI:p5:mu`) | 350 |
| `KAM/Iso/Confinement/Graph.lean` | `torus_phase_*`, `torus_graph*` | 650 |
| `KAM/Iso/Confinement/Invariance.lean` | `torus_flow`, `torus_invariant` | 350 |
| `KAM/Iso/Confinement/EnergyCoordinate.lean` | `energy_coordinate` | 300 |
| `KAM/Iso/Confinement/Separation.lean` | `separation_*` | 800 (split `Separation/Basic` 350 + `Separation/Boundary` 450 if over 700) |
| `KAM/Iso/Confinement/Confinement.lean` | `confinement_prop` | 350 |
| `KAM/Iso/Confinement/Main.lean` | `confinement_main_of_tori` | 500 |
| `KAM/Provider/Iso/AllTimeConfinement.lean` | `confinement_main` + provider (waits for I-G1) | 60 |
| `KAM/Iso/Collision.lean` | `radius_*`, `exclusionMu`, `collision_exclusion_*`, `shell_*`, `min_distance` | 450 |
| `KAM/Iso/R3bp/Region.lean` | `kappa`, `actionRegion*`, `e-vs-k`, topology | 500 |
| `KAM/Iso/R3bp/Safe.lean` | `safe*`, `kRmin_le`, `le_kRhoMax` | 600 |
| `KAM/Iso/R3bp/HeadData.lean` | `r3bpH`, `r3bpS₀`, `r3bpR₀`, `r3bp_headData`, `r3bp_perturbData` | 350 |
| `KAM/Iso/R3bp/Constants.lean` | `shellNu ... r3bpR`, `r3bp_constants_pos`, `r3bp_small`, `delaunay_orbit_bounds`, `r3bp_core` | 650 |
| `KAM/Iso/R3bp/Uniqueness.lean` | `restricted_unique` | 120 |
| `KAM/Provider/Iso/RestrictedNearCircular.lean` | provider (waits for I-HEAD) | 60 |

About 7,500 lines of proof plus statements.

**Import DAG** (`A ← B`: B imports A):

```
[ODE.Exit, ODE.Continuation, ODE.Hamiltonian, Strip.RealRestriction, Frozen.Defs.*, Frozen.Iso.Defs.*]  ← Confinement.Setting
Setting                                  ← PatchConst, RealHam, Position
Setting, RealHam                         ← Graph, Invariance, EnergyCoordinate
Setting, PatchConst, RealHam, EnergyCoordinate, Position  ← Separation
Setting, PatchConst, RealHam, Separation ← Confinement
all of the above                         ← Confinement.Main
[Part 3 final module (imports sealed I-G1)], Confinement.Main  ← Provider.Iso.AllTimeConfinement

Frozen.Iso.Defs.{Radius, Primary1, Primary2, CollisionFree}                         ← Iso.Collision
[Kepler: delaunay, nearCircular_eq_image, isOpen_nearCircular], Confinement.Setting ← R3bp.Region   (Setting only for later modules)
R3bp.Region, [Kepler: SafeAction, kRmin, kRhoMax]                                   ← R3bp.Safe
R3bp.Safe, Confinement.Setting, [Kepler: period_one, nondeg_exact, exact_ham]  ← R3bp.HeadData
R3bp.HeadData, Iso.Collision, [Kepler: transfer, orbitMapR_energy, orbitMapR_radius_bounds] ← R3bp.Constants
[ODE.NewtonReduction: restricted_reduction], ODE.Uniqueness                         ← R3bp.Uniqueness
R3bp.Constants, R3bp.Uniqueness, [frozen Iso.Theorems.AllTimeConfinement, after its seal] ← Provider.Iso.RestrictedNearCircular
```
No module imports a provider or an unsealed frozen theorem. Only frozen definitions are imported (`KAM/Frozen/**/Defs`).
`Part 8` imports only `Confinement.Setting` from Part 5 (the structures `HeadData`, `PerturbData`).

## 8. Prover packages

Each package proves its declarations exactly as in Appendix A. A package changes a signature only through the orchestrator,
after a statement audit. Hard rules for every Lean brief (verbatim):
1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design
   signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default
   heartbeats, report it as a design signal.
2. No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules, preserving public
   import paths as cheap facades.

### 8.1 Part 5

| Package | Declarations | Modules | Lines | After | Wave | Status |
|---|---|---|---|---|---|---|
| P5-0 Setting | definitions and structures only (no theorems) | `Setting` | 260 | ODE (done) | 1 | now |
| P5-1 Patch constants | `isCompact_K`, `K_eq_image`, `isOpen_Omega`, `Omega_subset_K`, `patchConst_exists`, `exists_eps0` | `PatchConst` | 450 | P5-0 | 2 | now |
| P5-2 Real Hamiltonian | all of section B | `RealHam` | 650 | P5-0 | 2 | now |
| P5-6 Position | `slope_*` | `Position` | 350 | P5-0 | 2 | now |
| P5-3 Graph | `torus_phase_*`, `torus_graph*` | `Graph` | 650 | P5-0, P5-2 | 3 | now |
| P5-4 Invariance | `torus_flow`, `torus_invariant` | `Invariance` | 350 | P5-0, P5-2 | 3 | now |
| P5-5 Energy coordinate | `energy_coordinate` | `EnergyCoordinate` | 300 | P5-0, P5-2 | 3 | now |
| P5-7 Separation | `separation_*` | `Separation` | 800 | P5-1, P5-2, P5-5, P5-6 | 4 | now |
| P5-8 Confinement | `confinement_prop` | `Confinement` | 350 | P5-1, P5-2, P5-7 | 5 | now |
| P5-9 Main | `confinement_main_of_tori` | `Main` | 500 | P5-1 ... P5-8 | 6 | now |
| P5-P Provider | `confinement_main`, provider | `Provider/Iso/AllTimeConfinement` | 60 | P5-9, **Part 3 final (I-G1 seal)** | after seal | **waits for I-G1** |

Critical path: P5-0 -> P5-2 -> P5-3/P5-5 -> P5-7 -> P5-8 -> P5-9 (6 waves). Wave 2 has three independent packages.

### 8.2 Part 8

| Package | Declarations | Modules | Lines | After | Wave | Status |
|---|---|---|---|---|---|---|
| P8-1 Collision | section K | `Iso/Collision` | 350 | (frozen defs only) | 1 | now (independent of everything) |
| P8-2 Region | section L | `R3bp/Region` | 500 | Kepler: `delaunay`, `eccOf`, `nearCircular_eq_image`, `isOpen_nearCircular` | 1 (when upstream) | upstream-gated |
| P8-3 Safe | section M | `R3bp/Safe` | 600 | P8-2, Kepler `SafeAction`, `kRmin`, `kRhoMax` | 2 | upstream-gated |
| P8-4 Head data | `r3bp_headData`, `r3bp_perturbData` | `R3bp/HeadData` | 350 | P8-3, P5-0, Kepler `period_one`, `nondeg_exact`, `exact_ham` | 3 | upstream-gated |
| P8-5 Constants and core | `shellNu` ... `r3bp_core` | `R3bp/Constants` | 650 | P8-1, P8-3, P8-4, Kepler `transfer`, `orbitMapR_energy`, `orbitMapR_radius_bounds` | 4 | upstream-gated |
| P8-6 Uniqueness | `restricted_unique` | `R3bp/Uniqueness` | 120 | N3-8 (`restricted_reduction`) | 2 (when N3-8) | upstream-gated |
| P8-P Provider | provider | `Provider/Iso/RestrictedNearCircular` | 60 | P8-5, P8-6, **I-HEAD seal** | after seal | **waits for I-HEAD** |

"upstream-gated" = provable the day the cited upstream declarations land sorry-free (Kepler design, 31 packages in 10 waves; the
Part 7 packages `exact_ham`, `period_one`, `transfer`, `nondeg_exact` are among its last waves; N3-8 is wave 2 of the N3 plan).
No Part 8 package needs I-G1 or I-HEAD.

### 8.2.1 Statement audit before dispatch

Before wave 1 an independent statement audit of Appendix A against the blueprint is recommended (`lean-statement-audit`; section 5 is
the checklist), in particular `EnergyPatch`/`ToriExistence` against Part 3 and the stubs of section U against the final Kepler design.

## 9. Proof plans (so provers do not rediscover them)

### Part 5

**P5-1.** `K_eq_image`: `⊆`: `I ∈ K` gives `v := (hR I, m I) ∈ Q` and `Ψ v = I` by `Ψ_left`; `⊇`: `v ∈ Q ⊆ image` (`Q_subset`),
`Ψ v ∈ W` (`Ψ_mem`) and `(hR (Ψ v), m (Ψ v)) = v ∈ Q` (`Ψ_right`). `isCompact_K`: `isCompact_Icc.prod`, `Ψ_contDiffOn.continuousOn.mono
Q_subset`, `IsCompact.image_of_continuousOn`. `isOpen_Omega`: `Omega = W ∩ (fun I => (hR I, m I)) ⁻¹' O`, `ContinuousOn.isOpen_inter_preimage` (both
`C¹` on the open `W`). `Omega_subset_K`: `Ioo ⊆ Icc`. `patchConst_exists`: `IsCompact.exists_cthickening_subset_open` (`K ⊆ W` open) gives `r`,
replace by `min r 1` (`cthickening_mono`); `Lm`: `m` is `C¹` on `W`, `ContDiffOn.continuousOn_fderiv_of_isOpen`, `IsCompact.cthickening`
(proper space), `IsCompact.exists_bound_of_continuousOn`, `Lm := max 1 bound`; `LΦ`: same for `Ψ` on `Q` (compact, `Q ⊆ V` open, `isOpen_V`);
`κ := min {δm/4, δm - m₊, δm + m₋}` positive by `mPlus_mem`, `mMinus_mem`. `exists_eps0`: choose `PatchConst` per patch (`choose`),
`ε₀ := min` over the finite set by `Set.Finite.induction_on` (empty case `ε₁`), each bound `ε₀ ≤ δE/4, ρinf/(8 C_K), r/C_K, κ/(Lm C_K),
1/(2 F₁ LΦ)` positive; `Smallness` by `lt_div_iff₀`.

**P5-2.** `isOpen_realAct`: `actionNbhd B r = ⋃ J ∈ B, ball (toC J) r` (see whether `KAM` already has `isOpen_actionNbhd`), preimage under the continuous
`toC`. (a): `realHamiltonian h f z = (totalH h f (realInclusion₂ 2 z)).re` is `rfl`; the complex identity from `hb.real` and
`hf.real` by `Complex.ext`. Smoothness (audit F05: Mathlib's `DifferentiableOn.contDiffOn` has domain `ℂ`, not `ℂ²×ℂ²`): `KAM.holomorphic_regularity_of_finiteDimensional` (`Strip/Bridges.lean`, any finite-dimensional complex `E`, so it applies to `(Fin 2 → ℂ) × (Fin 2 → ℂ)` directly; `KAM.Head.isOpen_actionNbhd` for openness) gives `ContDiffOn ℂ ∞`, then `.restrict_scalars ℝ`, compose
with `realInclusion₂` (`ContDiffOn.comp`, the set `univ ×ˢ realAct ⊆ ι₂⁻¹' V` uses `0 < s₀`), then `Complex.reCLM.contDiff.comp_contDiffOn`. Periodicity from
`hf.periodic` and `h` not depending on `θ`. (b): `KAM.hamiltonian_real` with `V`, `hh := hb.holo.comp ... + hf.holo`, `hH` by `rfl`. (c): `ham_smooth_c1` with
`ContDiffOn.of_le`, `ContDiffOn.mono` to `univ ×ˢ B`; `ham_periodic` with `W := univ ×ˢ realAct` (`hWk`: `Set.image_add_right` and `angleShift` only moves the first
component); `realHam_solution_iff` is `(ham_reduction hW hUW hH).2 J z` second iff, with `U := B`. (d): `HasFDerivAt` chain through `realInclusion`, `.restrictScalars ℝ`,
`Complex.reCLM`; `ContinuousLinearMap.opNorm_le_bound`, `|Re w| ≤ ‖w‖`, `‖(0, ι v)‖ = ‖v‖` (`Prod.norm_def`, `norm_realInclusion`). (e): `realHam_eq` and
`Complex.abs_re_le_norm`. `realHam_energy_const`: `ham_energy` (`hJ`, differentiability at `z t` from the open-domain smoothness). `realHam_unique`: both sides through `realHam_solution_iff`, then
`gen_uniqueness` on `Ioo a b` (`ordConnected_Ioo`, `t₀ = 0`).

**P5-3.** Apply `real_restriction` (existing) to `Kd θ := K θ - (θ, ι I)` (holomorphic on `T_ρ∞`, real on reals, `fderiv ℂ Kd = (Du, Dv)`, operator norm
`max` by `ContinuousLinearMap.opNorm_le_bound` componentwise) to get `‖Dk_d‖ ≤ 4 C_K ε/ρ∞ ≤ 1/2` on `ℝ²` (`ℝ² ⊆ T_{ρ∞/2}` by `realInclusion_mem_complexStrip`); `k_d = k - (id, I)`, its first component is `u_ℝ`. `LipschitzWith (1/2)` by
`lipschitzWith_of_nnnorm_fderiv_le` (convex `univ`). Bijectivity: for `φ`, `θ ↦ φ - u_ℝ θ` is `ContractingWith (1/2)` on the complete `ℝ²`, `ContractingWith.fixedPoint`;
the lower bound `‖Ψθ - Ψθ'‖ ≥ ½‖θ - θ'‖` is the reverse triangle inequality; `torus_phase_inv` via `AntilipschitzWith 2` and surjectivity (`AntilipschitzWith.to_rightInverse`).
`torus_graph`: `Y := fun φ => (k (Ψinv φ)).2`; `range k = graph Y` by `LeftInverse/RightInverse`; `‖Y φ - I‖ ≤ C_K ε` from `close` at the real point `ι θ`
(`norm_realInclusion₂`, `isRealOnReals_iff`); energy: `K (ι θ) = ι₂ (k θ)`, `realHamiltonian h f (k θ) = (totalH h f (ι₂ (k θ))).re = (E : ℂ).re`.
`torus_graph_mem`: `Metric.mem_cthickening_of_dist_le`, `pc.thick_subset`, `p.W_subset_B`. `torus_graph_energy_close`: `realHam_sub_le` and `hE`.

**P5-4.** `torus_flow`: `t ↦ θ₁ + t • ωt` has derivative `ωt`; `k` is differentiable with `ι₂ (Dk θ ωt) = DK (ι θ) (ι ωt)` (`realRestriction_fderiv`);
invariance error zero gives `DK(ιθ)(ι ωt) = X_H(K(ιθ))`; `realHam_field_eq` gives `ι₂(X_ℝ(k θ)) = X_H(ι₂ (k θ))`; `realInclusion₂_injective`; the membership
`(k θ).2 ∈ B` is `hmem`. `torus_invariant`: `range ⊆ univ ×ˢ B` from `hmem`; invariance: if `y t₁ = k θ₁`, the shifted torus flow
(`gen_symmetry_shift`) is a solution on `ℝ` through `y t₁` at `t₁`; `gen_uniqueness` on the `OrdConnected` `J` (hypothesis of `IsInvariantSet`) with `ham_smooth_c1`'s
`ContDiffOn ℝ 1`, `gen_lip`-free; `y t` then lies in `range k`.

**P5-5.** Reduction as in the blueprint: for `v = (e, m) ∈ Q`, `hR (Ψ v) = e` (`Ψ_right`) so `H_ℝ(φ, Ψ(e, m)) = e + fR φ (Ψ (e, m))`, `fR φ I := Re f(ι φ, ι I)`.
The segment `{(e, m)}` lies in `Q` (convex, `Icc ×ˢ Icc`) which lies in the open `V` where `Ψ` is `C¹`; `e ↦ fR φ (Ψ (e, m))` has derivative of norm
`≤ F₁ ε LΦ ≤ 1/2` (`realHam_fderiv_bound` at `Ψ(e,m) ∈ W ⊆ B`; `‖fderiv Ψ v (1, 0)‖ ≤ LΦ`); `Convex.norm_image_sub_le_of_norm_deriv_le` on `Icc e₁ e₂`. From
`heq`: `|e₁ - e₂| = |fR φ I₁ - fR φ I₂| ≤ ½ |e₁ - e₂|`.

**P5-6.** `slope_close`: the segment `[I, Y φ]` lies in `cthickening Cε {I} ⊆ cthickening r p.K` (`I ∈ p.K`, `Cε ≤ r`), `m` is `C¹` on `W ⊇ cthickening r p.K`, norm bound `Lm`;
`Convex.norm_image_sub_le_of_norm_fderiv_le` on `segment ℝ I (Y φ)` (`convex_segment`). The windows are `linarith` from `slope_close`, `Smallness.lt_kappa`, `PatchConst.κ_le_*`, `p.mPlus_mem/mMinus_mem`.
`slope_continuous`: `ContinuousOn.comp_continuous (p.m_contDiffOn.continuousOn)` with `Y φ ∈ W`.

**P5-7.** `separation_isOpen`: `IsOpen.inter` of `univ ×ˢ Omega` (P5-1) and two `isOpen_lt` sets (`m ∘ snd`, `m ∘ Y ∘ fst` continuous on the relevant open sets;
`ContinuousOn.isOpen_inter_preimage`). `separation_init`: `ball_subset`, `ball_h`, `ball_m`, `slope_window_*`. `separation_closure`: `closure_prod_eq`, `closure_minimal`
with `p.isCompact_K.isClosed`. `separation_window`: `realHam_eq` on `I ∈ K ⊆ W ⊆ B ⊆ realAct`, `realHam_sub_le` for `E`, `ball_h`, `lt_dE`. `separation_boundary`: `IsOpen.frontier_eq`;
for `z ∈ closure 𝒱`: `μ₋ ≤ m z.2 ≤ μ₊` by `closure_minimal` for the closed set `{z ∈ univ ×ˢ K | ...}` (`ContinuousOn.preimage_isClosed_of_isClosed`); if both strict,
`z ∈ 𝒱` (window gives `Φ z.2 ∈ O`), contradiction; else `m z.2 = μ_s`; `Y := Y_s φ ∈ 𝒩 ⊆ W`; `Φ Y = (h Y, μ_s) ∈ Q` (energy_close, window) and `Φ z.2 ∈ Q`; `energy_coordinate`;
`Ψ_left` gives `z.2 = Y`. Split into `boundary_slope_eq`, `boundary_mem_Q`, final. `separation_confined`: `gen_barrier` with `V := sepRegion` (`separation_isOpen`), `G := levelSet`
(`realHam_energy_const`), `hbd` (`separation_boundary`), `hz0S` (`separation_init`).

**P5-8.** `J := eIoo Tm Tp` (`ordConnected_eIoo`, `zero_mem_eIoo`), `hz.isSolution`, `separation_confined` gives `z t ∈ 𝒱`, hence `(z t).2 ∈ Omega ⊆ K`. `gen_continuation_periodic`
(`U := B`, `hU := hB`, `hF := realHam_field_contDiffOn`, `hper := realHam_field_periodic`, `hK := p.isCompact_K`, `hKU := K ⊆ W ⊆ B`) with `t_star := 0`: `Tp = ⊤`, `Tm = ⊥`. Then
`t` arbitrary: `eIoo_bot_top`. Distance: `p.W_subset_ball`, `ball_subset`, `ρc_le`: `‖(z t).2 - z₀.2‖ < η₁/4 + η₁/4`.

**P5-9.** (0) the source-facing `confinement_prop` takes `Tp, Tm, hgp, hgm`; the graph identifications come from `torus_graph`. (1) `exists_eps0` with `ρinf := rhoInf s₀`, `ε₁, C_K` from `htor`, `F₁` from `hcov`. (2) Given `f ε z₀`: `E := realHamiltonian h f z₀`, `|E - realPart h I₀| ≤ ε` (`realHam_sub_le`, `I₀ ∈ B ⊆ realAct`),
`I₀ ∈ B' ⊆ closure B'`, `ε < ε₀ ≤ ε₁`; `htor.tori` gives `p`, `Kp`, `Km`. (3) `pc, hsm` for `p` from `exists_eps0`. (4) `torus_graph` for each sign (`hs` from `hd.hs`, `8 C_K ε < ρinf` from `hsm.lt_rho`);
base points: `|E - hR p.c| < δE` (`ball_h`, `lt_dE`) so `(E, mPlus) ∈ p.Q`, `Ψ_mem`, `Ψ_right` give `Ip ∈ p.K`, `p.m Ip = mPlus`; `torus_graph_mem` gives `hmem`. (5) no invariance step is needed here: `confinement_prop` derives it. (6) `gen_maximal` (`hW := isOpen_univ.prod hd.isOpen`, `hF := realHam_field_contDiffOn`, `hx₀`). (7) `confinement_prop`;
`eIoo_bot_top` and `IsMaximalSolution.isSolution` give `IsSolutionIn ... univ z`; `realHam_solution_iff`; distance `η₁/2 < η`. (8) `realHam_unique` for the uniqueness clause. Split the proof
into `main_step_tori`, `main_step_graph`, `main_step_solution` (three lemmas of about 100 lines) if the single proof is slow.

### Part 8

**P8-1.** `radius_add_le`: `radius u = √(u0² + u1²)`, `Real.sqrt_le_iff` and Cauchy-Schwarz `u0 v0 + u1 v1 ≤ radius u * radius v` (`abs_le_sqrt`-style, `nlinarith [sq_nonneg (u0 * radius v - ...)]`
is fragile: use `Real.sqrt_mul_self`, `Real.le_sqrt`, `mul_self_le_mul_self_iff`); `continuous_radius`: `Real.continuous_sqrt.comp (continuous_finset_sum ...)`;
`radius_eq_zero_iff`: `Real.sqrt_eq_zero`, `Finset.sum_eq_zero_iff_of_nonneg`, `Fin.sum_univ_two`. `collision_exclusion_quant`: `q - x = (q - y) + (y - x)` (`sub_add_sub_cancel`), `htri`, `hneg`,
`hy` at `|μ| ≤ μ₁` (`exclusionMu ≤ μ₁`), `c |μ| ≤ δ/2` by cases `c = 0` / `c > 0` (`mul_div_cancel₀`). `collision_exclusion_compact`: for each `j`, `IsCompact.exists_isMinOn` of `q ↦ ℓ (q - x j)`
(continuous) on `S` (empty: `δ_j = 1`), positive by `hzero`, `hxS`; `δ := min` over `Fin m` (`Finset.exists_le` / induction; `m = 0`: `δ = 1`); then `_quant`. `shell_exclusion`:
`ℓ := radius`, `x := ![0, ![1,0]]`, `y j μ := primary_j μ`, `c = 1` (`radius (primary₁ μ - 0) = |μ|`: `Real.sqrt_sq_eq_abs`), `S := {q | rmin ≤ radius q ≤ ρmax}`,
`δ := ν₀`, `radius (q - ![1,0]) ≥ 1 - radius q` from `radius_add_le` (`1 = radius ![1,0]`), `exclusionMu 1 (ν₀/2) ν₀ = ν₀/2`. `min_distance`: `Finite ι` induction on pairs, compact image of
`q ↦ ℓ (q i - q j)`.

**P8-2.** `kappa_strictAntiOn`: `Real.sqrt_lt_sqrt`, `sq_lt_sq'`. `eccOf L G = kappa (G/L)` (`div_pow`, `Real.sqrt` of `1 - (G/L)²`); `eccOf_mem_Ioo_iff` from `kappa` strictly anti with
`kappa (kappa x) = x` on `[0,1]` (`Real.sq_sqrt`, `Real.sqrt_sq`) and `mul_lt_mul_right hL`. `isOpen_actionRegion`: four strict inequalities of continuous functions (`isOpen_lt`, `continuous_apply`).
`isCompact_actionRegionCl`: closed (`isClosed_le`) and bounded in `Fin 2 → ℝ` (`L ∈ [√a₋, √a₊]`, `G ∈ [0, L]`), `Metric.isCompact_of_isClosed_isBounded`. `closure_actionRegion_subset`: `closure_minimal`
(`subset_of_lt_le`-style per inequality). `mem_actionRegion_iff`: `Real.sqrt_lt_sqrt_iff`, `eccOf_mem_Ioo_iff`. `nearCircular_eq_image_region`: rewrite the Kepler set with `mem_actionRegion_iff`, `deDom` is the cone,
`actionRegion ⊆ cone` (`actionRegionCl_subset_cone`). `nearCircular_nonempty`: `L_* = √a_*`, `G_* = L_* κ(e_*)`, `κ` strictly anti, `eccOf L_* G_* = e_*`; image of the point.

**P8-3.** `safeT_pos` (`hinner`), `safe_regionParams` (`t ≤ 1/8`, `e₊ < 1/4`), `safe_inclusions`: `Real.sqrt_lt_sqrt`, `kappa_strictAntiOn` (`e₊' > e₊`, `e₋' < e₋`), `SafeAction`: compact (P8-2),
nonempty (`actionRegion` nonempty by the witness of P8-2), cone. `safe_elements`: `eccOf_mem_Icc_iff`. `safe_radii`: `csSup_le` (nonempty `K`) with the pointwise `L²(1+e) ≤ ap'(1+ep')`
(`mul_le_mul`), the arithmetic `ap'(1+ep') ≤ (1+ρ*)/2` as a stand-alone `lemma safe_rho_arith` (`t ≤ 1/8`, `e₊ < 1/4`, `3 t ap ≤ (1-ρ*)/2`; `nlinarith` on three explicit products, otherwise `calc`);
`le_csInf` for `rmin`; `kRmin_le`, `le_kRhoMax`: `csInf_le`, `le_csSup` with `BddBelow/BddAbove` from compactness (`IsCompact.bddBelow_image`, continuity of `eccOf` on the cone, `L ≠ 0`).
`safe_domain`: `(2π) •` is a homeomorphism (`Homeomorph.smulOfNeZero`): open map, `image_closure`, `IsCompact.image`, `Bornology.IsBounded.smul₀`; `closure B' = 2π Ā ⊆ 2π U`;
`I ∈ B ⇒ I/(2π) ∈ U ⊆ K` (`smul_inv_smul₀`).

**P8-4.** `r3bp_headData`: `hB := safe_domain`, Kepler `period_one` with `K := safeK` (`hρ := safe_radii.2.1`, `SafeAction` from `safe_inclusions`) gives `0 < s₀`, `0 < r₀`, holomorphy; reality from Kepler `keplerRotH_real`
(WANTED in upstream list: `(keplerRotH κ Ω (toC J)).im = 0`); `iso`: `nondeg_exact` gives `det = 3 / I 0 ^ 4`, nonzero (`div_ne_zero`, `pow_ne_zero`, `I 0 > 0`). `r3bp_perturbData`: from `period_one`; the reality clause
of the frozen shape is the Kepler clause at `z = (θ, I)` (`toC θ ∈ complexStrip 2 s₀` as `s₀ > 0`); `0 ≤ μ C_F` from the bound at a point of the nonempty domain (any `I ∈ B`, `θ = 0`); `|μ| = μ`.

**P8-5.** `r3bp_constants_pos`: `exactMu2_safe_pos`, `shellNu > 0` (`safe_radii`), `εH/(|C_F|+1) > 0`, `r3bpR > 0` (`kRmin > 0`). `r3bp_small`: `min_le_*`, `μ C_F ≤ |C_F| μ < |C_F| εH/(|C_F|+1) ≤ εH`.
`delaunay_orbit_bounds`: adapter `delaunay_radius_bounds` (`L²(1-e) ≤ radius q ≤ L²(1+e)`) with `kRmin_le`, `le_kRhoMax` at `x := w.2 ∈ K`; momentum: `delaunay_energy`
`radiusSq p / 2 - 1 / radius q = -1/(2L²)` so `radiusSq p ≤ 2/radius q ≤ 2/rmin`; `radius p = √(radiusSq p) ≤ √(2/rmin)` (`Real.sqrt_le_sqrt`).
`r3bp_core`: take `μ₀, d, R` from section N; for `μ`, `r3bp_small` and `r3bp_perturbData`; for `z₀`: `exists_delaunay_preimage` gives `w = ((ℓ,g),(L,G))`, `w₀ := ((2π)⁻¹ • w.1, (2π) • w.2)`,
`periodOneMap w₀ = w` (`smul_smul`, `mul_inv_cancel₀`), `w₀.2 ∈ safeB'`; given `zt`: Kepler `transfer` (`hB := safe_domain`, `|μ| < exactMu2`) gives `IsRestrictedSolutionOn μ univ`;
`z := fun t => delaunay (periodOneMap (zt t))`, `z 0 = z₀`; `(zt t).2 ∈ B` so `periodOneMap (zt t) = (_, (zt t).2/(2π)) ∈ deDom` (cone) with `(L,G) ∈ K`; `delaunay_orbit_bounds`, `ρmax < 1 < R`
(`r3bpR > 1`: `rmin ≤ ρmax < 1`); distances by `shell_exclusion` with `|μ| ≤ ν₀/2`.

**P8-6.** `restricted_reduction μ` (N3-8): `.2.2 (Ioo a b) y` and `.2.2 univ z`, `IsSolutionIn.mono` (`Ioo a b ⊆ univ`), `gen_uniqueness` (`hW := .1`, `hF := (.2.1).of_le`, `ordConnected_Ioo`, `0 ∈ Ioo a b`).

**Providers.** `all_time_confinement`: `by_cases hne : B'.Nonempty`; empty: `ε₀ := 1`, `z₀.2 ∈ ∅` absurd (`Set.not_mem_empty`); nonempty: `obtain ⟨η₁, F₁, patches, ε₁, C_K, hcov, htor⟩ := part3_tori hd hne`, `confinement_main_of_tori`,
then the 3-line repack of section P of the signatures file. `restricted_near_circular`: the 15-line glue of section P (already written and type-checked in the signatures file).

## 10. Upstream dependencies, interface with Part 3, and stub differences

### 10.1 Part 3 (track I, not yet designed)
Part 5 needs from Part 3 exactly: (i) `ChartCover`: finite `patches : Set (EnergyPatch (realPart h) B η₁)` covering `closure B'`, `0 < η₁ ≤ η`, `0 < F₁`, the derivative bound of
`bpI:p3:hypothesis-d`; (ii) `ToriExistence`: `bpI:p3:tori` with `T1-T4` and `I_± = Ψ(E, m_±)`; (iii) the joint theorem `part3_tori` (statement in section I of the signatures file). Coordination points for the Part 3 design:
- use `totalH h f` for `H = h + f` and `rhoInf s₀ = min s₀ 1/8` for `ρ∞` (so that `TorusOutput` is the output of `bpI:p3:apply` without conversion);
- produce `EnergyPatch` values: `m := m_c = σ_c ∘ ∇h`, `hR := realPart h`, `Ψ := Φ_c⁻¹`, `W` open with `W ⊆ B ∩ ball c (η₁/4)`; slopes `mPlus, mMinus` are the ray slopes of `bpI:p3:patch-rays`;
- `T7` as the equality `I_± = p.Ψ (E, m_±)` (this is what `Ip = p.Ψ (E, p.mPlus)` means);
- the rays by G3 (sealed) belong to `ChartCover`/`EnergyPatch`; the I-G1 application, the constants `ε₁`, `C_K` and `(T1)-(T4)` belong to `ToriExistence`.
- `ToriExistence` is stated for `closure B'`, `E` with `|E - realPart h I₀| ≤ ε`, `ε < ε₁`, any `f` with `PerturbData`.

### 10.2 Kepler design (`KEPLER-LEAN-DESIGN.md` revision 2, audited PASS, merged into `inp`)
Section U now copies the final signatures literally (bodies of `orbitMapR`, `shiftCsh`, `complexDelta`, `ExactHamData`, `exactDelta`, `tildeF` omitted). Proved on `inp`: `KAM/Kepler/{Basic,Plane,Energy}`; of
those Part 8 uses `planeLength_add_le`, `planeLength_neg`, `planeLength_eq_zero_iff`, `radius_eq_planeLength` (`KAM.Kepler.Plane`), so `radius_add_le`, `radius_neg`, `radius_eq_zero_iff` of `Collision` are one-line term proofs (no Cauchy-Schwarz work left in P8-1).

| Declaration | Used for | Status of the stub |
|---|---|---|
| `eccOf`, `deDom`, `delaunay` (= `orbitMapR ...`), `kE`, `eccOf_mem_Ioo` (final shape: `h : ![L,G] 1 < ![L,G] 0`, `hG`) | Region, Safe, Constants | literal |
| `orbitMapR_radius_bounds`, `orbitMapR_energy` | adapters `delaunay_radius_bounds`, `delaunay_energy` (Part 8, one-liners: `delaunay` unfolds to `orbitMapR`, `eccOf_mem_Ioo`) | literal; adapters are Part 8 declarations (audit F06) |
| `nearCircular_eq_image`, `isOpen_nearCircular` | `topology` | literal |
| `SafeAction`, `kLMin`, `kRmin`, `kRhoMax` | Safe, Constants | literal |
| `keplerRotH`, `keplerRotH_real`, `periodOneMap`, `periodOneMapC`, `phaseToC`, `UDelta`, `shiftEps`, `exactEps`, `exactMu2`, `exactCF` | HeadData, Constants | literal (`shiftCsh`, `exactDelta`, `tildeF`, `complexDelta`, `ExactHamData` bodies omitted) |
| `exact_ham` | `0 < exactDelta K` is its first conjunct (no `exactDelta_pos` extraction needed) | literal (three conjuncts) |
| `period_one`, `nondeg_exact`, `transfer` | `r3bp_headData`, `r3bp_perturbData`, `r3bp_core` | literal (full conjunctions; Part 8 projects) |
| `exactMu2 > 0` | `μ₀ > 0` | not upstream: `exactMu2_safe_pos` (Part 8) from the `shiftEps` formula and `safe_radii` |

Audit F06 resolved: the previous stubs were projections; the stubs are now literal, and the two repackagings are named Part 8 adapters (`delaunay_radius_bounds`, `delaunay_energy`, `exactMu2_safe_pos`). Pin: Kepler design revision 2 as in `inp` at `b58352f`; P8-2 ... P8-5 stay upstream-gated and must re-synchronize if its signatures change.

### 10.3 N3-8 (`PART3-LEAN-DESIGN.md`)
`KAM.ODE.restrictedDomain`, `restrictedField`, `restricted_reduction` (collision-free set open, field `C^∞`, `IsRestrictedSolutionOn ↔ IsSolutionIn`). Not on `inp` yet (only `KAM/ODE/{Basic,Lipschitz,Existence,Uniqueness,Exit,Maximal,UniformPeriodic,Continuation,Hamiltonian}`).

### 10.4 ODE layer on `inp` (all used by name, none re-planned)
`IsSolutionIn`, `IsMaximalSolution`, `eIoo`, `eIoo_bot_top`, `ordConnected_eIoo`, `zero_mem_eIoo`, `IsMaximalSolution.isSolution_of_mem`, `gen_maximal`, `gen_uniqueness`, `gen_barrier`, `IsInvariantSet`, `isInvariantSet_union`,
`gen_continuation_periodic`, `gen_symmetry_shift`, `ham_smooth_c1`, `ham_energy`, `ham_periodic`, `ham_reduction`, `angleShift`. `KAM.Strip.RealRestriction`: `realInclusion`, `realInclusion₂`, `realRestriction`, `real_restriction`,
`isRealOnReals_iff`, `realInclusion_mem_complexStrip`, `hamiltonian_real`.

## 11. Provider assembly to the EXACT frozen types

The provider bodies are in section P of the signatures file, compiled against the stubs. Binder lists are copied from the frozen files; `rfl` checks confirm that the types agree.

### 11.1 `KAM.Provider.Iso.all_time_confinement` (frozen `KAM.Iso.all_time_confinement`)

| Frozen binder | Packed into | Consumed where |
|---|---|---|
| `B`, `hB : IsOpen B` | `HeadData.isOpen` | `gen_maximal`, `gen_uniqueness` (`IsOpen (univ ×ˢ B)`), `gen_continuation_periodic` (`hU`) |
| `hBb : IsBounded B` | `HeadData.bounded` | Part 3 only (`d_B`, compactness of `𝒮`); unused by Part 5 |
| `hBne : B.Nonempty` | `HeadData.nonempty` | Part 3 only; unused by Part 5 |
| `{s₀ r₀}`, `hs : 0 < s₀`, `hr : 0 < r₀` | `BaseData.hs`, `.hr` | `realAct`/strip membership of real points, `B ⊆ realAct`, `toC_pair_mem_fractD`; `rhoInf s₀ > 0` |
| `h`, `hh` | `BaseData.holo` | `realHam_*`, `ham_*` (smoothness of `H_ℝ` on `ℝ² × U`) |
| `hhreal` | `BaseData.real` | `realHam_eq`, `realHam_field_eq` (`hamiltonian_real`), `realHam_sub_le` |
| `hiso` | `HeadData.iso` | Part 3 only (`bpI:p3:chart`, `det-identity`, `S_h`); not read by Part 5 |
| `B'`, `hB' : IsOpen B'` | `HeadData.isOpen'` | unused by Parts 3, 5 (only `closure B'` is used) |
| `hcompact`, `hinside` | `HeadData.compact`, `.inside` | `ChartCover.cover` (Part 3); `I₀ ∈ B' ⊆ closure B'` in `P5-9` |
| `{η}`, `hη` | `HeadData.hη` | `ChartCover.η₁_le`; final bound `η₁/2 < η` |
| `ε₀` (existential) | `confinement_main` | defined by `exists_eps0` (min of `ε₁` and the patch bounds) |
| `f`, `ε` | `PerturbData` | all of Part 5 |
| `DifferentiableOn ℂ f (...)` | `PerturbData.holo` | `realHam_contDiffOn`, `realHam_field_eq` |
| periodicity | `PerturbData.periodic` | `realHam_periodic`, `realHam_field_periodic` (hence `gen_continuation_periodic`) |
| reality | `PerturbData.real` | `realHam_eq`, `realHam_field_eq` |
| `0 ≤ ε` | `PerturbData.nonneg` | `Smallness.nonneg` |
| `ε < ε₀` | `confinement_main` | `Smallness` (with `exists_eps0`), `ε < ε₁` for `htor.tori` |
| `‖f z‖ ≤ ε` | `PerturbData.bound` | `realHam_sub_le`; Part 3 Cauchy bounds |
| `z₀`, `hz₀ : z₀.2 ∈ B'` | | `htor.tori` at `I₀ ∈ closure B'`; `separation_init` |
| conclusion `z 0 = z₀`, `IsHamiltonianSolutionOn ... Set.univ z` | `gen_maximal`, `confinement_prop`, `realHam_solution_iff` | |
| conclusion `∀ t, ‖(z t).2 - z₀.2‖ < η` | `confinement_prop` (`< η₁/2`), `η₁ ≤ η` | |
| conclusion uniqueness on `Ioo a b` | `realHam_unique` | |

Unused by Part 5 (the frozen text forces them): `hBb`, `hBne`, `hiso`, `hB'`. They are not unused by the mathematics of the statement (Part 3 uses `hiso`); they cost nothing.

### 11.2 `KAM.Provider.Iso.restricted_near_circular` (frozen `KAM.Iso.restricted_near_circular`)

| Frozen binder / conclusion | Consumed where |
|---|---|
| `aMinus aPlus eMinus ePlus`, `ha haa he hee heSmall hinner` | packed into `R3bpParams`; `ha`: `safeAminus > 0`, `actionRegion`; `haa`: `√a₋ < √a₊`, `A` nonempty; `he`: `e₋' > 0` (away from `e = 0`); `hee`: `A` nonempty; `heSmall`: `e₊' < 3/8 < 1`, `t(2+e₊)+t² ≤ 3t`; `hinner`: `ρ* < 1`, so `t > 0`, `ρ_max < 1` |
| `IsOpen (NearCircular ..)` | `isOpen_nearCircular_region` (Kepler `isOpen_nearCircular`) |
| `(NearCircular ..).Nonempty` | `nearCircular_nonempty` |
| `μ₀ d R`, positivity, `μ₀ ≤ 1/2` | `r3bp_core` (`r3bp_constants_pos`); `ε_H` from the frozen `all_time_confinement` at the data of `r3bp_headData` |
| `μ`, `0 ≤ μ`, `μ < μ₀` | `r3bp_small`, `r3bp_perturbData`, `shell_exclusion` (`|μ| ≤ ν₀/2`) |
| `z₀ ∈ NearCircular ..` | `exists_delaunay_preimage`, `w₀` |
| `z`, `z 0 = z₀`, `IsRestrictedSolutionOn μ univ z` | `r3bp_core` (`transfer`) |
| the four bounds | `delaunay_orbit_bounds`, `shell_exclusion`, `ρmax < R` |
| `y`, `a`, `b`, `y 0 = z₀`, `IsRestrictedSolutionOn μ (Ioo a b) y` | `restricted_unique` |

### 11.3 Frozen I-G1 and I-KEPLER
I-G1 is consumed only by Part 3 (`ToriExistence`). I-KEPLER (`keplerBorder_det`) is already proved (`KAM/Iso/Kepler.lean`) and enters Part 8 through the Kepler design's `nondeg_exact`.

## 12. Risks

### 12.1 Elaboration
- `EnergyPatch` has 28 fields and `SepSetting` 13 parameters. Keep them behind `variable` blocks and projections; never `simp` through a structure literal; state each use as `p.field`.
- `separation_boundary` and `confinement_main_of_tori` are the longest proofs. Planned splits: `boundary_slope_eq`, `boundary_mem_Q`, `main_step_tori/graph/solution`. A heartbeat failure there is a design signal (hard rule 1): split further, never raise a budget.
- `ContDiffOn ℝ ∞ (realHamiltonian h f)` through `holomorphic_regularity_of_finiteDimensional` then `restrict_scalars`: keep the open set `V` and the composition `ι₂` as named terms; do not unfold `realHamiltonian` beyond `rfl`.
- `torus_phase_*`: `fderiv ℂ (fun θ => (K θ).1 - θ)` versus the pair `K θ - (θ, ι I)`; prove the pair bound once (`Graph` lemma `pair_fderiv_norm_le`) and project.
- `kRmin`, `kRhoMax` are `sInf/sSup` of images; `csInf_le/le_csSup` need `BddBelow/BddAbove` from compactness (`IsCompact.bddBelow_image`) and continuity of `eccOf` on the cone: isolate in `kRmin_le`, `le_kRhoMax`.
- The arithmetic of `safe_radii` is the only place with nonlinear real arithmetic beyond `positivity`: `safe_rho_arith` is a stand-alone lemma.

### 12.2 Interfaces
- `ToriExistence` is the highest-risk statement: it fixes how Part 3 exposes its patches. If the Part 3 design changes `EnergyPatch`, `ChartCover` and `ToriExistence` must change in lock step; only `Setting.lean` and `Main.lean` are affected (the other Part 5 modules take explicit hypotheses).
- Section U is synced with the audited Kepler design (10.2); N3-8 is being proved (not on `inp` yet): `restricted_unique` waits.
- `toC` is an `abbrev` over `fun i => (x i : ℂ)`: statements typed with `toC` unify with the frozen lambda (checked by the provider compile); do not make it a `def`.
- Part 5 names (`PerturbData`, `HeadData`, `BaseData`, `P2`, `toC`) are imported by Part 8; keep `Setting.lean` free of heavy imports.

### 12.3 Mathlib gaps (all checked by `#check` in the scratch environment of the N3 design or standard)
Missing: nothing structural. Awkward: no `HasDerivAt.fst/snd` (use `HasFDerivAt.comp` with `ContinuousLinearMap.fst/snd`); `Complex`-valued functions into `Fin 2 → ℂ` need `fderiv` componentwise (`hasFDerivAt_pi`); `frontier` of a product is not needed (we use `IsOpen.frontier_eq`
and `closure_prod_eq`).

### 12.4 Errata candidates (reported here, not edited)
- `blueprint-I/parts/p8-r3bp.tex`, `bpI:p8:collision-exclusion` and `min-distance`: "normed space" for the Euclidean length `rad` (B1).
- `p8-r3bp.tex`, `bpI:p8:constants` item (4): `ε_H/C_F` uses `C_F > 0` established in Part 7, not stated at the point of use (B2).
- `p5-confinement.tex`, `bpI:p5:eps0` and Part 3 `bpI:p3:tori`: `Φ_j⁻¹`, patch window and `F₁` are not exposed by the proposition (B3).

## 13. Audit fixes (audit 1, `PART58-design-audit-1.md`, verdict FAIL)

| Finding | Resolution |
|---|---|
| F01 blocking: `realHam_fderiv_bound` false without holomorphy of `f` (countermodel `f = conj(I 0)`, total `fderiv = 0`) | Added the binder `hf : PerturbData B s₀ r₀ f ε`; `hD` stays (the named Part 3 derivative bound, `ChartCover.dbound`). All callers (`energy_coordinate`, `SepSetting.perturb`) already carry `PerturbData`. |
| F02 blocking: `min_distance` false for a negative length (`ℓ ≡ -1`) | Added `hnonneg : ∀ u, 0 ≤ ℓ u` to `min_distance` and to `collision_exclusion_compact` (same defect: the minimum over `S` could be negative); added `radius_nonneg`. |
| F03 major: `separation_confined`, `confinement_prop` carried the produced premise `hinv` | Renamed to `separation_confined_of_invariant`, `confinement_prop_of_invariant` (conditional helpers). New source-facing `separation_confined`, `confinement_prop` take `TorusOutput` for both tori and `range (realRestriction K_±) = graphSet Y_±`, and derive invariance inside (`torus_invariant` twice, `isInvariantSet_union`, membership `(k θ).2 ∈ B` from `GraphData.near/base_mem`, `PatchConst.thick_subset`, `Smallness.lt_r`). `confinement_main_of_tori` uses the wrapper. |
| F04 major: `part3_tori` is a planned producer, not a discharge | Accepted as stated: `confinement_main_of_tori` is CONDITIONAL; `confinement_main` and the provider stay unproved until Part 3's `ChartCover`/`ToriExistence` producer and the I-G1 seal land (section 2 already says so; section 8.1 marks P5-P "waits"). No signature change. |
| F05 minor: `DifferentiableOn.contDiffOn` has domain `ℂ` | Proof plan P5-2 and risk 12.1 now use `KAM.holomorphic_regularity_of_finiteDimensional` (finite-dimensional complex `E`, applies to `ℂ²×ℂ²`) and `KAM.Head.isOpen_actionNbhd`. Signatures unchanged. |
| F06 minor: stubs were projections of the Kepler design, file absent | Kepler design is now audited PASS and on `inp`; section U copies its final signatures literally (10.2), the repackagings are named Part 8 adapters; `radius_*` reuse the proved `KAM.Kepler.Plane` helpers. Also resynced: `eccOf_mem_Ioo` final shape; `exact_ham` three conjuncts; `period_one`/`transfer` full conjunctions. |

Re-elaborated: exit 0, 102 diagnostics, all `declaration uses 'sorry'`; provider `rfl` checks still pass.

## Appendix A. `.drafts/design/IPart58Signatures.lean` (verbatim)

The file below is the exact text elaborated with `nice -n 5 lake env lean`, sha256 `7aff03fdfc2ebf640555f871b74f147c4547cb47f79df5b689676359a3b372dd`.

```lean
/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.ODE.Exit
public import KAM.ODE.Continuation
public import KAM.ODE.Hamiltonian
public import KAM.Strip.RealRestriction
public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Frozen.Defs.RealHamiltonian
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Defs.HamiltonianVectorFieldC
public import KAM.Frozen.Defs.InvarianceError
public import KAM.Frozen.Defs.IsPrimaryOnStrip
public import KAM.Frozen.Defs.IsRealOnReals
public import KAM.Frozen.Iso.Defs.BorderedHessian
public import KAM.Frozen.Iso.Defs.IsHamiltonianSolutionOn
public import KAM.Frozen.Iso.Defs.IsRestrictedSolutionOn
public import KAM.Frozen.Iso.Defs.NearCircular
public import KAM.Frozen.Iso.Defs.Radius
public import KAM.Frozen.Iso.Defs.RadiusSq
public import KAM.Frozen.Iso.Defs.Primary1
public import KAM.Frozen.Iso.Defs.Primary2
public import KAM.Frozen.Iso.Defs.CollisionFree
public import KAM.Frozen.Iso.Defs.RestrictedVectorField
public import KAM.Frozen.Iso.Defs.RestrictedHamiltonian
public import KAM.Frozen.Planetary.Defs.PlaneSq
public import KAM.Frozen.Planetary.Defs.PlaneLength
public import KAM.Frozen.Iso.Theorems.AllTimeConfinement -- SCRATCH ONLY: typechecks the provider glue; a real module may import it only once I-HEAD is sealed
public import KAM.Frozen.Iso.Theorems.RestrictedNearCircular -- SCRATCH ONLY: used for `rfl` type-equality checks

/-!
# Signatures of blueprint-I Part 5 (I-HEAD) and Part 8 (I-R3BP) (design draft)

Exact Lean statements of every result node `bpI:p5:*`, `bpI:p8:*`, see
`docs/tracks/I/design/PART58-LEAN-DESIGN.md`. Every body is `sorry`, except one-line term proofs
and the two provider bodies of section P, which are written out in full (they type-check the
assembly against the exact frozen types). Design evidence, not approved Lean; no `set_option`.

* Section U: STUBS of upstream declarations designed (not yet proved) in
  `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` and `docs/tracks/N/design/PART3-LEAN-DESIGN.md`,
  restricted to the clauses Part 8 uses (differences listed in design document section 10), bodies
  `sorry`. They are not part of this design.
* Sections A-J: Part 5, namespace `KAM.Iso.Confinement`, modules `KAM/Iso/Confinement/*`:
  A Setting (also holds the structures `TorusOutput`, `GraphData`, `SepSetting`, `ChartCover`,
  `ToriExistence`, which appear below next to their first use), B RealHam, C Graph, D Invariance,
  E EnergyCoordinate, F Position, G Separation, H Confinement, I interface to Part 3, J assembly.
* Sections K-N: Part 8, namespaces `KAM.Iso.Collision`, `KAM.Iso.R3bp`; modules
  `KAM/Iso/Collision.lean`, `KAM/Iso/R3bp/*`: K Collision, L Region, M Safe, N Data/Constants/Core.
* Section P: the two providers (`KAM/Provider/Iso/*`), exact frozen types.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

/-! ## U. Stubs of upstream declarations (not part of this design) -/

namespace KAM.Kepler

open KAM.Planetary

/-! PROVED on `inp` (`KAM/Kepler/Plane.lean`); signatures copied. -/
theorem planeLength_add_le (v w : Fin 2 → ℝ) :
    planeLength (v + w) ≤ planeLength v + planeLength w := sorry
theorem planeLength_neg (v : Fin 2 → ℝ) : planeLength (-v) = planeLength v := sorry
theorem planeLength_eq_zero_iff {v : Fin 2 → ℝ} : planeLength v = 0 ↔ v = 0 := sorry
theorem radius_eq_planeLength : KAM.Iso.radius = planeLength := rfl

/-! Kepler design (audited PASS, `KEPLER-LEAN-DESIGN.md` revision 2), signatures literal;
bodies of defs omitted where marked. -/

/-- Eccentricity `e(L, G) = √(1 - G²/L²)`. -/
def eccOf (L G : ℝ) : ℝ := √(1 - G ^ 2 / L ^ 2)

/-- `orbitMapR ℓ g L e` (BODY OMITTED). -/
def orbitMapR (ℓ g L e : ℝ) : (Fin 2 → ℝ) × (Fin 2 → ℝ) := sorry

/-- Domain of the Delaunay variables `w = ((ℓ, g), (L, G))`, `0 < G < L`. -/
def deDom : Set ((Fin 2 → ℝ) × (Fin 2 → ℝ)) := {w | 0 < w.2 1 ∧ w.2 1 < w.2 0}

def delaunay (w : (Fin 2 → ℝ) × (Fin 2 → ℝ)) : (Fin 2 → ℝ) × (Fin 2 → ℝ) :=
  orbitMapR (w.1 0) (w.1 1) (w.2 0) (eccOf (w.2 0) (w.2 1))

def kE (z : (Fin 2 → ℝ) × (Fin 2 → ℝ)) : ℝ := planeSq z.2 / 2 - 1 / planeLength z.1

theorem eccOf_mem_Ioo {L G : ℝ} (h : (![L, G] : Fin 2 → ℝ) 1 < (![L, G] : Fin 2 → ℝ) 0)
    (hG : 0 < G) : 0 < eccOf L G ∧ eccOf L G < 1 := sorry

theorem orbitMapR_radius_bounds {ℓ g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    L ^ 2 * (1 - e) ≤ planeLength (orbitMapR ℓ g L e).1 ∧
      planeLength (orbitMapR ℓ g L e).1 ≤ L ^ 2 * (1 + e) := sorry

theorem orbitMapR_energy {ℓ g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    kE (orbitMapR ℓ g L e) = -1 / (2 * L ^ 2) := sorry

theorem nearCircular_eq_image (aMinus aPlus eMinus ePlus : ℝ) :
    KAM.Iso.NearCircular aMinus aPlus eMinus ePlus =
      delaunay '' {w | w ∈ deDom ∧ aMinus < w.2 0 ^ 2 ∧ w.2 0 ^ 2 < aPlus ∧
        eMinus < eccOf (w.2 0) (w.2 1) ∧ eccOf (w.2 0) (w.2 1) < ePlus} := sorry

theorem isOpen_nearCircular (aMinus aPlus eMinus ePlus : ℝ) :
    IsOpen (KAM.Iso.NearCircular aMinus aPlus eMinus ePlus) := sorry

/-- Entrywise complexification of a real phase point. -/
def phaseToC {d : ℕ} (z : (Fin d → ℝ) × (Fin d → ℝ)) : (Fin d → ℂ) × (Fin d → ℂ) :=
  (fun i => (z.1 i : ℂ), fun i => (z.2 i : ℂ))

end KAM.Kepler

namespace KAM.Iso

open KAM.Kepler KAM.Planetary

structure SafeAction (K : Set (Fin 2 → ℝ)) : Prop where
  isCompact : IsCompact K
  nonempty : K.Nonempty
  sub_cone : ∀ x ∈ K, 0 < x 1 ∧ x 1 < x 0

def kLMin (K : Set (Fin 2 → ℝ)) : ℝ := sInf ((fun x => x 0) '' K)
def kRmin (K : Set (Fin 2 → ℝ)) : ℝ := sInf ((fun x => x 0 ^ 2 * (1 - eccOf (x 0) (x 1))) '' K)
def kRhoMax (K : Set (Fin 2 → ℝ)) : ℝ := sSup ((fun x => x 0 ^ 2 * (1 + eccOf (x 0) (x 1))) '' K)

def keplerRotH (κ Ω : ℝ) (I : Fin 2 → ℂ) : ℂ := -(κ : ℂ) / (2 * I 0 ^ 2) - Ω * I 1

theorem keplerRotH_real (κ Ω : ℝ) (J : Fin 2 → ℝ) :
    keplerRotH κ Ω (fun i => (J i : ℂ)) = ((-κ / (2 * J 0 ^ 2) - Ω * J 1 : ℝ) : ℂ) := sorry

def periodOneMap {n : ℕ} (z : (Fin n → ℝ) × (Fin n → ℝ)) : (Fin n → ℝ) × (Fin n → ℝ) :=
  ((2 * Real.pi) • z.1, (2 * Real.pi)⁻¹ • z.2)
def periodOneMapC {n : ℕ} (z : (Fin n → ℂ) × (Fin n → ℂ)) : (Fin n → ℂ) × (Fin n → ℂ) :=
  (((2 * Real.pi : ℝ) : ℂ) • z.1, (((2 * Real.pi)⁻¹ : ℝ) : ℂ) • z.2)

/-- `𝒰(δ)` (literal). -/
def UDelta (K : Set (Fin 2 → ℝ)) (δ : ℝ) : Set ((Fin 2 → ℂ) × (Fin 2 → ℂ)) :=
  {w | (∀ i, |(w.1 i).im| < δ) ∧ w.2 ∈ KAM.actionNbhd K δ}

def shiftEps (rmin ρmax : ℝ) : ℝ := min (rmin ^ 2) ((1 - ρmax) ^ 2) / 16
def shiftCsh (rmin ρmax ε : ℝ) : ℝ := sorry          -- BODY OMITTED
def exactEps (K : Set (Fin 2 → ℝ)) : ℝ := shiftEps (kRmin K) (kRhoMax K)
def exactMu2 (K : Set (Fin 2 → ℝ)) : ℝ := exactEps K / 2
def exactCF (K : Set (Fin 2 → ℝ)) : ℝ := shiftCsh (kRmin K) (kRhoMax K) (exactEps K)
def complexDelta (K : Set (Fin 2 → ℝ)) : ℝ := sorry  -- BODY OMITTED
def ExactHamData (K : Set (Fin 2 → ℝ)) (δ₂ : ℝ) : Prop := sorry -- BODY OMITTED
def exactDelta (K : Set (Fin 2 → ℝ)) : ℝ := sorry    -- BODY OMITTED (classical choice)
def tildeF (K : Set (Fin 2 → ℝ)) (μ : ℝ) (z : (Fin 2 → ℂ) × (Fin 2 → ℂ)) : ℂ := sorry -- BODY OMITTED

theorem exact_ham {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) (hρ : kRhoMax K < 1) :
    0 < exactDelta K ∧ exactDelta K ≤ complexDelta K ∧ ExactHamData K (exactDelta K) := sorry

theorem period_one {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) (hρ : kRhoMax K < 1)
    {B : Set (Fin 2 → ℝ)} (hB : ∀ I ∈ B, (fun i => I i / (2 * Real.pi)) ∈ K) :
    let s₀ := exactDelta K / (2 * Real.pi)
    let r₀ := 2 * Real.pi * exactDelta K
    0 < s₀ ∧ 0 < r₀ ∧
    (∀ z ∈ KAM.complexStrip 2 s₀ ×ˢ KAM.actionNbhd B r₀, periodOneMapC z ∈ UDelta K (exactDelta K)) ∧
    (DifferentiableOn ℂ (keplerRotH ((2 * Real.pi) ^ 2) (1 / (2 * Real.pi))) (KAM.actionNbhd B r₀) ∧
      ∀ I ∈ KAM.actionNbhd B r₀, Real.pi * kLMin K < (I 0).re) ∧
    (∀ μ : ℝ, |μ| < exactMu2 K →
      DifferentiableOn ℂ (tildeF K μ) (KAM.complexStrip 2 s₀ ×ˢ KAM.actionNbhd B r₀) ∧
      (∀ z ∈ KAM.complexStrip 2 s₀ ×ˢ KAM.actionNbhd B r₀, ‖tildeF K μ z‖ ≤ |μ| * exactCF K) ∧
      (∀ z ∈ KAM.complexStrip 2 s₀ ×ˢ KAM.actionNbhd B r₀, ∀ k : Fin 2 → ℤ,
        tildeF K μ (z.1 + fun i => (k i : ℂ), z.2) = tildeF K μ z)) ∧
    (∀ μ : ℝ, |μ| < exactMu2 K → ∀ z : (Fin 2 → ℝ) × (Fin 2 → ℝ),
      (fun i => (z.1 i : ℂ), fun i => (z.2 i : ℂ)) ∈
          KAM.complexStrip 2 s₀ ×ˢ KAM.actionNbhd B r₀ →
      (tildeF K μ (phaseToC z)).im = 0 ∧
      ∃ hcf : CollisionFree μ (delaunay (periodOneMap z)),
        restrictedHamiltonian μ ⟨delaunay (periodOneMap z), hcf⟩ =
          KAM.realHamiltonian (keplerRotH ((2 * Real.pi) ^ 2) (1 / (2 * Real.pi))) (tildeF K μ) z) :=
  sorry

theorem nondeg_exact {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) (hρ : kRhoMax K < 1)
    {B : Set (Fin 2 → ℝ)} (hB : ∀ I ∈ B, (fun i => I i / (2 * Real.pi)) ∈ K) :
    ∀ I : Fin 2 → ℝ, (fun i => (I i : ℂ)) ∈ KAM.actionNbhd B (2 * Real.pi * exactDelta K) →
      0 < I 0 ∧ (borderedHessian (keplerRotH ((2 * Real.pi) ^ 2) (1 / (2 * Real.pi))) I).det
        = 3 / I 0 ^ 4 := sorry

theorem transfer {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) (hρ : kRhoMax K < 1)
    {B : Set (Fin 2 → ℝ)} (hB : ∀ I ∈ B, (fun i => I i / (2 * Real.pi)) ∈ K) {μ : ℝ}
    (hμ : |μ| < exactMu2 K) {J : Set ℝ} {zt : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ)}
    (hz : IsHamiltonianSolutionOn
      (KAM.realHamiltonian (keplerRotH ((2 * Real.pi) ^ 2) (1 / (2 * Real.pi))) (tildeF K μ)) B J zt) :
    IsRestrictedSolutionOn μ J (fun t => delaunay (periodOneMap (zt t))) ∧
    ∀ t ∈ J, planeLength (delaunay (periodOneMap (zt t))).1 ∈
      Icc ((zt t).2 0 ^ 2 / (2 * Real.pi) ^ 2 *
          (1 - eccOf ((zt t).2 0 / (2 * Real.pi)) ((zt t).2 1 / (2 * Real.pi))))
        ((zt t).2 0 ^ 2 / (2 * Real.pi) ^ 2 *
          (1 + eccOf ((zt t).2 0 / (2 * Real.pi)) ((zt t).2 1 / (2 * Real.pi)))) := sorry

end KAM.Iso

namespace KAM.ODE

/-- N3-8 (`PART3-LEAN-DESIGN` Appendix A): the collision-free set and the total field. -/
def restrictedDomain (μ : ℝ) : Set ((Fin 2 → ℝ) × (Fin 2 → ℝ)) :=
  {z | KAM.Iso.CollisionFree μ z}

def restrictedField (μ : ℝ) (z : (Fin 2 → ℝ) × (Fin 2 → ℝ)) : (Fin 2 → ℝ) × (Fin 2 → ℝ) :=
  (![z.2 0 + z.1 1, z.2 1 - z.1 0],
    ![z.2 1, -z.2 0] -
      ((1 - μ) / KAM.Iso.radius (z.1 - KAM.Iso.primary₁ μ) ^ 3) • (z.1 - KAM.Iso.primary₁ μ) -
      (μ / KAM.Iso.radius (z.1 - KAM.Iso.primary₂ μ) ^ 3) • (z.1 - KAM.Iso.primary₂ μ))

theorem restricted_reduction (μ : ℝ) :
    IsOpen (restrictedDomain μ) ∧ ContDiffOn ℝ ∞ (restrictedField μ) (restrictedDomain μ) ∧
    ∀ (J : Set ℝ) (z : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ)),
      KAM.Iso.IsRestrictedSolutionOn μ J z ↔
        IsSolutionIn (restrictedField μ) (restrictedDomain μ) J z := sorry

end KAM.ODE

/-! ## A. Standing data, patches, constants (`KAM/Iso/Confinement/Setting.lean`) -/

namespace KAM.Iso.Confinement

open KAM KAM.ODE

/-- The real vector `x` read in `ℂⁿ` (`ι` of the blueprint); definitionally `realInclusion n x`. -/
abbrev toC {n : ℕ} (x : Fin n → ℝ) : Fin n → ℂ := fun i => (x i : ℂ)

example {n : ℕ} (x : Fin n → ℝ) : toC x = realInclusion n x := rfl

/-- `{I ∈ ℝ² : ι I ∈ B_{r₀}}` (the blueprint's `U`). -/
def realAct (B : Set (Fin 2 → ℝ)) (r₀ : ℝ) : Set (Fin 2 → ℝ) := {I | toC I ∈ actionNbhd B r₀}

/-- `I ↦ Re h(ι I)`, the real part of `h` on real actions (first chart coordinate). -/
def realPart (h : (Fin 2 → ℂ) → ℂ) (I : Fin 2 → ℝ) : ℝ := (h (toC I)).re

/-- `H = h + f` as a function on `ℂ² × ℂ²` (the Hamiltonian of Part 3 and of I-G1). -/
def totalH (h : (Fin 2 → ℂ) → ℂ) (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) :
    (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ := fun z => h z.2 + f z

/-- `ρ_∞ = s/8` with `s = min {s₀, 1}` (`bpI:p3:constants`). -/
def rhoInf (s₀ : ℝ) : ℝ := min s₀ 1 / 8

/-- `𝔇 = T_{s/2} × B_{r₀/2}` (`bpI:p3:constants`). -/
def fractD (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) : Set ((Fin 2 → ℂ) × (Fin 2 → ℂ)) :=
  complexStrip 2 (min s₀ 1 / 2) ×ˢ actionNbhd B (r₀ / 2)

/-- Premises of I-HEAD on `(B, s₀, r₀, h)` that every Part 5 lemma about `H_ℝ` uses. -/
structure BaseData (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) (h : (Fin 2 → ℂ) → ℂ) : Prop where
  hs : 0 < s₀
  hr : 0 < r₀
  holo : DifferentiableOn ℂ h (actionNbhd B r₀)
  real : ∀ I : Fin 2 → ℝ, toC I ∈ actionNbhd B r₀ → (h (toC I)).im = 0

/-- The source premises of I-HEAD on `(B, s₀, r₀, h, B', η)`, verbatim (frozen binders `hB hBb hBne
hs hr hh hhreal hiso hB' hcompact hinside hη`). -/
structure HeadData (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) (h : (Fin 2 → ℂ) → ℂ)
    (B' : Set (Fin 2 → ℝ)) (η : ℝ) : Prop extends BaseData B s₀ r₀ h where
  isOpen : IsOpen B
  bounded : Bornology.IsBounded B
  nonempty : B.Nonempty
  iso : ∀ I : Fin 2 → ℝ, toC I ∈ actionNbhd B r₀ → (borderedHessian h I).det ≠ 0
  isOpen' : IsOpen B'
  compact : IsCompact (closure B')
  inside : closure B' ⊆ B
  hη : 0 < η

/-- The premises of I-HEAD on `(f, ε)` except the smallness `ε < ε₀` (frozen binders: the four
hypotheses on `f`, `0 ≤ ε`, and the bound `‖f z‖ ≤ ε`). -/
structure PerturbData (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ)
    (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ) : Prop where
  holo : DifferentiableOn ℂ f (complexStrip 2 s₀ ×ˢ actionNbhd B r₀)
  periodic : ∀ z ∈ complexStrip 2 s₀ ×ˢ actionNbhd B r₀, ∀ k : Fin 2 → ℤ,
    f (z.1 + (fun i => (k i : ℂ)), z.2) = f z
  real : ∀ θ I : Fin 2 → ℝ, toC I ∈ actionNbhd B r₀ → (f (toC θ, toC I)).im = 0
  nonneg : 0 ≤ ε
  bound : ∀ z ∈ complexStrip 2 s₀ ×ˢ actionNbhd B r₀, ‖f z‖ ≤ ε

/-- A patch of Part 3 (`bpI:p3:patch`, `chart`, `patch-rays`) in the form Part 5 consumes: the
chart `Φ = (hR, m)` on `W`, its inverse `Ψ`, the window `δE, δm, ρc` and the two ray slopes.
TYPING DATA, produced by Part 3's `chartCover_exists`; `hR = realPart h`. -/
structure EnergyPatch (hR : (Fin 2 → ℝ) → ℝ) (B : Set (Fin 2 → ℝ)) (η₁ : ℝ) where
  c : Fin 2 → ℝ
  W : Set (Fin 2 → ℝ)
  m : (Fin 2 → ℝ) → ℝ
  Ψ : ℝ × ℝ → (Fin 2 → ℝ)
  δE : ℝ
  δm : ℝ
  ρc : ℝ
  mPlus : ℝ
  mMinus : ℝ
  δE_pos : 0 < δE
  δm_pos : 0 < δm
  ρc_pos : 0 < ρc
  isOpen_W : IsOpen W
  W_subset_B : W ⊆ B
  W_subset_ball : W ⊆ ball c (η₁ / 4)
  hR_contDiffOn : ContDiffOn ℝ 1 hR W
  m_contDiffOn : ContDiffOn ℝ 1 m W
  isOpen_V : IsOpen ((fun I => (hR I, m I)) '' W)
  Ψ_contDiffOn : ContDiffOn ℝ 1 Ψ ((fun I => (hR I, m I)) '' W)
  Ψ_mem : ∀ v ∈ (fun I => (hR I, m I)) '' W, Ψ v ∈ W
  Ψ_left : ∀ I ∈ W, Ψ (hR I, m I) = I
  Ψ_right : ∀ v ∈ (fun I => (hR I, m I)) '' W, (hR (Ψ v), m (Ψ v)) = v
  Q_subset : Icc (hR c - δE) (hR c + δE) ×ˢ Icc (-δm) δm ⊆ (fun I => (hR I, m I)) '' W
  ρc_le : ρc ≤ η₁ / 4
  ball_subset : ball c ρc ⊆ W
  ball_h : ∀ I ∈ ball c ρc, |hR I - hR c| < δE / 2
  ball_m : ∀ I ∈ ball c ρc, |m I| < δm / 4
  mPlus_mem : mPlus ∈ Ioo (δm / 2) δm
  mMinus_mem : mMinus ∈ Ioo (-δm) (-(δm / 2))

variable {hR : (Fin 2 → ℝ) → ℝ} {B : Set (Fin 2 → ℝ)} {η₁ : ℝ}

/-- `Q = [E_c - δE, E_c + δE] × [-δm, δm]`. -/
def EnergyPatch.Q (p : EnergyPatch hR B η₁) : Set (ℝ × ℝ) :=
  Icc (hR p.c - p.δE) (hR p.c + p.δE) ×ˢ Icc (-p.δm) p.δm

/-- `O = (E_c - δE, E_c + δE) × (-δm, δm)`. -/
def EnergyPatch.O (p : EnergyPatch hR B η₁) : Set (ℝ × ℝ) :=
  Ioo (hR p.c - p.δE) (hR p.c + p.δE) ×ˢ Ioo (-p.δm) p.δm

/-- `Ω = Φ⁻¹(O)` (open, `⊆ W`). -/
def EnergyPatch.Omega (p : EnergyPatch hR B η₁) : Set (Fin 2 → ℝ) :=
  {I | I ∈ p.W ∧ (hR I, p.m I) ∈ p.O}

/-- `𝒦 = Φ⁻¹(Q)` (compact, `⊆ W`). -/
def EnergyPatch.K (p : EnergyPatch hR B η₁) : Set (Fin 2 → ℝ) :=
  {I | I ∈ p.W ∧ (hR I, p.m I) ∈ p.Q}

/-- Patch constants (`bpI:p5:patch-const`): `𝒩 = cthickening r 𝒦`, `L_m`, `L_Φ`, `κ`; chosen
once per patch (`patchConst_exists`). -/
structure PatchConst (p : EnergyPatch hR B η₁) (r Lm LΦ κ : ℝ) : Prop where
  r_pos : 0 < r
  r_le_one : r ≤ 1
  thick_subset : cthickening r p.K ⊆ p.W
  Lm_ge : 1 ≤ Lm
  Lm_bound : ∀ I ∈ cthickening r p.K, ‖fderiv ℝ p.m I‖ ≤ Lm
  LΦ_ge : 1 ≤ LΦ
  LΦ_bound : ∀ v ∈ p.Q, ‖fderiv ℝ p.Ψ v‖ ≤ LΦ
  κ_pos : 0 < κ
  κ_le_quarter : κ ≤ p.δm / 4
  κ_le_plus : κ ≤ p.δm - p.mPlus
  κ_le_minus : κ ≤ p.δm + p.mMinus

/-- The consequences of `ε < ε₀` used downstream (`bpI:p5:eps0`). -/
structure Smallness (p : EnergyPatch hR B η₁) (r Lm LΦ κ F₁ C_K ρinf ε : ℝ) : Prop where
  nonneg : 0 ≤ ε
  le_one : ε ≤ 1
  lt_dE : ε < p.δE / 4
  lt_rho : 8 * C_K * ε < ρinf
  lt_r : C_K * ε < r
  lt_kappa : Lm * C_K * ε < κ
  lt_Phi : 2 * F₁ * LΦ * ε < 1

/-- `Φ⁻¹(Q)` is compact. -/
theorem EnergyPatch.isCompact_K (p : EnergyPatch hR B η₁) : IsCompact p.K := sorry

theorem EnergyPatch.K_eq_image (p : EnergyPatch hR B η₁) : p.K = p.Ψ '' p.Q := sorry

theorem EnergyPatch.isOpen_Omega (p : EnergyPatch hR B η₁) : IsOpen p.Omega := sorry

theorem EnergyPatch.Omega_subset_K (p : EnergyPatch hR B η₁) : p.Omega ⊆ p.K := sorry

/-- `bpI:p5:patch-const`: the constants exist (compactness of `𝒦`, `𝒩`). -/
theorem patchConst_exists (p : EnergyPatch hR B η₁) : ∃ r Lm LΦ κ : ℝ, PatchConst p r Lm LΦ κ := sorry

/-- `bpI:p5:eps0`: `ε₀ := min {ε₁, δE/4, ρinf/(8 C_K), r/C_K, κ/(L_m C_K), 1/(2 F₁ L_Φ)}` over the
finitely many patches, as an existence statement (only positivity and the bounds are used). -/
theorem exists_eps0 {patches : Set (EnergyPatch hR B η₁)} (hfin : patches.Finite)
    {ε₁ C_K F₁ ρinf : ℝ} (h₁ : 0 < ε₁) (h₁' : ε₁ ≤ 1) (hC : 0 < C_K) (hF : 0 < F₁) (hρ : 0 < ρinf) :
    ∃ ε₀ : ℝ, 0 < ε₀ ∧ ε₀ ≤ ε₁ ∧ ∀ p ∈ patches, ∃ r Lm LΦ κ : ℝ, PatchConst p r Lm LΦ κ ∧
      ∀ ε : ℝ, 0 ≤ ε → ε < ε₀ → Smallness p r Lm LΦ κ F₁ C_K ρinf ε := sorry


/-- Phase space `ℝ² × ℝ²` (angles first), with the max norm. -/
abbrev P2 := (Fin 2 → ℝ) × (Fin 2 → ℝ)

/-! ## B. The real Hamiltonian (`KAM/Iso/Confinement/RealHam.lean`, node `bpI:p5:real-ham`) -/

section RealHam

variable {B : Set (Fin 2 → ℝ)} {s₀ r₀ : ℝ} {h : (Fin 2 → ℂ) → ℂ}
  {f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ} {ε : ℝ}

theorem isOpen_realAct (B : Set (Fin 2 → ℝ)) (r₀ : ℝ) : IsOpen (realAct B r₀) := sorry

theorem subset_realAct (hr : 0 < r₀) : B ⊆ realAct B r₀ := sorry

/-- Real points of `T_{s₀} × B_{r₀/2}` over `ℝ² × B` (`s₀, r₀ > 0`): used for `fractD`. -/
theorem toC_pair_mem_fractD (hs : 0 < s₀) (hr : 0 < r₀) (φ : Fin 2 → ℝ) {I : Fin 2 → ℝ}
    (hI : I ∈ B) : (toC φ, toC I) ∈ fractD B s₀ r₀ := sorry

/-- (a) values: `H_ℝ(θ, I) = h(ι I) + f(ι θ, ι I)` on `ℝ² × U`, as complex numbers. -/
theorem realHam_eq (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε) {z : P2}
    (hz : z.2 ∈ realAct B r₀) :
    ((realHamiltonian h f z : ℝ) : ℂ) = h (toC z.2) + f (toC z.1, toC z.2) := sorry

/-- (a) `H_ℝ` is `C^∞` on the open set `ℝ² × U`. -/
theorem realHam_contDiffOn (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε) :
    ContDiffOn ℝ ∞ (realHamiltonian h f) (univ ×ˢ realAct B r₀) := sorry

/-- (a) `ℤ²`-periodicity in the angles. -/
theorem realHam_periodic (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε)
    (k : Fin 2 → ℤ) {z : P2} (hz : z.2 ∈ realAct B r₀) :
    realHamiltonian h f (z + angleShift k) = realHamiltonian h f z := sorry

/-- (b) `X_ℝ(z) = X_H(z)` at real points of `ℝ² × U`, `H = h + f` (identification `ι₂`). -/
theorem realHam_field_eq (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε) {z : P2}
    (hz : z.2 ∈ realAct B r₀) :
    realInclusion₂ 2 (hamiltonianVectorField (realHamiltonian h f) z) =
      hamiltonianVectorFieldℂ (totalH h f) (realInclusion₂ 2 z) := sorry

/-- (c) `X_ℝ` is `C¹` on `W_B = ℝ² × B`. -/
theorem realHam_field_contDiffOn (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε) :
    ContDiffOn ℝ 1 (hamiltonianVectorField (realHamiltonian h f)) (univ ×ˢ B) := sorry

/-- (c) `X_ℝ` is `ℤ²`-periodic in the angles on `W_B`. -/
theorem realHam_field_periodic (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε)
    (k : Fin 2 → ℤ) {z : P2} (hz : z ∈ (univ : Set (Fin 2 → ℝ)) ×ˢ B) :
    hamiltonianVectorField (realHamiltonian h f) (z + angleShift k) =
      hamiltonianVectorField (realHamiltonian h f) z := sorry

/-- (c) `IsHamiltonianSolutionOn H_ℝ B J z ↔ IsSolutionIn X_ℝ W_B J z`, for all `J`, `z`. -/
theorem realHam_solution_iff (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε)
    (J : Set ℝ) (z : ℝ → P2) :
    KAM.Iso.IsHamiltonianSolutionOn (realHamiltonian h f) B J z ↔
      IsSolutionIn (hamiltonianVectorField (realHamiltonian h f)) (univ ×ˢ B) J z := sorry

/-- (d) `|∂_t f(φ, I + t v)|_{t=0} ≤ F₁ ε ‖v‖`, as the operator norm of the real derivative of
`I ↦ Re f(ι φ, ι I)`, for `I ∈ B`; `hD` is the derivative bound of `bpI:p3:hypothesis-d`; `hf` (holomorphy of `f`) is REQUIRED:
without it the total `fderiv` is `0` for non-holomorphic `f` and the bound is false (audit F01). -/
theorem realHam_fderiv_bound (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε) {F₁ : ℝ}
    (hD : ∀ z ∈ fractD B s₀ r₀, ‖fderiv ℂ f z‖ ≤ F₁ * ε) (φ : Fin 2 → ℝ) {I : Fin 2 → ℝ}
    (hI : I ∈ B) :
    DifferentiableAt ℝ (fun x : Fin 2 → ℝ => (f (toC φ, toC x)).re) I ∧
      ‖fderiv ℝ (fun x : Fin 2 → ℝ => (f (toC φ, toC x)).re) I‖ ≤ F₁ * ε := sorry

/-- (e) `|H_ℝ - Re h ∘ ι| ≤ ε` on `ℝ² × U`. -/
theorem realHam_sub_le (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε) {z : P2}
    (hz : z.2 ∈ realAct B r₀) : |realHamiltonian h f z - realPart h z.2| ≤ ε := sorry

/-- Energy conservation along `IsSolutionIn` in `W_B` (`bpN:p3:ham-energy` for `H_ℝ`). -/
theorem realHam_energy_const (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε)
    {J : Set ℝ} (hJ : J.OrdConnected) {z : ℝ → P2}
    (hz : IsSolutionIn (hamiltonianVectorField (realHamiltonian h f)) (univ ×ˢ B) J z) :
    ∀ t ∈ J, ∀ t' ∈ J, realHamiltonian h f (z t) = realHamiltonian h f (z t') := sorry

/-- The uniqueness clause of I-HEAD for `H_ℝ`: two solutions in `B` on `(a, b) ∋ 0` agreeing at
`0` agree (`gen_uniqueness` on `Ioo a b`; no confinement of the competitor). -/
theorem realHam_unique (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε) {a b : ℝ}
    (ha : a < 0) (hb0 : 0 < b) {y z : ℝ → P2} (h0 : y 0 = z 0)
    (hy : KAM.Iso.IsHamiltonianSolutionOn (realHamiltonian h f) B (Ioo a b) y)
    (hz : KAM.Iso.IsHamiltonianSolutionOn (realHamiltonian h f) B (Ioo a b) z) :
    ∀ t ∈ Ioo a b, y t = z t := sorry

end RealHam

/-! ## C. The tori are graphs over all angles (`KAM/Iso/Confinement/Graph.lean`, `bpI:p5:graph`) -/

/-- The output (T1)-(T4) of `bpI:p3:tori` for ONE torus `K = K_±` with base point `I = I_±` and
frequency `ωt = ωt_±`, at energy `E`, for `H = h + f` (`ρ∞ = rhoInf s₀`, `u = (K θ).1 - θ`,
`v = (K θ).2 - ι I`). The position clauses (T5)-(T7) enter through `GraphData` and the patch. -/
structure TorusOutput (h : (Fin 2 → ℂ) → ℂ) (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ)
    (ε C_K s₀ E : ℝ) (K : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)) (I ωt : Fin 2 → ℝ) : Prop where
  holo : DifferentiableOn ℂ K (complexStrip 2 (rhoInf s₀))
  primary : IsPrimaryOnStrip K (rhoInf s₀)
  real : IsRealOnReals K
  invariant : ∀ θ ∈ complexStrip 2 (rhoInf s₀), invarianceError (totalH h f) K ωt θ = 0
  energy : ∀ θ ∈ complexStrip 2 (rhoInf s₀), totalH h f (K θ) = (E : ℂ)
  close : ∀ θ ∈ complexStrip 2 (rhoInf s₀), ‖K θ - (θ, toC I)‖ ≤ C_K * ε
  du : ∀ θ ∈ complexStrip 2 (rhoInf s₀ / 2),
    ‖fderiv ℂ (fun θ => (K θ).1 - θ) θ‖ ≤ 4 * C_K * ε / rhoInf s₀
  dv : ∀ θ ∈ complexStrip 2 (rhoInf s₀ / 2),
    ‖fderiv ℂ (fun θ => (K θ).2 - toC I) θ‖ ≤ 4 * C_K * ε / rhoInf s₀

section Graph

variable {B : Set (Fin 2 → ℝ)} {s₀ r₀ : ℝ} {h : (Fin 2 → ℂ) → ℂ}
  {f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ} {ε C_K E : ℝ} {K : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)}
  {I ωt : Fin 2 → ℝ}

/-- (a), contraction: `θ ↦ (k θ).1 - θ` is `½`-Lipschitz on `ℝ²` (`8 C_K ε < ρ∞`), `k = Re K ι`. -/
theorem torus_phase_sub_lipschitz (hs : 0 < s₀) (hε : 0 ≤ ε) (hsm : 8 * C_K * ε < rhoInf s₀)
    (hC : 0 < C_K) (T : TorusOutput h f ε C_K s₀ E K I ωt) :
    LipschitzWith (1 / 2 : ℝ≥0) (fun θ : Fin 2 → ℝ => (realRestriction K θ).1 - θ) := sorry

/-- (a) `Ψ = θ ↦ θ + u(θ)` is a bijection of `ℝ²` with `‖Ψθ - Ψθ'‖ ≥ ½‖θ - θ'‖`. -/
theorem torus_phase_bijective (hs : 0 < s₀) (hε : 0 ≤ ε) (hsm : 8 * C_K * ε < rhoInf s₀)
    (hC : 0 < C_K) (T : TorusOutput h f ε C_K s₀ E K I ωt) :
    Function.Bijective (fun θ : Fin 2 → ℝ => (realRestriction K θ).1) ∧
      ∀ θ θ' : Fin 2 → ℝ, ‖θ - θ'‖ / 2 ≤
        ‖(realRestriction K θ).1 - (realRestriction K θ').1‖ := sorry

/-- (a) `Ψ⁻¹` exists and is `2`-Lipschitz (in particular continuous). -/
theorem torus_phase_inv (hs : 0 < s₀) (hε : 0 ≤ ε) (hsm : 8 * C_K * ε < rhoInf s₀)
    (hC : 0 < C_K) (T : TorusOutput h f ε C_K s₀ E K I ωt) :
    ∃ Ψinv : (Fin 2 → ℝ) → (Fin 2 → ℝ),
      Function.LeftInverse Ψinv (fun θ => (realRestriction K θ).1) ∧
      Function.RightInverse Ψinv (fun θ => (realRestriction K θ).1) ∧ LipschitzWith 2 Ψinv := sorry

/-- (b), (c, energy): `𝒯 = k(ℝ²)` is the graph of a continuous `Y` with `‖Y - I‖ ≤ C_K ε`, and
`H_ℝ(φ, Y φ) = E`. -/
theorem torus_graph (hs : 0 < s₀) (hε : 0 ≤ ε) (hsm : 8 * C_K * ε < rhoInf s₀) (hC : 0 < C_K)
    (T : TorusOutput h f ε C_K s₀ E K I ωt) :
    ∃ Y : (Fin 2 → ℝ) → (Fin 2 → ℝ), Continuous Y ∧ (∀ φ, ‖Y φ - I‖ ≤ C_K * ε) ∧
      range (realRestriction K) = {z : P2 | z.2 = Y z.1} ∧
      ∀ φ, realHamiltonian h f (φ, Y φ) = E := sorry

/-- (c, position): if the base point is in `𝒦` and `C_K ε ≤ r` then `Y φ ∈ 𝒩 = cthickening r 𝒦
⊆ W ⊆ B`. -/
theorem torus_graph_mem {η₁ : ℝ} (p : EnergyPatch (realPart h) B η₁) {r Lm LΦ κ : ℝ}
    (pc : PatchConst p r Lm LΦ κ) {Y : (Fin 2 → ℝ) → (Fin 2 → ℝ)}
    (hY : ∀ φ, ‖Y φ - I‖ ≤ C_K * ε) (hI : I ∈ p.K) (hCr : C_K * ε ≤ r) (φ : Fin 2 → ℝ) :
    Y φ ∈ cthickening r p.K ∧ Y φ ∈ p.W ∧ Y φ ∈ B := sorry

/-- (c, energy window): `|h(Y φ) - E| ≤ ε` (needs `Y φ ∈ ℝ² ∩ B_{r₀}`). -/
theorem torus_graph_energy_close (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε)
    {Y : (Fin 2 → ℝ) → (Fin 2 → ℝ)} (hE : ∀ φ, realHamiltonian h f (φ, Y φ) = E)
    {φ : Fin 2 → ℝ} (hY : Y φ ∈ realAct B r₀) : |realPart h (Y φ) - E| ≤ ε := sorry

end Graph

/-! ## D. Invariance of the tori (`KAM/Iso/Confinement/Invariance.lean`, `bpI:p5:invariance`) -/

section Invariance

variable {B : Set (Fin 2 → ℝ)} {s₀ r₀ : ℝ} {h : (Fin 2 → ℂ) → ℂ}
  {f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ} {ε C_K E : ℝ} {K : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)}
  {I ωt : Fin 2 → ℝ}

/-- Step `inv-sol`: `t ↦ k(θ₁ + t ωt)` is a solution of `X_ℝ` in `W_B` on all of `ℝ`, if the torus
has actions in `B`. -/
theorem torus_flow (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε)
    (T : TorusOutput h f ε C_K s₀ E K I ωt) (hmem : ∀ θ, (realRestriction K θ).2 ∈ B)
    (θ₁ : Fin 2 → ℝ) :
    IsSolutionIn (hamiltonianVectorField (realHamiltonian h f)) (univ ×ˢ B) univ
      (fun t : ℝ => realRestriction K (θ₁ + t • ωt)) := sorry

/-- `bpI:p5:invariance`: `𝒯 ⊆ W_B` and `𝒯` is invariant for `(X_ℝ, W_B)`; `hmem` is the output of
`torus_graph_mem`. -/
theorem torus_invariant (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε)
    (T : TorusOutput h f ε C_K s₀ E K I ωt) (hmem : ∀ θ, (realRestriction K θ).2 ∈ B) :
    range (realRestriction K) ⊆ univ ×ˢ B ∧
      IsInvariantSet (hamiltonianVectorField (realHamiltonian h f)) (univ ×ˢ B)
        (range (realRestriction K)) := sorry

end Invariance

/-! ## E. The energy coordinate (`KAM/Iso/Confinement/EnergyCoordinate.lean`, `bpI:p5:energy-coordinate`) -/

section EnergyCoordinate

variable {B : Set (Fin 2 → ℝ)} {s₀ r₀ : ℝ} {h : (Fin 2 → ℂ) → ℂ}
  {f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ} {ε : ℝ} {η₁ : ℝ}

/-- `bpI:p5:energy-coordinate`: on `Q`, over a fixed slope `m`, `H_ℝ(φ, Φ⁻¹(·, m))` is injective
(`ε ≤ min {1, 1/(2 F₁ L_Φ)}`, here through `Smallness`). -/
theorem energy_coordinate (hb : BaseData B s₀ r₀ h) (hf : PerturbData B s₀ r₀ f ε)
    (p : EnergyPatch (realPart h) B η₁) {r Lm LΦ κ F₁ C_K : ℝ} (pc : PatchConst p r Lm LΦ κ)
    (hsm : Smallness p r Lm LΦ κ F₁ C_K (rhoInf s₀) ε)
    (hD : ∀ z ∈ fractD B s₀ r₀, ‖fderiv ℂ f z‖ ≤ F₁ * ε) (φ : Fin 2 → ℝ) {e₁ e₂ m : ℝ}
    (h₁ : (e₁, m) ∈ p.Q) (h₂ : (e₂, m) ∈ p.Q)
    (heq : realHamiltonian h f (φ, p.Ψ (e₁, m)) = realHamiltonian h f (φ, p.Ψ (e₂, m))) :
    p.Ψ (e₁, m) = p.Ψ (e₂, m) := sorry

end EnergyCoordinate

/-! ## F. Position of the graphs in the chart (`KAM/Iso/Confinement/Position.lean`, `bpI:p5:mu`) -/

/-- Typing data for one torus graph (conclusions (b), (c) of the graph lemma and the position of
its base point in the patch). `Cε = C_K ε`. -/
structure GraphData {hR : (Fin 2 → ℝ) → ℝ} {B : Set (Fin 2 → ℝ)} {η₁ : ℝ}
    (p : EnergyPatch hR B η₁) (H : P2 → ℝ) (E Cε : ℝ) (Y : (Fin 2 → ℝ) → (Fin 2 → ℝ))
    (I : Fin 2 → ℝ) (mσ : ℝ) : Prop where
  continuous : Continuous Y
  near : ∀ φ, ‖Y φ - I‖ ≤ Cε
  energy : ∀ φ, H (φ, Y φ) = E
  base_mem : I ∈ p.K
  base_slope : p.m I = mσ

section Position

variable {hR : (Fin 2 → ℝ) → ℝ} {B : Set (Fin 2 → ℝ)} {η₁ : ℝ}

/-- `bpI:p5:mu`, Lipschitz comparison: `|m(Y φ) - m_σ| ≤ L_m C_K ε`. -/
theorem slope_close (p : EnergyPatch hR B η₁) {r Lm LΦ κ : ℝ} (pc : PatchConst p r Lm LΦ κ)
    {H : P2 → ℝ} {E Cε : ℝ} {Y : (Fin 2 → ℝ) → (Fin 2 → ℝ)} {I : Fin 2 → ℝ} {mσ : ℝ}
    (G : GraphData p H E Cε Y I mσ) (hCr : Cε ≤ r) (φ : Fin 2 → ℝ) :
    |p.m (Y φ) - mσ| ≤ Lm * Cε := sorry

/-- `bpI:p5:mu`, ordering, `+` torus: `δm/4 < m(Y₊ φ) < δm`. -/
theorem slope_window_plus (p : EnergyPatch hR B η₁) {r Lm LΦ κ F₁ C_K ε ρinf : ℝ}
    (pc : PatchConst p r Lm LΦ κ) (hsm : Smallness p r Lm LΦ κ F₁ C_K ρinf ε)
    {H : P2 → ℝ} {E : ℝ} {Y : (Fin 2 → ℝ) → (Fin 2 → ℝ)} {I : Fin 2 → ℝ}
    (G : GraphData p H E (C_K * ε) Y I p.mPlus) (φ : Fin 2 → ℝ) :
    p.δm / 4 < p.m (Y φ) ∧ p.m (Y φ) < p.δm := sorry

/-- `bpI:p5:mu`, ordering, `-` torus: `-δm < m(Y₋ φ) < -δm/4`. -/
theorem slope_window_minus (p : EnergyPatch hR B η₁) {r Lm LΦ κ F₁ C_K ε ρinf : ℝ}
    (pc : PatchConst p r Lm LΦ κ) (hsm : Smallness p r Lm LΦ κ F₁ C_K ρinf ε)
    {H : P2 → ℝ} {E : ℝ} {Y : (Fin 2 → ℝ) → (Fin 2 → ℝ)} {I : Fin 2 → ℝ}
    (G : GraphData p H E (C_K * ε) Y I p.mMinus) (φ : Fin 2 → ℝ) :
    -p.δm < p.m (Y φ) ∧ p.m (Y φ) < -(p.δm / 4) := sorry

/-- `bpI:p5:mu`, continuity: `μ = m ∘ Y` is continuous (`Y φ ∈ 𝒩 ⊆ W`, `m` continuous on `W`). -/
theorem slope_continuous (p : EnergyPatch hR B η₁) {r Lm LΦ κ : ℝ} (pc : PatchConst p r Lm LΦ κ)
    {H : P2 → ℝ} {E Cε : ℝ} {Y : (Fin 2 → ℝ) → (Fin 2 → ℝ)} {I : Fin 2 → ℝ} {mσ : ℝ}
    (G : GraphData p H E Cε Y I mσ) (hCr : Cε ≤ r) :
    Continuous (fun φ => p.m (Y φ)) := sorry

end Position


/-! ## G. Separation (`KAM/Iso/Confinement/Separation.lean`, `bpI:p5:separation`) -/

/-- Standing data of `§sec-sep`, the blueprint's "keep the notation of `§graph`": the typing data
of one patch, its constants, the smallness, and the two torus graphs `Y₊, Y₋` (base points
`I₊, I₋`) at energy `E`. Prop-structure; assembled in `confinement_main_of_tori` from
`torus_graph`, `torus_graph_mem`, the patch and `ToriExistence`; never produced by a theorem of
this section. -/
structure SepSetting (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) (h : (Fin 2 → ℂ) → ℂ)
    (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε η₁ F₁ C_K : ℝ)
    (p : EnergyPatch (realPart h) B η₁) (r Lm LΦ κ E : ℝ)
    (Yp Ym : (Fin 2 → ℝ) → (Fin 2 → ℝ)) (Ip Im : Fin 2 → ℝ) : Prop where
  base : BaseData B s₀ r₀ h
  perturb : PerturbData B s₀ r₀ f ε
  dbound : ∀ z ∈ fractD B s₀ r₀, ‖fderiv ℂ f z‖ ≤ F₁ * ε
  pconst : PatchConst p r Lm LΦ κ
  small : Smallness p r Lm LΦ κ F₁ C_K (rhoInf s₀) ε
  plus : GraphData p (realHamiltonian h f) E (C_K * ε) Yp Ip p.mPlus
  minus : GraphData p (realHamiltonian h f) E (C_K * ε) Ym Im p.mMinus

/-- `𝒯 = {(φ, Y φ)}`. -/
def graphSet (Y : (Fin 2 → ℝ) → (Fin 2 → ℝ)) : Set P2 := {z | z.2 = Y z.1}

/-- `G = {H_ℝ = E}`. -/
def levelSet (H : P2 → ℝ) (E : ℝ) : Set P2 := {z | H z = E}

/-- `𝒱 = {(φ, I) : I ∈ Ω, μ₋(φ) < m(I) < μ₊(φ)}`, `μ_± = m ∘ Y_±`. -/
def sepRegion {hR : (Fin 2 → ℝ) → ℝ} {B : Set (Fin 2 → ℝ)} {η₁ : ℝ} (p : EnergyPatch hR B η₁)
    (Yp Ym : (Fin 2 → ℝ) → (Fin 2 → ℝ)) : Set P2 :=
  {z | z.2 ∈ p.Omega ∧ p.m (Ym z.1) < p.m z.2 ∧ p.m z.2 < p.m (Yp z.1)}

section Separation

variable {B : Set (Fin 2 → ℝ)} {s₀ r₀ : ℝ} {h : (Fin 2 → ℂ) → ℂ}
  {f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ} {ε η₁ F₁ C_K : ℝ} {p : EnergyPatch (realPart h) B η₁}
  {r Lm LΦ κ E : ℝ} {Yp Ym : (Fin 2 → ℝ) → (Fin 2 → ℝ)} {Ip Im : Fin 2 → ℝ}

/-- (a), openness (step `sp-open`). -/
theorem separation_isOpen (S : SepSetting B s₀ r₀ h f ε η₁ F₁ C_K p r Lm LΦ κ E Yp Ym Ip Im) :
    IsOpen (sepRegion p Yp Ym) := sorry

/-- (a), the initial point (step `sp-init`): `‖I₀ - c‖ < ρc ⇒ z₀ ∈ 𝒱 ∖ (𝒯₊ ∪ 𝒯₋)`. -/
theorem separation_init (S : SepSetting B s₀ r₀ h f ε η₁ F₁ C_K p r Lm LΦ κ E Yp Ym Ip Im)
    {z₀ : P2} (hz₀ : ‖z₀.2 - p.c‖ < p.ρc) :
    z₀ ∈ sepRegion p Yp Ym ∧ z₀ ∉ graphSet Yp ∪ graphSet Ym := sorry

/-- (b), closure (step `sp-closure`): `closure 𝒱 ⊆ ℝ² × 𝒦`. -/
theorem separation_closure (S : SepSetting B s₀ r₀ h f ε η₁ F₁ C_K p r Lm LΦ κ E Yp Ym Ip Im) :
    closure (sepRegion p Yp Ym) ⊆ univ ×ˢ p.K := sorry

/-- (b), energy window (step `sp-window`): `E = H_ℝ(z₀)`, `‖I₀ - c‖ < ρc`; on the level set,
`I ∈ 𝒦 ⇒ |h(I) - E_c| < δE`. -/
theorem separation_window (S : SepSetting B s₀ r₀ h f ε η₁ F₁ C_K p r Lm LΦ κ E Yp Ym Ip Im)
    {z₀ : P2} (hz₀ : ‖z₀.2 - p.c‖ < p.ρc) (hE : E = realHamiltonian h f z₀) :
    ∀ z ∈ levelSet (realHamiltonian h f) E, z.2 ∈ p.K →
      |realPart h z.2 - realPart h p.c| < p.δE := sorry

/-- (b), boundary on the level (step `sp-bdry`): `∂𝒱 ∩ G ⊆ 𝒯₊ ∪ 𝒯₋`. -/
theorem separation_boundary (S : SepSetting B s₀ r₀ h f ε η₁ F₁ C_K p r Lm LΦ κ E Yp Ym Ip Im)
    {z₀ : P2} (hz₀ : ‖z₀.2 - p.c‖ < p.ρc) (hE : E = realHamiltonian h f z₀) :
    frontier (sepRegion p Yp Ym) ∩ levelSet (realHamiltonian h f) E ⊆
      graphSet Yp ∪ graphSet Ym := sorry

/-- (c), the barrier, CONDITIONAL HELPER (distinct name; audit F03): `hinv` is a produced fact.
The source-facing `separation_confined` below derives it. The barrier (step `sp-barrier`): a solution of `X_ℝ` in `W_B` on an interval `J ∋ 0`
through `z₀` stays in `𝒱`. `hinv` is Lemma `invariance` for `𝒯₊ ∪ 𝒯₋` (`range k_± = graphSet Y_±`,
`isInvariantSet_union`). -/
theorem separation_confined_of_invariant (S : SepSetting B s₀ r₀ h f ε η₁ F₁ C_K p r Lm LΦ κ E Yp Ym Ip Im)
    {z₀ : P2} (hz₀ : ‖z₀.2 - p.c‖ < p.ρc) (hE : E = realHamiltonian h f z₀)
    (hinv : IsInvariantSet (hamiltonianVectorField (realHamiltonian h f)) (univ ×ˢ B)
      (graphSet Yp ∪ graphSet Ym))
    {J : Set ℝ} (hJ : J.OrdConnected) (h0 : (0 : ℝ) ∈ J) {z : ℝ → P2}
    (hz : IsSolutionIn (hamiltonianVectorField (realHamiltonian h f)) (univ ×ˢ B) J z)
    (hz0 : z 0 = z₀) : ∀ t ∈ J, z t ∈ sepRegion p Yp Ym := sorry

/-- (c), SOURCE-FACING (`bpI:p5:separation` (c)): premises are the named output of Part 3
(`TorusOutput` for both tori) and the graph identifications `𝒯_± = graph Y_±` of `§sec-graph`;
`𝒯₊ ∪ 𝒯₋` invariance is derived inside (`torus_invariant` twice, `isInvariantSet_union`), with
`(k θ).2 ∈ B` recovered from `GraphData.near`, `base_mem`, `PatchConst.thick_subset`, `Smallness.lt_r`. -/
theorem separation_confined (S : SepSetting B s₀ r₀ h f ε η₁ F₁ C_K p r Lm LΦ κ E Yp Ym Ip Im)
    {Kp Km : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)} {ωp ωm : Fin 2 → ℝ}
    (Tp : TorusOutput h f ε C_K s₀ E Kp Ip ωp) (Tm : TorusOutput h f ε C_K s₀ E Km Im ωm)
    (hgp : Set.range (realRestriction Kp) = graphSet Yp)
    (hgm : Set.range (realRestriction Km) = graphSet Ym)
    {z₀ : P2} (hz₀ : ‖z₀.2 - p.c‖ < p.ρc) (hE : E = realHamiltonian h f z₀)
    {J : Set ℝ} (hJ : J.OrdConnected) (h0 : (0 : ℝ) ∈ J) {z : ℝ → P2}
    (hz : IsSolutionIn (hamiltonianVectorField (realHamiltonian h f)) (univ ×ˢ B) J z)
    (hz0 : z 0 = z₀) : ∀ t ∈ J, z t ∈ sepRegion p Yp Ym := sorry

end Separation

/-! ## H. Confinement and global existence (`KAM/Iso/Confinement/Confinement.lean`, `bpI:p5:confinement`) -/

section Confinement

variable {B : Set (Fin 2 → ℝ)} {s₀ r₀ : ℝ} {h : (Fin 2 → ℂ) → ℂ}
  {f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ} {ε η₁ F₁ C_K : ℝ} {p : EnergyPatch (realPart h) B η₁}
  {r Lm LΦ κ E : ℝ} {Yp Ym : (Fin 2 → ℝ) → (Fin 2 → ℝ)} {Ip Im : Fin 2 → ℝ}

/-- `bpI:p5:confinement`: for the maximal solution `z` of `ż = X_ℝ(z)` in `W_B` through `z₀`
(`IsMaximalSolution`, a source premise), `T_± = ±∞`, `z(t) ∈ 𝒱`, `z(t)₂ ∈ 𝒦`, and
`‖z(t)₂ - I₀‖ < η₁/2`. -/
theorem confinement_prop_of_invariant (S : SepSetting B s₀ r₀ h f ε η₁ F₁ C_K p r Lm LΦ κ E Yp Ym Ip Im)
    (hB : IsOpen B) {z₀ : P2} (hz₀ : ‖z₀.2 - p.c‖ < p.ρc) (hE : E = realHamiltonian h f z₀)
    (hinv : IsInvariantSet (hamiltonianVectorField (realHamiltonian h f)) (univ ×ˢ B)
      (graphSet Yp ∪ graphSet Ym))
    {Tm Tp : EReal} {z : ℝ → P2}
    (hz : IsMaximalSolution (hamiltonianVectorField (realHamiltonian h f)) (univ ×ˢ B) z₀ Tm Tp z) :
    Tm = ⊥ ∧ Tp = ⊤ ∧ (∀ t, z t ∈ sepRegion p Yp Ym) ∧ (∀ t, (z t).2 ∈ p.K) ∧
      ∀ t, ‖(z t).2 - z₀.2‖ < η₁ / 2 := sorry

/-- SOURCE-FACING `bpI:p5:confinement` (audit F03): as `confinement_prop_of_invariant`, with the
named Part 3 output and the graph identifications instead of `hinv`. -/
theorem confinement_prop (S : SepSetting B s₀ r₀ h f ε η₁ F₁ C_K p r Lm LΦ κ E Yp Ym Ip Im)
    {Kp Km : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)} {ωp ωm : Fin 2 → ℝ}
    (Tp : TorusOutput h f ε C_K s₀ E Kp Ip ωp) (Tm : TorusOutput h f ε C_K s₀ E Km Im ωm)
    (hgp : Set.range (realRestriction Kp) = graphSet Yp)
    (hgm : Set.range (realRestriction Km) = graphSet Ym)
    (hB : IsOpen B) {z₀ : P2} (hz₀ : ‖z₀.2 - p.c‖ < p.ρc)
    (hE : E = realHamiltonian h f z₀) {Tm' Tp' : EReal} {z : ℝ → P2}
    (hz : IsMaximalSolution (hamiltonianVectorField (realHamiltonian h f)) (univ ×ˢ B) z₀ Tm' Tp' z) :
    Tm' = ⊥ ∧ Tp' = ⊤ ∧ (∀ t, z t ∈ sepRegion p Yp Ym) ∧ (∀ t, (z t).2 ∈ p.K) ∧
      ∀ t, ‖(z t).2 - z₀.2‖ < η₁ / 2 := sorry

end Confinement

/-! ## I. Interface to Part 3 (structures in `KAM/Iso/Confinement/Setting.lean`; the theorem `part3_tori` is OWNED BY THE PART 3 DESIGN)

`ChartCover` is the non-I-G1 output of Part 3 (`bpI:p3:cover`, `patch-rays`, `hypothesis-d`);
`ToriExistence` is `bpI:p3:tori`. They are standing structures here: Part 5 consumes them and
never produces them. -/

section Interface

variable {B : Set (Fin 2 → ℝ)} {s₀ r₀ : ℝ} {h : (Fin 2 → ℂ) → ℂ} {B' : Set (Fin 2 → ℝ)} {η : ℝ}

/-- Finite chart cover of `closure B'` by patches of `§p3:sec-charts`, the slope data of the rays,
and the derivative constant `F₁` of `bpI:p3:hypothesis-d`. -/
structure ChartCover (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) (h : (Fin 2 → ℂ) → ℂ)
    (B' : Set (Fin 2 → ℝ)) (η η₁ F₁ : ℝ) (patches : Set (EnergyPatch (realPart h) B η₁)) :
    Prop where
  finite : patches.Finite
  cover : closure B' ⊆ ⋃ p ∈ patches, ball p.c p.ρc
  η₁_pos : 0 < η₁
  η₁_le : η₁ ≤ η
  F₁_pos : 0 < F₁
  dbound : ∀ (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ), PerturbData B s₀ r₀ f ε → ε ≤ 1 →
    ∀ z ∈ fractD B s₀ r₀, ‖fderiv ℂ f z‖ ≤ F₁ * ε

/-- `bpI:p3:tori` for every `f, ε < ε₁`, `I₀ ∈ closure B'`, `E` with `|E - h(I₀)| ≤ ε`: a patch
`j` with `‖I₀ - c_j‖ < ρ_j` and the two tori of (T1)-(T4), with base points
`I_± = Φ_j⁻¹(E, m_±)` (T7). WAITS FOR THE SEAL OF I-G1 (`KAM.Iso.isoenergetic_kam`). -/
structure ToriExistence (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) (h : (Fin 2 → ℂ) → ℂ)
    (B' : Set (Fin 2 → ℝ)) (η₁ : ℝ) (patches : Set (EnergyPatch (realPart h) B η₁))
    (ε₁ C_K : ℝ) : Prop where
  ε₁_pos : 0 < ε₁
  ε₁_le_one : ε₁ ≤ 1
  CK_pos : 0 < C_K
  tori : ∀ (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ), PerturbData B s₀ r₀ f ε → ε < ε₁ →
    ∀ I₀ ∈ closure B', ∀ E : ℝ, |E - realPart h I₀| ≤ ε →
      ∃ p ∈ patches, ‖I₀ - p.c‖ < p.ρc ∧
        ∃ (Kp Km : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)) (Ip Im ωp ωm : Fin 2 → ℝ),
          TorusOutput h f ε C_K s₀ E Kp Ip ωp ∧ Ip = p.Ψ (E, p.mPlus) ∧
          TorusOutput h f ε C_K s₀ E Km Im ωm ∧ Im = p.Ψ (E, p.mMinus)

/-- PART 3, joint statement (`bpI:p3:cover`, `patch-rays`, `uniform`, `tori`): the chart cover and
the uniform tori exist for non-empty `B'`. The Part 3 design factors the proof; the part giving
`ChartCover` (rays by G3, sealed) is provable now, the part giving `ToriExistence` waits for the
seal of I-G1. -/
theorem part3_tori (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty) :
    ∃ (η₁ F₁ : ℝ) (patches : Set (EnergyPatch (realPart h) B η₁)) (ε₁ C_K : ℝ),
      ChartCover B s₀ r₀ h B' η η₁ F₁ patches ∧ ToriExistence B s₀ r₀ h B' η₁ patches ε₁ C_K := sorry

end Interface

/-! ## J. Assembly (`KAM/Iso/Confinement/Main.lean`), then the provider (section P) -/

section Main

variable {B : Set (Fin 2 → ℝ)} {s₀ r₀ : ℝ} {h : (Fin 2 → ℂ) → ℂ} {B' : Set (Fin 2 → ℝ)} {η : ℝ}

/-- `bpI:p5:hd-eps`, `hd-fix`, `hd-sol`, `hd-uniq`, from the Part 3 standing data. The conditional
helper of the quarantine: it assumes the OUTPUT STRUCTURES of Part 3 (`ChartCover`,
`ToriExistence`), distinct names, never standing in for a source result; provable now. -/
theorem confinement_main_of_tori (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty)
    {η₁ F₁ ε₁ C_K : ℝ} {patches : Set (EnergyPatch (realPart h) B η₁)}
    (hcov : ChartCover B s₀ r₀ h B' η η₁ F₁ patches)
    (htor : ToriExistence B s₀ r₀ h B' η₁ patches ε₁ C_K) :
    ∃ ε₀ : ℝ, 0 < ε₀ ∧
      ∀ (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ), PerturbData B s₀ r₀ f ε → ε < ε₀ →
        ∀ z₀ : P2, z₀.2 ∈ B' →
          ∃ z : ℝ → P2, z 0 = z₀ ∧
            KAM.Iso.IsHamiltonianSolutionOn (realHamiltonian h f) B univ z ∧
            (∀ t : ℝ, ‖(z t).2 - z₀.2‖ < η) ∧
            ∀ (a b : ℝ) (y : ℝ → P2), a < 0 → 0 < b → y 0 = z₀ →
              KAM.Iso.IsHamiltonianSolutionOn (realHamiltonian h f) B (Ioo a b) y →
              ∀ t ∈ Ioo a b, y t = z t := sorry

/-- The Part 5 theorem (internal form of I-HEAD): from `HeadData`, via `part3_tori`
(WAITS FOR THE SEAL OF I-G1) and `confinement_main_of_tori`; `B' = ∅` is vacuous (`ε₀ = 1`).
LIVES IN THE PROVIDER MODULE `KAM/Provider/Iso/AllTimeConfinement.lean` (about 25 lines), the
only module that imports Part 3's final module; it is not part of `KAM/Iso/Confinement/Main.lean`. -/
theorem confinement_main (hd : HeadData B s₀ r₀ h B' η) :
    ∃ ε₀ : ℝ, 0 < ε₀ ∧
      ∀ (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ), PerturbData B s₀ r₀ f ε → ε < ε₀ →
        ∀ z₀ : P2, z₀.2 ∈ B' →
          ∃ z : ℝ → P2, z 0 = z₀ ∧
            KAM.Iso.IsHamiltonianSolutionOn (realHamiltonian h f) B univ z ∧
            (∀ t : ℝ, ‖(z t).2 - z₀.2‖ < η) ∧
            ∀ (a b : ℝ) (y : ℝ → P2), a < 0 → 0 < b → y 0 = z₀ →
              KAM.Iso.IsHamiltonianSolutionOn (realHamiltonian h f) B (Ioo a b) y →
              ∀ t ∈ Ioo a b, y t = z t := sorry

end Main

end KAM.Iso.Confinement

/-! ## K. Collision exclusion (`KAM/Iso/Collision.lean`, `bpI:p8:collision-exclusion`,
`shell-exclusion`, `min-distance`; shared with tracks N and P) -/

namespace KAM.Iso.Collision

open KAM.Iso

/-- `radius` is a length: the plane-length helpers of `KAM.Kepler.Plane` (proved on `inp`) via
`radius_eq_planeLength` (`rfl`). `radius` is NOT the ambient sup norm of `Fin 2 → ℝ`. -/
theorem radius_add_le (u v : Fin 2 → ℝ) : radius (u + v) ≤ radius u + radius v :=
  KAM.Kepler.planeLength_add_le u v

theorem radius_neg (u : Fin 2 → ℝ) : radius (-u) = radius u := KAM.Kepler.planeLength_neg u

theorem radius_eq_zero_iff (u : Fin 2 → ℝ) : radius u = 0 ↔ u = 0 :=
  KAM.Kepler.planeLength_eq_zero_iff

theorem radius_nonneg (u : Fin 2 → ℝ) : 0 ≤ radius u := Real.sqrt_nonneg _

theorem continuous_radius : Continuous radius := sorry

/-- The threshold `μ_*` of `bpI:p8:collision-exclusion` (a): `μ₁` if `c = 0`, else `min {μ₁, δ/(2c)}`. -/
def exclusionMu (c μ₁ δ : ℝ) : ℝ := if c = 0 then μ₁ else min μ₁ (δ / (2 * c))

theorem exclusionMu_pos {c μ₁ δ : ℝ} (hc : 0 ≤ c) (hμ₁ : 0 < μ₁) (hδ : 0 < δ) :
    0 < exclusionMu c μ₁ δ := sorry

/-- (a), quantitative form, for an abstract length `ℓ` (subadditive, even) on an abelian group:
for `S` with `ℓ(q - x_j) ≥ δ`, all `|μ| ≤ μ_*`: `ℓ(q - y_j(μ)) ≥ δ/2`. -/
theorem collision_exclusion_quant {X : Type*} [AddCommGroup X] (ℓ : X → ℝ)
    (htri : ∀ u v, ℓ (u + v) ≤ ℓ u + ℓ v) (hneg : ∀ u, ℓ (-u) = ℓ u) {m : ℕ} (x : Fin m → X)
    {c μ₁ : ℝ} (hc : 0 ≤ c) (hμ₁ : 0 < μ₁) (y : Fin m → ℝ → X)
    (hy : ∀ j μ, |μ| ≤ μ₁ → ℓ (y j μ - x j) ≤ c * |μ|) {S : Set X} {δ : ℝ} (hδ : 0 < δ)
    (hS : ∀ q ∈ S, ∀ j, δ ≤ ℓ (q - x j)) :
    ∀ μ : ℝ, |μ| ≤ exclusionMu c μ₁ δ → ∀ q ∈ S, ∀ j, δ / 2 ≤ ℓ (q - y j μ) := sorry

/-- (b), compact sets: `x_j ∉ S`, `S` compact, `ℓ` continuous and definite: there is `δ_S > 0`
(any `δ_S = 1` if `S = ∅` or `m = 0`) with `ℓ(q - x_j) ≥ δ_S` and the conclusion of (a). -/
theorem collision_exclusion_compact {X : Type*} [AddCommGroup X] [TopologicalSpace X]
    [IsTopologicalAddGroup X] (ℓ : X → ℝ) (htri : ∀ u v, ℓ (u + v) ≤ ℓ u + ℓ v)
    (hneg : ∀ u, ℓ (-u) = ℓ u) (hcont : Continuous ℓ) (hnonneg : ∀ u, 0 ≤ ℓ u)
    (hzero : ∀ u, ℓ u = 0 → u = 0)
    {m : ℕ} (x : Fin m → X) {c μ₁ : ℝ} (hc : 0 ≤ c) (hμ₁ : 0 < μ₁) (y : Fin m → ℝ → X)
    (hy : ∀ j μ, |μ| ≤ μ₁ → ℓ (y j μ - x j) ≤ c * |μ|) {S : Set X} (hS : IsCompact S)
    (hxS : ∀ j, x j ∉ S) :
    ∃ δ : ℝ, 0 < δ ∧ (∀ q ∈ S, ∀ j, δ ≤ ℓ (q - x j)) ∧
      ∀ μ : ℝ, |μ| ≤ exclusionMu c μ₁ δ → ∀ q ∈ S, ∀ j, δ / 2 ≤ ℓ (q - y j μ) := sorry

/-- `bpI:p8:shell-exclusion`: for `r_min ≤ rad q ≤ ρ_max < 1` and `|μ| ≤ ν₀/2`,
`ν₀ = min {r_min, 1 - ρ_max}`: `rad(q - a_j(μ)) ≥ ν₀/2`, `j = 1, 2`; hence collision free. -/
theorem shell_exclusion {rmin ρmax : ℝ} (h0 : 0 < rmin) (h1 : rmin ≤ ρmax) (h2 : ρmax < 1)
    {μ : ℝ} (hμ : |μ| ≤ min rmin (1 - ρmax) / 2) {q : Fin 2 → ℝ}
    (hq : rmin ≤ radius q ∧ radius q ≤ ρmax) :
    min rmin (1 - ρmax) / 2 ≤ radius (q - primary₁ μ) ∧
      min rmin (1 - ρmax) / 2 ≤ radius (q - primary₂ μ) := sorry

theorem shell_collisionFree {rmin ρmax : ℝ} (h0 : 0 < rmin) (h1 : rmin ≤ ρmax) (h2 : ρmax < 1)
    {μ : ℝ} (hμ : |μ| ≤ min rmin (1 - ρmax) / 2) {z : (Fin 2 → ℝ) × (Fin 2 → ℝ)}
    (hq : rmin ≤ radius z.1 ∧ radius z.1 ≤ ρmax) : CollisionFree μ z := sorry

/-- `bpI:p8:min-distance` (track P): a compact set of `N`-body configurations of pairwise
distinct points has a positive minimal separation, for any continuous definite length `ℓ`. -/
theorem min_distance {ι X : Type*} [Finite ι] [AddCommGroup X] [TopologicalSpace X]
    [IsTopologicalAddGroup X] (ℓ : X → ℝ) (hcont : Continuous ℓ) (hnonneg : ∀ u, 0 ≤ ℓ u)
    (hzero : ∀ u, ℓ u = 0 → u = 0)
    {S : Set (ι → X)} (hS : IsCompact S) (hsep : ∀ q ∈ S, ∀ i j, i ≠ j → q i ≠ q j) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ q ∈ S, ∀ i j, i ≠ j → δ ≤ ℓ (q i - q j) := sorry

end KAM.Iso.Collision

/-! ## L. The action region and the topology of `𝒩` (`KAM/Iso/R3bp/Region.lean`,
`bpI:p8:A`, `e-vs-k`, `topology`) -/

namespace KAM.Iso.R3bp

open KAM KAM.Kepler KAM.Iso KAM.Iso.Confinement

/-- The source premises of I-R3BP, verbatim (frozen binders `ha haa he hee heSmall hinner`). -/
structure R3bpParams (aMinus aPlus eMinus ePlus : ℝ) : Prop where
  ha : 0 < aMinus
  haa : aMinus < aPlus
  he : 0 < eMinus
  hee : eMinus < ePlus
  heSmall : ePlus < 1 / 4
  hinner : aPlus * (1 + ePlus) < 1

/-- The parameter shape of `bpI:p8:A` (`0 < am < ap`, `0 < em < ep < 1`); also holds for the
enlarged parameters of `bpI:p8:safe`, which are NOT `R3bpParams`. -/
structure RegionParams (aMinus aPlus eMinus ePlus : ℝ) : Prop where
  ha : 0 < aMinus
  haa : aMinus < aPlus
  he : 0 < eMinus
  hee : eMinus < ePlus
  he1 : ePlus < 1

theorem R3bpParams.region {am ap em ep : ℝ} (hp : R3bpParams am ap em ep) :
    RegionParams am ap em ep := sorry

/-- `κ(e) = √(1 - e²)`. -/
def kappa (e : ℝ) : ℝ := Real.sqrt (1 - e ^ 2)

/-- `A(a_±, e_±)`, in `(L, G) = (x 0, x 1)` (`bpI:p8:A`). -/
def actionRegion (aMinus aPlus eMinus ePlus : ℝ) : Set (Fin 2 → ℝ) :=
  {x | Real.sqrt aMinus < x 0 ∧ x 0 < Real.sqrt aPlus ∧ kappa ePlus * x 0 < x 1 ∧
    x 1 < kappa eMinus * x 0}

/-- `A^cl(a_±, e_±)`. -/
def actionRegionCl (aMinus aPlus eMinus ePlus : ℝ) : Set (Fin 2 → ℝ) :=
  {x | Real.sqrt aMinus ≤ x 0 ∧ x 0 ≤ Real.sqrt aPlus ∧ kappa ePlus * x 0 ≤ x 1 ∧
    x 1 ≤ kappa eMinus * x 0}

/-- `bpI:p8:e-vs-k`: `e(L, G) ∈ (e', e'') ↔ G/L ∈ (κ(e''), κ(e'))`, open form, in `L, G` form. -/
theorem eccOf_mem_Ioo_iff {L G e' e'' : ℝ} (hL : 0 < L) (hG : 0 < G) (hGL : G < L)
    (he' : 0 ≤ e') (hee : e' < e'') (he'' : e'' < 1) :
    (e' < eccOf L G ∧ eccOf L G < e'') ↔ kappa e'' * L < G ∧ G < kappa e' * L := sorry

/-- `bpI:p8:e-vs-k`, closed form. -/
theorem eccOf_mem_Icc_iff {L G e' e'' : ℝ} (hL : 0 < L) (hG : 0 < G) (hGL : G < L)
    (he' : 0 ≤ e') (hee : e' < e'') (he'' : e'' < 1) :
    (e' ≤ eccOf L G ∧ eccOf L G ≤ e'') ↔ kappa e'' * L ≤ G ∧ G ≤ kappa e' * L := sorry

theorem kappa_strictAntiOn : StrictAntiOn kappa (Icc 0 1) := sorry

/-- `A ⊆ A^cl ⊆ 𝒞₀ = {0 < G < L}`. -/
theorem actionRegionCl_subset_cone {am ap em ep : ℝ} (hp : RegionParams am ap em ep) :
    actionRegion am ap em ep ⊆ actionRegionCl am ap em ep ∧
      actionRegionCl am ap em ep ⊆ {x | 0 < x 1 ∧ x 1 < x 0} := sorry

theorem isOpen_actionRegion (am ap em ep : ℝ) : IsOpen (actionRegion am ap em ep) := sorry

theorem isCompact_actionRegionCl (am ap em ep : ℝ) : IsCompact (actionRegionCl am ap em ep) := sorry

theorem closure_actionRegion_subset (am ap em ep : ℝ) :
    closure (actionRegion am ap em ep) ⊆ actionRegionCl am ap em ep := sorry

/-- `bpI:p8:topology` (a): in the cone, `A` is `am < L² < ap ∧ em < e < ep`. -/
theorem mem_actionRegion_iff {am ap em ep : ℝ} (hp : RegionParams am ap em ep) {x : Fin 2 → ℝ}
    (hx : 0 < x 1 ∧ x 1 < x 0) :
    x ∈ actionRegion am ap em ep ↔
      am < x 0 ^ 2 ∧ x 0 ^ 2 < ap ∧ em < eccOf (x 0) (x 1) ∧ eccOf (x 0) (x 1) < ep := sorry

/-- `bpI:p8:topology` (a), (b): `𝒩 = 𝖰(ℝ² × A)` (`w = ((ℓ, g), (L, G))`). -/
theorem nearCircular_eq_image_region {am ap em ep : ℝ} (hp : RegionParams am ap em ep) :
    NearCircular am ap em ep = delaunay '' {w | w.2 ∈ actionRegion am ap em ep} := sorry

/-- `bpI:p8:topology` (b): every `z₀ ∈ 𝒩` has a Delaunay preimage with `(L₀, G₀) ∈ A`. -/
theorem exists_delaunay_preimage {am ap em ep : ℝ} (hp : RegionParams am ap em ep)
    {z₀ : (Fin 2 → ℝ) × (Fin 2 → ℝ)} (hz₀ : z₀ ∈ NearCircular am ap em ep) :
    ∃ w : (Fin 2 → ℝ) × (Fin 2 → ℝ), w.2 ∈ actionRegion am ap em ep ∧ delaunay w = z₀ := sorry

/-- `bpI:p8:topology` (c): `𝒩` is open (the Kepler design's `isOpen_nearCircular`). -/
theorem isOpen_nearCircular_region (am ap em ep : ℝ) : IsOpen (NearCircular am ap em ep) :=
  isOpen_nearCircular am ap em ep

/-- `bpI:p8:topology` (d): `𝒩` is nonempty (`L_* = √a_*`, `G_* = L_* κ(e_*)`). -/
theorem nearCircular_nonempty {am ap em ep : ℝ} (hp : RegionParams am ap em ep) :
    (NearCircular am ap em ep).Nonempty := sorry

/-! ## M. The enlarged safe region (`KAM/Iso/R3bp/Safe.lean`, `bpI:p8:safe`, `safe-region`) -/

section Safe

variable {am ap em ep : ℝ}

def safeT (ap ep : ℝ) : ℝ := min (1 / 8) ((1 - ap * (1 + ep)) / (6 * ap))
def safeAminus (am : ℝ) : ℝ := am / 2
def safeAplus (ap ep : ℝ) : ℝ := ap * (1 + safeT ap ep)
def safeEminus (em : ℝ) : ℝ := em / 2
def safeEplus (ap ep : ℝ) : ℝ := ep + safeT ap ep

/-- `U = A(a_±', e_±')` (open). -/
def safeU (am ap em ep : ℝ) : Set (Fin 2 → ℝ) :=
  actionRegion (safeAminus am) (safeAplus ap ep) (safeEminus em) (safeEplus ap ep)

/-- `𝒦 = A^cl(a_±', e_±')` (compact). -/
def safeK (am ap em ep : ℝ) : Set (Fin 2 → ℝ) :=
  actionRegionCl (safeAminus am) (safeAplus ap ep) (safeEminus em) (safeEplus ap ep)

/-- `B = 2π U`, the action domain handed to I-HEAD. -/
def safeB (am ap em ep : ℝ) : Set (Fin 2 → ℝ) :=
  (fun x : Fin 2 → ℝ => (2 * Real.pi) • x) '' safeU am ap em ep

/-- `B' = 2π A`. -/
def safeB' (am ap em ep : ℝ) : Set (Fin 2 → ℝ) :=
  (fun x : Fin 2 → ℝ => (2 * Real.pi) • x) '' actionRegion am ap em ep

theorem safeT_pos (hp : R3bpParams am ap em ep) : 0 < safeT ap ep := sorry

theorem safe_regionParams (hp : R3bpParams am ap em ep) :
    RegionParams (safeAminus am) (safeAplus ap ep) (safeEminus em) (safeEplus ap ep) ∧
      safeEplus ap ep < 3 / 8 := sorry

/-- (a) `Ā ⊆ A^cl ⊆ U ⊆ 𝒦`, `𝒦` compact, nonempty, in the cone: `SafeAction 𝒦`. -/
theorem safe_inclusions (hp : R3bpParams am ap em ep) :
    actionRegionCl am ap em ep ⊆ safeU am ap em ep ∧ safeU am ap em ep ⊆ safeK am ap em ep ∧
      SafeAction (safeK am ap em ep) := sorry

/-- (b) elements on `𝒦`: `a_-' ≤ L² ≤ a_+'`, `e_-' ≤ e ≤ e_+'`. -/
theorem safe_elements (hp : R3bpParams am ap em ep) {x : Fin 2 → ℝ} (hx : x ∈ safeK am ap em ep) :
    safeAminus am ≤ x 0 ^ 2 ∧ x 0 ^ 2 ≤ safeAplus ap ep ∧ safeEminus em ≤ eccOf (x 0) (x 1) ∧
      eccOf (x 0) (x 1) ≤ safeEplus ap ep := sorry

/-- (c) `ρ_max ≤ a_+'(1 + e_+') ≤ (1 + ρ*)/2 < 1`, `r_min ≥ a_-'(1 - e_+') > 0`, `r_min ≤ ρ_max`;
`ρ* = ap(1 + ep)`. -/
theorem safe_radii (hp : R3bpParams am ap em ep) :
    kRhoMax (safeK am ap em ep) ≤ (1 + ap * (1 + ep)) / 2 ∧ kRhoMax (safeK am ap em ep) < 1 ∧
      safeAminus am * (1 - safeEplus ap ep) ≤ kRmin (safeK am ap em ep) ∧
      0 < kRmin (safeK am ap em ep) ∧ kRmin (safeK am ap em ep) ≤ kRhoMax (safeK am ap em ep) := sorry

/-- `r_min ≤ L²(1 - e)` and `L²(1 + e) ≤ ρ_max` on a safe action region (`csInf_le`, `le_csSup`). -/
theorem kRmin_le {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) {x : Fin 2 → ℝ} (hx : x ∈ K) :
    kRmin K ≤ x 0 ^ 2 * (1 - eccOf (x 0) (x 1)) := sorry

theorem le_kRhoMax {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) {x : Fin 2 → ℝ} (hx : x ∈ K) :
    x 0 ^ 2 * (1 + eccOf (x 0) (x 1)) ≤ kRhoMax K := sorry

/-- (d) `B = 2πU` open, bounded, nonempty; `B' = 2πA` open, `closure B' = 2π Ā` compact `⊆ B`;
`I ∈ B ⇒ I/(2π) ∈ 𝒦`. -/
theorem safe_domain (hp : R3bpParams am ap em ep) :
    IsOpen (safeB am ap em ep) ∧ Bornology.IsBounded (safeB am ap em ep) ∧
      (safeB am ap em ep).Nonempty ∧ IsOpen (safeB' am ap em ep) ∧
      IsCompact (closure (safeB' am ap em ep)) ∧
      closure (safeB' am ap em ep) ⊆ safeB am ap em ep ∧
      ∀ I ∈ safeB am ap em ep, (fun i => I i / (2 * Real.pi)) ∈ safeK am ap em ep := sorry

end Safe

/-! ## N. The data of I-HEAD and the constants (`KAM/Iso/R3bp/HeadData.lean`, `Constants.lean`;
`bpI:p8:head-data`, `constants`, `bounds`) -/

section Data

variable {am ap em ep : ℝ}

/-- `h̃ = h_{(2π)², 1/(2π)}`. -/
def r3bpH : (Fin 2 → ℂ) → ℂ := keplerRotH ((2 * Real.pi) ^ 2) (1 / (2 * Real.pi))

/-- `s₀ = δ₂/(2π)`, `r₀ = 2π δ₂` with `δ₂ = exactDelta 𝒦`. -/
def r3bpS₀ (am ap em ep : ℝ) : ℝ := exactDelta (safeK am ap em ep) / (2 * Real.pi)
def r3bpR₀ (am ap em ep : ℝ) : ℝ := 2 * Real.pi * exactDelta (safeK am ap em ep)

/-- `bpI:p8:head-data` (a): all source premises of I-HEAD on `(B, s₀, r₀, h̃, B', η = 1)`. -/
theorem r3bp_headData (hp : R3bpParams am ap em ep) :
    HeadData (safeB am ap em ep) (r3bpS₀ am ap em ep) (r3bpR₀ am ap em ep) r3bpH
      (safeB' am ap em ep) 1 := sorry

/-- `bpI:p8:head-data` (b): for `0 ≤ μ < μ₂`, `f = f̃_μ` and `ε = C_F μ` satisfy the hypotheses of
I-HEAD except `ε < ε₀`. -/
theorem r3bp_perturbData (hp : R3bpParams am ap em ep) {μ : ℝ} (h0 : 0 ≤ μ)
    (hμ : μ < exactMu2 (safeK am ap em ep)) :
    PerturbData (safeB am ap em ep) (r3bpS₀ am ap em ep) (r3bpR₀ am ap em ep)
      (tildeF (safeK am ap em ep) μ) (μ * exactCF (safeK am ap em ep)) := sorry

/-- `ν₀ = min {r_min, 1 - ρ_max}`. -/
def shellNu (K : Set (Fin 2 → ℝ)) : ℝ := min (kRmin K) (1 - kRhoMax K)

/-- `μ₀ = min {1/2, μ₂, ε_H/(|C_F| + 1), ν₀/2}` (the blueprint's `ε_H/C_F` needs `C_F > 0`; the
Lean form does not). -/
def r3bpMu0 (K : Set (Fin 2 → ℝ)) (εH : ℝ) : ℝ :=
  min (min (1 / 2) (exactMu2 K)) (min (εH / (|exactCF K| + 1)) (shellNu K / 2))

/-- `d = ν₀/2`. -/
def r3bpD (K : Set (Fin 2 → ℝ)) : ℝ := shellNu K / 2

/-- `R = √(2/r_min)`. -/
def r3bpR (K : Set (Fin 2 → ℝ)) : ℝ := Real.sqrt (2 / kRmin K)

/-- `bpI:p8:constants`: `0 < μ₀ ≤ 1/2`, `d > 0`, `R > 0`. -/
theorem r3bp_constants_pos (hp : R3bpParams am ap em ep) {εH : ℝ} (hεH : 0 < εH) :
    0 < r3bpMu0 (safeK am ap em ep) εH ∧ r3bpMu0 (safeK am ap em ep) εH ≤ 1 / 2 ∧
      0 < r3bpD (safeK am ap em ep) ∧ 0 < r3bpR (safeK am ap em ep) := sorry

/-- `bpI:p8:pf-small`: for `0 ≤ μ < μ₀`: `μ < μ₂`, `μ C_F < ε_H` and `|μ| ≤ ν₀/2`. -/
theorem r3bp_small (hp : R3bpParams am ap em ep) {εH μ : ℝ} (hεH : 0 < εH) (h0 : 0 ≤ μ)
    (hμ : μ < r3bpMu0 (safeK am ap em ep) εH) :
    μ < exactMu2 (safeK am ap em ep) ∧ μ * exactCF (safeK am ap em ep) < εH ∧
      |μ| ≤ shellNu (safeK am ap em ep) / 2 := sorry

/-- ADAPTER from Kepler `orbitMapR_radius_bounds` (`delaunay` unfolds to `orbitMapR`, `rfl`) and
`eccOf_mem_Ioo`. -/
theorem delaunay_radius_bounds {w : (Fin 2 → ℝ) × (Fin 2 → ℝ)} (hw : w ∈ deDom) :
    w.2 0 ^ 2 * (1 - eccOf (w.2 0) (w.2 1)) ≤ radius (delaunay w).1 ∧
      radius (delaunay w).1 ≤ w.2 0 ^ 2 * (1 + eccOf (w.2 0) (w.2 1)) := sorry

/-- ADAPTER from Kepler `orbitMapR_energy` and `eccOf_mem_Ioo`. -/
theorem delaunay_energy {w : (Fin 2 → ℝ) × (Fin 2 → ℝ)} (hw : w ∈ deDom) :
    kE (delaunay w) = -1 / (2 * w.2 0 ^ 2) := sorry

/-- `exactMu2 𝒦 > 0` for the safe region (`shiftEps` formula, `safe_radii`): no upstream lemma. -/
theorem exactMu2_safe_pos (hp : R3bpParams am ap em ep) : 0 < exactMu2 (safeK am ap em ep) := sorry

/-- `bpI:p8:bounds`: along a Delaunay orbit over `𝒦`: `r_min ≤ rad q ≤ ρ_max`, `rad p ≤ R`. -/
theorem delaunay_orbit_bounds {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) (hr : 0 < kRmin K)
    {w : (Fin 2 → ℝ) × (Fin 2 → ℝ)} (hw : w ∈ deDom) (hwK : w.2 ∈ K) :
    kRmin K ≤ radius (delaunay w).1 ∧ radius (delaunay w).1 ≤ kRhoMax K ∧
      radius (delaunay w).2 ≤ r3bpR K := sorry

/-- `bpI:p8:pf-coord`, `pf-sol`, `pf-bounds`, `pf-dist`: everything of I-R3BP that does not use
I-HEAD. For the data of I-HEAD at `ε_H` (the constant `ε₀` the frozen theorem returns): constants
`μ₀, d, R`; for `μ < μ₀` the I-HEAD hypotheses on `(f̃_μ, C_F μ)` hold with `C_F μ < ε_H`; and every
global Hamiltonian solution `zt` in `B` through the Delaunay preimage of `z₀` (this is where I-HEAD
enters, in the provider) yields the physical solution with the four bounds. -/
theorem r3bp_core (hp : R3bpParams am ap em ep) {εH : ℝ} (hεH : 0 < εH) :
    ∃ μ₀ d R : ℝ, 0 < μ₀ ∧ μ₀ ≤ 1 / 2 ∧ 0 < d ∧ 0 < R ∧ ∀ μ : ℝ, 0 ≤ μ → μ < μ₀ →
      (PerturbData (safeB am ap em ep) (r3bpS₀ am ap em ep) (r3bpR₀ am ap em ep)
          (tildeF (safeK am ap em ep) μ) (μ * exactCF (safeK am ap em ep)) ∧
        μ * exactCF (safeK am ap em ep) < εH) ∧
      ∀ z₀ ∈ NearCircular am ap em ep, ∃ w₀ : (Fin 2 → ℝ) × (Fin 2 → ℝ),
        w₀.2 ∈ safeB' am ap em ep ∧ delaunay (periodOneMap w₀) = z₀ ∧
        ∀ zt : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ), zt 0 = w₀ →
          IsHamiltonianSolutionOn (realHamiltonian r3bpH (tildeF (safeK am ap em ep) μ))
            (safeB am ap em ep) Set.univ zt →
          ∃ z : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ), z 0 = z₀ ∧ IsRestrictedSolutionOn μ Set.univ z ∧
            ∀ t : ℝ, d ≤ radius ((z t).1 - primary₁ μ) ∧ d ≤ radius ((z t).1 - primary₂ μ) ∧
              radius (z t).1 ≤ R ∧ radius (z t).2 ≤ R := sorry

/-- `bpI:p8:pf-uniq`: uniqueness in the physical variables (`restricted_reduction` +
`gen_uniqueness` on `Ioo a b`); no confinement of the competitor. Needs N3-8. -/
theorem restricted_unique (μ : ℝ) {a b : ℝ} (ha : a < 0) (hb : 0 < b)
    {y z : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ)} (h0 : y 0 = z 0)
    (hy : IsRestrictedSolutionOn μ (Set.Ioo a b) y) (hz : IsRestrictedSolutionOn μ Set.univ z) :
    ∀ t ∈ Set.Ioo a b, y t = z t := sorry

end Data

end KAM.Iso.R3bp

/-! ## P. The providers (exact frozen types)

`KAM/Provider/Iso/AllTimeConfinement.lean` and `KAM/Provider/Iso/RestrictedNearCircular.lean`. The
glue below is written out in full: it is a type check of the assembly, not a proof of the lemmas. -/

namespace KAM.Provider.Iso

open KAM KAM.Iso KAM.Iso.Confinement KAM.Iso.R3bp

theorem all_time_confinement
    (B : Set (Fin 2 → ℝ)) (hB : IsOpen B) (hBb : Bornology.IsBounded B)
    (hBne : B.Nonempty) {s₀ r₀ : ℝ} (hs : 0 < s₀) (hr : 0 < r₀)
    (h : (Fin 2 → ℂ) → ℂ) (hh : DifferentiableOn ℂ h (actionNbhd B r₀))
    (hhreal : ∀ I : Fin 2 → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
      (h (fun i => (I i : ℂ))).im = 0)
    (hiso : ∀ I : Fin 2 → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
      (borderedHessian h I).det ≠ 0)
    (B' : Set (Fin 2 → ℝ)) (hB' : IsOpen B')
    (hcompact : IsCompact (closure B')) (hinside : closure B' ⊆ B)
    {η : ℝ} (hη : 0 < η) :
    ∃ ε₀ : ℝ, 0 < ε₀ ∧
      ∀ (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ),
        DifferentiableOn ℂ f ((complexStrip 2 s₀) ×ˢ (actionNbhd B r₀)) →
        (∀ z ∈ (complexStrip 2 s₀) ×ˢ (actionNbhd B r₀), ∀ k : Fin 2 → ℤ,
          f (z.1 + (fun i => (k i : ℂ)), z.2) = f z) →
        (∀ θ I : Fin 2 → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
          (f ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
        0 ≤ ε → ε < ε₀ →
        (∀ z ∈ (complexStrip 2 s₀) ×ˢ (actionNbhd B r₀), ‖f z‖ ≤ ε) →
        ∀ z₀ : (Fin 2 → ℝ) × (Fin 2 → ℝ), z₀.2 ∈ B' →
        ∃ z : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ),
          z 0 = z₀ ∧ IsHamiltonianSolutionOn (realHamiltonian h f) B Set.univ z ∧
          (∀ t : ℝ, ‖(z t).2 - z₀.2‖ < η) ∧
          ∀ (a b : ℝ) (y : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ)),
            a < 0 → 0 < b → y 0 = z₀ →
            IsHamiltonianSolutionOn (realHamiltonian h f) B (Set.Ioo a b) y →
            ∀ t ∈ Set.Ioo a b, y t = z t := by
  obtain ⟨ε₀, hε₀, H⟩ := confinement_main (B := B) (s₀ := s₀) (r₀ := r₀) (h := h) (B' := B')
    (η := η) ⟨⟨hs, hr, hh, hhreal⟩, hB, hBb, hBne, hiso, hB', hcompact, hinside, hη⟩
  exact ⟨ε₀, hε₀, fun f ε hf hper hreal h0 hε hbd z₀ hz₀ =>
    H f ε ⟨hf, hper, hreal, h0, hbd⟩ hε z₀ hz₀⟩

theorem restricted_near_circular
    {aMinus aPlus eMinus ePlus : ℝ}
    (ha : 0 < aMinus) (haa : aMinus < aPlus)
    (he : 0 < eMinus) (hee : eMinus < ePlus) (heSmall : ePlus < 1 / 4)
    (hinner : aPlus * (1 + ePlus) < 1) :
    IsOpen (NearCircular aMinus aPlus eMinus ePlus) ∧
    (NearCircular aMinus aPlus eMinus ePlus).Nonempty ∧
    ∃ μ₀ d R : ℝ, 0 < μ₀ ∧ μ₀ ≤ 1 / 2 ∧ 0 < d ∧ 0 < R ∧
      ∀ μ : ℝ, 0 ≤ μ → μ < μ₀ →
        ∀ z₀ ∈ NearCircular aMinus aPlus eMinus ePlus,
        ∃ z : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ),
          z 0 = z₀ ∧ IsRestrictedSolutionOn μ Set.univ z ∧
          (∀ t : ℝ, d ≤ radius ((z t).1 - primary₁ μ) ∧
            d ≤ radius ((z t).1 - primary₂ μ) ∧
            radius ((z t).1) ≤ R ∧ radius ((z t).2) ≤ R) ∧
          ∀ (a b : ℝ) (y : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ)),
            a < 0 → 0 < b → y 0 = z₀ → IsRestrictedSolutionOn μ (Set.Ioo a b) y →
            ∀ t ∈ Set.Ioo a b, y t = z t := by
  have hp : R3bpParams aMinus aPlus eMinus ePlus := ⟨ha, haa, he, hee, heSmall, hinner⟩
  have hd := r3bp_headData hp
  -- WAITS FOR THE SEAL OF I-HEAD: the next line is the only use of the frozen theorem.
  obtain ⟨εH, hεH, hHEAD⟩ := KAM.Iso.all_time_confinement (safeB aMinus aPlus eMinus ePlus)
    hd.isOpen hd.bounded hd.nonempty hd.hs hd.hr r3bpH hd.holo hd.real hd.iso
    (safeB' aMinus aPlus eMinus ePlus) hd.isOpen' hd.compact hd.inside hd.hη
  obtain ⟨μ₀, d, R, hμ₀, hμ₀h, hd0, hR0, hcore⟩ := r3bp_core hp hεH
  refine ⟨isOpen_nearCircular_region aMinus aPlus eMinus ePlus,
    nearCircular_nonempty hp.region, μ₀, d, R, hμ₀, hμ₀h, hd0, hR0, fun μ hμ0 hμ z₀ hz₀ => ?_⟩
  obtain ⟨⟨hpert, hsmall⟩, hex⟩ := hcore μ hμ0 hμ
  obtain ⟨w₀, hw₀B', hw₀, hrest⟩ := hex z₀ hz₀
  obtain ⟨zt, hzt0, hzt, -, -⟩ := hHEAD (tildeF (safeK aMinus aPlus eMinus ePlus) μ)
    (μ * exactCF (safeK aMinus aPlus eMinus ePlus)) hpert.holo hpert.periodic hpert.real
    hpert.nonneg hsmall hpert.bound w₀ hw₀B'
  obtain ⟨z, hz0, hzsol, hbounds⟩ := hrest zt hzt0 hzt
  exact ⟨z, hz0, hzsol, hbounds, fun a b y ha hb hy0 hy t ht =>
    restricted_unique μ ha hb (hy0.trans hz0.symm) hy hzsol t ht⟩

end KAM.Provider.Iso

/-- The provider types ARE the frozen types (proof irrelevance). -/
example : @KAM.Provider.Iso.all_time_confinement = @KAM.Iso.all_time_confinement := rfl
example : @KAM.Provider.Iso.restricted_near_circular = @KAM.Iso.restricted_near_circular := rfl
```
