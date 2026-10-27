# P3-5 prover handoff (branch k/p3-5, 9e33f63; merged with main) — PROVIDER PACKAGE for frozen G2

| Node | Declaration | File |
|---|---|---|
| bp:p0:g2 (proof), steps step:p3:g2-* | KAM.Uniq.g2_explicit | KAM/Uniq/G2.lean |
| step:p3:g2-iteration | KAM.Uniq.G2Aux.diffMap_eq_zero | same |
| step:p3:g2-constant (c := threshold …) | KAM.Uniq.threshold | KAM/Uniq/Standing.lean (P3-1) |
| frozen G2 provider | KAM.Provider.local_uniqueness_flow | KAM/Provider/LocalUniquenessFlow.lean |

Prover: g2_explicit signature verbatim (Appendix A); provider body ⟨_, KAM.Uniq.g2_explicit …⟩, imports only KAM.Uniq.G2. Probe `example : type_of% @KAM.local_uniqueness_flow := @KAM.Provider.local_uniqueness_flow` elaborated; Expr-equal types. Closeness uses η = c γ² ρ^{2τ} as a pointwise bound (design L7) instead of sup; iteration |Δ| ≤ y_m on T_{ρ_m} via quadratic, y_m → 0; φ = −ψ.
AUDIT FOCUS (this is the G2 seal gate; refute hard): (1) brief item 4 — exact-type probe of the provider against the frozen KAM.local_uniqueness_flow (KAM/Frozen/Theorems/LocalUniquenessFlow.lean), provider imports no frozen theorem, uses graph predecessors (phase, difference_equation, quadratic, quadratic_iteration) rather than a shortcut; (2) g2_explicit is the frozen G2 body verbatim with C₂ := C_2 …, c := threshold … (design §6, L22); (3) every step:p3:g2-* is soundly realized (smallness, phase application, iteration and limit, conclusion); the η-as-bound reading is equivalent to the blueprint's sup; (4) hygiene, axioms, no file in KAM/Frozen or manifest changed.
