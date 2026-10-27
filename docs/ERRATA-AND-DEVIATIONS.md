# Errata and deviations

*Working record, generated from the findings ledger [`errata/ledger.json`](errata/ledger.json) by
`scripts/render_errata.py`; do not edit by hand. Before release it is rewritten in reader-facing language and every
erratum is verified against the pinned PDF by its writer and then by an independent refute-first verifier. Until
then an erratum marked CANDIDATE is a report to check, not a claim.*

**Policy.** Erratum: a defect in a pinned source (typo, wrong constant/sign, missing hypothesis, false as stated, gap). A gap counts as an erratum only when a printed assertion is false; a supplied argument for a true step is a deviation. Deviation: a deliberate difference of the formalization from the source (scope, conventions, reformulation, explicit parameter windows, proof supplements, different proof routes). Our own statement repairs are neither.

Locations refer to the pinned versions in [`sources.json`](sources.json); counts are of entries, not occurrences.

## Count

| Source | Errata | Deviations |
|---|---|---|
| Pos01 (arXiv:0908.2234v1) | 3 (3 candidate) | 2 |
| GJLV05 (doi:10.1088/0951-7715/18/2/020) | 2 (2 candidate) | 1 |
| FdlLS09 (arXiv:0903.0311v1) | 2 (2 candidate) | 0 |
| CCdlL13 (doi:10.1016/j.jde.2013.05.001) | 1 (1 candidate) | 1 |
| HL19 (arXiv:1711.05515v1) | 2 (2 candidate) | 3 |

## Pos01 (arXiv:0908.2234v1)

### Errata

1. **p. 29 (arXiv v1.3), footnote to Lemma A.2.** *missing hypothesis; CANDIDATE* (E-Pos01-1). Printed: (print version, PSPUM 69) condition Kσ ≥ 1 absent. missing hypothesis: the condition Kσ ≥ 1 is missing in the printed version; the author's own footnote in arXiv v1.3 says so and the pinned arXiv version contains it. Evidence: author's footnote, arXiv v1.3 p. 29. Effect: none on the pinned version; relevant only if the measure layer uses Pöschel's Appendix A.
2. **p. 23 (arXiv v1.3), choice of h₀ and K₀ in the proof of Theorem A.** *gap; CANDIDATE* (E-Pos01-2). Printed: (to be quoted from the pinned PDF). the choices of h₀ and K₀ violate h₀ ≤ α(2K₀^ν)⁻¹ (Bou20, footnote 1); Kou19 Rem. 2.1.5(4), p. 28: 'Theorem A and B are not valid for ν = τ+1' with that proof; Bou20 restores Theorem A as stated by Rüssmann approximation and a linear scheme. Evidence: Bou20 (arXiv:2006.04453v1) footnote 1; Kou19 (arXiv:1904.13062v1) Rem. 2.1.5(4). Effect: relevant only if the measure layer follows Pöschel's proof.
3. **p. 13 (arXiv v1.3), measure statement after Theorem A.** *typo; CANDIDATE* (E-Pos01-3). Printed: "measure of Ωα × Tn". should be the measure of (Ω ∖ Ωα) × Tⁿ. Evidence: context of the measure estimate. Effect: none.

### Deviations

1. **whole proof.** *different proof route; PLANNED* (D-ROUTE-1). Proof route: the tori are obtained from an a-posteriori fixed-frequency KAM theorem (parameterization method, no canonical changes of variables) applied at each Diophantine frequency, not by Pöschel's iteration of symplectic transformations. Effect: no effect on the statement; recorded for readers comparing the proofs.
2. **Theorem (p. 6), Prop. 1–2 (p. 11).** *scope (weaker rate); PLANNED* (D-MEAS-1). Rate: our route proves meas(complement) ≤ C·ε^{1/4} (γ ~ ε^{1/4}), not Pöschel's O(√ε); the measure step applies the McShane extension of App. B to F̂ − id in frequency coordinates. Effect: the headline's exponent is 1/4 (owner question Q1).


## GJLV05 (doi:10.1088/0951-7715/18/2/020)

### Errata

1. **p. 862, Theorem 3 (closeness bound).** *typo; CANDIDATE* (E-GJLV05-1). Printed: cγ²δ^{−2σ}. presumably cγ^{−2}δ^{−2σ}, as in Theorems 1 and 5. Evidence: comparison with Theorems 1, 5 and the proof. Effect: none if confirmed as a typo.
2. **p. 865, Theorem 5.** *typo; CANDIDATE* (E-GJLV05-2). Printed: ‖e₀‖_{ρ₀}. ρ₀ is not defined in the statement (presumably ρ). Evidence: statement of Theorem 5. Effect: none.

### Deviations

1. **Theorem 2 (maps), §6, §8.** *proof supplement; PLANNED* (D-UNIQ-1). Proof supplement: local uniqueness modulo phase for flows. No published statement exists in this framework (GJLV05 Rem. 7: 'We do not formulate such a theorem'; HL19 Rem. 3.5 asserts it without proof). We prove it by adapting the map proof of GJLV05 §6 with the flow reducibility of §8 and Prop. 18, directly for flows (not through the time-one map, which needs map-Diophantine frequencies). Effect: a gate theorem of our own; no source statement changes.


## FdlLS09 (arXiv:0903.0311v1)

### Errata

1. **p. 13, Theorem 3.14.** *typo; CANDIDATE* (E-FdlLS09-1). Printed: ρ^{−2ν} with δ = ρ/4. δ is introduced but unused; the bound presumably involves δ. Evidence: statement of Theorem 3.14. Effect: none.
2. **§7.1, pp. 42–43.** *gap; CANDIDATE* (E-FdlLS09-2). Printed: (measure conclusion of §7.1). a bi-Lipschitz map ω ↦ K_ω into a function space does not by itself give a Lipschitz inverse of (θ, ω) ↦ K_ω(θ); the measure conclusion needs the argument we supply (D-LIP-1, D-MEAS-1). Evidence: the Lipschitz constant ~γ⁻² of ω ↦ K_ω is not small relative to the unperturbed map. Effect: none on our statements; we do not use §7.1's conclusion.

### Deviations

None.


## CCdlL13 (doi:10.1016/j.jde.2013.05.001)

### Errata

1. **pp. 31–32 (preprint mp_arc 11-188).** *typo; CANDIDATE* (E-CCdlL13-1). Printed: (meaning of ℓ = 2). the two pages describe ℓ = 2 inconsistently. Evidence: pp. 31 vs 32. Effect: none.

### Deviations

1. **Cor. 29–30.** *proof supplement; PLANNED* (D-LIP-1). Lipschitz dependence on the frequency by re-applying the a-posteriori theorem at a nearby frequency (CCdlL13 template), with the error estimate ‖E′‖ ≲ (ε + ‖K_ω − K⁰_ω‖_{C¹})·|ω − ω′| and Lipschitz defect O(ε/γ⁴). Effect: explicit constants of our own.


## HL19 (arXiv:1711.05515v1)

### Errata

1. **p. 18, (3.11).** *typo; CANDIDATE* (E-HL19-1). Printed: ‖K∞ − K‖_{ρ∞} < C₂‖E‖_ρ/(γ²ρ^{2τ}). the strict inequality is false when E = 0, where it would require ‖K∞ − K‖ < 0; it should read ≤. Evidence: with E = 0 the bound reads ‖K∞ − K‖ < 0, which no K∞ satisfies. Effect: none; G1 uses ≤.
2. **p. 42, (5.66).** *typo; CANDIDATE* (E-HL19-2). Printed: denominator σ_B − ‖B‖. in the estimate for the twist term the denominator should be σ_T − |⟨T⟩⁻¹|. Evidence: the left side of the same display (5.66) has σ_T − |⟨T⟩⁻¹|. Effect: none on the statements.

### Deviations

1. **§3.1 (analytic functions and norms).** *convention / reformulation; PLANNED* (D-NORM-1). Estimates are carried out in weighted ℓ¹ Fourier(–Taylor) coefficient norms instead of sup norms on complex strips; hypotheses are stated for real-analytic functions and converted once at the interface. Effect: constants differ from the printed ones; the frozen statements carry their own explicit constants or are qualitative.
2. **§2 (Hamiltonian systems and invariant tori).** *specialization; PLANNED* (D-COORD-1). Phase space Tⁿ × B is represented in coordinates: angles in ℝⁿ with ℤⁿ-periodicity, actions in an open set of ℝⁿ (no manifold structure, no general symplectic form). Effect: the general exact-symplectic setting of the source is specialized to the standard form on Tⁿ × ℝⁿ.
3. **Theorem 3.1, pp. 16–18; App. B (5.74)–(5.77).** *reformulation (uniform constants); PLANNED* (D-G1-1). Uniform constants: C₁, C₂ depend only on n, τ, ρ, ρ∞, a bound M for the Hamiltonian's derivatives, σK, σB, σT, a margin μ (gaps σ − ‖·‖ and distance to the boundary) and an upper bound γbar ≥ γ (App. B's constants increase with γ; without γbar the statement is false: machine-checked counterexample). Dropped hypotheses implied up to 2n factors: σ_{Kᵀ}, c_{X_hᵀ,1}; first integrals and the estimate on ⟨c∘K∞⟩ not transcribed. Pointwise operator norms on the open strip instead of sums of sups on the closed strip. Conclusion strengthened to explicit margins (μ/2) and ≤ in the closeness bound (cf. E-HL19-1). Same uniformization in our G2, where no γbar is needed: invariance with H2–H3 bounds |ω|, hence γ. Effect: G1 as drafted v0.2; G2.
