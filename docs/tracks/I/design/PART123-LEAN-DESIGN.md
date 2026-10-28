# Lean design for blueprint-I Parts 1–3 (I-G1, `KAM.Iso.isoenergetic_kam`)

Design v2 (revision after audit `PART123-design-audit-1.md`, see section 10), 2026-10-28, branch `inp-design-i123` (brief `.drafts/briefs/offload-main/DESIGN-I123.md`). Planning
evidence, not approved Lean. Nothing here is frozen; no frozen file or manifest entry is touched. Modeled on track K's
`PART23-LEAN-DESIGN.md` (audited PASS, executed: G1 and G2 sealed) and on `docs/tracks/I/design/PART58-LEAN-DESIGN.md`
(the Part 5/8 design, whose Part 3 interface this design implements).

**The signatures.** Every result node of `p1-iso-linear`, `p2-iso-iteration` and `p3-iso-local-charts` has its exact
Lean statement in `.drafts/design/IPart123Signatures.lean` (untracked; copied verbatim in Appendix A).
- 1483 lines (under the 1500 cap), sha256 `2b7c6e337d0fedcbb186e44e83597989f49502efe55fcde6605f9c29b69d8dbe`.
- `cd /root/code/KAM && LEAN_NUM_THREADS=1 nice -n 5 lake env lean /root/code/KAM-inp-design-i123/.drafts/design/IPart123Signatures.lean`
  exits 0 against `main`'s build snapshot (HEAD `7428a8f` at run time): 30–61 s wall, 3.3 GB RSS, one process. It prints
  45 diagnostics, all `declaration uses 'sorry'`; no other warning, no `set_option`, no heartbeat override, no
  `EuclideanSpace`. It runs against `main`'s build because the worktree's base (`inp` at `6de19bf`) had neither the
  late K modules nor a build of them (section 4.3); the frozen Iso definitions are byte-identical on `main` and `inp`
  (`diff -rq`, checked).
- 50 theorems (45 `sorry`, 5 proved: three `rfl`/`ext` bridges, `part3_tori_of`, and the provider `part3_tori`),
  80 `def`/`abbrev` (6 of them copied from Part 5), 15 structures, 4 `example`s. Section U copies the Part 5
  interface verbatim from `IPart58Signatures.lean` (it lives in Part 5's `KAM/Iso/Confinement/Setting.lean`).
- Not `sorry` (section P, scratch imports of the anchors): `example : type_of% @KAM.Iso.isoenergetic_kam := fun … =>
  ⟨_, _, _, KAM.Iso.Apost.g1_explicit …⟩` checks the provider body against the EXACT frozen type; two `example`s check
  that the Part 3 premises `IG1Statement`, `G3Statement` are the frozen I-G1 and G3 types; a third shows that
  `g1_explicit` discharges `IG1Statement` in-tree; `part3_tori` (Part 5's signature, verbatim) is proved from
  `part3_tori_of` and the two anchors.
- Section U is identical (whitespace-normalized comparison, all 13 declarations) to the landed
  `KAM/Iso/Confinement/Setting.lean` (P5-0, `inp` `6564ca8`).

## 0. Decisions in brief

1. **Reuse K, build nothing parallel.** Tori, frames, strips, matrices, averages, `𝓡` are track K's:
   `KAM.Torus` (`tangentMat`, `normalMat`, `frameMat`, `normalFieldMat`, `symDefect`, `reducer`, `eta/etaL/etaN`,
   `errDerivMat`, `triangularMat`, `redDefect`, `sumVec`, `IsPeriodicOn`, `IsRealVec`, `IsRealMat`, `avg`),
   `KAM.Apost` (`Standing`, `Params`, all constants, `cohR`, `triU`, `sMat`, `deltaSeq`, `rSeq`, the abstract limit
   lemmas), `KAM.Head` (`unperturbedTorus` and its frame lemmas, `actionHessian`, `gradC`, `hessian`, `domainD`,
   `hbold`, `deltaStar`, `muParam`, `Fconst`, `Mconst`, `hBound`, derivative bounds), and Part 5's patch carrier
   `EnergyPatch`. The only new carrier is the bordered one: `Matrix (Fin n ⊕ Unit) (Fin n ⊕ Unit) ℂ`, which is what the
   frozen `extendedTorsion` already is; `bordMat A c y = fromBlocks A (replicateCol c) (replicateRow y) 0`, and
   `extendedTorsion = bordMat T ω Y` holds by `ext; rfl` (proved in the scratch file).
2. **Standing data as Prop-structures, fields verbatim.** Part 1: `Linear.Setting` *extends* `KAM.Apost.Standing` (so
   every K lemma applies through `hS.toStanding`) with the one extra field `‖DH‖ ≤ M`. Part 2: `IsoStanding` (I1–I4 with
   all five frozen bounds, `σ_ω > 1`, `ν > 0`, `ω* ≠ 0`, `ω* ∈ Dio_{γ,τ}`); `IsoStanding.setting (hs : 1 ≤ s)` is the
   k-bridge to Part 1 at `ω = sω*`. Admissibility: `AdmissibleNoTwist` (K's `Admissible` minus `twist`) and
   `IsoAdmissible` extending it with `s > 1`, the bordered twist (B5) and the energy error (B7).
3. **Explicit constructions, no conclusion-shaped premises (rule 6).** The bordered solution (`bordSol`, `bordXi0`,
   `bordXiOmega`, `bordXiN`, `bordGL`, `bordXiL`, packed data `BordData`), the correction (`isoXi`, `isoXiOmega`,
   `isoCorrection`, `isoNewS`), `isoNewtonMap`, the sequence `isoSeq` of pairs `(K_j, s_j)` and its limits `isoLimit`,
   `isoSLimit` are total definitions. The iteration hypotheses (I5)–(I12) with margin `μ` are the structure `IterHyp`
   (source premises of `bpI:p2:iteration`, verbatim).
4. **Constants.** The 17 hatted constants of `bpI:p2:constants` are `def`s with exactly their dependences, built on
   K's (`hatCS`, …, `hatcStar μ ν`; `CDTbord` is `C_{Δ𝖳}`); `dStep = Ĉ_Δ ε/(γ²δ^a)`. `C₁ = isoC1`, `C₂ = C₃ = isoC2`
   (they do not depend on `ω*`, `σ_ω`). Part 3 constants are `def`s too (`dB`, `eta1`, `sSet`, `mhConst`, `MgConst`,
   `ShConst`, `sigmaOmegaConst`, …), on top of K Part 4's.
5. **Quarantine.** No implementation module imports I-G1, a provider, or any frozen theorem (PROVER-COMMON, also for
   sealed anchors). Part 3 applies I-G1 and G3 through two premises, `IG1Statement` and `G3Statement`: verbatim copies of
   the frozen types (checked by `example` against the anchors); `IG1Body` is the frozen inner body, kept whole at the
   chosen tuple by `apply` (audit F1) and used to state `g1_explicit`. This is the K Part 4 `GValid` precedent, in `∀` form
   because the rays (hence the I-G1 tuples) are chosen inside Part 3. The I-HEAD provider discharges them; so does,
   without any seal, `g1_explicit` (section 8).
6. **One genuinely new analytic lemma.** `border_solve` (HL19 Lemma 6.1, supplied in full by the blueprint). Everything
   else is a wrapper on K or a computation in K's carrier: 18 of the 53 graph nodes are reuse, thin wrappers or
   externals (no new mathematics).
7. **Packages.** 22 prover packages of 250–950 lines (Part 1: 7, Part 2: 10, Part 3: 5), after a definitions landing
   `I-D0` (the merge `M0` of `main` into `inp` and Part 5's P5-0 are already on `inp`); 8 waves; critical path
   `I1-1 → I1-5 → I2-3 → I2-4/I2-5 → I2-6 → I2-8 → I2-9 → I2-10`. About 13,000 lines in total (Part 1 about 4,000, Part 2 about 5,400, Part 3 about 3,600, with the
   definitions modules).

## 1. Carriers and conventions

### 1.1 What the frozen definitions fix

| Object | Frozen form | Carrier |
|---|---|---|
| torus `K`, `DK`, `E`, `X_H`, `G`, `N`, `T`, `⟨T⟩` | as in track K (`invarianceError`, `gramMatrix`, `normalFrame`, `torsion`, `torsionAverage`) | K's (`PART23` §1.1) |
| `Ē_H(K)` | `KAM.Iso.energyAverage H K` (integral over `[0,1]ⁿ`) | `ℂ` |
| `𝖳_H(θ)` | `KAM.Iso.extendedTorsion H K ω θ` (match on `Fin n ⊕ Unit`) | `Matrix (Fin n ⊕ Unit) (Fin n ⊕ Unit) ℂ` |
| `⟨𝖳_H⟩` | `KAM.Iso.extendedTorsionAverage H K ω` (entrywise integral) | same |
| `𝖡_h(I)` | `KAM.Iso.borderedHessian h I` | `Matrix (Fin n ⊕ Unit) (Fin n ⊕ Unit) ℝ` |
| I-G1 | `KAM.Iso.isoenergetic_kam` | ray `s • ωstar`, row sums for (I7), (I8) |

### 1.2 New objects (all total definitions)

| Blueprint | Lean | Definition |
|---|---|---|
| `Y = DH(K)N` | `Linear.energyRow H K θ : Fin n → ℂ` | `b ↦ fderiv ℂ H (K θ) (normalFrame K θ b)` (the frozen last-row entry) |
| `(A c; yᵀ 0)` | `Linear.bordMat A c y` | `fromBlocks A (replicateCol Unit c) (replicateRow Unit y) 0` |
| `𝒯`, `(ξ₀, ξ^ω)`, `ξᴺ`, `gᴸ`, `ξᴸ` | `bordAvg ω d`, `bordSol`, `bordXi0`, `bordXiOmega`, `bordXiN`, `bordGL`, `bordXiL ω d ξL0` | `bpI:p1:border-solve`, data `d : BordData n = (ηL, ηN, T, Y, ηω)`; `uᴺ = KAM.Apost.triU ω ηN` (K) |
| `E_lin`, `Res`, `Λξ - ∂_ωξ + (ω;0)ξ^ω` | `isoLinError`, `isoResidual`, `bordOp` (generic in `ξ, ξ^ω`) | `bpI:p1:reduced` |
| correction data, `ξ`, `ξ^ω`, `ΔK`, `s̄` | `isoBordData`, `isoXi`, `isoXiOmega`, `isoCorrection`, `isoNewS` | `ηᴸ, ηᴺ, T, Y` of `K`, `η^ω = -(Ē_H(K) - E₀)`, `ξᴸ₀ = 0`; `s̄ = s(1 - Re ξ^ω)` |
| `K̄`, `Δ²X`, `Δ²H`, `S` | `isoNewtonMap`, `isoQuadX`, `isoQuadH`; `S` is K's `sMat` | `bpI:p2:newton-error` |
| `ν(s)` | `rayMargin σω ωstar s` | `min (s-1) (σω-s) * ‖ωstar‖` |
| `ε_s`, `d_s`, `(K_j, s_j)`, `K_∞`, `s_∞` | `isoEpsSeq`, `isoDSeq`, `isoSeq`, `isoLimit`, `isoSLimit`; `δ_s, r_s` are K's `deltaSeq`, `rSeq` | `bpI:p2:schedule`, `iteration`, `limit` |
| Part 3 charts | `perp`, `det2`, `aCoord`, `bCoord`, `slope`, `hessR`, `chartDom`, `chartM`, `chartPhi`, `jac2` | `bpI:p3:coordinates`, `chart` |
| patch, ray, `R(θ)` | `IsPatch` (+ `toEnergyPatch` into Part 5's `EnergyPatch`), `IsRay`, `flatRemainder` | `bpI:p3:patch`, `rays`, `torus` |
| one torus of the output | `ToriSide` (extends Part 5's `TorusOutput` with T2, T5–T7) | `bpI:p3:tori` |

### 1.3 Conventions (binding)

All of K's `PART23` §1.4 apply verbatim (operator-norm scope `open scoped Matrix.Norms.Operator` in every module;
holomorphy as `DifferentiableOn ℂ`, also for matrices; pointwise sup bounds; `∂_ω u = fderiv ℂ u θ (fun l => (ω l : ℂ))`
never abbreviated; `avg`; coordinatewise `IsPeriodicOn`; `IsUnit M.det`; explicit `0 < r`; `Real.rpow` exponents;
never `IntegrableOn` at a `Matrix` codomain). Additions:
- **Frequency.** In Part 2 the frequency is always the term `s • ωstar`, and `∂_ω` is `fun l => ((s • ωstar) l : ℂ)`.
  Never introduce a local `ω`; `isoNewS … • ωstar` is the new frequency.
- **Bordered norms.** `‖·‖` on `Fin n ⊕ Unit` matrices is the row-sum operator norm (the frozen (I8) row sums convert
  once, by `KAM.norm_le_iff_forall_rowSum`, which is index-generic). A `1 × n` row `Y` is `Fin n → ℂ` with norm written
  `∑ b, ‖Y b‖`; `Y ξ` is `Y ⬝ᵥ ξ`. The Neumann series and realness of inverses at `Fin n ⊕ Unit` use the index-generic
  `Linear.neumann_fintype` and `Linear.inv_im_eq_zero` (K's matrix versions are stated for `Fin n` only).
- **Energies.** `E₀ : ℝ`, compared as `(E₀ : ℂ)`, as in the frozen statement.
- **Part 3.** `n = 2`, `τ = 2`; `hR = realPart h`, the Part 5 carriers `toC`, `realAct`, `totalH`, `rhoInf`, `fractD`;
  `fractD B s₀ r₀ = KAM.Head.domainD 2 s₀ r₀ B` and `totalH h f = KAM.Head.hbold h f` hold by `rfl` (checked), so every
  K Part 4 bound applies unchanged.

## 2. Standing data, constants, rule 6, quarantine

### 2.1 Structures

| Blueprint | Lean | Fields | Produced by |
|---|---|---|---|
| `bpI:p1:setting` | `Linear.Setting n τ M σK σB σT D H ω γ` | `extends KAM.Apost.Standing` + `dH_le` | `IsoStanding.setting`; in Part 3 not used (Part 3 applies I-G1 only) |
| (A1)–(A4), (A6) of K | `Linear.AdmissibleNoTwist σK σB D H ω r β ε K` | K's `Admissible` fields except `twist` | `IsoAdmissible.toAdmissibleNoTwist` |
| `bpI:p2:standing` | `Apost.IsoStanding n τ M σK σB σT σω ν ωstar D H γ` | `extends Params`; (I1)–(I4) verbatim (5 bounds), `σω_gt`, `ν_pos`, `ωstar_ne`, `gamma_pos`, `dio` | `g1_explicit` from the frozen binders |
| `bpI:p2:admissible` | `Apost.IsoAdmissible σK σB σT D H ωstar E₀ r β ε s K` | `extends AdmissibleNoTwist … (s • ωstar)`; `s_gt`, `twist` (bordered), `energy_le` | `iteration` |
| hypotheses of `bpI:p2:iteration` | `Apost.IterHyp σK σB σT σω ν D H ωstar E₀ ρ μ e s₀ K` | (I5)–(I12) with margin `μ`, `ν ≤ ν(s₀)` | `g1_explicit` |
| `bpI:p3:setting` | Part 5's `HeadData`, `PerturbData` (+ `B'.Nonempty`) | verbatim I-HEAD premises | I-HEAD provider |
| `bpI:p3:patch` | `Charts.IsPatch h B r₀ B' η₁ c W Ψ δE δm ρc` | chart data and (P1)–(P3) | `cover` |

### 2.2 Rule 6

- Every structure field is a frozen hypothesis, a blueprint assumption item, or an item of a blueprint definition with
  its stated ranges. `IterHyp` is the hypothesis list of `bpI:p2:iteration`/`limit` verbatim.
- "There are `K_j, s_j`" (iteration), "`K_∞ := lim`" (limit), "Apply Lemma border-solve with …" (correction) are
  explicit definitions, so `limit` assumes exactly the hypotheses of `iteration`.
- `IG1Statement` and `G3Statement` are premises of the Part 3 nodes that apply I-G1 (`apply`, `tori`) and G3
  (`dio_open`, `rays`, `patch_rays`, `tori`): the blueprint's "Apply Theorem `bpI:p0:g1`", "`\Kref{bp:p0:g3}` gives". They
  are the frozen types verbatim (§P checks), never a Part 3 conclusion. This is K Part 4's accepted `GValid` design in
  `∀` form; the risk of an auditor rejecting it is the same (section 9).
- `part3_tori_of` (`tori` projected to Part 5's generic interface, forgetting the charts and rays) carries the two
  premises and has a distinct name; Part 5's `part3_tori` (premise-free, verbatim signature) is a provider-level
  corollary.

### 2.3 Constants

`bpI:p2:constants` (Lean `KAM.Iso.Apost`):

| Arguments | Constants |
|---|---|
| `(n τ M σK σB σT)` | `hatCS` (Ĉ_S), `hatCxiN`, `hatCg`, `hatCxi`, `hatCDK`, `hatCDelta`, `hatCpartial` (Ĉ_∂), `hatClin`, `hatCE1`, `hatCE2`, `hatCE`, `hatcStep`, `hatcSum` |
| `(n M σK σB σT)` | `CP` (C_P), `CY` (C_Y), `CDTbord` (C_{Δ𝖳}) |
| `(n τ M σK σB σT μ ν)` | `hatcStar` (ĉ_*) |
| `(n τ M σK σB σT γ ε δ)` | `dStep` (`d`) |
| `(n τ ρ ρinf M σK σB σT μ ν γbar)`, `(n τ ρ ρinf M σK σB σT)` | `isoC1`, `isoC2` (= C₂ = C₃) |

K constants reused unchanged: `kappa`, `aExp`, `cR`, `mSize`, `Theta`, `C_X`, `C_T`, `C_Omega`, `C_sym`, `C_red`,
`C_xi0`, `C_G`, `C_B`, `C_DN`, `C_DX`, `C_DT`, `delta0`. Every constant inequality used later (steps `co-xi0`,
`co-xi`, `co-omega`, `co-dk`, `ne-est`, `ne-energy`, `to-avg`, `to-inv`, `st-small`, `it-sums`, `it-stepsmall`, `g1-e`,
`g1-o`) is proved once in `Apost/ConstantsArith.lean` (package I2-2), on K's absorption pack (`mul_rpow_le`,
`div_absorb`, `absorb_mul_le`, `Correction.le_Theta_div`, `rpow_add_one_le`). I rechecked every one of these
inequalities against the definitions (section 5.2); all hold.

`bpI:p3:constants`: `s = KAM.Head.stripWidth`, `δ_* = deltaStar`, `μ = muParam`, `F_j = Fconst 2 s₀ r₀ j`,
`M = Mconst s₀ r₀ B h`, `M_h = hBound`, `c̄ = cbar 2`, `𝔇' = domainD'` (K Part 4, reused), `ρ_∞ = rhoInf` (Part 5),
new `rhoIso` (`ρ = s/4`), `dB`, `eta1`, `sSet` (`𝒮`, a `cthickening`), `mhConst`, `MgConst`, `ShConst` (sInf/sSup over
`𝒮`, attained by `compact`), `nuConst`, `sigmaOmegaConst`, `sigmaKConst` (= σ_B), `sigmaTConst`, `epsT`; `e = F₁ε` inline.

## 3. Node table (53 nodes) and classification

R = reuse of a K (or Part 5) declaration, W = thin wrapper / re-assembly of K helpers, N = new argument.

### 3.1 Part 1 (`p1-iso-linear`, namespace `KAM.Iso.Linear`)

| Node | Lean | Module | Class / K reused |
|---|---|---|---|
| `setting` | `Setting` | `Linear/Defs` | W: extends `KAM.Apost.Standing`. **Specialization (N1):** K's `Params` force `n ≥ 2`, `τ ≥ n-1`, `σ`'s `> 0` where the source states `τ ≥ 0`; every Part 1 declaration is a specialized implementation of its `τ ≥ 0` statement (sufficient for I-G1, whose data have `τ ≥ n-1`), not a formalization of the full range |
| `setting#k-bridge` | projection `Setting.toStanding`; `KAM.Torus.frozen_agreement` | — | R |
| `ray` | `isDiophantine_smul` | `Linear/Tools` | N (5 lines) |
| `ext-chain` | none (Mathlib `HasFDerivAt.comp`, `fderiv_add`, `fderiv_const`; `KAM.Matrix.Calculus`) | — | external |
| `ext-real-direction` | none (`KAM.Apost.im_fderiv_real_direction(_strip)`, `KAM.Head.fderiv_realInclusion_of_real`) | — | external, K |
| `ext-neumann` | `isUnit_det_one_sub` (any finite index) | `Linear/Tools` | N (Mathlib `Units.oneSub`) |
| `extended-basic` | `extended_basic`; helper `extended_regular` (any frequency, issue B1) | `Linear/Extended` | N on K: `frame_basic`, `periodicity`, `torsionAverage_eq_avg`, `averages`, `KAM.Apost.ham_real`, `matrix_facts` |
| `trivial` | `trivial_torus`; helpers `freq_map_local`, `freq_map_contDiff` | `Linear/Trivial`, `Linear/FreqMap` | N on K: `Head.UnperturbedFrame` (`fderiv_/gramMatrix_/normalFrame_/fderiv_normalFrame_unperturbedTorus`), `Head.hessian_mulVec_apply`, `fderiv_realInclusion_of_real`; freq-map (ii)–(iii) restated (issue B4) |
| `last-row` | `last_row` | `Linear/LastRow` | N on K: `ham_symplectic` (`Ω₀X_H = (DH)ᵀ`), `Identities.fi_LtON`, `sumVec_normalFrame`, `Frame.norm_*` |
| `energy-approx` | `energy_approx` (a)–(e); `energy_defect` (f) | `Linear/Energy`, `Linear/EnergyDefect` | N; (c) = `Exactness.etaN_apply`, (d) = `exactness`, `Exactness.avg_lagrangeMat`, `Tools.torusAverage_fderiv_apply_eq_zero`; (e) = `KAM.cohomological_apriori` + `cauchy_strip` |
| `energy-conservation` | `energy_conservation` | `Linear/Energy` | N: uniqueness clause of `KAM.cohomological` (Part 1) |
| `border-solve` | `BordData`, `bordAvg`, `bordSol`, `bordXi0`, `bordXiOmega`, `bordXiN`, `bordGL`, `bordXiL`; `border_solve` | `Linear/Defs`, `Linear/BorderSolve`, `Linear/BorderUnique` | **N (the new lemma)**; `uᴺ` = `triU`, `KAM.cohomological` (Part 1, hypotheses `γ>0, τ≥0, Dio` only), `Tools.cohConst_div_le_cR`, `Triangular.avg_sub`, `avg_mulVec_const` |
| `reduced` | `isoLinError`, `isoResidual`, `bordOp`; `reduced` | `Linear/Reduced` | N on K: `frame_identities` (a, e, f), `Identities.omega_mul_fromBlocks`, `Matrix.Calculus` product rule |
| `geometry-noA5` | `AdmissibleNoTwist`; `geometry_noA5` | `Linear/NoTwist` | W: `Geometry.geo_de/geo_domegak/geo_ered/geo_esym_le/geo_omegak_inputs/_arith/geo_esym_arith`, `cohomological`, `frame_basic` (b)–(d) — K's `geometry` proof never uses `twist` |
| `perturbation-noA5` | `perturbation_noA5` | `Linear/NoTwist` | W: `PerturbationAux.frame_items`, `ball_subset_of_close`, `norm_linMat_sub_le`, `norm_normalField_sub_le_strip`, `norm_torsion_sub_le`, `Frame.norm_transpose_le_two_mul` |

### 3.2 Part 2 (`p2-iso-iteration`, namespace `KAM.Iso.Apost`)

| Node | Lean | Module | Class / K reused |
|---|---|---|---|
| `standing` | `IsoStanding` | `Apost/Defs` | N (verbatim I1–I4) |
| `standing#k-bridge` | `IsoStanding.setting` | `Apost/Standing` | W |
| `ray` | `rayMargin`; `ray` | `Apost/Standing` | N |
| `constants` | §2.3 defs; `iso_constants_spec` (+ `ConstantsArith`) | `Apost/Defs`, `Constants`, `ConstantsArith` | N on K constants |
| `admissible` | `IsoAdmissible`; claim `IsoAdmissible.freq` | `Apost/Defs`, `Apost/Standing` | W: K `frequency` |
| `correction` | `isoBordData`, `isoXi`, `isoXiOmega`, `isoCorrection`, `isoNewS`; `correction` | `Apost/Correction` | N on `border_solve`, `geometry_noA5`, `extended_basic`, `energy_approx`; K `Correction.diffOn_sumElim/periodic_sumElim/isRealVec_sumElim/fderiv_sumElim_apply/sumVec_correction`-style helpers, `periodicity`, `Identities.fi_dL` |
| `newton-error` | `isoNewtonMap`, `isoQuadX`, `isoQuadH`; `newton_error` | `Apost/NewtonError` | N on `reduced`, `energy_defect`; K `sMat`, `sMat_spec`, `ham_mvt`, `KAM.taylor_iteratedFDeriv` (Δ²H with ½), `NewtonError.alg_core` pattern |
| `torsion` | `torsion_step` | `Apost/Torsion` | N on `perturbation_noA5`, `extended_regular`, `neumann_fintype`; K `cauchy_corollaries_directional`, `KAM.increments_open` |
| `step` | `step` | `Apost/Step` | N (mirrors K `step`) |
| `schedule` | `isoEpsSeq`, `isoDSeq`; claims = K `schedule` | `Apost/Schedule` | R (`deltaSeq`, `rSeq`, `schedule`) + N defs |
| `error-decay` | `iso_error_decay` | `Apost/Schedule` | W: K `error_decay` proof with `Ĉ_E` (only `0 ≤ C_E` is used); `KAM.quadratic_iteration` |
| `iteration` | `isoSeq`, `IterHyp`; `iteration` | `Apost/Iteration` | N (mirrors K `iteration`/`Stage`) |
| `limit` | `isoLimit`, `isoSLimit`; `limit` | `Apost/Limit` | W: K `Limit.lim_k/lim_dk/lim_holo/lim_primary/lim_close/lim_margins`, `tendstoUniformlyOn_telescope`; new: `s_j` Cauchy, invariance at the moving frequency |
| `energy-limit` | `energy_limit` | `Apost/Limit` | N: `KAM.increments_open`, `norm_torusAverage_le` |
| `g1` | `isoC1`, `isoC2`; `g1_explicit` | `Apost/G1` | N assembly; `energy_conservation` for (O3) |

### 3.3 Part 3 (`p3-iso-local-charts`, namespace `KAM.Iso.Charts`)

| Node | Lean | Module | Class / K reused |
|---|---|---|---|
| `setting` | Part 5 `HeadData`, `PerturbData`, `realAct` (+ `B'.Nonempty`, `τ = 2`) | `Confinement/Setting` (P5-0) | R (Part 5) |
| `setting#k-bridge` | `fractD_eq_domainD`, `totalH_eq_hbold` (`rfl`); K `derivative_bounds_design`, `norm_le_hBound` | `Charts/Defs` | R |
| `constants` | §2.3 Part 3 defs | `Charts/Defs` | R + N |
| `compact` | `compact` | `Charts/Constants` | N (`IsCompact.exists_isMinOn/IsMaxOn`, `freq_map_contDiff`, `KAM.real_inverse`-style adjugate continuity) |
| `ext-ift` | none: `HasStrictFDerivAt.toOpenPartialHomeomorph` (checked) | — | external |
| `ext-compact` | none: `IsCompact.exists_isMinOn`, `IsCompact.elim_finite_subcover`, `IsCompact.exists_cthickening_subset_open` (checked) | — | external |
| `ext-lebesgue` | none: `measure_mono`, `IsOpen.measure_pos`, `Bornology.IsBounded.measure_lt_top`, `measure_union_le` | — | external |
| `det-identity` | `det_identity` | `Charts/Coordinates` | N; template `KAM/Iso/Kepler.lean` (`det_fin_three` after `Matrix.reindex` along `Fin 2 ⊕ Unit ≃ Fin 3`) |
| `coordinates` | `perp` … `jac2`; `coordinates` | `Charts/Defs`, `Charts/Coordinates` | N |
| `slope-ray` | `slope_ray` | `Charts/Coordinates` | N |
| `chart` | `chart` | `Charts/Chart` | N (IFT) |
| `patch` | `IsPatch`, `IsPatch.toEnergyPatch` | `Charts/Defs` | N; target Part 5 `EnergyPatch` (constructor checked) |
| `cover` | `cover` | `Charts/Chart` | N |
| `dio-open` | `dio_open` (premise `G3Statement`) | `Charts/Rays` | N |
| `rays` | `IsRay`; `rays` | `Charts/Defs`, `Charts/Rays` | N |
| `patch-rays` | `patch_rays` (existence form) | `Charts/Rays` | N |
| `points` | `points` | `Charts/Points` | N |
| `hypothesis-d` | `hypothesis_d` | `Charts/Torus` | W: K `derivative_bounds_design`, `h1_domainD_add_intCast`, `h1_domainD_subset_domain`, `norm_iteratedFDeriv_hbold_le`, `cbar_mul_le_derivConstM`, `isOpen_domainD` (none takes `KAM.Head.Data`) |
| `torus` | `flatRemainder`; `torus` | `Charts/Torus` | N on K `UnperturbedFrame`, `ball_unperturbedTorus_subset_domainD`, `unperturbed_actionHessian_apply`, `actionHessian`; `last_row` (a), `neumann_fintype` |
| `apply` | `apply` (premise `IG1Statement`), last conjunct | `Charts/Apply` | N |
| `apply#constants` | the leading `∃ C₁ C₂ C₃, 0 < C₁ ∧ 0 < C₂ ∧ 0 < C₃ ∧ IG1Body 2 2 … ωs C₁ C₂ C₃` of `apply`: the full frozen conditional body at the chosen tuple, fixed per patch and ray before `f, ε, E` (audit F1) | `Charts/Apply` | — |
| `uniform` | `uniform` (finite min/max, existence) | `Charts/Tori` | N |
| `tori` | `ToriSide`; `tori` (outside `f, ε, I₀, E`: `p.c ∈ closure B'`, `p.W ⊆ 𝒰_c`, `p.m = chartM h p.c`, the two fixed rays `IsRay … (γp p) (ωsp p) p.mPlus` / `(γm p) (ωsm p) p.mMinus`; inside: output frequencies `sp • ωsp p`, `sm • ωsm p`; audit F2); separately named projection `part3_tori_of` to Part 5's generic interface | `Charts/Tori` | N |

`bpI:p0:g1` (frozen anchor): provider `KAM.Provider.Iso.isoenergetic_kam` (section 8). Step nodes are proved inside
their result node's package; the three bridge steps are mapped above.

### 3.4 Departures from the literal blueprint text

| # | Where | Lean form | Reason |
|---|---|---|---|
| D1 | all | `Fin n ⊕ Unit` matrices; rows as `Fin n → ℂ` with `∑ b, ‖·‖`; `Y ξ = Y ⬝ᵥ ξ` | frozen carrier |
| D2 | `p1:setting` | `Setting` extends K `Standing` (`τ ≥ n-1`, `σ`'s, `n ≥ 2`) although `p1` uses `τ ≥ 0` | K lemmas need it; every consumer has it (issue B3) |
| D3 | `p1:reduced`, `perturbation-noA5` | take `Setting` (Diophantine `ω`) where the text says "`ω ∈ ℝⁿ`" | K's helpers carry `Standing`; all uses are at Diophantine `ω` (issue B2) |
| D4 | `p1:extended-basic` | plus `extended_regular` at any frequency | `p2:torsion` needs it at `ω̄` (issue B1) |
| D5 | `p1:border-solve` | data packed as `BordData`; (c) stated for every upper bound `S ≥ ‖(ξ₀, ξ^ω)‖` and every bound `G` of `gᴸ`; second equation of (b) on `T_{r-δ}` | pointwise convention (K L6); stronger |
| D6 | `p1:energy-approx` | split into `energy_approx` (a)–(e) and `energy_defect` (f); suprema over `[0,1]ⁿ` as pointwise bounds | size; K L6 |
| D7 | `p1:energy-conservation` (c) | pointwise equality `‖H(K θ) - E₀‖ = ‖Ē - E₀‖` | implies the sup form |
| D8 | `p1:trivial` | `H = fun z => h z.2`, `D = univ ×ˢ U`, `K = KAM.Head.unperturbedTorus I`; det and inverse correspond under `Matrix.map ofReal` | literal |
| D9 | `p2:correction` | `s̄ = s (1 - Re ξ^ω)`; `(ξ^ω).im = 0` is a conclusion | `ξ^ω` is real (B5) |
| D10 | `p2:schedule`, `error-decay` | `δ_s, r_s` are K's; `isoEpsSeq` uses `Ĉ_E`; decay mirrors K | reuse |
| D11 | `p2:iteration`, `limit`, `energy-limit` | hypotheses bundled in `IterHyp`; `(K_j, s_j) = isoSeq`; `D_j` a `Finset.range` sum | rule 6; K L17 |
| D12 | `p2:g1` | the frozen body verbatim with `C₁ = isoC1`, `C₂ = C₃ = isoC2` | K L22 |
| D13 | `p3:constants` | `𝒮 = cthickening (d_B/2) (closure B')`; `m_h, M_g, S_h` as `sInf`/`sSup` (attained by `compact`) | literal |
| D14 | `p3:coordinates` | stated for any `c ∈ U` (blueprint: `c ∈ closure B'`) | generalization |
| D15 | `p3:patch` | `IsPatch` also carries `c ∈ closure B'`, `W ⊆ 𝒰_c`, `W ⊆ B` (derivable from P1) and the chart properties; `toEnergyPatch` builds Part 5's carrier | Part 5 interface |
| D16 | `p3:cover`, `patch-rays`, `uniform` | existence forms (finite family of patch data indexed by a `Finset` of centres; rays and `ε₁, C_K` existential) | only bounds are used (PART58 D1) |
| D17 | `p3:points` | one ray per statement (both signs are instances); the homeomorphism of the energy segment as `Set.BijOn` | symmetry; the restriction of the homeomorphism `Φ|W` |
| D18 | `p3:apply`, `tori` | premises `IG1Statement`, `G3Statement` | quarantine (§2.2) |
| D20 | `p2:g1`, `p3:apply` | the frozen inner body is the definition `IG1Body` (verbatim); `g1_explicit` states `0 < C₁ ∧ 0 < C₂ ∧ 0 < C₃ ∧ IG1Body …`, definitionally the frozen body (§P `type_of%` check unchanged) | one copy of the body; 1500-line cap |
| D19 | `p3:tori` (T6) | `K(θ)₂ ∈ 𝒮` for real `θ` as `∃ J ∈ 𝒮, (K (toC x)).2 = toC J` | complex carrier (B8) |

## 4. Reuse map K → I and the merge state

### 4.1 K declarations reused (by I package)

- **Carrier** (all packages): `KAM.Torus.{Basic, Objects, FrozenAgreement}`, `KAM.Matrix.{Calculus, Norms, Neumann,
  Inverse, Bridges}`, `KAM.Torus.avg`, `IsPeriodicOn`, `IsRealVec`, `IsRealMat`.
- **Standing/constants**: `KAM.Apost.{Params, Standing}`, all of `KAM.Apost.Constants` (defs, absorption lemmas,
  `step_small`-style dominance as models), `KAM.Apost.Correction` arithmetic (`gd_pos`, `le_Theta_div`,
  `rpow_add_one_le`, `xi0_arith`… as templates).
- **Part 1 frame**: `KAM.Apost.{Tools (cohR, cohomological, averages, matrix_facts), Hamiltonian, Periodicity, Frame,
  Identities, Exactness, Geometry (helpers), Perturbation, PerturbationTorsion (helpers), Triangular (triU, avg helpers)}`;
  Part 1 Strip: `KAM.cohomological` (`Strip/CohomologicalNodes`), `cohomological_apriori(_pi)`,
  `KAM.cauchy_strip`, `cauchy_corollaries_*`, `KAM.taylor_iteratedFDeriv`, `KAM.increments_open`,
  `KAM.uniform_limits(_isPrimaryOnStrip/_isRealOnReals)`, `norm_torusAverage_le`, `real_inverse`, `holomorphic_inverse`.
- **Part 2**: `KAM.Apost.{sMat, sMat_spec}` (NewtonError), `deltaSeq`, `rSeq`, `schedule`, `delta0` (Schedule),
  `Limit.{tendstoUniformlyOn_telescope, lim_k, lim_dk, lim_holo, lim_primary, lim_close, lim_margins}`,
  `KAM.quadratic_iteration`, `KAM.norm_le_iff_forall_rowSum`.
- **Part 3**: `KAM.Head.{Data (stripWidth, deltaStar, muParam, domainD, domainD', cbar, unperturbedTorus, hbold), Defs
  (Hconst, Fconst, Mconst, gradC, hessian, actionHessian), HBounded, DerivativeBounds, Adapters
  (derivative_bounds_design), H1 (`h1_domainD_*`; the `Data`-taking ones are not usable), UnperturbedFrame, Unperturbed (unperturbed_actionHessian_apply,
  unperturbed_norm_actionHessian_le), Frequency (non-`Data` helpers: fderiv_realInclusion_of_real,
  differentiableAt_re_comp, hessian_mulVec_apply, realInclusion_single)}`; `KAM/Iso/Kepler.lean` as the determinant
  template.
- **Not reused** (and why): K's `Admissible` (its `twist` is the unbordered `⟨T⟩`, which may be singular here), hence
  K's `geometry`, `correction_spec`, `xi_equation`, `newton_error`, `perturbation`, `step`, `iteration`, `limit`,
  `g1_explicit` as stated; their helpers are reused instead. K's `triXi0` (unbordered); `epsSeq`, `dSeq` (fixed
  `C_E`, `C_ΔK`); `KAM.Head.freq_map` (carries the Kolmogorov `Data`, issue B4); K's sealed anchors (none is needed).

### 4.2 What is genuinely new

`border_solve` (bordered system, its uniqueness and the frequency correction absorbing the mean); `extended_basic`,
`last_row`, `trivial_torus` (the extended torsion); the energy identities and energy conservation; `reduced` (the
linearized isoenergetic equation in the frame, the `L Δω` term); the Part 2 step with a moving frequency on the ray
(`newton_error` with `ξ^ω ∂_ωΔK`, `torsion_step` with the change of frequency and the energy row); all of Part 3.

### 4.3 Merge state (checked 2026-10-28)

At the worktree's base (`inp` `6de19bf`) `inp` had the early K modules byte-identical to `main` (`Apost/{Standing …
Triangular, Perturbation(Torsion), Schedule}`, `Torus/*`, `Matrix/*`, `Strip/*`) and 17 of `main`'s 36 `Head/*` files.
The modules this design needs beyond those are `KAM/Apost/{Correction, NewtonError, Limit}` and
`KAM/Head/{UnperturbedFrame, Unperturbed, Frequency, H1}`. **M0 (merge `main` into `inp`) has since happened:** `inp`
at `f56dab7` has all 19 `Apost/*` and all 36 `Head/*` files, and the sealed K anchors. `KAM/Frozen/Iso` is identical on
both. Part 5's `KAM/Iso/Confinement/Setting.lean` (P5-0) has landed on `inp` (`6564ca8`). Not needed by I: K's
`Apost/{Step, Iteration, G1}`, `Uniq/*`. The worktree has no build of these modules, so provers' worktrees must use
the overlay on a build snapshot that contains them.

## 5. Blueprint issues and arithmetic check

### 5.1 Issues (no false statement found; the frozen I-G1 looks right)

- **B1** (`bpI:p2:torsion`, p2 L206 and L216). The lemma applies Lemma `bpI:p1:extended-basic` "to `K̄` on
  `T_{r-3δ}`" at the frequency `ω̄`, while that lemma assumes `bpI:p1:setting`, which includes `ω ∈ Dio_{γ,τ}`; L206 says
  "no Diophantine property of `ω̄` is used here". The proof of `extended-basic`(a) indeed uses no Diophantine property,
  but its stated premise is not met. Lean: `extended_regular` (any real frequency; only the Hamiltonian fields of a
  standing at some Diophantine `ω₀`). Suggest: state `extended-basic`(a) without the Diophantine condition.
- **B2** (`bpI:p1:reduced` L484 "`ω ∈ ℝⁿ` (any)"; `bpI:p1:perturbation-noA5` L567 "`ω ∈ ℝⁿ`"). Both also "assume
  p1:setting" (Diophantine `ω`). Lean takes the setting; all uses are at the Diophantine iterate frequency. Wording.
- **B3** (`bpI:p1:setting` L31). "`τ ≥ 0` … only `τ ≥ 0` is used": Lean's `Setting` extends K's `Standing` (`τ ≥ n-1`,
  `σ`'s positive), as K's tools require; harmless (D2).
- **B4** (`bpI:p3:setting#k-bridge`, and `p1:trivial` step `tr-compare`). The bridge cites K's freq-map (ii)–(iii) as
  using no `L_h`; true of the proofs, but the Lean `KAM.Head.freq_map` and its components take `KAM.Head.Data`, whose
  `nondeg` field (Kolmogorov) is not available for an isoenergetically nondegenerate `h`. Lean: `freq_map_local`,
  `freq_map_contDiff` restate them (same proofs, about 120 lines). Not a blueprint error; an API gap of K Part 4.
- **B5** (`bpI:p2:correction` L138). `s̄ = s(1 - ξ^ω)` presupposes `ξ^ω ∈ ℝ`, proved in the same lemma; Lean uses
  `Re ξ^ω` and proves `Im ξ^ω = 0` (D9).
- **B6** (`bpI:p3:points` L254). "`Φ` maps … homeomorphically onto `{E} × [-δ_m, δ_m]`": stated as `Set.BijOn` of the
  restriction of the homeomorphism `Φ|_W` (continuity of both directions is inherited). Wording.
- **B7** (`bpI:p1:border-solve` (b)). The second equation holds on `T_{r-δ}` (step `bs-energy`), stronger than stated.
- **B8** (`bpI:p3:tori` (T6) L382). "`K_±(θ)₂ ∈ 𝒮`" for real `θ`: `K_±(θ)₂ ∈ ℂ²`; meant is its real point (D19).
- **B9** (interface, `PART58-LEAN-DESIGN.md` §2 and §7). Part 5's plan "[Part 3 final module (imports sealed I-G1)] ←
  Provider.Iso.AllTimeConfinement" conflicts with PROVER-COMMON (no non-provider module imports a frozen theorem, even
  sealed). Resolved here by the premises (§2.2, §8.2); `part3_tori`'s signature is unchanged and moves into the I-HEAD
  provider file.
- Graph: the `SOURCE_SCOPE_INCONSISTENCY` note on `bpI:p3:constants` (`e := F₁ε` among the "`f`-independent"
  constants) is already recorded; Lean keeps `e` inline (`Fconst 2 s₀ r₀ 1 * ε`).

### 5.2 Arithmetic rechecked

Against the Lean definitions of §2.3 (with `σ_T ≤ 𝔪`, `γδʲ ≤ Θ`, `ε, δ ≤ 1`, `a = 2κ + 2 ≥ 8`): `co-xi0`
(`σ(2n𝔪²ε + C_T δ⁻¹ c_R γ⁻¹δ^{-κ} 2n𝔪ε) ≤ C_{ξ₀} ε/(γδ^{κ+1})`; second entry `≤ (𝔪Θ + 2nc_R𝔪⁵)ε/(γδ^{κ+1})`), `co-xi`
(Ĉ_ξN, Ĉ_g with the extra `|ω|S_*`, Ĉ_ξ, Ĉ_ΔK), `co-omega` (`Θ²Ĉ_S`), `co-dk` (`|∂_ωP| ≤ C_P/δ`, `Ĉ_∂`, using
`κ + 2 ≤ a + 1`), `ne-est` (`E_lin ≤ Ĉ_lin ε²/(γ²δ^{a+1})` with `2κ+3 = a+1`; the three terms over `γ⁴δ^{2a}` via
`γ²δ^{a-1} ≤ Θ²` and `γδ^{κ} ≤ Θ`), `ne-energy` (`Ĉ_E2`, using `γδ^{κ+1} ≤ Θ`), `to-omega`/`to-row`/`to-avg`
(`8n²𝔪⁴`, `C_Y`, `C_{Δ𝖳}`), `to-inv` (`2𝔪²C_{Δ𝖳}`), `st-small` (`ĉ_step ≥ 2Θ³C_sym, 2Θ²Ĉ_Δ, 2𝔪Θ²C_{Δ𝖳}Ĉ_Δ`),
`it-sums` (`ĉ_sum`, `ĉ_* ≥ 4Θ²Ĉ_Δ/ν`), `it-stepsmall`, `g1-e`, `g1-o`, and Part 3's `ap-ray`, `to-neumann`
(`ε_T`), `to-torsion` (`|R| ≤ 2F₂ε`, `F₁ ≤ F₂`). All hold. HL19 errata E1–E5 of the blueprint are consistent with what
the Lean statements need; nothing new.

## 6. Modules and import DAG

Sizes are estimates; hard cap 1500 lines, target ≤ 800.

| Module | Content | Lines |
|---|---|---|
| `KAM/Iso/Linear/Defs.lean` | `Setting`, `energyRow`, `bordMat`, `extendedTorsion_eq_bordMat`, `BordData`, `bordAvg` … `bordXiL`, `isoLinError`, `isoResidual`, `bordOp`, `AdmissibleNoTwist` | 200 |
| `Linear/Tools.lean` | `isDiophantine_smul`, `isUnit_det_one_sub`, `neumann_fintype`, `inv_im_eq_zero` | 200 |
| `Linear/FreqMap.lean` | `freq_map_local`, `freq_map_contDiff` | 200 |
| `Linear/Extended.lean` | `extended_basic`, `extended_regular` | 450 |
| `Linear/LastRow.lean` | `last_row` | 300 |
| `Linear/Energy.lean`, `Linear/EnergyDefect.lean` | `energy_approx`, `energy_conservation`; `energy_defect` | 500 + 300 |
| `Linear/Trivial.lean` | `trivial_torus` | 350 |
| `Linear/BorderUnique.lean`, `Linear/BorderSolve.lean` | uniqueness (d) as `border_unique`; (a)–(c), (e), assembled `border_solve` | 250 + 550 |
| `Linear/Reduced.lean` | `reduced` | 450 |
| `Linear/NoTwist.lean` | `geometry_noA5`, `perturbation_noA5` | 350 |
| `KAM/Iso/Apost/Defs.lean` | `IsoStanding`, `rayMargin`, `IsoAdmissible`, the 18 constant defs, `dStep`, `isoBordData` … `isoQuadH`, `isoEpsSeq`, `isoDSeq`, `isoSeq`, `IterHyp`, `isoLimit`, `isoSLimit`, `isoC1`, `isoC2` | 250 |
| `Apost/Standing.lean` | `IsoStanding.setting`, `ray`, `IsoAdmissible.freq` | 250 |
| `Apost/Constants.lean`, `Apost/ConstantsArith.lean` | `iso_constants_spec`; every constant inequality of §5.2 | 300 + 650 |
| `Apost/Correction.lean` | `correction` (+ `isoNewS_smul_eq`: `(s̄ • ω* : ℂⁿ) = (1 - ξ^ω) • ω`) | 600 |
| `Apost/NewtonError.lean` | `newton_error` | 650 |
| `Apost/Torsion.lean` | `torsion_step` | 550 |
| `Apost/Step.lean` | `step` | 300 |
| `Apost/Schedule.lean` | `iso_error_decay` | 350 |
| `Apost/Iteration.lean` | `iteration` (+ `isoSeq_zero/succ` simp lemmas, an `IsoStage` structure as K's `Stage`) | 650 |
| `Apost/Limit.lean` | `limit`, `energy_limit` | 550 |
| `Apost/G1.lean` | `g1_explicit` | 300 |
| `KAM/Provider/Iso/IsoenergeticKam.lean` | provider (exists, empty, quarantined) | 60 |
| `KAM/Iso/Charts/Inputs.lean` | `IG1Body`, `IG1Statement`, `G3Statement` (imports frozen definitions and Mathlib only) | 80 |
| `Charts/Defs.lean` | bridges, Part 3 constants and coordinate defs, `IsPatch`, `toEnergyPatch`, `IsRay`, `flatRemainder`, `ToriSide` | 250 |
| `Charts/Constants.lean` | `compact` | 300 |
| `Charts/Coordinates.lean` | `det_identity`, `coordinates`, `slope_ray` | 450 |
| `Charts/Chart.lean` | `chart`, `cover` | 500 |
| `Charts/Rays.lean`, `Charts/Points.lean` | `dio_open`, `rays`, `patch_rays`; `points` | 300 + 350 |
| `Charts/Torus.lean` | `hypothesis_d`, `torus` | 550 |
| `Charts/Apply.lean`, `Charts/Tori.lean` | `apply`; `uniform`, `tori`, `part3_tori_of` | 350 + 600 |

**Import DAG** (`A ← B`: B imports A; `[…]` K modules after M0, e.g. `[Apost.Frame]` = `KAM/Apost/Frame`;
`Apost'.X` = `KAM/Iso/Apost/X`; `{P5}` = Part 5's `Confinement/Setting`):

```
[Apost.Standing, Apost.Tools, Torus.Objects, Frozen.Iso.Defs.*]     ← Linear.Defs
Linear.Defs, [Matrix.Neumann, Matrix.Inverse]                          ← Linear.Tools
Linear.Defs, [Head.Defs, Head.Frequency]                               ← Linear.FreqMap
Linear.Defs, [Apost.Frame, Apost.Periodicity, Torus.FrozenAgreement]   ← Linear.Extended
Linear.Defs, [Apost.Identities, Apost.Hamiltonian]                     ← Linear.LastRow
Linear.Defs, [Apost.Exactness, Strip.CohomologicalNodes, Strip.CohomologicalOperator, Strip.Bridges] ← Linear.Energy ← Linear.EnergyDefect
Linear.Tools, Linear.FreqMap, [Head.UnperturbedFrame]                  ← Linear.Trivial
Linear.Tools, [Strip.CohomologicalNodes, Apost.Triangular]             ← Linear.BorderUnique ← Linear.BorderSolve
Linear.Tools, [Apost.Identities, Matrix.Calculus]                      ← Linear.Reduced
Linear.Defs, [Apost.Geometry, Apost.PerturbationTorsion]               ← Linear.NoTwist
Linear.Defs, [Apost.Constants]                                         ← Apost'.Defs   (KAM/Iso/Apost/Defs)
Apost'.Defs, Linear.Tools, [Apost.Frame]                               ← Apost'.Standing
Apost'.Defs                                                            ← Apost'.Constants ← Apost'.ConstantsArith
Apost'.Standing, Apost'.ConstantsArith, Linear.{Extended, Energy, BorderSolve, NoTwist}, [Apost.Correction] ← Apost'.Correction
Apost'.Correction, Linear.{Reduced, EnergyDefect}, [Apost.NewtonError, Strip.Taylor]           ← Apost'.NewtonError
Apost'.Correction, Linear.NoTwist, [Strip.Limits, Strip.Bridges]      ← Apost'.Torsion
Apost'.NewtonError, Apost'.Torsion                                    ← Apost'.Step
Apost'.ConstantsArith, [Apost.Schedule, Analysis.Iteration]           ← Apost'.Schedule
Apost'.Step, Apost'.Schedule                                          ← Apost'.Iteration ← Apost'.Limit [Apost.Limit] ← Apost'.G1 ← Provider.Iso.IsoenergeticKam
Charts.Inputs                                                          ← Apost'.G1   (`IG1Body`)
[Frozen.Iso.Defs.*, Frozen.Defs.*]                                     ← Charts.Inputs
{P5}, Charts.Inputs, Linear.Defs, [Head.Data, Head.Defs, Head.Adapters] ← Charts.Defs
Charts.Defs, Linear.FreqMap, [Head.HBounded]                           ← Charts.Constants ← Charts.Coordinates ← Charts.Chart
Charts.Chart                                                           ← Charts.Rays ← Charts.Points
Charts.Constants, Linear.{LastRow, Tools}, [Head.UnperturbedFrame, Head.Unperturbed, Head.H1] ← Charts.Torus
Charts.Points, Charts.Torus                                            ← Charts.Apply ← Charts.Tori
Charts.Tori, Confinement.Main, [sealed Frozen.Iso.Theorems.IsoenergeticKam, Frozen.Theorems.VolumeNotDiophantineLe] ← Provider.Iso.AllTimeConfinement
```
No implementation module imports a provider or a frozen theorem; only frozen definitions (`KAM/Frozen/**/Defs`). Part 3
does not import Part 2 (it uses I-G1 only through `IG1Statement`); Part 2 imports only the light `Charts/Inputs`.

## 7. Prover packages

Each package proves its declarations exactly as in Appendix A; a package changes a signature only through the
orchestrator, after a statement audit. **Hard rules, verbatim, for every Lean brief:**
1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure is
   a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not
   elaborate at default heartbeats, report it as a design signal.
2. No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules,
   preserving public import paths as cheap facades.

Also AGENTS.md rules 3–11 (module system, no `axiom`/`sorry`, frozen read-only, rule 6, `Fin n → ℝ/ℂ` carriers,
one targeted build at a time, quarantine, errata reporting). Builds: one Lean process, `LEAN_NUM_THREADS=1`.

**Prerequisites.** M0 (merge `main` into `inp`) and P5-0 (Part 5's `Confinement/Setting.lean`, gates Part 3 only) are
both done on `inp` `f56dab7`; the build snapshot used by prover worktrees must include them. I-D0 (orchestrator,
wave 0, no proofs beyond the `rfl`/`ext` bridges): land `Linear/Defs`, `Apost/Defs`, `Charts/Inputs`, `Charts/Defs` verbatim from
Appendix A (as K Part 4's P4-0a/b).

| Package | Nodes | Modules | Lines | After | Wave |
|---|---|---|---|---|---|
| I1-1 Tools | `p1:ray`, `ext-neumann`; finite-index Neumann/realness; freq-map restated | `Linear/Tools`, `Linear/FreqMap` | 400 | D0 | 1 |
| I1-2 Extended torsion | `extended-basic` (+ `extended_regular`), `last-row` | `Linear/Extended`, `Linear/LastRow` | 750 | D0 | 1 |
| I1-3 Energy | `energy-approx`, `energy-conservation` | `Linear/Energy`, `Linear/EnergyDefect` | 800 | D0 | 1 |
| I1-7 No twist | `geometry-noA5`, `perturbation-noA5` | `Linear/NoTwist` | 350 | D0 | 1 |
| I2-2 Constants | `p2:constants` (all inequalities of §5.2) | `Apost/Constants`, `ConstantsArith` | 950 | D0 | 1 |
| I1-4 Trivial torus | `trivial` | `Linear/Trivial` | 350 | I1-1 | 2 |
| I1-5 Border solve | `border-solve` | `Linear/BorderUnique`, `Linear/BorderSolve` | 800 | I1-1 | 2 |
| I1-6 Reduced | `reduced` | `Linear/Reduced` | 450 | I1-1 | 2 |
| I2-1 Standing | `p2:standing#k-bridge`, `ray`, `admissible` claim | `Apost/Standing` | 250 | I1-1 | 2 |
| I2-7 Schedule | `schedule`, `error-decay` | `Apost/Schedule` | 350 | I2-2 | 2 |
| I3-1 Charts I | `p3:compact`, `det-identity`, `coordinates`, `slope-ray` | `Charts/Constants`, `Charts/Coordinates` | 750 | I1-1, P5-0 | 2 |
| I2-3 Correction | `p2:correction` | `Apost/Correction` | 600 | I1-2, I1-3, I1-5, I1-7, I2-1, I2-2 | 3 |
| I3-2 Charts II | `chart`, `cover` | `Charts/Chart` | 500 | I3-1 | 3 |
| I3-4 Flat torus | `hypothesis-d`, `torus` | `Charts/Torus` | 550 | I1-2, I3-1 | 3 |
| I2-4 Newton error | `newton-error` | `Apost/NewtonError` | 650 | I2-3, I1-6 | 4 |
| I2-5 Torsion | `p2:torsion` | `Apost/Torsion` | 550 | I2-3 | 4 |
| I3-3 Rays, points | `dio-open`, `rays`, `patch-rays`, `points` | `Charts/Rays`, `Charts/Points` | 650 | I3-2 | 4 |
| I2-6 Step | `step` | `Apost/Step` | 300 | I2-4, I2-5 | 5 |
| I3-5 Apply, tori | `apply` (+`#constants`), `uniform`, `tori` | `Charts/Apply`, `Charts/Tori` | 950 | I3-3, I3-4 | 5 |
| I2-8 Iteration | `iteration` | `Apost/Iteration` | 650 | I2-6, I2-7 | 6 |
| I2-9 Limit | `limit`, `energy-limit` | `Apost/Limit` | 550 | I2-8 | 7 |
| I2-10 G1, provider | `p2:g1` (`g1_explicit`), provider | `Apost/G1`, `Provider/Iso/IsoenergeticKam` | 360 | I2-9, I1-3 | 8 |

**Parallelism.** Wave 1 runs five packages (I1-1, I1-2, I1-3, I1-7, I2-2); wave 2 six; Part 3 runs alongside from
wave 2 and finishes in wave 5, independent of Part 2 (premise design). **Critical path** I1-1 → I1-5 → I2-3 → I2-4 →
I2-6 → I2-8 → I2-9 → I2-10 (8 waves after D0). Seal of I-G1 after I2-10: `by exact KAM.Provider.Iso.isoenergetic_kam
hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar hσω hν ωstar hωstar` (D26 guard: all explicit binders, by name). Before
wave 1, an independent statement audit of Appendix A (skill `lean-statement-audit`, GPT-6.1-Sol per D21/D24) is
recommended, with the Part 3 interface audited jointly with `PART58` section I.

**Proof plans for the delicate packages.**
- *I1-5*: follow steps `bs-first` … `bs-real`. `uᴺ` facts from `KAM.cohomological` (vector clause) with
  `cohConst_div_le_cR`; averages via `Triangular.avg_mulVec_const`, `avg_sub` and a `⬝ᵥ` analogue; the bordered average
  system by `Matrix.mulVec_mulVec` and `Matrix.mul_nonsing_inv` on `Fin n ⊕ Unit`; read off rows with
  `fromBlocks_mulVec`. Uniqueness (d) in its own module: zero-average periodic solutions of `Du ω = 0` vanish (Part 1
  uniqueness clause with `g = 0`), then invertibility of `𝒯`.
- *I1-7*: copy K's `geometry` proof (20 lines) with `AdmissibleNoTwist` fields; `perturbation_noA5` is K's
  `perturbation` proof minus its `twist_neumann` tail.
- *I2-3/I2-4*: never unfold `bordSol`; use `border_solve`'s conjuncts. Prove `isoNewS_smul_eq` once. The expansion
  `ne-expand` is `NewtonError.sumVec_invarianceError_newtonMap`'s pattern plus the frequency term.
- *I2-5*: `extended_regular` for continuity at `ω̄`; the torsion is linear in the frequency (`torsion` unfolds to
  `Nᵀ Ω₀ (A N - ∂_ω N)`), so `T_ω̄ - T_ω = -N̄ᵀΩ₀ ∂_{Δω}N̄` is one `ring_nf`-free rewrite with `map_sub`.
- *I3-1*: `det_identity` by reindexing `𝖡_h(I)` along `Fin 2 ⊕ Unit ≃ Fin 3` then `Matrix.det_fin_three` + `ring`
  (the `KAM/Iso/Kepler.lean` technique), symmetry from `freq_map_local`.
- *I3-5*: `tori` assembles `cover`, `patch_rays`, `apply` per patch and sign (finite choice), `uniform`, then (T1)–(T7);
  the Cauchy bound (T4) is `KAM.cauchy_strip` with `δ = ρ_∞/2` on the pair `(u, v)`.

## 8. Provider assembly and the Part 5 interface

### 8.1 I-G1

`g1_explicit` states `0 < isoC1 … ∧ 0 < isoC2 … ∧ 0 < isoC2 … ∧ IG1Body n τ … ωstar (isoC1 …) (isoC2 …) (isoC2 …)`,
with `IG1Body` the frozen inner body verbatim (D20), and the frozen binders in the frozen order. The provider is one anonymous constructor (checked by `example : type_of%
@KAM.Iso.isoenergetic_kam := …` in §P):
```lean
-- KAM/Provider/Iso/IsoenergeticKam.lean   (public import KAM.Iso.Apost.G1)
theorem KAM.Provider.Iso.isoenergetic_kam {n : ℕ} (hn : 2 ≤ n) … (ωstar) (hωstar : ωstar ≠ 0) : <frozen type> :=
  ⟨_, _, _, KAM.Iso.Apost.g1_explicit hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar hσω hν ωstar hωstar⟩
```
**Inside `g1_explicit`** (steps `g1-*`): build `IsoStanding` from (I1)–(I4), (I10), the parameter binders; convert the
(I7), (I8) row sums to norms (`KAM.norm_le_iff_forall_rowSum`; `0 ≤ σ - μ` from a nonempty row index set); `e ≤ 1` and
`ĉ_* e/(γ⁴δ₀^{2a}) < 1` from (I13) (`isoC1 ≥ ρ^{4τ}γ̄⁴`, `≥ ρ^{4τ}ĉ_*δ₀^{-2a}`); `IterHyp` from (I5)–(I12) with
`ν ≤ ν(s)` from the two (I9) inequalities; then `limit`, `energy_limit`, `energy_conservation` ((O3) pointwise; no frame
of `K_∞` is used), and the `rpow` identity `2Ĉ_Δ e/(γ²δ₀^a) = isoC2 · e/(γ²ρ^{2τ})`.

### 8.2 Part 3 → Part 5 (`part3_tori`)

Part 5 (`PART58` §10.1) consumes `ChartCover` and `ToriExistence` through `part3_tori (hd) (hne)`. This design delivers:
- `KAM.Iso.Charts.tori (hd) (hne) (hG1 : IG1Statement) (hG3 : G3Statement)`: the full (T1)–(T7) (`ToriSide`), over
  patches built by `IsPatch.toEnergyPatch`, with `η₁ = eta1 η B B'`, `F₁ = Fconst 2 s₀ r₀ 1` (as Part 5's
  `ChartCover.dbound` needs). Before the `f, ε, I₀, E` quantifiers it records, for every patch, `p.c ∈ closure B'`,
  `p.W ⊆ 𝒰_c`, the chart identity `p.m = chartM h p.c` (so the T7 ordering is about the gradient-direction slope
  `m_c`) and the two rays `ωsp p`, `ωsm p` with their Diophantine constants; the output frequencies are `sp • ωsp p`,
  `sm • ωsm p` with `1 < sp, sm < σ_ω` (audit F2). No input premise was added;
- `part3_tori_of` (same premises), a separately named projection that forgets the charts and rays: exactly Part 5's
  generic conclusion; proof written out (checked).
- `part3_tori` with Part 5's verbatim signature lives in the I-HEAD provider `KAM/Provider/Iso/AllTimeConfinement.lean`,
  body `KAM.Iso.Charts.part3_tori_of hd hne @KAM.Iso.isoenergetic_kam @KAM.volume_not_diophantine_le` (checked).
  It needs the I-G1 seal. **Seal-free alternative** (orchestrator's call): add to `Apost/G1.lean` (importing the light
  `Charts/Inputs`) the 3-line theorem `KAM.Iso.Apost.ig1Statement : KAM.Iso.Charts.IG1Statement` (body checked in
  §P); then the I-HEAD provider imports only the sealed G3 and `Apost.G1`, and Part 5 waits for I2-10, not for the
  seal.

Coordination points with Part 5 (none changes a Part 5 signature): `totalH`, `rhoInf`, `fractD`, `realPart`, `toC`
are Part 5's; `TorusOutput.close` uses `(θ, toC I)`, which is `unperturbedTorus I θ` by `rfl`; Part 5's §2 table line
"Part 3 final module (imports sealed I-G1)" should read "provider imports sealed I-G1 and G3" (B9).

## 9. Risks

### 9.1 Elaboration

The signatures alone take 30–61 s wall and 3.3 GB with one thread (no statement is slow).
- **Large conjunctions** (`border_solve` 5 groups, `iteration` 6, `torus` 6, `correction` 5): one helper per item,
  assemble by anonymous constructor; never one tactic block for a whole conjunction.
- **`Fin n ⊕ Unit` blocks**: work with `fromBlocks_multiply`, `fromBlocks_mulVec`, `replicateCol/replicateRow`
  lemmas; no entrywise `simp [Matrix.mul_apply, Fintype.sum_sum_type]` on full products. `extendedTorsion_eq_bordMat` is
  the only `ext … rfl` bridge.
- **`isoSeq` pairs**: state `isoSeq_zero`, `isoSeq_succ_fst`, `isoSeq_succ_snd` as `rfl` simp lemmas and an `IsoStage`
  structure (K's `Stage`), then induct; never unfold the recursion inside a bound.
- **Constants**: opaque downstream, every inequality once in `ConstantsArith`; no `nlinarith`/`positivity` on unfolded
  `mSize` polynomials (K lesson).
- A default-heartbeat failure is a design signal (hard rule 1): split the proof.

### 9.2 Interfaces and premises

- **Rule 6 acceptance of `IG1Statement`/`G3Statement`** (the K Part 4 `GValid` risk, here in `∀` form). If rejected:
  Part 3's `apply`/`tori` move to depend on `Apost.G1` (in-tree discharge, §8.2) — signatures change only by dropping
  `hG1`; G3 would still need the premise or a provider-level `tori`.
- **Part 5 interface** (`EnergyPatch` 28 fields, `ToriExistence`): `toEnergyPatch` is checked; any change in Part 5's
  `Setting.lean` must be mirrored in `Charts/Defs` and `part3_tori_of` (one lemma).
- **Build snapshot.** M0 is merged on `inp`; the snapshot that prover worktrees overlay must be rebuilt from `inp`
  `f56dab7` or later (it must contain `Apost/{Correction, NewtonError, Limit}`, `Head/{UnperturbedFrame, Unperturbed,
  Frequency, H1}` and `Iso/Confinement/Setting`).

### 9.3 Mathlib/K gaps (all checked in the scratch environment)

`Matrix.col/row` are now column/row *extractors*; the constructors are `Matrix.replicateCol/replicateRow` (used).
`HasStrictFDerivAt.toOpenPartialHomeomorph`, `IsCompact.exists_cthickening_subset_open`, `Metric.cthickening` exist.
K's matrix Neumann/realness lemmas are `Fin n`-only → `neumann_fintype`, `inv_im_eq_zero` (index-generic, via
`Matrix.nonsing_inv_eq_ringInverse` and the ring lemmas of `KAM/Matrix/Neumann.lean`). `KAM.Head.freq_map` needs the
Kolmogorov `Data` → `freq_map_local` (B4). `fun hn …` against a statement with interleaved implicit binders binds the
implicits: write `fun {_} hn {_} hτ …` (as in §P).

### 9.4 Errata candidates (reported, not edited)

B1, B2, B5, B6, B7, B8 above (blueprint-I wording), and B9 (Part 5 design text). No defect in HL19 beyond the
blueprint's E1–E5; no doubt about the frozen I-G1, which is proved as stated.

## 10. Audit fixes (audit 1, `PART123-design-audit-1.md`, verdict FAIL on F1, F2)

| Finding | Resolution |
|---|---|
| F1 medium: `apply` did not keep the frozen conditional body at the chosen G1 tuple (`bpI:p3:apply#constants`) | Adopted the audit's replacement: new definition `IG1Body` (frozen inner body, verbatim; `Charts/Inputs`), and `apply` now concludes `∃ C₁ C₂ C₃, 0 < C₁ ∧ 0 < C₂ ∧ 0 < C₃ ∧ IG1Body 2 2 (rhoIso s₀) (rhoInf s₀) (Mconst …) (sigmaKConst …) (sigmaKConst …) (sigmaTConst …) (muParam …) γ (sigmaOmegaConst …) (nuConst …) ωs C₁ C₂ C₃ ∧ <local application>` (K `GValid` precedent). `IG1Statement` is restated through `IG1Body` (definitionally the same; the §P `example` against the anchor still checks), and so is `g1_explicit` (D20), which keeps the file under the cap. |
| F2 medium: `tori` lost `p.m = chartM h p.c`, the centres' membership and the per-patch rays fixed before `f, ε, I₀, E` | Adopted the audit's `tori_corrected` as `tori`: functions `γp γm ωsp ωsm` on patches and, outside the perturbation quantifiers, `p.c ∈ closure B' ∧ p.W ⊆ chartDom h B r₀ p.c ∧ p.m = chartM h p.c ∧ IsRay … p.mPlus ∧ IsRay … p.mMinus`; inside, `ωp = sp • ωsp p`, `ωm = sm • ωsm p` with `1 < sp, sm < σ_ω`. No input premise added. `part3_tori_of` stays the separately named generic projection (proof updated to skip the new conjuncts); Part 5's `part3_tori` signature is unchanged and its provider body still checks. |
| N1 low: Part 1 specialized to `τ ≥ n-1` | Recorded in the node table (`setting` row): Part 1 declarations are specialized implementations of the `τ ≥ 0` source statements. |
| N2 low: draft is not a landable module | Acknowledged: the module split, `module`/`public section` wrappers, `@[expose]` and provider quarantine apply at landing (sections 6–7). |

Re-elaborated: `cd /root/code/KAM && LEAN_NUM_THREADS=1 nice -n 5 lake env lean …/IPart123Signatures.lean`, exit 0, 45
diagnostics, all `declaration uses 'sorry'`; the §P provider and premise checks pass.

## Appendix A. `.drafts/design/IPart123Signatures.lean` (verbatim)

```lean
/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
import KAM.Apost.G1
import KAM.Head.UnperturbedFrame
import KAM.Head.Adapters
import KAM.Head.HBounded
import KAM.Strip.CohomologicalNodes
import KAM.Strip.Taylor
import KAM.Strip.Limits
import KAM.Matrix.Neumann
import KAM.Frozen.Iso.Defs.ExtendedTorsionAverage
import KAM.Frozen.Iso.Defs.EnergyAverage
import KAM.Frozen.Iso.Defs.BorderedHessian
import KAM.Frozen.Defs.ActionNbhd
import KAM.Frozen.Defs.FrequencyMap
import Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv
-- SCRATCH ONLY: the provider type checks of section P and the two premise checks of §C0.
import KAM.Frozen.Iso.Theorems.IsoenergeticKam
import KAM.Frozen.Theorems.VolumeNotDiophantineLe

/-!
# Signatures of blueprint-I Parts 1–3 (I-G1) — design draft

Untracked design artefact of `docs/tracks/I/design/PART123-LEAN-DESIGN.md`. Every result node of
`p1-iso-linear`, `p2-iso-iteration`, `p3-iso-local-charts` has its exact statement here, body
`sorry`; definitions are the real ones. Not a library module: elaborate with `lake env lean`.
`§` headers name the module of the theorems; under the definitions landing I-D0 every `def` and
`structure` goes to `Linear/Defs`, `Apost/Defs`, `Charts/Inputs` or `Charts/Defs`. Non-`sorry` bodies: three `rfl` bridges, `part3_tori_of`
(projection), and section P (providers and premise checks against the frozen anchors).
Section U copies, verbatim, the Part 5 interface of `IPart58Signatures.lean` (§A, §C, §I).
No `set_option`, no heartbeat override.
-/

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology Set Metric

noncomputable section

/-! ## U. Part 5 interface (verbatim from `IPart58Signatures.lean`; owner: Part 5 design, P5-0) -/

namespace KAM.Iso.Confinement

open KAM

abbrev toC {n : ℕ} (x : Fin n → ℝ) : Fin n → ℂ := fun i => (x i : ℂ)
def realAct (B : Set (Fin 2 → ℝ)) (r₀ : ℝ) : Set (Fin 2 → ℝ) := {I | toC I ∈ actionNbhd B r₀}
def realPart (h : (Fin 2 → ℂ) → ℂ) (I : Fin 2 → ℝ) : ℝ := (h (toC I)).re
def totalH (h : (Fin 2 → ℂ) → ℂ) (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) :
    (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ := fun z => h z.2 + f z
def rhoInf (s₀ : ℝ) : ℝ := min s₀ 1 / 8
def fractD (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) : Set ((Fin 2 → ℂ) × (Fin 2 → ℂ)) :=
  complexStrip 2 (min s₀ 1 / 2) ×ˢ actionNbhd B (r₀ / 2)
structure BaseData (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) (h : (Fin 2 → ℂ) → ℂ) : Prop where
  hs : 0 < s₀
  hr : 0 < r₀
  holo : DifferentiableOn ℂ h (actionNbhd B r₀)
  real : ∀ I : Fin 2 → ℝ, toC I ∈ actionNbhd B r₀ → (h (toC I)).im = 0

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

structure PerturbData (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ)
    (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ) : Prop where
  holo : DifferentiableOn ℂ f (complexStrip 2 s₀ ×ˢ actionNbhd B r₀)
  periodic : ∀ z ∈ complexStrip 2 s₀ ×ˢ actionNbhd B r₀, ∀ k : Fin 2 → ℤ,
    f (z.1 + (fun i => (k i : ℂ)), z.2) = f z
  real : ∀ θ I : Fin 2 → ℝ, toC I ∈ actionNbhd B r₀ → (f (toC θ, toC I)).im = 0
  nonneg : 0 ≤ ε
  bound : ∀ z ∈ complexStrip 2 s₀ ×ˢ actionNbhd B r₀, ‖f z‖ ≤ ε

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

end KAM.Iso.Confinement

/-! ## C0. `KAM/Iso/Charts/Inputs.lean`: the frozen I-G1 and G3, verbatim (checked in §P); used by
Part 3 as premises and by `Apost/G1` for the statement of `g1_explicit` -/

namespace KAM.Iso.Charts

open KAM

/-- The body of the frozen I-G1 after `∃ C₁ C₂ C₃, 0 < C₁ ∧ 0 < C₂ ∧ 0 < C₃ ∧`, verbatim. -/
def IG1Body (n : ℕ) (τ ρ ρinf M σK σB σT μ γbar σω ν : ℝ) (ωstar : Fin n → ℝ) (C₁ C₂ C₃ : ℝ) :
    Prop :=
  ∀ (D : Set ((Fin n → ℂ) × (Fin n → ℂ))) (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (s γ e E₀ : ℝ),
    IsOpen D → (∀ z ∈ D, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ D) →
    DifferentiableOn ℂ H D → (∀ z ∈ D, ∀ k : Fin n → ℤ, H (z.1 + (fun i => (k i : ℂ)), z.2) = H z) →
    (∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ D →
      (H ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
    (∀ z ∈ D, ‖fderiv ℂ H z‖ ≤ M ∧ ‖hamiltonianVectorFieldℂ H z‖ ≤ M ∧
      ‖fderiv ℂ (hamiltonianVectorFieldℂ H) z‖ ≤ M ∧
      ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ H) z‖ ≤ M ∧ ‖iteratedFDeriv ℂ 2 H z‖ ≤ M) →
    DifferentiableOn ℂ K (complexStrip n ρ) → IsPrimaryOnStrip K ρ → IsRealOnReals K →
    (∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ D) →
    (∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ) →
    (∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧
      ∀ i, ∑ j, ‖(gramMatrix K θ)⁻¹ i j‖ ≤ σB - μ) →
    IsUnit (KAM.Iso.extendedTorsionAverage H K (s • ωstar)).det →
    (∀ i, ∑ j, ‖(KAM.Iso.extendedTorsionAverage H K (s • ωstar))⁻¹ i j‖ ≤ σT - μ) →
    1 < s → s < σω → ν ≤ (s - 1) * ‖ωstar‖ → ν ≤ (σω - s) * ‖ωstar‖ →
    0 < γ → γ ≤ γbar → IsDiophantine γ τ ωstar → 0 ≤ e →
    (∀ θ ∈ complexStrip n ρ, ‖invarianceError H K (s • ωstar) θ‖ ≤ e) →
    ‖KAM.Iso.energyAverage H K - (E₀ : ℂ)‖ ≤ e →
    C₁ * e / (γ ^ 4 * ρ ^ (4 * τ)) < 1 →
    ∃ (Kinf : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (sinf : ℝ),
      1 < sinf ∧ sinf < σω ∧ DifferentiableOn ℂ Kinf (complexStrip n ρinf) ∧
      IsPrimaryOnStrip Kinf ρinf ∧ IsRealOnReals Kinf ∧
      (∀ θ ∈ complexStrip n ρinf, invarianceError H Kinf (sinf • ωstar) θ = 0) ∧
      (∀ θ ∈ complexStrip n ρinf, H (Kinf θ) = (E₀ : ℂ)) ∧
      (∀ θ ∈ complexStrip n ρinf, Metric.ball (Kinf θ) (μ / 2) ⊆ D) ∧
      (∀ θ ∈ complexStrip n ρinf, ‖fderiv ℂ Kinf θ‖ ≤ σK - μ / 2) ∧
      (∀ θ ∈ complexStrip n ρinf, ‖Kinf θ - K θ‖ ≤ C₂ * e / (γ ^ 2 * ρ ^ (2 * τ))) ∧
      ‖sinf • ωstar - s • ωstar‖ ≤ C₃ * e / (γ ^ 2 * ρ ^ (2 * τ))

/-- The type of the frozen `KAM.Iso.isoenergetic_kam` (I-G1). -/
def IG1Statement : Prop :=
  ∀ {n : ℕ}, 2 ≤ n → ∀ {τ : ℝ}, (n : ℝ) - 1 ≤ τ → ∀ {ρ ρinf : ℝ}, 0 < ρinf → ρinf < ρ →
    ∀ {M σK σB σT μ γbar σω ν : ℝ}, 0 < M → 0 < σK → 0 < σB → 0 < σT → 0 < μ → 0 < γbar →
    1 < σω → 0 < ν → ∀ ωstar : Fin n → ℝ, ωstar ≠ 0 →
    ∃ C₁ C₂ C₃ : ℝ, 0 < C₁ ∧ 0 < C₂ ∧ 0 < C₃ ∧
      IG1Body n τ ρ ρinf M σK σB σT μ γbar σω ν ωstar C₁ C₂ C₃

/-- The type of the frozen `KAM.volume_not_diophantine_le` (G3). -/
def G3Statement : Prop :=
  ∀ {n : ℕ} {τ : ℝ}, (n : ℝ) - 1 < τ → ∀ {Ω : Set (Fin n → ℝ)}, Bornology.IsBounded Ω →
    ∃ C : ℝ, ∀ α : ℝ, 0 < α → volume {ω ∈ Ω | ¬ IsDiophantine α τ ω} ≤ ENNReal.ofReal (C * α)

end KAM.Iso.Charts

/-! ## A. Part 1, `KAM.Iso.Linear` (`KAM/Iso/Linear/*`) -/

namespace KAM.Iso.Linear

open KAM KAM.Torus KAM.Apost
open KAM.Head (unperturbedTorus gradC hessian)

/-! ### §A1 `Linear/Setting.lean`: standing data, `Y`, the bordered matrix, finite-index tools -/

/-- `bpI:p1:setting` (+ `#k-bridge`): K's standing data with `h := H`, `𝔅 := D` (projection
`Setting.toStanding`), plus `‖DH‖ ≤ M`, the first item of (I4). The torus data are explicit
binders of each lemma. -/
structure Setting (n : ℕ) (τ M σK σB σT : ℝ) (D : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ω : Fin n → ℝ) (γ : ℝ) : Prop
    extends KAM.Apost.Standing n τ M σK σB σT D H ω γ where
  dH_le : ∀ z ∈ D, ‖fderiv ℂ H z‖ ≤ M

variable {n : ℕ}

/-- `Y = DH(K) N` (HL19 (6.14)); entry `b` is the frozen last-row entry of `extendedTorsion`. -/
def energyRow (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (θ : Fin n → ℂ) : Fin n → ℂ :=
  fun b => fderiv ℂ H (K θ) (normalFrame K θ b)

/-- The bordered matrix `(A c; yᵀ 0)` over `Fin n ⊕ Unit`. -/
def bordMat (A : Matrix (Fin n) (Fin n) ℂ) (c y : Fin n → ℂ) :
    Matrix (Fin n ⊕ Unit) (Fin n ⊕ Unit) ℂ :=
  Matrix.fromBlocks A (Matrix.replicateCol Unit c) (Matrix.replicateRow Unit y) 0

theorem extendedTorsion_eq_bordMat (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (θ : Fin n → ℂ) :
    KAM.Iso.extendedTorsion H K ω θ =
      bordMat (torsion H K ω θ) (fun a => (ω a : ℂ)) (energyRow H K θ) := by
  ext (a | _) (b | _) <;> rfl

/-- `bpI:p1:ray`: `sω*` is `(γ, τ)`-Diophantine for `s ≥ 1`. -/
theorem isDiophantine_smul {γ τ s : ℝ} {ωstar : Fin n → ℝ} (hdio : IsDiophantine γ τ ωstar)
    (hs : 1 ≤ s) : IsDiophantine γ τ (s • ωstar) := sorry

/-- `bpI:p1:ext-neumann` (radius one), any finite index type. -/
theorem isUnit_det_one_sub {ι : Type*} [Fintype ι] [DecidableEq ι] {X : Matrix ι ι ℂ}
    (hX : ‖X‖ < 1) : IsUnit (1 - X).det := sorry

/-- `KAM.matrix_neumann_uniform` (`bp:p1:neumann`) for any finite index type (`Fin n ⊕ Unit`). -/
theorem neumann_fintype {ι : Type*} [Fintype ι] [DecidableEq ι] {A Δ : Matrix ι ι ℂ} {σ : ℝ}
    (hA : IsUnit A.det) (hσ : ‖A⁻¹‖ ≤ σ) (hs : σ * ‖Δ‖ ≤ 1 / 2) :
    IsUnit (A + Δ).det ∧ ‖(A + Δ)⁻¹‖ ≤ 2 * σ ∧ ‖(A + Δ)⁻¹ - A⁻¹‖ ≤ 2 * σ ^ 2 * ‖Δ‖ := sorry

/-- `bp:p1:real-inverse` for any finite index type. -/
theorem inv_im_eq_zero {ι : Type*} [Fintype ι] [DecidableEq ι] {A : Matrix ι ι ℂ}
    (hA : ∀ i j, (A i j).im = 0) (i j : ι) : (A⁻¹ i j).im = 0 := sorry

/-! ### §A2 `Linear/FreqMap.lean`: `K:bp:p4:freq-map` (ii)–(iii) without the Kolmogorov field -/

/-- `KAM.Head.freq_map` (ii), (iii) for `h` holomorphic on an open `U`, real at real points:
the K statement carries `KAM.Head.Data` (Kolmogorov), unavailable here. Same proofs. -/
theorem freq_map_local {U : Set (Fin n → ℂ)} (hU : IsOpen U) {h : (Fin n → ℂ) → ℂ}
    (hh : DifferentiableOn ℂ h U)
    (hreal : ∀ J : Fin n → ℝ, (fun i => (J i : ℂ)) ∈ U → (h fun i => (J i : ℂ)).im = 0)
    {I : Fin n → ℝ} (hI : (fun i => (I i : ℂ)) ∈ U) :
    (fun i => ((frequencyMap h I i : ℝ) : ℂ)) = gradC h (fun i => (I i : ℂ)) ∧
    DifferentiableAt ℝ (frequencyMap h) I ∧
    (∀ v : Fin n → ℝ, (fun i => ((fderiv ℝ (frequencyMap h) I v i : ℝ) : ℂ)) =
      hessian h (fun i => (I i : ℂ)) *ᵥ fun j => (v j : ℂ)) ∧
    (hessian h (fun i => (I i : ℂ)))ᵀ = hessian h (fun i => (I i : ℂ)) ∧
    ∀ i j, (hessian h (fun i => (I i : ℂ)) i j).im = 0 := sorry

/-- `h ∘ ι` (real part) and `∇h` are `C¹` on the real slice of `U`. -/
theorem freq_map_contDiff {U : Set (Fin n → ℂ)} (hU : IsOpen U) {h : (Fin n → ℂ) → ℂ}
    (hh : DifferentiableOn ℂ h U)
    (hreal : ∀ J : Fin n → ℝ, (fun i => (J i : ℂ)) ∈ U → (h fun i => (J i : ℂ)).im = 0) :
    ContDiffOn ℝ 1 (fun J : Fin n → ℝ => (h fun i => (J i : ℂ)).re)
        {J | (fun i => (J i : ℂ)) ∈ U} ∧
      ContDiffOn ℝ 1 (frequencyMap h) {J | (fun i => (J i : ℂ)) ∈ U} ∧
      ∀ J, (fun i => (J i : ℂ)) ∈ U → ∀ v : Fin n → ℝ,
        fderiv ℝ (fun J : Fin n → ℝ => (h fun i => (J i : ℂ)).re) J v = frequencyMap h J ⬝ᵥ v :=
  sorry

section Torus

variable {τ M σK σB σT γ : ℝ} {D : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ}

/-! ### §A3 `Linear/Extended.lean`: `bpI:p1:extended-basic` -/

/-- `bpI:p1:extended-basic`. (a) regularity, periodicity, realness, the block form of `⟨𝖳_H⟩`;
(b) `|Y| ≤ Mσ'_Kσ'_B` (row sums) and `|𝖳_H| ≤ max {C_T + |ω|, Mσ'_Kσ'_B}`. -/
theorem extended_basic (hS : Setting n τ M σK σB σT D H ω γ) {r : ℝ} (hr : 0 < r)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hKp : IsPrimaryOnStrip K r) (hKr : IsRealOnReals K) (hKD : ∀ θ ∈ complexStrip n r, K θ ∈ D)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) :
    (DifferentiableOn ℂ (energyRow H K) (complexStrip n r) ∧ IsPeriodicOn (energyRow H K) r ∧
      IsRealVec (energyRow H K) ∧
      DifferentiableOn ℂ (KAM.Iso.extendedTorsion H K ω) (complexStrip n r) ∧
      IsPeriodicOn (KAM.Iso.extendedTorsion H K ω) r ∧ IsRealMat (KAM.Iso.extendedTorsion H K ω) ∧
      Continuous (fun x : Fin n → ℝ => KAM.Iso.extendedTorsion H K ω (fun i => (x i : ℂ))) ∧
      KAM.Iso.extendedTorsionAverage H K ω =
        bordMat (torsionAverage H K ω) (fun a => (ω a : ℂ)) (avg (energyRow H K)) ∧
      ∀ i j, (KAM.Iso.extendedTorsionAverage H K ω i j).im = 0) ∧
    ∀ σK' σB' : ℝ,
      (∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK' ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB') →
      ∀ θ ∈ complexStrip n r, ∑ b, ‖energyRow H K θ b‖ ≤ M * σK' * σB' ∧
        ∀ CT : ℝ, ‖torsion H K ω θ‖ ≤ CT →
          ‖KAM.Iso.extendedTorsion H K ω θ‖ ≤ max (CT + ‖ω‖) (M * σK' * σB') := sorry

/-- Regularity of `𝖳_H` at ANY real frequency `ω'` (blueprint issue B1: `bpI:p2:torsion` uses
`extended-basic` at the non-certified frequency `ω̄`). Only the Hamiltonian fields of `hS` enter. -/
theorem extended_regular {ω₀ : Fin n → ℝ} (hS : KAM.Apost.Standing n τ M σK σB σT D H ω₀ γ)
    {r : ℝ} (hr : 0 < r) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n r)) (hKD : ∀ θ ∈ complexStrip n r, K θ ∈ D)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) (ω' : Fin n → ℝ) :
    DifferentiableOn ℂ (energyRow H K) (complexStrip n r) ∧
      DifferentiableOn ℂ (KAM.Iso.extendedTorsion H K ω') (complexStrip n r) ∧
      Continuous (fun x : Fin n → ℝ => KAM.Iso.extendedTorsion H K ω' (fun i => (x i : ℂ))) :=
  sorry

/-! ### §A5 `Linear/LastRow.lean`: `bpI:p1:last-row` -/

/-- `bpI:p1:last-row`. (a) `Y = ωᵀ - (ηᴸ)ᵀ`, `|Y - ωᵀ| ≤ n|ηᴸ|`; (b) the invariant case;
(c) `⟨𝖳_H⟩ = 𝖳^inv - (0 0; ⟨ηᴸ⟩ᵀ 0)` and `|⟨𝖳_H⟩ - 𝖳^inv| ≤ 2n²σ'_Kσ'_B e`. -/
theorem last_row (hS : Setting n τ M σK σB σT D H ω γ) {r : ℝ} (hr : 0 < r)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hKD : ∀ θ ∈ complexStrip n r, K θ ∈ D)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) :
    (∀ θ ∈ complexStrip n r, energyRow H K θ = (fun b => (ω b : ℂ)) - etaL H K ω θ ∧
      ∑ b, ‖energyRow H K θ b - (ω b : ℂ)‖ ≤ n * ‖etaL H K ω θ‖) ∧
    ((∀ θ ∈ complexStrip n r, invarianceError H K ω θ = 0) →
      (∀ θ ∈ complexStrip n r, KAM.Iso.extendedTorsion H K ω θ =
        bordMat (torsion H K ω θ) (fun a => (ω a : ℂ)) (fun a => (ω a : ℂ))) ∧
      KAM.Iso.extendedTorsionAverage H K ω =
        bordMat (torsionAverage H K ω) (fun a => (ω a : ℂ)) (fun a => (ω a : ℂ))) ∧
    KAM.Iso.extendedTorsionAverage H K ω = bordMat (torsionAverage H K ω)
      (fun a => (ω a : ℂ)) ((fun a => (ω a : ℂ)) - avg (etaL H K ω)) ∧
    ∀ e σK' σB' : ℝ, (∀ θ ∈ complexStrip n r, ‖invarianceError H K ω θ‖ ≤ e ∧
        ‖fderiv ℂ K θ‖ ≤ σK' ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB') →
      ‖KAM.Iso.extendedTorsionAverage H K ω -
          bordMat (torsionAverage H K ω) (fun a => (ω a : ℂ)) (fun a => (ω a : ℂ))‖ ≤
        2 * n ^ 2 * σK' * σB' * e := sorry

/-! ### §A6 `Linear/Energy.lean`: `bpI:p1:energy-approx`, `bpI:p1:energy-conservation` -/

/-- `bpI:p1:energy-approx` (a)–(e); `Γ_δ = c_R γ⁻¹ δ^{-κ}`. -/
theorem energy_approx (hS : Setting n τ M σK σB σT D H ω γ) {r : ℝ} (hr : 0 < r)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hKp : IsPrimaryOnStrip K r) (hKr : IsRealOnReals K) (hKD : ∀ θ ∈ complexStrip n r, K θ ∈ D) :
    (DifferentiableOn ℂ (fun θ => H (K θ)) (complexStrip n r) ∧
      IsPeriodicOn (fun θ => H (K θ)) r ∧ (∀ x : Fin n → ℝ, (H (K fun i => (x i : ℂ))).im = 0) ∧
      (∀ θ ∈ complexStrip n r,
        fderiv ℂ (fun y => H (K y)) θ = (fderiv ℂ H (K θ)).comp (fderiv ℂ K θ)) ∧
      avg (fun θ => H (K θ)) = KAM.Iso.energyAverage H K ∧
      (KAM.Iso.energyAverage H K).im = 0) ∧
    (∀ θ ∈ complexStrip n r, fderiv ℂ (fun y => H (K y)) θ (fun l => (ω l : ℂ)) =
      -fderiv ℂ H (K θ) (invarianceError H K ω θ)) ∧
    (∀ θ ∈ complexStrip n r, ∀ j, etaN H K ω θ j =
      fderiv ℂ (fun y => H (K y)) θ (Pi.single j 1) - ∑ l, lagrangeMat K θ j l * (ω l : ℂ)) ∧
    ((∀ j, avg (fun θ => fderiv ℂ (fun y => H (K y)) θ (Pi.single j 1)) = 0) ∧
      avg (lagrangeMat K) = 0 ∧ avg (etaN H K ω) = 0) ∧
    ∀ ε δ : ℝ, (∀ θ ∈ complexStrip n r, ‖invarianceError H K ω θ‖ ≤ ε) → 0 < δ → δ < r →
      (∀ θ ∈ complexStrip n (r - δ), ‖H (K θ) - KAM.Iso.energyAverage H K‖ ≤
        M * (cR n τ * γ⁻¹ * δ ^ (-kappa n τ)) * ε) ∧
      ∀ δ' : ℝ, 0 < δ' → δ' < r - δ → ∀ θ ∈ complexStrip n (r - δ - δ'),
        ‖fderiv ℂ (fun y => H (K y)) θ‖ ≤ n * M * (cR n τ * γ⁻¹ * δ ^ (-kappa n τ)) * ε / δ' :=
  sorry

/-- `bpI:p1:energy-approx` (f), the energy defect of `ΔK = Pξ`, `ξ = (ξᴸ, ξᴺ)`. -/
theorem energy_defect (hS : Setting n τ M σK σB σT D H ω γ) {r : ℝ} (hr : 0 < r)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hKp : IsPrimaryOnStrip K r) (hKr : IsRealOnReals K) (hKD : ∀ θ ∈ complexStrip n r, K θ ∈ D)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) {r' : ℝ} (hr' : 0 < r')
    (hr'r : r' ≤ r) {ξL ξN : (Fin n → ℂ) → Fin n → ℂ}
    (hξL : DifferentiableOn ℂ ξL (complexStrip n r')) (hξN : DifferentiableOn ℂ ξN (complexStrip n r')) :
    (∀ θ ∈ complexStrip n r',
      fderiv ℂ H (K θ) ((sumVec n).symm (frameMat K θ *ᵥ Sum.elim (ξL θ) (ξN θ))) =
        energyRow H K θ ⬝ᵥ ξN θ + fderiv ℂ (fun y => H (K y)) θ (ξL θ) ∧
      fderiv ℂ (fun y => H (K y)) θ (ξL θ) =
        etaN H K ω θ ⬝ᵥ ξL θ - (fun l => (ω l : ℂ)) ⬝ᵥ (lagrangeMat K θ *ᵥ ξL θ) ∧
      ‖fderiv ℂ (fun y => H (K y)) θ‖ ≤ n * (‖etaN H K ω θ‖ + ‖ω‖ * ‖lagrangeMat K θ‖)) ∧
    avg (fun θ => fderiv ℂ H (K θ) ((sumVec n).symm (frameMat K θ *ᵥ Sum.elim (ξL θ) (ξN θ)))) =
      avg (fun θ => energyRow H K θ ⬝ᵥ ξN θ) + avg (fun θ => fderiv ℂ (fun y => H (K y)) θ (ξL θ)) ∧
    ∀ A X : ℝ, (∀ x : Fin n → ℝ, ‖fderiv ℂ (fun y => H (K y)) (fun i => (x i : ℂ))‖ ≤ A) →
      (∀ x : Fin n → ℝ, ‖ξL (fun i => (x i : ℂ))‖ ≤ X) →
      ‖avg (fun θ => fderiv ℂ (fun y => H (K y)) θ (ξL θ))‖ ≤ A * X := sorry

/-- `bpI:p1:energy-conservation`: an invariant torus has constant energy `Ē_H(K)`. -/
theorem energy_conservation (hS : Setting n τ M σK σB σT D H ω γ) {r : ℝ} (hr : 0 < r)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hKp : IsPrimaryOnStrip K r) (hKr : IsRealOnReals K) (hKD : ∀ θ ∈ complexStrip n r, K θ ∈ D)
    (hE : ∀ θ ∈ complexStrip n r, invarianceError H K ω θ = 0) :
    (∀ θ ∈ complexStrip n r, H (K θ) = KAM.Iso.energyAverage H K) ∧
    (∀ E₀ : ℂ, KAM.Iso.energyAverage H K = E₀ → ∀ θ ∈ complexStrip n r, H (K θ) = E₀) ∧
    ∀ E₀ : ℂ, ∀ θ ∈ complexStrip n r, ‖H (K θ) - E₀‖ = ‖KAM.Iso.energyAverage H K - E₀‖ := sorry

end Torus

/-! ### §A4 `Linear/Trivial.lean`: `bpI:p1:trivial` -/

/-- `bpI:p1:trivial`: at `K⁰(θ) = (θ, I)`, `H = h ∘ pr₂`, `ω = ∇h(I)`: `𝖳_H = ⟨𝖳_H⟩ = 𝖡_h(I)`. -/
theorem trivial_torus {U : Set (Fin n → ℂ)} (hU : IsOpen U) {h : (Fin n → ℂ) → ℂ}
    (hh : DifferentiableOn ℂ h U)
    (hreal : ∀ J : Fin n → ℝ, (fun i => (J i : ℂ)) ∈ U → (h fun i => (J i : ℂ)).im = 0)
    {I : Fin n → ℝ} (hI : (fun i => (I i : ℂ)) ∈ U) :
    (Differentiable ℂ (unperturbedTorus I) ∧ (∀ ρ, IsPrimaryOnStrip (unperturbedTorus I) ρ) ∧
      IsRealOnReals (unperturbedTorus I) ∧
      (∀ θ, unperturbedTorus I θ ∈ (Set.univ : Set (Fin n → ℂ)) ×ˢ U) ∧
      ∀ θ, gramMatrix (unperturbedTorus I) θ = 1) ∧
    (∀ θ, invarianceError (fun z => h z.2) (unperturbedTorus I) (frequencyMap h I) θ = 0) ∧
    (∀ θ, KAM.Iso.extendedTorsion (fun z => h z.2) (unperturbedTorus I) (frequencyMap h I) θ =
      (KAM.Iso.borderedHessian h I).map (fun x : ℝ => (x : ℂ))) ∧
    KAM.Iso.extendedTorsionAverage (fun z => h z.2) (unperturbedTorus I) (frequencyMap h I) =
      (KAM.Iso.borderedHessian h I).map (fun x : ℝ => (x : ℂ)) ∧
    (KAM.Iso.extendedTorsionAverage (fun z => h z.2) (unperturbedTorus I) (frequencyMap h I)).det =
      ((KAM.Iso.borderedHessian h I).det : ℂ) ∧
    (KAM.Iso.extendedTorsionAverage (fun z => h z.2) (unperturbedTorus I) (frequencyMap h I))⁻¹ =
      ((KAM.Iso.borderedHessian h I)⁻¹).map (fun x : ℝ => (x : ℂ)) ∧
    ‖(KAM.Iso.extendedTorsionAverage (fun z => h z.2) (unperturbedTorus I) (frequencyMap h I))⁻¹‖ =
      ‖(KAM.Iso.borderedHessian h I)⁻¹‖ := sorry

/-! ### §A7 `Linear/BorderDefs.lean`, `Linear/BorderSolve.lean`: `bpI:p1:border-solve` -/

/-- The data `(ηᴸ, ηᴺ, T, Y, η^ω)` of the bordered triangular system. -/
structure BordData (n : ℕ) where
  ηL : (Fin n → ℂ) → Fin n → ℂ
  ηN : (Fin n → ℂ) → Fin n → ℂ
  T : (Fin n → ℂ) → Matrix (Fin n) (Fin n) ℂ
  Y : (Fin n → ℂ) → Fin n → ℂ
  ηω : ℂ

/-- `𝒯 = (⟨T⟩ ω; ⟨Y⟩ 0)`. -/
def bordAvg (ω : Fin n → ℝ) (d : BordData n) : Matrix (Fin n ⊕ Unit) (Fin n ⊕ Unit) ℂ :=
  bordMat (avg d.T) (fun a => (ω a : ℂ)) (avg d.Y)

/-- `(ξ₀, ξ^ω) = 𝒯⁻¹ (⟨ηᴸ⟩ + ⟨T uᴺ⟩, η^ω + ⟨Y uᴺ⟩)`, `uᴺ = 𝓡ηᴺ = KAM.Apost.triU ω ηᴺ`. -/
def bordSol (ω : Fin n → ℝ) (d : BordData n) : Fin n ⊕ Unit → ℂ :=
  (bordAvg ω d)⁻¹ *ᵥ Sum.elim (avg d.ηL + avg (fun θ => d.T θ *ᵥ triU ω d.ηN θ))
    (fun _ => d.ηω + avg (fun θ => d.Y θ ⬝ᵥ triU ω d.ηN θ))

def bordXi0 (ω : Fin n → ℝ) (d : BordData n) : Fin n → ℂ := fun a => bordSol ω d (Sum.inl a)
def bordXiOmega (ω : Fin n → ℝ) (d : BordData n) : ℂ := bordSol ω d (Sum.inr ())

/-- `ξᴺ = ξ₀ - uᴺ`. -/
def bordXiN (ω : Fin n → ℝ) (d : BordData n) : (Fin n → ℂ) → Fin n → ℂ :=
  fun θ => bordXi0 ω d - triU ω d.ηN θ

/-- `gᴸ = T ξᴺ + ω ξ^ω - ηᴸ`. -/
def bordGL (ω : Fin n → ℝ) (d : BordData n) : (Fin n → ℂ) → Fin n → ℂ :=
  fun θ => d.T θ *ᵥ bordXiN ω d θ + bordXiOmega ω d • (fun a => (ω a : ℂ)) - d.ηL θ

/-- `ξᴸ = ξᴸ₀ + 𝓡gᴸ`. -/
def bordXiL (ω : Fin n → ℝ) (d : BordData n) (ξL0 : Fin n → ℂ) : (Fin n → ℂ) → Fin n → ℂ :=
  fun θ => ξL0 + cohR ω (bordGL ω d) θ

/-- `bpI:p1:border-solve` (HL19 Lemma 6.1): (a) well defined, (b) the system, (c) estimates with
`S_* = σ max {H_L + H_TΓH_N, |η^ω| + H_YΓH_N}`, (d) uniqueness up to `⟨ξᴸ⟩`, (e) realness. -/
theorem border_solve {γ τ : ℝ} {ω : Fin n → ℝ} (hγ : 0 < γ) (hτ : 0 ≤ τ)
    (hdio : IsDiophantine γ τ ω) {r δ : ℝ} (hr : 0 < r) (hδ : 0 < δ) (h2δ : 2 * δ < r)
    (d : BordData n) {HL HN HT HY σ : ℝ}
    (hηL : DifferentiableOn ℂ d.ηL (complexStrip n r)) (hηLp : IsPeriodicOn d.ηL r)
    (hηN : DifferentiableOn ℂ d.ηN (complexStrip n r)) (hηNp : IsPeriodicOn d.ηN r)
    (hHL : ∀ θ ∈ complexStrip n r, ‖d.ηL θ‖ ≤ HL) (hHN : ∀ θ ∈ complexStrip n r, ‖d.ηN θ‖ ≤ HN)
    (hηN0 : avg d.ηN = 0) (hT : DifferentiableOn ℂ d.T (complexStrip n r)) (hTp : IsPeriodicOn d.T r)
    (hY : DifferentiableOn ℂ d.Y (complexStrip n r)) (hYp : IsPeriodicOn d.Y r)
    (hHT : ∀ θ ∈ complexStrip n (r - δ), ‖d.T θ‖ ≤ HT)
    (hHY : ∀ θ ∈ complexStrip n (r - δ), ∑ b, ‖d.Y θ b‖ ≤ HY)
    (hinv : IsUnit (bordAvg ω d).det) (hσ : ‖(bordAvg ω d)⁻¹‖ ≤ σ) (ξL0 : Fin n → ℂ) :
    -- (a)
    (DifferentiableOn ℂ (bordXiN ω d) (complexStrip n (r - δ)) ∧ IsPeriodicOn (bordXiN ω d) (r - δ) ∧
      DifferentiableOn ℂ (bordGL ω d) (complexStrip n (r - δ)) ∧ IsPeriodicOn (bordGL ω d) (r - δ) ∧
      avg (bordGL ω d) = 0 ∧ DifferentiableOn ℂ (bordXiL ω d ξL0) (complexStrip n (r - 2 * δ)) ∧
      IsPeriodicOn (bordXiL ω d ξL0) (r - 2 * δ)) ∧
    -- (b)
    ((∀ θ ∈ complexStrip n (r - 2 * δ), d.T θ *ᵥ bordXiN ω d θ -
        fderiv ℂ (bordXiL ω d ξL0) θ (fun l => (ω l : ℂ)) +
          bordXiOmega ω d • (fun a => (ω a : ℂ)) = d.ηL θ) ∧
      (∀ θ ∈ complexStrip n (r - δ),
        -fderiv ℂ (bordXiN ω d) θ (fun l => (ω l : ℂ)) = d.ηN θ) ∧
      avg (fun θ => d.Y θ ⬝ᵥ bordXiN ω d θ) = d.ηω) ∧
    -- (c)
    (‖bordSol ω d‖ ≤ σ * max (HL + HT * (cR n τ * γ⁻¹ * δ ^ (-kappa n τ)) * HN)
        (‖d.ηω‖ + HY * (cR n τ * γ⁻¹ * δ ^ (-kappa n τ)) * HN) ∧
      ∀ S, ‖bordSol ω d‖ ≤ S →
        (∀ θ ∈ complexStrip n (r - δ),
          ‖bordXiN ω d θ‖ ≤ S + cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * HN ∧
          ‖bordGL ω d θ‖ ≤ HT * (S + cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * HN) + ‖ω‖ * S + HL) ∧
        ∀ G, (∀ θ ∈ complexStrip n (r - δ), ‖bordGL ω d θ‖ ≤ G) →
          ∀ θ ∈ complexStrip n (r - 2 * δ),
            ‖bordXiL ω d ξL0 θ - ξL0‖ ≤ cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * G) ∧
    -- (d)
    (∀ (ξL' ξN' : (Fin n → ℂ) → Fin n → ℂ) (ξω' : ℂ),
      DifferentiableOn ℂ ξL' (complexStrip n (r - 2 * δ)) → IsPeriodicOn ξL' (r - 2 * δ) →
      DifferentiableOn ℂ ξN' (complexStrip n (r - 2 * δ)) → IsPeriodicOn ξN' (r - 2 * δ) →
      (∀ θ ∈ complexStrip n (r - 2 * δ), d.T θ *ᵥ ξN' θ -
        fderiv ℂ ξL' θ (fun l => (ω l : ℂ)) + ξω' • (fun a => (ω a : ℂ)) = d.ηL θ) →
      (∀ θ ∈ complexStrip n (r - 2 * δ), -fderiv ℂ ξN' θ (fun l => (ω l : ℂ)) = d.ηN θ) →
      avg (fun θ => d.Y θ ⬝ᵥ ξN' θ) = d.ηω →
      ξω' = bordXiOmega ω d ∧ (∀ θ ∈ complexStrip n (r - 2 * δ), ξN' θ = bordXiN ω d θ) ∧
        ∃ c : Fin n → ℂ, ∀ θ ∈ complexStrip n (r - 2 * δ), ξL' θ - bordXiL ω d ξL0 θ = c) ∧
    -- (e)
    (IsRealVec d.ηL → IsRealVec d.ηN → IsRealMat d.T → IsRealVec d.Y → d.ηω.im = 0 →
      (∀ i, (ξL0 i).im = 0) →
      (∀ i, (bordXi0 ω d i).im = 0) ∧ (bordXiOmega ω d).im = 0 ∧ IsRealVec (bordXiN ω d) ∧
        IsRealVec (bordGL ω d) ∧ IsRealVec (bordXiL ω d ξL0)) := sorry

section Frame

variable {τ M σK σB σT γ : ℝ} {D : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ}

/-! ### §A8 `Linear/Reduced.lean`: `bpI:p1:reduced` -/

/-- `E_lin = E_red ξ + Ω₀E_sym ∂_ωξ - (0; Ω_Kω) ξ^ω` (HL19 (6.34)). -/
def isoLinError (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (ξ : (Fin n → ℂ) → Fin n ⊕ Fin n → ℂ) (ξω : ℂ) (θ : Fin n → ℂ) :
    Fin n ⊕ Fin n → ℂ :=
  redDefect H K ω θ *ᵥ ξ θ +
      (omegaZeroMatrix n * symDefect K θ) *ᵥ fderiv ℂ ξ θ (fun l => (ω l : ℂ)) -
    ξω • Sum.elim (0 : Fin n → ℂ) (lagrangeMat K θ *ᵥ fun l => (ω l : ℂ))

/-- `Res = AΔK - ∂_ωΔK + Lωξ^ω + E`, `ΔK = Pξ`, as a `Fin n ⊕ Fin n` vector. -/
def isoResidual (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (ξ : (Fin n → ℂ) → Fin n ⊕ Fin n → ℂ) (ξω : ℂ) (θ : Fin n → ℂ) :
    Fin n ⊕ Fin n → ℂ :=
  linMat H K θ *ᵥ (frameMat K θ *ᵥ ξ θ) -
      fderiv ℂ (fun y => frameMat K y *ᵥ ξ y) θ (fun l => (ω l : ℂ)) +
    ξω • (tangentMat K θ *ᵥ fun l => (ω l : ℂ)) + sumVec n (invarianceError H K ω θ)

/-- The bordered operator `Λξ - ∂_ωξ + (ω; 0) ξ^ω`. -/
def bordOp (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (ξ : (Fin n → ℂ) → Fin n ⊕ Fin n → ℂ) (ξω : ℂ) (θ : Fin n → ℂ) :
    Fin n ⊕ Fin n → ℂ :=
  triangularMat (torsion H K ω θ) *ᵥ ξ θ - fderiv ℂ ξ θ (fun l => (ω l : ℂ)) +
    ξω • Sum.elim (fun l => (ω l : ℂ)) (0 : Fin n → ℂ)

/-- `bpI:p1:reduced` (a)–(d). -/
theorem reduced (hS : Setting n τ M σK σB σT D H ω γ) {r : ℝ} (hr : 0 < r)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hKD : ∀ θ ∈ complexStrip n r, K θ ∈ D)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) {r' : ℝ} (hr' : 0 < r')
    (hr'r : r' ≤ r) {ξ : (Fin n → ℂ) → Fin n ⊕ Fin n → ℂ}
    (hξ : DifferentiableOn ℂ ξ (complexStrip n r')) (ξω : ℂ) :
    (∀ θ ∈ complexStrip n r', reducer K θ * tangentMat K θ = Matrix.fromRows 1 (-lagrangeMat K θ)) ∧
    (∀ θ ∈ complexStrip n r', reducer K θ *ᵥ isoResidual H K ω ξ ξω θ =
      bordOp H K ω ξ ξω θ - eta H K ω θ + isoLinError H K ω ξ ξω θ) ∧
    (∀ θ ∈ complexStrip n r', bordOp H K ω ξ ξω θ = eta H K ω θ →
      reducer K θ *ᵥ isoResidual H K ω ξ ξω θ = isoLinError H K ω ξ ξω θ) ∧
    (∀ θ ∈ complexStrip n r', ‖isoLinError H K ω ξ ξω θ‖ ≤ ‖redDefect H K ω θ‖ * ‖ξ θ‖ +
      ‖symDefect K θ‖ * ‖fderiv ℂ ξ θ (fun l => (ω l : ℂ))‖ + ‖lagrangeMat K θ‖ * ‖ω‖ * ‖ξω‖) ∧
    ((∀ θ ∈ complexStrip n r', IsUnit (frameMat K θ).det) → ∀ θ ∈ complexStrip n r',
      (bordOp H K ω ξ ξω θ = eta H K ω θ →
        isoResidual H K ω ξ ξω θ = (reducer K θ)⁻¹ *ᵥ isoLinError H K ω ξ ξω θ) ∧
      (isoResidual H K ω ξ ξω θ = 0 ↔
        bordOp H K ω ξ ξω θ = eta H K ω θ - isoLinError H K ω ξ ξω θ)) := sorry

/-! ### §A9 `Linear/NoTwist.lean`: `bpI:p1:geometry-noA5`, `bpI:p1:perturbation-noA5` -/

/-- K's (A1)–(A4), (A6) (`KAM.Apost.Admissible` without its `twist` field). -/
structure AdmissibleNoTwist (σK σB : ℝ) (D : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ω : Fin n → ℝ) (r β ε : ℝ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) : Prop where
  r_pos : 0 < r
  β_pos : 0 < β
  ε_nonneg : 0 ≤ ε
  ε_le_one : ε ≤ 1
  holo : DifferentiableOn ℂ K (complexStrip n r)
  primary : IsPrimaryOnStrip K r
  real : IsRealOnReals K
  ball_sub : ∀ θ ∈ complexStrip n r, Metric.ball (K θ) β ⊆ D
  deriv_le : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK
  gram : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB
  error_le : ∀ θ ∈ complexStrip n r, ‖invarianceError H K ω θ‖ ≤ ε

/-- `bpI:p1:geometry-noA5`: the conclusions of `KAM.Apost.geometry` and of
`KAM.Apost.frame_basic` (b)–(d), without any torsion hypothesis. -/
theorem geometry_noA5 (hS : Setting n τ M σK σB σT D H ω γ) {r β ε δ : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : AdmissibleNoTwist σK σB D H ω r β ε K)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (h2δ : 2 * δ < r) :
    (∀ θ ∈ complexStrip n (r - δ),
      ‖errDerivMat H K ω θ‖ ≤ n * ε / δ ∧ ‖(errDerivMat H K ω θ)ᵀ‖ ≤ 2 * n * ε / δ ∧
      ‖fderiv ℂ (lagrangeMat K) θ (fun l => (ω l : ℂ))‖ ≤
        2 * n * (n + 1) * mSize M σK σB σT * ε / δ ∧
      ‖redDefect H K ω θ‖ ≤ C_red n M σK σB σT * ε / δ) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖lagrangeMat K θ‖ ≤ C_Omega n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ∧
      ‖symDefect K θ‖ ≤ C_sym n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1))) ∧
    (∀ θ ∈ complexStrip n r, ‖etaL H K ω θ‖ ≤ 2 * n * mSize M σK σB σT ^ 2 * ε ∧
      ‖etaN H K ω θ‖ ≤ 2 * n * mSize M σK σB σT * ε ∧ ‖tangentMat K θ‖ ≤ mSize M σK σB σT ∧
      ‖(gramMatrix K θ)⁻¹‖ ≤ mSize M σK σB σT ∧ ‖normalMat K θ‖ ≤ mSize M σK σB σT ^ 2 ∧
      ‖frameMat K θ‖ ≤ 2 * mSize M σK σB σT ^ 2) ∧
    (‖ω‖ ≤ Theta n M σK σB σT → ∀ θ ∈ complexStrip n (r - δ),
      ‖normalFieldMat H K ω θ‖ ≤ C_X n M σK σB σT / δ ∧ ‖torsion H K ω θ‖ ≤ C_T n M σK σB σT / δ) :=
  sorry

/-- `bpI:p1:perturbation-noA5` (a)–(e): `KAM.Apost.perturbation` without `hT` and item (f). -/
theorem perturbation_noA5 (hS : Setting n τ M σK σB σT D H ω γ) {r δ β d : ℝ} (hr : 0 < r)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (h2δ : 2 * δ < r) (hω : ‖ω‖ ≤ Theta n M σK σB σT)
    {K K' : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hball : ∀ θ ∈ complexStrip n r, Metric.ball (K θ) β ⊆ D)
    (hDK : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB)
    (hK' : DifferentiableOn ℂ K' (complexStrip n r)) (hd : ∀ θ ∈ complexStrip n r, ‖K' θ - K θ‖ ≤ d)
    (hdβ : d < β) (hsmall : 2 * mSize M σK σB σT * C_DT n M σK σB σT * d / δ ^ 2 ≤ 1) :
    (∀ θ ∈ complexStrip n r, Metric.ball (K' θ) (β - d) ⊆ D ∧
      ‖linMat H K' θ - linMat H K θ‖ ≤ mSize M σK σB σT * d) ∧
    (∀ θ ∈ complexStrip n (r - δ), ‖fderiv ℂ K' θ - fderiv ℂ K θ‖ ≤ n * d / δ) ∧
    (∀ θ ∈ complexStrip n (r - δ), IsUnit (gramMatrix K' θ).det ∧
      ‖(gramMatrix K' θ)⁻¹‖ ≤ 2 * mSize M σK σB σT ∧
      ‖(gramMatrix K' θ)⁻¹ - (gramMatrix K θ)⁻¹‖ ≤ C_B n M σK σB σT * d / δ) ∧
    (∀ θ ∈ complexStrip n (r - δ), ‖normalMat K' θ - normalMat K θ‖ ≤ C_DN n M σK σB σT * d / δ ∧
      ‖normalMat K' θ‖ ≤ 2 * mSize M σK σB σT ^ 2 ∧ ‖(normalMat K' θ)ᵀ‖ ≤ 4 * n * mSize M σK σB σT ^ 2) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖torsion H K' ω θ - torsion H K ω θ‖ ≤ C_DT n M σK σB σT * d / δ ^ 2) := sorry

end Frame

end KAM.Iso.Linear

/-! ## B. Part 2, `KAM.Iso.Apost` (`KAM/Iso/Apost/*`) -/

namespace KAM.Iso.Apost

open KAM KAM.Torus KAM.Apost KAM.Iso.Linear

variable {n : ℕ}

/-! ### §B1 `Apost/Standing.lean`: `bpI:p2:standing` (+ `#k-bridge`), `ray`, `admissible` -/

/-- `bpI:p2:standing`: `n ≥ 2, τ ≥ n-1, M, σ > 0` (`Params`), `σ_ω > 1`, `ν > 0`, `ω* ≠ 0`,
(I1)–(I4) verbatim (five bounds), `γ > 0`, `ω* ∈ Dio_{γ,τ}`. `E₀ ∈ ℝ` is typing data. -/
structure IsoStanding (n : ℕ) (τ M σK σB σT σω ν : ℝ) (ωstar : Fin n → ℝ)
    (D : Set ((Fin n → ℂ) × (Fin n → ℂ))) (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (γ : ℝ) : Prop
    extends KAM.Apost.Params n τ M σK σB σT where
  σω_gt : 1 < σω
  ν_pos : 0 < ν
  ωstar_ne : ωstar ≠ 0
  isOpen : IsOpen D
  transl_mem : ∀ z ∈ D, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ D
  holo : DifferentiableOn ℂ H D
  periodic : ∀ z ∈ D, ∀ k : Fin n → ℤ, H (z.1 + (fun i => (k i : ℂ)), z.2) = H z
  real : ∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ D →
    (H ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0
  bounds : ∀ z ∈ D, ‖fderiv ℂ H z‖ ≤ M ∧ ‖hamiltonianVectorFieldℂ H z‖ ≤ M ∧
    ‖fderiv ℂ (hamiltonianVectorFieldℂ H) z‖ ≤ M ∧
    ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ H) z‖ ≤ M ∧ ‖iteratedFDeriv ℂ 2 H z‖ ≤ M
  gamma_pos : 0 < γ
  dio : IsDiophantine γ τ ωstar

/-- `bpI:p2:standing#k-bridge`: for `s ≥ 1` the Part 1 setting (hence K's standing) holds at `sω*`. -/
theorem IsoStanding.setting {τ M σK σB σT σω ν γ : ℝ} {ωstar : Fin n → ℝ}
    {D : Set ((Fin n → ℂ) × (Fin n → ℂ))} {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hS : IsoStanding n τ M σK σB σT σω ν ωstar D H γ) {s : ℝ} (hs : 1 ≤ s) :
    Setting n τ M σK σB σT D H (s • ωstar) γ := sorry

/-- `ν(s) = min {s - 1, σ_ω - s} |ω*|`, the endpoint margin of `sω*` on the ray. -/
def rayMargin (σω : ℝ) (ωstar : Fin n → ℝ) (s : ℝ) : ℝ := min (s - 1) (σω - s) * ‖ωstar‖

/-- `bpI:p2:ray` (a), (b). -/
theorem ray {γ τ σω : ℝ} {ωstar : Fin n → ℝ} (hdio : IsDiophantine γ τ ωstar) :
    (∀ s : ℝ, 0 < s → IsDiophantine (γ * s) τ (s • ωstar)) ∧
    (∀ s : ℝ, 1 ≤ s → IsDiophantine γ τ (s • ωstar)) ∧
    (∀ hn : 0 < n, γ ≤ |ωstar ⟨0, hn⟩| ∧ |ωstar ⟨0, hn⟩| ≤ ‖ωstar‖) ∧
    (∀ s s' : ℝ, ‖s' • ωstar - s • ωstar‖ = |s' - s| * ‖ωstar‖) ∧
    (∀ s s' : ℝ, rayMargin σω ωstar s - ‖s' • ωstar - s • ωstar‖ ≤ rayMargin σω ωstar s') ∧
    ∀ s s' ν' d : ℝ, ν' ≤ rayMargin σω ωstar s → ‖s' • ωstar - s • ωstar‖ ≤ d → d < ν' →
      1 < s' ∧ s' < σω ∧ ν' - d ≤ rayMargin σω ωstar s' := sorry

/-- `bpI:p2:admissible` (B1)–(B7): K's (A1)–(A4), (A6) at `ω = sω*`, `s > 1`, the bordered twist
(B5) and the energy error (B7). -/
structure IsoAdmissible (σK σB σT : ℝ) (D : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ωstar : Fin n → ℝ) (E₀ r β ε s : ℝ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) : Prop
    extends AdmissibleNoTwist σK σB D H (s • ωstar) r β ε K where
  s_gt : 1 < s
  twist : IsUnit (KAM.Iso.extendedTorsionAverage H K (s • ωstar)).det ∧
    ‖(KAM.Iso.extendedTorsionAverage H K (s • ωstar))⁻¹‖ ≤ σT
  energy_le : ‖KAM.Iso.energyAverage H K - (E₀ : ℂ)‖ ≤ ε

/-- The display `bpI:p2:freq` of Definition `bpI:p2:admissible`: `γ ≤ |ω| ≤ Θ`. -/
theorem IsoAdmissible.freq {τ M σK σB σT σω ν γ E₀ r β ε s : ℝ} {ωstar : Fin n → ℝ}
    {D : Set ((Fin n → ℂ) × (Fin n → ℂ))} {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hS : IsoStanding n τ M σK σB σT σω ν ωstar D H γ)
    (hK : IsoAdmissible σK σB σT D H ωstar E₀ r β ε s K) :
    γ ≤ ‖s • ωstar‖ ∧ ‖s • ωstar‖ ≤ Theta n M σK σB σT := sorry

/-! ### §B2 `Apost/Constants.lean`: `bpI:p2:constants` -/

section Constants

variable (n : ℕ) (τ M σK σB σT : ℝ)

def hatCS : ℝ := max (C_xi0 n τ M σK σB σT)
  (mSize M σK σB σT * Theta n M σK σB σT + 2 * n * cR n τ * mSize M σK σB σT ^ 5)
def hatCxiN : ℝ := hatCS n τ M σK σB σT + 2 * n * cR n τ * mSize M σK σB σT
def hatCg : ℝ := C_T n M σK σB σT * hatCxiN n τ M σK σB σT +
  Theta n M σK σB σT * hatCS n τ M σK σB σT + 2 * n * mSize M σK σB σT ^ 2 * Theta n M σK σB σT
def hatCxi : ℝ := max (cR n τ * hatCg n τ M σK σB σT) (Theta n M σK σB σT * hatCxiN n τ M σK σB σT)
def hatCDK : ℝ := 2 * mSize M σK σB σT ^ 2 * hatCxi n τ M σK σB σT
def hatCDelta : ℝ := max (hatCDK n τ M σK σB σT) (Theta n M σK σB σT ^ 2 * hatCS n τ M σK σB σT)
/-- `C_P = 𝔪² + n + 𝔪³ + C_X` (bound `|∂_ω P| ≤ C_P/δ`). -/
def CP : ℝ := mSize M σK σB σT ^ 2 + n + mSize M σK σB σT ^ 3 + C_X n M σK σB σT
def hatCpartial : ℝ := CP n M σK σB σT * hatCxi n τ M σK σB σT +
  2 * mSize M σK σB σT ^ 2 * Theta n M σK σB σT * hatCg n τ M σK σB σT
def hatClin : ℝ := C_red n M σK σB σT * hatCxi n τ M σK σB σT +
  C_sym n τ M σK σB σT * hatCg n τ M σK σB σT +
  Theta n M σK σB σT * C_Omega n τ M σK σB σT * hatCS n τ M σK σB σT
def hatCE1 : ℝ := 4 * mSize M σK σB σT ^ 2 * Theta n M σK σB σT ^ 2 * hatClin n τ M σK σB σT +
  mSize M σK σB σT * hatCDK n τ M σK σB σT ^ 2 +
  Theta n M σK σB σT * hatCS n τ M σK σB σT * hatCpartial n τ M σK σB σT
def hatCE2 : ℝ := n * Theta n M σK σB σT ^ 2 *
  (2 * n * mSize M σK σB σT + C_Omega n τ M σK σB σT) * cR n τ * hatCg n τ M σK σB σT +
  mSize M σK σB σT * hatCDK n τ M σK σB σT ^ 2
def hatCE : ℝ := max (hatCE1 n τ M σK σB σT) (hatCE2 n τ M σK σB σT)
def CY : ℝ := n * mSize M σK σB σT * (2 * mSize M σK σB σT ^ 2 + C_DN n M σK σB σT)
/-- `C_{Δ𝖳} = C_ΔT + 8n²𝔪⁴ + 1 + C_Y`. -/
def CDTbord : ℝ := C_DT n M σK σB σT + 8 * n ^ 2 * mSize M σK σB σT ^ 4 + 1 + CY n M σK σB σT
def hatcStep : ℝ := 2 * Theta n M σK σB σT ^ 3 * max (C_sym n τ M σK σB σT)
  (mSize M σK σB σT * CDTbord n M σK σB σT * hatCDelta n τ M σK σB σT)
def hatcSum : ℝ := 4 * Theta n M σK σB σT ^ 2 * hatCDelta n τ M σK σB σT *
  max (n : ℝ) (max (C_B n M σK σB σT) (mSize M σK σB σT ^ 2 * CDTbord n M σK σB σT))
def hatcStar (μ ν : ℝ) : ℝ := max ((2 : ℝ) ^ (2 * aExp n τ) * hatCE n τ M σK σB σT)
  (max (hatcStep n τ M σK σB σT * max 1 (2 / μ))
    (max (2 * hatcSum n τ M σK σB σT / μ) (4 * Theta n M σK σB σT ^ 2 * hatCDelta n τ M σK σB σT / ν)))
/-- `d = Ĉ_Δ ε / (γ² δ^a)`, the step size of `bpI:p2:correction`. -/
def dStep (γ ε δ : ℝ) : ℝ := hatCDelta n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)

end Constants

/-- `bpI:p2:constants`, the claims: positivity (`≥ 1`), `κ ≥ 3`, `a ≥ 8`, `C_ΔT ≤ C_{Δ𝖳}`. -/
theorem iso_constants_spec {τ M σK σB σT : ℝ} (hP : Params n τ M σK σB σT) (μ ν : ℝ) :
    1 ≤ hatCS n τ M σK σB σT ∧ 1 ≤ hatCxiN n τ M σK σB σT ∧ 1 ≤ hatCg n τ M σK σB σT ∧
    1 ≤ hatCxi n τ M σK σB σT ∧ 1 ≤ hatCDK n τ M σK σB σT ∧ 1 ≤ hatCDelta n τ M σK σB σT ∧
    1 ≤ CP n M σK σB σT ∧ 1 ≤ hatCpartial n τ M σK σB σT ∧ 1 ≤ hatClin n τ M σK σB σT ∧
    1 ≤ hatCE n τ M σK σB σT ∧ 1 ≤ CY n M σK σB σT ∧ C_DT n M σK σB σT ≤ CDTbord n M σK σB σT ∧
    1 ≤ hatcStep n τ M σK σB σT ∧ 1 ≤ hatcSum n τ M σK σB σT ∧
    1 ≤ hatcStar n τ M σK σB σT μ ν ∧ 3 ≤ kappa n τ ∧ 8 ≤ aExp n τ := sorry

/-! ### §B3 `Apost/Correction.lean`: `bpI:p2:correction` -/

/-- The data of the correction: `ηᴸ, ηᴺ` of `K`, `T`, `Y = DH(K)N`, `η^ω = -(Ē_H(K) - E₀)`. -/
def isoBordData (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (E₀ : ℝ) : BordData n :=
  ⟨etaL H K ω, etaN H K ω, torsion H K ω, energyRow H K,
    -(KAM.Iso.energyAverage H K - (E₀ : ℂ))⟩

/-- `ξ = (ξᴸ, ξᴺ)` with `ξᴸ₀ = 0`. -/
def isoXi (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (E₀ : ℝ) (θ : Fin n → ℂ) : Fin n ⊕ Fin n → ℂ :=
  Sum.elim (bordXiL ω (isoBordData H K ω E₀) 0 θ) (bordXiN ω (isoBordData H K ω E₀) θ)

def isoXiOmega (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (E₀ : ℝ) : ℂ :=
  bordXiOmega ω (isoBordData H K ω E₀)

/-- `ΔK = Pξ`. -/
def isoCorrection (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (E₀ : ℝ) (θ : Fin n → ℂ) :
    (Fin n → ℂ) × (Fin n → ℂ) :=
  (sumVec n).symm (frameMat K θ *ᵥ isoXi H K ω E₀ θ)

/-- `s̄ = s (1 - ξ^ω)` (`ξ^ω` is real, `correction`), so `ω̄ = s̄ω* = ω + Δω`, `Δω = -ωξ^ω`. -/
def isoNewS (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ωstar : Fin n → ℝ) (E₀ s : ℝ) : ℝ :=
  s * (1 - (isoXiOmega H K (s • ωstar) E₀).re)

section Step

variable {τ M σK σB σT σω ν γ : ℝ} {ωstar : Fin n → ℝ}
  {D : Set ((Fin n → ℂ) × (Fin n → ℂ))} {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}

/-- `bpI:p2:correction`. -/
theorem correction (hS : IsoStanding n τ M σK σB σT σω ν ωstar D H γ) {E₀ r β ε δ s : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : IsoAdmissible σK σB σT D H ωstar E₀ r β ε s K) (hδ : 0 < δ) (hδ1 : δ ≤ 1)
    (h2δ : 2 * δ < r) :
    (DifferentiableOn ℂ (isoXi H K (s • ωstar) E₀) (complexStrip n (r - 2 * δ)) ∧
      IsPeriodicOn (isoXi H K (s • ωstar) E₀) (r - 2 * δ) ∧ IsRealVec (isoXi H K (s • ωstar) E₀) ∧
      DifferentiableOn ℂ (isoCorrection H K (s • ωstar) E₀) (complexStrip n (r - 2 * δ)) ∧
      IsPeriodicOn (isoCorrection H K (s • ωstar) E₀) (r - 2 * δ) ∧
      IsRealOnReals (isoCorrection H K (s • ωstar) E₀) ∧
      (isoXiOmega H K (s • ωstar) E₀).im = 0) ∧
    (‖bordXi0 (s • ωstar) (isoBordData H K (s • ωstar) E₀)‖ ≤
        hatCS n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ∧
      ‖isoXiOmega H K (s • ωstar) E₀‖ ≤ hatCS n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ∧
      ∀ θ ∈ complexStrip n (r - δ),
        ‖bordXiN (s • ωstar) (isoBordData H K (s • ωstar) E₀) θ‖ ≤
          hatCxiN n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ∧
        ‖bordGL (s • ωstar) (isoBordData H K (s • ωstar) E₀) θ‖ ≤
          hatCg n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2))) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖isoXi H K (s • ωstar) E₀ θ‖ ≤ hatCxi n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) ∧
      ‖isoCorrection H K (s • ωstar) E₀ θ‖ ≤ hatCDK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) ∧
      ‖fderiv ℂ (isoXi H K (s • ωstar) E₀) θ (fun l => ((s • ωstar) l : ℂ))‖ ≤
        hatCg n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2)) ∧
      ‖fderiv ℂ (isoCorrection H K (s • ωstar) E₀) θ (fun l => ((s • ωstar) l : ℂ))‖ ≤
        hatCpartial n τ M σK σB σT * ε / (γ ^ 2 * δ ^ (aExp n τ + 1))) ∧
    (‖isoNewS H K ωstar E₀ s • ωstar - s • ωstar‖ =
        |isoNewS H K ωstar E₀ s - s| * ‖ωstar‖ ∧
      ‖isoNewS H K ωstar E₀ s • ωstar - s • ωstar‖ ≤
        Theta n M σK σB σT ^ 2 * hatCS n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖isoCorrection H K (s • ωstar) E₀ θ‖ ≤ dStep n τ M σK σB σT γ ε δ) ∧
    ‖isoNewS H K ωstar E₀ s • ωstar - s • ωstar‖ ≤ dStep n τ M σK σB σT γ ε δ := sorry

/-! ### §B4 `Apost/NewtonError.lean`: `bpI:p2:newton-error` -/

open Classical in
/-- `K̄ = K + ΔK` on `T_w`, `K` elsewhere (`w = r - 2δ`). -/
def isoNewtonMap (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ωstar : Fin n → ℝ) (E₀ s w : ℝ) :
    (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ) :=
  fun θ => if θ ∈ complexStrip n w then K θ + isoCorrection H K (s • ωstar) E₀ θ else K θ

/-- `Δ²X = X_H(K + ΔK) - X_H(K) - AΔK`. -/
def isoQuadX (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (E₀ : ℝ) (θ : Fin n → ℂ) : (Fin n → ℂ) × (Fin n → ℂ) :=
  hamiltonianVectorFieldℂ H (K θ + isoCorrection H K ω E₀ θ) - hamiltonianVectorFieldℂ H (K θ) -
    fderiv ℂ (hamiltonianVectorFieldℂ H) (K θ) (isoCorrection H K ω E₀ θ)

/-- `Δ²H = H(K + ΔK) - H(K) - DH(K)ΔK`. -/
def isoQuadH (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (E₀ : ℝ) (θ : Fin n → ℂ) : ℂ :=
  H (K θ + isoCorrection H K ω E₀ θ) - H (K θ) - fderiv ℂ H (K θ) (isoCorrection H K ω E₀ θ)

/-- `bpI:p2:newton-error`: `Ē = PS⁻¹E_lin + Δ²X + ξ^ω ∂_ωΔK`, `Ē^ω = E^ω_lin + ⟨Δ²H⟩`, bounds. -/
theorem newton_error (hS : IsoStanding n τ M σK σB σT σω ν ωstar D H γ) {E₀ r β ε δ s : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : IsoAdmissible σK σB σT D H ωstar E₀ r β ε s K) (hδ : 0 < δ) (hδ1 : δ ≤ 1)
    (h2δ : 2 * δ < r) (hβ : dStep n τ M σK σB σT γ ε δ < β)
    (hsym : C_sym n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ≤ 1 / 2) :
    (∀ θ ∈ complexStrip n (r - 2 * δ), isoNewtonMap H K ωstar E₀ s (r - 2 * δ) θ ∈ D) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ), IsUnit (sMat K θ).det ∧ ‖(sMat K θ)⁻¹‖ ≤ 2) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      sumVec n (invarianceError H (isoNewtonMap H K ωstar E₀ s (r - 2 * δ))
          (isoNewS H K ωstar E₀ s • ωstar) θ) =
        frameMat K θ *ᵥ ((sMat K θ)⁻¹ *ᵥ isoLinError H K (s • ωstar)
          (isoXi H K (s • ωstar) E₀) (isoXiOmega H K (s • ωstar) E₀) θ) +
        sumVec n (isoQuadX H K (s • ωstar) E₀ θ) +
        isoXiOmega H K (s • ωstar) E₀ • sumVec n
          (fderiv ℂ (isoCorrection H K (s • ωstar) E₀) θ (fun l => ((s • ωstar) l : ℂ)))) ∧
    KAM.Iso.energyAverage H (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) - (E₀ : ℂ) =
      avg (fun θ => fderiv ℂ (fun y => H (K y)) θ
        (bordXiL (s • ωstar) (isoBordData H K (s • ωstar) E₀) 0 θ)) +
      avg (isoQuadH H K (s • ωstar) E₀) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖invarianceError H (isoNewtonMap H K ωstar E₀ s (r - 2 * δ))
          (isoNewS H K ωstar E₀ s • ωstar) θ‖ ≤
        hatCE n τ M σK σB σT * ε ^ 2 / (γ ^ 4 * δ ^ (2 * aExp n τ))) ∧
    ‖KAM.Iso.energyAverage H (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) - (E₀ : ℂ)‖ ≤
      hatCE n τ M σK σB σT * ε ^ 2 / (γ ^ 4 * δ ^ (2 * aExp n τ)) := sorry

/-! ### §B5 `Apost/Torsion.lean`: `bpI:p2:torsion` -/

/-- `bpI:p2:torsion` (`d = dStep`): the frame of `K̄` and the new averaged extended torsion. -/
theorem torsion_step (hS : IsoStanding n τ M σK σB σT σω ν ωstar D H γ) {E₀ r β ε δ s : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : IsoAdmissible σK σB σT D H ωstar E₀ r β ε s K) (hδ : 0 < δ) (hδ1 : δ ≤ 1)
    (h4δ : 4 * δ < r) (hβ : dStep n τ M σK σB σT γ ε δ < β)
    (hsmall : 2 * mSize M σK σB σT * CDTbord n M σK σB σT *
      dStep n τ M σK σB σT γ ε δ / δ ^ 2 ≤ 1) :
    (DifferentiableOn ℂ (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) (complexStrip n (r - 2 * δ)) ∧
      IsPrimaryOnStrip (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) (r - 2 * δ) ∧
      IsRealOnReals (isoNewtonMap H K ωstar E₀ s (r - 2 * δ))) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ), Metric.ball (isoNewtonMap H K ωstar E₀ s (r - 2 * δ) θ)
      (β - dStep n τ M σK σB σT γ ε δ) ⊆ D) ∧
    (∀ θ ∈ complexStrip n (r - 3 * δ),
      ‖fderiv ℂ (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) θ - fderiv ℂ K θ‖ ≤
        n * dStep n τ M σK σB σT γ ε δ / δ ∧
      ‖fderiv ℂ (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) θ‖ ≤ 2 * mSize M σK σB σT ∧
      IsUnit (gramMatrix (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) θ).det ∧
      ‖(gramMatrix (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) θ)⁻¹‖ ≤ 2 * mSize M σK σB σT ∧
      ‖(gramMatrix (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) θ)⁻¹ - (gramMatrix K θ)⁻¹‖ ≤
        C_B n M σK σB σT * dStep n τ M σK σB σT γ ε δ / δ) ∧
    Continuous (fun x : Fin n → ℝ => KAM.Iso.extendedTorsion H
      (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) (isoNewS H K ωstar E₀ s • ωstar)
      (fun i => (x i : ℂ))) ∧
    ‖KAM.Iso.extendedTorsionAverage H (isoNewtonMap H K ωstar E₀ s (r - 2 * δ))
        (isoNewS H K ωstar E₀ s • ωstar) - KAM.Iso.extendedTorsionAverage H K (s • ωstar)‖ ≤
      CDTbord n M σK σB σT * dStep n τ M σK σB σT γ ε δ / δ ^ 2 ∧
    IsUnit (KAM.Iso.extendedTorsionAverage H (isoNewtonMap H K ωstar E₀ s (r - 2 * δ))
      (isoNewS H K ωstar E₀ s • ωstar)).det ∧
    ‖(KAM.Iso.extendedTorsionAverage H (isoNewtonMap H K ωstar E₀ s (r - 2 * δ))
        (isoNewS H K ωstar E₀ s • ωstar))⁻¹ - (KAM.Iso.extendedTorsionAverage H K (s • ωstar))⁻¹‖ ≤
      2 * mSize M σK σB σT ^ 2 * CDTbord n M σK σB σT * dStep n τ M σK σB σT γ ε δ / δ ^ 2 :=
  sorry

/-! ### §B6 `Apost/Step.lean`: `bpI:p2:step` -/

/-- `bpI:p2:step` (a)–(e), `K̄ = isoNewtonMap … (r - 2δ)`, `s̄ = isoNewS …`, `d = dStep`. -/
theorem step (hS : IsoStanding n τ M σK σB σT σω ν ωstar D H γ) {E₀ r β ε δ s : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : IsoAdmissible σK σB σT D H ωstar E₀ r β ε s K) (hδ : 0 < δ) (hδ1 : δ ≤ 1)
    (h4δ : 4 * δ < r)
    (hsmall : hatcStep n τ M σK σB σT * ε / (γ ^ 4 * δ ^ (2 * aExp n τ)) ≤ min 1 β) :
    (DifferentiableOn ℂ (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) (complexStrip n (r - 2 * δ)) ∧
      IsPrimaryOnStrip (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) (r - 2 * δ) ∧
      IsRealOnReals (isoNewtonMap H K ωstar E₀ s (r - 2 * δ))) ∧
    ((∀ θ ∈ complexStrip n (r - 2 * δ),
        ‖isoNewtonMap H K ωstar E₀ s (r - 2 * δ) θ - K θ‖ ≤ dStep n τ M σK σB σT γ ε δ) ∧
      dStep n τ M σK σB σT γ ε δ ≤ β / 2 ∧
      (∀ θ ∈ complexStrip n (r - 2 * δ), Metric.ball (isoNewtonMap H K ωstar E₀ s (r - 2 * δ) θ)
        (β - dStep n τ M σK σB σT γ ε δ) ⊆ D) ∧
      ‖isoNewS H K ωstar E₀ s • ωstar - s • ωstar‖ ≤ dStep n τ M σK σB σT γ ε δ) ∧
    ((∀ θ ∈ complexStrip n (r - 2 * δ),
        ‖invarianceError H (isoNewtonMap H K ωstar E₀ s (r - 2 * δ))
          (isoNewS H K ωstar E₀ s • ωstar) θ‖ ≤
          hatCE n τ M σK σB σT * ε ^ 2 / (γ ^ 4 * δ ^ (2 * aExp n τ))) ∧
      ‖KAM.Iso.energyAverage H (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) - (E₀ : ℂ)‖ ≤
        hatCE n τ M σK σB σT * ε ^ 2 / (γ ^ 4 * δ ^ (2 * aExp n τ))) ∧
    (∀ θ ∈ complexStrip n (r - 3 * δ),
      ‖fderiv ℂ (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) θ - fderiv ℂ K θ‖ ≤
        n * dStep n τ M σK σB σT γ ε δ / δ ∧
      IsUnit (gramMatrix (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) θ).det ∧
      ‖(gramMatrix (isoNewtonMap H K ωstar E₀ s (r - 2 * δ)) θ)⁻¹ - (gramMatrix K θ)⁻¹‖ ≤
        C_B n M σK σB σT * dStep n τ M σK σB σT γ ε δ / δ) ∧
    (IsUnit (KAM.Iso.extendedTorsionAverage H (isoNewtonMap H K ωstar E₀ s (r - 2 * δ))
        (isoNewS H K ωstar E₀ s • ωstar)).det ∧
      ‖(KAM.Iso.extendedTorsionAverage H (isoNewtonMap H K ωstar E₀ s (r - 2 * δ))
          (isoNewS H K ωstar E₀ s • ωstar))⁻¹ -
        (KAM.Iso.extendedTorsionAverage H K (s • ωstar))⁻¹‖ ≤
        2 * mSize M σK σB σT ^ 2 * CDTbord n M σK σB σT * dStep n τ M σK σB σT γ ε δ / δ ^ 2) :=
  sorry

end Step

/-! ### §B7 `Apost/Schedule.lean`: `bpI:p2:schedule`, `bpI:p2:error-decay` (`δ_s`, `r_s` are K's) -/

variable (n τ M σK σB σT) in
/-- `ε₀ = e`, `ε_{s+1} = Ĉ_E ε_s² / (γ⁴ δ_s^{2a})`. -/
def isoEpsSeq (ρ ρinf γ e : ℝ) : ℕ → ℝ
  | 0 => e
  | s + 1 => hatCE n τ M σK σB σT * isoEpsSeq ρ ρinf γ e s ^ 2 /
      (γ ^ 4 * deltaSeq ρ ρinf s ^ (2 * aExp n τ))

variable (n τ M σK σB σT) in
/-- `d_s = Ĉ_Δ ε_s / (γ² δ_s^a)`. -/
def isoDSeq (ρ ρinf γ e : ℝ) (s : ℕ) : ℝ :=
  dStep n τ M σK σB σT γ (isoEpsSeq n τ M σK σB σT ρ ρinf γ e s) (deltaSeq ρ ρinf s)

/-- `bpI:p2:error-decay` (as `KAM.Apost.error_decay`, with `Ĉ_E`). -/
theorem iso_error_decay {τ M σK σB σT : ℝ} (hP : Params n τ M σK σB σT) {ρ ρinf γ e : ℝ}
    (hρinf : 0 < ρinf) (hρ : ρinf < ρ) (hγ : 0 < γ) (he : 0 ≤ e)
    (hq : (2 : ℝ) ^ (2 * aExp n τ) * hatCE n τ M σK σB σT * e /
      (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) :
    (∀ s : ℕ, isoEpsSeq n τ M σK σB σT ρ ρinf γ e s ≤
        ((2 : ℝ) ^ (2 * aExp n τ) * hatCE n τ M σK σB σT * e /
          (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ))) ^ (2 ^ s - 1) *
          (2 : ℝ) ^ (-(2 * aExp n τ * s)) * e ∧
      isoEpsSeq n τ M σK σB σT ρ ρinf γ e s ≤ (2 : ℝ) ^ (-(2 * aExp n τ * s)) * e) ∧
    (∀ j : ℝ, 0 ≤ j → j ≤ 2 * aExp n τ → ∀ s : ℕ,
      isoEpsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j ≤ e / delta0 ρ ρinf ^ j) ∧
    (∀ j : ℝ, 0 ≤ j → j ≤ 2 * aExp n τ - 1 →
      Summable (fun s => isoEpsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j) ∧
      ∑' s, isoEpsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j ≤
        2 * e / delta0 ρ ρinf ^ j) := sorry

/-! ### §B8 `Apost/Iteration.lean`: `bpI:p2:iteration` -/

/-- `(K_{j+1}, s_{j+1}) = (K̄_j, s̄_j)` with `w_j = r_j - 2δ_j`. -/
def isoSeq (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ωstar : Fin n → ℝ) (E₀ s₀ ρ ρinf : ℝ) :
    ℕ → ((Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) × ℝ
  | 0 => (K, s₀)
  | j + 1 => (isoNewtonMap H (isoSeq H K ωstar E₀ s₀ ρ ρinf j).1 ωstar E₀
      (isoSeq H K ωstar E₀ s₀ ρ ρinf j).2 (rSeq ρ ρinf j - 2 * deltaSeq ρ ρinf j),
    isoNewS H (isoSeq H K ωstar E₀ s₀ ρ ρinf j).1 ωstar E₀ (isoSeq H K ωstar E₀ s₀ ρ ρinf j).2)

/-- (I5)–(I12) of I-G1 on `T_ρ` with margin `μ`, and `ν(s₀) ≥ ν` (hypotheses of `iteration`). -/
structure IterHyp (σK σB σT σω ν : ℝ) (D : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ωstar : Fin n → ℝ) (E₀ ρ μ e s₀ : ℝ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) : Prop where
  holo : DifferentiableOn ℂ K (complexStrip n ρ)
  primary : IsPrimaryOnStrip K ρ
  real : IsRealOnReals K
  ball_sub : ∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ D
  deriv_le : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ
  gram : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB - μ
  twist : IsUnit (KAM.Iso.extendedTorsionAverage H K (s₀ • ωstar)).det ∧
    ‖(KAM.Iso.extendedTorsionAverage H K (s₀ • ωstar))⁻¹‖ ≤ σT - μ
  s_gt : 1 < s₀
  margin : ν ≤ rayMargin σω ωstar s₀
  error_le : ∀ θ ∈ complexStrip n ρ, ‖invarianceError H K (s₀ • ωstar) θ‖ ≤ e
  energy_le : ‖KAM.Iso.energyAverage H K - (E₀ : ℂ)‖ ≤ e

section Iteration

variable {τ M σK σB σT σω ν γ : ℝ} {ωstar : Fin n → ℝ}
  {D : Set ((Fin n → ℂ) × (Fin n → ℂ))} {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}

/-- `bpI:p2:iteration` (i)–(vi), `D_j = ∑_{i<j} d_i`. -/
theorem iteration (hS : IsoStanding n τ M σK σB σT σω ν ωstar D H γ) {E₀ ρ ρinf μ e s₀ : ℝ}
    (hρinf : 0 < ρinf) (hρ : ρinf < ρ) (hμ : 0 < μ) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : IterHyp σK σB σT σω ν D H ωstar E₀ ρ μ e s₀ K) (he1 : e ≤ 1)
    (hsmall : hatcStar n τ M σK σB σT μ ν * e / (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) :
    isoSeq H K ωstar E₀ s₀ ρ ρinf 0 = (K, s₀) ∧ ∀ j : ℕ,
      (IsoAdmissible σK σB σT D H ωstar E₀ (rSeq ρ ρinf j)
          (μ - ∑ i ∈ Finset.range j, isoDSeq n τ M σK σB σT ρ ρinf γ e i)
          (isoEpsSeq n τ M σK σB σT ρ ρinf γ e j) (isoSeq H K ωstar E₀ s₀ ρ ρinf j).2
          (isoSeq H K ωstar E₀ s₀ ρ ρinf j).1 ∧
        isoEpsSeq n τ M σK σB σT ρ ρinf γ e j ≤ e) ∧
      (∑ i ∈ Finset.range j, isoDSeq n τ M σK σB σT ρ ρinf γ e i ≤ μ / 4 ∧
        ∑ i ∈ Finset.range j, isoDSeq n τ M σK σB σT ρ ρinf γ e i ≤ ν / 2 ∧
        (∀ θ ∈ complexStrip n (rSeq ρ ρinf j), ‖(isoSeq H K ωstar E₀ s₀ ρ ρinf j).1 θ - K θ‖ ≤
          ∑ i ∈ Finset.range j, isoDSeq n τ M σK σB σT ρ ρinf γ e i) ∧
        ‖(isoSeq H K ωstar E₀ s₀ ρ ρinf j).2 • ωstar - s₀ • ωstar‖ ≤
          ∑ i ∈ Finset.range j, isoDSeq n τ M σK σB σT ρ ρinf γ e i ∧
        ν - ∑ i ∈ Finset.range j, isoDSeq n τ M σK σB σT ρ ρinf γ e i ≤
          rayMargin σω ωstar (isoSeq H K ωstar E₀ s₀ ρ ρinf j).2 ∧
        1 < (isoSeq H K ωstar E₀ s₀ ρ ρinf j).2 ∧ (isoSeq H K ωstar E₀ s₀ ρ ρinf j).2 < σω) ∧
      ((∀ θ ∈ complexStrip n (rSeq ρ ρinf j), ‖fderiv ℂ (isoSeq H K ωstar E₀ s₀ ρ ρinf j).1 θ‖ ≤
          σK - μ + ∑ i ∈ Finset.range j,
            n * isoDSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i) ∧
        σK - μ + ∑ i ∈ Finset.range j,
          n * isoDSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i ≤ σK - μ / 2) ∧
      ((∀ θ ∈ complexStrip n (rSeq ρ ρinf j),
          ‖(gramMatrix (isoSeq H K ωstar E₀ s₀ ρ ρinf j).1 θ)⁻¹‖ ≤ σB - μ + ∑ i ∈ Finset.range j,
            C_B n M σK σB σT * isoDSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i) ∧
        σB - μ + ∑ i ∈ Finset.range j,
          C_B n M σK σB σT * isoDSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i ≤ σB - μ / 2) ∧
      (‖(KAM.Iso.extendedTorsionAverage H (isoSeq H K ωstar E₀ s₀ ρ ρinf j).1
            ((isoSeq H K ωstar E₀ s₀ ρ ρinf j).2 • ωstar))⁻¹‖ ≤
          σT - μ + ∑ i ∈ Finset.range j, 2 * mSize M σK σB σT ^ 2 * CDTbord n M σK σB σT *
            isoDSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i ^ 2 ∧
        σT - μ + ∑ i ∈ Finset.range j, 2 * mSize M σK σB σT ^ 2 * CDTbord n M σK σB σT *
          isoDSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i ^ 2 ≤ σT - μ / 2) ∧
      ((∀ θ ∈ complexStrip n (rSeq ρ ρinf (j + 1)),
          ‖(isoSeq H K ωstar E₀ s₀ ρ ρinf (j + 1)).1 θ - (isoSeq H K ωstar E₀ s₀ ρ ρinf j).1 θ‖ ≤
            isoDSeq n τ M σK σB σT ρ ρinf γ e j ∧
          ‖fderiv ℂ (isoSeq H K ωstar E₀ s₀ ρ ρinf (j + 1)).1 θ -
              fderiv ℂ (isoSeq H K ωstar E₀ s₀ ρ ρinf j).1 θ‖ ≤
            n * isoDSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j) ∧
        ‖(isoSeq H K ωstar E₀ s₀ ρ ρinf (j + 1)).2 • ωstar -
            (isoSeq H K ωstar E₀ s₀ ρ ρinf j).2 • ωstar‖ ≤
          isoDSeq n τ M σK σB σT ρ ρinf γ e j) := sorry

end Iteration

/-! ### §B9 `Apost/Limit.lean`: `bpI:p2:limit`, `bpI:p2:energy-limit` -/

open Classical in
/-- `K_∞ = lim K_j` on `T_{ρ∞}`, `K` elsewhere. -/
def isoLimit (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ωstar : Fin n → ℝ) (E₀ s₀ ρ ρinf : ℝ) : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ) :=
  fun θ => if θ ∈ complexStrip n ρinf then
    limUnder atTop (fun j => (isoSeq H K ωstar E₀ s₀ ρ ρinf j).1 θ) else K θ

/-- `s_∞ = lim s_j`. -/
def isoSLimit (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ωstar : Fin n → ℝ) (E₀ s₀ ρ ρinf : ℝ) : ℝ :=
  limUnder atTop (fun j => (isoSeq H K ωstar E₀ s₀ ρ ρinf j).2)

section Limit

variable {τ M σK σB σT σω ν γ : ℝ} {ωstar : Fin n → ℝ}
  {D : Set ((Fin n → ℂ) × (Fin n → ℂ))} {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}

/-- `bpI:p2:limit` (a)–(e). -/
theorem limit (hS : IsoStanding n τ M σK σB σT σω ν ωstar D H γ) {E₀ ρ ρinf μ e s₀ : ℝ}
    (hρinf : 0 < ρinf) (hρ : ρinf < ρ) (hμ : 0 < μ) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : IterHyp σK σB σT σω ν D H ωstar E₀ ρ μ e s₀ K) (he1 : e ≤ 1)
    (hsmall : hatcStar n τ M σK σB σT μ ν * e / (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) :
    (TendstoUniformlyOn (fun j => (isoSeq H K ωstar E₀ s₀ ρ ρinf j).1)
        (isoLimit H K ωstar E₀ s₀ ρ ρinf) atTop (complexStrip n ρinf) ∧
      TendstoUniformlyOn (fun j θ => fderiv ℂ (isoSeq H K ωstar E₀ s₀ ρ ρinf j).1 θ)
        (fderiv ℂ (isoLimit H K ωstar E₀ s₀ ρ ρinf)) atTop (complexStrip n ρinf) ∧
      Tendsto (fun j => (isoSeq H K ωstar E₀ s₀ ρ ρinf j).2) atTop
        (𝓝 (isoSLimit H K ωstar E₀ s₀ ρ ρinf)) ∧
      DifferentiableOn ℂ (isoLimit H K ωstar E₀ s₀ ρ ρinf) (complexStrip n ρinf) ∧
      IsPrimaryOnStrip (isoLimit H K ωstar E₀ s₀ ρ ρinf) ρinf ∧
      IsRealOnReals (isoLimit H K ωstar E₀ s₀ ρ ρinf)) ∧
    ((∀ θ ∈ complexStrip n ρinf, ‖isoLimit H K ωstar E₀ s₀ ρ ρinf θ - K θ‖ ≤
        2 * hatCDelta n τ M σK σB σT * e / (γ ^ 2 * delta0 ρ ρinf ^ aExp n τ)) ∧
      ‖isoSLimit H K ωstar E₀ s₀ ρ ρinf • ωstar - s₀ • ωstar‖ ≤
        2 * hatCDelta n τ M σK σB σT * e / (γ ^ 2 * delta0 ρ ρinf ^ aExp n τ) ∧
      2 * hatCDelta n τ M σK σB σT * e / (γ ^ 2 * delta0 ρ ρinf ^ aExp n τ) ≤ μ / 4 ∧
      2 * hatCDelta n τ M σK σB σT * e / (γ ^ 2 * delta0 ρ ρinf ^ aExp n τ) ≤ ν / 2) ∧
    (1 < isoSLimit H K ωstar E₀ s₀ ρ ρinf ∧ isoSLimit H K ωstar E₀ s₀ ρ ρinf < σω ∧
      ν / 2 ≤ rayMargin σω ωstar (isoSLimit H K ωstar E₀ s₀ ρ ρinf)) ∧
    (∀ θ ∈ complexStrip n ρinf, Metric.ball (isoLimit H K ωstar E₀ s₀ ρ ρinf θ) (μ / 2) ⊆ D ∧
      ‖fderiv ℂ (isoLimit H K ωstar E₀ s₀ ρ ρinf) θ‖ ≤ σK - μ / 2) ∧
    (∀ θ ∈ complexStrip n ρinf, invarianceError H (isoLimit H K ωstar E₀ s₀ ρ ρinf)
      (isoSLimit H K ωstar E₀ s₀ ρ ρinf • ωstar) θ = 0) := sorry

/-- `bpI:p2:energy-limit`. -/
theorem energy_limit (hS : IsoStanding n τ M σK σB σT σω ν ωstar D H γ) {E₀ ρ ρinf μ e s₀ : ℝ}
    (hρinf : 0 < ρinf) (hρ : ρinf < ρ) (hμ : 0 < μ) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : IterHyp σK σB σT σω ν D H ωstar E₀ ρ μ e s₀ K) (he1 : e ≤ 1)
    (hsmall : hatcStar n τ M σK σB σT μ ν * e / (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) :
    KAM.Iso.energyAverage H (isoLimit H K ωstar E₀ s₀ ρ ρinf) = (E₀ : ℂ) ∧
    Tendsto (fun j => KAM.Iso.energyAverage H (isoSeq H K ωstar E₀ s₀ ρ ρinf j).1) atTop
      (𝓝 (KAM.Iso.energyAverage H (isoLimit H K ωstar E₀ s₀ ρ ρinf))) := sorry

end Limit

/-! ### §B10 `Apost/G1.lean`: `bpI:p2:g1` -/

/-- `C₁ = ρ^{4τ} max {γ̄⁴, ĉ_* δ₀^{-2a}}`. -/
def isoC1 (n : ℕ) (τ ρ ρinf M σK σB σT μ ν γbar : ℝ) : ℝ :=
  ρ ^ (4 * τ) * max (γbar ^ 4)
    (hatcStar n τ M σK σB σT μ ν * delta0 ρ ρinf ^ (-(2 * aExp n τ)))

/-- `C₂ = C₃ = 2 Ĉ_Δ ρ^{2τ} δ₀^{-a}`. -/
def isoC2 (n : ℕ) (τ ρ ρinf M σK σB σT : ℝ) : ℝ :=
  2 * hatCDelta n τ M σK σB σT * ρ ^ (2 * τ) * delta0 ρ ρinf ^ (-aExp n τ)

/-- `bpI:p2:g1`: the frozen I-G1 body (`IG1Body`, verbatim) with `C₁ = isoC1`, `C₂ = C₃ = isoC2`;
frozen binders in the frozen order. -/
theorem g1_explicit {n : ℕ} (hn : 2 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 ≤ τ)
    {ρ ρinf : ℝ} (hρinf : 0 < ρinf) (hρinfρ : ρinf < ρ)
    {M σK σB σT μ γbar σω ν : ℝ}
    (hM : 0 < M) (hσK : 0 < σK) (hσB : 0 < σB) (hσT : 0 < σT)
    (hμ : 0 < μ) (hγbar : 0 < γbar) (hσω : 1 < σω) (hν : 0 < ν)
    (ωstar : Fin n → ℝ) (hωstar : ωstar ≠ 0) :
    0 < isoC1 n τ ρ ρinf M σK σB σT μ ν γbar ∧ 0 < isoC2 n τ ρ ρinf M σK σB σT ∧
      0 < isoC2 n τ ρ ρinf M σK σB σT ∧
      KAM.Iso.Charts.IG1Body n τ ρ ρinf M σK σB σT μ γbar σω ν ωstar
        (isoC1 n τ ρ ρinf M σK σB σT μ ν γbar) (isoC2 n τ ρ ρinf M σK σB σT)
        (isoC2 n τ ρ ρinf M σK σB σT) := sorry

end KAM.Iso.Apost

/-! ## C. Part 3, `KAM.Iso.Charts` (`KAM/Iso/Charts/*`), `n = 2`, `τ = 2` -/

namespace KAM.Iso.Charts

open KAM KAM.Torus KAM.Iso.Confinement
open KAM.Head (unperturbedTorus muParam Fconst Mconst actionHessian)

/-! ### §C1 `Charts/Constants.lean`: `bpI:p3:constants`, `#k-bridge`, `compact` -/

theorem fractD_eq_domainD (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) :
    fractD B s₀ r₀ = KAM.Head.domainD 2 s₀ r₀ B := rfl

theorem totalH_eq_hbold (h : (Fin 2 → ℂ) → ℂ) (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) :
    totalH h f = KAM.Head.hbold h f := rfl

/-- `ρ = s/4` (`ρ_∞ = s/8` is `rhoInf`; `δ_*, μ, F_j, M, M_h, c̄` are K's `KAM.Head` constants). -/
def rhoIso (s₀ : ℝ) : ℝ := min s₀ 1 / 4

/-- `d_B = inf {|I - J| : I ∈ closure B', J ∉ B}`. -/
def dB (B B' : Set (Fin 2 → ℝ)) : ℝ :=
  sInf ((fun p : (Fin 2 → ℝ) × (Fin 2 → ℝ) => ‖p.1 - p.2‖) '' (closure B' ×ˢ Bᶜ))

def eta1 (η : ℝ) (B B' : Set (Fin 2 → ℝ)) : ℝ := min η (dB B B' / 2)
/-- `𝒮 = {I : dist(I, closure B') ≤ d_B/2}`. -/
def sSet (B B' : Set (Fin 2 → ℝ)) : Set (Fin 2 → ℝ) := Metric.cthickening (dB B B' / 2) (closure B')

def mhConst (h : (Fin 2 → ℂ) → ℂ) (B B' : Set (Fin 2 → ℝ)) : ℝ :=
  sInf ((fun I => ‖frequencyMap h I‖) '' sSet B B')
def MgConst (h : (Fin 2 → ℂ) → ℂ) (B B' : Set (Fin 2 → ℝ)) : ℝ :=
  sSup ((fun I => ‖frequencyMap h I‖) '' sSet B B')
/-- `S_h = max_𝒮 |𝖡_h⁻¹|` (row-sum norm of the real matrix). -/
def ShConst (h : (Fin 2 → ℂ) → ℂ) (B B' : Set (Fin 2 → ℝ)) : ℝ :=
  sSup ((fun I => ‖(KAM.Iso.borderedHessian h I)⁻¹‖) '' sSet B B')

def nuConst (h : (Fin 2 → ℂ) → ℂ) (B B' : Set (Fin 2 → ℝ)) : ℝ := mhConst h B B' / 4
def sigmaOmegaConst (h : (Fin 2 → ℂ) → ℂ) (B B' : Set (Fin 2 → ℝ)) : ℝ :=
  4 * MgConst h B B' / mhConst h B B' + 2
/-- `σ_K = σ_B = 1 + μ`. -/
def sigmaKConst (s₀ r₀ : ℝ) : ℝ := 1 + muParam s₀ r₀
def sigmaTConst (h : (Fin 2 → ℂ) → ℂ) (B B' : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) : ℝ :=
  2 * ShConst h B B' + muParam s₀ r₀
def epsT (h : (Fin 2 → ℂ) → ℂ) (B B' : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) : ℝ :=
  1 / (4 * ShConst h B B' * Fconst 2 s₀ r₀ 2)

variable {B : Set (Fin 2 → ℝ)} {s₀ r₀ : ℝ} {h : (Fin 2 → ℂ) → ℂ} {B' : Set (Fin 2 → ℝ)} {η : ℝ}

/-- `bpI:p3:compact`. -/
theorem compact (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty) :
    0 < dB B B' ∧ IsCompact (sSet B B') ∧ closure B' ⊆ sSet B B' ∧ sSet B B' ⊆ B ∧
    0 < mhConst h B B' ∧ mhConst h B B' ≤ MgConst h B B' ∧ 0 < ShConst h B B' ∧
    ∀ I ∈ sSet B B', mhConst h B B' ≤ ‖frequencyMap h I‖ ∧ ‖frequencyMap h I‖ ≤ MgConst h B B' ∧
      ‖(KAM.Iso.borderedHessian h I)⁻¹‖ ≤ ShConst h B B' := sorry

/-! ### §C2 `Charts/Coordinates.lean`: `det-identity`, `coordinates`, `slope-ray` -/

def perp (g : Fin 2 → ℝ) : Fin 2 → ℝ := ![-g 1, g 0]
def det2 (g w : Fin 2 → ℝ) : ℝ := g 0 * w 1 - g 1 * w 0
def aCoord (g w : Fin 2 → ℝ) : ℝ := (g ⬝ᵥ w) / (g ⬝ᵥ g)
def bCoord (g w : Fin 2 → ℝ) : ℝ := det2 g w / (g ⬝ᵥ g)
def slope (g w : Fin 2 → ℝ) : ℝ := det2 g w / (g ⬝ᵥ w)
/-- `∇²h(I) = D(∇h)(I)`, the upper-left block of `𝖡_h(I)`. -/
def hessR (h : (Fin 2 → ℂ) → ℂ) (I : Fin 2 → ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.of fun a b => fderiv ℝ (frequencyMap h) I (Pi.single b 1) a
/-- `𝒰_c = {I ∈ U : a_c(∇h(I)) > 0}`. -/
def chartDom (h : (Fin 2 → ℂ) → ℂ) (B : Set (Fin 2 → ℝ)) (r₀ : ℝ) (c : Fin 2 → ℝ) :
    Set (Fin 2 → ℝ) :=
  {I | I ∈ realAct B r₀ ∧ 0 < aCoord (frequencyMap h c) (frequencyMap h I)}
def chartM (h : (Fin 2 → ℂ) → ℂ) (c I : Fin 2 → ℝ) : ℝ := slope (frequencyMap h c) (frequencyMap h I)
def chartPhi (h : (Fin 2 → ℂ) → ℂ) (c I : Fin 2 → ℝ) : ℝ × ℝ := (realPart h I, chartM h c I)
/-- `det DF(x)` for `F : ℝ² → ℝ × ℝ`. -/
def jac2 (F : (Fin 2 → ℝ) → ℝ × ℝ) (x : Fin 2 → ℝ) : ℝ :=
  fderiv ℝ (fun y => (F y).1) x (Pi.single 0 1) * fderiv ℝ (fun y => (F y).2) x (Pi.single 1 1) -
    fderiv ℝ (fun y => (F y).1) x (Pi.single 1 1) * fderiv ℝ (fun y => (F y).2) x (Pi.single 0 1)

/-- `bpI:p3:det-identity` (and the symmetry of `∇²h`; (a): `∇h ≠ 0` on `U`). -/
theorem det_identity (hd : HeadData B s₀ r₀ h B' η) {I : Fin 2 → ℝ} (hI : I ∈ realAct B r₀) :
    (hessR h I)ᵀ = hessR h I ∧
    (KAM.Iso.borderedHessian h I).det = -(perp (frequencyMap h I) ⬝ᵥ (hessR h I *ᵥ perp (frequencyMap h I))) ∧
    frequencyMap h I ≠ 0 ∧
    det2 (frequencyMap h I) (hessR h I *ᵥ perp (frequencyMap h I)) = -(KAM.Iso.borderedHessian h I).det :=
  sorry

/-- `bpI:p3:coordinates` (the claims of the definition). -/
theorem coordinates (hd : HeadData B s₀ r₀ h B' η) {c : Fin 2 → ℝ} (hc : c ∈ realAct B r₀) :
    (∀ w, w = aCoord (frequencyMap h c) w • frequencyMap h c +
      bCoord (frequencyMap h c) w • perp (frequencyMap h c)) ∧
    IsOpen (chartDom h B r₀ c) ∧ c ∈ chartDom h B r₀ c ∧
    ContDiffOn ℝ 1 (chartPhi h c) (chartDom h B r₀ c) ∧ chartPhi h c c = (realPart h c, 0) := sorry

/-- `bpI:p3:slope-ray`. -/
theorem slope_ray {g w w' : Fin 2 → ℝ} (hg : g ≠ 0) (hw : 0 < aCoord g w) (hw' : 0 < aCoord g w') :
    (slope g w = slope g w' ↔ w' = (aCoord g w' / aCoord g w) • w) ∧
    (slope g w = slope g w' → aCoord g w' / aCoord g w = ‖w'‖ / ‖w‖) := sorry

/-! ### §C3 `Charts/Chart.lean`: `chart`, `patch`, `cover` -/

/-- `bpI:p3:chart`. -/
theorem chart (hd : HeadData B s₀ r₀ h B' η) {c : Fin 2 → ℝ} (hc : c ∈ closure B') :
    jac2 (chartPhi h c) c = -(KAM.Iso.borderedHessian h c).det / (frequencyMap h c ⬝ᵥ frequencyMap h c) ∧
    jac2 (chartPhi h c) c ≠ 0 ∧
    ∀ N : Set (Fin 2 → ℝ), IsOpen N → c ∈ N → ∃ (W : Set (Fin 2 → ℝ)) (Ψ : ℝ × ℝ → Fin 2 → ℝ),
      IsOpen W ∧ c ∈ W ∧ W ⊆ N ∩ chartDom h B r₀ c ∧ IsOpen (chartPhi h c '' W) ∧
      ContDiffOn ℝ 1 Ψ (chartPhi h c '' W) ∧ (∀ v ∈ chartPhi h c '' W, Ψ v ∈ W) ∧
      (∀ I ∈ W, Ψ (chartPhi h c I) = I) ∧ ∀ v ∈ chartPhi h c '' W, chartPhi h c (Ψ v) = v := sorry

/-- `bpI:p3:patch` (P1)–(P3), for the chart `Φ_c = (h, m_c)` with inverse `Ψ` on `W`. -/
structure IsPatch (h : (Fin 2 → ℂ) → ℂ) (B : Set (Fin 2 → ℝ)) (r₀ : ℝ) (B' : Set (Fin 2 → ℝ))
    (η₁ : ℝ) (c : Fin 2 → ℝ) (W : Set (Fin 2 → ℝ)) (Ψ : ℝ × ℝ → Fin 2 → ℝ) (δE δm ρc : ℝ) :
    Prop where
  c_mem : c ∈ closure B'
  isOpen_W : IsOpen W
  W_dom : W ⊆ chartDom h B r₀ c
  W_subset_B : W ⊆ B
  W_subset_ball : W ⊆ ball c (η₁ / 4)
  hR_contDiffOn : ContDiffOn ℝ 1 (realPart h) W
  m_contDiffOn : ContDiffOn ℝ 1 (chartM h c) W
  isOpen_V : IsOpen (chartPhi h c '' W)
  Ψ_contDiffOn : ContDiffOn ℝ 1 Ψ (chartPhi h c '' W)
  Ψ_mem : ∀ v ∈ chartPhi h c '' W, Ψ v ∈ W
  Ψ_left : ∀ I ∈ W, Ψ (chartPhi h c I) = I
  Ψ_right : ∀ v ∈ chartPhi h c '' W, chartPhi h c (Ψ v) = v
  δE_pos : 0 < δE
  δm_pos : 0 < δm
  ρc_pos : 0 < ρc
  Q_subset : Icc (realPart h c - δE) (realPart h c + δE) ×ˢ Icc (-δm) δm ⊆ chartPhi h c '' W
  ρc_le : ρc ≤ η₁ / 4
  ball_subset : ball c ρc ⊆ W
  ball_h : ∀ I ∈ ball c ρc, |realPart h I - realPart h c| < δE / 2
  ball_m : ∀ I ∈ ball c ρc, |chartM h c I| < δm / 4

/-- A patch with two ray slopes is a Part 5 `EnergyPatch` (`hR = realPart h`, `m = m_c`). -/
def IsPatch.toEnergyPatch {r₀ η₁ δE δm ρc : ℝ} {c : Fin 2 → ℝ} {W : Set (Fin 2 → ℝ)}
    {Ψ : ℝ × ℝ → Fin 2 → ℝ} (hp : IsPatch h B r₀ B' η₁ c W Ψ δE δm ρc) (mp mm : ℝ)
    (hmp : mp ∈ Ioo (δm / 2) δm) (hmm : mm ∈ Ioo (-δm) (-(δm / 2))) :
    EnergyPatch (realPart h) B η₁ :=
  ⟨c, W, chartM h c, Ψ, δE, δm, ρc, mp, mm, hp.δE_pos, hp.δm_pos, hp.ρc_pos, hp.isOpen_W,
    hp.W_subset_B, hp.W_subset_ball, hp.hR_contDiffOn, hp.m_contDiffOn, hp.isOpen_V,
    hp.Ψ_contDiffOn, hp.Ψ_mem, hp.Ψ_left, hp.Ψ_right, hp.Q_subset, hp.ρc_le, hp.ball_subset,
    hp.ball_h, hp.ball_m, hmp, hmm⟩

/-- `bpI:p3:cover`: finitely many patches `(c, W_c, Ψ_c, δ_E, δ_m, ρ_c)` cover `closure B'`. -/
theorem cover (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty) :
    ∃ (P : Finset (Fin 2 → ℝ)) (W : (Fin 2 → ℝ) → Set (Fin 2 → ℝ))
      (Ψ : (Fin 2 → ℝ) → ℝ × ℝ → Fin 2 → ℝ) (δE δm ρc : (Fin 2 → ℝ) → ℝ),
      (∀ c ∈ P, IsPatch h B r₀ B' (eta1 η B B') c (W c) (Ψ c) (δE c) (δm c) (ρc c)) ∧
      closure B' ⊆ ⋃ c ∈ P, ball c (ρc c) := sorry

/-! ### §C4 `Charts/Rays.lean`: `dio-open`, `rays`, `patch-rays`; §C5 `Charts/Points.lean` -/

/-- `ω*` is a `(γ, 2)`-Diophantine ray of slope `m` at `c` with `m_h/4 < |ω*| < m_h/2`. -/
def IsRay (h : (Fin 2 → ℂ) → ℂ) (B B' : Set (Fin 2 → ℝ)) (c : Fin 2 → ℝ) (γ : ℝ)
    (ωs : Fin 2 → ℝ) (m : ℝ) : Prop :=
  0 < γ ∧ IsDiophantine γ 2 ωs ∧ 0 < aCoord (frequencyMap h c) ωs ∧
    slope (frequencyMap h c) ωs = m ∧ mhConst h B B' / 4 < ‖ωs‖ ∧ ‖ωs‖ < mhConst h B B' / 2

/-- `bpI:p3:dio-open` (G3 as the premise `hG3`). -/
theorem dio_open (hG3 : G3Statement) {O : Set (Fin 2 → ℝ)} (hO : IsOpen O) (hne : O.Nonempty)
    (hb : Bornology.IsBounded O) : ∃ γ : ℝ, 0 < γ ∧ ∃ ω ∈ O, IsDiophantine γ 2 ω := sorry

/-- `bpI:p3:rays` (`J = (a, b)`). -/
theorem rays (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty) (hG3 : G3Statement)
    {c : Fin 2 → ℝ} (hc : c ∈ closure B') {a b : ℝ} (hab : a < b) :
    ∃ (γ : ℝ) (ωs : Fin 2 → ℝ) (m : ℝ), IsRay h B B' c γ ωs m ∧ m ∈ Ioo a b := sorry

/-- `bpI:p3:patch-rays` (existence form): rays with slopes in `(δ_m/2, δ_m)`, `(-δ_m, -δ_m/2)`. -/
theorem patch_rays (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty) (hG3 : G3Statement)
    {η₁ δE δm ρc : ℝ} {c : Fin 2 → ℝ} {W : Set (Fin 2 → ℝ)} {Ψ : ℝ × ℝ → Fin 2 → ℝ}
    (hp : IsPatch h B r₀ B' η₁ c W Ψ δE δm ρc) :
    ∃ (γp γm mp mm : ℝ) (ωp ωm : Fin 2 → ℝ), IsRay h B B' c γp ωp mp ∧ mp ∈ Ioo (δm / 2) δm ∧
      IsRay h B B' c γm ωm mm ∧ mm ∈ Ioo (-δm) (-(δm / 2)) := sorry

/-- `bpI:p3:points`, for one ray (both signs are instances). -/
theorem points (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty) {δE δm ρc : ℝ}
    {c : Fin 2 → ℝ} {W : Set (Fin 2 → ℝ)} {Ψ : ℝ × ℝ → Fin 2 → ℝ}
    (hp : IsPatch h B r₀ B' (eta1 η B B') c W Ψ δE δm ρc) {γ m : ℝ} {ωs : Fin 2 → ℝ}
    (hray : IsRay h B B' c γ ωs m) (hm : |m| < δm) {E : ℝ} (hE : |E - realPart h c| ≤ δE) :
    (E, m) ∈ chartPhi h c '' W ∧ Ψ (E, m) ∈ W ∧ realPart h (Ψ (E, m)) = E ∧
    chartM h c (Ψ (E, m)) = m ∧
    frequencyMap h (Ψ (E, m)) = (‖frequencyMap h (Ψ (E, m))‖ / ‖ωs‖) • ωs ∧
    2 < ‖frequencyMap h (Ψ (E, m))‖ / ‖ωs‖ ∧
    ‖frequencyMap h (Ψ (E, m))‖ / ‖ωs‖ < 4 * MgConst h B B' / mhConst h B B' ∧
    ‖Ψ (E, m) - c‖ < eta1 η B B' / 4 ∧ Ψ (E, m) ∈ sSet B B' ∧ Ψ (E, m) ∈ B ∧
    (∀ I₀ : Fin 2 → ℝ, ‖I₀ - c‖ < ρc → ‖Ψ (E, m) - I₀‖ < eta1 η B B' / 2) ∧
    Set.BijOn (chartPhi h c) {I | I ∈ W ∧ realPart h I = E ∧ |chartM h c I| ≤ δm}
      ({E} ×ˢ Icc (-δm) δm) := sorry

/-! ### §C6 `Charts/Torus.lean`: `hypothesis-d`, `torus` -/

/-- `bpI:p3:hypothesis-d`: (I1)–(I4) for `(𝔇, h + f)` with `M = Mconst`, and `|D^j f| ≤ F_j ε`. -/
theorem hypothesis_d (hd : HeadData B s₀ r₀ h B' η) {f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ} {ε : ℝ}
    (hf : PerturbData B s₀ r₀ f ε) (hε1 : ε ≤ 1) :
    IsOpen (fractD B s₀ r₀) ∧
    (∀ z ∈ fractD B s₀ r₀, ∀ k : Fin 2 → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ fractD B s₀ r₀) ∧
    DifferentiableOn ℂ (totalH h f) (fractD B s₀ r₀) ∧
    (∀ z ∈ fractD B s₀ r₀, ∀ k : Fin 2 → ℤ,
      totalH h f (z.1 + (fun i => (k i : ℂ)), z.2) = totalH h f z) ∧
    (∀ θ I : Fin 2 → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ fractD B s₀ r₀ →
      (totalH h f ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) ∧
    (∀ z ∈ fractD B s₀ r₀, ‖fderiv ℂ (totalH h f) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖hamiltonianVectorFieldℂ (totalH h f) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖fderiv ℂ (hamiltonianVectorFieldℂ (totalH h f)) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ (totalH h f)) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖iteratedFDeriv ℂ 2 (totalH h f) z‖ ≤ Mconst s₀ r₀ B h) ∧
    ∀ z ∈ fractD B s₀ r₀, (∀ j ∈ ({1, 2, 3} : Set ℕ), ‖iteratedFDeriv ℂ j f z‖ ≤ Fconst 2 s₀ r₀ j * ε) ∧
      ‖fderiv ℂ f z‖ ≤ Fconst 2 s₀ r₀ 1 * ε ∧ ‖hamiltonianVectorFieldℂ f z‖ ≤ Fconst 2 s₀ r₀ 1 * ε :=
  sorry

/-- `R(θ) = (∂²_I f  0; (∂_I f)ᵀ  0)` at `(θ, I)`. -/
def flatRemainder (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (I : Fin 2 → ℝ) (θ : Fin 2 → ℂ) :
    Matrix (Fin 2 ⊕ Unit) (Fin 2 ⊕ Unit) ℂ :=
  KAM.Iso.Linear.bordMat (actionHessian f (θ, toC I)) 0
    (fun b => fderiv ℂ f (θ, toC I) (0, Pi.single b 1))

/-- `bpI:p3:torus` (a)–(e) for `K⁰(θ) = (θ, I)`, `ω = s'ω* = ∇h(I)`. -/
theorem torus (hd : HeadData B s₀ r₀ h B' η) {f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ} {ε : ℝ}
    (hf : PerturbData B s₀ r₀ f ε) (hε1 : ε ≤ 1) {I ωs : Fin 2 → ℝ} (hI : I ∈ B) {s' : ℝ}
    (hgrad : frequencyMap h I = s' • ωs) :
    (Differentiable ℂ (unperturbedTorus I) ∧ IsPrimaryOnStrip (unperturbedTorus I) (min s₀ 1 / 2) ∧
      IsRealOnReals (unperturbedTorus I) ∧
      (∀ θ ∈ complexStrip 2 (min s₀ 1 / 2), unperturbedTorus I θ ∈ fractD B s₀ r₀) ∧
      (∀ θ, ‖fderiv ℂ (unperturbedTorus I) θ‖ = 1 ∧ gramMatrix (unperturbedTorus I) θ = 1 ∧
        ∀ j, normalFrame (unperturbedTorus I) θ j = (0, Pi.single j 1)) ∧
      ∀ θ ∈ complexStrip 2 (rhoIso s₀),
        Metric.ball (unperturbedTorus I θ) (muParam s₀ r₀) ⊆ fractD B s₀ r₀) ∧
    (∀ θ ∈ complexStrip 2 (min s₀ 1 / 2),
      invarianceError (totalH h f) (unperturbedTorus I) (s' • ωs) θ =
        hamiltonianVectorFieldℂ f (θ, toC I) ∧
      ‖invarianceError (totalH h f) (unperturbedTorus I) (s' • ωs) θ‖ ≤ Fconst 2 s₀ r₀ 1 * ε) ∧
    (∀ θ ∈ complexStrip 2 (min s₀ 1 / 2),
      KAM.Iso.extendedTorsion (totalH h f) (unperturbedTorus I) (s' • ωs) θ =
        (KAM.Iso.borderedHessian h I).map (fun x : ℝ => (x : ℂ)) + flatRemainder f I θ ∧
      ‖flatRemainder f I θ‖ ≤ 2 * Fconst 2 s₀ r₀ 2 * ε) ∧
    ‖KAM.Iso.extendedTorsionAverage (totalH h f) (unperturbedTorus I) (s' • ωs) -
      (KAM.Iso.borderedHessian h I).map (fun x : ℝ => (x : ℂ))‖ ≤ 2 * Fconst 2 s₀ r₀ 2 * ε ∧
    (I ∈ sSet B B' → ε ≤ epsT h B B' s₀ r₀ →
      IsUnit (KAM.Iso.extendedTorsionAverage (totalH h f) (unperturbedTorus I) (s' • ωs)).det ∧
      ‖(KAM.Iso.extendedTorsionAverage (totalH h f) (unperturbedTorus I) (s' • ωs))⁻¹‖ ≤
        2 * ShConst h B B') ∧
    ‖KAM.Iso.energyAverage (totalH h f) (unperturbedTorus I) - h (toC I)‖ ≤ ε := sorry

/-! ### §C7 `Charts/Apply.lean`: `bpI:p3:apply` (+ `#constants`); §C8 `Charts/Tori.lean` -/

/-- `bpI:p3:apply` with `#constants` (audit F1): constants `C_i`, chosen per patch and ray before
`f, ε, E`, together with the FULL frozen I-G1 body at that tuple (`IG1Body`, the `GValid`
precedent), then (O1)–(O6) for `K = K⁰(I)`, `I = Ψ(E, m)`, `s = |∇h(I)|/|ω*|`, `e = F₁ε`, `E₀ = E`. -/
theorem apply (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty) (hG1 : IG1Statement)
    {δE δm ρc : ℝ} {c : Fin 2 → ℝ} {W : Set (Fin 2 → ℝ)} {Ψ : ℝ × ℝ → Fin 2 → ℝ}
    (hp : IsPatch h B r₀ B' (eta1 η B B') c W Ψ δE δm ρc) {γ m : ℝ} {ωs : Fin 2 → ℝ}
    (hray : IsRay h B B' c γ ωs m) (hm : |m| < δm) :
    ∃ C₁ C₂ C₃ : ℝ, 0 < C₁ ∧ 0 < C₂ ∧ 0 < C₃ ∧
      IG1Body 2 2 (rhoIso s₀) (rhoInf s₀) (Mconst s₀ r₀ B h) (sigmaKConst s₀ r₀) (sigmaKConst s₀ r₀)
        (sigmaTConst h B B' s₀ r₀) (muParam s₀ r₀) γ (sigmaOmegaConst h B B') (nuConst h B B')
        ωs C₁ C₂ C₃ ∧
      ∀ (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ), PerturbData B s₀ r₀ f ε → ε ≤ 1 →
        ε ≤ epsT h B B' s₀ r₀ → ε < γ ^ 4 * rhoIso s₀ ^ 8 / (C₁ * Fconst 2 s₀ r₀ 1) →
        ∀ E : ℝ, |E - realPart h c| ≤ δE →
        ∃ (Kinf : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)) (sinf : ℝ),
          1 < sinf ∧ sinf < sigmaOmegaConst h B B' ∧
          DifferentiableOn ℂ Kinf (complexStrip 2 (rhoInf s₀)) ∧
          IsPrimaryOnStrip Kinf (rhoInf s₀) ∧ IsRealOnReals Kinf ∧
          (∀ θ ∈ complexStrip 2 (rhoInf s₀), invarianceError (totalH h f) Kinf (sinf • ωs) θ = 0) ∧
          (∀ θ ∈ complexStrip 2 (rhoInf s₀), totalH h f (Kinf θ) = (E : ℂ)) ∧
          (∀ θ ∈ complexStrip 2 (rhoInf s₀),
            Metric.ball (Kinf θ) (muParam s₀ r₀ / 2) ⊆ fractD B s₀ r₀ ∧
            ‖fderiv ℂ Kinf θ‖ ≤ sigmaKConst s₀ r₀ - muParam s₀ r₀ / 2 ∧
            ‖Kinf θ - unperturbedTorus (Ψ (E, m)) θ‖ ≤
              C₂ * (Fconst 2 s₀ r₀ 1 * ε) / (γ ^ 2 * rhoIso s₀ ^ 4)) ∧
          ‖sinf • ωs - (‖frequencyMap h (Ψ (E, m))‖ / ‖ωs‖) • ωs‖ ≤
            C₃ * (Fconst 2 s₀ r₀ 1 * ε) / (γ ^ 2 * rhoIso s₀ ^ 4) := sorry

/-- `bpI:p3:uniform` (existence form over a finite family; only bounds are used downstream). -/
theorem uniform {ι : Type*} (P : Finset ι) (CK0 ε0 : ι → ℝ) (hCK : ∀ i ∈ P, 0 < CK0 i)
    (hε : ∀ i ∈ P, 0 < ε0 i) {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    ∃ C_K ε₁ : ℝ, 0 < C_K ∧ 0 < ε₁ ∧ ε₁ ≤ 1 ∧ ε₁ ≤ a ∧ ε₁ ≤ b / (2 * C_K) ∧
      ∀ i ∈ P, CK0 i ≤ C_K ∧ ε₁ ≤ ε0 i := sorry

/-- (T1)–(T7) of `bpI:p3:tori` for one sign, on top of Part 5's `TorusOutput` (T1)–(T4). -/
structure ToriSide (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) (h : (Fin 2 → ℂ) → ℂ) (B' : Set (Fin 2 → ℝ))
    (η η₁ : ℝ) (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε C_K E : ℝ) (I₀ : Fin 2 → ℝ)
    (Ψ : ℝ × ℝ → Fin 2 → ℝ) (m : ℝ) (K : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ))
    (I ωt : Fin 2 → ℝ) : Prop extends TorusOutput h f ε C_K s₀ E K I ωt where
  base : I = Ψ (E, m)
  ray : ∃ (γ : ℝ) (ωs : Fin 2 → ℝ) (st sc : ℝ), 0 < γ ∧ IsDiophantine γ 2 ωs ∧ ωt = st • ωs ∧
    1 < st ∧ st < sigmaOmegaConst h B B' ∧ frequencyMap h I = sc • ωs ∧ 2 < sc ∧
    sc < 4 * MgConst h B B' / mhConst h B B' ∧ ‖ωt - frequencyMap h I‖ ≤ C_K * ε
  level : realPart h I = E
  near : I ∈ B ∧ ‖I - I₀‖ < η₁ / 2
  action : ∀ x : Fin 2 → ℝ, ‖(K (toC x)).2 - toC I₀‖ < η ∧ ∃ J ∈ sSet B B', (K (toC x)).2 = toC J
  margins : ∀ θ ∈ complexStrip 2 (rhoInf s₀), Metric.ball (K θ) (muParam s₀ r₀ / 2) ⊆ fractD B s₀ r₀ ∧
    ‖fderiv ℂ K θ‖ ≤ sigmaKConst s₀ r₀ - muParam s₀ r₀ / 2

/-- `bpI:p3:tori` (with `uniform`; audit F2): the cover; OUTSIDE the `f, ε, I₀, E` quantifiers, for
each patch its centre in `closure B'`, the chart identity `p.m = m_c`, and its two fixed rays; then,
for `ε < ε₁`, the two tori (T1)–(T7), whose frequencies lie on exactly those rays. -/
theorem tori (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty) (hG1 : IG1Statement)
    (hG3 : G3Statement) :
    ∃ (patches : Set (EnergyPatch (realPart h) B (eta1 η B B')))
      (γp γm : EnergyPatch (realPart h) B (eta1 η B B') → ℝ)
      (ωsp ωsm : EnergyPatch (realPart h) B (eta1 η B B') → Fin 2 → ℝ) (ε₁ C_K : ℝ),
      ChartCover B s₀ r₀ h B' η (eta1 η B B') (Fconst 2 s₀ r₀ 1) patches ∧
      (∀ p ∈ patches, p.c ∈ closure B' ∧ p.W ⊆ chartDom h B r₀ p.c ∧ p.m = chartM h p.c ∧
        IsRay h B B' p.c (γp p) (ωsp p) p.mPlus ∧ IsRay h B B' p.c (γm p) (ωsm p) p.mMinus) ∧
      0 < ε₁ ∧ ε₁ ≤ 1 ∧ 0 < C_K ∧
      ∀ (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ), PerturbData B s₀ r₀ f ε → ε < ε₁ →
        ∀ I₀ ∈ closure B', ∀ E : ℝ, |E - realPart h I₀| ≤ ε →
          ∃ p ∈ patches, ‖I₀ - p.c‖ < p.ρc ∧ |p.m I₀| < p.δm / 4 ∧
            ∃ (Kp Km : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)) (Ip Im ωp ωm : Fin 2 → ℝ),
              (∃ sp sm : ℝ, 1 < sp ∧ sp < sigmaOmegaConst h B B' ∧ 1 < sm ∧
                sm < sigmaOmegaConst h B B' ∧ ωp = sp • ωsp p ∧ ωm = sm • ωsm p) ∧
              ToriSide B s₀ r₀ h B' η (eta1 η B B') f ε C_K E I₀ p.Ψ p.mPlus Kp Ip ωp ∧
              ToriSide B s₀ r₀ h B' η (eta1 η B B') f ε C_K E I₀ p.Ψ p.mMinus Km Im ωm := sorry

/-- The generic Part 5 interface (`part3_tori` of the Part 5 design) under the two premises: a
separately named projection of `tori` that forgets the charts and rays. Proof written out. -/
theorem part3_tori_of (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty) (hG1 : IG1Statement)
    (hG3 : G3Statement) :
    ∃ (η₁ F₁ : ℝ) (patches : Set (EnergyPatch (realPart h) B η₁)) (ε₁ C_K : ℝ),
      ChartCover B s₀ r₀ h B' η η₁ F₁ patches ∧ ToriExistence B s₀ r₀ h B' η₁ patches ε₁ C_K := by
  obtain ⟨patches, _, _, _, _, ε₁, C_K, hcov, _, h1, h2, h3, H⟩ := tori hd hne hG1 hG3
  refine ⟨_, _, patches, ε₁, C_K, hcov, h1, h2, h3, fun f ε hf hε I₀ hI₀ E hE => ?_⟩
  obtain ⟨p, hp, hc, -, Kp, Km, Ip, Im, ωp, ωm, _, hsp, hsm⟩ := H f ε hf hε I₀ hI₀ E hE
  exact ⟨p, hp, hc, Kp, Km, Ip, Im, ωp, ωm, hsp.toTorusOutput, hsp.base, hsm.toTorusOutput, hsm.base⟩

end KAM.Iso.Charts

/-! ## P. Providers and premise checks (exact frozen types; SCRATCH imports of the anchors) -/

namespace KAM.Provider.Iso

open KAM

/-- `KAM/Provider/Iso/IsoenergeticKam.lean`: the body of `KAM.Provider.Iso.isoenergetic_kam`
(binders as in the frozen file), checked against the EXACT frozen type. -/
example : type_of% @KAM.Iso.isoenergetic_kam :=
  fun {_} hn {_} hτ {_ _} hρinf hρinfρ {_ _ _ _ _ _ _ _} hM hσK hσB hσT hμ hγbar hσω hν ωstar hωstar =>
    ⟨_, _, _, KAM.Iso.Apost.g1_explicit hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar hσω hν ωstar
      hωstar⟩

/-- The premises of Part 3 are the frozen statements verbatim. -/
example : KAM.Iso.Charts.IG1Statement := @KAM.Iso.isoenergetic_kam
example : KAM.Iso.Charts.G3Statement := @KAM.volume_not_diophantine_le
/-- In-tree alternative (no seal needed): `g1_explicit` discharges the I-G1 premise. -/
example : KAM.Iso.Charts.IG1Statement :=
  fun {_} hn {_} hτ {_ _} hρinf hρinfρ {_ _ _ _ _ _ _ _} hM hσK hσB hσT hμ hγbar hσω hν ωstar hωstar =>
    ⟨_, _, _, KAM.Iso.Apost.g1_explicit hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar hσω hν ωstar
      hωstar⟩

open KAM.Iso.Confinement in
/-- `part3_tori` of the Part 5 design, signature verbatim; it moves to the I-HEAD provider
`KAM/Provider/Iso/AllTimeConfinement.lean` (after the I-G1 seal), with this body. -/
theorem part3_tori {B : Set (Fin 2 → ℝ)} {s₀ r₀ : ℝ} {h : (Fin 2 → ℂ) → ℂ}
    {B' : Set (Fin 2 → ℝ)} {η : ℝ} (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty) :
    ∃ (η₁ F₁ : ℝ) (patches : Set (EnergyPatch (realPart h) B η₁)) (ε₁ C_K : ℝ),
      ChartCover B s₀ r₀ h B' η η₁ F₁ patches ∧ ToriExistence B s₀ r₀ h B' η₁ patches ε₁ C_K :=
  KAM.Iso.Charts.part3_tori_of hd hne @KAM.Iso.isoenergetic_kam @KAM.volume_not_diophantine_le

end KAM.Provider.Iso
```
