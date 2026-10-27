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
| DIOPH | (γ,τ)-Diophantine vectors; solution of ω·∂u = g − ⟨g⟩ with ‖u‖_{s−δ} ≤ (2πγ)⁻¹(τ/(eδ))^τ ‖g‖_s (τ > 0; s, δ are coefficient radii) | coefficientwise; HL19 §4.1 and FHL17 §4.2 for the sup-norm versions |
| NEWTON | Convergence of a quadratic scheme on a scale of analytic spaces | HL19 §5; GJLV05 §4 |
| BRIDGE | Real-analytic functions on complex strips ↔ coefficient spaces (contour shift, one variable at a time) | standard |
| GEOM | Approximate Lagrangian property, adapted symplectic frame, torsion matrix | HL19 §2.4–2.5, §4; GJLV05 §3 |
| APOST | A-posteriori theorem at fixed frequency | HL19 Thm 3.1 (d = n); GJLV05 Thm 5 |
| UNIQ | Local uniqueness modulo phase **for flows** | no published version (GJLV05 Rem. 7; HL19 Rem. 3.5 only asserts it): we prove it by adapting GJLV05 Thm 2 (maps, p. 862; proof §6, pp. 883–885) with the flow reducibility of §8 and Prop. 18; cross-check FdlLS09 Thm 3.14. Directly for flows, not through the time-one map (flow-Diophantine ω need not be map-Diophantine). Ledger D-UNIQ-1 |
| APPLY | A torus for every Diophantine ω, starting from K⁰_ω(θ) = (θ, (∇h)⁻¹ω) | direct application of APOST; needs ε ≲ γ⁴ |
| LIP | Lipschitz dependence of K_ω on ω over the Diophantine set | CCdlL13 Cor. 29–30 (re-application with normalized K); ledger D-LIP-1 |
| DMEAS | meas(Ω ∖ D_{γ,τ}) = O(γ) for bounded Ω with regular boundary, τ > n − 1 | Pos01 §1d, p. 5; FHL17 §4.1 |
| IMAGE | McShane extension of F̂ − id (frequency coordinates, 0 off Tⁿ × Ω); id + Ḡ is a lipeomorphism, so the complement is the image of the complement | Pos01 Prop. 1–2 (p. 11) and App. B (p. 31); BC17 §6.5–6.6, Lemmas 5–6. Mathlib: `LipschitzOnWith.extend_pi` (sup norm), Hausdorff measure API |
| HEAD | Assembly: meas((Tⁿ × B) ∖ ⋃ tori) ≤ C·ε^{1/4} | — |

### Route verdict (measure-layer research, 2026-10-27)

- **Existence (APOST).** HL19 Thm 3.1 (arXiv v1 pp. 16–18), with d = n, canonical case (Rem. 3.2–3.3):
  - smallness C₁‖E‖_ρ/(γ⁴ρ^{4τ}) < 1;
  - closeness ‖K∞ − K‖ < C₂‖E‖_ρ/(γ²ρ^{2τ}).

  At K⁰_ω the torsion is ±∇²h(I_ω), i.e. Kolmogorov nondegeneracy, and ‖E‖ ≲ ε.
- **Uniqueness (UNIQ).** The uniqueness radius is ~cγ²δ^{2τ}, and ‖K_ω − K⁰_ω‖ ~ ε/γ². This forces ε ≲ γ⁴ whichever
  existence theorem is used; Vil17's sharper existence threshold ε ≲ γ² does not help.
- **Lipschitz (LIP).** For Diophantine ω, ω′, the torus K_ω shifted in the actions by I_{ω′} − I_ω, where
  I_ω = (∇h)⁻¹ω, is an approximate solution at ω′:
  - **Error.** ‖E′‖ ≲ (ε + ‖K_ω − K⁰_ω‖_{C¹})·|ω − ω′| ~ εγ⁻²|ω − ω′|. The pure |ω − ω′|² term cancels: the h-part is a
    mixed second difference, O(‖v‖·|ΔI|). The −∂_{Δω}u term has size ‖Du‖·|Δω|. This corrects my first sketch,
    which claimed O(|Δω|² + ε|Δω|).
  - **Consequence.** APOST and UNIQ make the Lipschitz defect of (θ, ω) ↦ K_ω(θ) − K⁰_ω(θ) O(ε/γ⁴), uniformly.
  - **Model check.** For H = ½|I|² + εf(θ), the angle part has ω-Lipschitz constant ~ε/γ³.
  - **Normalization.** avg(u_ω) = 0, where K_ω = (θ + u_ω, I_ω + v_ω).
- **Measure (IMAGE, DMEAS).**
  - The McShane extension leaves the complement ≲ γ, which gives a = 1/4 with γ ~ ε^{1/4}.
  - The simpler Hausdorff-image bound loses O(η)·total and gives only a = 1/5.
  - The optimal √ε (Pöschel, Neishtadt; BC17; CK21) needs canonical-transformation methods or new estimates. It is
    out of scope for this route.
- **Side conditions** for the statement:
  - a uniform complex neighbourhood of Tⁿ × B̄;
  - regular ∂B, for the O(γ) boundary layer; the qualitative (1 − κ) form needs no regularity;
  - ∇h globally bi-Lipschitz on B̄;
  - dist(I_ω, ∂B) ≳ ε/γ², and dist(Ω_γ, ∂Ω) ≥ γ.
- **For free.** The Lagrangian property (GJLV05 Lemma 19 / Prop. 18; HL19 §2.2). The flow on the torus is the
  rotation, by ODE uniqueness, since t ↦ K(θ + tω) solves ż = X_H(z).
- **Strip losses.** Three nested levels (existence, re-application, uniqueness), e.g. ρ → ρ/2 → ρ/4 → ρ/8.

## 3. Framework

The period-1 convention (D9/Q2) fixes the Fourier characters to e^{2πik·θ}, with
f̂_k = ∫_[0,1]ⁿ f(θ)e^{−2πik·θ} dθ and ⟨f⟩ = f̂_0 (HL19 §2.1, p. 5).
We keep the following weighted norms, with |k| = |k|₁:
- ‖f‖_s = Σ_k |f̂_k| e^{|k| s} on functions of θ;
- ‖f‖_{s,r} = Σ_{k,m} |f_{k,m}| e^{|k| s} r^{|m|} on functions of (θ, I).

Here **s is a coefficient radius**: the corresponding geometric strip width is ρ = s/(2π).
The strip widths in `docs/statement.md` (including s₀ in HEAD) remain geometric widths. See
[`fourier-conventions.md`](fourier-conventions.md) for derivations and a single-mode check.

Estimates to formalize, for 0 < δ < s (and nonnegative coefficient radii):
- **Algebra:** ‖fg‖ ≤ ‖f‖‖g‖.
- **Derivatives:** ‖∂_{θ_j} f‖_{s−δ} ≤ 2π‖f‖_s/(eδ).
- **Cohomological equation:** û_0 = 0 and û_k = ĝ_k/(2πi k·ω) for k ≠ 0 solve
  ω·∂u = g − ⟨g⟩. For τ > 0 the estimate is the one in DIOPH, with Rüssmann's exponent τ;
  for τ = 0 use ‖u‖_{s−δ} ≤ (2πγ)⁻¹‖g‖_s. HL19 uses the opposite sign for its operator L_ω.
- **Composition:** ‖f∘(id+u)‖_{s′} ≤ ‖f‖_s whenever s′ + 2π‖u‖_{s′} ≤ s, since
  e^{2πik·(θ+u)} = e^{2πik·θ}·exp(2πik·u). For vector u, use the max norm on its Fourier coefficients.
  The Fourier–Taylor version holds when also r′ + ‖v‖_{s′,r′} ≤ r, with the angle condition
  s′ + 2π‖u‖_{s′,r′} ≤ s.
- **Sup norm versus ℓ¹ norm:** sup_{|Im θ| ≤ s/(2π)} |f| ≤ ‖f‖_s. Conversely, for f bounded and
  holomorphic on T_ρ, and 0 < δ < 2πρ,
  ‖f‖_{2πρ−δ} ≤ coth(δ/2)ⁿ · sup_{|Im θ| < ρ} |f|.

## 4. Lean design

- Types: `Fin n → ℝ`, `Fin n → ℂ`, indices `Fin n → ℤ` (no `EuclideanSpace`). Coefficient spaces are built on
  summable families over `(Fin n → ℤ) × (Fin n → ℕ)`; matrix-valued functions use `Matrix (Fin n) (Fin n)`.
- Dynamics in the statements: an invariant torus is an embedding K : ℝⁿ → ℝⁿ × ℝⁿ with K(θ + k) = K(θ) + (k, 0)
  for k ∈ ℤⁿ and DK(θ)·ω = X_H(K(θ)). The orbits t ↦ K(θ + tω) then satisfy Hamilton's equations, stated with
  `HasDerivAt`; no flow theory is needed.
- Libraries: one library `KAM`, frozen files under `KAM/Frozen/`, providers under `KAM/Provider/`, areas as in the
  README table.

## 5. Next steps

Verified coefficient infrastructure now includes the period-one derivative bound,
the unique zero-average cohomological solution with the real-exponent small-divisor
estimate, its Lipschitz dependence on the frequency, and absolute convergence and
submultiplicativity of weighted Fourier convolution. See
[`cohomological-equation.md`](cohomological-equation.md) for exact statements,
source conventions, and the distinction from the remaining analytic-function bridge.
These infrastructure results do not seal any frozen statement.

1. ~~Pin the measure-layer source; settle the route verdict for LIP and UNIQ.~~ Done (above).
2. Write `docs/statement.md` (mathematical statement of HEAD and of the proposed gates), with Q1–Q4 put to the
   owner.
3. Draft the exact Lean declarations (definitions and theorems); independent statement audit; owner approval;
   freeze.
4. Blueprint and source-level dependency graph; then the proof campaign, infrastructure first.
