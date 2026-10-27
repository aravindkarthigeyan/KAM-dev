# Lean design for blueprint Parts 2 and 3 (G1 and G2)

Design v1, 2026-10-27, branch `k/design` (brief `docs/campaign/briefs/DESIGN-P23.md`). Planning evidence, not
approved Lean. Nothing here is frozen; the frozen anchors `KAM.aposteriori_kam` and `KAM.local_uniqueness_flow`
are untouched.

**The signatures.** Every result node of Parts 2 and 3 has its exact Lean statement in
`.drafts/design/Part23Signatures.lean` (untracked; copied verbatim in Appendix A).
- The file is 1219 lines, sha256 `68ed2cf8d04a99ee2d4321fd3848305bd11ace6b427706d298a039cb45521118`.
- `nice -n 5 lake env lean .drafts/design/Part23Signatures.lean` exits 0 against the build snapshot of `2dd88cf`.
  It prints 39 diagnostics, all `declaration uses 'sorry'`; there is no other warning and no `set_option`.
- Two `example`s are proved without `sorry`. They restate the frozen G1 and G2 types verbatim and prove them from
  `KAM.Apost.g1_explicit` and `KAM.Uniq.g2_explicit` (§6), so the planned providers match the frozen types
  exactly.

Part 1 status below is as of `main` at `e097375`, plus branch `k/zmap` (`473e89f`, not yet landed).

## 0. Decisions in brief

1. **Carriers.** The frozen definitions fix three carriers:
   - vectors: `(Fin n → ℂ) × (Fin n → ℂ)`;
   - the maps `K`, `E`, `X_h`, `DX_h`: functions and continuous linear maps;
   - `G`, `B`, `T`, `⟨T⟩`: `Matrix (Fin n) (Fin n) ℂ`.

   All other matrices (`L`, `N`, `P`, `A`, `Ω₀`, `E_sym`, `Q`, `Λ`, `E_red`, `S`) are `Matrix (Fin n ⊕ Fin n) _ ℂ`,
   with the operator norm of `open scoped Matrix.Norms.Operator`. This follows `KAM.omegaZeroMatrix` on `main`.
   One linear isometry, `sumVec : ℂⁿ × ℂⁿ ≃ₗ[ℂ] (Fin n ⊕ Fin n → ℂ)`, joins the two carriers. Conversion lemmas are
   proved once (§1.5).
2. **Standing data.** Hypotheses are bundled as Prop-structures whose fields are verbatim source premises:
   - Part 2: `KAM.Apost.Params`, `Standing` and `Admissible`;
   - Part 3: `KAM.Uniq.Params` and `S1`–`S4`.

   Each lemma assumes exactly the items its blueprint statement names. Constants are plain `def`s whose argument
   lists are their stated dependences.
3. **Conventions.**
   - Sup bounds are stated pointwise.
   - `∂_ω u` is written `fderiv ℂ u θ (fun l => (ω l : ℂ))`.
   - `⟨u⟩ = KAM.torusAverage (u ∘ ofReal)`.
   - Periodicity is coordinatewise, which is Part 1's hypothesis form.
   - Invertibility is `IsUnit M.det`.
   - Every strip width carries an explicit `0 < r`.
4. **Explicit constructions.** These are explicit, total definitions, so no theorem assumes the conclusion of
   another:
   - the cohomological solution operator `𝓡`;
   - the triangular solution;
   - the Newton correction and the Newton map;
   - the KAM sequence and its limit.
5. **Assembly.** `g1_explicit` and `g2_explicit` restate the frozen bodies with the explicit constants. The
   providers are one-line anonymous constructors (checked).
6. **Packages.** There are 21 prover packages (16 for Part 2, 5 for Part 3), of 350–850 lines each, in 10 waves.
   Two Part 1 nodes needed here are unclaimed: `bp:p1:taylor` and `bp:p1:increments`. Zohar's I-STRIP-3 gates the
   cohomological corollary.

## 1. Carriers

### 1.1 What the frozen definitions fix

| Object | Frozen form | Carrier |
|---|---|---|
| torus `K` | argument of every frozen def | `(Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)` |
| `DK` | `fderiv ℂ K θ` | `(Fin n → ℂ) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ)` |
| `E` | `invarianceError h K ω θ` | `(Fin n → ℂ) × (Fin n → ℂ)` |
| `X_h`, `DX_h`, `D²X_h` | `hamiltonianVectorFieldℂ h`, `fderiv`, `iteratedFDeriv ℂ 2` | functions, CLMs, multilinear maps |
| `G = LᵀL` | `gramMatrix K θ` (entries `dotℂ` of columns) | `Matrix (Fin n) (Fin n) ℂ` |
| `B = G⁻¹` | `(gramMatrix K θ)⁻¹` (no new def) | `Matrix (Fin n) (Fin n) ℂ` |
| column `j` of `N` | `normalFrame K θ j` | `(Fin n → ℂ) × (Fin n → ℂ)` |
| `T`, `⟨T⟩` | `torsion h K ω θ`, `torsionAverage h K ω` (entrywise integral) | `Matrix (Fin n) (Fin n) ℂ` |
| `Ω₀` | `omegaZero` (map) | map on `ℂⁿ × ℂⁿ`; matrix `KAM.omegaZeroMatrix n` on `Fin n ⊕ Fin n` (main) |

### 1.2 The carrier chosen for the remaining objects

All `2n`-row matrices are `Matrix (Fin n ⊕ Fin n) _ ℂ`.

**Why.**
- Part 2's algebra consists of transposes, block products and `Ω₀` identities. With Mathlib's `Matrix` these are
  ring identities plus `Matrix.fromCols`, `fromRows`, `fromBlocks`, `fromRows_mul_fromCols`,
  `fromBlocks_multiply` and `transpose_mul`.
- The Part 1 matrix layer is already written for this carrier and for any finite index type:
  - `KAM.omegaZeroMatrix`, `norm_fromBlocks_le`, `norm_fromRows`, `norm_transpose_le_card_mul`,
    `norm_omegaZeroMatrix_mul` (main);
  - `KAM.neumann` and `KAM.neumann_pointwise` for `Matrix ι ι ℂ` (k/zmap).
- The alternative, continuous linear maps on `ℂⁿ × ℂⁿ`, has no transpose. It would need a hand-built bilinear
  transpose calculus for `LᵀΩ₀N`, `PᵀΩ₀P`, `(DE)ᵀΩ₀N`, `Q`, and so on.

**What it costs.**
- A product rule for rectangular matrix-valued functions, which Mathlib lacks (new module `KAM/Matrix/Calculus.lean`,
  §7).
- One isometry between pairs and `Fin n ⊕ Fin n`-vectors.

Vectors stay in the frozen carrier. `K`, `E`, `ΔK`, `K̄`, `Δ` and `R` take values in `ℂⁿ × ℂⁿ`, so they add to `K`
and feed the frozen definitions directly. Inside matrix products they appear as `sumVec n v`. Coordinates
`ξ = (ξᴸ, ξᴺ)` are `Fin n ⊕ Fin n → ℂ`, with components `fun i => ξ (Sum.inl i)` and `fun i => ξ (Sum.inr i)`.

### 1.3 Objects of Definition `bp:p2:objects` (module `KAM/Torus/Objects.lean`, namespace `KAM.Torus`)

| Blueprint | Lean | Definition |
|---|---|---|
| `L = DK` | `tangentMat K θ` | `colMat (fderiv ℂ K θ)` |
| `A = DX_h∘K` | `linMat h K θ` | `sqMat (fderiv ℂ (hamiltonianVectorFieldℂ h) (K θ))` |
| `Ω_K` | `lagrangeMat K θ` | `Lᵀ * Ω₀ * L` |
| `N` | `normalMat K θ` | `Ω₀ * L * (gramMatrix K θ)⁻¹` |
| `P` | `frameMat K θ` | `Matrix.fromCols L N` |
| `X_N` | `normalFieldMat h K ω θ` | `A * N - fderiv ℂ (normalMat K) θ ω` |
| `E_sym` | `symDefect K θ` | `Pᵀ * Ω₀ * P - Ω₀` |
| `Q` | `reducer K θ` | `-(Ω₀ * Pᵀ * Ω₀)` |
| `η`, `ηᴸ`, `ηᴺ` | `eta`, `etaL`, `etaN` | `Ω₀PᵀΩ₀E`, `-(NᵀΩ₀)E`, `(LᵀΩ₀)E` (`E` as `sumVec n (invarianceError …)`) |
| `DE`, `Λ`, `E_red` | `errDerivMat`, `triangularMat T`, `redDefect` | `colMat (fderiv ℂ (invarianceError h K ω) θ)`, `fromBlocks 0 T 0 0`, the block matrix of (e) |
| `G`, `B`, `E`, `T`, `⟨T⟩` | frozen terms | no new definitions |

`colMat U = LinearMap.toMatrix' (sumVec ∘ₗ U)` and `sqMat U = LinearMap.toMatrix' (sumVec ∘ₗ U ∘ₗ sumVec.symm)`
are defined in `KAM/Torus/Basic.lean`.

### 1.4 Conventions (binding for all Part 2/3 modules)

- **Norm scope.** Every module opens `open scoped Matrix.Norms.Operator`, as `KAM/Matrix/*` already does. A
  matrix-valued statement does not elaborate without it.
- **Holomorphy.** Holomorphy is `DifferentiableOn ℂ u (complexStrip n r)`, for matrix-valued `u` too, with the
  operator norm.
- **Pointwise sup bounds.** "`|u| ≤ A` on `T_r`" is `∀ θ ∈ complexStrip n r, ‖u θ‖ ≤ A`. A blueprint bound with a
  sup on its right side quantifies over pointwise bounds (departures L6, L7).
- **Derivative along `ω`.** `∂_ω u (θ)` is `fderiv ℂ u θ (fun l => (ω l : ℂ))`, the exact form of the frozen
  `invarianceError` and `torsion`. It is never abbreviated, so `rw` matches frozen terms.
- **Averages.** `⟨u⟩` is `KAM.Torus.avg u`, an `abbrev` for `KAM.torusAverage (fun x => u (fun i => (x i : ℂ)))`.
  This is the form of `KAM.averages` (k/zmap) and of the Fourier files.
- **Periodicity.** `KAM.Torus.IsPeriodicOn u r` is `∀ (i : Fin n) z, z ∈ complexStrip n r → u (z + Pi.single i 1)
  = u z`, verbatim the hypothesis of:
  - `KAM.averages` (k/zmap);
  - `KAM.periodic_bounded` and `KAM.periodic_int_shift` (main);
  - `KAM.norm_torusCoeff_le` (main).

  The `ℤⁿ` form is `KAM.periodic_int_shift`.
- **Realness.**
  - Vector- and matrix-valued functions use `IsRealVec u` and `IsRealMat u`: imaginary parts vanish at real points.
  - `ℂⁿ × ℂⁿ`-valued maps use the frozen `IsRealOnReals`, with `KAM.isRealOnReals_iff_im` (main).
- **Invertibility.** Invertibility is `IsUnit M.det`, which is the frozen form for `G` and `⟨T⟩`. `isUnit_iff_ne_zero`
  turns it into `det ≠ 0` for `KAM.holomorphic_inverse`, and `Matrix.isUnit_iff_isUnit_det` into `IsUnit M` for
  `KAM.neumann`.
- **Strip widths.** Every statement that mentions `T_r` for a free width states `0 < r`, as the coordinator
  instructed. Part 0 defines `T_ρ` only for `ρ > 0`.
- **Powers.** Real exponents (`δ ^ (kappa n τ + 1)`, `δ ^ aExp n τ`, `ρ ^ (4 * τ)`) are `Real.rpow`. `γ ^ 4` is a
  natural-number power, as in the frozen G1.
- **Matrix integrability.** Never state `Integrable`/`IntegrableOn` at a `Matrix` codomain. Under the operator-norm
  scope `ContinuousENorm (Matrix …)` does not synthesize, so the statement fails to elaborate (checked). State it
  entrywise, or obtain it from generic lemmas such as `KAM.integrableOn_unitCube_of_continuous`. Those apply
  (checked), and `ContinuousOn` from `DifferentiableOn` also works for matrices (checked).

### 1.5 Conversion lemmas, proved once

| Lemma | Content | Module |
|---|---|---|
| `KAM.Torus.norm_sumVec`, `norm_colMat`, `norm_sqMat` | isometries (max norms; operator norm = row sums, via `KAM.norm_continuousLinearMap_eq_norm_toMatrix'`, main) | `Torus/Basic` |
| `colMat_mulVec`, `sqMat_mulVec` | `colMat U *ᵥ v = sumVec (U v)` | `Torus/Basic` |
| `cauchy_transpose_fintype` | index-type bridge: `KAM.cauchy_corollaries_transpose` (k/zmap) is stated for `Fin p → ℂ` targets; the transposed Jacobian bound `‖(Df)ᵀ‖ ≤ card ι δ⁻¹ A` for `ι → ℂ` targets, used with `ι = Fin n ⊕ Fin n` for `‖(DE)ᵀ‖ ≤ 2nε/δ`. (`norm_transpose_le_card_mul` would only give `2n²ε/δ`.) | `Torus/Basic` |
| primary ⇒ coordinatewise | `IsPrimaryOnStrip K r → K (z + Pi.single i 1) = K z + (Pi.single i 1, 0)`, the cast `((Pi.single i (1:ℤ) j : ℤ) : ℂ) = Pi.single i 1 j` | `Torus/Basic` |
| `frozen_agreement` (= `bp:p2:frozen-agreement`) | `gramMatrix = LᵀL`; `sumVec (normalFrame K θ j)` = column `j` of `N`; `sumVec E = sumVec (X_h∘K) - L ω`; `torsion = Nᵀ Ω₀ X_N` on an open strip with `det G` a unit (needs `normalMat K` differentiable at `θ`); `G G⁻¹ = G⁻¹ G = 1`; `torsionAverage = avg torsion` when `T` is continuous on `ℝⁿ` (via `KAM.torusAverage_matrix_apply`, k/zmap) | `Torus/FrozenAgreement` |
| row sums ↔ norm | `KAM.norm_le_iff_forall_rowSum` (main). The frozen `∀ i, ∑ j, ‖B i j‖ ≤ σB - μ` becomes `‖B‖ ≤ σB - μ` once, in `g1_explicit` and `g2_explicit`; nonnegativity of `σB - μ` follows from `n ≥ 1` and `T_ρ ≠ ∅` | `Apost/G1`, `Uniq/G2` |
| `eta_eq_sumElim` | the displayed block form of `η` in `bp:p2:objects` | `Torus/Objects` |

## 2. Standing data, constants and rule 6

### 2.1 Structures

| Blueprint | Lean | Fields |
|---|---|---|
| `bp:p2:standing` ("Fix n ≥ 2, τ ≥ n-1, M, σ > 0") | `KAM.Apost.Params n τ M σK σB σT` | `2 ≤ n`, `n - 1 ≤ τ`, four positivity facts |
| `bp:p2:standing` | `KAM.Apost.Standing n τ M σK σB σT 𝔅 h ω γ` (extends `Params`) | the frozen G1 hypotheses H1 (minus `‖Dh‖ ≤ M`, which the assumption omits) and H5, copied verbatim |
| `bp:p2:admissible` | `KAM.Apost.Admissible σK σB σT 𝔅 h ω r β ε K` | the definition's parameter ranges (`0 < r`, `0 < β`, `0 ≤ ε ≤ 1`) and (A1)–(A6) |
| Part 3 "fix n, τ, ρ, M, σ, μ" | `KAM.Uniq.Params n τ ρ M σK σB σT μ` | `2 ≤ n`, `n - 1 ≤ τ`, six positivity facts |
| `bp:p3:standing` (S1)–(S4) | `KAM.Uniq.S1 M 𝔅 h`, `S2 τ ω γ`, `S3 ρ σK σB σT μ 𝔅 h ω K₁`, `S4 ρ 𝔅 h ω K₂` | the items verbatim, with frozen G2 text where it exists |

`KAM.Uniq.standing_of : Params → S1 → S2 → Apost.Standing` is the text's claim that (S1) and (S2) contain
`bp:p2:standing`. Part 3 uses it to apply Part 2 lemmas to `K₁`.

### 2.2 Why this satisfies AGENTS.md rule 6

- **Every field is a source premise.** It is a hypothesis of the frozen G1/G2, an item of a blueprint assumption,
  or an item of Definition `bp:p2:admissible` with its stated parameter ranges. No field asserts a conclusion of a
  Part 2/3 result.
- **Structures appear only as premises,** and only where the blueprint statement invokes the corresponding
  assumption. Part 3 is split into four structures so that "Assume (S3)" assumes only (S3).
- **The assembly supplies every structure explicitly.** `g1_explicit` and `g2_explicit` are stated with the frozen
  binders only. Their proofs build `Standing`, `Admissible`, `Params` and `S1`–`S4` by anonymous constructors from
  those binders, after the one row-sum conversion of §1.5. No structure appears in a frozen-facing type.
- **The places where the blueprint says "there are" or "in the setting of" are explicit definitions,** not
  hypotheses. A conditional formulation would make the later proposition assume the earlier one's conclusions
  (rule 6):
  - `𝓡g` is `cohR` (§2.4);
  - the triangular solution is `triU`, `triXi0`, `triXiN`, `triGL`, `triXiL`;
  - the correction is `xi` and `correction`;
  - `K̄` is `newtonMap`;
  - the sequence `K_s` is `kamSeq`;
  - `K_∞` is `kamLimit`;
  - the Part 3 objects are `diffMap`, `remainder`, `diffXi`, `diffQ`.

  So `bp:p2:limit` assumes exactly the hypotheses of `bp:p2:iteration`, and its `K_s` is `kamSeq`.

### 2.3 Constants (`KAM/Apost/Constants.lean`, `KAM/Uniq/Standing.lean`)

Each constant is a `def` taking exactly the parameters it depends on, so every "depends only on …" claim is
syntactic. A uniform 6-argument signature is impossible: unused `def` binders trip the unused-variables linter
(checked).

| Arguments | Part 2 constants |
|---|---|
| `(n τ)` | `kappa` (κ), `aExp` (a), `cR` (c_R) |
| `(M σK σB σT)` | `mSize` (𝔪) |
| `(n M σK σB σT)` | `Theta` (Θ), `C_X`, `C_T`, `C_red`, `C_G`, `C_B`, `C_DN` (C_ΔN), `C_DX` (C_ΔX), `C_DT` (C_ΔT) |
| `(n τ M σK σB σT)` | `C_Omega`, `C_sym`, `C_xi0`, `C_xiN`, `C_g`, `C_xi`, `C_DK` (C_ΔK), `C_lin`, `C_E`, `c_step`, `c_sum` |
| `(n τ M σK σB σT μ)` | `c_star` (𝔠_*) |
| `(ρ ρinf)` | `delta0` (δ₀) |
| `(n τ ρ ρinf M σK σB σT μ γbar)`, `(n τ ρ ρinf M σK σB σT)` | `C_1`, `C_2` (as in Theorem `bp:p2:g1`) |

Part 3 constants: `C_P (n σK σB)`, `C_Gamma (n M σK σB)` (Γ), `C_tor (n ρ M σK σB)`, `C_coh (n τ)`, and
`C_N`, `C_L`, `C_quad (n τ ρ M σK σB σT)`. The threshold `threshold (n τ ρ M σK σB σT μ)` is `eq:p3:c`.

`c(n,τ)` is `KAM.cohConst n τ = (2π)⁻¹ (τ/(eπ))^τ (8n/π)^n`, the value fixed in the proof of `bp:p1:cohomological`
(p1 L897–900). Then `cR n τ = max 1 (cohConst n τ)`, and `C_coh = cohConst`.

### 2.4 The solution operator (interface with Part 1)

The triangular system is a definition: `u^N := 𝓡ηᴺ`, `ξ^N_0 := ⟨T⟩⁻¹(…)`, and so on. So Part 2 needs `𝓡` as a
function, not as an `∃!`. The design fixes two definitions of the Part 1 interface:
- `KAM.cohConst`;
- `KAM.cohSolution ω g θ = ∑' k, Diophantine.solve ω (torusCoeff (g ∘ ofReal)) k * character k θ`. This is
  definitionally `KAM.fourierSum (Diophantine.solve ω (torusCoeff …))` of `KAM/Strip/FourierSeries.lean` (main,
  I-STRIP-2).

Part 2 defines `cohR ω g θ i = cohSolution ω (g · i) θ` (vectors). `cohR` depends on neither `r` nor `δ`, so
`xi`, `correction`, `newtonMap` and `kamSeq` are δ-free total functions.

**Requirement on I-STRIP-3 (Zohar).** State `bp:p1:cohomological` about `KAM.cohSolution` with the constant
`KAM.cohConst`:
- existence, uniqueness in the class of holomorphic periodic zero-average solutions, the bound and realness,
  componentwise for `Fin p → ℂ`;
- `bp:p1:cohomological-operator` with the a-priori bound for `Matrix (Fin p) (Fin q) ℂ` in the operator norm.

If I-STRIP-3 lands another form, package P2-3 adds an adapter. The two definitions can land first in a
definitions-only file (orchestrator's call under D13).

## 3. Signatures

The exact text is Appendix A. In it, `n τ M σK σB σT 𝔅 h ω γ` (and `K₁ K₂` in Part 3) are implicit section
variables, and `T_r` is `complexStrip n r`.

### 3.1 Node table

| Blueprint node | Lean declaration | Module |
|---|---|---|
| `bp:p2:standing` | `KAM.Apost.Params`, `KAM.Apost.Standing` (structures) | `Apost/Standing` |
| `bp:p2:constants` | the defs of §2.3; claims: `KAM.Apost.constants_spec` | `Apost/Constants` |
| `bp:p2:matrix` | `KAM.Apost.matrix_facts` | `Apost/Tools` |
| `bp:p2:averages` | `KAM.Apost.averages` | `Apost/Tools` |
| `bp:p2:cohomological` | `KAM.Apost.cohR` (def), `KAM.Apost.cohomological` | `Apost/Tools` |
| `bp:p2:hamiltonian` | `KAM.Apost.hamiltonian` | `Apost/Hamiltonian` |
| `bp:p2:objects` | `KAM.Torus.tangentMat` … `redDefect` (defs, §1.3); claim `KAM.Torus.eta_eq_sumElim` | `Torus/Objects` |
| `bp:p2:frozen-agreement` | `KAM.Torus.frozen_agreement` | `Torus/FrozenAgreement` |
| `bp:p2:admissible` | `KAM.Apost.Admissible` (structure) | `Apost/Standing` |
| `bp:p2:periodicity` | `KAM.Apost.periodicity` | `Apost/Periodicity` |
| `bp:p2:frequency` | `KAM.Apost.frequency` | `Apost/Frame` |
| `bp:p2:frame-basic` | `KAM.Apost.frame_basic` | `Apost/Frame` |
| `bp:p2:frame-identities` | `KAM.Apost.frame_identities` | `Apost/Identities` |
| `bp:p2:exactness` | `KAM.Apost.exactness` | `Apost/Exactness` |
| `bp:p2:geometry` | `KAM.Apost.geometry` | `Apost/Geometry` |
| `bp:p2:triangular` | defs `triU`, `triXi0`, `triXiN`, `triGL`, `triXiL`; `KAM.Apost.triangular` | `Apost/Triangular` |
| `bp:p2:correction` | defs `xi`, `correction`; `KAM.Apost.correction_spec` | `Apost/Correction` |
| `bp:p2:newton-error` | defs `newtonMap`, `sMat`, `linError`, `quadRemainder`; `KAM.Apost.newton_error` | `Apost/NewtonError` |
| `bp:p2:perturbation` | `KAM.Apost.perturbation` | `Apost/Perturbation` (+ `PerturbationTorsion`) |
| `bp:p2:step` | `KAM.Apost.step` | `Apost/Step` |
| `bp:p2:schedule` | defs `deltaSeq`, `rSeq`, `epsSeq`, `dSeq`; claims `KAM.Apost.schedule` | `Apost/Schedule` |
| `bp:p2:error-decay` | `KAM.Apost.error_decay` | `Apost/Schedule` |
| `bp:p2:iteration` | def `kamSeq`; `KAM.Apost.iteration` | `Apost/Iteration` |
| `bp:p2:limit` | def `kamLimit`; `KAM.Apost.limit` | `Apost/Limit` |
| `bp:p2:g1` | defs `C_1`, `C_2`; `KAM.Apost.g1_explicit` | `Apost/G1` |
| `bp:p3:standing` (+ `#constants`) | `KAM.Uniq.Params`, `S1`–`S4`, the defs of §2.3, `threshold`; claim `KAM.Uniq.standing_of` | `Uniq/Standing` |
| `bp:p3:matrix-norms` | `KAM.Uniq.matrix_norms` | `Uniq/Frame` |
| `bp:p3:lagrangian` | `KAM.Uniq.lagrangian` | `Uniq/Frame` |
| `bp:p3:frequency-bound` | `KAM.Uniq.frequency_bound` | `Uniq/Frame` |
| `bp:p3:reducibility` | `KAM.Uniq.reducibility` | `Uniq/Frame` |
| `bp:p3:torsion-bound` | `KAM.Uniq.torsion_bound` | `Uniq/Frame` |
| `bp:p3:phase` | `KAM.Uniq.phase` | `Uniq/Phase` |
| `bp:p3:difference-equation` | defs `diffMap`, `remainder`, `diffXi`, `diffQ`; `KAM.Uniq.difference_equation` | `Uniq/Difference` |
| `bp:p3:quadratic` | `KAM.Uniq.quadratic` | `Uniq/Quadratic` |
| `bp:p0:g2` (its proof, Part 3) | `KAM.Uniq.g2_explicit` | `Uniq/G2` |

Infrastructure, not graph nodes:
- the carriers `sumVec`, `colMat`, `sqMat`, `IsPeriodicOn`, `IsRealVec`, `IsRealMat`, `avg` and the bridge
  `cauchy_transpose_fintype` (`Torus/Basic`);
- the matrix product rules (`Matrix/Calculus`);
- the interface defs `KAM.cohConst`, `KAM.cohSolution` (§2.4).

Each graph node is one declaration. Multi-item results are one conjunction, in the item order of the blueprint, as
`KAM.operator_norms` does on `main`. Provers prove each item as a helper lemma and assemble.

### 3.2 Departures from the literal blueprint text

| # | Where | Lean form | Reason |
|---|---|---|---|
| L1 | all | `2n` matrices over `Fin n ⊕ Fin n`; `ℂ^{2n}` vectors as frozen pairs, `sumVec` in products; `L` is `tangentMat K θ` | carrier, §1.2 |
| L2 | `bp:p2:objects` | the objects are total functions; holomorphy, `K(T_r) ⊆ 𝔅` and `det G ≠ 0` move to the lemmas that use them | totality (`bp:p0:totality`) |
| L3 | all | `det G ≠ 0`, "invertible" (`⟨T⟩`, `S`, `P`) as `IsUnit (·).det` | frozen form; equivalent over ℂ |
| L4 | A4, A5, S3, iteration, limit | `‖(gramMatrix K θ)⁻¹‖ ≤ σ` (operator norm) | blueprint `\|B\|`; the frozen row sums are converted once in the assembly |
| L5 | all strips | explicit `0 < r` (and `0 < β` in `frame_basic`; `Admissible` carries `r > 0`, `β > 0`, `0 ≤ ε ≤ 1`) | Part 0 defines `T_ρ` for `ρ > 0`; coordinator's instruction; see finding F1 |
| L6 | `triangular` (c), `quadratic` | `sup_{T}\|ξᴺ\|`, `sup \|gᴸ\|`, `‖Δ‖_{ρ'}` become "for every pointwise bound X/Y" | pointwise convention; equivalent |
| L7 | `phase` | `η = sup\|K₂-K₁\|` becomes any pointwise bound `η` | equivalent (monotone in `η`) |
| L8 | `difference_equation`, `quadratic` | `‖Δ‖_ρ < μ` becomes `∀ θ, ‖Δ θ‖ < μ` | weaker premise, so a stronger lemma; the proofs use it only pointwise; G2 supplies `‖Δ‖ ≤ μ/2` |
| L9 | `bp:p2:objects`, `exactness` | `etaL`, `etaN` defined by the block formulas; the display `η = (ηᴸ; ηᴺ)` is `eta_eq_sumElim`; "`⟨ηᴺ⟩ = 0` when `det G ≠ 0`" is unconditional | `ηᴺ := LᵀΩ₀E` needs no inverse |
| L10 | `frame_identities` (b) | `E_sym` defined as `PᵀΩ₀P - Ω₀` (literal), so (b) states that identity and the diagonal form | literal definition |
| L11 | `averages` (a), (b); `cohomological` | value type generalized to any complex Banach `W` (a, b); `ℂ^p` for 𝓡; `ℂ^{p×q}` for the a-priori bound; entrywise and real forms for vectors and matrices | the blueprint's `ℂ`, `ℂ^p`, `ℂ^{p×q}` cases at once |
| L12 | periodicity everywhere | coordinatewise `IsPeriodicOn` | Part 1's form; the `ℤⁿ` form is `KAM.periodic_int_shift` |
| L13 | `hamiltonian` (c), (d) | "real" `DX_h(z)` as real entries of `sqMat`; `(Dh)ᵀ =: ∇h` as the vector `s ↦ Dh(z)(sumVec.symm (Pi.single s 1))` | matrix carrier |
| L14 | `cohomological` (a) | "unique `u = 𝓡g`" as properties of `cohR ω g` plus uniqueness among solutions on `T_{r-δ}` | explicit operator, §2.4 |
| L15 | `triangular` (b) | the restatement "equivalently `Λξ - ∂_ωξ = η`" is omitted | redundant; follows from the two component equations |
| L16 | `newton_error` | `Δ²X` uses `K + ΔK`, which equals `K̄` on `T_{r-2δ}` | avoids the piecewise map inside `X_h` |
| L17 | `iteration`, `limit` | "there are maps `K_s`" becomes the explicit `kamSeq` (`K_{s+1} := K̄_s`, step `step:p2:it-step`); `D_s` is a `Finset.range` sum; `K_∞` is `kamLimit` (`limUnder`) | no conclusion-shaped premise in `limit` (rule 6) |
| L18 | `error_decay` | each infinite sum as `Summable … ∧ ∑' … ≤ …`; `j` real | Lean's `tsum` is `0` off summable families |
| L19 | `constants` | dependence claims are argument lists; Greek names spelled out | §2.3 |
| L20 | `bp:p2:matrix` | any finite index types (blueprint `p × q`); `‖Ω₀‖ = 1` under `0 < n` | `2n = Fin n ⊕ Fin n`; `n = 0` is degenerate (F2) |
| L21 | `torsion_bound` | integrability of `T` stated entrywise | §1.4 (no `IntegrableOn` at `Matrix` type) |
| L22 | `g1_explicit`, `g2_explicit` | the frozen bodies verbatim with `C_1`, `C_2`, `threshold` instantiated; G2's `c` (step `step:p3:g2-constant`) is the def `threshold` | §6 |
| L23 | `frequency`, `frame_basic`, `perturbation` | (A2)–(A6) written out item by item where the blueprint lists items instead of admissibility | literal |

## 4. Modules and import DAG

Targets are realistic sizes; the hard cap is 1500 lines.

| Module | Content | Lines (est.) |
|---|---|---|
| `KAM/Matrix/Calculus.lean` | product rules for rectangular matrix-valued and `mulVec`-valued maps (via `ContinuousLinearMap.hasFDerivAt_of_bilinear`), transpose, entries of `fderiv` | 200 |
| `KAM/Torus/Basic.lean` | `sumVec`, `colMat`, `sqMat` and their isometry and `mulVec` lemmas, predicates, `avg`, `cauchy_transpose_fintype`, primary ⇒ coordinatewise | 350 |
| `KAM/Torus/Objects.lean` | §1.3 defs, `eta_eq_sumElim` | 200 |
| `KAM/Torus/FrozenAgreement.lean` | `frozen_agreement` and its components | 400 |
| `KAM/Apost/Standing.lean` | `Params`, `Standing`, `Admissible` | 80 |
| `KAM/Apost/Constants.lean` | constants, `constants_spec`, and every constant inequality used later (pt-small, st-small, it-sums, g1-e) | 500 |
| `KAM/Apost/Tools.lean` | `matrix_facts`, `averages`, `cohR`, `cohomological` | 450 |
| `KAM/Apost/Hamiltonian.lean` | `hamiltonian` | 350 |
| `KAM/Apost/Periodicity.lean` | `periodicity` | 450 |
| `KAM/Apost/Frame.lean` | `frequency`, `frame_basic` | 550 |
| `KAM/Apost/Identities.lean` | `frame_identities` | 600 |
| `KAM/Apost/Exactness.lean`, `Geometry.lean` | `exactness`, `geometry` | 300 + 350 |
| `KAM/Apost/Triangular.lean`, `Correction.lean` | triangular defs and lemma; `xi`, `correction`, `correction_spec` | 450 + 450 |
| `KAM/Apost/NewtonError.lean` | `newton_error` | 600 |
| `KAM/Apost/Perturbation.lean`, `PerturbationTorsion.lean` | (a)–(d); (e)–(f) and the assembled `perturbation` | 450 + 450 |
| `KAM/Apost/Step.lean` | `step` | 350 |
| `KAM/Apost/Schedule.lean` | sequences, `schedule`, `error_decay` | 350 |
| `KAM/Apost/Iteration.lean`, `Limit.lean`, `G1.lean` | `kamSeq`, `iteration`; `kamLimit`, `limit`; `C_1`, `C_2`, `g1_explicit` | 600 + 450 + 250 |
| `KAM/Uniq/Standing.lean` | `Params`, `S1`–`S4`, constants, `threshold`, `standing_of`, constant inequalities | 250 |
| `KAM/Uniq/Frame.lean` | `matrix_norms`, `lagrangian`, `frequency_bound`, `reducibility`, `torsion_bound` | 650 |
| `KAM/Uniq/Phase.lean`, `Difference.lean`, `Quadratic.lean`, `G2.lean` | the remaining Part 3 nodes | 500 + 450 + 500 + 400 |
| `KAM/Provider/AposterioriKam.lean`, `LocalUniquenessFlow.lean` | the one-line providers | 30 + 30 |

The total is about 9,200 lines for Part 2 (including the shared `Torus` and `Matrix/Calculus` modules) and 2,800
for Part 3.

**Import DAG** (`A ← B` means B imports A; Part 1 modules in brackets):

```
[Matrix.Norms, Matrix.Inverse]        ← Matrix.Calculus
[Frozen.Defs.*, Matrix.Norms, Strip.Averages, Strip.Periodic, Strip.Limits] ← Torus.Basic
Torus.Basic                            ← Torus.Objects
[Frozen.Defs.*]                        ← Apost.Standing ← Apost.Constants [← cohConst def]
Torus.Objects, Matrix.Calculus, [Strip.Bridges, Matrix.Inverse] ← Torus.FrozenAgreement
Apost.Constants, [Strip.Bridges, Matrix.Bridges, Strip.Cohomological*] ← Apost.Tools
Apost.Standing, Torus.FrozenAgreement, [Strip.RealRestriction, Strip.Limits, Strip.Taylor*] ← Apost.Hamiltonian
Apost.Hamiltonian, [Matrix.Inverse, Strip.Periodic] ← Apost.Periodicity
Apost.Hamiltonian, Apost.Constants, [Strip.Bridges] ← Apost.Frame
Apost.Hamiltonian, Matrix.Calculus     ← Apost.Identities
Apost.Periodicity, Apost.Tools         ← Apost.Exactness
Apost.Identities, Apost.Exactness, Apost.Frame ← Apost.Geometry
Apost.Tools                            ← Apost.Triangular
Apost.Triangular, Apost.Geometry       ← Apost.Correction ← Apost.NewtonError [Matrix.Bridges]
Apost.Frame, Apost.Hamiltonian, [Matrix.Bridges] ← Apost.Perturbation ← Apost.PerturbationTorsion
Apost.NewtonError, Apost.PerturbationTorsion ← Apost.Step
Apost.Constants, [Analysis.Iteration]  ← Apost.Schedule
Apost.Step, Apost.Schedule             ← Apost.Iteration ← Apost.Limit [Strip.Limits] ← Apost.G1 ← Provider.AposterioriKam
Apost.Standing, Apost.Constants        ← Uniq.Standing
Uniq.Standing, Apost.Geometry          ← Uniq.Frame
Uniq.Frame, [Strip.Increments*]        ← Uniq.Phase
Uniq.Frame, Apost.Hamiltonian          ← Uniq.Difference ← Uniq.Quadratic
Uniq.Phase, Uniq.Quadratic, [Analysis.Iteration, Strip.Limits] ← Uniq.G2 ← Provider.LocalUniquenessFlow
```
`*`: not yet existing. `Strip.Cohomological` is I-STRIP-3. `Strip.Taylor` and `Strip.Increments` are the unclaimed
`bp:p1:taylor` and `bp:p1:increments`. `Strip.Bridges` and `Matrix.Bridges` are k/zmap, not yet on main. No module
imports a provider or a frozen theorem.

## 5. Prover packages

Each package proves its nodes exactly as in Appendix A. A package changes a signature only through the
orchestrator, after a statement audit.

**Part 1 inputs**, by declaration:
- **main:** `KAM.matrix_norms`, `operator_norms`, `norm_le_iff_forall_rowSum`, `norm_transpose_le_card_mul`,
  `norm_fromBlocks_le`, `norm_fromRows`, `omegaZeroMatrix*`, `real_inverse`, `holomorphic_inverse`,
  `differentiableOn_matrix_iff_entries`, `torusAverage`, `integrableOn_unitCube_of_continuous`,
  `norm_torusAverage_le`, `uniform_limits` (+ `_isPrimaryOnStrip`, `_isRealOnReals`), `increments_open`,
  `periodic_bounded`, `periodic_int_shift`, `strip_identity`, `periodic_average`, `quadratic_iteration`,
  `isRealOnReals_iff_im`, `hamiltonian_real` (+ `omegaZero_hamiltonianVectorFieldℂ`), `real_restriction`,
  `fourierSum`, `norm_torusCoeff_le`;
- **k/zmap:** `KAM.neumann`, `neumann_pointwise`, `holomorphic_regularity`, `cauchy_open`, `cauchy_strip`,
  `cauchy_corollaries_transpose`, `cauchy_corollaries_directional(_real)`, `averages`, `averages_matrix`,
  `torusAverage_matrix_apply`;
- **I-STRIP-3 (Zohar, open):** `bp:p1:cohomological`, `bp:p1:cohomological-operator`, in the form of §2.4;
- **unclaimed:** `bp:p1:taylor` (with the factor ½; Part 3's constants use it) and `bp:p1:increments`. Proposed new
  package **I-P1C**, about 250 lines, ready now.

| Package | Nodes | Modules | Lines | After | Part 1 inputs | Wave |
|---|---|---|---|---|---|---|
| P2-1a Carrier | `objects` (defs, `eta_eq_sumElim`); carrier infrastructure | `Matrix/Calculus`, `Torus/Basic`, `Torus/Objects` | 750 | — | main matrix layer, `periodic_int_shift`, `isRealOnReals_iff_im`; zmap `cauchy_corollaries_transpose` (template for the bridge) | 1 |
| P2-1b Standing and constants | `standing`, `admissible`, `constants` (and every constant inequality used later) | `Apost/Standing`, `Apost/Constants` | 580 | — | the `cohConst` def (§2.4) | 1 |
| P2-2 Frozen agreement | `frozen-agreement` | `Torus/FrozenAgreement` | 400 | P2-1a | zmap `holomorphic_regularity`, `torusAverage_matrix_apply`; main `holomorphic_inverse` | 2 |
| P2-3 Tools | `matrix`, `averages`, `cohomological` | `Apost/Tools` | 450 | P2-1a, P2-1b | zmap `averages`, `averages_matrix`; **I-STRIP-3** (gates `cohomological` only; land the rest first) | 2 |
| P2-11 Schedule | `schedule`, `error-decay` | `Apost/Schedule` | 350 | P2-1b | main `quadratic_iteration` | 2 |
| P2-4 Hamiltonian and periodicity | `hamiltonian`, `periodicity` | `Apost/Hamiltonian`, `Apost/Periodicity` | 800 | P2-1b, P2-2 | zmap `holomorphic_regularity`; main `hamiltonian_real`, `increments_open`, `real_inverse`; **I-P1C `taylor`** (item (e)) | 3 |
| P2-8a Triangular | `triangular` | `Apost/Triangular` | 450 | P2-3 | (via P2-3) | 3 |
| P2-5 Frame bounds | `frequency`, `frame-basic` | `Apost/Frame` | 550 | P2-4 | main `holomorphic_inverse`; zmap `cauchy_corollaries_directional_real` | 4 |
| P2-6 Frame identities | `frame-identities` | `Apost/Identities` | 600 | P2-4 | zmap `holomorphic_regularity` (symmetry, mixed partials) | 4 |
| P2-7 Exactness and geometry | `exactness`, `geometry` | `Apost/Exactness`, `Apost/Geometry` | 650 | P2-3, P2-5, P2-6 | zmap `cauchy_strip`, `averages`; P2-1a bridge | 5 |
| P2-10 Perturbation | `perturbation` | `Apost/Perturbation`, `PerturbationTorsion` | 850 | P2-5 | zmap `cauchy_strip`, `cauchy_corollaries_directional_real`, `neumann(_pointwise)`; main `norm_torusAverage_le` | 5 |
| P2-8b Correction | `correction` | `Apost/Correction` | 450 | P2-7, P2-8a | — | 6 |
| P3-1 Frame of `K₁` | `p3:standing`, `matrix-norms`, `lagrangian`, `frequency-bound`, `reducibility`, `torsion-bound` | `Uniq/Standing`, `Uniq/Frame` | 850 | P2-7 | **I-STRIP-3** (uniqueness, for `lagrangian`); zmap `cauchy_strip`; main `holomorphic_inverse` | 6 |
| P2-9 Newton error | `newton-error` | `Apost/NewtonError` | 600 | P2-8b | zmap `neumann` | 7 |
| P3-2 Phase | `phase` | `Uniq/Phase` | 500 | P3-1 | **I-P1C `increments`**; main `real_inverse`; Mathlib `ContractingWith` | 7 |
| P3-3 Difference equation | `difference-equation` | `Uniq/Difference` | 450 | P3-1 | **I-P1C `taylor`** | 7 |
| P2-12 Step | `step` | `Apost/Step` | 350 | P2-9, P2-10 | — | 8 |
| P3-4 Quadratic estimate | `quadratic` | `Uniq/Quadratic` | 500 | P3-3 | **I-STRIP-3** (bound and uniqueness with `cohConst`); zmap `averages` | 8 |
| P2-13 Iteration | `iteration` | `Apost/Iteration` | 600 | P2-12, P2-11 | — | 9 |
| P3-5 G2 and provider | proof of `bp:p0:g2` (`g2_explicit`), provider | `Uniq/G2`, `Provider/LocalUniquenessFlow` | 450 | P3-2, P3-4 | main `quadratic_iteration`, `increments_open` | 9 |
| P2-14 Limit, G1 and provider | `limit`, `g1` (`g1_explicit`), provider | `Apost/Limit`, `Apost/G1`, `Provider/AposterioriKam` | 700 | P2-13 | main `uniform_limits` (+ `_isPrimaryOnStrip`, `_isRealOnReals`) | 10 |

**Parallelism.** Packages in the same wave are independent.
- Wave 1 runs P2-1a and P2-1b in parallel.
- Wave 2 runs P2-2, P2-3 and P2-11 in parallel.
- Wave 4 runs P2-5 and P2-6.
- Wave 5 runs P2-7 and P2-10.
- Part 3 starts after P2-7 and then runs alongside Part 2 (waves 6–9).

**Critical path.** P2-1a → P2-2 → P2-4 → P2-6 → P2-7 → P2-8b → P2-9 → P2-12 → P2-13 → P2-14 (10 waves). It is
gated externally by I-STRIP-3 (from wave 5) and I-P1C (from wave 3). Before wave 1 starts, an independent statement
audit of Appendix A against the blueprint is recommended (skill `lean-statement-audit`, GPT-6.1-Sol per D21).

## 6. Assembly of the providers

`g1_explicit` and `g2_explicit` have the frozen G1 and G2 bodies verbatim, with `C₁, C₂` and `c` replaced by
`C_1 n τ ρ ρinf M σK σB σT μ γbar`, `C_2 n τ ρ ρinf M σK σB σT` and `threshold n τ ρ M σK σB σT μ`. Their explicit
binders are the frozen ones, in the frozen order. The providers are then:

```lean
-- KAM/Provider/AposterioriKam.lean  (public import KAM.Apost.G1)
theorem KAM.Provider.aposteriori_kam {n : ℕ} (hn : 2 ≤ n) … (hγbar : 0 < γbar) : <frozen G1 type> :=
  ⟨_, _, KAM.Apost.g1_explicit hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar⟩
-- KAM/Provider/LocalUniquenessFlow.lean  (public import KAM.Uniq.G2)
theorem KAM.Provider.local_uniqueness_flow {n : ℕ} (hn : 2 ≤ n) … (hμ : 0 < μ) : <frozen G2 type> :=
  ⟨_, KAM.Uniq.g2_explicit hn hτ hρ hM hσK hσB hσT hμ⟩
```

Both terms type-check against verbatim copies of the frozen types: the two `example`s in Appendix A.

**Sealing** (D26). `by exact KAM.Provider.aposteriori_kam hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar` and
`by exact KAM.Provider.local_uniqueness_flow hn hτ hρ hM hσK hσB hσT hμ`.

**Inside `g1_explicit`** (steps `step:p2:g1-*`):
1. Build `Standing` from H1 and H5. Drop `‖Dh‖ ≤ M`, which the blueprint does not use (V8).
2. Convert the H3 and H4 row sums to norms (§1.5).
3. Get `e ≤ 1` and `c_star · e / (γ⁴ δ₀^{2a}) < 1` from the `C_1` hypothesis, using `γ ≤ γbar` and
   `constants_spec`.
4. Apply `limit` to get `K∞ := kamLimit h K ω ρ ρinf`. Its seven conclusion clauses are the frozen ones, and
   `2 C_DK e/(γ² δ₀^a) = C_2 e/(γ² ρ^{2τ})` holds by `rpow` algebra.

**Inside `g2_explicit`** (steps `step:p3:g2-*`):
1. Build `Params` and `S1`–`S4`.
2. Get the three smallness conditions from `threshold` and `frequency_bound`.
3. Choose `ψ` by `phase` and bound `‖Δ‖ ≤ μ/2` with `increments_open`.
4. Run the iteration with an explicit majorant sequence `y_{m+1} := Q 2^{pm} y_m²` and `y_0 := (1 + 2C_Pσ_K)η`,
   proving `‖Δ‖ ≤ y_m` on `T_{ρ_m}` from `quadratic`. This avoids `sSup`. Conclude with
   `KAM.quadratic_iteration` and `φ = -ψ`.

## 7. Risks

### 7.1 Elaboration

The signatures alone elaborate in about 35–45 s wall (9 s CPU) for 1219 lines. No single statement is slow.

**Proof-side risks and the planned levers:**
- **Large conjunctions** (`frame_basic` has 15 + 7 items, `periodicity` about 30, `iteration` 6 groups). Prove one
  helper lemma per item and assemble with an anonymous constructor. Never discharge the whole conjunction in one
  tactic block.
- **Block algebra over `Fin n ⊕ Fin n`.** Work at the matrix level with `fromRows_mul_fromCols`,
  `fromBlocks_multiply`, `Matrix.mul_assoc`, `omegaZeroMatrix_mul_self` and `omegaZeroMatrix_transpose`. Avoid
  entrywise `simp [Matrix.mul_apply, Fintype.sum_sum_type]` on `2n × 2n` products, which is the likely heartbeat
  sink.
- **Constant bookkeeping.**
  - Keep the constants opaque downstream, and prove every needed inequality once in `Apost/Constants.lean` and
    `Uniq/Standing.lean`. Examples: `C_DT ≥ max {n, C_G, C_DN}`; the three consequences of `c_step`; the four
    summed bounds from `c_sum`; `c_star` ⇒ step smallness.
  - Keep the `rpow` laws in a small lemma pack (`rpow_add`, `rpow_natCast`, `rpow_le_rpow_of_exponent_ge` for
    `δ ≤ 1`).
  - No `nlinarith` or `positivity` on unfolded polynomials in `mSize`.
- **Instance cost of the scoped norm.** Under `Matrix.Norms.Operator`, `fderiv` of matrix-valued maps works
  (checked). If a proof hits synthesis heartbeats, that is a design signal (hard rule 1): factor through the
  entrywise lemma `differentiableOn_matrix_iff_entries` (main) rather than raising budgets.

### 7.2 Missing or awkward API

1. **No product rule for rectangular matrix-valued functions in Mathlib.** Module `KAM/Matrix/Calculus.lean`
   (P2-1a) builds `M * N`, `M *ᵥ v` and `Mᵀ` derivatives from `ContinuousLinearMap.hasFDerivAt_of_bilinear`, using
   a bilinear CLM `Matrix.mul` assembled with `LinearMap.mk₂` and `toContinuousLinearMap`.
2. **`IntegrableOn` at a `Matrix` codomain does not elaborate** under the operator-norm scope (`ContinuousENorm`
   fails). Rule §1.4.
3. **Index-type bridge** `cauchy_transpose_fintype` (§1.5): `KAM.cauchy_corollaries_transpose` covers only
   `Fin p → ℂ`.
4. **Second-order Taylor with the factor ½** (`bp:p1:taylor`, unclaimed). Mathlib's mean value inequality gives
   `A|w|²`, not `(A/2)|w|²`. The ½ needs a comparison along the segment (`image_norm_le_of_norm_deriv_right_le_deriv_boundary`
   with bound `A t²|w|²/2`). Part 2 relaxes to `M|w|²`, but Part 3's `C_N`, `C_L` and `C_quad` carry the ½, so the
   lemma must keep it.
5. **Phase contraction.** Use `ContractingWith` on the complete subtype `Metric.closedBall (0 : Fin n → ℝ) R`.
   For the increment `K₁(θ+ψ) - K₁(θ+ψ') - L(θ)(ψ-ψ')`, the mean value inequality on the convex ball applied to
   `y ↦ K₁(θ+y) - L(θ)y` replaces the blueprint's integral formula.
6. **Matrix average entries.** Use `KAM.torusAverage_matrix_apply` (k/zmap), which needs continuity of the
   integrand. Every `avg` of a matrix needs a continuity proof first (`bp:p0:totality`).

### 7.3 Dependencies outside this design

- **I-STRIP-3** (`bp:p1:cohomological` and `-operator`) gates `cohomological`, and through it `geometry`,
  `correction`, `lagrangian` and `quadratic`. Its statement must use `KAM.cohSolution` and `KAM.cohConst` (§2.4),
  or P2-3 writes adapters. `lagrangian` and `quadratic` need uniqueness in the class without a boundedness
  assumption, and the exact constant `cohConst` (not `cR`).
- **I-P1C** (`taylor`, `increments`) is new and unclaimed. It gates P2-4 item (e), P3-2 and P3-3.
- **k/zmap** is not yet on main, and almost every package uses it.

### 7.4 Blueprint findings

No defect that forces a statement change was found. Every step's arithmetic was rechecked (constants, step
smallness, summed bounds, schedule, threshold `c`). Clarifications:

- **F1** (wording; positivity left implicit). Several lemmas quantify over `T_r` or `B_β` without stating `r > 0`
  or `β > 0`. Part 0 (p0 L19–20) defines strips only for positive width, so this is not an erratum, but the statements
  are false or vacuous for `r ≤ 0`:
  - `bp:p2:frequency`, p2-aposteriori.tex L357–365: the upper bound on `|ω|` fails for `r ≤ 0`, because the
    hypotheses become vacuous;
  - `bp:p2:frame-basic`, L382–384: `β > 0` is needed for `K(T_r) ⊂ 𝔅`, and `r > 0` for continuity on `ℝⁿ`;
  - `bp:p2:periodicity` L324, `bp:p2:exactness` L515, `bp:p2:averages` L163.

  The Lean signatures state these explicitly (L5). Suggest adding "`r > 0`" in a later blueprint pass.
- **F2** (wording). `bp:p2:matrix`(d), L133–134: `|Ω₀| = 1` needs `n ≥ 1`. The corollary has no standing
  dependence in the graph. Covered by `n ≥ 2` (L20).
- **F3** (not an error). `bp:p3:difference-equation` L360–361 and `bp:p3:quadratic` L418 assume `‖Δ‖_ρ < μ`
  (strict sup); only the pointwise bound is used (L8).

There are no deviations from the frozen statements: the assembly matches them exactly.

## Appendix A. `.drafts/design/Part23Signatures.lean` (verbatim)

```lean
/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
import KAM.Frozen.Defs.TorsionAverage
import KAM.Frozen.Defs.InvarianceError
import KAM.Frozen.Defs.IsPrimaryOnStrip
import KAM.Frozen.Defs.IsRealOnReals
import KAM.Frozen.Defs.IsDiophantine
import KAM.Matrix.Norms
import KAM.Matrix.Inverse
import KAM.Strip.Averages
import KAM.Strip.Fourier
import KAM.Diophantine.Cohomological
import Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Design drafts: Lean signatures for blueprint Parts 2 and 3 (G1, G2)

Untracked design artefact (`docs/campaign/design/PART23-LEAN-DESIGN.md`). Every result node of
Parts 2 and 3 has its exact Lean statement here, with body `sorry`; the definitions are the real
ones. Not a library module: elaborate with `lake env lean`. The `§` headers name the target module.
The two `example`s at the end of §P2.12 and §P3.4 check, without `sorry` in their own bodies, that the
providers assemble to the frozen G1 and G2 types.
-/

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

noncomputable section

/-! ## §0 Part 1 interface consumed here (definitions only; owner: package I-STRIP-3) -/

namespace KAM

/-- The constant `c(n, τ)` of `bp:p1:cohomological` (value fixed in its proof, p1 L897–900). -/
def cohConst (n : ℕ) (τ : ℝ) : ℝ :=
  (2 * Real.pi)⁻¹ * (τ / (Real.exp 1 * Real.pi)) ^ τ * (8 * (n : ℝ) / Real.pi) ^ n

/-- The solution operator `𝓡` of `bp:p1:cohomological`: the Fourier series with coefficients
`ĝ_k / (2πi k·ω)` (`k ≠ 0`) and `0` (`k = 0`). Total; meaningful on strips where `g` is
holomorphic, bounded, periodic, with zero average. -/
def cohSolution {n : ℕ} (ω : Fin n → ℝ) (g : (Fin n → ℂ) → ℂ) : (Fin n → ℂ) → ℂ :=
  fun θ => ∑' k : Fin n → ℤ,
    Diophantine.solve ω (torusCoeff (fun x => g (fun j => (x j : ℂ)))) k * character k θ

end KAM

/-! ## §T1 `KAM/Torus/Basic.lean`: carriers, predicates -/

namespace KAM.Torus

variable {n : ℕ}

/-- `ℂⁿ × ℂⁿ ≃ ℂ^{n ⊕ n}`, `(a, b) ↦ Sum.elim a b`; isometric for the max norms. -/
def sumVec (n : ℕ) : ((Fin n → ℂ) × (Fin n → ℂ)) ≃ₗ[ℂ] (Fin n ⊕ Fin n → ℂ) :=
  (LinearEquiv.sumArrowLequivProdArrow (Fin n) (Fin n) ℂ ℂ).symm

theorem norm_sumVec (u : (Fin n → ℂ) × (Fin n → ℂ)) : ‖sumVec n u‖ = ‖u‖ := sorry

/-- The `2n × q` matrix (rows `Fin n ⊕ Fin n`) of a linear map `ℂ^q → ℂⁿ × ℂⁿ`. -/
def colMat {q : ℕ} (U : (Fin q → ℂ) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ)) :
    Matrix (Fin n ⊕ Fin n) (Fin q) ℂ :=
  LinearMap.toMatrix' ((sumVec n).toLinearMap ∘ₗ (U : (Fin q → ℂ) →ₗ[ℂ] _))

/-- The `2n × 2n` matrix of a linear map `ℂⁿ × ℂⁿ → ℂⁿ × ℂⁿ`. -/
def sqMat (U : ((Fin n → ℂ) × (Fin n → ℂ)) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ)) :
    Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ :=
  LinearMap.toMatrix' ((sumVec n).toLinearMap ∘ₗ
    (U : ((Fin n → ℂ) × (Fin n → ℂ)) →ₗ[ℂ] _) ∘ₗ (sumVec n).symm.toLinearMap)

theorem norm_colMat {q : ℕ} (U : (Fin q → ℂ) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ)) :
    ‖colMat U‖ = ‖U‖ := sorry

theorem colMat_mulVec {q : ℕ} (U : (Fin q → ℂ) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ))
    (v : Fin q → ℂ) : colMat U *ᵥ v = sumVec n (U v) := sorry

theorem norm_sqMat (U : ((Fin n → ℂ) × (Fin n → ℂ)) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ)) :
    ‖sqMat U‖ = ‖U‖ := sorry

theorem sqMat_mulVec (U : ((Fin n → ℂ) × (Fin n → ℂ)) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ))
    (u : (Fin n → ℂ) × (Fin n → ℂ)) : sqMat U *ᵥ sumVec n u = sumVec n (U u) := sorry

/-- Coordinatewise `1`-periodicity on `T_r`: the hypothesis form of `KAM.averages`,
`KAM.periodic_bounded`, `KAM.periodic_int_shift` (Part 1). -/
def IsPeriodicOn {F : Type*} (u : (Fin n → ℂ) → F) (r : ℝ) : Prop :=
  ∀ (i : Fin n) z, z ∈ complexStrip n r → u (z + Pi.single i 1) = u z

/-- A vector-valued function is real at real points. -/
def IsRealVec {ι : Type*} (u : (Fin n → ℂ) → ι → ℂ) : Prop :=
  ∀ (x : Fin n → ℝ) (i : ι), (u (fun j => (x j : ℂ)) i).im = 0

/-- A matrix-valued function is real at real points. -/
def IsRealMat {ι κ : Type*} (u : (Fin n → ℂ) → Matrix ι κ ℂ) : Prop :=
  ∀ (x : Fin n → ℝ) (i : ι) (j : κ), (u (fun l => (x l : ℂ)) i j).im = 0

/-- The average `⟨u⟩ = ∫_{[0,1]ⁿ} u` over the real torus of a function on a strip. -/
abbrev avg {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F] (u : (Fin n → ℂ) → F) : F :=
  torusAverage (fun x : Fin n → ℝ => u (fun i => (x i : ℂ)))

/-- Index-type bridge for `KAM.cauchy_corollaries_transpose` (stated there for `Fin p → ℂ`):
the transposed Jacobian of a `ι → ℂ`-valued map, `ι` any finite type (here `Fin n ⊕ Fin n`). -/
theorem cauchy_transpose_fintype {ι : Type*} [Fintype ι] {ρ δ A : ℝ}
    {f : (Fin n → ℂ) → ι → ℂ} (hf : DifferentiableOn ℂ f (complexStrip n ρ))
    (hA : ∀ θ ∈ complexStrip n ρ, ‖f θ‖ ≤ A) (hδ : 0 < δ) :
    ∀ θ ∈ complexStrip n (ρ - δ),
      ‖(Matrix.of fun (i : ι) (ℓ : Fin n) => fderiv ℂ f θ (Pi.single ℓ 1) i)ᵀ‖ ≤
        Fintype.card ι * δ⁻¹ * A := sorry

end KAM.Torus

/-! ## §T2 `KAM/Torus/Objects.lean`: Definition `bp:p2:objects` -/

namespace KAM.Torus

variable {n : ℕ} (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
  (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ)

/-- `L = DK` (`2n × n`). The Gram matrix `G = LᵀL` and `B = G⁻¹` are the frozen
`gramMatrix K θ` and `(gramMatrix K θ)⁻¹`; `E` is the frozen `invarianceError h K ω θ`. -/
def tangentMat (θ : Fin n → ℂ) : Matrix (Fin n ⊕ Fin n) (Fin n) ℂ := colMat (fderiv ℂ K θ)

/-- `A = DX_h ∘ K` (`2n × 2n`). -/
def linMat (θ : Fin n → ℂ) : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ :=
  sqMat (fderiv ℂ (hamiltonianVectorFieldℂ h) (K θ))

/-- `Ω_K = Lᵀ Ω₀ L`. -/
def lagrangeMat (θ : Fin n → ℂ) : Matrix (Fin n) (Fin n) ℂ :=
  (tangentMat K θ)ᵀ * omegaZeroMatrix n * tangentMat K θ

/-- `N = Ω₀ L B`. -/
def normalMat (θ : Fin n → ℂ) : Matrix (Fin n ⊕ Fin n) (Fin n) ℂ :=
  omegaZeroMatrix n * tangentMat K θ * (gramMatrix K θ)⁻¹

/-- `P = (L N)`. -/
def frameMat (θ : Fin n → ℂ) : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ :=
  Matrix.fromCols (tangentMat K θ) (normalMat K θ)

/-- `X_N = A N - ∂_ω N`. The torsion `T = Nᵀ Ω₀ X_N` is the frozen `torsion h K ω θ`
(`torsion_eq_mat`), `⟨T⟩` the frozen `torsionAverage h K ω` (`torsionAverage_eq_avg`). -/
def normalFieldMat (θ : Fin n → ℂ) : Matrix (Fin n ⊕ Fin n) (Fin n) ℂ :=
  linMat h K θ * normalMat K θ - fderiv ℂ (normalMat K) θ (fun l => (ω l : ℂ))

/-- `E_sym = Pᵀ Ω₀ P - Ω₀`. -/
def symDefect (θ : Fin n → ℂ) : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ :=
  (frameMat K θ)ᵀ * omegaZeroMatrix n * frameMat K θ - omegaZeroMatrix n

/-- `Q = -Ω₀ Pᵀ Ω₀`. -/
def reducer (θ : Fin n → ℂ) : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ :=
  -(omegaZeroMatrix n * (frameMat K θ)ᵀ * omegaZeroMatrix n)

/-- `η = Ω₀ Pᵀ Ω₀ E`. -/
def eta (θ : Fin n → ℂ) : Fin n ⊕ Fin n → ℂ :=
  (omegaZeroMatrix n * (frameMat K θ)ᵀ * omegaZeroMatrix n) *ᵥ
    sumVec n (invarianceError h K ω θ)

/-- `ηᴸ = -Nᵀ Ω₀ E`. -/
def etaL (θ : Fin n → ℂ) : Fin n → ℂ :=
  -(((normalMat K θ)ᵀ * omegaZeroMatrix n) *ᵥ sumVec n (invarianceError h K ω θ))

/-- `ηᴺ = Lᵀ Ω₀ E`. -/
def etaN (θ : Fin n → ℂ) : Fin n → ℂ :=
  ((tangentMat K θ)ᵀ * omegaZeroMatrix n) *ᵥ sumVec n (invarianceError h K ω θ)

/-- `DE` as a `2n × n` matrix. -/
def errDerivMat (θ : Fin n → ℂ) : Matrix (Fin n ⊕ Fin n) (Fin n) ℂ :=
  colMat (fderiv ℂ (invarianceError h K ω) θ)

/-- `Λ = (0 T; 0 0)`. -/
def triangularMat (T : Matrix (Fin n) (Fin n) ℂ) : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ :=
  Matrix.fromBlocks 0 T 0 0

/-- `E_red` of Lemma `bp:p2:frame-identities`(e). -/
def redDefect (θ : Fin n → ℂ) : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ :=
  Matrix.fromBlocks ((normalMat K θ)ᵀ * omegaZeroMatrix n * errDerivMat h K ω θ) 0
    (-((tangentMat K θ)ᵀ * omegaZeroMatrix n * errDerivMat h K ω θ))
    ((errDerivMat h K ω θ)ᵀ * omegaZeroMatrix n * normalMat K θ)

/-- Blueprint `bp:p2:objects` (the displayed block form of `η`; proof `step:p2:fi-q`). -/
theorem eta_eq_sumElim (θ : Fin n → ℂ) : eta h K ω θ = Sum.elim (etaL h K ω θ) (etaN h K ω θ) :=
  sorry

end KAM.Torus

/-! ## §T3 `KAM/Torus/FrozenAgreement.lean`: claim `bp:p2:frozen-agreement` -/

namespace KAM.Torus

variable {n : ℕ}

/-- Blueprint `bp:p2:frozen-agreement`. On an open strip where `K` is holomorphic with invertible
Gram matrix: the frozen `gramMatrix`, `normalFrame`, `invarianceError`, `torsion` are `LᵀL`, the
columns of `N`, `X_h ∘ K - Lω`, `Nᵀ Ω₀ X_N`; the frozen inverse is the inverse; and the frozen
`torsionAverage` is `⟨T⟩` whenever `T` is continuous on `ℝⁿ`. -/
theorem frozen_agreement (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) {r : ℝ} (hr : 0 < r)
    (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) :
    (∀ θ, gramMatrix K θ = (tangentMat K θ)ᵀ * tangentMat K θ) ∧
    (∀ θ j, sumVec n (normalFrame K θ j) = fun s => normalMat K θ s j) ∧
    (∀ θ, sumVec n (invarianceError h K ω θ) =
      sumVec n (hamiltonianVectorFieldℂ h (K θ)) - tangentMat K θ *ᵥ (fun l => (ω l : ℂ))) ∧
    (∀ θ ∈ complexStrip n r,
      torsion h K ω θ = (normalMat K θ)ᵀ * omegaZeroMatrix n * normalFieldMat h K ω θ) ∧
    (∀ θ ∈ complexStrip n r,
      gramMatrix K θ * (gramMatrix K θ)⁻¹ = 1 ∧ (gramMatrix K θ)⁻¹ * gramMatrix K θ = 1) ∧
    (Continuous (fun x : Fin n → ℝ => torsion h K ω (fun i => (x i : ℂ))) →
      torsionAverage h K ω = avg (torsion h K ω)) := sorry

end KAM.Torus

/-! ## §P2.1 `KAM/Apost/Standing.lean`: `bp:p2:standing`, `bp:p2:admissible` -/

namespace KAM.Apost

open KAM.Torus

/-- The fixed parameters of `bp:p2:standing`: `n ≥ 2`, `τ ≥ n - 1`, `M, σ_K, σ_B, σ_T > 0`. -/
structure Params (n : ℕ) (τ M σK σB σT : ℝ) : Prop where
  two_le : 2 ≤ n
  tau_ge : (n : ℝ) - 1 ≤ τ
  M_pos : 0 < M
  σK_pos : 0 < σK
  σB_pos : 0 < σB
  σT_pos : 0 < σT

/-- Blueprint `bp:p2:standing`. Every field is a hypothesis of the frozen G1 (H1, H5), verbatim. -/
structure Standing (n : ℕ) (τ M σK σB σT : ℝ) (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ω : Fin n → ℝ) (γ : ℝ) : Prop
    extends Params n τ M σK σB σT where
  isOpen : IsOpen 𝔅
  transl_mem : ∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ 𝔅
  holo : DifferentiableOn ℂ h 𝔅
  periodic : ∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, h (z.1 + (fun i => (k i : ℂ)), z.2) = h z
  real : ∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ 𝔅 →
    (h ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0
  bounds : ∀ z ∈ 𝔅, ‖hamiltonianVectorFieldℂ h z‖ ≤ M ∧
    ‖fderiv ℂ (hamiltonianVectorFieldℂ h) z‖ ≤ M ∧
    ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ h) z‖ ≤ M
  gamma_pos : 0 < γ
  dio : IsDiophantine γ τ ω

/-- Blueprint `bp:p2:admissible`: `K` is `(r, β, ε)`-admissible, with the parameter ranges
`r > 0`, `β > 0`, `0 ≤ ε ≤ 1` of the definition as fields. -/
structure Admissible {n : ℕ} (σK σB σT : ℝ) (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ω : Fin n → ℝ) (r β ε : ℝ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) : Prop where
  r_pos : 0 < r
  β_pos : 0 < β
  ε_nonneg : 0 ≤ ε
  ε_le_one : ε ≤ 1
  holo : DifferentiableOn ℂ K (complexStrip n r)
  primary : IsPrimaryOnStrip K r
  real : IsRealOnReals K
  ball_sub : ∀ θ ∈ complexStrip n r, Metric.ball (K θ) β ⊆ 𝔅
  deriv_le : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK
  gram : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB
  twist : IsUnit (torsionAverage h K ω).det ∧ ‖(torsionAverage h K ω)⁻¹‖ ≤ σT
  error_le : ∀ θ ∈ complexStrip n r, ‖invarianceError h K ω θ‖ ≤ ε

end KAM.Apost

/-! ## §P2.2 `KAM/Apost/Constants.lean`: `bp:p2:constants` -/

namespace KAM.Apost

variable (n : ℕ) (τ M σK σB σT : ℝ)

def kappa : ℝ := τ + n
def aExp : ℝ := 2 * kappa n τ + 2
def cR : ℝ := max 1 (cohConst n τ)
def mSize : ℝ := max 1 (max M (max σK (max σB σT)))
def Theta : ℝ := 4 * n * mSize M σK σB σT ^ 3
def C_X : ℝ := 5 * (n : ℝ) ^ 2 * mSize M σK σB σT ^ 5
def C_T : ℝ := 2 * n * mSize M σK σB σT ^ 2 * C_X n M σK σB σT
def C_Omega : ℝ := 2 * n * (n + 1) * cR n τ * mSize M σK σB σT
def C_sym : ℝ := mSize M σK σB σT ^ 2 * C_Omega n τ M σK σB σT
def C_red : ℝ := 2 * n * (n + 1) * mSize M σK σB σT ^ 2
def C_xi0 : ℝ := 2 * n * mSize M σK σB σT ^ 2 *
  (mSize M σK σB σT * Theta n M σK σB σT + cR n τ * C_T n M σK σB σT)
def C_xiN : ℝ := C_xi0 n τ M σK σB σT + 2 * n * cR n τ * mSize M σK σB σT
def C_g : ℝ := C_T n M σK σB σT * C_xiN n τ M σK σB σT +
  2 * n * mSize M σK σB σT ^ 2 * Theta n M σK σB σT
def C_xi : ℝ := cR n τ * C_g n τ M σK σB σT + Theta n M σK σB σT * C_xiN n τ M σK σB σT
def C_DK : ℝ := 2 * mSize M σK σB σT ^ 2 * C_xi n τ M σK σB σT
def C_lin : ℝ := C_red n M σK σB σT * C_xi n τ M σK σB σT +
  C_sym n τ M σK σB σT * C_g n τ M σK σB σT
def C_E : ℝ := 4 * mSize M σK σB σT ^ 2 * Theta n M σK σB σT ^ 2 * C_lin n τ M σK σB σT +
  mSize M σK σB σT * C_DK n τ M σK σB σT ^ 2
def C_G : ℝ := 6 * (n : ℝ) ^ 2 * mSize M σK σB σT
def C_B : ℝ := 2 * mSize M σK σB σT ^ 2 * C_G n M σK σB σT
def C_DN : ℝ := 2 * n * mSize M σK σB σT + mSize M σK σB σT * C_B n M σK σB σT
def C_DX : ℝ := 2 * mSize M σK σB σT ^ 3 +
  (mSize M σK σB σT + n * Theta n M σK σB σT) * C_DN n M σK σB σT
def C_DT : ℝ := 4 * n * mSize M σK σB σT ^ 2 * C_DX n M σK σB σT +
  2 * n * C_DN n M σK σB σT * C_X n M σK σB σT
def c_step : ℝ := 2 * Theta n M σK σB σT ^ 4 * max (C_sym n τ M σK σB σT)
  (2 * mSize M σK σB σT * C_DT n M σK σB σT * C_DK n τ M σK σB σT)
def c_sum : ℝ := 4 * Theta n M σK σB σT ^ 2 * C_DK n τ M σK σB σT *
  max (n : ℝ) (max (C_B n M σK σB σT) (mSize M σK σB σT ^ 2 * C_DT n M σK σB σT))
def c_star (μ : ℝ) : ℝ := max ((2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT)
  (max (c_step n τ M σK σB σT * max 1 (2 / μ)) (2 * c_sum n τ M σK σB σT / μ))
def delta0 (ρ ρinf : ℝ) : ℝ := min 1 ((ρ - ρinf) / 8)

variable {n τ M σK σB σT}

/-- Blueprint `bp:p2:constants` (claims): the constants are `≥ 1`; `κ ≥ 1`, `a ≥ 4`;
`δ₀ ∈ (0, 1]`. Dependences are the argument lists. -/
theorem constants_spec (hP : Params n τ M σK σB σT) :
    1 ≤ cR n τ ∧ 1 ≤ mSize M σK σB σT ∧ 1 ≤ Theta n M σK σB σT ∧ 1 ≤ C_X n M σK σB σT ∧
    1 ≤ C_T n M σK σB σT ∧ 1 ≤ C_Omega n τ M σK σB σT ∧ 1 ≤ C_sym n τ M σK σB σT ∧
    1 ≤ C_red n M σK σB σT ∧ 1 ≤ C_xi0 n τ M σK σB σT ∧ 1 ≤ C_xiN n τ M σK σB σT ∧
    1 ≤ C_g n τ M σK σB σT ∧ 1 ≤ C_xi n τ M σK σB σT ∧ 1 ≤ C_DK n τ M σK σB σT ∧
    1 ≤ C_lin n τ M σK σB σT ∧ 1 ≤ C_E n τ M σK σB σT ∧ 1 ≤ C_G n M σK σB σT ∧
    1 ≤ C_B n M σK σB σT ∧ 1 ≤ C_DN n M σK σB σT ∧ 1 ≤ C_DX n M σK σB σT ∧
    1 ≤ C_DT n M σK σB σT ∧ 1 ≤ c_step n τ M σK σB σT ∧ 1 ≤ c_sum n τ M σK σB σT ∧
    1 ≤ kappa n τ ∧ 4 ≤ aExp n τ ∧
    (∀ μ, 0 < μ → 1 ≤ c_star n τ M σK σB σT μ) ∧
    (∀ ρ ρinf, 0 < ρinf → ρinf < ρ → 0 < delta0 ρ ρinf ∧ delta0 ρ ρinf ≤ 1) := sorry

end KAM.Apost

/-! ## §P2.3 `KAM/Apost/Tools.lean`: `bp:p2:matrix`, `bp:p2:averages`, `bp:p2:cohomological` -/

namespace KAM.Apost

open KAM.Torus

/-- Blueprint `bp:p2:matrix` (all finite index types; `Fin n ⊕ Fin n` for `2n`). -/
theorem matrix_facts :
    (∀ {m k : Type} [Fintype m] [Fintype k] (A : Matrix m k ℂ),
      (∀ i j, ‖A i j‖ ≤ ‖A‖) ∧
      IsGreatest ((fun v : k → ℂ => ‖A *ᵥ v‖) '' Metric.closedBall 0 1) ‖A‖ ∧
      ‖Aᵀ‖ ≤ Fintype.card m * ‖A‖) ∧
    (∀ {m k l : Type} [Fintype m] [Fintype k] [Fintype l] (A : Matrix m k ℂ) (B : Matrix k l ℂ)
      (v : k → ℂ), ‖A * B‖ ≤ ‖A‖ * ‖B‖ ∧ ‖A *ᵥ v‖ ≤ ‖A‖ * ‖v‖) ∧
    (∀ {m₁ m₂ k₁ k₂ : Type} [Fintype m₁] [Fintype m₂] [Fintype k₁] [Fintype k₂]
      (A₁₁ : Matrix m₁ k₁ ℂ) (A₁₂ : Matrix m₁ k₂ ℂ) (A₂₁ : Matrix m₂ k₁ ℂ) (A₂₂ : Matrix m₂ k₂ ℂ),
      ‖Matrix.fromCols A₁₁ A₁₂‖ ≤ ‖A₁₁‖ + ‖A₁₂‖ ∧
      ‖Matrix.fromBlocks A₁₁ A₁₂ A₂₁ A₂₂‖ ≤ max (‖A₁₁‖ + ‖A₁₂‖) (‖A₂₁‖ + ‖A₂₂‖) ∧
      ‖Matrix.fromBlocks A₁₁ 0 0 A₂₂‖ = max ‖A₁₁‖ ‖A₂₂‖) ∧
    (∀ n : ℕ, (omegaZeroMatrix n)ᵀ = -omegaZeroMatrix n ∧
      omegaZeroMatrix n * omegaZeroMatrix n = -1 ∧ (omegaZeroMatrix n)ᵀ * omegaZeroMatrix n = 1 ∧
      (omegaZeroMatrix n)⁻¹ = (omegaZeroMatrix n)ᵀ ∧ (0 < n → ‖omegaZeroMatrix n‖ = 1) ∧
      ∀ {q : Type} [Fintype q] (U₁ U₂ : Matrix (Fin n) q ℂ),
        omegaZeroMatrix n * Matrix.fromRows U₁ U₂ = Matrix.fromRows (-U₂) U₁) := sorry

/-- Blueprint `bp:p2:averages`. (a) for `f : ℝⁿ → W`, `W` any complex Banach space (`ℂ`, `ℂ^p`,
`ℂ^{p×q}`), entrywise form and realness for matrices and vectors; (b) for `v` holomorphic and
periodic on `T_r`. -/
theorem averages {n : ℕ} :
    (∀ {W : Type} [NormedAddCommGroup W] [NormedSpace ℂ W] [CompleteSpace W]
      (f g : (Fin n → ℝ) → W), Continuous f → Continuous g →
      (∀ (i : Fin n) x, f (x + Pi.single i 1) = f x) →
      IntegrableOn f (Set.pi Set.univ fun _ => Set.Icc (0 : ℝ) 1) ∧
      torusAverage (f + g) = torusAverage f + torusAverage g ∧
      (∀ c : ℂ, torusAverage (c • f) = c • torusAverage f) ∧
      ∀ A, (∀ x ∈ Set.pi Set.univ (fun _ => Set.Icc (0 : ℝ) 1), ‖f x‖ ≤ A) →
        ‖torusAverage f‖ ≤ A) ∧
    (∀ {p q : ℕ} (f : (Fin n → ℝ) → Matrix (Fin p) (Fin q) ℂ), Continuous f →
      (∀ i j, torusAverage f i j = ∫ x in Set.pi Set.univ (fun _ => Set.Icc (0 : ℝ) 1), f x i j) ∧
      ((∀ x i j, (f x i j).im = 0) → ∀ i j, (torusAverage f i j).im = 0)) ∧
    (∀ {p : ℕ} (f : (Fin n → ℝ) → Fin p → ℂ), Continuous f →
      (∀ i, torusAverage f i = ∫ x in Set.pi Set.univ (fun _ => Set.Icc (0 : ℝ) 1), f x i) ∧
      ((∀ x i, (f x i).im = 0) → ∀ i, (torusAverage f i).im = 0)) ∧
    (∀ {W : Type} [NormedAddCommGroup W] [NormedSpace ℂ W] [CompleteSpace W]
      {r : ℝ} (v : (Fin n → ℂ) → W) (ω : Fin n → ℝ), 0 < r →
      DifferentiableOn ℂ v (complexStrip n r) → IsPeriodicOn v r →
      (∀ ℓ : Fin n, avg (fun θ => fderiv ℂ v θ (Pi.single ℓ 1)) = 0) ∧
      avg (fun θ => fderiv ℂ v θ (fun l => (ω l : ℂ))) = 0) := sorry

/-- The vector solution operator `𝓡 g` of `bp:p2:cohomological`, componentwise `cohSolution`. -/
def cohR {n p : ℕ} (ω : Fin n → ℝ) (g : (Fin n → ℂ) → Fin p → ℂ) : (Fin n → ℂ) → Fin p → ℂ :=
  fun θ i => cohSolution ω (fun θ' => g θ' i) θ

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}

/-- Blueprint `bp:p2:cohomological`, with `Γ_δ = c_R γ⁻¹ δ^{-κ}`. -/
theorem cohomological (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r δ : ℝ} (hr : 0 < r)
    (hδ : 0 < δ) (hδr : δ < r) :
    (∀ {p : ℕ} (g : (Fin n → ℂ) → Fin p → ℂ) (H : ℝ), DifferentiableOn ℂ g (complexStrip n r) →
      IsPeriodicOn g r → (∀ θ ∈ complexStrip n r, ‖g θ‖ ≤ H) → avg g = 0 →
      DifferentiableOn ℂ (cohR ω g) (complexStrip n (r - δ)) ∧ IsPeriodicOn (cohR ω g) (r - δ) ∧
      avg (cohR ω g) = 0 ∧
      (∀ θ ∈ complexStrip n (r - δ), fderiv ℂ (cohR ω g) θ (fun l => (ω l : ℂ)) = g θ) ∧
      (∀ θ ∈ complexStrip n (r - δ), ‖cohR ω g θ‖ ≤ cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * H) ∧
      (IsRealVec g → IsRealVec (cohR ω g)) ∧
      ∀ u : (Fin n → ℂ) → Fin p → ℂ, DifferentiableOn ℂ u (complexStrip n (r - δ)) →
        IsPeriodicOn u (r - δ) → avg u = 0 →
        (∀ θ ∈ complexStrip n (r - δ), fderiv ℂ u θ (fun l => (ω l : ℂ)) = g θ) →
        ∀ θ ∈ complexStrip n (r - δ), u θ = cohR ω g θ) ∧
    (∀ {p q : ℕ} (u : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ) (H : ℝ),
      DifferentiableOn ℂ u (complexStrip n r) → IsPeriodicOn u r → avg u = 0 →
      (∀ θ ∈ complexStrip n r, ‖fderiv ℂ u θ (fun l => (ω l : ℂ))‖ ≤ H) →
      ∀ θ ∈ complexStrip n (r - δ), ‖u θ‖ ≤ cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * H) := sorry

/-! ## §P2.4 `KAM/Apost/Hamiltonian.lean`: `bp:p2:hamiltonian` -/

/-- Blueprint `bp:p2:hamiltonian`, items (a)–(e). -/
theorem hamiltonian (hS : Standing n τ M σK σB σT 𝔅 h ω γ) :
    (DifferentiableOn ℂ (hamiltonianVectorFieldℂ h) 𝔅 ∧
      DifferentiableOn ℂ (fderiv ℂ (hamiltonianVectorFieldℂ h)) 𝔅 ∧
      ∀ z ∈ 𝔅, ‖fderiv ℂ (fderiv ℂ (hamiltonianVectorFieldℂ h)) z‖ =
          ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ h) z‖ ∧
        ‖fderiv ℂ (fderiv ℂ (hamiltonianVectorFieldℂ h)) z‖ ≤ M) ∧
    (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ,
      hamiltonianVectorFieldℂ h (z.1 + (fun i => (k i : ℂ)), z.2) = hamiltonianVectorFieldℂ h z ∧
      fderiv ℂ (hamiltonianVectorFieldℂ h) (z.1 + (fun i => (k i : ℂ)), z.2) =
        fderiv ℂ (hamiltonianVectorFieldℂ h) z) ∧
    (∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ 𝔅 →
      (∀ s, (sumVec n (hamiltonianVectorFieldℂ h ((fun i => (θ i : ℂ)), fun i => (I i : ℂ))) s).im
        = 0) ∧
      ∀ s t, (sqMat (fderiv ℂ (hamiltonianVectorFieldℂ h)
        ((fun i => (θ i : ℂ)), fun i => (I i : ℂ))) s t).im = 0) ∧
    (∀ z ∈ 𝔅, sumVec n (omegaZero (hamiltonianVectorFieldℂ h z)) =
        (fun s => fderiv ℂ h z ((sumVec n).symm (Pi.single s 1))) ∧
      (omegaZeroMatrix n * sqMat (fderiv ℂ (hamiltonianVectorFieldℂ h) z))ᵀ =
        omegaZeroMatrix n * sqMat (fderiv ℂ (hamiltonianVectorFieldℂ h) z) ∧
      (sqMat (fderiv ℂ (hamiltonianVectorFieldℂ h) z))ᵀ * omegaZeroMatrix n +
        omegaZeroMatrix n * sqMat (fderiv ℂ (hamiltonianVectorFieldℂ h) z) = 0) ∧
    (∀ (z w : (Fin n → ℂ) × (Fin n → ℂ)) (β : ℝ), Metric.ball z β ⊆ 𝔅 → ‖w‖ < β →
      ‖fderiv ℂ (hamiltonianVectorFieldℂ h) (z + w) - fderiv ℂ (hamiltonianVectorFieldℂ h) z‖ ≤
        M * ‖w‖ ∧
      ‖hamiltonianVectorFieldℂ h (z + w) - hamiltonianVectorFieldℂ h z -
        fderiv ℂ (hamiltonianVectorFieldℂ h) z w‖ ≤ M * ‖w‖ ^ 2) := sorry

/-! ## §P2.5 `KAM/Apost/Periodicity.lean`: `bp:p2:periodicity` -/

/-- Blueprint `bp:p2:periodicity`. -/
theorem periodicity (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r : ℝ} (hr : 0 < r)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hKp : IsPrimaryOnStrip K r) (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) :
    (IsPeriodicOn (tangentMat K) r ∧ IsPeriodicOn (gramMatrix K) r ∧
      IsPeriodicOn (invarianceError h K ω) r ∧ IsPeriodicOn (linMat h K) r ∧
      IsPeriodicOn (lagrangeMat K) r ∧ IsPeriodicOn (fun θ => h (K θ)) r ∧
      IsPeriodicOn (fun θ => (K θ).2) r ∧
      ∀ j : Fin n, IsPeriodicOn (fun θ => ∑ i, (K θ).2 i *
        fderiv ℂ (fun θ' => (K θ').1) θ (Pi.single j 1) i) r) ∧
    ((∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) →
      IsPeriodicOn (fun θ => (gramMatrix K θ)⁻¹) r ∧ IsPeriodicOn (normalMat K) r ∧
      IsPeriodicOn (frameMat K) r ∧ IsPeriodicOn (normalFieldMat h K ω) r ∧
      IsPeriodicOn (torsion h K ω) r ∧ IsPeriodicOn (symDefect K) r ∧
      IsPeriodicOn (eta h K ω) r) ∧
    ((∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) → IsRealOnReals K →
      IsRealMat (tangentMat K) ∧ IsRealMat (gramMatrix K) ∧ IsRealOnReals (invarianceError h K ω) ∧
      IsRealMat (linMat h K) ∧ IsRealMat (lagrangeMat K) ∧
      (∀ x : Fin n → ℝ, (h (K fun i => (x i : ℂ))).im = 0) ∧ IsRealVec (fun θ => (K θ).2) ∧
      (∀ j : Fin n, ∀ x : Fin n → ℝ, (∑ i, (K fun l => (x l : ℂ)).2 i *
        fderiv ℂ (fun θ' => (K θ').1) (fun l => (x l : ℂ)) (Pi.single j 1) i).im = 0) ∧
      IsRealMat (fun θ => (gramMatrix K θ)⁻¹) ∧ IsRealMat (normalMat K) ∧ IsRealMat (frameMat K) ∧
      IsRealMat (normalFieldMat h K ω) ∧ IsRealMat (torsion h K ω) ∧ IsRealMat (symDefect K) ∧
      IsRealVec (eta h K ω) ∧ ∀ i j, (torsionAverage h K ω i j).im = 0) := sorry

/-! ## §P2.6 `KAM/Apost/Frame.lean`: `bp:p2:frequency`, `bp:p2:frame-basic` -/

/-- Blueprint `bp:p2:frequency`. -/
theorem frequency (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r ε : ℝ} (hr : 0 < r) (hε : ε ≤ 1)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hA3 : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK)
    (hA4 : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB)
    (hA6 : ∀ θ ∈ complexStrip n r, ‖invarianceError h K ω θ‖ ≤ ε) :
    γ ≤ ‖ω‖ ∧ ‖ω‖ ≤ 2 * n * σK * σB * (M + ε) ∧
      2 * n * σK * σB * (M + ε) ≤ Theta n M σK σB σT := sorry

/-- Blueprint `bp:p2:frame-basic`, items (a)–(d). -/
theorem frame_basic (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r β : ℝ} (hr : 0 < r) (hβ : 0 < β)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hA2 : ∀ θ ∈ complexStrip n r, Metric.ball (K θ) β ⊆ 𝔅)
    (hA3 : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK)
    (hA4 : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB) :
    (DifferentiableOn ℂ (tangentMat K) (complexStrip n r) ∧
      DifferentiableOn ℂ (gramMatrix K) (complexStrip n r) ∧
      DifferentiableOn ℂ (invarianceError h K ω) (complexStrip n r) ∧
      DifferentiableOn ℂ (linMat h K) (complexStrip n r) ∧
      DifferentiableOn ℂ (lagrangeMat K) (complexStrip n r) ∧
      DifferentiableOn ℂ (fun θ => (gramMatrix K θ)⁻¹) (complexStrip n r) ∧
      DifferentiableOn ℂ (normalMat K) (complexStrip n r) ∧
      DifferentiableOn ℂ (frameMat K) (complexStrip n r) ∧
      DifferentiableOn ℂ (normalFieldMat h K ω) (complexStrip n r) ∧
      DifferentiableOn ℂ (torsion h K ω) (complexStrip n r) ∧
      DifferentiableOn ℂ (symDefect K) (complexStrip n r) ∧
      DifferentiableOn ℂ (reducer K) (complexStrip n r) ∧
      DifferentiableOn ℂ (eta h K ω) (complexStrip n r) ∧
      (∀ θ ∈ complexStrip n r, ((gramMatrix K θ)⁻¹)ᵀ = (gramMatrix K θ)⁻¹) ∧
      Continuous (fun x : Fin n → ℝ => torsion h K ω (fun i => (x i : ℂ)))) ∧
    (∀ θ ∈ complexStrip n r,
      ‖tangentMat K θ‖ ≤ mSize M σK σB σT ∧ ‖(tangentMat K θ)ᵀ‖ ≤ 2 * n * mSize M σK σB σT ∧
      ‖(gramMatrix K θ)⁻¹‖ ≤ mSize M σK σB σT ∧ ‖normalMat K θ‖ ≤ mSize M σK σB σT ^ 2 ∧
      ‖(normalMat K θ)ᵀ‖ ≤ 2 * n * mSize M σK σB σT ^ 2 ∧
      ‖frameMat K θ‖ ≤ 2 * mSize M σK σB σT ^ 2 ∧ ‖linMat h K θ‖ ≤ mSize M σK σB σT) ∧
    (∀ ε, (∀ θ ∈ complexStrip n r, ‖invarianceError h K ω θ‖ ≤ ε) →
      ∀ θ ∈ complexStrip n r, ‖etaL h K ω θ‖ ≤ 2 * n * mSize M σK σB σT ^ 2 * ε ∧
        ‖etaN h K ω θ‖ ≤ 2 * n * mSize M σK σB σT * ε) ∧
    (‖ω‖ ≤ Theta n M σK σB σT → ∀ δ, 0 < δ → δ ≤ 1 → δ < r →
      ∀ θ ∈ complexStrip n (r - δ), ‖normalFieldMat h K ω θ‖ ≤ C_X n M σK σB σT / δ ∧
        ‖torsion h K ω θ‖ ≤ C_T n M σK σB σT / δ) := sorry

/-! ## §P2.7 `KAM/Apost/Identities.lean`: `bp:p2:frame-identities`, `bp:p2:exactness` -/

/-- Blueprint `bp:p2:frame-identities`, items (a)–(f). -/
theorem frame_identities (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r : ℝ} (hr : 0 < r)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) :
    ∀ θ ∈ complexStrip n r,
      ((tangentMat K θ)ᵀ * omegaZeroMatrix n * normalMat K θ = -1 ∧
        (normalMat K θ)ᵀ * omegaZeroMatrix n * tangentMat K θ = 1 ∧
        (normalMat K θ)ᵀ * omegaZeroMatrix n * normalMat K θ =
          (gramMatrix K θ)⁻¹ * lagrangeMat K θ * (gramMatrix K θ)⁻¹) ∧
      ((frameMat K θ)ᵀ * omegaZeroMatrix n * frameMat K θ = omegaZeroMatrix n + symDefect K θ ∧
        symDefect K θ = Matrix.fromBlocks (lagrangeMat K θ) 0 0
          ((gramMatrix K θ)⁻¹ * lagrangeMat K θ * (gramMatrix K θ)⁻¹)) ∧
      fderiv ℂ (tangentMat K) θ (fun l => (ω l : ℂ)) =
        linMat h K θ * tangentMat K θ - errDerivMat h K ω θ ∧
      fderiv ℂ (lagrangeMat K) θ (fun l => (ω l : ℂ)) =
        -((errDerivMat h K ω θ)ᵀ * omegaZeroMatrix n * tangentMat K θ) -
          (tangentMat K θ)ᵀ * omegaZeroMatrix n * errDerivMat h K ω θ ∧
      reducer K θ * (linMat h K θ * frameMat K θ - fderiv ℂ (frameMat K) θ (fun l => (ω l : ℂ))) =
        triangularMat (torsion h K ω θ) + redDefect h K ω θ ∧
      (reducer K θ * frameMat K θ = 1 - omegaZeroMatrix n * symDefect K θ ∧
        reducer K θ *ᵥ sumVec n (invarianceError h K ω θ) = -eta h K ω θ) := sorry

/-- Blueprint `bp:p2:exactness`: `⟨Ω_K⟩ = 0` and `⟨Lᵀ Ω₀ E⟩ = ⟨ηᴺ⟩ = 0`. -/
theorem exactness (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r : ℝ} (hr : 0 < r)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hKp : IsPrimaryOnStrip K r) (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) :
    avg (lagrangeMat K) = 0 ∧ avg (etaN h K ω) = 0 := sorry

/-! ## §P2.8 `KAM/Apost/Geometry.lean`: `bp:p2:geometry` -/

/-- Blueprint `bp:p2:geometry`. -/
theorem geometry (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r β ε δ : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : Admissible σK σB σT 𝔅 h ω r β ε K)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (h2δ : 2 * δ < r) :
    (∀ θ ∈ complexStrip n (r - δ),
      ‖errDerivMat h K ω θ‖ ≤ n * ε / δ ∧ ‖(errDerivMat h K ω θ)ᵀ‖ ≤ 2 * n * ε / δ ∧
      ‖fderiv ℂ (lagrangeMat K) θ (fun l => (ω l : ℂ))‖ ≤
        2 * n * (n + 1) * mSize M σK σB σT * ε / δ ∧
      ‖redDefect h K ω θ‖ ≤ C_red n M σK σB σT * ε / δ) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖lagrangeMat K θ‖ ≤ C_Omega n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ∧
      ‖symDefect K θ‖ ≤ C_sym n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1))) := sorry

/-! ## §P2.9 `KAM/Apost/Triangular.lean`, `KAM/Apost/Correction.lean`:
`bp:p2:triangular`, `bp:p2:correction` -/

section Triangular

variable (ω) (ηL ηN : (Fin n → ℂ) → Fin n → ℂ) (T : (Fin n → ℂ) → Matrix (Fin n) (Fin n) ℂ)

/-- `uᴺ = 𝓡 ηᴺ`. -/
def triU : (Fin n → ℂ) → Fin n → ℂ := cohR ω ηN
/-- `ξᴺ₀ = ⟨T⟩⁻¹ (⟨ηᴸ⟩ + ⟨T uᴺ⟩)`. -/
def triXi0 : Fin n → ℂ :=
  (avg T)⁻¹ *ᵥ (avg ηL + avg (fun θ => T θ *ᵥ triU ω ηN θ))
/-- `ξᴺ = ξᴺ₀ - uᴺ`. -/
def triXiN : (Fin n → ℂ) → Fin n → ℂ := fun θ => triXi0 ω ηL ηN T - triU ω ηN θ
/-- `gᴸ = T ξᴺ - ηᴸ`. -/
def triGL : (Fin n → ℂ) → Fin n → ℂ := fun θ => T θ *ᵥ triXiN ω ηL ηN T θ - ηL θ
/-- `ξᴸ = 𝓡 gᴸ`. -/
def triXiL : (Fin n → ℂ) → Fin n → ℂ := cohR ω (triGL ω ηL ηN T)

end Triangular

/-- Blueprint `bp:p2:triangular`, items (a)–(d); `Γ_δ = c_R γ⁻¹ δ^{-κ}`. -/
theorem triangular (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r δ : ℝ} (hr : 0 < r) (hδ : 0 < δ)
    (h2δ : 2 * δ < r) {ηL ηN : (Fin n → ℂ) → Fin n → ℂ}
    {T : (Fin n → ℂ) → Matrix (Fin n) (Fin n) ℂ} {HL HN HT σ : ℝ}
    (hηL : DifferentiableOn ℂ ηL (complexStrip n r)) (hηLp : IsPeriodicOn ηL r)
    (hηN : DifferentiableOn ℂ ηN (complexStrip n r)) (hηNp : IsPeriodicOn ηN r)
    (hHL : ∀ θ ∈ complexStrip n r, ‖ηL θ‖ ≤ HL) (hHN : ∀ θ ∈ complexStrip n r, ‖ηN θ‖ ≤ HN)
    (hηN0 : avg ηN = 0) (hT : DifferentiableOn ℂ T (complexStrip n r)) (hTp : IsPeriodicOn T r)
    (hHT : ∀ θ ∈ complexStrip n (r - δ), ‖T θ‖ ≤ HT) (hTinv : IsUnit (avg T).det)
    (hσ : ‖(avg T)⁻¹‖ ≤ σ) :
    (avg (triGL ω ηL ηN T) = 0 ∧
      DifferentiableOn ℂ (triXiN ω ηL ηN T) (complexStrip n (r - δ)) ∧
      IsPeriodicOn (triXiN ω ηL ηN T) (r - δ) ∧
      DifferentiableOn ℂ (triGL ω ηL ηN T) (complexStrip n (r - δ)) ∧
      IsPeriodicOn (triGL ω ηL ηN T) (r - δ) ∧
      DifferentiableOn ℂ (triXiL ω ηL ηN T) (complexStrip n (r - 2 * δ)) ∧
      IsPeriodicOn (triXiL ω ηL ηN T) (r - 2 * δ)) ∧
    ((∀ θ ∈ complexStrip n (r - δ), fderiv ℂ (triXiN ω ηL ηN T) θ (fun l => (ω l : ℂ)) = -ηN θ) ∧
      ∀ θ ∈ complexStrip n (r - 2 * δ),
        fderiv ℂ (triXiL ω ηL ηN T) θ (fun l => (ω l : ℂ)) = triGL ω ηL ηN T θ) ∧
    (‖triXi0 ω ηL ηN T‖ ≤ σ * (HL + HT * (cR n τ * γ⁻¹ * δ ^ (-kappa n τ)) * HN) ∧
      (∀ θ ∈ complexStrip n (r - δ),
        ‖triXiN ω ηL ηN T θ‖ ≤ ‖triXi0 ω ηL ηN T‖ + cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * HN) ∧
      (∀ X, (∀ θ ∈ complexStrip n (r - δ), ‖triXiN ω ηL ηN T θ‖ ≤ X) →
        ∀ θ ∈ complexStrip n (r - δ), ‖triGL ω ηL ηN T θ‖ ≤ HT * X + HL) ∧
      (∀ Y, (∀ θ ∈ complexStrip n (r - δ), ‖triGL ω ηL ηN T θ‖ ≤ Y) →
        ∀ θ ∈ complexStrip n (r - 2 * δ),
          ‖triXiL ω ηL ηN T θ‖ ≤ cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * Y)) ∧
    (IsRealVec ηL → IsRealVec ηN → IsRealMat T →
      (∀ i, (triXi0 ω ηL ηN T i).im = 0) ∧ IsRealVec (triXiL ω ηL ηN T) ∧
      IsRealVec (triXiN ω ηL ηN T) ∧ IsRealVec (triGL ω ηL ηN T)) := sorry

/-- `ξ = (ξᴸ, ξᴺ)` for the torus `K`: the triangular system with `ηᴸ, ηᴺ, T` of `K`. -/
def xi (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (θ : Fin n → ℂ) : Fin n ⊕ Fin n → ℂ :=
  Sum.elim (triXiL ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ)
    (triXiN ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ)

/-- The Newton correction `ΔK = P ξ`. -/
def correction (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (θ : Fin n → ℂ) : (Fin n → ℂ) × (Fin n → ℂ) :=
  (sumVec n).symm (frameMat K θ *ᵥ xi h K ω θ)

/-- Blueprint `bp:p2:correction`. -/
theorem correction_spec (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r β ε δ : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : Admissible σK σB σT 𝔅 h ω r β ε K)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (h2δ : 2 * δ < r) :
    (DifferentiableOn ℂ (xi h K ω) (complexStrip n (r - 2 * δ)) ∧
      IsPeriodicOn (xi h K ω) (r - 2 * δ) ∧ IsRealVec (xi h K ω) ∧
      DifferentiableOn ℂ (correction h K ω) (complexStrip n (r - 2 * δ)) ∧
      IsPeriodicOn (correction h K ω) (r - 2 * δ) ∧ IsRealOnReals (correction h K ω)) ∧
    (∀ θ ∈ complexStrip n (r - δ),
      ‖triXiN ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ‖ ≤
        C_xiN n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ∧
      ‖triGL ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ‖ ≤
        C_g n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2))) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖xi h K ω θ‖ ≤ C_xi n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) ∧
      ‖correction h K ω θ‖ ≤ C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) ∧
      ‖fderiv ℂ (xi h K ω) θ (fun l => (ω l : ℂ))‖ ≤
        C_g n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2))) := sorry

/-! ## §P2.10 `KAM/Apost/NewtonError.lean`, `KAM/Apost/Perturbation*.lean`, `KAM/Apost/Step.lean` -/

open Classical in
/-- `K̄ = K + ΔK` on `T_w`, `K` elsewhere (`bp:p2:newton-error`, with `w = r - 2δ`). -/
def newtonMap (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (w : ℝ) : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ) :=
  fun θ => if θ ∈ complexStrip n w then K θ + correction h K ω θ else K θ

/-- `S = I - Ω₀ E_sym`. -/
def sMat (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (θ : Fin n → ℂ) :
    Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ :=
  1 - omegaZeroMatrix n * symDefect K θ

/-- `E_lin = E_red ξ + Ω₀ E_sym ∂_ω ξ`. -/
def linError (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (θ : Fin n → ℂ) : Fin n ⊕ Fin n → ℂ :=
  redDefect h K ω θ *ᵥ xi h K ω θ +
    (omegaZeroMatrix n * symDefect K θ) *ᵥ fderiv ℂ (xi h K ω) θ (fun l => (ω l : ℂ))

/-- `Δ²X = X_h(K + ΔK) - X_h(K) - A ΔK`. -/
def quadRemainder (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (θ : Fin n → ℂ) :
    (Fin n → ℂ) × (Fin n → ℂ) :=
  hamiltonianVectorFieldℂ h (K θ + correction h K ω θ) - hamiltonianVectorFieldℂ h (K θ) -
    fderiv ℂ (hamiltonianVectorFieldℂ h) (K θ) (correction h K ω θ)

/-- Blueprint `bp:p2:newton-error`. -/
theorem newton_error (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r β ε δ : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : Admissible σK σB σT 𝔅 h ω r β ε K)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (h2δ : 2 * δ < r)
    (hβ : C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) < β)
    (hsym : C_sym n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ≤ 1 / 2) :
    (∀ θ ∈ complexStrip n (r - 2 * δ), newtonMap h K ω (r - 2 * δ) θ ∈ 𝔅) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ), IsUnit (sMat K θ).det ∧ ‖(sMat K θ)⁻¹‖ ≤ 2) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      sumVec n (invarianceError h (newtonMap h K ω (r - 2 * δ)) ω θ) =
        frameMat K θ *ᵥ ((sMat K θ)⁻¹ *ᵥ linError h K ω θ) + sumVec n (quadRemainder h K ω θ)) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖invarianceError h (newtonMap h K ω (r - 2 * δ)) ω θ‖ ≤
        C_E n τ M σK σB σT * ε ^ 2 / (γ ^ 4 * δ ^ (2 * aExp n τ))) := sorry

/-- Blueprint `bp:p2:perturbation`, items (a)–(f). -/
theorem perturbation (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r δ β d : ℝ} (hr : 0 < r)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (h2δ : 2 * δ < r) (hω : ‖ω‖ ≤ Theta n M σK σB σT)
    {K K' : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hball : ∀ θ ∈ complexStrip n r, Metric.ball (K θ) β ⊆ 𝔅)
    (hDK : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB)
    (hT : IsUnit (torsionAverage h K ω).det ∧ ‖(torsionAverage h K ω)⁻¹‖ ≤ σT)
    (hK' : DifferentiableOn ℂ K' (complexStrip n r)) (hd : ∀ θ ∈ complexStrip n r, ‖K' θ - K θ‖ ≤ d)
    (hdβ : d < β) (hsmall : 2 * mSize M σK σB σT * C_DT n M σK σB σT * d / δ ^ 2 ≤ 1) :
    (∀ θ ∈ complexStrip n r, Metric.ball (K' θ) (β - d) ⊆ 𝔅) ∧
    (∀ θ ∈ complexStrip n (r - δ), ‖fderiv ℂ K' θ - fderiv ℂ K θ‖ ≤ n * d / δ) ∧
    (∀ θ ∈ complexStrip n (r - δ), IsUnit (gramMatrix K' θ).det ∧
      ‖(gramMatrix K' θ)⁻¹‖ ≤ 2 * mSize M σK σB σT ∧
      ‖(gramMatrix K' θ)⁻¹ - (gramMatrix K θ)⁻¹‖ ≤ C_B n M σK σB σT * d / δ) ∧
    (∀ θ ∈ complexStrip n (r - δ), ‖normalMat K' θ - normalMat K θ‖ ≤ C_DN n M σK σB σT * d / δ ∧
      ‖normalMat K' θ‖ ≤ 2 * mSize M σK σB σT ^ 2) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖torsion h K' ω θ - torsion h K ω θ‖ ≤ C_DT n M σK σB σT * d / δ ^ 2) ∧
    (Continuous (fun x : Fin n → ℝ => torsion h K' ω (fun i => (x i : ℂ))) ∧
      IsUnit (torsionAverage h K' ω).det ∧
      ‖(torsionAverage h K' ω)⁻¹ - (torsionAverage h K ω)⁻¹‖ ≤
        2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT * d / δ ^ 2) := sorry

/-- Blueprint `bp:p2:step`, items (a)–(f), with `K̄ = newtonMap h K ω (r - 2δ)` and
`d = C_ΔK ε / (γ² δ^a)`. -/
theorem step (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r β ε δ : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : Admissible σK σB σT 𝔅 h ω r β ε K)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (h4δ : 4 * δ < r)
    (hsmall : c_step n τ M σK σB σT * ε / (γ ^ 4 * δ ^ (2 * aExp n τ)) ≤ min 1 β) :
    (DifferentiableOn ℂ (newtonMap h K ω (r - 2 * δ)) (complexStrip n (r - 2 * δ)) ∧
      IsPrimaryOnStrip (newtonMap h K ω (r - 2 * δ)) (r - 2 * δ) ∧
      IsRealOnReals (newtonMap h K ω (r - 2 * δ))) ∧
    ((∀ θ ∈ complexStrip n (r - 2 * δ), ‖newtonMap h K ω (r - 2 * δ) θ - K θ‖ ≤
        C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) ∧
      C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) ≤ β / 2 ∧
      ∀ θ ∈ complexStrip n (r - 2 * δ), Metric.ball (newtonMap h K ω (r - 2 * δ) θ)
        (β - C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) ⊆ 𝔅) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ), ‖invarianceError h (newtonMap h K ω (r - 2 * δ)) ω θ‖ ≤
      C_E n τ M σK σB σT * ε ^ 2 / (γ ^ 4 * δ ^ (2 * aExp n τ))) ∧
    (∀ θ ∈ complexStrip n (r - 3 * δ),
      ‖fderiv ℂ (newtonMap h K ω (r - 2 * δ)) θ - fderiv ℂ K θ‖ ≤
        n * (C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) / δ) ∧
    (∀ θ ∈ complexStrip n (r - 3 * δ), IsUnit (gramMatrix (newtonMap h K ω (r - 2 * δ)) θ).det ∧
      ‖(gramMatrix (newtonMap h K ω (r - 2 * δ)) θ)⁻¹ - (gramMatrix K θ)⁻¹‖ ≤
        C_B n M σK σB σT * (C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) / δ) ∧
    (IsUnit (torsionAverage h (newtonMap h K ω (r - 2 * δ)) ω).det ∧
      ‖(torsionAverage h (newtonMap h K ω (r - 2 * δ)) ω)⁻¹ - (torsionAverage h K ω)⁻¹‖ ≤
        2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT *
          (C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) / δ ^ 2) := sorry

/-! ## §P2.11 `KAM/Apost/Schedule.lean`, `KAM/Apost/Iteration.lean`, `KAM/Apost/Limit.lean` -/

/-- `δ_s = 2^{-s} δ₀`. -/
def deltaSeq (ρ ρinf : ℝ) (s : ℕ) : ℝ := (2 : ℝ)⁻¹ ^ s * delta0 ρ ρinf
/-- `r_s = ρ - 8 δ₀ (1 - 2^{-s})`. -/
def rSeq (ρ ρinf : ℝ) (s : ℕ) : ℝ := ρ - 8 * delta0 ρ ρinf * (1 - (2 : ℝ)⁻¹ ^ s)

variable (n τ M σK σB σT) in
/-- `ε₀ = e`, `ε_{s+1} = C_E ε_s² / (γ⁴ δ_s^{2a})`. -/
def epsSeq (ρ ρinf γ e : ℝ) : ℕ → ℝ
  | 0 => e
  | s + 1 => C_E n τ M σK σB σT * epsSeq ρ ρinf γ e s ^ 2 /
      (γ ^ 4 * deltaSeq ρ ρinf s ^ (2 * aExp n τ))

variable (n τ M σK σB σT) in
/-- `d_s = C_ΔK ε_s / (γ² δ_s^a)`. -/
def dSeq (ρ ρinf γ e : ℝ) (s : ℕ) : ℝ :=
  C_DK n τ M σK σB σT * epsSeq n τ M σK σB σT ρ ρinf γ e s /
    (γ ^ 2 * deltaSeq ρ ρinf s ^ aExp n τ)

/-- Blueprint `bp:p2:schedule` (claims). -/
theorem schedule {ρ ρinf : ℝ} (hρinf : 0 < ρinf) (hρ : ρinf < ρ) :
    rSeq ρ ρinf 0 = ρ ∧ ρinf ≤ ρ - 8 * delta0 ρ ρinf ∧
    ∀ s : ℕ, rSeq ρ ρinf (s + 1) = rSeq ρ ρinf s - 4 * deltaSeq ρ ρinf s ∧
      ρ - 8 * delta0 ρ ρinf < rSeq ρ ρinf s ∧ deltaSeq ρ ρinf s ≤ 1 ∧
      4 * deltaSeq ρ ρinf s < rSeq ρ ρinf s := sorry

/-- Blueprint `bp:p2:error-decay`, with `q = 2^{2a} C_E e / (γ⁴ δ₀^{2a})`. -/
theorem error_decay (hP : Params n τ M σK σB σT) {ρ ρinf γ e : ℝ} (hρinf : 0 < ρinf)
    (hρ : ρinf < ρ) (hγ : 0 < γ) (he : 0 ≤ e)
    (hq : (2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
      (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) :
    (∀ s : ℕ, epsSeq n τ M σK σB σT ρ ρinf γ e s ≤
        ((2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
          (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ))) ^ (2 ^ s - 1) *
          (2 : ℝ) ^ (-(2 * aExp n τ * s)) * e ∧
      ((2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
          (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ))) ^ (2 ^ s - 1) *
          (2 : ℝ) ^ (-(2 * aExp n τ * s)) * e ≤ (2 : ℝ) ^ (-(2 * aExp n τ * s)) * e) ∧
    (∀ j : ℝ, 0 ≤ j → j ≤ 2 * aExp n τ → ∀ s : ℕ,
      epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j ≤
          (2 : ℝ) ^ (-((2 * aExp n τ - j) * s)) * e / delta0 ρ ρinf ^ j ∧
        (2 : ℝ) ^ (-((2 * aExp n τ - j) * s)) * e / delta0 ρ ρinf ^ j ≤ e / delta0 ρ ρinf ^ j) ∧
    (∀ j : ℝ, 0 ≤ j → j ≤ 2 * aExp n τ - 1 →
      Summable (fun s => epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j) ∧
      ∑' s, epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j ≤
        2 * e / delta0 ρ ρinf ^ j) := sorry

/-- The KAM sequence `K₀ = K`, `K_{s+1} = K̄_s` (on `T_{r_s - 2δ_s}`); `bp:p2:iteration`. -/
def kamSeq (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (ρ ρinf : ℝ) : ℕ → (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)
  | 0 => K
  | s + 1 => newtonMap h (kamSeq h K ω ρ ρinf s) ω (rSeq ρ ρinf s - 2 * deltaSeq ρ ρinf s)

/-- Blueprint `bp:p2:iteration`, items (i)–(vi), for the explicit sequence `kamSeq`. -/
theorem iteration (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {ρ ρinf μ e : ℝ} (hρinf : 0 < ρinf)
    (hρ : ρinf < ρ) (hμ : 0 < μ) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) (hKp : IsPrimaryOnStrip K ρ)
    (hKr : IsRealOnReals K) (hball : ∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ 𝔅)
    (hDK : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ)
    (hG : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB - μ)
    (hT : IsUnit (torsionAverage h K ω).det ∧ ‖(torsionAverage h K ω)⁻¹‖ ≤ σT - μ)
    (hE : ∀ θ ∈ complexStrip n ρ, ‖invarianceError h K ω θ‖ ≤ e) (he1 : e ≤ 1)
    (hsmall : c_star n τ M σK σB σT μ * e / (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) :
    kamSeq h K ω ρ ρinf 0 = K ∧ ∀ s : ℕ,
      (Admissible σK σB σT 𝔅 h ω (rSeq ρ ρinf s)
          (μ - ∑ j ∈ Finset.range s, dSeq n τ M σK σB σT ρ ρinf γ e j)
          (epsSeq n τ M σK σB σT ρ ρinf γ e s) (kamSeq h K ω ρ ρinf s) ∧
        epsSeq n τ M σK σB σT ρ ρinf γ e s ≤ e ∧ e ≤ 1) ∧
      (∑ j ∈ Finset.range s, dSeq n τ M σK σB σT ρ ρinf γ e j ≤ μ / 4 ∧
        ∀ θ ∈ complexStrip n (rSeq ρ ρinf s), ‖kamSeq h K ω ρ ρinf s θ - K θ‖ ≤
          ∑ j ∈ Finset.range s, dSeq n τ M σK σB σT ρ ρinf γ e j) ∧
      ((∀ θ ∈ complexStrip n (rSeq ρ ρinf s), ‖fderiv ℂ (kamSeq h K ω ρ ρinf s) θ‖ ≤ σK - μ +
          ∑ j ∈ Finset.range s, n * dSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j) ∧
        σK - μ + ∑ j ∈ Finset.range s, n * dSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j ≤
          σK - μ / 2) ∧
      ((∀ θ ∈ complexStrip n (rSeq ρ ρinf s), ‖(gramMatrix (kamSeq h K ω ρ ρinf s) θ)⁻¹‖ ≤
          σB - μ + ∑ j ∈ Finset.range s,
            C_B n M σK σB σT * dSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j) ∧
        σB - μ + ∑ j ∈ Finset.range s,
          C_B n M σK σB σT * dSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j ≤ σB - μ / 2) ∧
      (‖(torsionAverage h (kamSeq h K ω ρ ρinf s) ω)⁻¹‖ ≤ σT - μ + ∑ j ∈ Finset.range s,
          2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT * dSeq n τ M σK σB σT ρ ρinf γ e j /
            deltaSeq ρ ρinf j ^ 2 ∧
        σT - μ + ∑ j ∈ Finset.range s, 2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT *
          dSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j ^ 2 ≤ σT - μ / 2) ∧
      ∀ θ ∈ complexStrip n (rSeq ρ ρinf (s + 1)),
        ‖kamSeq h K ω ρ ρinf (s + 1) θ - kamSeq h K ω ρ ρinf s θ‖ ≤
            dSeq n τ M σK σB σT ρ ρinf γ e s ∧
          ‖fderiv ℂ (kamSeq h K ω ρ ρinf (s + 1)) θ - fderiv ℂ (kamSeq h K ω ρ ρinf s) θ‖ ≤
            n * dSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s := sorry

open Classical in
/-- `K_∞ = lim K_s` on `T_{ρ∞}`, `K` elsewhere (`bp:p2:limit`). -/
def kamLimit (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (ρ ρinf : ℝ) : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ) :=
  fun θ => if θ ∈ complexStrip n ρinf then limUnder atTop (fun s => kamSeq h K ω ρ ρinf s θ)
    else K θ

/-- Blueprint `bp:p2:limit`, items (a)–(e); hypotheses those of `bp:p2:iteration`. -/
theorem limit (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {ρ ρinf μ e : ℝ} (hρinf : 0 < ρinf)
    (hρ : ρinf < ρ) (hμ : 0 < μ) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) (hKp : IsPrimaryOnStrip K ρ)
    (hKr : IsRealOnReals K) (hball : ∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ 𝔅)
    (hDK : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ)
    (hG : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB - μ)
    (hT : IsUnit (torsionAverage h K ω).det ∧ ‖(torsionAverage h K ω)⁻¹‖ ≤ σT - μ)
    (hE : ∀ θ ∈ complexStrip n ρ, ‖invarianceError h K ω θ‖ ≤ e) (he1 : e ≤ 1)
    (hsmall : c_star n τ M σK σB σT μ * e / (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) :
    (TendstoUniformlyOn (fun s => kamSeq h K ω ρ ρinf s) (kamLimit h K ω ρ ρinf) atTop
        (complexStrip n ρinf) ∧
      TendstoUniformlyOn (fun s θ => fderiv ℂ (kamSeq h K ω ρ ρinf s) θ)
        (fderiv ℂ (kamLimit h K ω ρ ρinf)) atTop (complexStrip n ρinf) ∧
      DifferentiableOn ℂ (kamLimit h K ω ρ ρinf) (complexStrip n ρinf)) ∧
    (IsPrimaryOnStrip (kamLimit h K ω ρ ρinf) ρinf ∧ IsRealOnReals (kamLimit h K ω ρ ρinf)) ∧
    ((∀ θ ∈ complexStrip n ρinf, ‖kamLimit h K ω ρ ρinf θ - K θ‖ ≤
        2 * C_DK n τ M σK σB σT * e / (γ ^ 2 * delta0 ρ ρinf ^ aExp n τ)) ∧
      2 * C_DK n τ M σK σB σT * e / (γ ^ 2 * delta0 ρ ρinf ^ aExp n τ) ≤ μ / 4) ∧
    (∀ θ ∈ complexStrip n ρinf, Metric.ball (kamLimit h K ω ρ ρinf θ) (μ / 2) ⊆ 𝔅 ∧
      ‖fderiv ℂ (kamLimit h K ω ρ ρinf) θ‖ ≤ σK - μ / 2) ∧
    (∀ θ ∈ complexStrip n ρinf, invarianceError h (kamLimit h K ω ρ ρinf) ω θ = 0) := sorry

end KAM.Apost

/-! ## §P2.12 `KAM/Apost/G1.lean`: `bp:p2:g1`; provider assembly check -/

namespace KAM.Apost

/-- `C₁ = ρ^{4τ} max {γ̄⁴, 𝔠_* δ₀^{-2a}}`. -/
def C_1 (n : ℕ) (τ ρ ρinf M σK σB σT μ γbar : ℝ) : ℝ :=
  ρ ^ (4 * τ) * max (γbar ^ 4) (c_star n τ M σK σB σT μ * delta0 ρ ρinf ^ (-(2 * aExp n τ)))

/-- `C₂ = 2 C_ΔK ρ^{2τ} δ₀^{-a}`. -/
def C_2 (n : ℕ) (τ ρ ρinf M σK σB σT : ℝ) : ℝ :=
  2 * C_DK n τ M σK σB σT * ρ ^ (2 * τ) * delta0 ρ ρinf ^ (-aExp n τ)

/-- Blueprint `bp:p2:g1`: the frozen G1 with the explicit `C₁`, `C₂` (body copied verbatim from
`KAM/Frozen/Theorems/AposterioriKam.lean`, `C₁ C₂` instantiated). -/
theorem g1_explicit {n : ℕ} (hn : 2 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 ≤ τ)
    {ρ ρinf : ℝ} (hρinf : 0 < ρinf) (hρinfρ : ρinf < ρ)
    {M σK σB σT μ : ℝ} (hM : 0 < M) (hσK : 0 < σK) (hσB : 0 < σB) (hσT : 0 < σT) (hμ : 0 < μ)
    {γbar : ℝ} (hγbar : 0 < γbar) :
    0 < C_1 n τ ρ ρinf M σK σB σT μ γbar ∧ 0 < C_2 n τ ρ ρinf M σK σB σT ∧
      ∀ (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))) (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
        (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (γ e : ℝ),
        IsOpen 𝔅 →
        (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ 𝔅) →
        DifferentiableOn ℂ h 𝔅 →
        (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, h (z.1 + (fun i => (k i : ℂ)), z.2) = h z) →
        (∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ 𝔅 →
          (h ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
        (∀ z ∈ 𝔅, ‖fderiv ℂ h z‖ ≤ M ∧ ‖hamiltonianVectorFieldℂ h z‖ ≤ M ∧
          ‖fderiv ℂ (hamiltonianVectorFieldℂ h) z‖ ≤ M ∧
          ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ h) z‖ ≤ M) →
        DifferentiableOn ℂ K (complexStrip n ρ) → IsPrimaryOnStrip K ρ → IsRealOnReals K →
        (∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ 𝔅) →
        (∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ) →
        (∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧
          ∀ i, ∑ j, ‖(gramMatrix K θ)⁻¹ i j‖ ≤ σB - μ) →
        IsUnit (torsionAverage h K ω).det →
        (∀ i, ∑ j, ‖(torsionAverage h K ω)⁻¹ i j‖ ≤ σT - μ) →
        0 < γ → γ ≤ γbar → IsDiophantine γ τ ω →
        (∀ θ ∈ complexStrip n ρ, ‖invarianceError h K ω θ‖ ≤ e) →
        C_1 n τ ρ ρinf M σK σB σT μ γbar * e / (γ ^ 4 * ρ ^ (4 * τ)) < 1 →
        ∃ Kinf : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ),
          DifferentiableOn ℂ Kinf (complexStrip n ρinf) ∧ IsPrimaryOnStrip Kinf ρinf ∧
          IsRealOnReals Kinf ∧
          (∀ θ ∈ complexStrip n ρinf, invarianceError h Kinf ω θ = 0) ∧
          (∀ θ ∈ complexStrip n ρinf, Metric.ball (Kinf θ) (μ / 2) ⊆ 𝔅) ∧
          (∀ θ ∈ complexStrip n ρinf, ‖fderiv ℂ Kinf θ‖ ≤ σK - μ / 2) ∧
          ∀ θ ∈ complexStrip n ρinf,
            ‖Kinf θ - K θ‖ ≤ C_2 n τ ρ ρinf M σK σB σT * e / (γ ^ 2 * ρ ^ (2 * τ)) := sorry

/-- Assembly check: the frozen G1 type (copied verbatim) from `g1_explicit`, no `sorry` here. -/
example {n : ℕ} (hn : 2 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 ≤ τ)
    {ρ ρinf : ℝ} (hρinf : 0 < ρinf) (hρinfρ : ρinf < ρ)
    {M σK σB σT μ : ℝ} (hM : 0 < M) (hσK : 0 < σK) (hσB : 0 < σB) (hσT : 0 < σT) (hμ : 0 < μ)
    {γbar : ℝ} (hγbar : 0 < γbar) :
    ∃ C₁ C₂ : ℝ, 0 < C₁ ∧ 0 < C₂ ∧
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
          ∀ θ ∈ complexStrip n ρinf, ‖Kinf θ - K θ‖ ≤ C₂ * e / (γ ^ 2 * ρ ^ (2 * τ)) :=
  ⟨_, _, g1_explicit hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar⟩

end KAM.Apost

/-! ## §P3.1 `KAM/Uniq/Standing.lean`: `bp:p3:standing`, constants `eq:p3:constants`, `eq:p3:Cquad`,
threshold `eq:p3:c` -/

namespace KAM.Uniq

open KAM.Torus

/-- The parameters fixed throughout Part 3: `n ≥ 2`, `τ ≥ n - 1`, `ρ, M, σ_K, σ_B, σ_T, μ > 0`. -/
structure Params (n : ℕ) (τ ρ M σK σB σT μ : ℝ) : Prop where
  two_le : 2 ≤ n
  tau_ge : (n : ℝ) - 1 ≤ τ
  ρ_pos : 0 < ρ
  M_pos : 0 < M
  σK_pos : 0 < σK
  σB_pos : 0 < σB
  σT_pos : 0 < σT
  μ_pos : 0 < μ

/-- Blueprint `bp:p3:standing` (S1): the Hamiltonian (frozen G2, H1, verbatim). -/
structure S1 {n : ℕ} (M : ℝ) (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) : Prop where
  isOpen : IsOpen 𝔅
  transl_mem : ∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ 𝔅
  holo : DifferentiableOn ℂ h 𝔅
  periodic : ∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, h (z.1 + (fun i => (k i : ℂ)), z.2) = h z
  real : ∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ 𝔅 →
    (h ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0
  bounds : ∀ z ∈ 𝔅, ‖fderiv ℂ h z‖ ≤ M ∧ ‖hamiltonianVectorFieldℂ h z‖ ≤ M ∧
    ‖fderiv ℂ (hamiltonianVectorFieldℂ h) z‖ ≤ M ∧
    ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ h) z‖ ≤ M

/-- Blueprint `bp:p3:standing` (S2): the frequency. -/
structure S2 {n : ℕ} (τ : ℝ) (ω : Fin n → ℝ) (γ : ℝ) : Prop where
  gamma_pos : 0 < γ
  dio : IsDiophantine γ τ ω

/-- Blueprint `bp:p3:standing` (S3): the reference torus. -/
structure S3 {n : ℕ} (ρ σK σB σT μ : ℝ) (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ω : Fin n → ℝ)
    (K₁ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) : Prop where
  holo : DifferentiableOn ℂ K₁ (complexStrip n ρ)
  primary : IsPrimaryOnStrip K₁ ρ
  real : IsRealOnReals K₁
  ball_sub : ∀ θ ∈ complexStrip n ρ, Metric.ball (K₁ θ) μ ⊆ 𝔅
  deriv_le : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K₁ θ‖ ≤ σK - μ
  gram : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K₁ θ).det ∧ ‖(gramMatrix K₁ θ)⁻¹‖ ≤ σB - μ
  twist : IsUnit (torsionAverage h K₁ ω).det ∧ ‖(torsionAverage h K₁ ω)⁻¹‖ ≤ σT - μ
  invariant : ∀ θ ∈ complexStrip n ρ, invarianceError h K₁ ω θ = 0

/-- Blueprint `bp:p3:standing` (S4): the second torus. -/
structure S4 {n : ℕ} (ρ : ℝ) (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ω : Fin n → ℝ)
    (K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) : Prop where
  holo : DifferentiableOn ℂ K₂ (complexStrip n ρ)
  primary : IsPrimaryOnStrip K₂ ρ
  real : IsRealOnReals K₂
  mem : ∀ θ ∈ complexStrip n ρ, K₂ θ ∈ 𝔅
  invariant : ∀ θ ∈ complexStrip n ρ, invarianceError h K₂ ω θ = 0

variable (n : ℕ) (τ ρ M σK σB σT μ : ℝ)

def C_P : ℝ := 2 * n * σK * (1 + σB)
def C_Gamma : ℝ := C_P n σK σB * M
def C_tor : ℝ := C_P n σK σB ^ 2 * M * (1 + 4 * n * C_P n σK σB / ρ)
def C_coh : ℝ := cohConst n τ
def C_N : ℝ := 1 / 2 * C_P n σK σB * M *
  ((1 + σT * C_tor n ρ M σK σB) * C_coh n τ + σT * C_Gamma n M σK σB * ρ ^ (τ + n))
def C_L : ℝ := C_coh n τ * (C_tor n ρ M σK σB * C_N n τ ρ M σK σB σT +
  1 / 2 * C_P n σK σB * M * C_Gamma n M σK σB * ρ ^ (τ + n))
def C_quad : ℝ := C_P n σK σB *
  max (C_L n τ ρ M σK σB σT) (C_Gamma n M σK σB * ρ ^ (τ + n) * C_N n τ ρ M σK σB σT)
/-- The threshold `c` of G2, `eq:p3:c` (step `step:p3:g2-constant`). -/
def threshold : ℝ := (1 + 2 * C_P n σK σB * σK)⁻¹ *
  min (ρ ^ (1 - 2 * τ) / (4 * n * C_P n σK σB * C_Gamma n M σK σB ^ 2))
    (min (μ * ρ ^ (-(2 * τ)) / (2 * C_Gamma n M σK σB ^ 2))
      ((ρ / 32) ^ (2 * (τ + n)) * ρ ^ (-(2 * τ)) / (2 * C_quad n τ ρ M σK σB σT)))

variable {n τ ρ M σK σB σT μ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
  {K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- Blueprint `bp:p3:standing` (claim after the assumption): (S1), (S2) contain
`bp:p2:standing`. -/
theorem standing_of (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ) :
    KAM.Apost.Standing n τ M σK σB σT 𝔅 h ω γ := sorry

/-! ## §P3.2 `KAM/Uniq/Frame.lean`: `bp:p3:matrix-norms`, `lagrangian`, `frequency-bound`,
`reducibility`, `torsion-bound` -/

/-- Blueprint `bp:p3:matrix-norms`. -/
theorem matrix_norms (hP : Params n τ ρ M σK σB σT μ) (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) :
    ∀ θ ∈ complexStrip n ρ,
      ‖tangentMat K₁ θ‖ ≤ σK ∧ ‖(gramMatrix K₁ θ)⁻¹‖ ≤ σB ∧ ‖normalMat K₁ θ‖ ≤ σK * σB ∧
      ‖(gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ‖ ≤ C_P n σK σB ∧
      ‖(tangentMat K₁ θ)ᵀ * omegaZeroMatrix n‖ ≤ C_P n σK σB ∧ ‖frameMat K₁ θ‖ ≤ C_P n σK σB ∧
      ‖Matrix.fromRows ((gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ)
        (-((tangentMat K₁ θ)ᵀ * omegaZeroMatrix n))‖ ≤ C_P n σK σB := sorry

/-- Blueprint `bp:p3:lagrangian`. -/
theorem lagrangian (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) : ∀ θ ∈ complexStrip n ρ, lagrangeMat K₁ θ = 0 := sorry

/-- Blueprint `bp:p3:frequency-bound`. -/
theorem frequency_bound (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) : ‖ω‖ ≤ C_Gamma n M σK σB ∧ γ ≤ C_Gamma n M σK σB := sorry

/-- Blueprint `bp:p3:reducibility`. -/
theorem reducibility (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) :
    DifferentiableOn ℂ (fun θ => (gramMatrix K₁ θ)⁻¹) (complexStrip n ρ) ∧
    DifferentiableOn ℂ (normalMat K₁) (complexStrip n ρ) ∧
    DifferentiableOn ℂ (frameMat K₁) (complexStrip n ρ) ∧
    ∀ θ ∈ complexStrip n ρ, IsUnit (frameMat K₁ θ).det ∧
      (frameMat K₁ θ)⁻¹ = Matrix.fromRows ((gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ)
        (-((tangentMat K₁ θ)ᵀ * omegaZeroMatrix n)) ∧
      (frameMat K₁ θ)ᵀ * omegaZeroMatrix n * frameMat K₁ θ = omegaZeroMatrix n ∧
      torsion h K₁ ω θ = (gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ * normalFieldMat h K₁ ω θ ∧
      linMat h K₁ θ * frameMat K₁ θ - fderiv ℂ (frameMat K₁) θ (fun l => (ω l : ℂ)) =
        frameMat K₁ θ * triangularMat (torsion h K₁ ω θ) := sorry

/-- Blueprint `bp:p3:torsion-bound`. -/
theorem torsion_bound (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) :
    DifferentiableOn ℂ (torsion h K₁ ω) (complexStrip n ρ) ∧
    Continuous (fun x : Fin n → ℝ => torsion h K₁ ω (fun i => (x i : ℂ))) ∧
    (∀ θ ∈ complexStrip n (3 * ρ / 4), ‖torsion h K₁ ω θ‖ ≤ C_tor n ρ M σK σB) ∧
    (∀ i j, IntegrableOn (fun x : Fin n → ℝ => torsion h K₁ ω (fun l => (x l : ℂ)) i j)
      (Set.pi Set.univ fun _ => Set.Icc (0 : ℝ) 1)) ∧
    torsionAverage h K₁ ω = avg (torsion h K₁ ω) := sorry

/-! ## §P3.3 `KAM/Uniq/Phase.lean`, `KAM/Uniq/Difference.lean`, `KAM/Uniq/Quadratic.lean` -/

/-- `Δ = K₂(· + ψ) - K₁`, `eq:p3:Delta`. -/
def diffMap (K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ψ : Fin n → ℝ) (θ : Fin n → ℂ) :
    (Fin n → ℂ) × (Fin n → ℂ) :=
  K₂ (θ + fun i => (ψ i : ℂ)) - K₁ θ

/-- `R = X_h(K₁ + Δ) - X_h(K₁) - DX_h(K₁) Δ`. -/
def remainder (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K₁ Δ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (θ : Fin n → ℂ) : (Fin n → ℂ) × (Fin n → ℂ) :=
  hamiltonianVectorFieldℂ h (K₁ θ + Δ θ) - hamiltonianVectorFieldℂ h (K₁ θ) -
    fderiv ℂ (hamiltonianVectorFieldℂ h) (K₁ θ) (Δ θ)

/-- `ξ = P⁻¹ Δ`. -/
def diffXi (K₁ Δ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (θ : Fin n → ℂ) :
    Fin n ⊕ Fin n → ℂ :=
  (frameMat K₁ θ)⁻¹ *ᵥ sumVec n (Δ θ)

/-- `q = P⁻¹ R`. -/
def diffQ (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K₁ Δ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (θ : Fin n → ℂ) : Fin n ⊕ Fin n → ℂ :=
  (frameMat K₁ θ)⁻¹ *ᵥ sumVec n (remainder h K₁ Δ θ)

/-- Blueprint `bp:p3:phase`, with `η` any bound of `|K₂ - K₁|` on `T_ρ`. -/
theorem phase (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) (h4 : S4 ρ 𝔅 h ω K₂) {η : ℝ}
    (hη : ∀ θ ∈ complexStrip n ρ, ‖K₂ θ - K₁ θ‖ ≤ η)
    (hsmall : η ≤ ρ / (4 * n * C_P n σK σB * (1 + 2 * C_P n σK σB * σK))) :
    ∃ ψ : Fin n → ℝ, ‖ψ‖ ≤ 2 * C_P n σK σB * η ∧
      avg (fun θ => ((gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ) *ᵥ
        sumVec n (diffMap K₁ K₂ ψ θ)) = 0 := sorry

/-- Blueprint `bp:p3:difference-equation`, items (a)–(c), with `Δ = diffMap K₁ K₂ ψ`. -/
theorem difference_equation (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) (h4 : S4 ρ 𝔅 h ω K₂) (ψ : Fin n → ℝ)
    (hΔ : ∀ θ ∈ complexStrip n ρ, ‖diffMap K₁ K₂ ψ θ‖ < μ) :
    (DifferentiableOn ℂ (diffMap K₁ K₂ ψ) (complexStrip n ρ) ∧
      DifferentiableOn ℂ (diffXi K₁ (diffMap K₁ K₂ ψ)) (complexStrip n ρ) ∧
      DifferentiableOn ℂ (diffQ h K₁ (diffMap K₁ K₂ ψ)) (complexStrip n ρ) ∧
      IsPeriodicOn (diffMap K₁ K₂ ψ) ρ ∧ IsPeriodicOn (diffXi K₁ (diffMap K₁ K₂ ψ)) ρ ∧
      ∀ θ ∈ complexStrip n ρ,
        sumVec n (diffMap K₁ K₂ ψ θ) = frameMat K₁ θ *ᵥ diffXi K₁ (diffMap K₁ K₂ ψ) θ ∧
        (fun i => diffXi K₁ (diffMap K₁ K₂ ψ) θ (Sum.inl i)) =
          ((gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ) *ᵥ sumVec n (diffMap K₁ K₂ ψ θ) ∧
        (fun i => diffXi K₁ (diffMap K₁ K₂ ψ) θ (Sum.inr i)) =
          -(((tangentMat K₁ θ)ᵀ * omegaZeroMatrix n) *ᵥ sumVec n (diffMap K₁ K₂ ψ θ)) ∧
        (fun i => diffQ h K₁ (diffMap K₁ K₂ ψ) θ (Sum.inl i)) =
          ((gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ) *ᵥ
            sumVec n (remainder h K₁ (diffMap K₁ K₂ ψ) θ) ∧
        (fun i => diffQ h K₁ (diffMap K₁ K₂ ψ) θ (Sum.inr i)) =
          -(((tangentMat K₁ θ)ᵀ * omegaZeroMatrix n) *ᵥ
            sumVec n (remainder h K₁ (diffMap K₁ K₂ ψ) θ))) ∧
    (∀ θ ∈ complexStrip n ρ,
      fderiv ℂ (fun θ' i => diffXi K₁ (diffMap K₁ K₂ ψ) θ' (Sum.inl i)) θ
          (fun l => (ω l : ℂ)) =
        torsion h K₁ ω θ *ᵥ (fun i => diffXi K₁ (diffMap K₁ K₂ ψ) θ (Sum.inr i)) +
          (fun i => diffQ h K₁ (diffMap K₁ K₂ ψ) θ (Sum.inl i)) ∧
      fderiv ℂ (fun θ' i => diffXi K₁ (diffMap K₁ K₂ ψ) θ' (Sum.inr i)) θ
          (fun l => (ω l : ℂ)) =
        fun i => diffQ h K₁ (diffMap K₁ K₂ ψ) θ (Sum.inr i)) ∧
    (∀ θ ∈ complexStrip n ρ,
      ‖diffXi K₁ (diffMap K₁ K₂ ψ) θ‖ ≤ C_P n σK σB * ‖diffMap K₁ K₂ ψ θ‖ ∧
      ‖diffMap K₁ K₂ ψ θ‖ ≤ C_P n σK σB * ‖diffXi K₁ (diffMap K₁ K₂ ψ) θ‖ ∧
      ‖diffQ h K₁ (diffMap K₁ K₂ ψ) θ‖ ≤ 1 / 2 * C_P n σK σB * M * ‖diffMap K₁ K₂ ψ θ‖ ^ 2) :=
  sorry

/-- Blueprint `bp:p3:quadratic`, sup norms as pointwise bounds `Y`. -/
theorem quadratic (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) (h4 : S4 ρ 𝔅 h ω K₂) (ψ : Fin n → ℝ)
    (hΔ : ∀ θ ∈ complexStrip n ρ, ‖diffMap K₁ K₂ ψ θ‖ < μ)
    (havg : avg (fun θ => ((gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ) *ᵥ
      sumVec n (diffMap K₁ K₂ ψ θ)) = 0) :
    ∀ ρ'' ρ' : ℝ, 0 < ρ'' → ρ'' < ρ' → ρ' ≤ 3 * ρ / 4 →
      ∀ Y : ℝ, (∀ θ ∈ complexStrip n ρ', ‖diffMap K₁ K₂ ψ θ‖ ≤ Y) →
        ∀ θ ∈ complexStrip n ρ'', ‖diffMap K₁ K₂ ψ θ‖ ≤
          C_quad n τ ρ M σK σB σT * (γ ^ 2)⁻¹ * ((ρ' - ρ'') / 2) ^ (-(2 * (τ + n))) * Y ^ 2 :=
  sorry

/-! ## §P3.4 `KAM/Uniq/G2.lean`: the proof of `bp:p0:g2`; provider assembly check -/

/-- The frozen G2 with the explicit threshold `c = threshold …` (`eq:p3:c`); body copied verbatim
from `KAM/Frozen/Theorems/LocalUniquenessFlow.lean`. Proof: steps `step:p3:g2-*`. -/
theorem g2_explicit {n : ℕ} (hn : 2 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 ≤ τ)
    {ρ : ℝ} (hρ : 0 < ρ)
    {M σK σB σT μ : ℝ} (hM : 0 < M) (hσK : 0 < σK) (hσB : 0 < σB) (hσT : 0 < σT) (hμ : 0 < μ) :
    0 < threshold n τ ρ M σK σB σT μ ∧
      ∀ (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))) (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
        (K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (γ : ℝ),
        IsOpen 𝔅 →
        (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ 𝔅) →
        DifferentiableOn ℂ h 𝔅 →
        (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, h (z.1 + (fun i => (k i : ℂ)), z.2) = h z) →
        (∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ 𝔅 →
          (h ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
        (∀ z ∈ 𝔅, ‖fderiv ℂ h z‖ ≤ M ∧ ‖hamiltonianVectorFieldℂ h z‖ ≤ M ∧
          ‖fderiv ℂ (hamiltonianVectorFieldℂ h) z‖ ≤ M ∧
          ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ h) z‖ ≤ M) →
        DifferentiableOn ℂ K₁ (complexStrip n ρ) → IsPrimaryOnStrip K₁ ρ → IsRealOnReals K₁ →
        (∀ θ ∈ complexStrip n ρ, Metric.ball (K₁ θ) μ ⊆ 𝔅) →
        (∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K₁ θ‖ ≤ σK - μ) →
        (∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K₁ θ).det ∧
          ∀ i, ∑ j, ‖(gramMatrix K₁ θ)⁻¹ i j‖ ≤ σB - μ) →
        IsUnit (torsionAverage h K₁ ω).det →
        (∀ i, ∑ j, ‖(torsionAverage h K₁ ω)⁻¹ i j‖ ≤ σT - μ) →
        0 < γ → IsDiophantine γ τ ω →
        (∀ θ ∈ complexStrip n ρ, invarianceError h K₁ ω θ = 0) →
        DifferentiableOn ℂ K₂ (complexStrip n ρ) → IsPrimaryOnStrip K₂ ρ → IsRealOnReals K₂ →
        (∀ θ ∈ complexStrip n ρ, K₂ θ ∈ 𝔅) →
        (∀ θ ∈ complexStrip n ρ, invarianceError h K₂ ω θ = 0) →
        (∀ θ ∈ complexStrip n ρ,
          ‖K₁ θ - K₂ θ‖ ≤ threshold n τ ρ M σK σB σT μ * γ ^ 2 * ρ ^ (2 * τ)) →
        ∃ φ : Fin n → ℝ, ∀ θ ∈ complexStrip n (ρ / 2), K₂ θ = K₁ (θ + (fun i => (φ i : ℂ))) :=
  sorry

/-- Assembly check: the frozen G2 type (copied verbatim) from `g2_explicit`, no `sorry` here. -/
example {n : ℕ} (hn : 2 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 ≤ τ)
    {ρ : ℝ} (hρ : 0 < ρ)
    {M σK σB σT μ : ℝ} (hM : 0 < M) (hσK : 0 < σK) (hσB : 0 < σB) (hσT : 0 < σT) (hμ : 0 < μ) :
    ∃ c : ℝ, 0 < c ∧
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
        ∃ φ : Fin n → ℝ, ∀ θ ∈ complexStrip n (ρ / 2), K₂ θ = K₁ (θ + (fun i => (φ i : ℂ))) :=
  ⟨_, g2_explicit hn hτ hρ hM hσK hσB hσT hμ⟩

end KAM.Uniq
```
