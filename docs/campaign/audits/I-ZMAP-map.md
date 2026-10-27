# I-ZMAP: Zohar's existing results mapped onto the Part 1 graph nodes

Branch `k/zmap`. All declarations are in namespace `KAM`; files are relative to the repository root.
"Zohar" means the files `KAM/Strip/{Cauchy,Regularity,HigherCauchy,Averages,Fourier}.lean` and
`KAM/Matrix/Neumann.lean`. "Adapter" means a declaration of this package in `KAM/Strip/Bridges.lean`
or `KAM/Matrix/Bridges.lean`. No file of Zohar's was edited.

Verdicts:
- COVERED: a declaration states the node, exactly or more strongly (differences listed);
- PARTIAL: part of the node is stated; the missing part is listed;
- NONE: no declaration; BYPASSED means the parent node is proved by another route, so the step has no
  separate content (same usage as for `li-cubes`, `li-image` in I-LIP).

## Conventions that matter for the comparison

- **Sup norms** are pointwise: `∀ θ ∈ complexStrip n ρ, ‖u θ‖ ≤ A`, with `A` playing `‖u‖_ρ`. Taking `A` to be the
  supremum recovers the blueprint's form. Zohar and the adapters agree on this.
- **Periodicity** is coordinatewise: `u (z + Pi.single i 1) = u z` for `z ∈ T_ρ` (or all `x ∈ ℝⁿ`). The blueprint's
  `u(θ+k) = u(θ)`, `k ∈ ℤⁿ`, implies it (take `k = e_i`); the converse is `periodic_int_shift` of I-P1B
  (`KAM/Strip/Periodic.lean`). So Zohar's hypotheses are weaker: his theorems are the stronger ones.
- **Norms.** Vectors carry the Pi (max) norm. Matrices carry `open scoped Matrix.Norms.Operator`, the maximum absolute
  row sum, as in `KAM/Matrix/Norms.lean` (I-MAT, `matrix_operator_norm_rowSum`). Zohar's statements for a target
  `F` hold for scalar, vector and matrix targets; I checked by instantiation that
  `differentiableOn_fderiv_of_isOpen`, `norm_iteratedFDeriv_two_le_of_closedBall`, `torusAverage_complex_*`,
  `norm_torusAverage_le_of_strip_bound`, `torusAverage_fderiv_eq_zero` elaborate for
  `F = Matrix (Fin p) (Fin q) ℂ`. The adapters take `[FiniteDimensional ℂ W]`, which is the
  blueprint's "`W` a finite-dimensional complex normed space".
- **Averages.** `torusAverage f = ∫ x in [0,1]ⁿ, f x` (Bochner integral in the target space). For matrices the
  blueprint, and the frozen `KAM.torsionAverage`, integrate entrywise; the two agree
  (`torusAverage_matrix_apply`, `KAM/Strip/Bridges.lean:282`).
- **Directional derivatives.** `∂_ℓ u = fderiv ℂ u θ (Pi.single ℓ 1)`, `∂_ω u = fderiv ℂ u θ ω`.

## Summary table

| Node | Declarations (file:line) | Verdict | Adapter (file:line) |
|---|---|---|---|
| `bp:p1:neumann` (L175) | `matrix_isUnit_add_of_inv_norm_mul_le_half`, `matrix_norm_inv_add_le`, `matrix_norm_inv_add_sub_inv_le`, `matrix_neumann_uniform` (`KAM/Matrix/Neumann.lean:104,110,116,124`); ring level `isUnit_add_of_inverse_norm_mul_le_half`, `norm_inverse_add_le`, `norm_inverse_add_sub_inverse_le` (`:33,51,67`) | COVERED for `Matrix (Fin n) (Fin n) ℂ` | `neumann`, `neumann_pointwise` (`KAM/Matrix/Bridges.lean:33,46`): any finite index type, e.g. `Fin n ⊕ Fin n` |
| `bp:p1:holomorphic-regularity` (L225) | `differentiableOn_fderiv_of_isOpen` (`KAM/Strip/Regularity.lean:178`), `..._pi` (`:120`), `contDiffOn_infty_of_differentiableOn` (`:163`), `contDiffOn_nat_of_differentiableOn` (`:173`) | PARTIAL: `DF` holomorphic and `C^∞` only | `holomorphic_regularity` (`KAM/Strip/Bridges.lean:127`), `holomorphic_regularity_of_finiteDimensional` (`:93`), `differentiableOn_iteratedFDeriv_of_differentiableOn` (`:60`), `fderiv_apply_comm_of_differentiableOn` (`:70`) |
| `bp:p1:cauchy-open` (L472) | `norm_coordinate_fderiv_le_of_closedBall` (`KAM/Strip/Cauchy.lean:87`), `norm_fderiv_le_of_closedBall` (`:80`), `norm_iteratedFDeriv_two_le_of_closedBall` (`KAM/Strip/HigherCauchy.lean:45`), `norm_iteratedFDeriv_three_le_of_closedBall` (`:60`) | COVERED | `cauchy_open` (`KAM/Strip/Bridges.lean:152`): packaging only |
| `bp:p1:cauchy-strip` (L566) | `norm_coordinate_fderiv_le_of_mem_complexStrip` (`KAM/Strip/Cauchy.lean:126`), `norm_fderiv_le_of_mem_complexStrip` (`:117`) | PARTIAL: `∂_ℓ` part exact; `Du` part has the sharper `A/δ`, not the stated `n δ⁻¹ A` | `cauchy_strip` (`KAM/Strip/Bridges.lean:179`) |
| `bp:p1:cauchy-corollaries` (L615) | none (the coordinate bound at `Cauchy.lean:126` is the input) | NONE | `cauchy_corollaries_transpose` (`:207`), `cauchy_corollaries_directional` (`:232`), `cauchy_corollaries_directional_real` (`:249`) |
| `bp:p1:averages-real` (L644) | `torusAverage_coordinate_eq_zero` (`KAM/Strip/Averages.lean:108`), `torusAverage_direction_eq_zero` (`:126`), `torusAverage_fderiv_eq_zero` (`:142`) | COVERED | none needed |
| `bp:p1:averages` (L663) | `torusAverage_complex_coordinate_eq_zero` (`KAM/Strip/Averages.lean:172`), `torusAverage_complex_direction_eq_zero` (`:199`), `norm_torusAverage_le_of_strip_bound` (`:220`) | COVERED | `averages` (`KAM/Strip/Bridges.lean:266`): packaging only |
| `bp:p1:averages-matrix` (L684) | `norm_torusAverage_le` (`KAM/Strip/Averages.lean:43`), `torusAverage_fderiv_eq_zero` (`:142`) | PARTIAL: stated for the Bochner average in the matrix space, not the entrywise average | `averages_matrix` (`KAM/Strip/Bridges.lean:294`), `torusAverage_matrix_apply` (`:282`) |
| `bp:p1:decay` (L784) | `norm_torusCoeff_le_of_lt` (`KAM/Strip/Fourier.lean:229`); boundary radius `norm_torusCoeff_le` (`:291`) | COVERED (scalar-valued `u`) | none needed |

After the adapters every one of the nine nodes has a single declaration whose statement is the blueprint's.

## Node by node

### `bp:p1:neumann` (L175-L179, proof L181-L201)

Blueprint: `A` invertible, `|A⁻¹||Δ| ≤ 1/2` implies `A+Δ` invertible, `|(A+Δ)⁻¹| ≤ 2|A⁻¹|`,
`|(A+Δ)⁻¹ - A⁻¹| ≤ 2|A⁻¹|²|Δ|`; pointwise for matrix-valued functions with sup norms.

Zohar, `KAM/Matrix/Neumann.lean`: for `A Δ : Matrix (Fin n) (Fin n) ℂ`, `hA : IsUnit A`,
`hsmall : ‖A⁻¹‖ * ‖Δ‖ ≤ 1 / 2`: `matrix_isUnit_add_of_inv_norm_mul_le_half` (:104) gives `IsUnit (A + Δ)`;
`matrix_norm_inv_add_le` (:110) gives `‖(A + Δ)⁻¹‖ ≤ 2 * ‖A⁻¹‖`; `matrix_norm_inv_add_sub_inv_le` (:116) gives
`‖(A + Δ)⁻¹ - A⁻¹‖ ≤ 2 * ‖A⁻¹‖ ^ 2 * ‖Δ‖`. `matrix_neumann_uniform` (:124) is the pointwise form on any set
`s` of any type, with `B ε`, `0 ≤ B`, `B * ε ≤ 1/2`, `‖(A x)⁻¹‖ ≤ B`, `‖Δ x‖ ≤ ε` and the conclusions
`IsUnit ∧ ≤ 2 * B ∧ ≤ 2 * B ^ 2 * ε`. With `B`, `ε` the suprema this is the sup form. The ring-level lemmas
(:33, :45, :51, :67) hold in any complete normed ring.

Differences: none in strength. `matrix_*` lemmas are for index `Fin n` only; the blueprint's later uses are
`2n × 2n`, and I-MAT indexes those by `Fin n ⊕ Fin n`, so the adapter `neumann` / `neumann_pointwise`
(`KAM/Matrix/Bridges.lean`) restates both for `Matrix ι ι ℂ`, `ι` a finite type, derived from the ring-level lemmas.

| Step | Declaration | Verdict |
|---|---|---|
| `step:p1:neu-series` | none: invertibility of `I + X` comes from Mathlib's `isUnit_one_sub_of_norm_lt_one` (used at `Neumann.lean:39`); `S = Σ(-X)^j`, `‖S‖ ≤ 2`, `S(I+X) = I` are never stated | NONE, BYPASSED (parent proved by the resolvent route) |
| `step:p1:neu-inverse` | `isUnit_add_of_inverse_norm_mul_le_half` (:33), `norm_inverse_add_le` (:51) | PARTIAL: invertibility and the bound `2‖A⁻¹‖` yes; the formula `(A+Δ)⁻¹ = S A⁻¹` no (no `S`) |
| `step:p1:neu-difference` | `inverse_sub_inverse_add` (:45), `norm_inverse_add_sub_inverse_le` (:67) | COVERED (identity `A⁻¹ - (A+Δ)⁻¹ = A⁻¹ Δ (A+Δ)⁻¹`, equivalent to the blueprint's `(A+Δ)⁻¹ - A⁻¹ = -(A+Δ)⁻¹ Δ A⁻¹`) |
| `step:p1:neu-pointwise` | `matrix_neumann_uniform` (:124); adapter `neumann_pointwise` | COVERED |

### `bp:p1:holomorphic-regularity` (L225-L234, proof L236-L292)

Blueprint conclusions and where each stands (`F : U → W` holomorphic, `U ⊆ ℂ^m` open, `W` finite-dimensional):

| Conclusion | Zohar | Adapter |
|---|---|---|
| `DF` holomorphic | `differentiableOn_fderiv_of_isOpen` (`Regularity.lean:178`, any finite-dimensional complex `E`), `differentiableOn_fderiv_of_isOpen_pi` (:120, `ℂⁿ`), both with `[CompleteSpace W] [SecondCountableTopology W]` | in `holomorphic_regularity` |
| every `D^jF` (`j ≥ 1`) exists and is holomorphic | not stated (only `ContDiffOn`) | `differentiableOn_iteratedFDeriv_of_differentiableOn` (Bridges:60) |
| `F` is `C^∞` | `contDiffOn_infty_of_differentiableOn` (:163), `contDiffOn_nat_of_differentiableOn` (:173) | in `holomorphic_regularity` |
| `‖D^{j+1}F z‖ = ‖D^j(DF) z‖ = ‖D(D^jF) z‖` | not stated; Mathlib `norm_iteratedFDeriv_fderiv`, `norm_fderiv_iteratedFDeriv` hold without hypotheses (Zohar uses the first at `HigherCauchy.lean:51`) | in `holomorphic_regularity` |
| `D²F(z)[v,w] = D²F(z)[w,v]` | none | `fderiv_apply_comm_of_differentiableOn` (Bridges:70), via Mathlib `second_derivative_symmetric_of_eventually`; in `holomorphic_regularity` as `iteratedFDeriv ℂ 2 F z ![v, w] = iteratedFDeriv ℂ 2 F z ![w, v]` |
| `∂_i ∂_j F = ∂_j ∂_i F` | none | in `holomorphic_regularity` (coordinate form `fderiv ℂ (fun x => fderiv ℂ F x (Pi.single j 1)) z (Pi.single i 1)`) |

`holomorphic_regularity_of_finiteDimensional` (Bridges:93) is the same lemma on any finite-dimensional complex
domain (needed for `ℂⁿ × ℂⁿ`, the phase space of the Hamiltonian), without the coordinate statement.

| Step | Declaration | Verdict |
|---|---|---|
| `step:p1:hreg-line` | `norm_fderiv_le_of_closedBall_bound` (`Cauchy.lean:53`; the blueprint cites it) | COVERED (any normed `E`, bound only on the closed ball) |
| `step:p1:hreg-integral` | none: the Cauchy integral for `DF(x)v` is used inside the proof of the next declaration (Mathlib `deriv_eq_smul_circleIntegral`) | NONE, BYPASSED (no separate statement) |
| `step:p1:hreg-differentiate` | `differentiableAt_fderiv_apply_of_bounded` (`Regularity.lean:47`; the blueprint cites it) | PARTIAL, equivalent: it gives differentiability at the centre `z` (hypotheses `closedBall z (3r) ⊆ U`, `‖f‖ ≤ A` on `U`); the blueprint states it for every `x ∈ P(z₀,r)`, which follows by re-centring; the derivative formula is not stated and not used later |
| `step:p1:hreg-full` | `differentiableOn_fderiv_of_isOpen_pi` (:120), `differentiableOn_fderiv_of_isOpen` (:178) | COVERED |
| `step:p1:hreg-orders` | `contDiffOn_infty_of_differentiableOn` (:163) | PARTIAL → adapters (Bridges:60, :93) for "`D^jF` holomorphic" and the norm identities |
| `step:p1:hreg-symmetry` | none | NONE → adapter (Bridges:70) |

### `bp:p1:cauchy-open` (L472-L477, proof L479-L506)

Blueprint: `f` holomorphic on open `U ⊆ ℂ^m`, `|f| ≤ A` on `U`, closed polydisc of radius `δ > 0` about `z` in `U`:
`|∂_ℓ f(z)| ≤ A/δ`, `|D^j f(z)| ≤ c(m,j) A δ^{-j}` for `j = 1,2,3`; constants `1, 4, 32` (step `co-constants`).

Zohar: `norm_coordinate_fderiv_le_of_closedBall` (`Cauchy.lean:87`) is `‖fderiv ℂ f z (Pi.single i 1)‖ ≤ A / δ` on
`Fin n → ℂ`; `norm_fderiv_le_of_closedBall` (:80) is `‖fderiv ℂ f z‖ ≤ A / δ`;
`norm_iteratedFDeriv_two_le_of_closedBall` (`HigherCauchy.lean:45`) is `‖iteratedFDeriv ℂ 2 f z‖ ≤ 4 * A / δ ^ 2`;
`norm_iteratedFDeriv_three_le_of_closedBall` (:60) is `... ≤ 32 * A / δ ^ 3`.

Differences, all in Zohar's favour:
- `E` is any complex normed space (finite-dimensional for `j ≥ 2`), not only `ℂ^m`. This is what `bp:p4:data` /
  `step:p4:db-cauchy` need (polydiscs in `ℂⁿ × ℂⁿ`).
- For `j = 2, 3` the bound `‖f‖ ≤ A` is needed only on the closed ball.
- `j = 1` in the `iteratedFDeriv ℂ 1` form is one rewrite (`norm_iteratedFDeriv_one`) from `fderiv`.
- For `j ≥ 2`, `CompleteSpace` and `SecondCountableTopology` of the target are assumed (they hold for every `W` in use).

Adapter `cauchy_open` (Bridges:152) collects the four bounds with the explicit constants for `E = Fin m → ℂ`, `W`
finite-dimensional.

| Step | Declaration | Verdict |
|---|---|---|
| `step:p1:co-first` | `norm_fderiv_le_of_closedBall` (`Cauchy.lean:80`), `norm_coordinate_fderiv_le_of_closedBall` (:87) | COVERED |
| `step:p1:co-second` | `norm_iteratedFDeriv_two_le_of_closedBall` (`HigherCauchy.lean:45`; uses `norm_fderiv_le_on_half_closedBall` :31) | COVERED |
| `step:p1:co-third` | `norm_iteratedFDeriv_three_le_of_closedBall` (:60) | COVERED |
| `step:p1:co-constants` | the numerals `1`, `4`, `32` in the statements above | COVERED |

### `bp:p1:cauchy-strip` (L566-L572, proof L574-L595)

Blueprint: `u` holomorphic and bounded on `T_ρ`, `0 < δ < ρ`: `‖∂_ℓ u‖_{ρ-δ} ≤ δ⁻¹ ‖u‖_ρ` for every `ℓ`, hence
`‖Du‖_{ρ-δ} ≤ n δ⁻¹ ‖u‖_ρ`; scalar, vector (max norm), matrix (operator norm) values.

Zohar: `norm_coordinate_fderiv_le_of_mem_complexStrip` (`Cauchy.lean:126`): for `hf : DifferentiableOn ℂ f
(complexStrip n ρ)`, `hA : ∀ w ∈ complexStrip n ρ, ‖f w‖ ≤ A`, `0 < δ`, `z ∈ complexStrip n (ρ - δ)`:
`‖fderiv ℂ f z (Pi.single i 1)‖ ≤ A / δ`. This is the first claim exactly. `norm_fderiv_le_of_mem_complexStrip` (:117)
gives `‖fderiv ℂ f z‖ ≤ A / δ`, which is stronger than `n δ⁻¹ A` for `n ≥ 1` (the blueprint says so after the proof,
L597-L600) but is not the stated inequality, and for `n = 0` the stated bound is `0`, which needs `Df = 0` on the
trivial domain. Targets are arbitrary complex normed spaces.

Adapter `cauchy_strip` (Bridges:179) states both claims literally (`δ⁻¹ * A` and `n * δ⁻¹ * A`), for all `n` including `0`.
The hypothesis `δ < ρ` is not needed.

| Step | Declaration | Verdict |
|---|---|---|
| `step:p1:cs-coordinate` | `norm_coordinate_fderiv_le_of_mem_complexStrip` (`Cauchy.lean:126`; the blueprint cites it) | COVERED |
| `step:p1:cs-full` | `norm_fderiv_le_of_mem_complexStrip` (:117) | PARTIAL (sharper bound; literal `n`-factor in the adapter) |

### `bp:p1:cauchy-corollaries` (L615-L619, proof L621-L635)

Blueprint: `f` holomorphic and bounded on `T_ρ`, `0 < δ < ρ`. For `f` valued in `ℂ^p`:
`‖(Df)ᵀ‖_{ρ-δ} ≤ p δ⁻¹ ‖f‖_ρ`. For `f` valued in `ℂ^p` or `ℂ^{p×q}`: `‖∂_ω f‖_{ρ-δ} ≤ |ω|₁ δ⁻¹ ‖f‖_ρ`.

Zohar: nothing about transposes or `∂_ω`. Both follow from the coordinate bound `Cauchy.lean:126`.

Adapters:
- `cauchy_corollaries_transpose` (Bridges:207): for `f : (Fin n → ℂ) → Fin p → ℂ`,
  `‖(Matrix.of fun i ℓ => fderiv ℂ f θ (Pi.single ℓ 1) i).transpose‖ ≤ p * δ⁻¹ * A` on `T_{ρ-δ}`, the blueprint's
  proof (row sum of the transpose, `step:p1:cc-transpose`) through I-MAT's `norm_le_iff_forall_rowSum`
  (`KAM/Matrix/Norms.lean:52`).
- `cauchy_corollaries_directional` (:232): `‖fderiv ℂ f θ ω‖ ≤ (∑ ℓ, ‖ω ℓ‖) * δ⁻¹ * A` for `ω : Fin n → ℂ` and any
  complex normed target; `cauchy_corollaries_directional_real` (:249) is the form for `ω : Fin n → ℝ` as used in the
  frozen `KAM.invarianceError` (`fderiv ℂ K θ (fun i => (ω i : ℂ))`).

| Step | Declaration | Verdict |
|---|---|---|
| `step:p1:cc-transpose` | none in Zohar's files | NONE → adapter (Bridges:207) |
| `step:p1:cc-omega` | none in Zohar's files | NONE → adapters (Bridges:232, :249) |

### `bp:p1:averages-real` (L644-L647, proof L649-L661)

Blueprint: `v : ℝⁿ → ℂ` continuous, `1`-periodic, differentiable with continuous derivative: `⟨∂_ℓ v⟩ = 0`,
`⟨Dv ω⟩ = 0`.

Zohar, `KAM/Strip/Averages.lean`: `torusAverage_coordinate_eq_zero` (:108): `hd : ∀ x, HasFDerivAt f (f' x) x`,
`hc : Continuous f'`, `hp : ∀ x, f (x + Pi.single i 1) = f x` give `torusAverage (fun x => f' x (Pi.single i 1)) = 0`.
`torusAverage_direction_eq_zero` (:126) gives `torusAverage (fun x => f' x ω) = 0` for `ω : Fin n → ℝ` when `f` is
periodic in every coordinate. `torusAverage_fderiv_eq_zero` (:142) is the same with `hf : ContDiff ℝ 1 f` and `fderiv ℝ f`.

Differences: the target is any real Banach space (covers `ℂ`, `ℂ^p`, matrices; the blueprint says "applies to each
entry"); the `∂_ℓ` statement needs periodicity only in the coordinate `ℓ`. "Differentiable with continuous derivative"
is `HasFDerivAt` with `f'` continuous, equivalently `ContDiff ℝ 1`. COVERED.

| Step | Declaration | Verdict |
|---|---|---|
| `step:p1:ar-one` | inlined as `hline` in the private `torusAverage_coordinate_succ_eq_zero` (:68) | NONE as a declaration, BYPASSED (inlined) |
| `step:p1:ar-fubini` | `torusAverage_coordinate_eq_zero` (:108) (Fubini by `measurePreserving_piFinSuccAbove` in :68), `torusAverage_direction_eq_zero` (:126) | COVERED |

### `bp:p1:averages` (L663-L667, proof L669-L682)

Blueprint: `v` holomorphic, bounded, `1`-periodic on `T_ρ`, valued in `ℂ`, `ℂ^p` or `ℂ^{p×q}`:
`⟨∂_ℓ v⟩ = 0`, `⟨Dv ω⟩ = 0`, `|⟨v⟩| ≤ ‖v‖_ρ`.

Zohar: `torusAverage_complex_coordinate_eq_zero` (`Averages.lean:172`): `0 < ρ`, `DifferentiableOn ℂ f (complexStrip n ρ)`,
coordinate periodicity on the strip give `torusAverage (fun x => fderiv ℂ f (fun j => (x j : ℂ)) (Pi.single i 1)) = 0`.
`torusAverage_complex_direction_eq_zero` (:199): same for `ω : Fin n → ℂ` (so for real `ω` too).
`norm_torusAverage_le_of_strip_bound` (:220): `∀ z ∈ T_ρ, ‖f z‖ ≤ A` gives `‖torusAverage (fun x => f ↑x)‖ ≤ A`.
The proofs prove continuity of the derivative on `ℝⁿ` from holomorphy (`continuous_fderiv_real_of_holomorphic`, :160) and
do not use boundedness for the derivative claims, as the blueprint says. COVERED. Adapter `averages` (Bridges:266)
packages the three claims for a finite-dimensional target.

| Step | Declaration | Verdict |
|---|---|---|
| `step:p1:av-derivatives` | :172, :199 (and :160) | COVERED |
| `step:p1:av-bound` | :220 | COVERED |

### `bp:p1:averages-matrix` (L684-L687, proof L689-L697)

Blueprint: `M` continuous, `1`-periodic, matrix valued on `ℝⁿ`: `|⟨M⟩| ≤ sup_{ℝⁿ} |M|`, and `⟨∂_ω M⟩ = 0` if `M` is `C¹`,
where `⟨M⟩` is the entrywise integral.

Zohar: `norm_torusAverage_le` (:43): a bound of `‖f x‖` on the unit cube gives `‖torusAverage f‖ ≤ A` (weaker
hypothesis than the sup over `ℝⁿ`; no integrability needed). `torusAverage_fderiv_eq_zero` (:142) gives
`torusAverage (fun x => fderiv ℝ f x ω) = 0` for `C¹` periodic `f`.

Gap: both are about the Bochner integral in the matrix space; the blueprint and `KAM.torsionAverage`
(`KAM/Frozen/Defs/TorsionAverage.lean`) use `Matrix.of fun i j => ∫ M x i j`. The adapter `averages_matrix`
(Bridges:294) states both claims for the entrywise average, proved through `torusAverage_matrix_apply` (Bridges:282).

| Step | Declaration | Verdict |
|---|---|---|
| `step:p1:am-bound` | `norm_torusAverage_le` (:43) | PARTIAL → adapter (entrywise form) |
| `step:p1:am-derivative` | `torusAverage_fderiv_eq_zero` (:142) | PARTIAL → adapter (entrywise form) |

### `bp:p1:decay` (L784-L787, proof L789-L817)

Blueprint: `u` holomorphic, bounded, `1`-periodic on `T_ρ`: `|û_k| ≤ e^{-2π|k|₁ρ'} ‖u‖_ρ` for `k ∈ ℤⁿ`, `0 ≤ ρ' < ρ`;
the limit form at `ρ' = ρ` is used afterwards (`bp:p1:decay#boundary-radius`, L819).

Zohar, `KAM/Strip/Fourier.lean`: `norm_torusCoeff_le_of_lt` (:229)

    (hρ' : 0 ≤ ρ') (hρρ' : ρ' < ρ) (hu : DifferentiableOn ℂ u (complexStrip n ρ))
    (hp : ∀ i z, z ∈ complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hA : ∀ z ∈ complexStrip n ρ, ‖u z‖ ≤ A) (k : Fin n → ℤ) :
    ‖torusCoeff (fun x => u (fun j => (x j : ℂ))) k‖ ≤ Real.exp (-(2 * π * ρ' * Fourier.modeSize k)) * A

with `torusCoeff v k = torusAverage (fun x => character (-k) ↑x * v x)` (:44), i.e. `⟨v χ_{-k}⟩`, and
`Fourier.modeSize k = ∑ |k_j|` (`KAM/Fourier/Derivative.lean:37`). `norm_torusCoeff_le` (:291) is the boundary radius
(`0 < ρ`). Statement matches, with the conventions above (`A` for `‖u‖_ρ`, coordinatewise periodicity).

Difference to note: `u` is `ℂ`-valued. The blueprint's proof begins "let `u` take values in `W`", but the lemma, its
consumers (`summation`, `cohomological`, which treats vector and matrix data entrywise) and the definition of `û_k`
for vector values (entrywise) are scalar; a `W`-valued statement with the operator norm is not implied entrywise and
is not provided. COVERED for the node as stated.

| Step | Declaration | Verdict |
|---|---|---|
| `step:p1:dec-shift` | `torusAverage_imag_shift` (:114): the average of a periodic holomorphic `g` is unchanged when the torus moves to `ℝⁿ + i t`, `|t_j| ≤ ρ' < ρ` (derivative of the average in the shift size is the average of a periodic derivative, which is `0`) | NONE as stated (`I_{j-1} = I_j`, rectangle theorem, Fubini); BYPASSED by a one-step shift of all coordinates, `I_0 = I_n` directly |
| `step:p1:dec-bound` | last part of `norm_torusCoeff_le_of_lt` (:229), with `norm_character` (:68), `norm_character_le` (:82) | COVERED (inlined) |
| `bp:p1:decay#boundary-radius` | `norm_torusCoeff_le` (:291) | COVERED |

## Adapters added (all in `KAM/Strip/Bridges.lean` unless noted; docstrings begin with the blueprint label)

| Declaration | Node or step |
|---|---|
| `differentiableOn_iteratedFDeriv_of_differentiableOn` | `step:p1:hreg-orders` |
| `fderiv_apply_comm_of_differentiableOn` | `step:p1:hreg-symmetry` |
| `holomorphic_regularity_of_finiteDimensional` | `bp:p1:holomorphic-regularity` (any finite-dimensional complex domain) |
| `holomorphic_regularity` | `bp:p1:holomorphic-regularity` (`ℂ^m`) |
| `cauchy_open` | `bp:p1:cauchy-open` |
| `cauchy_strip` | `bp:p1:cauchy-strip` |
| `cauchy_corollaries_transpose`, `cauchy_corollaries_directional`, `cauchy_corollaries_directional_real` | `bp:p1:cauchy-corollaries` |
| `averages` | `bp:p1:averages` |
| `torusAverage_matrix_apply`, `averages_matrix` | `bp:p1:averages-matrix` |
| `neumann`, `neumann_pointwise` (`KAM/Matrix/Bridges.lean`) | `bp:p1:neumann` |

## Observations for the orchestrator

1. **Proposed `LEAN_STATUS` for the nine nodes after the adapters:** all PROVED, with `LEAN_REF` the adapter named
   in the table above (or Zohar's declarations where the verdict is COVERED and no adapter was needed:
   `averages-real`, `decay`). Steps to mark BYPASSED: `neu-series`, `hreg-integral`, `ar-one`, `dec-shift`.
   `neu-inverse` (no formula `S A⁻¹`) and `hreg-differentiate` (centre only, no derivative formula) are covered in
   content but not in literal statement.
2. **Prod-valued targets.** Part 2 writes `K : ℂⁿ → ℂⁿ × ℂⁿ` and applies `cauchy-corollaries` with `p = 2n`. The
   adapters are for `Fin p → ℂ` (as the blueprint) and for any normed target (`∂_ω`). For the transpose bound with a
   `Prod` or `Fin n ⊕ Fin n` target the row-sum argument is identical but needs the identification of `ℂⁿ × ℂⁿ` with
   `Fin n ⊕ Fin n → ℂ` (as in `KAM/Matrix/Norms.lean`); not provided.
3. **Blueprint cross-references.** Every `\nolinkurl{KAM....}` name in `blueprint/parts/p1-analysis.tex` resolves to a
   declaration (19 names checked).
4. No suspected errors in Zohar's files found; no `sorry`, no axiom beyond `propext`, `Classical.choice`, `Quot.sound`
   (checked with `#print axioms`: `norm_torusCoeff_le`, `norm_torusCoeff_le_of_lt`, `matrix_neumann_uniform`,
   `differentiableOn_fderiv_of_isOpen`, `norm_iteratedFDeriv_{two,three}_le_of_closedBall`,
   `torusAverage_complex_{coordinate,direction}_eq_zero`, `torusAverage_fderiv_eq_zero`). Largest of his files is
   446 lines (`Matrix/Norms.lean` is I-MAT's; his are at most 308).
5. **Minor duplication.** `matrix_opNorm_le_iff_rows` (`Neumann.lean:89`) restates `norm_le_iff_forall_rowSum`
   (`Matrix/Norms.lean:52`) for `Fin`-indexed matrices. Harmless.
6. **Not in the nine nodes, but noticed.** `step:p1:es-power` of `bp:p1:exp-sums` is
   `Fourier.rpow_mul_exp_neg_le` (`KAM/Fourier/ExponentialDecay.lean:27`, `x ^ τ * exp (-δ * x) ≤ (τ / (exp 1 * δ)) ^ τ`
   for `x ≥ 0`, `τ ≥ 0`, `δ > 0`; the blueprint cites it); `bp:p1:cauchy-strip-2` is
   `norm_iteratedFDeriv_two_le_of_mem_complexStrip` (`HigherCauchy.lean:75`, constant `4`). I-P1B owns the first;
   the second is excluded from the graph.
