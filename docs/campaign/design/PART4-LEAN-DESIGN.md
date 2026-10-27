# Lean design for blueprint Part 4 (HEAD and HEAD-Q)

Design v1, 2026-10-27, branch `k/design4` (brief `docs/campaign/briefs/DESIGN-P4.md`). This is planning evidence,
not approved Lean. Nothing here is frozen, and the frozen anchors `KAM.kam_positive_measure` (HEAD) and
`KAM.kam_positive_measure_qualitative` (HEAD-Q) are untouched. The structure follows
`docs/campaign/design/PART23-LEAN-DESIGN.md`.

**The signatures.** Every Part 4 result node not yet proved has its exact Lean statement in
`.drafts/design/Part4Signatures.lean` (untracked; copied verbatim in Appendix A).
- The file is 956 lines, sha256 `54e609ceff902a908eaf530e5c306d6565a62573929567f28d238802c6e94bd4`.
- `nice -n 5 lake env lean .drafts/design/Part4Signatures.lean` exits 0 against the build snapshot of `7f03a9d`, in
  15 s wall (6.9 s CPU, 3.2 GB RSS). It prints 25 diagnostics, all `declaration uses 'sorry'`. There is no other
  warning and no `set_option`.
- §P1 proves the two provider assemblies with no `sorry` in their own bodies, against `type_of%` of the real frozen
  anchors: `example : type_of% @KAM.kam_positive_measure := …` and the same for HEAD-Q. They pass. Two deliberate
  mutations make them fail, so the checks are not vacuous: weakening one hypothesis of the G1 body copy, and
  changing `√ε` to `ε` in the HEAD conclusion copy.
- §P2 proves, again with no `sorry` in its own bodies, that the conclusions of `h1` and `stab` are literally the
  hypotheses H1–H4 of the frozen G1 and G2 bodies, up to one `ring` rewrite of a strip width.

The state of the inputs is as of `main` at `7f03a9d`:
- I-P4A has landed (`KAM/Head/*`);
- I-P4B and I-STRIP-3 are running, with no commits yet;
- G3 is sealed, and G1 and G2 are DRAFT_SORRY.

## 0. Decisions in brief

1. **G1, G2 and G3 enter Part 4 as constants plus a premise. This is the key decision (§2.2).**
   - Definition `bp:p4:parameters` fixes "constants of G1 at two tuples, of G2 at one tuple, of G3 for `∇h(B)`".
     Lean makes them plain data, `gc : KAM.Head.GConsts`.
   - Their defining property is the premise `KAM.Head.GValid … gc`. Its fields are the frozen G1 and G2 bodies,
     verbatim (checked by `exact` in §P1), at the blueprint's tuples, and the G3 conclusion for `Ω = ∇h(B)`.
   - Only the HEAD provider discharges `GValid` (`KAM.Provider.exists_gValid`), from the sealed anchors.
   - So **every module under `KAM/Head/` can be proved now, before G1 and G2 are sealed.** Only the two provider
     files wait for seals.
   - The design is not optional. PROVER-COMMON forbids any non-provider module to import a frozen theorem, even a
     sealed one. Without the premise, every G-using lemma (about 2,800 lines) would have to live in the provider
     file, which breaks the 1500-line cap.
2. **Carriers.** Part 4 builds no parallel representation; it reuses:
   - the Part 2 carrier `KAM.Torus`: `tangentMat`, `normalMat`, `normalFieldMat`, `lagrangeMat`, `sumVec`,
     `IsPeriodicOn`, `avg`, `frozen_agreement`;
   - the landed `KAM.Head` layer: `frameL0`, `frameN0`, `matrixAverage`, `phaseShift`, `phaseAverage`,
     `unperturbedTorus`, `hbold`, `domainD`.

   Frames, torsions, STAB and APPLY data are frozen terms (`gramMatrix`, `normalFrame`, `torsion`,
   `torsionAverage`, `invarianceError`). The Part 2 matrices appear wherever the blueprint does matrix algebra.
3. **Standing data.** The standing data are Prop-structures whose fields are source premises verbatim:
   - `Data` holds the HEAD data with the witness `L_h`;
   - `Pert` holds the hypotheses on `f` and `ε`;
   - `Layer B C_B` is the boundary-layer hypothesis;
   - `SA` is the display `bp:p4:SA`.

   The frozen conclusions are the defs `HeadConclusion` and `HeadQConclusion`.
4. **Explicit constructions.** These are total definitions, so no theorem assumes another's conclusion:
   - `invFreq` (`I_ω`, by `Function.invFunOn`);
   - `applyTorus` (`K^∞_ω`, by `Classical.epsilon` of the APPLY clauses);
   - `normTorus` (`K_ω`), `normDisp` (`W_ω`), `shiftedTorus` (`K'`);
   - `disp` (`G₀`, a `Set.indicator`);
   - every constant, as a `def` whose arguments are its stated dependences.
5. **Definitions land first.** All Part 4 definitions sit in two definitions-only modules: `KAM/Head/Standing.lean`
   (now) and `KAM/Head/Defs.lean` (after I-P4B's constants). They are landed verbatim from Appendix A. Every
   package then writes theorems only, in its own files.
6. **Packages.** There are 13 prover packages of 120–850 lines in 8 waves, two definitions-only landings (P4-0a,
   P4-0b), and 2 seal-gated provider packages:
   - **G premise users:** P4-5 (APPLY, G1), P4-10 (LIP, G1 and G2) and P4-11 (measure, G3). Downstream packages
     carry `GValid` only as a pass-through premise.
   - **Seal-gated:** P4-S1 (HEAD provider; needs G1 and G2 sealed) and P4-S2 (HEAD-Q provider; needs HEAD
     sealed).
   - **Ready now:** P4-Q (the HEAD-Q helper) and P4-8 (Lagrangian).

## 1. Carriers and objects

### 1.1 What Part 4 talks about, and where it lives

| Blueprint | Lean | Source |
|---|---|---|
| `𝐡 = h + f`, `K⁰_{I_*}`, `𝔇`, `𝔇'`, `s`, `δ_*`, `μ`, `L₊`, `C_B⁺`, `c̄` | `hbold h f`, `unperturbedTorus I`, `domainD n s₀ r₀ B`, `domainD'`, `stripWidth s₀`, `deltaStar s₀ r₀`, `muParam s₀ r₀`, `Lplus Lh`, `CBplus CB`, `cbar n` | landed (`Head/Data`) |
| `M_h` | `hBound h B r₀` | landed (`Head/HBounded`) |
| `H_j`, `F_j`, `M` | `Hconst s₀ r₀ B h j`, `Fconst n s₀ r₀ j`, `Mconst s₀ r₀ B h` | I-P4B (`Head/DerivativeBounds`), expected form §0 |
| `L = DK` (a `2n × n` matrix), `N`, `X_N`, `Λ = DKᵀΩ₀DK` | `tangentMat K θ`, `normalMat K θ`, `normalFieldMat h K ω θ`, `lagrangeMat K θ` | Part 2 carrier (`Torus/Objects`) |
| `G_K`, `G_K⁻¹`, `N` columns, `T`, `⟨T⟩`, `E` | `gramMatrix K θ`, `(gramMatrix K θ)⁻¹`, `normalFrame K θ j`, `torsion h K ω θ`, `torsionAverage h K ω`, `invarianceError h K ω θ` | frozen |
| `L⁰`, `N⁰`, `Ω₀` | `frameL0 n`, `frameN0 n`, `omegaZeroMatrix n` | landed (`Head/MatrixNorms`, `Matrix/Norms`) |
| `∫ A` for a matrix-valued `A` | `matrixAverage A` (`torsionAverage = matrixAverage (T ∘ ι)` by `rfl`) | landed (`Head/MatrixNorms`) |
| `u_K`, `ph(K)`, normalized, `K^{[a]}` | `angleDisplacement K`, `phaseAverage K`, `IsNormalized K`, `phaseShift K a` | landed (`Head/PhaseAverage`) |
| restriction `k` of `K` to reals | `KAM.realRestriction K` (`Re ∘ K ∘ ι`) | Part 1 (`Strip/RealRestriction`) |
| `𝒦(δ)`, `F_B`, `H`, `∇h` (real), invariant torus | `kamCover h f B r₀ τ δ`, `fundamentalDomain B`, `realHamiltonian h f`, `frequencyMap h`, `IsInvariantLagrangianTorus` | frozen |

### 1.2 New Part 4 objects (`KAM/Head/Defs.lean`, namespace `KAM.Head`)

| Blueprint | Lean | Definition |
|---|---|---|
| `U` (freq-map) | `realDomain B r₀` | `{I \| ι I ∈ B_{r₀}}` |
| complex `∇h`, `∇²h = (∂_j∂_i h)_{ij}` | `gradC h z`, `hessian h z` | `fderiv` entries; `hessian` is a `Matrix (Fin n) (Fin n) ℂ` |
| `∂²_I φ` | `actionHessian φ z` | `(∂_{I_j}∂_{I_i} φ)_{ij}` |
| `Λ_g`, `W_∞` | `LambdaG s₀ r₀ B h`, `Winf s₀ r₀ B h` | `max(H₂, 2H₁/δ_*)`, `H₁` |
| `I_ω` | `invFreq h B ω` | `Function.invFunOn (frequencyMap h) B ω` |
| `C₁⁽¹⁾ C₂⁽¹⁾ C₁⁽²⁾ C₂⁽²⁾ c_G C₃` | `gc : GConsts` (fields `C11 C21 C12 C22 cG C3`) | plain data |
| `σ_K, σ_B, σ_T`, `γ̄ = 1` | `sigmaK s₀ r₀`, `sigmaB s₀ r₀`, `sigmaT Lh s₀ r₀`, the literal `1` | `2 + μ`, `2 + μ`, `4L₊ + μ` |
| `A₀ … A₄, λ_*, c_T, η_*(δ), c_*` | `A0 n τ s₀ r₀ gc`, `A1 τ s₀ r₀ B h Lh gc`, `A2`, `A3`, `A4 n τ s₀ r₀ gc`, `lamStar Lh s₀ r₀`, `cT s₀ r₀ B h`, `etaStar s₀ r₀ B h Lh δ`, `cStar τ s₀ r₀ B h Lh gc` | the formulas of Definition `bp:p4:parameters` |
| `(SA)`, `η₀`, `Ω_γ` | `SA τ s₀ r₀ B h Lh gc ε γ` (structure), `eta0 n τ s₀ r₀ gc ε γ`, `OmegaGamma h B τ γ` | the display `bp:p4:SA` |
| the APPLY clauses, `K^∞_ω`, `K_ω`, `W_ω` | `IsApplyTorus … ω K`, `applyTorus … ω`, `normTorus … ω`, `normDisp … ω` | `Classical.epsilon (IsApplyTorus … ω)`; `phaseShift K^∞ (-phaseAverage K^∞)`; `K_ω - K⁰_{I_ω}` |
| `K' = K_ω + (0, ιΔI)` | `shiftedTorus … ω ω'` | |
| `Z`, `A_γ`, `G₀` | `layerSet B γ`, `goodActions h B τ γ`, `disp … ` | `G₀ = indicator (ℝⁿ × A_γ) (k_{∇h(I)}(θ) - (θ, I))`, which is `0` on `ℝⁿ × Z` |
| `C_meas` | `Cmeas n Lh CB C3` | |

Here `…` abbreviates the argument list `τ s₀ r₀ B h f gc ε γ`, with `n` implicit whenever `B` or `h` fixes it.

### 1.3 Conventions (binding for all Part 4 modules)

PART23 §1.4 applies unchanged: the operator-norm scope, `DifferentiableOn ℂ` for holomorphy, pointwise sup bounds,
`∂_ω u` as `fderiv ℂ u θ (fun l => (ω l : ℂ))`, periodicity as `IsPeriodicOn`, invertibility as `IsUnit det`, an
explicit `0 < r`, real powers by `rpow`, and no `IntegrableOn` at a `Matrix` codomain. In addition:
- **Real inclusion.** `ι x` is written `fun i => (x i : ℂ)`, the form of the frozen texts. So `rw` matches frozen
  terms. `KAM.realInclusion` appears only through `realRestriction` and `realInclusion₂`.
- **Two matrix-norm forms.** Matrix bounds are operator norms (`‖(gramMatrix K θ)⁻¹‖ ≤ 2`). The frozen H3 and H4
  row-sum forms appear only where a bound feeds G1 or G2: the H2–H4 clause of `stab` and the proof of `apply`.
  `KAM.norm_le_iff_forall_rowSum` converts.
- **Strip arithmetic.** STAB's `T_{ρ-δ}` meets G1's `T_{3s/32}` and G2's `T_{s/16}` through one rewrite,
  `show s/8 - s/32 = 3*s/32 by ring` (as in §P2). G2's output strip `T_{(s/16)/2}` is `T_{s/32}`.
- **Constants stay opaque downstream.** Every inequality about a constant is proved once in `Head/Parameters`
  (`parameters`, `smallness`, and their helpers). Later modules never unfold `cStar`, `A1`, …

## 2. Standing data, the G inputs, and rule 6

### 2.1 Structures (`KAM/Head/Standing.lean`, plus `GValid` and `SA` in `KAM/Head/Defs.lean`)

| Blueprint | Lean | Fields |
|---|---|---|
| "the data of HEAD", with the witness `L_h` (L138–147) | `Data τ s₀ r₀ B h Lh` | `2 ≤ n`, `n-1 < τ`, `0 < s₀`, `0 < r₀`, `IsOpen B`, `IsBounded B`, `h` holomorphic on `B_{r₀}`, `h` real, the nondegeneracy inequality with `Lh`; each one a frozen HEAD binder, verbatim |
| the hypotheses on `f, ε` | `Pert s₀ r₀ B f ε` | holomorphic, periodic, real, `‖f‖ ≤ ε`; frozen text verbatim |
| boundary layer with witness `C_B` | `Layer B CB` (def) | frozen text verbatim |
| constants of G1, G2, G3 | `GConsts` (data) + `GConsts.Pos` + `GValid τ s₀ r₀ B h Lh gc` | §2.2 |
| `(SA)` | `SA τ s₀ r₀ B h Lh gc ε γ` | `0 < γ`, `γ ≤ 1`, `0 ≤ ε`, `ε ≤ c_* γ⁴` |
| HEAD and HEAD-Q conclusions | `HeadConclusion τ s₀ r₀ B h`, `HeadQConclusion τ s₀ r₀ B h` (defs) | frozen text verbatim (checked in §P1) |

`B ≠ ∅` is not a field. It is a premise only where the blueprint states it (`main_measure`), and the assembly
handles `B = ∅` (step `head-empty`).

### 2.2 The G inputs: why constants plus a premise, and why this satisfies rule 6

**The obstruction.** PROVER-COMMON forbids every module except a package's own provider file to import a frozen
theorem, sealed or not. So no module under `KAM/Head/` can ever call `KAM.aposteriori_kam`,
`KAM.local_uniqueness_flow` or `KAM.volume_not_diophantine_le`. Yet APPLY, LIP and the measure count apply them.
The G-using Lean is about 2,800 lines, far over the 1500-line cap for one provider file.

**The design.**
- **`GConsts` is plain data:** six reals `C11 C21 C12 C22 cG C3`.
- **`GValid τ s₀ r₀ B h Lh gc`** is a Prop-structure that extends `GConsts.Pos` (positivity of the five G1/G2
  constants). Its fields are:
  - `g1a : G1Body n τ (s/4) (s/8) M σK σB σT μ 1 C11 C21`, the first tuple of Definition `bp:p4:parameters`;
  - `g1b : G1Body n τ (3s/32) (s/16) M σK σB σT μ 1 C12 C22`, the second tuple;
  - `g2 : G2Body n τ (s/16) M σK σB σT μ cG`;
  - `g3 : ∀ α > 0, volume {ω ∈ ∇h(B) | ¬ Dio_{α,τ}} ≤ ofReal (C3 α)`.
- **The bodies are verbatim copies.** `G1Body` and `G2Body` are copies of the frozen G1 and G2 bodies after
  `∃ C₁ C₂, 0 < C₁ ∧ 0 < C₂ ∧` and `∃ c, 0 < c ∧`. §P1 checks this by `exact` against the real anchors.
- **Who carries what.** Every node from `parameters` on is stated for an arbitrary `gc`. The nodes whose proofs use
  a G conclusion (`apply`, `lip`, `main_measure`, and those that use them) carry `hgc : GValid … gc`. The rest
  carry `gc.Pos` or nothing.
- **Discharge.** `KAM.Provider.exists_gValid` (in the HEAD provider) builds `gc` and `GValid` from the three sealed
  anchors in 10 lines (§P1).

**Rule 6.**
- **The premise is source data.** `GValid` is the Lean form of the blueprint's own sentence: "Theorem G1 is applied
  with two tuples …, with constants C₁⁽¹⁾, C₂⁽¹⁾ … G2 … with constant c_G" (Definition `bp:p4:parameters`), and
  "Let C₃ be the constant of Theorem G3" (Lemma `bp:p4:preimage-measure`). The blueprint uses G1–G3 "as proved
  inputs, exactly as frozen". Their conclusions at the chosen constants are source results, not conclusions of any
  Part 4 node.
- **No Part 4 conclusion is assumed anywhere.** Each node theorem has its blueprint premises plus the constants of
  Definition `bp:p4:parameters` with their defining property.
- **The two root steps are conditional helpers with distinct names:**
  - `head_of_gValid`, discharged by `exists_gValid`;
  - `headq_of_head`, discharged by the HEAD anchor.

  Neither stands in for HEAD or HEAD-Q. The roots are the frozen anchors, sealed by the providers (§6).
- **Checklist for the statement auditor:**
  1. `G1Body` and `G2Body` are verbatim (§P1 mutation test);
  2. the tuples are those of Definition `bp:p4:parameters`;
  3. `g3` is the G3 conclusion for `Ω = ∇h(B)`;
  4. no node assumes anything beyond its blueprint premises, `gc` and `GValid`.

**Alternative considered.**
- **The option.** Define the constants by `Classical.epsilon` and assume the whole frozen G1 statement as a premise.
- **Why not.** It has the same rule 6 status but a larger premise. It needs an extra `epsilon_spec` lemma per use,
  and it gives nothing back.
- **Relaxing the import rule.** If PROVER-COMMON were relaxed for sealed anchors, the same signatures would still be
  used. Only `exists_gValid` would move into a library module, and only after the seals.

### 2.3 Constants and their arguments

Each constant is a `def` taking exactly the parameters it depends on. Unused `def` binders trip the linter, so the
argument lists are the dependence claims (as in PART23 §2.3).

| Arguments | Constants |
|---|---|
| `(n s₀ r₀ j)` | `Fconst` (`F_j`) |
| `(s₀ r₀ B h)` (`n` implicit) | `Hconst … j`, `Mconst`, `LambdaG`, `Winf`, `cT` |
| `(s₀ r₀)`, `(Lh s₀ r₀)` | `sigmaK`, `sigmaB`; `sigmaT`, `lamStar` |
| `(s₀ r₀ B h Lh δ)` | `etaStar` |
| `(n τ s₀ r₀ gc)` | `A0`, `A4` |
| `(τ s₀ r₀ B h Lh gc)` | `A1`, `A2`, `A3`, `cStar` |
| `(n τ s₀ r₀ gc ε γ)` | `eta0` |
| `(n Lh CB C3)` | `Cmeas` |

"Depends only on the data" is then syntactic. Only `gc` is not HEAD data, and the provider fixes it from the data
alone (`exists_gValid` takes only `Data`).

### 2.4 Interfaces consumed from running packages (Appendix A §0)

- **I-P4B** (running, no commit yet) owns:
  - `Hconst`, `Fconst`, `Mconst` and `derivative_bounds` (`Head/DerivativeBounds`);
  - `torsion_regular`, `shift` and `mixed_difference`.

  §0 gives the form this design consumes. **Recommendation: send §0 to the I-P4B prover now.** If it lands other
  names or shapes, `Head/Defs` imports its constants under its names, and each consumer (P4-1, P4-2, P4-4, P4-5,
  P4-7) adds an adapter of at most 30 lines.
- **I-STRIP-3** (running) owns the uniqueness clause of `bp:p1:cohomological`.
  - Part 4 needs it only at `g = 0`, as the adapter `coh_unique_zero`: holomorphic, periodic, zero average and
    `∂_ω w = 0` imply `w = 0` on `T_r`, for `ω` Diophantine.
  - Package P4-8 proves the adapter from I-STRIP-3's statement. Everything else in P4-8 is independent of
    I-STRIP-3.
  - The adapter is true without τ or boundedness premises: the Fourier coefficients vanish because `k·ω ≠ 0`.

## 3. Signatures

The exact text is Appendix A. There, `n τ s₀ r₀ Lh B h f ε γ gc` are implicit section variables, `T_r` is
`complexStrip n r`, and `s = stripWidth s₀`.

### 3.1 Node table

| Blueprint node | Lean declaration | Module | Package |
|---|---|---|---|
| `bp:p4:derivative-bounds` | `KAM.Head.derivative_bounds` (+ `Hconst`, `Fconst`, `Mconst`) | `Head/DerivativeBounds` | I-P4B |
| `bp:p4:torsion-regular` | `KAM.Head.torsion_regular` | `Head/TorsionRegular` | I-P4B |
| `bp:p4:shift` | `KAM.Head.shift` | `Head/Shift` | I-P4B |
| `bp:p4:mixed-difference` | `KAM.Head.mixed_difference` | `Head/MixedDifference` | I-P4B |
| (standing data, conclusions) | `Data`, `Pert`, `Layer`, `HeadConclusion`, `HeadQConclusion` | `Head/Standing` | P4-0a |
| (all other definitions) | §1.2 | `Head/Defs` | P4-0b |
| `bp:p4:freq-map` | `KAM.Head.freq_map` | `Head/Frequency` | P4-1 |
| `bp:p4:hessian-inverse` | `KAM.Head.hessian_inverse` | `Head/InverseFrequency` | P4-1 |
| `bp:p4:inverse-freq` | def `invFreq`; `KAM.Head.inverse_freq` | `Head/InverseFrequency` | P4-1 |
| `bp:p4:h1` | `KAM.Head.h1` | `Head/H1` | P4-2 |
| `bp:p4:unperturbed` | `KAM.Head.unperturbed` | `Head/Unperturbed` | P4-2 |
| `bp:p4:parameters` | defs `GConsts`, `GValid`, `sigma*`, `A0`–`A4`, `lamStar`, `cT`, `etaStar`, `cStar`; claims `KAM.Head.parameters` | `Head/Defs`, `Head/Parameters` | P4-0b, P4-3 |
| `bp:p4:SA` | `SA`, `eta0`, `OmegaGamma` | `Head/Defs` | P4-0b |
| `bp:p4:smallness` | `KAM.Head.smallness` | `Head/Parameters` | P4-3 |
| `bp:p4:apply` | def `IsApplyTorus`; `KAM.Head.apply` | `Head/Apply` | P4-5 |
| `bp:p4:stab` | `KAM.Head.stab` | `Head/StabFrame`, `Head/Stab` | P4-4 |
| `bp:p4:normalized-torus` | defs `applyTorus`, `normTorus`, `normDisp` | `Head/Defs` | P4-0b |
| `bp:p4:normalize` | `KAM.Head.normalize` | `Head/Normalize` | P4-5 |
| `bp:p4:lip-error` | def `shiftedTorus`; `KAM.Head.lip_error` | `Head/LipError` | P4-7 |
| `bp:p4:lip` | `KAM.Head.lip` | `Head/Lip` | P4-10 |
| `bp:p4:lagrangian` | `KAM.Head.lagrangian` (+ adapter `coh_unique_zero`) | `Head/Lagrangian` | P4-8 |
| `bp:p4:real-torus` | `KAM.Head.real_torus` | `Head/RealTorus` | P4-9 |
| `bp:p4:preimage-measure` | `KAM.Head.preimage_measure` | `Head/PreimageMeasure` | P4-6 |
| `bp:p4:good-actions` | defs `layerSet`, `goodActions`, `disp`; claim `KAM.Head.good_actions` | `Head/Defs`, `Head/GoodActions` | P4-0b, P4-11 |
| `bp:p4:map-lipschitz` | `KAM.Head.map_lipschitz` | `Head/GoodActions` | P4-11 |
| `bp:p4:main-measure` | def `Cmeas`; `KAM.Head.main_measure` | `Head/MainMeasure` | P4-11 |
| `bp:p0:head` (its proof, Part 4) | `KAM.Head.head_of_gValid`; provider `KAM.Provider.kam_positive_measure` (+ `exists_gValid`) | `Head/Assembly`, `Provider/KamPositiveMeasure` | P4-12, P4-S1 |
| `bp:p0:headq` (its proof, Part 4) | `KAM.Head.headq_of_head`; provider `KAM.Provider.kam_positive_measure_qualitative` | `Head/HeadQ`, `Provider/KamPositiveMeasureQualitative` | P4-Q, P4-S2 |

Out of scope:
- `bp:p4:normalized-unique`, which the coverage file excludes (not used for HEAD);
- the proved nodes `data`, `h-bounded`, `matrix-norms`, `phase-average`, `cover-mono`, `dyadic-approx`, `lattice-*`
  and `slab`;
- G3, which is sealed.

Each graph node is one declaration. A multi-item result is one conjunction in the blueprint's item order, as in
PART23. Provers prove each item as a helper lemma and assemble the conjunction.

### 3.2 Departures from the literal blueprint text

| # | Where | Lean form | Reason |
|---|---|---|---|
| P1 | every node from `parameters` on | constants `gc : GConsts` as data; `GValid` (or `gc.Pos`) as premise | Definition `bp:p4:parameters` made explicit; the import rule (§2.2) |
| P2 | all | the HEAD data as `Data` (with the witness `Lh`), `f, ε` as `Pert`, the layer as `Layer B CB` | frozen binders verbatim; the existential witnesses are explicit |
| P3 | `stab`, `torsion-regular`, `hessian-inverse`, `unperturbed` | "invertible", "`det G_K ≠ 0`" as `IsUnit (·).det` | frozen form (PART23 L3) |
| P4 | `stab` (a)–(c), `unperturbed` (a), (b) | `DK` as `tangentMat K θ` with `L⁰ = frameL0 n`; operator norms, plus the frozen row-sum form in the H2–H4 clause | carrier; §1.3 |
| P5 | `stab` (a), (c), (d) | "`\|DK\| ≤ 2 = σ_K − μ`" split: `≤ 2` in (a), `σ_K − μ` in H2; `parameters` proves `σ_K − μ = 2`, `σ_B − μ = 2`, `σ_T − μ = 4L₊` | literal values plus the frozen form |
| P6 | `freq-map` (ii), (iii) | "partials real and `g = ∇h`" as one equation in `ℂⁿ`, `ι g(I) = gradC h (ιI)`; `Dg(I)` as `ι (Dg(I) v) = hessian h (ιI) *ᵥ ι v`; "real symmetric" as `hessianᵀ = hessian` and `im = 0` | equivalent; carrier |
| P7 | `freq-map` (v) | adds `IsBounded (∇h(B))` | the form G3 consumes |
| P8 | `inverse-freq` | `I_ω` total (`invFunOn`; junk off `∇h(B)`); adds `invFreq (∇h I) = I` for `I ∈ B` | totality; used by `good-actions` |
| P9 | `normalized-torus` | `K^∞_ω := Classical.epsilon (IsApplyTorus …)`, total | "fixed by choice"; no conditional definition (rule 6) |
| P10 | `unperturbed` (a) | "holomorphic on `ℂⁿ`" as `Differentiable ℂ`; "primary on every strip" as `∀ ρ`; adds `‖DK⁰‖ = 1` (operator) | literal; the operator form feeds H2 |
| P11 | `unperturbed` (d) | `∂²_I 𝐡` as `actionHessian`; "`⟨T⁰⟩` is the integral of a continuous function" as `Continuous` plus the formula with `matrixAverage` | carrier; PART23 §1.4 (no `IntegrableOn` at `Matrix`) |
| P12 | `shift` (b), (c) | (b) for every Hamiltonian `φ` (the blueprint has `𝐡`); (c) spells out the two transferred bounds | stronger; literal |
| P13 | `shift` (e), `lip` | "`\|ph K\| ≤ sup_x \|K − K⁰\|`" as "for every pointwise bound `A`"; "in particular real `θ`" is implied, since real points lie in `T_{s/32}` | pointwise convention (PART23 L6) |
| P14 | `lagrangian` | "`DK` bounded on `T_ρ`" as `∃ A, ∀ θ ∈ T_ρ, ‖DK θ‖ ≤ A` | literal |
| P15 | `real-torus` | `k_ω` is `KAM.realRestriction K_ω` | Part 1 object |
| P16 | `preimage-measure` | "`C₃` the constant of G3 for `∇h(B)`" as a parameter `C3` with the G3 conclusion as premise | literal; G3 cannot be imported (§2.2) |
| P17 | `good-actions`, `map-lipschitz` | `G₀` total (indicator; `0` off `ℝⁿ × A_γ`), so "`\|G₀\| ≤ η₀`" holds everywhere | totality; stronger |
| P18 | `smallness` | each item in the exact shape its consumer needs, e.g. (s2) with `e = F₁ε` inside G1's quotient | no rewriting at the call sites |
| P19 | `torsion-regular` (c), (d) | `⟨T⟩` via `Continuous (T ∘ ι)` (`torsionAverage = matrixAverage` is `rfl`); periodicity as `IsPeriodicOn` of `u`, `v`, `L`, `G`, `N`, `T` | PART23 conventions |
| P20 | `bp:p0:head`, `bp:p0:headq` | the proofs go through the conditional helpers `head_of_gValid` and `headq_of_head`; HEAD-Q's premise is HEAD at `(n, τ, s₀, r₀, h)` for every action domain `B'` | the import rule; HEAD-Q uses HEAD as a proved input (graph edge `headq → head`) |

## 4. Modules and import DAG

Targets are realistic sizes; the hard cap is 1500 lines.

| Module | Content | Lines (est.) |
|---|---|---|
| `KAM/Head/Standing.lean` | `Data`, `Pert`, `Layer`, `HeadConclusion`, `HeadQConclusion` (definitions only) | 120 |
| `KAM/Head/Defs.lean` | every other definition of Appendix A §2 (definitions only) | 330 |
| `KAM/Head/Frequency.lean` | `freq_map` | 400 |
| `KAM/Head/InverseFrequency.lean` | `hessian_inverse`, `inverse_freq` | 250 |
| `KAM/Head/H1.lean`, `Unperturbed.lean` | `h1`; `unperturbed` | 150 + 500 |
| `KAM/Head/Parameters.lean` | `parameters`, `smallness`, and the eight `cStar_le_*` helper inequalities | 450 |
| `KAM/Head/Apply.lean`, `Normalize.lean` | `apply`; `normalize` | 200 + 150 |
| `KAM/Head/StabFrame.lean`, `Stab.lean` | STAB (a)–(c) and the `∂_ω` frame bounds; `X_N`, torsion, twist, H2–H4, the assembled `stab` | 450 + 400 |
| `KAM/Head/LipError.lean`, `Lip.lean` | `lip_error`; `lip` (far pairs, G1 re-application, G2, phase) | 400 + 450 |
| `KAM/Head/Lagrangian.lean` | `coh_unique_zero` (adapter), `lagrangian` | 450 |
| `KAM/Head/RealTorus.lean` | `real_torus` | 450 |
| `KAM/Head/PreimageMeasure.lean` | `preimage_measure` | 120 |
| `KAM/Head/GoodActions.lean`, `MainMeasure.lean` | `good_actions`, `map_lipschitz`; `main_measure` | 350 + 400 |
| `KAM/Head/Assembly.lean`, `HeadQ.lean` | `head_of_gValid`; `headq_of_head` | 250 + 250 |
| `KAM/Provider/KamPositiveMeasure.lean` | `exists_gValid`, `kam_positive_measure` | 60 |
| `KAM/Provider/KamPositiveMeasureQualitative.lean` | `kam_positive_measure_qualitative` | 30 |

The total is about 6,600 lines, plus I-P4B's four modules.

**Import DAG** (`A ← B` means B imports A; landed or other-track modules in brackets):

```
[Frozen.Defs.*, Head.Data, Head.PhaseAverage]                       ← Head.Standing
Head.Standing, [Head.DerivativeBounds*, Head.MatrixNorms, Strip.RealRestriction,
  Torus.Objects]                                                    ← Head.Defs
Head.Defs, [Strip.Bridges]                                          ← Head.Frequency
Head.Frequency, [Matrix.Inverse, Matrix.Norms]                      ← Head.InverseFrequency ← Head.PreimageMeasure [Measure.Lipschitz]
Head.Defs, [Head.DerivativeBounds*]                                 ← Head.H1
Head.H1, Head.InverseFrequency, [Torus.FrozenAgreement, Matrix.Bridges] ← Head.Unperturbed
Head.Defs                                                           ← Head.Parameters
Head.Unperturbed, Head.Parameters, [Head.TorsionRegular*, Strip.Bridges, Matrix.Calculus] ← Head.StabFrame ← Head.Stab [Strip.Limits]
Head.Unperturbed, Head.Parameters                                   ← Head.Apply
Head.Apply, [Head.Shift*]                                           ← Head.Normalize
Head.Normalize, [Head.MixedDifference*]                             ← Head.LipError
Head.LipError, Head.Stab, [Strip.Increments, Strip.Periodic]        ← Head.Lip
Head.Standing, [Torus.Objects, Strip.Cohomological*, Strip.Bridges, Strip.Periodic] ← Head.Lagrangian
Head.Normalize, Head.Lagrangian                                     ← Head.RealTorus
Head.RealTorus, Head.Lip                                            ← Head.GoodActions
Head.GoodActions, Head.PreimageMeasure, [Measure.McShane, Measure.Lipeo, Head.CoverMono] ← Head.MainMeasure
Head.MainMeasure                                                    ← Head.Assembly ← Provider.KamPositiveMeasure [+ sealed G1, G2, G3 anchors]
Head.Standing, [Head.DyadicApprox, Head.CoverMono]                  ← Head.HeadQ ← Provider.KamPositiveMeasureQualitative [+ sealed HEAD anchor]
```

`*` marks a module that does not exist yet: the four I-P4B modules, and `Strip.Cohomological` (I-STRIP-3), which
only the adapter inside `Head.Lagrangian` uses. No module under `KAM/Head/` imports a provider or a frozen theorem.

## 5. Prover packages

Each package proves its nodes exactly as in Appendix A. A package changes a signature only through the
orchestrator, after a statement audit. Every brief repeats the owner's two hard rules verbatim.

**Inputs**, by declaration:
- **landed (`main`):**
  - Part 4: `KAM.Head.*` (data, `hBound`, `matrix_norms_cor`, `norm_matrixAverage_le`, `frameL0`, `frameN0`,
    `phaseAverage` API, `kamCover_mono`, `dyadic_approx`);
  - the Part 2 carrier: `KAM.Torus.{tangentMat, normalMat, normalFieldMat, lagrangeMat, sumVec, frozen_agreement,
    torsion_eq_mat, cauchy_transpose_fintype}`;
  - matrices: `KAM.neumann`, `KAM.neumann_pointwise`, `KAM.holomorphic_inverse`, `KAM.real_inverse`,
    `KAM.norm_le_iff_forall_rowSum`, the product rules of `KAM/Matrix/Calculus`;
  - strips: `KAM.cauchy_strip`, `KAM.holomorphic_regularity`, `KAM.averages`, `KAM.periodic_bounded`,
    `KAM.periodic_average`, `KAM.strip_identity`, `KAM.increments`, `KAM.increments_open`,
    `KAM.real_restriction`, `KAM.hamiltonian_real`;
  - measure: `KAM.lip_image`, `KAM.lip_image_prod`, `KAM.mcshane_prod`, `KAM.lipeo_half`;
- **I-P4B (running):** `derivative_bounds` (+ constants), `torsion_regular`, `shift`, `mixed_difference`;
- **I-STRIP-3 (running):** the uniqueness clause of `bp:p1:cohomological`, for the adapter `coh_unique_zero` only.

In the table, the column "G" says how a package touches G1–G3: "premise" means it uses a field of `GValid`, and
"pass" means it carries `GValid` only to call a lemma that does.

| Package | Nodes | Modules | Lines | After | G | Wave |
|---|---|---|---|---|---|---|
| P4-0a Standing | standing defs (verbatim landing, no proofs) | `Head/Standing` | 120 | — | — | 1 |
| P4-Q HEAD-Q helper | proof of `bp:p0:headq` (`headq_of_head`) | `Head/HeadQ` | 250 | P4-0a | — | 1 |
| P4-8 Lagrangian | `lagrangian`; adapter `coh_unique_zero` | `Head/Lagrangian` | 450 | P4-0a; **I-STRIP-3** for the adapter only | — | 1 |
| P4-0b Definitions | every other def (verbatim landing, no proofs) | `Head/Defs` | 330 | P4-0a, **I-P4B** (`DerivativeBounds`) | defines `GValid` | 2 |
| P4-1 Frequency | `freq-map`, `hessian-inverse`, `inverse-freq` | `Head/Frequency`, `Head/InverseFrequency` | 650 | P4-0b, I-P4B `derivative_bounds` | — | 2 |
| P4-3 Parameters | `parameters` (claims), `smallness` | `Head/Parameters` | 450 | P4-0b | `gc.Pos` only | 2 |
| P4-2 Unperturbed | `h1`, `unperturbed` | `Head/H1`, `Head/Unperturbed` | 650 | P4-0b; P4-1 for `unperturbed` (e), (f) only (land the rest first) | — | 2–3 |
| P4-6 Preimage | `preimage-measure` | `Head/PreimageMeasure` | 120 | P4-1 | G3 as its constant (premise) | 3 |
| P4-4 STAB | `stab` | `Head/StabFrame`, `Head/Stab` | 850 | P4-2, P4-3, I-P4B `torsion_regular` | — | 4 |
| P4-5 APPLY | `apply`, `normalize` | `Head/Apply`, `Head/Normalize` | 350 | P4-2, P4-3, P4-1, I-P4B `shift` | **G1** (`g1a`, premise) | 4 |
| P4-7 Shifted torus | `lip-error` | `Head/LipError` | 400 | P4-5, I-P4B `mixed_difference` | pass | 5 |
| P4-9 Real tori | `real-torus` | `Head/RealTorus` | 450 | P4-5, P4-8 | pass | 5 |
| P4-10 LIP | `lip` | `Head/Lip` | 450 | P4-4, P4-7 | **G1** (`g1b`) and **G2** (`g2`), premise | 6 |
| P4-11 Measure | `good-actions` (claim), `map-lipschitz`, `main-measure` | `Head/GoodActions`, `Head/MainMeasure` | 750 | P4-6, P4-9, P4-10 | **G3** (`g3`), premise | 7 |
| P4-12 HEAD assembly | proof of `bp:p0:head` (`head_of_gValid`) | `Head/Assembly` | 250 | P4-11 | pass | 8 |
| **P4-S1 HEAD provider** | `exists_gValid`, provider | `Provider/KamPositiveMeasure` | 60 | P4-12; **G1 and G2 SEALED** (G3 already is) | the anchors | seal |
| **P4-S2 HEAD-Q provider** | provider | `Provider/KamPositiveMeasureQualitative` | 30 | P4-Q; **HEAD SEALED** | HEAD anchor | seal |

**Which packages need G1/G2.**
- Only P4-S1 needs the G1 and G2 *seals*.
- P4-5 and P4-10 apply G1 and G2, through the premise.
- P4-7, P4-9, P4-11 and P4-12 depend on G1/G2 only through P4-5 and P4-10. All of them can be proved and landed
  before the seals.

**Parallelism.** Packages in the same wave are independent.
- Wave 1 runs now: P4-0a, P4-Q and P4-8. P4-8 lands its adapter after I-STRIP-3.
- Wave 2 starts when I-P4B lands: P4-0b first, then P4-1, P4-3 and P4-2.
- Wave 4 runs P4-4 and P4-5; wave 5 runs P4-7 and P4-9.
- **Stub-driven start.** Every statement is fixed in Appendix A, so a package may start in its worktree against
  sorry'd stubs of its inputs. It lands only after them. This can compress waves 4–8 when provers are free.

**Critical path.** I-P4B → P4-0b → P4-1 → P4-2 → P4-5 → P4-7 → P4-10 → P4-11 → P4-12 (8 waves), then the G1/G2
seals → P4-S1 → the HEAD seal → P4-S2.
- It is gated externally by I-P4B (from wave 2) and I-STRIP-3 (P4-9, through P4-8's adapter).
- The Part 2/3 critical path is 10 waves, so Part 4 should be ready before G1 and G2 seal.
- Before wave 1 starts, an independent statement audit of Appendix A against the blueprint is recommended (skill
  `lean-statement-audit`, GPT-6.1-Sol per D21/D24). It should include the §2.2 checklist.

## 6. Assembly of the providers

The providers are the only Part 4 files that import frozen theorems, and only sealed ones. They are §P1 of
Appendix A, made into theorems with the frozen binders:

```lean
-- KAM/Provider/KamPositiveMeasure.lean
--   public import KAM.Frozen.Defs.{ActionNbhd, ComplexStrip, FrequencyMap, FundamentalDomain, KamCover}
--   import KAM.Head.Assembly
--   import KAM.Frozen.Theorems.{AposterioriKam, LocalUniquenessFlow, VolumeNotDiophantineLe}  -- sealed
theorem KAM.Provider.exists_gValid … (hD : Head.Data τ s₀ r₀ B h Lh) : ∃ gc, Head.GValid τ s₀ r₀ B h Lh gc
  -- 8 lines: `parameters` (side conditions), two calls to `KAM.aposteriori_kam`, one to
  -- `KAM.local_uniqueness_flow`, one to `KAM.volume_not_diophantine_le` with `freq_map` (v)
theorem KAM.Provider.kam_positive_measure {n : ℕ} (hn : 2 ≤ n) … (h_nondeg : …) : <frozen HEAD type> := by
  obtain ⟨CB, hCB⟩ := hB_layer
  obtain ⟨Lh, hLh⟩ := h_nondeg
  have hD : Head.Data τ s₀ r₀ B h Lh := ⟨hn, hτ, hs₀, hr₀, hB_open, hB_bdd, hh, hh_real, hLh⟩
  obtain ⟨gc, hgc⟩ := exists_gValid hD
  exact Head.head_of_gValid hD hCB hgc

-- KAM/Provider/KamPositiveMeasureQualitative.lean
--   import KAM.Head.HeadQ
--   import KAM.Frozen.Theorems.KamPositiveMeasure  -- sealed
theorem KAM.Provider.kam_positive_measure_qualitative {n : ℕ} (hn : 2 ≤ n) … : <frozen HEAD-Q type> :=
  Head.headq_of_head hn hτ hs₀ hr₀ hB_open hB_bdd hh hh_real h_nondeg
    fun _ h1 h2 h3 h4 h5 h6 => KAM.kam_positive_measure hn hτ hs₀ hr₀ h1 h2 h3 h4 h5 h6
```

Both terms type-check against `type_of%` of the real anchors in §P1.

**Sealing** (D26 guard correction 2):
- HEAD: `by exact KAM.Provider.kam_positive_measure hn hτ hs₀ hr₀ hB_open hB_bdd hB_layer hh hh_real h_nondeg`.
- HEAD-Q: `by exact KAM.Provider.kam_positive_measure_qualitative hn hτ hs₀ hr₀ hB_open hB_bdd hh hh_real
  h_nondeg`, after HEAD is sealed.

**Inside `head_of_gValid`** (steps `step:p4:head-*`):
1. **Empty domain.** If `B = ∅`, then `F_B = ∅`.
2. **Constants.** `C = max(1, A₀ c_*^{1/2}, C_meas c_*^{-1/4})` and `ε₀ = c_*`, positive by `parameters`.
3. **Sign of ε.** If `B ≠ ∅`, then `ε ≥ 0`.
4. **Positive ε.** Put `γ = (ε/c_*)^{1/4}`. Then `SA` holds, `η₀ = A₀ c_*^{1/2} √ε`, and `main_measure` plus
   `kamCover_mono` finish.
5. **Zero ε.** For `ε = 0`, `main_measure` holds at every `γ ∈ (0,1]`, so the measure is 0.

**Inside `headq_of_head`** (steps `step:p4:hq-*`):
1. **Inner approximation.** `dyadic_approx` with `η = κ vol(B)/2` gives `B'`.
2. **HEAD for `B'`.** The hypotheses transfer to `B'` by monotonicity of `actionNbhd` and of `closure`, and
   `hHEAD B'` gives `C'` and `ε₀'`.
3. **The bound.** Put `ε₀ = min(ε₀', (κ/C')², (κ vol(B)/(2C'))⁴)`. Then `kamCover_mono` and subadditivity give the
   claim.

## 7. Risks

### 7.1 Elaboration

The signatures alone elaborate in 15 s wall (6.9 s CPU) for 956 lines. No single statement is slow, and the
provider checks unfold `G1Body`, `G2Body` and `HeadConclusion` instantly.

**Proof-side risks and the planned levers:**
- **STAB (P4-4) is the heavy package.** It has about 15 norm estimates on `Fin n ⊕ Fin n` matrices.
  - Split it into `StabFrame` and `Stab` (§4).
  - Work at the matrix level with `matrix_norms_cor`, `norm_transpose_le_card_mul`, `KAM.neumann` and the
    `Matrix/Calculus` product rules.
  - Never use entrywise `simp [Matrix.mul_apply, Fintype.sum_sum_type]` on `2n × 2n` products.
  - Prove one helper lemma per estimate (`a`, `b`, `|G−Id|`, `|N−N⁰|`, `|∂_ω N|`, `|X_N − X⁰_N|`, `|T−T⁰|`).
- **Constants.** `cStar` is a nested `min` of eight entries.
  - Prove the eight `cStar_le_*` lemmas once in `Head/Parameters`, and derive (s1)–(s7) from them.
  - Downstream modules never unfold any constant.
  - Keep `rpow` positivity in a small lemma pack, and use no `nlinarith` on unfolded constants.
- **Large conjunctions** (`freq_map`, `unperturbed`, `stab`, `real_torus`). Prove one helper per item and assemble
  with an anonymous constructor.
- **Frozen-definition computations** (`unperturbed` (b)–(d)).
  - Compute `gramMatrix`, `normalFrame` and `torsion` of `K⁰` from the frozen bodies. Each `fderiv` of a constant
    vanishes (`fderiv_const`).
  - Compute `DX_𝐡(z)(0, e_j)` via `fderiv_pi` on the frozen `hamiltonianVectorFieldℂ`.
  - Avoid `KAM.Torus.torsion_eq_mat` for `K⁰`; the direct route is shorter.
- **Any heartbeat failure is a design signal (hard rule 1):** split the lemma or narrow the imports, and never raise
  a budget.

### 7.2 Missing or awkward API

1. **Real derivative of `Re h ∘ ι`** (`freq_map` (ii)–(iii)). Use `HasFDerivAt.restrictScalars` composed with
   `KAM.realInclusion` (as in `KAM.realRestriction_fderiv`), and the realness of `h` on an open real set.
2. **Outer measure of products** (`main_measure`, `headq_of_head`). `MeasureTheory.Measure.prod_prod` holds for
   arbitrary sets; `volume (pi Ico)` is 1; `fundamentalDomain` is `pi … ×ˢ B`.
3. **`Metric.infDist` is 1-Lipschitz.** Use `Metric.lipschitz_infDist_pt`. `Bᶜ ≠ ∅` follows from boundedness and
   `n ≥ 1`.
4. **The ODE clause of `IsInvariantLagrangianTorus`** (`real_torus`). Use `HasFDerivAt.comp_hasDerivAt` on
   `s ↦ θ + s • ω`, and `KAM.hamiltonian_real` with `V = 𝔇`, `h = 𝐡`, `H = realHamiltonian h f`. The last agrees
   with `Re 𝐡 ∘ ι` by `rfl` (`realHamiltonian_eq_re_hbold`).
5. **`Classical.epsilon` for `K^∞_ω`.** `Classical.epsilon_spec (apply …)` gives `IsApplyTorus (applyTorus …)`. Only
   P4-5 unfolds `applyTorus`; later packages use `normalize`.

### 7.3 Dependencies outside this design

- **I-P4B** (running) gates P4-0b and through it everything after wave 1. Its four statements must match §0, or the
  consumers add adapters (§2.4). **Send §0 to the I-P4B prover now.**
- **I-STRIP-3** (running) gates only the adapter `coh_unique_zero`, and through it the last step of `lagrangian`
  and then P4-9.
- **G1 and G2 seals** (the end of the Part 2/3 campaign) gate only P4-S1. **The HEAD seal** gates only P4-S2.
- **Rule 6 acceptance of `GValid`** (§2.2) is the one design-level risk.
  - If the statement auditor rejects it, there is no other layout under the current import rule and the
    1500-line cap.
  - The remedy would be an owner ruling, either accepting `GValid` or relaxing the import rule. Under the
    relaxation the signatures are unchanged and only `exists_gValid` moves.
  - Log the decision in `docs/campaign/OVERNIGHT.md` (D29).

### 7.4 Blueprint findings

No defect forces a statement change. Every statement and every step's arithmetic was rechecked:
- STAB's constants `5na`, `12na`, `8nb`, `32nb`, `66nb` and `c_T = 304n³(M + W_∞ + 1)`;
- (s1)–(s7) against the eight entries of `c_*`;
- APPLY's `C₂⁽¹⁾F₁ε/(γ²(s/4)^{2τ}) = η₀/2`;
- LIP's `d₁` and `(σ_K + 1)d₁`;
- the mixed-difference bound `H₃ η₀ L₊ |Δω|`;
- `C_meas`.

Clarifications, none of them errata:
- **F1** (unused hypotheses; harmless). Two statements carry a hypothesis their proofs never use. The Lean
  statements keep them, so they stay literal.
  - `bp:p4:main-measure` (L1143) assumes `B ≠ ∅`.
  - `bp:p4:lagrangian` (L962) assumes `ε ≤ 1`. The holomorphy of `𝐡` on `𝔇` does not need it.
- **F2** (implicit `n ≥ 1`). `bp:p4:unperturbed` (a), (b) (`|L⁰| = 1`, `|G⁻¹| = 1`) and `bp:p4:map-lipschitz`
  (`Bᶜ ≠ ∅`) need `n ≥ 1`. That follows from the standing `n ≥ 2`, and `Data` carries it.
- **F3** (wording). `bp:p4:torsion-regular` (L548) says `det G_K ≠ 0`, while G1 and STAB use "invertible". The two
  are the same over ℂ (P3).

There are no deviations from the frozen statements: the assembly matches them exactly (§P1).

## Appendix A. `.drafts/design/Part4Signatures.lean` (verbatim)

```lean
/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
import KAM.Head.Data
import KAM.Head.HBounded
import KAM.Head.MatrixNorms
import KAM.Head.PhaseAverage
import KAM.Head.CoverMono
import KAM.Head.DyadicApprox
import KAM.Torus.FrozenAgreement
import KAM.Strip.RealRestriction
import KAM.Frozen.Defs.KamCover
import KAM.Frozen.Defs.FundamentalDomain
import KAM.Frozen.Defs.FrequencyMap
import KAM.Frozen.Defs.IsDiophantine
import KAM.Frozen.Theorems.AposterioriKam
import KAM.Frozen.Theorems.LocalUniquenessFlow
import KAM.Frozen.Theorems.VolumeNotDiophantineLe
import KAM.Frozen.Theorems.KamPositiveMeasure
import KAM.Frozen.Theorems.KamPositiveMeasureQualitative
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Design drafts: Lean signatures for blueprint Part 4 (HEAD, HEAD-Q)

Untracked design artefact (`docs/campaign/design/PART4-LEAN-DESIGN.md`). Every Part 4 result node
not yet proved has its exact Lean statement here, with body `sorry`; the definitions are the real
ones. Not a library module: elaborate with `lake env lean`. The `§` headers name the target
module under `KAM/Head/`.

* §0 restates the interfaces this design consumes from the running packages I-P4B
  (`derivative-bounds`, `torsion-regular`, `shift`, `mixed-difference`) and the adapter
  `coh_unique_zero` for I-STRIP-3 (proved in package P4-8). They are not new Part 4 nodes.
* §1 and §2 are definitions only (`Standing`, `Defs`); every later § is theorems only.
* §P checks, with no `sorry` in its own bodies, that the two providers assemble to the frozen
  HEAD and HEAD-Q types (`type_of%` of the real anchors), and that the conclusions of `h1` and
  `stab` are literally the hypotheses of the frozen G1/G2 bodies. Only this scratch file imports
  the frozen theorem modules; in the library only the provider files do, after the seals.
-/

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology KAM.Torus

noncomputable section

namespace KAM.Head

/-! ## §0 Interfaces consumed from running packages (owners: I-P4B, I-STRIP-3) -/

/-- `H_j = c̄ M_h δ_*^{-j}` of `bp:p4:derivative-bounds` (owner I-P4B). -/
def Hconst {n : ℕ} (s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) (j : ℕ) : ℝ :=
  cbar n * hBound h B r₀ / deltaStar s₀ r₀ ^ j

/-- `F_j = c̄ δ_*^{-j}` of `bp:p4:derivative-bounds` (owner I-P4B). -/
def Fconst (n : ℕ) (s₀ r₀ : ℝ) (j : ℕ) : ℝ := cbar n / deltaStar s₀ r₀ ^ j

/-- `M = c̄ (M_h + 1) δ_*^{-3}` of `bp:p4:derivative-bounds` (owner I-P4B). -/
def Mconst {n : ℕ} (s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) : ℝ :=
  cbar n * (hBound h B r₀ + 1) / deltaStar s₀ r₀ ^ 3

/-- Blueprint `bp:p4:derivative-bounds` (owner I-P4B; expected form). -/
theorem derivative_bounds {n : ℕ} {s₀ r₀ : ℝ} (hs₀ : 0 < s₀) (hr₀ : 0 < r₀)
    {B : Set (Fin n → ℝ)} (hB : Bornology.IsBounded B) {h : (Fin n → ℂ) → ℂ}
    (hh : DifferentiableOn ℂ h (actionNbhd B r₀)) {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ε : ℝ}
    (hf : DifferentiableOn ℂ f (complexStrip n s₀ ×ˢ actionNbhd B r₀))
    (hfε : ∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ‖f z‖ ≤ ε) :
    -- (a)
    ((∀ z ∈ domainD n s₀ r₀ B, Metric.closedBall z (deltaStar s₀ r₀) ⊆ domainD' n s₀ r₀ B) ∧
      ∀ I ∈ actionNbhd B (r₀ / 2),
        Metric.closedBall I (deltaStar s₀ r₀) ⊆ actionNbhd B (3 * r₀ / 4)) ∧
    -- (b)
    (∀ I ∈ actionNbhd B (r₀ / 2), ∀ j ∈ ({1, 2, 3} : Set ℕ),
      ‖iteratedFDeriv ℂ j h I‖ ≤ Hconst s₀ r₀ B h j) ∧
    -- (c)
    (∀ z ∈ domainD n s₀ r₀ B,
      (∀ j ∈ ({1, 2, 3} : Set ℕ), ‖iteratedFDeriv ℂ j f z‖ ≤ Fconst n s₀ r₀ j * ε) ∧
      ‖hamiltonianVectorFieldℂ f z‖ ≤ Fconst n s₀ r₀ 1 * ε ∧
      ‖fderiv ℂ (hamiltonianVectorFieldℂ f) z‖ ≤ Fconst n s₀ r₀ 2 * ε) ∧
    -- (d)
    (ε ≤ 1 → ∀ z ∈ domainD n s₀ r₀ B,
      ‖fderiv ℂ (hbold h f) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖hamiltonianVectorFieldℂ (hbold h f) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖fderiv ℂ (hamiltonianVectorFieldℂ (hbold h f)) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ (hbold h f)) z‖ ≤ Mconst s₀ r₀ B h) := sorry

/-- Blueprint `bp:p4:torsion-regular` (owner I-P4B; expected form). `K(T_ρ) ⊆ 𝔇`, `det G_K` a
unit on `T_ρ`; frames in the Part 2 carrier (`KAM.Torus`). -/
theorem torsion_regular {n : ℕ} {s₀ r₀ : ℝ} (hs₀ : 0 < s₀) (hr₀ : 0 < r₀)
    {B : Set (Fin n → ℝ)} {h : (Fin n → ℂ) → ℂ} (hh : DifferentiableOn ℂ h (actionNbhd B r₀))
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hf : DifferentiableOn ℂ f (complexStrip n s₀ ×ˢ actionNbhd B r₀))
    (hfper : ∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ∀ k : Fin n → ℤ,
      f (z.1 + (fun i => (k i : ℂ)), z.2) = f z)
    {ρ : ℝ} (hρ : 0 < ρ) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ))
    (hK𝔇 : ∀ θ ∈ complexStrip n ρ, K θ ∈ domainD n s₀ r₀ B)
    (hG : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det) (ω : Fin n → ℝ) :
    -- (a)
    ((∀ θ ∈ complexStrip n ρ, gramMatrix K θ * (gramMatrix K θ)⁻¹ = 1 ∧
        (gramMatrix K θ)⁻¹ * gramMatrix K θ = 1) ∧
      DifferentiableOn ℂ (fun θ => (gramMatrix K θ)⁻¹) (complexStrip n ρ) ∧
      ∀ θ ∈ complexStrip n ρ,
        fderiv ℂ (fun θ' => (gramMatrix K θ')⁻¹) θ (fun l => (ω l : ℂ)) =
          -((gramMatrix K θ)⁻¹ * fderiv ℂ (gramMatrix K) θ (fun l => (ω l : ℂ)) *
            (gramMatrix K θ)⁻¹)) ∧
    -- (b)
    (DifferentiableOn ℂ (normalMat K) (complexStrip n ρ) ∧
      ∀ θ ∈ complexStrip n ρ, ∀ (j : Fin n) (v : Fin n → ℂ),
        sumVec n (fderiv ℂ (fun θ' => normalFrame K θ' j) θ v) =
          fun s => fderiv ℂ (normalMat K) θ v s j) ∧
    -- (c)
    ((∀ θ ∈ complexStrip n ρ, torsion (hbold h f) K ω θ =
        (normalMat K θ)ᵀ * omegaZeroMatrix n * normalFieldMat (hbold h f) K ω θ) ∧
      DifferentiableOn ℂ (torsion (hbold h f) K ω) (complexStrip n ρ) ∧
      Continuous (fun x : Fin n → ℝ => torsion (hbold h f) K ω (fun l => (x l : ℂ)))) ∧
    -- (d)
    (IsPrimaryOnStrip K ρ →
      IsPeriodicOn (angleDisplacement K) ρ ∧ IsPeriodicOn (fun θ => (K θ).2) ρ ∧
      IsPeriodicOn (tangentMat K) ρ ∧ IsPeriodicOn (gramMatrix K) ρ ∧
      IsPeriodicOn (normalMat K) ρ ∧ IsPeriodicOn (torsion (hbold h f) K ω) ρ) := sorry

/-- Blueprint `bp:p4:shift` (owner I-P4B; expected form). -/
theorem shift {n : ℕ} {ρ : ℝ} (hρ : 0 < ρ) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) (hKp : IsPrimaryOnStrip K ρ)
    (hKr : IsRealOnReals K) (a ω : Fin n → ℝ) :
    -- (a)
    (DifferentiableOn ℂ (phaseShift K a) (complexStrip n ρ) ∧
      IsPrimaryOnStrip (phaseShift K a) ρ ∧ IsRealOnReals (phaseShift K a) ∧
      ∀ θ ∈ complexStrip n ρ,
        fderiv ℂ (phaseShift K a) θ = fderiv ℂ K (θ + fun i => (a i : ℂ))) ∧
    -- (b)
    (∀ φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ,
      (∀ θ ∈ complexStrip n ρ, invarianceError φ (phaseShift K a) ω θ =
        invarianceError φ K ω (θ + fun i => (a i : ℂ))) ∧
      ((∀ θ ∈ complexStrip n ρ, invarianceError φ K ω θ = 0) →
        ∀ θ ∈ complexStrip n ρ, invarianceError φ (phaseShift K a) ω θ = 0)) ∧
    -- (c)
    ((∀ A : ℝ, (∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ A) →
        ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ (phaseShift K a) θ‖ ≤ A) ∧
      ∀ (S : Set ((Fin n → ℂ) × (Fin n → ℂ))) (β : ℝ),
        (∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) β ⊆ S) →
        ∀ θ ∈ complexStrip n ρ, Metric.ball (phaseShift K a θ) β ⊆ S) ∧
    -- (d)
    (phaseAverage (phaseShift K a) = phaseAverage K + a ∧
      IsNormalized (phaseShift K (-phaseAverage K)) ∧
      (IsNormalized K → IsNormalized (phaseShift K a) → a = 0)) ∧
    -- (e)
    ∀ I : Fin n → ℝ,
      (∀ A : ℝ, (∀ x : Fin n → ℝ,
          ‖K (fun i => (x i : ℂ)) - unperturbedTorus I (fun i => (x i : ℂ))‖ ≤ A) →
        ‖phaseAverage K‖ ≤ A) ∧
      ∀ θ : Fin n → ℂ, ‖phaseShift K a θ - unperturbedTorus I θ‖ ≤
        ‖K (θ + fun i => (a i : ℂ)) - unperturbedTorus I (θ + fun i => (a i : ℂ))‖ + ‖a‖ := sorry

/-- Blueprint `bp:p4:mixed-difference` (owner I-P4B; expected form). -/
theorem mixed_difference {n : ℕ} {U : Set (Fin n → ℂ)} (hU : IsOpen U)
    {F : (Fin n → ℂ) → Fin n → ℂ} (hF : DifferentiableOn ℂ F U) {a v w : Fin n → ℂ}
    (hP : ∀ t ∈ Set.Icc (0 : ℝ) 1, ∀ t' ∈ Set.Icc (0 : ℝ) 1, a + t • v + t' • w ∈ U) {Q : ℝ}
    (hQ : ∀ t ∈ Set.Icc (0 : ℝ) 1, ∀ t' ∈ Set.Icc (0 : ℝ) 1,
      ‖iteratedFDeriv ℂ 2 F (a + t • v + t' • w)‖ ≤ Q) :
    ‖F (a + v + w) - F (a + v) - F (a + w) + F a‖ ≤ Q * ‖v‖ * ‖w‖ := sorry

/-- Adapter for `bp:p1:cohomological` (proved in package P4-8, module `Lagrangian`, from
I-STRIP-3's uniqueness clause): a holomorphic, periodic, zero-average `w` with `∂_ω w = 0` on
`T_r` vanishes, for `ω` Diophantine (`γ > 0`). -/
theorem coh_unique_zero {n : ℕ} {τ γ r : ℝ} (hr : 0 < r) (hγ : 0 < γ) {ω : Fin n → ℝ}
    (hω : IsDiophantine γ τ ω) {w : (Fin n → ℂ) → ℂ}
    (hw : DifferentiableOn ℂ w (complexStrip n r)) (hwp : IsPeriodicOn w r) (havg : avg w = 0)
    (hω0 : ∀ θ ∈ complexStrip n r, fderiv ℂ w θ (fun l => (ω l : ℂ)) = 0) :
    ∀ θ ∈ complexStrip n r, w θ = 0 := sorry

/-! ## §1 `KAM/Head/Standing.lean`: the standing data of Part 4 (definitions only) -/

/-- The data of HEAD fixed in `bp:p4:sec-data` (blueprint L138–147), with the witness `L_h` of the
nondegeneracy hypothesis. The fields are the frozen HEAD binders verbatim. -/
structure Data {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) (Lh : ℝ) :
    Prop where
  two_le : 2 ≤ n
  tau_gt : (n : ℝ) - 1 < τ
  s₀_pos : 0 < s₀
  r₀_pos : 0 < r₀
  isOpen : IsOpen B
  isBounded : Bornology.IsBounded B
  holo : DifferentiableOn ℂ h (actionNbhd B r₀)
  real : ∀ I : Fin n → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
    (h fun i => (I i : ℂ)).im = 0
  nondeg : ∀ I ∈ closure B, ∀ J ∈ closure B,
    ‖I - J‖ ≤ Lh * ‖frequencyMap h I - frequencyMap h J‖

/-- The hypotheses of HEAD on the perturbation `f` and its size `ε` (frozen text verbatim). -/
structure Pert {n : ℕ} (s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (ε : ℝ) : Prop where
  holo : DifferentiableOn ℂ f (complexStrip n s₀ ×ˢ actionNbhd B r₀)
  periodic : ∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ∀ k : Fin n → ℤ,
    f (z.1 + (fun i => (k i : ℂ)), z.2) = f z
  real : ∀ θ I : Fin n → ℝ,
    ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀ →
    (f ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0
  bound : ∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ‖f z‖ ≤ ε

/-- The boundary-layer hypothesis of HEAD with witness `C_B`. -/
def Layer {n : ℕ} (B : Set (Fin n → ℝ)) (CB : ℝ) : Prop :=
  ∀ δ : ℝ, 0 < δ → volume {I ∈ B | Metric.infDist I Bᶜ < δ} ≤ ENNReal.ofReal (CB * δ)

/-- The conclusion of the frozen HEAD (`KAM.kam_positive_measure`), verbatim. -/
def HeadConclusion {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) : Prop :=
  ∃ C ε₀ : ℝ, 0 < C ∧ 0 < ε₀ ∧
    ∀ (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ε : ℝ),
      DifferentiableOn ℂ f (complexStrip n s₀ ×ˢ actionNbhd B r₀) →
      (∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ∀ k : Fin n → ℤ,
        f (z.1 + (fun i => (k i : ℂ)), z.2) = f z) →
      (∀ θ I : Fin n → ℝ,
        ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀ →
        (f ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
      (∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ‖f z‖ ≤ ε) → ε ≤ ε₀ →
      volume (fundamentalDomain B \
          kamCover h f B r₀ τ (C * Real.sqrt ε)) ≤
        ENNReal.ofReal (C * ε ^ ((1 : ℝ) / 4))

/-- The conclusion of the frozen HEAD-Q (`KAM.kam_positive_measure_qualitative`), verbatim. -/
def HeadQConclusion {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) : Prop :=
  ∀ κ : ℝ, 0 < κ → ∃ ε₀ : ℝ, 0 < ε₀ ∧
    ∀ (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ε : ℝ),
      DifferentiableOn ℂ f (complexStrip n s₀ ×ˢ actionNbhd B r₀) →
      (∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ∀ k : Fin n → ℤ,
        f (z.1 + (fun i => (k i : ℂ)), z.2) = f z) →
      (∀ θ I : Fin n → ℝ,
        ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀ →
        (f ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
      (∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ‖f z‖ ≤ ε) → ε ≤ ε₀ →
      volume (fundamentalDomain B \ kamCover h f B r₀ τ κ) ≤
        ENNReal.ofReal κ * volume (fundamentalDomain B)

/-! ## §2 `KAM/Head/Defs.lean`: the remaining Part 4 definitions (definitions only) -/

/-- `U = {I ∈ ℝⁿ : ι I ∈ B_{r₀}}`. -/
def realDomain {n : ℕ} (B : Set (Fin n → ℝ)) (r₀ : ℝ) : Set (Fin n → ℝ) :=
  {I | (fun i => (I i : ℂ)) ∈ actionNbhd B r₀}

/-- The complex gradient `∇h(z) = (∂_i h(z))_i`. -/
def gradC {n : ℕ} (h : (Fin n → ℂ) → ℂ) (z : Fin n → ℂ) : Fin n → ℂ :=
  fun i => fderiv ℂ h z (Pi.single i 1)

/-- The complex Hessian `∇²h(z) = (∂_j ∂_i h(z))_{ij}`. -/
def hessian {n : ℕ} (h : (Fin n → ℂ) → ℂ) (z : Fin n → ℂ) : Matrix (Fin n) (Fin n) ℂ :=
  Matrix.of fun i j => fderiv ℂ (fun w => fderiv ℂ h w (Pi.single i 1)) z (Pi.single j 1)

/-- `Λ_g = max (H₂, 2 H₁ / δ_*)`. -/
def LambdaG {n : ℕ} (s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) : ℝ :=
  max (Hconst s₀ r₀ B h 2) (2 * Hconst s₀ r₀ B h 1 / deltaStar s₀ r₀)

/-- `W_∞ = H₁`. -/
def Winf {n : ℕ} (s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) : ℝ :=
  Hconst s₀ r₀ B h 1

/-- `I_ω`: the action in `B` with frequency `ω` (`bp:p4:inverse-freq`); junk off `∇h(B)`. -/
def invFreq {n : ℕ} (h : (Fin n → ℂ) → ℂ) (B : Set (Fin n → ℝ)) (ω : Fin n → ℝ) : Fin n → ℝ :=
  Function.invFunOn (frequencyMap h) B ω

/-- The action Hessian `∂²_I φ(z) = (∂_{I_j} ∂_{I_i} φ(z))_{ij}` of `φ` on `ℂⁿ × ℂⁿ`. -/
def actionHessian {n : ℕ} (φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (z : (Fin n → ℂ) × (Fin n → ℂ)) :
    Matrix (Fin n) (Fin n) ℂ :=
  Matrix.of fun i j => fderiv ℂ (fun w => fderiv ℂ φ w (0, Pi.single i 1)) z (0, Pi.single j 1)

/-- The constants supplied by the frozen G1 (two tuples), G2 and G3 (Definition
`bp:p4:parameters`; `C3` is the constant of `bp:p4:preimage-measure`). Plain data; their defining
properties are `GConsts.Pos` and `GValid`. -/
structure GConsts where
  /-- `C₁⁽¹⁾` -/
  C11 : ℝ
  /-- `C₂⁽¹⁾` -/
  C21 : ℝ
  /-- `C₁⁽²⁾` -/
  C12 : ℝ
  /-- `C₂⁽²⁾` -/
  C22 : ℝ
  /-- `c_G` -/
  cG : ℝ
  /-- `C₃` (any sign) -/
  C3 : ℝ

/-- The positivity the frozen G1 and G2 give their constants. -/
structure GConsts.Pos (gc : GConsts) : Prop where
  C11_pos : 0 < gc.C11
  C21_pos : 0 < gc.C21
  C12_pos : 0 < gc.C12
  C22_pos : 0 < gc.C22
  cG_pos : 0 < gc.cG

/-- `σ_K = 2 + μ`. -/
def sigmaK (s₀ r₀ : ℝ) : ℝ := 2 + muParam s₀ r₀

/-- `σ_B = 2 + μ`. -/
def sigmaB (s₀ r₀ : ℝ) : ℝ := 2 + muParam s₀ r₀

/-- `σ_T = 4 L₊ + μ`. -/
def sigmaT (Lh s₀ r₀ : ℝ) : ℝ := 4 * Lplus Lh + muParam s₀ r₀

/-- The body of the frozen G1 (`KAM.aposteriori_kam`) after `∃ C₁ C₂, 0 < C₁ ∧ 0 < C₂ ∧`,
verbatim (checked by `exact` in §P). -/
def G1Body (n : ℕ) (τ ρ ρinf M σK σB σT μ γbar C₁ C₂ : ℝ) : Prop :=
  ∀ (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))) (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (γ e : ℝ),
    -- H1: the Hamiltonian
    IsOpen 𝔅 →
    (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ 𝔅) →
    DifferentiableOn ℂ h 𝔅 →
    (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, h (z.1 + (fun i => (k i : ℂ)), z.2) = h z) →
    (∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ 𝔅 →
      (h ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
    (∀ z ∈ 𝔅, ‖fderiv ℂ h z‖ ≤ M ∧ ‖hamiltonianVectorFieldℂ h z‖ ≤ M ∧
      ‖fderiv ℂ (hamiltonianVectorFieldℂ h) z‖ ≤ M ∧
      ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ h) z‖ ≤ M) →
    -- H2: the parameterization
    DifferentiableOn ℂ K (complexStrip n ρ) → IsPrimaryOnStrip K ρ → IsRealOnReals K →
    (∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ 𝔅) →
    (∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ) →
    -- H3: the tangent frame has maximal rank, with `|B(θ)| ≤ σB - μ`
    (∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧
      ∀ i, ∑ j, ‖(gramMatrix K θ)⁻¹ i j‖ ≤ σB - μ) →
    -- H4: twist condition
    IsUnit (torsionAverage h K ω).det →
    (∀ i, ∑ j, ‖(torsionAverage h K ω)⁻¹ i j‖ ≤ σT - μ) →
    -- H5: Diophantine frequency, with `γ ≤ γbar`
    0 < γ → γ ≤ γbar → IsDiophantine γ τ ω →
    -- smallness of the invariance error
    (∀ θ ∈ complexStrip n ρ, ‖invarianceError h K ω θ‖ ≤ e) →
    C₁ * e / (γ ^ 4 * ρ ^ (4 * τ)) < 1 →
    ∃ Kinf : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ),
      DifferentiableOn ℂ Kinf (complexStrip n ρinf) ∧ IsPrimaryOnStrip Kinf ρinf ∧
      IsRealOnReals Kinf ∧
      (∀ θ ∈ complexStrip n ρinf, invarianceError h Kinf ω θ = 0) ∧
      (∀ θ ∈ complexStrip n ρinf, Metric.ball (Kinf θ) (μ / 2) ⊆ 𝔅) ∧
      (∀ θ ∈ complexStrip n ρinf, ‖fderiv ℂ Kinf θ‖ ≤ σK - μ / 2) ∧
      ∀ θ ∈ complexStrip n ρinf, ‖Kinf θ - K θ‖ ≤ C₂ * e / (γ ^ 2 * ρ ^ (2 * τ))

/-- The body of the frozen G2 (`KAM.local_uniqueness_flow`) after `∃ c, 0 < c ∧`, verbatim
(checked by `exact` in §P). -/
def G2Body (n : ℕ) (τ ρ M σK σB σT μ c : ℝ) : Prop :=
  ∀ (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))) (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (γ : ℝ),
    -- H1: the Hamiltonian
    IsOpen 𝔅 →
    (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ 𝔅) →
    DifferentiableOn ℂ h 𝔅 →
    (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, h (z.1 + (fun i => (k i : ℂ)), z.2) = h z) →
    (∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ 𝔅 →
      (h ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
    (∀ z ∈ 𝔅, ‖fderiv ℂ h z‖ ≤ M ∧ ‖hamiltonianVectorFieldℂ h z‖ ≤ M ∧
      ‖fderiv ℂ (hamiltonianVectorFieldℂ h) z‖ ≤ M ∧
      ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ h) z‖ ≤ M) →
    -- the reference torus `K₁`: H2–H4 and invariance
    DifferentiableOn ℂ K₁ (complexStrip n ρ) → IsPrimaryOnStrip K₁ ρ → IsRealOnReals K₁ →
    (∀ θ ∈ complexStrip n ρ, Metric.ball (K₁ θ) μ ⊆ 𝔅) →
    (∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K₁ θ‖ ≤ σK - μ) →
    (∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K₁ θ).det ∧
      ∀ i, ∑ j, ‖(gramMatrix K₁ θ)⁻¹ i j‖ ≤ σB - μ) →
    IsUnit (torsionAverage h K₁ ω).det →
    (∀ i, ∑ j, ‖(torsionAverage h K₁ ω)⁻¹ i j‖ ≤ σT - μ) →
    0 < γ → IsDiophantine γ τ ω →
    (∀ θ ∈ complexStrip n ρ, invarianceError h K₁ ω θ = 0) →
    -- the second torus `K₂`
    DifferentiableOn ℂ K₂ (complexStrip n ρ) → IsPrimaryOnStrip K₂ ρ → IsRealOnReals K₂ →
    (∀ θ ∈ complexStrip n ρ, K₂ θ ∈ 𝔅) →
    (∀ θ ∈ complexStrip n ρ, invarianceError h K₂ ω θ = 0) →
    -- closeness
    (∀ θ ∈ complexStrip n ρ, ‖K₁ θ - K₂ θ‖ ≤ c * γ ^ 2 * ρ ^ (2 * τ)) →
    ∃ φ : Fin n → ℝ, ∀ θ ∈ complexStrip n (ρ / 2), K₂ θ = K₁ (θ + (fun i => (φ i : ℂ)))

/-- Definition `bp:p4:parameters`: `gc` are constants of the frozen G1 at the two tuples
`(ρ, ρ_∞) = (s/4, s/8)` and `(3s/32, s/16)`, of the frozen G2 at `ρ = s/16`, all with
`(n, τ, M, σ_K, σ_B, σ_T, μ, γ̄ = 1)`, and of the frozen G3 for `Ω = ∇h(B)`. -/
structure GValid {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) (Lh : ℝ)
    (gc : GConsts) : Prop extends GConsts.Pos gc where
  g1a : G1Body n τ (stripWidth s₀ / 4) (stripWidth s₀ / 8) (Mconst s₀ r₀ B h) (sigmaK s₀ r₀)
    (sigmaB s₀ r₀) (sigmaT Lh s₀ r₀) (muParam s₀ r₀) 1 gc.C11 gc.C21
  g1b : G1Body n τ (3 * stripWidth s₀ / 32) (stripWidth s₀ / 16) (Mconst s₀ r₀ B h)
    (sigmaK s₀ r₀) (sigmaB s₀ r₀) (sigmaT Lh s₀ r₀) (muParam s₀ r₀) 1 gc.C12 gc.C22
  g2 : G2Body n τ (stripWidth s₀ / 16) (Mconst s₀ r₀ B h) (sigmaK s₀ r₀) (sigmaB s₀ r₀)
    (sigmaT Lh s₀ r₀) (muParam s₀ r₀) gc.cG
  g3 : ∀ α : ℝ, 0 < α →
    volume {ω ∈ frequencyMap h '' B | ¬ IsDiophantine α τ ω} ≤ ENNReal.ofReal (gc.C3 * α)

/-- `A₀ = 2 C₂⁽¹⁾ F₁ / (s/4)^{2τ}`. -/
def A0 (n : ℕ) (τ s₀ r₀ : ℝ) (gc : GConsts) : ℝ :=
  2 * gc.C21 * Fconst n s₀ r₀ 1 / (stripWidth s₀ / 4) ^ (2 * τ)

/-- `λ_* = δ_* / (4 L₊)`. -/
def lamStar (Lh s₀ r₀ : ℝ) : ℝ := deltaStar s₀ r₀ / (4 * Lplus Lh)

/-- `A₁ = L₊ (H₃ A₀ + F₂) + 32 n A₀ / s`. -/
def A1 {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) (Lh : ℝ)
    (gc : GConsts) : ℝ :=
  Lplus Lh * (Hconst s₀ r₀ B h 3 * A0 n τ s₀ r₀ gc + Fconst n s₀ r₀ 2) +
    32 * n * A0 n τ s₀ r₀ gc / stripWidth s₀

/-- `A₂ = (σ_K + 1) C₂⁽²⁾ A₁ / (3s/32)^{2τ}`. -/
def A2 {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) (Lh : ℝ)
    (gc : GConsts) : ℝ :=
  (sigmaK s₀ r₀ + 1) * gc.C22 * A1 τ s₀ r₀ B h Lh gc / (3 * stripWidth s₀ / 32) ^ (2 * τ)

/-- `A₃ = max (A₂, 2 A₀ / λ_*)`. -/
def A3 {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) (Lh : ℝ)
    (gc : GConsts) : ℝ :=
  max (A2 τ s₀ r₀ B h Lh gc) (2 * A0 n τ s₀ r₀ gc / lamStar Lh s₀ r₀)

/-- `A₄ = 16 n A₀ / s`. -/
def A4 (n : ℕ) (τ s₀ r₀ : ℝ) (gc : GConsts) : ℝ := 16 * n * A0 n τ s₀ r₀ gc / stripWidth s₀

/-- `c_T = 304 n³ (M + W_∞ + 1)`. -/
def cT {n : ℕ} (s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) : ℝ :=
  304 * (n : ℝ) ^ 3 * (Mconst s₀ r₀ B h + Winf s₀ r₀ B h + 1)

/-- `η_*(δ) = min (μ, δ² / (16 c_T L₊))`. -/
def etaStar {n : ℕ} (s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) (Lh δ : ℝ) : ℝ :=
  min (muParam s₀ r₀) (δ ^ 2 / (16 * cT s₀ r₀ B h * Lplus Lh))

/-- `c_*`, the minimum of the eight numbers of Definition `bp:p4:parameters`. -/
def cStar {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) (Lh : ℝ)
    (gc : GConsts) : ℝ :=
  min 1 <| min (deltaStar s₀ r₀ ^ 2 / (2 * Lplus Lh * cbar n)) <|
    min ((stripWidth s₀ / 4) ^ (4 * τ) / (2 * gc.C11 * Fconst n s₀ r₀ 1)) <|
    min (etaStar s₀ r₀ B h Lh (stripWidth s₀ / 32) / A0 n τ s₀ r₀ gc) <|
    min ((3 * stripWidth s₀ / 32) ^ (4 * τ) /
      (2 * gc.C12 * A1 τ s₀ r₀ B h Lh gc * lamStar Lh s₀ r₀)) <|
    min (gc.cG * (stripWidth s₀ / 16) ^ (2 * τ) /
      (2 * A0 n τ s₀ r₀ gc +
        gc.C22 * A1 τ s₀ r₀ B h Lh gc * lamStar Lh s₀ r₀ / (3 * stripWidth s₀ / 32) ^ (2 * τ))) <|
    min (1 / (4 * (A3 τ s₀ r₀ B h Lh gc * LambdaG s₀ r₀ B h + A4 n τ s₀ r₀ gc)))
      (1 / (2 * A0 n τ s₀ r₀ gc))

/-- Display `bp:p4:SA`: the standing assumption `0 < γ ≤ 1`, `0 ≤ ε ≤ c_* γ⁴`. -/
structure SA {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) (Lh : ℝ)
    (gc : GConsts) (ε γ : ℝ) : Prop where
  gamma_pos : 0 < γ
  gamma_le : γ ≤ 1
  eps_nonneg : 0 ≤ ε
  eps_le : ε ≤ cStar τ s₀ r₀ B h Lh gc * γ ^ 4

/-- Display `bp:p4:SA`: `η₀ = A₀ ε γ⁻²`. -/
def eta0 (n : ℕ) (τ s₀ r₀ : ℝ) (gc : GConsts) (ε γ : ℝ) : ℝ := A0 n τ s₀ r₀ gc * ε / γ ^ 2

/-- Display `bp:p4:SA`: `Ω_γ = ∇h(B) ∩ Dio_{γ,τ}`. -/
def OmegaGamma {n : ℕ} (h : (Fin n → ℂ) → ℂ) (B : Set (Fin n → ℝ)) (τ γ : ℝ) :
    Set (Fin n → ℝ) :=
  frequencyMap h '' B ∩ {ω | IsDiophantine γ τ ω}

/-- The conclusion clauses of `bp:p4:apply` for a candidate `K`. -/
def IsApplyTorus {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ)
    (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (gc : GConsts) (ε γ : ℝ) (ω : Fin n → ℝ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) : Prop :=
  DifferentiableOn ℂ K (complexStrip n (stripWidth s₀ / 8)) ∧
  IsPrimaryOnStrip K (stripWidth s₀ / 8) ∧ IsRealOnReals K ∧
  (∀ θ ∈ complexStrip n (stripWidth s₀ / 8), invarianceError (hbold h f) K ω θ = 0) ∧
  (∀ θ ∈ complexStrip n (stripWidth s₀ / 8),
    Metric.ball (K θ) (muParam s₀ r₀ / 2) ⊆ domainD n s₀ r₀ B) ∧
  (∀ θ ∈ complexStrip n (stripWidth s₀ / 8),
    ‖fderiv ℂ K θ‖ ≤ sigmaK s₀ r₀ - muParam s₀ r₀ / 2) ∧
  ∀ θ ∈ complexStrip n (stripWidth s₀ / 8),
    ‖K θ - unperturbedTorus (invFreq h B ω) θ‖ ≤ eta0 n τ s₀ r₀ gc ε γ / 2

/-- `K^∞_ω`: a torus given by APPLY, fixed by choice (Definition `bp:p4:normalized-torus`). -/
def applyTorus {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ)
    (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (gc : GConsts) (ε γ : ℝ) (ω : Fin n → ℝ) :
    (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ) :=
  Classical.epsilon (IsApplyTorus τ s₀ r₀ B h f gc ε γ ω)

/-- `K_ω = (K^∞_ω)^{[-ph(K^∞_ω)]}` (Definition `bp:p4:normalized-torus`). -/
def normTorus {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ)
    (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (gc : GConsts) (ε γ : ℝ) (ω : Fin n → ℝ) :
    (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ) :=
  phaseShift (applyTorus τ s₀ r₀ B h f gc ε γ ω)
    (-phaseAverage (applyTorus τ s₀ r₀ B h f gc ε γ ω))

/-- `W_ω = K_ω - K⁰_ω = (u_ω, v_ω)` (Definition `bp:p4:normalized-torus`). -/
def normDisp {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ)
    (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (gc : GConsts) (ε γ : ℝ) (ω : Fin n → ℝ)
    (θ : Fin n → ℂ) : (Fin n → ℂ) × (Fin n → ℂ) :=
  normTorus τ s₀ r₀ B h f gc ε γ ω θ - unperturbedTorus (invFreq h B ω) θ

/-- `K' = K_ω + (0, ι ΔI)`, `ΔI = I_{ω'} - I_ω` (Lemma `bp:p4:lip-error`). -/
def shiftedTorus {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ)
    (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (gc : GConsts) (ε γ : ℝ) (ω ω' : Fin n → ℝ)
    (θ : Fin n → ℂ) : (Fin n → ℂ) × (Fin n → ℂ) :=
  normTorus τ s₀ r₀ B h f gc ε γ ω θ +
    (0, fun i => ((invFreq h B ω' i - invFreq h B ω i : ℝ) : ℂ))

/-- `Z = {I : infDist(I, Bᶜ) ≤ γ}`. -/
def layerSet {n : ℕ} (B : Set (Fin n → ℝ)) (γ : ℝ) : Set (Fin n → ℝ) :=
  {I | Metric.infDist I Bᶜ ≤ γ}

/-- `A_γ = {I ∈ B : infDist(I, Bᶜ) ≥ 2γ, ∇h(I) ∈ Dio_{γ,τ}}`. -/
def goodActions {n : ℕ} (h : (Fin n → ℂ) → ℂ) (B : Set (Fin n → ℝ)) (τ γ : ℝ) :
    Set (Fin n → ℝ) :=
  {I ∈ B | 2 * γ ≤ Metric.infDist I Bᶜ ∧ IsDiophantine γ τ (frequencyMap h I)}

/-- `G₀(θ, I) = k_{∇h(I)}(θ) - (θ, I)` on `ℝⁿ × A_γ`, and `0` elsewhere (in particular on
`ℝⁿ × Z`). -/
def disp {n : ℕ} (τ s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ)
    (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (gc : GConsts) (ε γ : ℝ) :
    (Fin n → ℝ) × (Fin n → ℝ) → (Fin n → ℝ) × (Fin n → ℝ) :=
  Set.indicator (Set.univ ×ˢ goodActions h B τ γ) fun z =>
    realRestriction (normTorus τ s₀ r₀ B h f gc ε γ (frequencyMap h z.2)) z.1 - z

/-- `C_meas = 2 C_B⁺ + (9/2)ⁿ (2 C_B⁺ + L₊ⁿ C₃⁺)`. -/
def Cmeas (n : ℕ) (Lh CB C3 : ℝ) : ℝ :=
  2 * CBplus CB + (9 / 2) ^ n * (2 * CBplus CB + Lplus Lh ^ n * max C3 0)

variable {n : ℕ} {τ s₀ r₀ Lh : ℝ} {B : Set (Fin n → ℝ)} {h : (Fin n → ℂ) → ℂ}
  {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ε γ : ℝ} {gc : GConsts}

/-! ## §3 `KAM/Head/Frequency.lean`: `bp:p4:freq-map` -/

/-- Blueprint `bp:p4:freq-map`, items (i)–(v). -/
theorem freq_map (hD : Data τ s₀ r₀ B h Lh) :
    -- (i)
    (IsOpen (realDomain B r₀) ∧ closure B ⊆ realDomain B r₀) ∧
    -- (ii)
    (∀ I ∈ realDomain B r₀,
      (fun i => ((frequencyMap h I i : ℝ) : ℂ)) = gradC h (fun i => (I i : ℂ))) ∧
    -- (iii)
    (DifferentiableOn ℝ (frequencyMap h) (realDomain B r₀) ∧
      ∀ I ∈ realDomain B r₀,
        (∀ v : Fin n → ℝ, (fun i => ((fderiv ℝ (frequencyMap h) I v i : ℝ) : ℂ)) =
          hessian h (fun i => (I i : ℂ)) *ᵥ fun j => (v j : ℂ)) ∧
        (hessian h (fun i => (I i : ℂ)))ᵀ = hessian h (fun i => (I i : ℂ)) ∧
        ∀ i j, (hessian h (fun i => (I i : ℂ)) i j).im = 0) ∧
    -- (iv)
    (∀ I : Fin n → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B (r₀ / 2) →
      ‖frequencyMap h I‖ ≤ Hconst s₀ r₀ B h 1 ∧
      ‖hessian h (fun i => (I i : ℂ))‖ ≤ Hconst s₀ r₀ B h 2) ∧
    -- (v)
    (∀ I ∈ B, ∀ J ∈ B,
      ‖frequencyMap h I - frequencyMap h J‖ ≤ LambdaG s₀ r₀ B h * ‖I - J‖) ∧
    (∀ I ∈ B, ‖frequencyMap h I‖ ≤ Winf s₀ r₀ B h) ∧
    Bornology.IsBounded (frequencyMap h '' B) := sorry

/-! ## §4 `KAM/Head/InverseFrequency.lean`: `bp:p4:hessian-inverse`, `bp:p4:inverse-freq` -/

/-- Blueprint `bp:p4:hessian-inverse`. -/
theorem hessian_inverse (hD : Data τ s₀ r₀ B h Lh) : ∀ I ∈ B,
    (∀ v : Fin n → ℝ,
      ‖v‖ ≤ Lplus Lh * ‖hessian h (fun i => (I i : ℂ)) *ᵥ fun j => (v j : ℂ)‖) ∧
    IsUnit (hessian h (fun i => (I i : ℂ))).det ∧
    (∀ i j, ((hessian h (fun i => (I i : ℂ)))⁻¹ i j).im = 0) ∧
    ‖(hessian h (fun i => (I i : ℂ)))⁻¹‖ ≤ Lplus Lh := sorry

/-- Blueprint `bp:p4:inverse-freq`. -/
theorem inverse_freq (hD : Data τ s₀ r₀ B h Lh) :
    Set.InjOn (frequencyMap h) (closure B) ∧
    (∀ I ∈ closure B, ∀ J ∈ closure B,
      ‖I - J‖ ≤ Lplus Lh * ‖frequencyMap h I - frequencyMap h J‖) ∧
    (∀ ω ∈ frequencyMap h '' B, invFreq h B ω ∈ B ∧ frequencyMap h (invFreq h B ω) = ω ∧
      ‖ω‖ ≤ Winf s₀ r₀ B h) ∧
    (∀ ω ∈ frequencyMap h '' B, ∀ ω' ∈ frequencyMap h '' B,
      ‖invFreq h B ω - invFreq h B ω'‖ ≤ Lplus Lh * ‖ω - ω'‖) ∧
    ∀ I ∈ B, invFreq h B (frequencyMap h I) = I := sorry

/-! ## §5 `KAM/Head/H1.lean`: `bp:p4:h1` -/

/-- Blueprint `bp:p4:h1`: for `ε ≤ 1`, `(𝔇, 𝐡)` satisfies the block H1 of the frozen G1 and G2
with `M` (the H1 conjuncts verbatim, `𝔅 := 𝔇`, `h := 𝐡`). -/
theorem h1 (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε) (hε : ε ≤ 1) :
    IsOpen (domainD n s₀ r₀ B) ∧
    (∀ z ∈ domainD n s₀ r₀ B, ∀ k : Fin n → ℤ,
      (z.1 + (fun i => (k i : ℂ)), z.2) ∈ domainD n s₀ r₀ B) ∧
    DifferentiableOn ℂ (hbold h f) (domainD n s₀ r₀ B) ∧
    (∀ z ∈ domainD n s₀ r₀ B, ∀ k : Fin n → ℤ,
      hbold h f (z.1 + (fun i => (k i : ℂ)), z.2) = hbold h f z) ∧
    (∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ domainD n s₀ r₀ B →
      (hbold h f ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) ∧
    (∀ z ∈ domainD n s₀ r₀ B,
      ‖fderiv ℂ (hbold h f) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖hamiltonianVectorFieldℂ (hbold h f) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖fderiv ℂ (hamiltonianVectorFieldℂ (hbold h f)) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ (hbold h f)) z‖ ≤ Mconst s₀ r₀ B h) := sorry

/-! ## §6 `KAM/Head/Unperturbed.lean`: `bp:p4:unperturbed` -/

/-- Blueprint `bp:p4:unperturbed`, items (a)–(g), for `K⁰ = K⁰_{I_*}` with `I_* ∈ B`. -/
theorem unperturbed (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε) (hε : ε ≤ 1)
    {I : Fin n → ℝ} (hI : I ∈ B) (ω : Fin n → ℝ) :
    -- (a)
    (Differentiable ℂ (unperturbedTorus I) ∧ (∀ ρ, IsPrimaryOnStrip (unperturbedTorus I) ρ) ∧
      IsRealOnReals (unperturbedTorus I) ∧
      ∀ θ, tangentMat (unperturbedTorus I) θ = frameL0 n ∧
        ‖fderiv ℂ (unperturbedTorus I) θ‖ = 1) ∧
    -- (b)
    (∀ θ, gramMatrix (unperturbedTorus I) θ = 1 ∧
      IsUnit (gramMatrix (unperturbedTorus I) θ).det ∧
      ‖(gramMatrix (unperturbedTorus I) θ)⁻¹‖ = 1) ∧
    -- (c)
    (∀ θ j, normalFrame (unperturbedTorus I) θ j = (0, Pi.single j 1)) ∧
    (∀ θ, normalMat (unperturbedTorus I) θ = frameN0 n) ∧
    (∀ θ j, fderiv ℂ (fun θ' => normalFrame (unperturbedTorus I) θ' j) θ
      (fun l => (ω l : ℂ)) = 0) ∧
    -- (d)
    (∀ θ ∈ complexStrip n (stripWidth s₀ / 2),
      torsion (hbold h f) (unperturbedTorus I) ω θ =
        actionHessian (hbold h f) (θ, fun i => (I i : ℂ)) ∧
      actionHessian (hbold h f) (θ, fun i => (I i : ℂ)) =
        hessian h (fun i => (I i : ℂ)) + actionHessian f (θ, fun i => (I i : ℂ))) ∧
    Continuous (fun x : Fin n → ℝ =>
      torsion (hbold h f) (unperturbedTorus I) ω (fun l => (x l : ℂ))) ∧
    torsionAverage (hbold h f) (unperturbedTorus I) ω =
      hessian h (fun i => (I i : ℂ)) +
        matrixAverage (fun x : Fin n → ℝ =>
          actionHessian f ((fun l => (x l : ℂ)), fun i => (I i : ℂ))) ∧
    -- (e)
    (Lplus Lh * Fconst n s₀ r₀ 2 * ε ≤ 1 / 2 →
      IsUnit (torsionAverage (hbold h f) (unperturbedTorus I) ω).det ∧
      ‖(torsionAverage (hbold h f) (unperturbedTorus I) ω)⁻¹‖ ≤ 2 * Lplus Lh) ∧
    -- (f)
    (ω = frequencyMap h I → ∀ θ ∈ complexStrip n (stripWidth s₀ / 2),
      invarianceError (hbold h f) (unperturbedTorus I) ω θ =
        hamiltonianVectorFieldℂ f (θ, fun i => (I i : ℂ)) ∧
      ‖invarianceError (hbold h f) (unperturbedTorus I) ω θ‖ ≤ Fconst n s₀ r₀ 1 * ε) ∧
    -- (g)
    ∀ θ ∈ complexStrip n (stripWidth s₀ / 4),
      Metric.ball (unperturbedTorus I θ) (deltaStar s₀ r₀) ⊆ domainD n s₀ r₀ B := sorry

/-! ## §7 `KAM/Head/Parameters.lean`: `bp:p4:parameters` (claims), `bp:p4:smallness` -/

/-- Blueprint `bp:p4:parameters` (claims): the side conditions of the three frozen applications,
`σ - μ` values, the second entry of `c_*`, and positivity of the derived constants. -/
theorem parameters (hD : Data τ s₀ r₀ B h Lh) :
    ((2 ≤ n ∧ (n : ℝ) - 1 ≤ τ) ∧
      (0 < stripWidth s₀ / 8 ∧ stripWidth s₀ / 8 < stripWidth s₀ / 4) ∧
      (0 < stripWidth s₀ / 16 ∧ stripWidth s₀ / 16 < 3 * stripWidth s₀ / 32) ∧
      0 < Mconst s₀ r₀ B h ∧ 0 < sigmaK s₀ r₀ ∧ 0 < sigmaB s₀ r₀ ∧ 0 < sigmaT Lh s₀ r₀ ∧
      0 < muParam s₀ r₀) ∧
    (sigmaK s₀ r₀ - muParam s₀ r₀ = 2 ∧ sigmaB s₀ r₀ - muParam s₀ r₀ = 2 ∧
      sigmaT Lh s₀ r₀ - muParam s₀ r₀ = 4 * Lplus Lh) ∧
    deltaStar s₀ r₀ ^ 2 / (2 * Lplus Lh * cbar n) = 1 / (2 * Lplus Lh * Fconst n s₀ r₀ 2) ∧
    0 < lamStar Lh s₀ r₀ ∧ 0 < cT s₀ r₀ B h ∧ (∀ δ : ℝ, 0 < δ → 0 < etaStar s₀ r₀ B h Lh δ) ∧
    ∀ gc : GConsts, gc.Pos →
      0 < A0 n τ s₀ r₀ gc ∧ 0 < A1 τ s₀ r₀ B h Lh gc ∧ 0 < A2 τ s₀ r₀ B h Lh gc ∧
      0 < A3 τ s₀ r₀ B h Lh gc ∧ 0 < A4 n τ s₀ r₀ gc ∧ 0 < cStar τ s₀ r₀ B h Lh gc := sorry

/-- Blueprint `bp:p4:smallness`, items (s1)–(s7). -/
theorem smallness (hD : Data τ s₀ r₀ B h Lh) (hgc : gc.Pos)
    (hSA : SA τ s₀ r₀ B h Lh gc ε γ) :
    -- (s1)
    (ε ≤ 1 ∧ Lplus Lh * Fconst n s₀ r₀ 2 * ε ≤ 1 / 2) ∧
    -- (s2)
    gc.C11 * (Fconst n s₀ r₀ 1 * ε) / (γ ^ 4 * (stripWidth s₀ / 4) ^ (4 * τ)) ≤ 1 / 2 ∧
    -- (s3)
    (eta0 n τ s₀ r₀ gc ε γ ≤ etaStar s₀ r₀ B h Lh (stripWidth s₀ / 32) ∧
      etaStar s₀ r₀ B h Lh (stripWidth s₀ / 32) ≤ etaStar s₀ r₀ B h Lh (stripWidth s₀ / 16) ∧
      eta0 n τ s₀ r₀ gc ε γ ≤ muParam s₀ r₀ ∧
      16 * n * eta0 n τ s₀ r₀ gc ε γ / stripWidth s₀ ≤ 1 / 2) ∧
    -- (s4)
    gc.C12 * (A1 τ s₀ r₀ B h Lh gc * lamStar Lh s₀ r₀ * ε) /
      (γ ^ 4 * (3 * stripWidth s₀ / 32) ^ (4 * τ)) ≤ 1 / 2 ∧
    -- (s5)
    (2 * A0 n τ s₀ r₀ gc +
        gc.C22 * A1 τ s₀ r₀ B h Lh gc * lamStar Lh s₀ r₀ / (3 * stripWidth s₀ / 32) ^ (2 * τ)) *
      (ε / γ ^ 2) ≤ gc.cG * γ ^ 2 * (stripWidth s₀ / 16) ^ (2 * τ) ∧
    -- (s6)
    (A3 τ s₀ r₀ B h Lh gc * LambdaG s₀ r₀ B h + A4 n τ s₀ r₀ gc) * (ε / γ ^ 4) ≤ 1 / 4 ∧
    -- (s7)
    (eta0 n τ s₀ r₀ gc ε γ ≤ γ ^ 2 / 2 ∧ γ ^ 2 / 2 ≤ min γ 1 / 2) := sorry

/-! ## §8 `KAM/Head/Apply.lean`: `bp:p4:apply` (frozen G1 through `GValid.g1a`) -/

/-- Blueprint `bp:p4:apply` (APPLY). -/
theorem apply (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε)
    (hgc : GValid τ s₀ r₀ B h Lh gc) (hSA : SA τ s₀ r₀ B h Lh gc ε γ) {ω : Fin n → ℝ}
    (hω : ω ∈ OmegaGamma h B τ γ) :
    ∃ K, IsApplyTorus τ s₀ r₀ B h f gc ε γ ω K := sorry

/-! ## §9 `KAM/Head/StabFrame.lean` + `KAM/Head/Stab.lean`: `bp:p4:stab` -/

/-- Blueprint `bp:p4:stab` (STAB), items (a)–(d) and the hypotheses H2–H4 of G1 in the frozen
row-sum form. -/
theorem stab (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε) (hε : ε ≤ 1)
    (hεF : Lplus Lh * Fconst n s₀ r₀ 2 * ε ≤ 1 / 2) {I : Fin n → ℝ} (hI : I ∈ B)
    {ω : Fin n → ℝ} (hω : ‖ω‖ ≤ Winf s₀ r₀ B h) {δ ρ η : ℝ} (hδ : 0 < δ) (hδρ : δ < ρ)
    (hρ : ρ ≤ stripWidth s₀ / 4) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ))
    (hclose : ∀ θ ∈ complexStrip n ρ, ‖K θ - unperturbedTorus I θ‖ ≤ η)
    (hη : η ≤ etaStar s₀ r₀ B h Lh δ) :
    (∀ θ ∈ complexStrip n (ρ - δ),
      -- (a)
      (‖tangentMat K θ - frameL0 n‖ ≤ n * η / δ ∧ ‖fderiv ℂ K θ‖ ≤ 2) ∧
      -- (b)
      Metric.ball (K θ) (muParam s₀ r₀) ⊆ domainD n s₀ r₀ B ∧
      -- (c)
      (IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ 2) ∧
      -- (d), pointwise
      ‖torsion (hbold h f) K ω θ - torsion (hbold h f) (unperturbedTorus I) ω θ‖ ≤
        cT s₀ r₀ B h * η / δ ^ 2) ∧
    -- (d), the twist
    (IsUnit (torsionAverage (hbold h f) K ω).det ∧
      ‖(torsionAverage (hbold h f) K ω)⁻¹‖ ≤ 4 * Lplus Lh) ∧
    -- H2–H4 of G1 on `T_{ρ-δ}`
    (IsPrimaryOnStrip K ρ → IsRealOnReals K →
      DifferentiableOn ℂ K (complexStrip n (ρ - δ)) ∧ IsPrimaryOnStrip K (ρ - δ) ∧
      IsRealOnReals K ∧
      (∀ θ ∈ complexStrip n (ρ - δ), Metric.ball (K θ) (muParam s₀ r₀) ⊆ domainD n s₀ r₀ B) ∧
      (∀ θ ∈ complexStrip n (ρ - δ), ‖fderiv ℂ K θ‖ ≤ sigmaK s₀ r₀ - muParam s₀ r₀) ∧
      (∀ θ ∈ complexStrip n (ρ - δ), IsUnit (gramMatrix K θ).det ∧
        ∀ i, ∑ j, ‖(gramMatrix K θ)⁻¹ i j‖ ≤ sigmaB s₀ r₀ - muParam s₀ r₀) ∧
      IsUnit (torsionAverage (hbold h f) K ω).det ∧
      ∀ i, ∑ j, ‖(torsionAverage (hbold h f) K ω)⁻¹ i j‖ ≤
        sigmaT Lh s₀ r₀ - muParam s₀ r₀) := sorry

/-! ## §10 `KAM/Head/Normalize.lean`: `bp:p4:normalize` -/

/-- Blueprint `bp:p4:normalize`. -/
theorem normalize (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε)
    (hgc : GValid τ s₀ r₀ B h Lh gc) (hSA : SA τ s₀ r₀ B h Lh gc ε γ) {ω : Fin n → ℝ}
    (hω : ω ∈ OmegaGamma h B τ γ) :
    DifferentiableOn ℂ (normTorus τ s₀ r₀ B h f gc ε γ ω) (complexStrip n (stripWidth s₀ / 8)) ∧
    IsPrimaryOnStrip (normTorus τ s₀ r₀ B h f gc ε γ ω) (stripWidth s₀ / 8) ∧
    IsRealOnReals (normTorus τ s₀ r₀ B h f gc ε γ ω) ∧
    (∀ θ ∈ complexStrip n (stripWidth s₀ / 8),
      invarianceError (hbold h f) (normTorus τ s₀ r₀ B h f gc ε γ ω) ω θ = 0) ∧
    IsNormalized (normTorus τ s₀ r₀ B h f gc ε γ ω) ∧
    (∀ θ ∈ complexStrip n (stripWidth s₀ / 8),
      Metric.ball (normTorus τ s₀ r₀ B h f gc ε γ ω θ) (muParam s₀ r₀ / 2) ⊆
        domainD n s₀ r₀ B) ∧
    (∀ θ ∈ complexStrip n (stripWidth s₀ / 8),
      ‖fderiv ℂ (normTorus τ s₀ r₀ B h f gc ε γ ω) θ‖ ≤ sigmaK s₀ r₀ - muParam s₀ r₀ / 2) ∧
    ∀ θ ∈ complexStrip n (stripWidth s₀ / 8),
      ‖normDisp τ s₀ r₀ B h f gc ε γ ω θ‖ ≤ eta0 n τ s₀ r₀ gc ε γ := sorry

/-! ## §11 `KAM/Head/LipError.lean`: `bp:p4:lip-error` -/

/-- Blueprint `bp:p4:lip-error`. -/
theorem lip_error (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε)
    (hgc : GValid τ s₀ r₀ B h Lh gc) (hSA : SA τ s₀ r₀ B h Lh gc ε γ) {ω ω' : Fin n → ℝ}
    (hω : ω ∈ OmegaGamma h B τ γ) (hω' : ω' ∈ OmegaGamma h B τ γ)
    (hclose : ‖ω' - ω‖ ≤ lamStar Lh s₀ r₀ * γ ^ 2) :
    DifferentiableOn ℂ (shiftedTorus τ s₀ r₀ B h f gc ε γ ω ω')
      (complexStrip n (stripWidth s₀ / 8)) ∧
    IsPrimaryOnStrip (shiftedTorus τ s₀ r₀ B h f gc ε γ ω ω') (stripWidth s₀ / 8) ∧
    IsRealOnReals (shiftedTorus τ s₀ r₀ B h f gc ε γ ω ω') ∧
    (∀ θ, shiftedTorus τ s₀ r₀ B h f gc ε γ ω ω' θ - unperturbedTorus (invFreq h B ω') θ =
      normDisp τ s₀ r₀ B h f gc ε γ ω θ) ∧
    (∀ θ ∈ complexStrip n (stripWidth s₀ / 8),
      ‖shiftedTorus τ s₀ r₀ B h f gc ε γ ω ω' θ - unperturbedTorus (invFreq h B ω') θ‖ ≤
        eta0 n τ s₀ r₀ gc ε γ) ∧
    ∀ θ ∈ complexStrip n (3 * stripWidth s₀ / 32),
      ‖invarianceError (hbold h f) (shiftedTorus τ s₀ r₀ B h f gc ε γ ω ω') ω' θ‖ ≤
        A1 τ s₀ r₀ B h Lh gc * ε / γ ^ 2 * ‖ω' - ω‖ := sorry

/-! ## §12 `KAM/Head/Lip.lean`: `bp:p4:lip` (frozen G1, G2 via `GValid.g1b`, `GValid.g2`) -/

/-- Blueprint `bp:p4:lip` (LIP). -/
theorem lip (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε)
    (hgc : GValid τ s₀ r₀ B h Lh gc) (hSA : SA τ s₀ r₀ B h Lh gc ε γ) :
    ∀ ω ∈ OmegaGamma h B τ γ, ∀ ω' ∈ OmegaGamma h B τ γ,
      ∀ θ ∈ complexStrip n (stripWidth s₀ / 32),
        ‖normDisp τ s₀ r₀ B h f gc ε γ ω' θ - normDisp τ s₀ r₀ B h f gc ε γ ω θ‖ ≤
          A3 τ s₀ r₀ B h Lh gc * ε / γ ^ 4 * ‖ω' - ω‖ := sorry

/-! ## §13 `KAM/Head/Lagrangian.lean`: `bp:p4:lagrangian` -/

/-- Blueprint `bp:p4:lagrangian`: `Λ = DKᵀ Ω₀ DK` (`KAM.Torus.lagrangeMat`) vanishes. -/
theorem lagrangian (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε) (hε : ε ≤ 1) {ρ : ℝ}
    (hρ : 0 < ρ) (hγ : 0 < γ) {ω : Fin n → ℝ} (hω : IsDiophantine γ τ ω)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) (hKp : IsPrimaryOnStrip K ρ)
    (hK𝔇 : ∀ θ ∈ complexStrip n ρ, K θ ∈ domainD n s₀ r₀ B)
    (hDK : ∃ A : ℝ, ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ A)
    (hE : ∀ θ ∈ complexStrip n ρ, invarianceError (hbold h f) K ω θ = 0) :
    ∀ θ ∈ complexStrip n ρ, lagrangeMat K θ = 0 := sorry

/-! ## §14 `KAM/Head/RealTorus.lean`: `bp:p4:real-torus` -/

/-- Blueprint `bp:p4:real-torus`: the real restriction `k_ω` of `K_ω` is a KAM torus. -/
theorem real_torus (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε)
    (hgc : GValid τ s₀ r₀ B h Lh gc) (hSA : SA τ s₀ r₀ B h Lh gc ε γ) {ω : Fin n → ℝ}
    (hω : ω ∈ OmegaGamma h B τ γ) :
    -- (i)
    IsInvariantLagrangianTorus (realHamiltonian h f) ω
      (realRestriction (normTorus τ s₀ r₀ B h f gc ε γ ω)) ∧
    -- (ii)
    (∀ x : Fin n → ℝ,
      ‖(realRestriction (normTorus τ s₀ r₀ B h f gc ε γ ω) x).2 - invFreq h B ω‖ < r₀) ∧
    -- (iii)
    (invFreq h B ω ∈ B ∧ frequencyMap h (invFreq h B ω) = ω) ∧
    -- (iv)
    (∀ x : Fin n → ℝ, ‖realRestriction (normTorus τ s₀ r₀ B h f gc ε γ ω) x -
      (x, invFreq h B ω)‖ ≤ eta0 n τ s₀ r₀ gc ε γ) ∧
    -- consequence
    Set.range (realRestriction (normTorus τ s₀ r₀ B h f gc ε γ ω)) ⊆
      kamCover h f B r₀ τ (eta0 n τ s₀ r₀ gc ε γ) := sorry

/-! ## §15 `KAM/Head/PreimageMeasure.lean`: `bp:p4:preimage-measure` (G3 via its constant) -/

/-- Blueprint `bp:p4:preimage-measure`: `C3` is a constant of the frozen G3 for `Ω = ∇h(B)`. -/
theorem preimage_measure (hD : Data τ s₀ r₀ B h Lh) {C3 : ℝ}
    (hC3 : ∀ α : ℝ, 0 < α →
      volume {ω ∈ frequencyMap h '' B | ¬ IsDiophantine α τ ω} ≤ ENNReal.ofReal (C3 * α)) :
    ∀ α : ℝ, 0 < α → volume {I ∈ B | ¬ IsDiophantine α τ (frequencyMap h I)} ≤
      ENNReal.ofReal (Lplus Lh ^ n * max C3 0 * α) := sorry

/-! ## §16 `KAM/Head/GoodActions.lean`: `bp:p4:good-actions` (claim), `bp:p4:map-lipschitz` -/

/-- Blueprint `bp:p4:good-actions` (the claim after the definition). -/
theorem good_actions (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε)
    (hgc : GValid τ s₀ r₀ B h Lh gc) (hSA : SA τ s₀ r₀ B h Lh gc ε γ) :
    ∀ I ∈ goodActions h B τ γ,
      frequencyMap h I ∈ OmegaGamma h B τ γ ∧ invFreq h B (frequencyMap h I) = I ∧
      ∀ θ : Fin n → ℝ, realInclusion₂ n (disp τ s₀ r₀ B h f gc ε γ (θ, I)) =
        normDisp τ s₀ r₀ B h f gc ε γ (frequencyMap h I) (fun i => (θ i : ℂ)) := sorry

/-- Blueprint `bp:p4:map-lipschitz`. -/
theorem map_lipschitz (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε)
    (hgc : GValid τ s₀ r₀ B h Lh gc) (hSA : SA τ s₀ r₀ B h Lh gc ε γ) :
    Disjoint (goodActions h B τ γ) (layerSet B γ) ∧
    (∀ z, ‖disp τ s₀ r₀ B h f gc ε γ z‖ ≤ eta0 n τ s₀ r₀ gc ε γ) ∧
    ∀ z ∈ (Set.univ ×ˢ (goodActions h B τ γ ∪ layerSet B γ)),
      ∀ z' ∈ (Set.univ ×ˢ (goodActions h B τ γ ∪ layerSet B γ)),
        ‖disp τ s₀ r₀ B h f gc ε γ z - disp τ s₀ r₀ B h f gc ε γ z'‖ ≤ 1 / 2 * ‖z - z'‖ := sorry

/-! ## §17 `KAM/Head/MainMeasure.lean`: `bp:p4:main-measure` -/

/-- Blueprint `bp:p4:main-measure`. -/
theorem main_measure {CB : ℝ} (hD : Data τ s₀ r₀ B h Lh) (hCB : Layer B CB)
    (hP : Pert s₀ r₀ B f ε) (hgc : GValid τ s₀ r₀ B h Lh gc)
    (hSA : SA τ s₀ r₀ B h Lh gc ε γ) (hne : B.Nonempty) :
    volume (fundamentalDomain B \ kamCover h f B r₀ τ (eta0 n τ s₀ r₀ gc ε γ)) ≤
      ENNReal.ofReal (Cmeas n Lh CB gc.C3 * γ) := sorry

/-! ## §18 `KAM/Head/Assembly.lean`: `bp:p0:head` from the constants of G1–G3 -/

/-- Blueprint `bp:p0:head`, steps `head-empty` … `head-zero`: HEAD for the data, given constants
of the frozen G1, G2, G3 (conditional helper; the provider supplies `gc`). -/
theorem head_of_gValid {CB : ℝ} (hD : Data τ s₀ r₀ B h Lh) (hCB : Layer B CB)
    (hgc : GValid τ s₀ r₀ B h Lh gc) : HeadConclusion τ s₀ r₀ B h := sorry

/-! ## §19 `KAM/Head/HeadQ.lean`: `bp:p0:headq` from HEAD -/

/-- Blueprint `bp:p0:headq`, steps `hq-trivial` … `hq-cover`, given HEAD at the data
`(n, τ, s₀, r₀, h)` for every action domain (conditional helper; the HEAD-Q provider supplies
`hHEAD := KAM.kam_positive_measure hn hτ hs₀ hr₀`). -/
theorem headq_of_head (hn : 2 ≤ n) (hτ : (n : ℝ) - 1 < τ) (hs₀ : 0 < s₀) (hr₀ : 0 < r₀)
    (hB_open : IsOpen B) (hB_bdd : Bornology.IsBounded B)
    (hh : DifferentiableOn ℂ h (actionNbhd B r₀))
    (hh_real : ∀ I : Fin n → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
      (h fun i => (I i : ℂ)).im = 0)
    (h_nondeg : ∃ L : ℝ, ∀ I ∈ closure B, ∀ J ∈ closure B,
      ‖I - J‖ ≤ L * ‖frequencyMap h I - frequencyMap h J‖)
    (hHEAD : ∀ B' : Set (Fin n → ℝ), IsOpen B' → Bornology.IsBounded B' →
      (∃ C_B : ℝ, ∀ δ : ℝ, 0 < δ →
        volume {I ∈ B' | Metric.infDist I B'ᶜ < δ} ≤ ENNReal.ofReal (C_B * δ)) →
      DifferentiableOn ℂ h (actionNbhd B' r₀) →
      (∀ I : Fin n → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B' r₀ →
        (h fun i => (I i : ℂ)).im = 0) →
      (∃ L : ℝ, ∀ I ∈ closure B', ∀ J ∈ closure B',
        ‖I - J‖ ≤ L * ‖frequencyMap h I - frequencyMap h J‖) →
      HeadConclusion τ s₀ r₀ B' h) :
    HeadQConclusion τ s₀ r₀ B h := sorry

end KAM.Head

/-! ## §P1 Provider assembly (checks; no `sorry` in these bodies) -/

namespace KAM.Provider

open KAM.Head

/-- The constants of the frozen G1 (two tuples), G2 and G3 exist for the data of HEAD. Lives in
`KAM/Provider/KamPositiveMeasure.lean` (the only module allowed to import the sealed anchors). -/
theorem exists_gValid {n : ℕ} {τ s₀ r₀ Lh : ℝ} {B : Set (Fin n → ℝ)} {h : (Fin n → ℂ) → ℂ}
    (hD : Data τ s₀ r₀ B h Lh) : ∃ gc : GConsts, GValid τ s₀ r₀ B h Lh gc := by
  obtain ⟨⟨⟨hn, hτ⟩, ⟨h8, h84⟩, ⟨h16, h1632⟩, hM, hσK, hσB, hσT, hμ⟩, -⟩ := parameters hD
  obtain ⟨C11, C21, h11, h21, hb1⟩ :=
    KAM.aposteriori_kam hn hτ h8 h84 hM hσK hσB hσT hμ (one_pos : (0 : ℝ) < 1)
  obtain ⟨C12, C22, h12, h22, hb2⟩ :=
    KAM.aposteriori_kam hn hτ h16 h1632 hM hσK hσB hσT hμ (one_pos : (0 : ℝ) < 1)
  obtain ⟨cG, hcG, hb3⟩ := KAM.local_uniqueness_flow hn hτ h16 hM hσK hσB hσT hμ
  obtain ⟨C3, hC3⟩ := KAM.volume_not_diophantine_le hD.tau_gt (freq_map hD).2.2.2.2.2.2
  exact ⟨⟨C11, C21, C12, C22, cG, C3⟩, ⟨⟨h11, h21, h12, h22, hcG⟩, hb1, hb2, hb3, hC3⟩⟩

/-- The HEAD provider assembles to the frozen type of `KAM.kam_positive_measure`. -/
example : type_of% @KAM.kam_positive_measure := by
  intro n hn τ hτ s₀ r₀ hs₀ hr₀ B hB_open hB_bdd hB_layer h hh hh_real h_nondeg
  obtain ⟨CB, hCB⟩ := hB_layer
  obtain ⟨Lh, hLh⟩ := h_nondeg
  have hD : Data τ s₀ r₀ B h Lh := ⟨hn, hτ, hs₀, hr₀, hB_open, hB_bdd, hh, hh_real, hLh⟩
  obtain ⟨gc, hgc⟩ := exists_gValid hD
  exact head_of_gValid hD hCB hgc

/-- The HEAD-Q provider assembles to the frozen type of `KAM.kam_positive_measure_qualitative`. -/
example : type_of% @KAM.kam_positive_measure_qualitative := by
  intro n hn τ hτ s₀ r₀ hs₀ hr₀ B hB_open hB_bdd h hh hh_real h_nondeg
  exact headq_of_head hn hτ hs₀ hr₀ hB_open hB_bdd hh hh_real h_nondeg
    fun _ h1 h2 h3 h4 h5 h6 => KAM.kam_positive_measure hn hτ hs₀ hr₀ h1 h2 h3 h4 h5 h6

end KAM.Provider

/-! ## §P2 Plumbing checks (no `sorry` in these bodies) -/

namespace KAM.Head

variable {n : ℕ} {τ s₀ r₀ Lh : ℝ} {B : Set (Fin n → ℝ)} {h : (Fin n → ℂ) → ℂ}
  {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ε : ℝ} {gc : GConsts}

/-- Plumbing (step `lip-g1`): `h1` and the H2–H4 output of `stab` (`ρ = s/8`, `δ = s/32`) are
literally the hypotheses H1–H4 of `GValid.g1b`. -/
example (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε) (hε : ε ≤ 1)
    (hεF : Lplus Lh * Fconst n s₀ r₀ 2 * ε ≤ 1 / 2) (hgc : GValid τ s₀ r₀ B h Lh gc)
    {I : Fin n → ℝ} (hI : I ∈ B) {ω : Fin n → ℝ} (hω : ‖ω‖ ≤ Winf s₀ r₀ B h) {η : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n (stripWidth s₀ / 8)))
    (hclose : ∀ θ ∈ complexStrip n (stripWidth s₀ / 8), ‖K θ - unperturbedTorus I θ‖ ≤ η)
    (hη : η ≤ etaStar s₀ r₀ B h Lh (stripWidth s₀ / 32))
    (hKp : IsPrimaryOnStrip K (stripWidth s₀ / 8)) (hKr : IsRealOnReals K) {γ e : ℝ}
    (hγ : 0 < γ) (hγ1 : γ ≤ 1) (hdio : IsDiophantine γ τ ω)
    (herr : ∀ θ ∈ complexStrip n (3 * stripWidth s₀ / 32),
      ‖invarianceError (hbold h f) K ω θ‖ ≤ e)
    (hsmall : gc.C12 * e / (γ ^ 4 * (3 * stripWidth s₀ / 32) ^ (4 * τ)) < 1) : True := by
  have hs := stripWidth_pos hD.s₀_pos
  have H := (stab hD hP hε hεF hI hω (δ := stripWidth s₀ / 32) (ρ := stripWidth s₀ / 8)
    (by positivity) (by linarith) (by linarith) hK hclose hη).2.2 hKp hKr
  rw [show stripWidth s₀ / 8 - stripWidth s₀ / 32 = 3 * stripWidth s₀ / 32 by ring] at H
  obtain ⟨o1, o2, o3, o4, o5, o6⟩ := h1 hD hP hε
  obtain ⟨k1, k2, k3, k4, k5, k6, k7, k8⟩ := H
  have := hgc.g1b _ _ K ω γ e o1 o2 o3 o4 o5 o6 k1 k2 k3 k4 k5 k6 k7 k8 hγ hγ1 hdio herr hsmall
  trivial

/-- Plumbing (step `lip-g2`): `h1` and `stab` (`ρ = s/8`, `δ = s/16`) for `K₁` are literally the
hypotheses of `GValid.g2` on the `K₁` side. -/
example (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε) (hε : ε ≤ 1)
    (hεF : Lplus Lh * Fconst n s₀ r₀ 2 * ε ≤ 1 / 2) (hgc : GValid τ s₀ r₀ B h Lh gc)
    {I : Fin n → ℝ} (hI : I ∈ B) {ω : Fin n → ℝ} (hω : ‖ω‖ ≤ Winf s₀ r₀ B h) {η : ℝ}
    {K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K₁ (complexStrip n (stripWidth s₀ / 8)))
    (hclose : ∀ θ ∈ complexStrip n (stripWidth s₀ / 8), ‖K₁ θ - unperturbedTorus I θ‖ ≤ η)
    (hη : η ≤ etaStar s₀ r₀ B h Lh (stripWidth s₀ / 16))
    (hKp : IsPrimaryOnStrip K₁ (stripWidth s₀ / 8)) (hKr : IsRealOnReals K₁) {γ : ℝ}
    (hγ : 0 < γ) (hdio : IsDiophantine γ τ ω)
    (hE1 : ∀ θ ∈ complexStrip n (stripWidth s₀ / 16), invarianceError (hbold h f) K₁ ω θ = 0)
    (h2a : DifferentiableOn ℂ K₂ (complexStrip n (stripWidth s₀ / 16)))
    (h2b : IsPrimaryOnStrip K₂ (stripWidth s₀ / 16)) (h2c : IsRealOnReals K₂)
    (h2d : ∀ θ ∈ complexStrip n (stripWidth s₀ / 16), K₂ θ ∈ domainD n s₀ r₀ B)
    (h2e : ∀ θ ∈ complexStrip n (stripWidth s₀ / 16), invarianceError (hbold h f) K₂ ω θ = 0)
    (hcl : ∀ θ ∈ complexStrip n (stripWidth s₀ / 16),
      ‖K₁ θ - K₂ θ‖ ≤ gc.cG * γ ^ 2 * (stripWidth s₀ / 16) ^ (2 * τ)) : True := by
  have hs := stripWidth_pos hD.s₀_pos
  have H := (stab hD hP hε hεF hI hω (δ := stripWidth s₀ / 16) (ρ := stripWidth s₀ / 8)
    (by positivity) (by linarith) (by linarith) hK hclose hη).2.2 hKp hKr
  rw [show stripWidth s₀ / 8 - stripWidth s₀ / 16 = stripWidth s₀ / 16 by ring] at H
  obtain ⟨o1, o2, o3, o4, o5, o6⟩ := h1 hD hP hε
  obtain ⟨k1, k2, k3, k4, k5, k6, k7, k8⟩ := H
  have := hgc.g2 _ _ K₁ K₂ ω γ o1 o2 o3 o4 o5 o6 k1 k2 k3 k4 k5 k6 k7 k8 hγ hdio hE1
    h2a h2b h2c h2d h2e hcl
  trivial

end KAM.Head
```
