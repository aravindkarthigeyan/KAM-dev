# I-P1C prover handoff (branch k/p1c, 92516f2); namespace KAM

| Graph node | Lean declaration | File |
|---|---|---|
| bp:p1:taylor | taylor (+ taylor_iteratedFDeriv; conditional variants taylor_of_differentiableOn_fderiv etc.) | KAM/Strip/Taylor.lean |
| step:p1:tay-lipschitz | taylor_lipschitz | Taylor |
| step:p1:tay-integrate | taylor_integrate | Taylor |
| bp:p1:increments | increments | KAM/Strip/Increments.lean |
| step:p1:inc-mvt | increments_mvt | Increments |
| step:p1:inc-cauchy | increments_cauchy | Increments |

taylor: E, W complex normed, [FiniteDimensional ℂ E] [CompleteSpace W] [SecondCountableTopology W]; (hU : IsOpen U) (hF : DifferentiableOn ℂ F U) (hA : ∀ x ∈ U, ‖fderiv ℂ (fderiv ℂ F) x‖ ≤ A) (hseg : segment ℝ z (z + w) ⊆ U) ⊢ ‖F (z + w) - F z - fderiv ℂ F z w‖ ≤ A / 2 * ‖w‖ ^ 2.
increments: u : (Fin n → ℂ) → W, W any complex normed space; (hu : DifferentiableOn ℂ u (complexStrip n ρ)) (hδ : 0 < δ) (hθ : θ ∈ complexStrip n (ρ - δ)) (hθv : θ + v ∈ complexStrip n (ρ - δ)) ⊢ (∀ B, (∀ x ∈ T_{ρ-δ}, ‖fderiv ℂ u x‖ ≤ B) → ‖u (θ+v) - u θ‖ ≤ B‖v‖) ∧ (∀ A, (∀ x ∈ T_ρ, ‖u x‖ ≤ A) → ‖u (θ+v) - u θ‖ ≤ n δ⁻¹ A ‖v‖).

AUDIT QUESTIONS:
1. Is each statement exactly bp:p1:taylor / bp:p1:increments (factor ½ in Taylor; constants n δ⁻¹ in increments) or stronger? The prover dropped δ < ρ (claims: strictly stronger).
2. taylor needs CompleteSpace W + SecondCountableTopology W (finite-dimensional W satisfies both); hA bounds ‖D(DF)‖ — is that the blueprint's |D²F| (operator norm of the second derivative)?
3. Route deviation: taylor_integrate uses Mathlib's image_norm_le_of_norm_deriv_right_le_deriv_boundary instead of the blueprint's integral and E6 — acceptable as a route substitution (D27) for step tay-integrate's conclusion?
4. Part 2/3 consumers (design docs/campaign/design/PART23-LEAN-DESIGN.md) will apply these to pair carriers ((Fin n → ℂ) × (Fin n → ℂ), max norm) and to Matrix (Fin p) (Fin q) ℂ in the row-sum operator norm. Confirm applicability; note the prover's finding that Norm ((Fin n → ℂ) →L[ℂ] Matrix …) does not synthesize under the operator-norm scope.
