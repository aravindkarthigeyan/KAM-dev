# Period-1 Fourier conventions

This note checks the analytic framework in `PLAN.md` against the period-1 ruling D9/Q2.
It is planning evidence for future Lean lemmas, not a formal proof or a change to a frozen statement.

## Characters and radii

For k ∈ ℤⁿ, put |k|₁ = Σ_j |k_j| and e_k(θ) = exp(2πi k·θ). Then

- e_k(θ + ℓ) = e_k(θ) for ℓ ∈ ℤⁿ;
- ∂_{θ_j} e_k = 2πi k_j e_k;
- sup_{|Im θ| < ρ} |e_k(θ)| = exp(2πρ|k|₁).

These characters and the integral over the unit torus agree with
[HL19, §2.1, p. 5](https://arxiv.org/pdf/1711.05515v1#page=5).
Keep the planned coefficient norm ‖f‖_s = Σ_k |f̂_k| exp(s|k|₁); its radius s corresponds to
geometric strip width s/(2π). In particular, a loss δ in s is a loss δ/(2π) in strip width.
The geometric widths ρ and s₀ in `statement.md` are not redefined.

## Derivative estimate

For 0 < δ < s, the bound x exp(−δx) ≤ 1/(eδ) for x ≥ 0 gives

‖∂_{θ_j} f‖_{s−δ}
≤ 2π Σ_k |k|₁ exp(−δ|k|₁) |f̂_k| exp(s|k|₁)
≤ (2π/(eδ)) ‖f‖_s.

The factor 2π is necessary with this weight. For a single mode f(θ) = exp(2πimθ₁),
m a positive integer, take δ = 1/m and s > δ. The ratio
‖∂_{θ₁} f‖_{s−δ}/‖f‖_s is exactly 2πm/e, whereas the previous bound was m/e.
The same example works for any dimension n ≥ 1.

The coefficient estimate is formalized in
[`KAM/Fourier/Derivative.lean`](../KAM/Fourier/Derivative.lean):
`SummableWeighted.partialCoeff` proves summability at radius s − δ, and
`weightedNorm_partialCoeff_le` proves the bound 2π/(exp(1)δ). Their only analytic hypothesis is
weighted summability at s, together with δ > 0; no summability of the derivative is assumed.
Identifying these coefficients with derivatives of the represented function remains part of BRIDGE.

## Cohomological equation

Suppose |k·ω| ≥ γ/|k|₁^τ for k ≠ 0, with γ > 0 and τ ≥ 0. The zero-average solution of
ω·∂u = g − ⟨g⟩ has coefficients û_0 = 0 and û_k = ĝ_k/(2πi k·ω). Therefore

‖u‖_{s−δ} ≤ (1/(2πγ)) sup_{x>0}(x^τ exp(−δx)) ‖g‖_s.

For τ > 0 the supremum is (τ/(eδ))^τ. For τ = 0 use 1, avoiding a 0^0 convention.
The old γ⁻¹ bound is a valid but weaker bound when τ > 0; the coefficient formula records the exact
normalization. [HL19, §4.1, equations (4.1)–(4.2), p. 20](https://arxiv.org/pdf/1711.05515v1#page=20)
uses L_ω = −ω·∂, so its inverse has the opposite sign. This sign does not affect the norm estimate.

## Verified coefficient multiplication

[`KAM/Fourier/Convolution.lean`](../KAM/Fourier/Convolution.lean) defines
`convolution a b k = Σ_l a_l b_(k-l)`. For `s ≥ 0` and weighted summable `a` and `b`,
it proves absolute convergence of each coefficient, weighted summability of the
product, and `weightedNorm s (convolution a b) ≤ weightedNorm s a * weightedNorm s b`.

The proof uses `|k|₁ ≤ |l|₁ + |k-l|₁`, a summable product majorant, and the bijection
`(k,l) ↦ (l,k-l)` to sum the bound. It also proves commutativity, distributivity over
addition of weighted summable families, scalar compatibility, and the identity
coefficient family supported at zero. Associativity, completeness, exponential
series, and the identification with products of analytic functions remain to be
assembled; this module supplies the core multiplication estimate.

## Composition estimate

For a periodic vector u, set ‖u‖_{s′} = Σ_k |û_k|_∞ exp(s′|k|₁). The Banach algebra
estimate gives ‖exp(2πi k·u)‖_{s′} ≤ exp(2π|k|₁‖u‖_{s′}). Multiplication by e_k
costs at most exp(s′|k|₁), so

‖f∘(id+u)‖_{s′}
≤ Σ_k |f̂_k| exp((s′ + 2π‖u‖_{s′})|k|₁)
≤ ‖f‖_s whenever s′ + 2π‖u‖_{s′} ≤ s.

The previous condition s′ + ‖u‖_{s′} ≤ s is insufficient for complex analytic composition.
For example, take f = exp(2πiθ₁), u = (−ia, 0, …, 0) with a > 0, and s = s′ + a.
Then ‖f∘(id+u)‖_{s′} = exp(s′ + 2πa) > exp(s) = ‖f‖_s.

For Fourier–Taylor series in local action variables x, the same argument applies to
f(θ + u(θ,x), x + v(θ,x)), using ‖·‖_{s′,r′} for u and v. The sufficient conditions are
s′ + 2π‖u‖_{s′,r′} ≤ s and r′ + ‖v‖_{s′,r′} ≤ r.

## Bridge to strip sup norms

If ‖f‖_s is finite, absolute convergence gives sup_{|Im θ| ≤ s/(2π)} |f(θ)| ≤ ‖f‖_s.
Conversely, let f be periodic, holomorphic and bounded by M on T_ρ. Shifting the coefficient
integral to Im θ_j = −t sign(k_j) for 0 < t < ρ, and then taking t ↑ ρ, gives
|f̂_k| ≤ M exp(−2πρ|k|₁). Thus for 0 < δ < 2πρ,

‖f‖_{2πρ−δ} ≤ M Σ_{k∈ℤⁿ} exp(−δ|k|₁)
= M ((1 + exp(−δ))/(1 − exp(−δ)))ⁿ = M coth(δ/2)ⁿ.

Equivalently, a geometric strip loss η ∈ (0,ρ) gives
‖f‖_{2π(ρ−η)} ≤ M coth(πη)ⁿ. One cannot use geometric width s with coefficient
radius s: the single mode exp(2πiθ₁) has strip supremum exp(2πs), but coefficient norm exp(s).

This corrects the project's planning formulas. It does not identify an erratum in HL19 or change
the chosen weighted ℓ¹ framework (D-NORM-1); it makes the conversion to its period-1 convention explicit.
