# Statements (draft 0.2, approved and frozen 2026-10-27)

The mathematical statements to be frozen, with their sources and quantifier orders, following the owner's
rulings D1, D2, D8 and D9. This is planning evidence. The owner approved the exact Lean text drafted from this file (D11); the frozen
statements live in `KAM/Frozen/` and are the only authoritative versions.

## Conventions

- **Dimension.** n ≥ 2. Angles θ ∈ ℝⁿ, functions 1-periodic in each angle, Tⁿ = ℝⁿ/ℤⁿ (ruling Q2). Actions
  I ∈ ℝⁿ. A phase point is z = (θ, I).
- **Norms.** On ℝⁿ, ℂⁿ and ℝⁿ × ℝⁿ, the max norm |v| = maxᵢ |vᵢ|, as in HL19 §2.1. Linear and multilinear maps
  carry the induced operator norms, which match HL19's matrix norms; for a matrix, |M| = maxᵢ Σⱼ |Mᵢⱼ|.
- **Diophantine vectors** (HL19 (3.1); Pos01 (1)). For γ > 0 and τ ≥ 0,
  ω ∈ D_{γ,τ} ⟺ |k·ω| ≥ γ/|k|₁^τ for every k ∈ ℤⁿ ∖ {0}, where |k|₁ = Σ|kᵢ|.
- **Hamiltonian vector field** for the standard form ω₀ = Σ dIᵢ ∧ dθᵢ (HL19 Rem. 2.1, with z = (θ, I)):
  X_H = (∂_I H, −∂_θ H).
- **Complex strip** (HL19 §2.1). T_ρ = {θ ∈ ℂⁿ : |Im θ| < ρ}, as a ℤⁿ-periodic set.
- **Complex neighbourhoods** of the action domain B ⊂ ℝⁿ:
  B_r = {I ∈ ℂⁿ : dist(I, B) < r}, and D(s, r) = T_s × B_r.
- **Primary torus** (HL19 Rem. 2.3). A parameterization K : ℝⁿ → ℝⁿ × ℝⁿ, or K : T_ρ → ℂⁿ × ℂⁿ, with
  K(θ + k) = K(θ) + (k, 0) for every k ∈ ℤⁿ.

## HEAD — positive-measure KAM with rate (rulings D1, Q1, Q3, Q5)

Sources: Pos01, Classical KAM Theorem p. 6, with the measure statement; route by D8 (rate ε^{1/4}, ledger D-MEAS-1).

**Data.**
- n ≥ 2, τ > n − 1, s₀ > 0, r₀ > 0.
- B ⊂ ℝⁿ open, bounded and nonempty, with a regular boundary: there is C_B with
  |{I ∈ B : dist(I, ℝⁿ ∖ B) < δ}| ≤ C_B·δ for all δ > 0.
- h holomorphic on B_{r₀}, real on real points.
- Kolmogorov nondegeneracy (bi-Lipschitz frequency map): there is L with |I − J| ≤ L·|∇h(I) − ∇h(J)| for all
  I, J ∈ B̄.

**Conclusion.** There are C > 0 and ε₀ > 0, chosen after the data above and before f, such that the following
holds for every f and ε with:
- f holomorphic on D(s₀, r₀), 1-periodic in θ, real on real points;
- |f| ≤ ε on D(s₀, r₀), and ε ≤ ε₀.

Let H = h + f, restricted to real points. Let 𝒯 be the union of all sets K(ℝⁿ), where K : ℝⁿ → ℝⁿ × ℝⁿ satisfies,
for some ω, some γ > 0 and some I₀ ∈ B:
1. K is real-analytic and a primary torus;
2. it is an embedding: K(θ′) = K(θ) + (k, 0) implies θ′ = θ + k, and DK(θ) is injective;
3. it is Lagrangian: ω₀(DK(θ)u, DK(θ)v) = 0 for all u, v;
4. it stays in the analyticity domain: the action part of K(θ) is within r₀ of B;
5. ω ∈ D_{γ,τ}, and t ↦ K(θ + tω) solves Hamilton's equations ż = X_H(z) for every θ;
6. it is close to the unperturbed torus: ∇h(I₀) = ω and |K(θ) − (θ, I₀)| ≤ C·√ε for all θ.

Then |([0,1)ⁿ × B) ∖ 𝒯| ≤ C·ε^{1/4}.

**Quantifier order.** n, τ, s₀, r₀, B, h are given; ∃ C, ε₀; ∀ f, ε. The constants are uniform in f.

## HEAD-Q — qualitative form (ruling Q1: corollary, no boundary condition)

Same data as HEAD, without the boundary condition. For every κ > 0 there is ε₀ > 0 such that, for every f and ε
as above with ε ≤ ε₀:
- 𝒯 is defined as in HEAD, with closeness |K(θ) − (θ, I₀)| ≤ κ in place of item 6's bound;
- |([0,1)ⁿ × B) ∖ 𝒯| ≤ κ·|[0,1)ⁿ × B|.

## G1 — a-posteriori KAM at fixed frequency (ruling Q4)

Source: HL19 Theorem 3.1 (arXiv v1 pp. 16–18), with d = n (Rem. 3.2), the canonical structure Ω = Ω̃ = Ω₀,
G = I, J = Ω₀ (Rem. 3.3, Case III: A = 0) and primary tori (Rem. 2.3).

**Objects** for a parameterization K and a frequency ω (HL19 (3.2)–(3.9)), with Ω₀ = [[O, −I], [I, O]]:
- L(θ) = DK(θ), a 2n × n matrix;
- B(θ) = (L(θ)ᵀ L(θ))⁻¹, with the bilinear transpose (not the Hermitian adjoint);
- N(θ) = Ω₀ L(θ) B(θ);
- X_N(θ) = DX_h(K(θ)) N(θ) − DN(θ)[ω];
- T(θ) = N(θ)ᵀ Ω₀ X_N(θ), and ⟨T⟩ its average over [0,1]ⁿ;
- E(θ) = X_h(K(θ)) − DK(θ)ω.

**Parameters**, fixed first: n ≥ 2, τ ≥ n − 1, 0 < ρ∞ < ρ, the bounds M, σ_K, σ_B, σ_T > 0, a margin μ > 0, and an upper
bound γ̄ > 0 for γ.

**Constants.** There are C₁, C₂ > 0 depending only on the parameters such that the following holds.

**Hypotheses.**
- **H1.** 𝔅 ⊂ ℂⁿ × ℂⁿ is open and invariant under θ ↦ θ + k (k ∈ ℤⁿ). h is holomorphic on 𝔅, 1-periodic in θ, and
  real on real points. On 𝔅: |Dh| ≤ M, |X_h| ≤ M, |DX_h| ≤ M, |D²X_h| ≤ M.
- **H2.** K is holomorphic on T_ρ, a primary torus, and real on real θ. The μ-ball around K(θ) lies in 𝔅 for every
  θ ∈ T_ρ, and |DK| ≤ σ_K − μ on T_ρ.
- **H3.** L(θ)ᵀL(θ) is invertible and |B(θ)| ≤ σ_B − μ on T_ρ.
- **H4.** ⟨T⟩ is invertible and |⟨T⟩⁻¹| ≤ σ_T − μ.
- **H5.** ω ∈ D_{γ,τ} with 0 < γ ≤ γ̄.
- **Error.** |E(θ)| ≤ e on T_ρ, and C₁·e/(γ⁴ρ^{4τ}) < 1.

**Conclusion.** There is K∞ with:
- K∞ holomorphic on T_{ρ∞}, a primary torus, and real on real θ;
- invariant with frequency ω: X_h(K∞(θ)) = DK∞(θ)ω on T_{ρ∞};
- the (μ/2)-ball around K∞(θ) lies in 𝔅, and |DK∞| ≤ σ_K − μ/2, on T_{ρ∞};
- close to K: |K∞ − K| ≤ C₂·e/(γ²ρ^{2τ}) on T_{ρ∞}.

**Quantifier order.** Parameters; ∃ C₁, C₂; ∀ 𝔅, h, K, ω, γ, e. In HL19 the constants of Appendix B depend on the
actual norms through the gaps σ − |·| and on dist(K(T_ρ), ∂𝔅), and slightly on γ through factors that increase
with γ. Read literally, "∃ C₁" chosen after K would make the statement vacuous. The margin μ makes the source's
dependence explicit and uniform: ledger D-G1-1. App. B's constants also increase with γ. Without the bound γ ≤ γ̄ the
statement is false: the 2026-10-27 audit gave a counterexample, checked in Lean, with h = ½|I|², K = (θ, 0) and γ → ∞.

**Not transcribed.**
- The estimate on ⟨c∘K∞⟩ for first integrals c (HL19 (3.11), first part).
- The bound on |(DK∞)ᵀ|, which is equivalent to |DK∞| up to a factor of 2n.
- The bound on |DX_hᵀ| in H1, which is implied by |DX_h| ≤ M up to a factor of 2n.

All three are recorded in ledger D-G1-1.

## G2 — local uniqueness for flows (ruling Q4; our own result, ledger D-UNIQ-1)

Template: GJLV05 Theorem 2 (maps, p. 862: "cγ^{−2}δ^{−2σ}‖K₁ − K₂‖_ρ < 1 ⇒ K₁∘T_τ = K₂ on U_{ρ/2}").

**Parameters**, fixed first: n ≥ 2, τ ≥ n − 1, ρ > 0, and M, σ_K, σ_B, σ_T, μ > 0.

**Constant.** There is c > 0 depending only on the parameters such that the following holds.

**Hypotheses.**
- 𝔅 and h are as in G1 (H1), and ω ∈ D_{γ,τ}.
- K₁ satisfies H2–H4 on T_ρ and is invariant: E₁ = 0.
- K₂ is holomorphic on T_ρ, a primary torus, real on real θ, with K₂(T_ρ) ⊂ 𝔅, and invariant: E₂ = 0.
- |K₁ − K₂| ≤ c·γ²ρ^{2τ} on T_ρ.

**Conclusion.** There is φ ∈ ℝⁿ with K₂(θ) = K₁(θ + φ) for all θ ∈ T_{ρ/2}.

## G3 — measure of the Diophantine set (ruling Q4)

Source: Pos01 §1d, p. 5: "for any bounded domain Ω ⊂ ℝⁿ … m(R^τ_α ∩ Ω) = O(α), provided that τ > n − 1".

**Statement.** Let n ≥ 1 and τ > n − 1. For every bounded set Ω ⊂ ℝⁿ there is C such that, for every α > 0,
|{ω ∈ Ω : ω ∉ D_{α,τ}}| ≤ C·α.

## Open points for the Lean drafting

- **Regular boundary in HEAD.** The rate needs |{I ∈ B : dist(I, Bᶜ) < δ}| ≤ C_B·δ. Convex B, or B with C² or
  Lipschitz boundary, satisfies this. Is the inner-layer hypothesis acceptable as the reading of "regular
  boundary" (ruling Q5)?
- **Holomorphy.** "Holomorphic" is `DifferentiableOn ℂ` on an open set (complex Fréchet differentiability), which
  is the standard definition and does not presuppose a power series. "Real-analytic" for the real tori K is
  `AnalyticOnNhd ℝ`.
