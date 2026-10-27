# Plan

Status: Phase 0. This plan is planning evidence, not a statement: nothing here is frozen or approved Lean.

## 1. Target

Positive-measure KAM for H(θ, I) = h(I) + f(θ, I) on Tⁿ × B, real-analytic, h Kolmogorov-nondegenerate
(decision D1; draft wording in the README). Open owner questions Q1–Q4 (README) fix the rate, the period
convention, the content of "invariant torus" and the gate theorems.

## 2. Theorem chain (proof map nodes)

| Node | Content | Source (pinned) |
|---|---|---|
| ALG | Weighted ℓ¹ Fourier and Fourier–Taylor algebras: Banach algebra, exp, derivatives, composition, Taylor remainders, matrix-valued functions and Neumann inverses | standard; Chi03 App. B (Lemmas 13–15) for the Fourier norm |
| DIOPH | (γ,τ)-Diophantine vectors; solution of ω·∂u = g − ⟨g⟩ with ‖u‖_{s−δ} ≤ γ⁻¹(τ/(eδ))^τ ‖g‖_s | coefficientwise; HL19 §4.1 and FHL17 §4.2 for the sup-norm versions |
| NEWTON | Convergence of a quadratic scheme on a scale of analytic spaces | HL19 §5; GJLV05 §4 |
| BRIDGE | Real-analytic functions on complex strips ↔ coefficient spaces (contour shift, one variable at a time) | standard |
| GEOM | Approximate Lagrangian property, adapted symplectic frame, torsion matrix | HL19 §2.4–2.5, §4; GJLV05 §3 |
| APOST | A-posteriori theorem at fixed frequency | HL19 Thm 3.1 (d = n); GJLV05 Thm 5 |
| UNIQ | Local uniqueness modulo phase | GJLV05 (uniqueness theorem); source to be pinned |
| APPLY | A torus for every Diophantine ω, starting from K⁰_ω(θ) = (θ, (∇h)⁻¹ω) | direct application of APOST |
| LIP | Lipschitz dependence of K_ω on ω over the Diophantine set | source being pinned (research running) |
| DMEAS | meas(Ω \ D_{γ,τ}) = O(γ) for bounded Ω, τ > n − 1 | Pos01 §1; FHL17 §4.1 |
| IMAGE | Measure of the image of a map Lipschitz-close to a bi-Lipschitz map, via Hausdorff measure | Mathlib `LipschitzOnWith` and `hausdorffMeasure` API |
| HEAD | Assembly: union of tori has measure ≥ (1 − κ)·|Tⁿ × B| | — |

Planned argument for LIP: for Diophantine ω, ω′, the torus K_ω shifted in the actions by (∇h)⁻¹ω′ − (∇h)⁻¹ω is
an approximate solution at frequency ω′ with error O(|ω − ω′|² + ε|ω − ω′|). APOST plus UNIQ then bound
K_ω′ − K_ω − (shift) by Cγ⁻²(|ω − ω′|² + ε|ω − ω′|). Far-apart pairs use the a-priori bound ‖K_ω − K⁰_ω‖ ≤ Cε/γ².
Together these make (θ, ω) ↦ K_ω(θ) Lipschitz-close to the unperturbed map once ε ≪ γ⁴. The measure-layer
research checks this against the literature.

## 3. Framework

Weighted norms, with |k| = |k|₁:
- ‖f‖_s = Σ_k |f̂_k| e^{|k| s} on functions of θ;
- ‖f‖_{s,r} = Σ_{k,m} |f_{k,m}| e^{|k| s} r^{|m|} on functions of (θ, I).

Facts used everywhere, each checked by hand:
- **Algebra:** ‖fg‖ ≤ ‖f‖‖g‖.
- **Derivatives:** ‖∂_θ f‖_{s−δ} ≤ ‖f‖_s/(eδ).
- **Cohomological equation:** the estimate in DIOPH, with Rüssmann's exponent τ.
- **Composition:** ‖f∘(id+u)‖_{s′} ≤ ‖f‖_s whenever s′ + ‖u‖_{s′} ≤ s, since e^{ik·(θ+u)} = e^{ik·θ}·exp(ik·u). The
  Fourier–Taylor version holds when also r′ + ‖v‖ ≤ r.
- **Sup norm versus ℓ¹ norm:** sup_{|Im θ| ≤ s} |f| ≤ ‖f‖_s and ‖f‖_{s−δ} ≤ coth(δ/2)ⁿ · sup_{|Im θ| < s} |f|.

## 4. Lean design

- Types: `Fin n → ℝ`, `Fin n → ℂ`, indices `Fin n → ℤ` (no `EuclideanSpace`). Coefficient spaces are built on
  summable families over `(Fin n → ℤ) × (Fin n → ℕ)`; matrix-valued functions use `Matrix (Fin n) (Fin n)`.
- Dynamics in the statements: an invariant torus is an embedding K : ℝⁿ → ℝⁿ × ℝⁿ with K(θ + k) = K(θ) + (k, 0)
  for k ∈ ℤⁿ and DK(θ)·ω = X_H(K(θ)). The orbits t ↦ K(θ + tω) then satisfy Hamilton's equations, stated with
  `HasDerivAt`; no flow theory is needed.
- Libraries: one library `KAM`, frozen files under `KAM/Frozen/`, providers under `KAM/Provider/`, areas as in the
  README table.

## 5. Next steps

1. Pin the measure-layer source; settle the route verdict for LIP and UNIQ.
2. Write `docs/statement.md` (mathematical statement of HEAD and of the proposed gates), with Q1–Q4 put to the
   owner.
3. Draft the exact Lean declarations (definitions and theorems); independent statement audit; owner approval;
   freeze.
4. Blueprint and source-level dependency graph; then the proof campaign, infrastructure first.
