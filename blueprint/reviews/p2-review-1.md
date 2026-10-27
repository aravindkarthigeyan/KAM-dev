# Review 1 of Part 2 (a-posteriori KAM at fixed frequency, G1)

- Reviewed file: `blueprint/parts/p2-aposteriori.tex` (1323 lines; 29 results: 1 assumption, 4 definitions,
  16 lemmas, 3 propositions, 4 remarks, 1 theorem; 91 `\proofstep`s).
- Checked against: `KAM/Frozen/Theorems/AposterioriKam.lean` and the frozen definitions in `KAM/Frozen/Defs/`
  (`gramMatrix`, `normalFrame`, `torsion`, `torsionAverage`, `invarianceError`, `hamiltonianVectorFieldℂ`,
  `IsPrimaryOnStrip`, `IsRealOnReals`, `complexStrip`, `IsDiophantine`, `dotℂ`, `omegaZero`); Parts 0 and 1;
  HL19 (arXiv 1711.05515 v1), §§2.2–2.5, 3.2, 4.1–4.6, 5.1–5.3, App. A, read in the pinned PDF.
- Build: `latexmk -pdf -outdir=.build/review-p2 blueprint.tex` succeeds. Part 2 has no undefined references.
  The only undefined references in the build are `bp:p4:*` labels cited from Part 3.
- Reviewer: independent, refute-first. I did not write the part, and I did not edit it.

## Verdict: ACCEPT WITH FIXES

I found **no blocking and no major error**. I recomputed every structural identity, every constant and every
strip loss. I also checked every place where HL19 carries a power of γ. The argument proves the frozen
statement `KAM.aposteriori_kam` exactly as frozen:
- `C₁` and `C₂` are chosen before 𝔅, h, K, ω, γ and e;
- the hypotheses are taken on the open strip;
- the seven conclusion clauses are proved on the open strip `T_{ρ∞}`.

The fixes below are all minor. They are stale cross-references and transfer requests, citation hygiene, one
ledger inconsistency, notation clashes, and cosmetics.

## What I recomputed (refutation attempts that failed)

### 1. Structural identities: canonical Case III, A = 0, bilinear transpose

Notation: `Ω₀(a,b) = (−b,a)`, `X_h = (∂_I h, −∂_θ h)` (frozen), `L = DK`, `B = (LᵀL)⁻¹`, `N = Ω₀LB`,
`A := DX_h∘K`, `Q = −Ω₀PᵀΩ₀`.

**Hand checks.**
- `LᵀΩ₀N = LᵀΩ₀²LB = −I`, `NᵀΩ₀L = BLᵀΩ₀ᵀΩ₀L = I`, and `NᵀΩ₀N = BΩ_KB`. Hence
  `E_sym = PᵀΩ₀P − Ω₀ = diag(Ω_K, BΩ_KB)`. This agrees with HL19 Rem. 4.7, p. 26.
- `∂_ωL = AL − DE`: differentiate `Lω = X_h∘K − E` and use that mixed partials commute.
- `Ω₀X_h = ∇h`, so `Ω₀A` is a Hessian and `AᵀΩ₀ + Ω₀A = 0`. Hence
  `∂_ωΩ_K = −(DE)ᵀΩ₀L − LᵀΩ₀DE`.
- `Q(AP − ∂_ωP) = Λ + E_red`, block by block:
  - X_L = DE, so the (1,1) block is NᵀΩ₀DE and the (2,1) block is −LᵀΩ₀DE;
  - (1,2) is T;
  - (2,2) is `−LᵀΩ₀X_N = (DE)ᵀΩ₀N`, from ∂_ω(LᵀΩ₀N) = 0.

  This is HL19 (4.66) with DΩ = 0 and A = 0. The writer's claim that E_red carries no small divisor in Case III
  is correct: HL19's γ⁻¹ in (4.72) comes only from the term `L_ω(Ω_L A)`, which vanishes here.
- `QP = I − Ω₀E_sym` and `QE = −η`. The block form `η = (−NᵀΩ₀E, LᵀΩ₀E)` matches HL19 (5.6).

**Numerical cross-check.** I used sympy and numpy on a non-invariant primary torus for n = 2 (|E| ≈ 5.7), at
the complex point θ = (0.31+0.07i, −0.12+0.05i). All seven identities above hold to ≤ 1e−14. The two averages
⟨Ω_K⟩ and ⟨LᵀΩ₀E⟩ vanish to 1e−16 (64² quadrature).

**Exactness.**
- ⟨Ω_K⟩ = 0: (Ω_K)_ij = ∂_i f_j − ∂_j f_i with f_j = K^I·∂_jK^θ, and the f_j are periodic for a primary torus.
- ⟨LᵀΩ₀E⟩ = 0: LᵀΩ₀E = (D(h∘K))ᵀ − Ω_Kω, and h∘K is periodic.

**Where the γ-loss enters.** The a-priori form of the cohomological lemma gives |Ω_K| ≤ C_Ω e/(γδ^{ϰ+1}).
That γ⁻¹ passes to E_sym, and from there only into `Ω₀E_sym ∂_ωξ`. In that term ∂_ωξ = O(e/γ), so the
product is O(e²/γ²). Correct.

**Toy run of the scheme.** n = 2, h = |I|²/2 + 0.02 f(θ), golden frequency, the triangular solve exactly as in
Lemma `bp:p2:triangular`. The error sequence is 3.1e−1, 3.9e−2, 1.1e−3, 4.6e−6, 1.9e−9 (grid 192²) before the
discretization floor. The convergence is quadratic, which confirms the signs of the triangular system and of
ξ^N₀. The scripts were scratchpad-only and are not part of the repository.

### 2. Frequency bound and γ-independence

**The bound.** `ω = BLᵀ(X_h∘K − E)`, so
`|ω| ≤ σ_B · 2nσ_K · (M + ε) ≤ 4n𝔪³ = Θ` when ε ≤ 1. For the lower bound, `IsDiophantine` at k = e₁ gives
γ/1^τ ≤ |ω₁|.

**HL19 estimates that carry γ.** I checked each one; no γ⁻¹ is dropped:

| Quantity | HL19 | Here |
|---|---|---|
| Ω_K, E_sym | (4.15), (4.39) | γ⁻¹ kept |
| E_red | (4.73) | no γ, legitimately: the exact identity above |
| ξ^N₀, ξ^N | (5.20), (5.21) | γ⁻¹ |
| ξ^L, ΔK | (5.22), (5.24) | γ⁻² |
| L_ωξ | (5.27) | γ⁻¹ |
| E_lin | (5.29) | γ⁻², the improvement HL19 mention after (5.29) |
| Ē | (5.32) | γ⁻⁴ |
| L̄ − L, B̄ − B, N̄ − N, T̄ − T, ⟨T̄⟩⁻¹ | (5.36)–(5.67) | γ⁻² through d; the twist is controlled by Cauchy estimates, with no extra γ |

Every place where a power of γ is removed uses only γδ^j ≤ Θ (δ ≤ 1). No step constant depends on γ.
γ̄ is used once, to get e < γ⁴/γ̄⁴ ≤ 1.

### 3. Newton step

**Triangular system.** HL19 Lemma 5.1 translates with L_ω = −∂_ω:
- R_ω = −ℛ;
- ξ^N = ξ^N₀ − ℛη^N;
- ξ^N₀ = ⟨T⟩⁻¹(⟨η^L⟩ + ⟨Tu^N⟩);
- ⟨g^L⟩ = 0;
- Λξ − ∂_ωξ = η.

All correct.

**Invertibility.** S is inverted by a Neumann series, using |Ω₀E_sym| ≤ ½. Then QP = S gives
Q⁻¹ = PS⁻¹.

**New error.** The identity Ē = PS⁻¹E_lin + Δ²X is exact. I re-derived every constant in Definition
`bp:p2:constants`, including:
- the step smallness: 𝔠_step·ε/(γ⁴δ^{2a}) ≤ min{1, β} gives C_sym·ε/(γδ^{ϰ+1}) ≤ ½,
  d ≤ β/2 and 2𝔪C_ΔT·d/δ² ≤ ½;
- the bound 2ϰ+3 = a+1;
- γ²δ^{a−1} ≤ Θ².

**Perturbation lemma.** C_ΔT ≥ max{n, C_G, C_ΔN} holds, and every Neumann hypothesis holds. The strips are
right:
- DK and B on T_{r−3δ};
- T on T_{r−4δ}, which contains ℝⁿ, so ⟨T̄⟩ is controlled.

**Next-step hypotheses.** The ball radius changes from β to β − d. Every bound needed at the next step holds with
the full σ's, because of the summed margins.

### 4. Iteration

**Strips.**
- r_{s+1} = r_s − 4δ_s.
- The total loss is 8δ₀ ≤ ρ − ρ∞, so T_{ρ∞} ⊂ T_{r_s} for every s.
- 4δ_s < r_s.

**Smallness.** Error decay holds with q = 2^{2a}C_E·e/(γ⁴δ₀^{2a}) ≤ 1. The bound ε_s/δ_s^{2a} ≤ e/δ₀^{2a} makes
the step smallness uniform in s.

**Summed changes.**

| Change | Bound |
|---|---|
| Σd_j | ≤ μ/(4n) |
| Σnd_j/δ_j | ≤ μ/4 |
| ΣC_B d_j/δ_j | ≤ μ/4 |
| Σ2𝔪²C_ΔT d_j/δ_j² | ≤ μ/2 |

These use j = a, a+1, a+2 ≤ 2a−1. All are correct.

**Starting the induction.** C₁e/(γ⁴ρ^{4τ}) < 1 with C₁ = ρ^{4τ}·max{γ̄⁴, 𝔠_*δ₀^{−2a}} gives
e < (γ/γ̄)⁴ ≤ 1 and 𝔠_*e/(γ⁴δ₀^{2a}) < 1. This is enough. The case e = 0 gives K_s = K throughout.

**Closeness.** |K∞ − K| ≤ Σd_s ≤ 2C_ΔK·e/(γ²δ₀^a) = C₂e/(γ²ρ^{2τ}). Correct.

**Margins on the open strip.**
- Balls: μ/2 + μ/4 < μ, using the original hypothesis at the same θ ∈ T_{ρ∞} ⊂ T_ρ.
- |DK∞(θ)| = lim |DK_s(θ)| ≤ σ_K − μ/2.

Both are pointwise, so nothing is lost on the open strip.

**Derivative of the limit.** DK_s is uniformly Cauchy on the open set T_{ρ∞}, by Σnd_s/δ_s < ∞, and K_s
converges pointwise there. `hasFDerivAt_of_tendstoUniformlyOn` (open s) gives HasFDerivAt over ℂ. Valid.

### 5. Lean totality

- B, N and T are used only after det G ≠ 0 is established: A4, perturbation step (c), Prop. step (e).
- ⟨T⟩ is used only after T is continuous on ℝⁿ: Lemma `frame-basic`(a) and the perturbation twist step.
- `fderiv` agrees with the holomorphic derivative on open strips. This includes the piecewise K̄ and K∞, both
  holomorphic on the open sets where the frozen objects are evaluated.
- The frozen `torsion` (column-wise `dotℂ`, `omegaZero`, and `fderiv` of θ′ ↦ `normalFrame K θ′ j`) is
  N_iᵀΩ₀(AN_j − ∂_ωN_j). The frozen `normalFrame` column j is (Ω₀LB)_j.
- ‖iteratedFDeriv ℂ 2 X_h z‖ = ‖fderiv (fderiv X_h) z‖ (Mathlib `norm_iteratedFDeriv_fderiv`).
- All Lean norms (sup on `Fin n → ℂ`, max on the product, operator norms) are the max-row-sum norms used here.

### 6. Hypothesis scope

No frozen hypothesis is used beyond its literal content:
- boundedness of K or h on closed sets is never used;
- continuity to the boundary is never used;
- |Dh| ≤ M is unused, as stated in V8.

Every Cauchy estimate is applied to a function bounded on the larger open strip, and every Part 1 lemma is used
within its hypotheses (table below).

## Findings

| id | label / step | severity | finding | evidence | proposed fix |
|---|---|---|---|---|---|
| m1 | `bp:p2:sec-transfer` (T1–T8); `bp:p2:sec-requests` Q1, Q2, Q5; intro of `bp:p2:sec-tools` ("Results not in Part 1 are listed for transfer") | minor | The transfer and request lists are stale. Part 1 now contains all of these. | Part 1 has `operator-norms`, `cauchy-corollaries`, `averages-matrix`, `cohomological-operator` (all "Proved as bp:p2:…"), plus `increments-open`, `real-inverse`, `uniform-limits`. `p1:cohomological` already states uniqueness "(no boundedness assumed)" (Q1). `p1:iteration` already has the y₀-linear form (Q2). `docs/errata/ledger.json` already has E-HL19-3…7 = L1–L5 (Q5). | Mark T1–T8, Q1, Q2 and Q5 as done, or delete them. Keep Q3, Q4, Q6 and Q7. Reword the intro sentence of `bp:p2:sec-tools`. |
| m2 | `step:p2:ham-mvt`, `step:p2:per-real`, `step:p2:lim-holo` | minor | Three facts that now have Part 1 interface labels are justified informally: "mean value inequality" for DX_h; "adjugate formula" for real inverses; a Mathlib name for the uniform limit. | Part 1 has `bp:p1:increments-open` (exactly the T5 statement), `bp:p1:real-inverse` and `bp:p1:uniform-limits`. | Cite these labels so the dependency graph records the edges. The Mathlib name can stay as a Lean hint. |
| m3 | `bp:p2:L5` vs ledger E-HL19-7 | minor | The blueprint and the ledger disagree on the nature of the defect. The blueprint (L5) says "typo; the proof establishes the strip margin via (5.73)". The ledger says "kind: gap … the proof establishes the margin on the real torus only … needs an extra argument". | HL19 (5.73), p. 44, bounds `dist(K_s(T^d_{ρ_s}),∂B)` on the complex strips, and this passes to `T^d_{ρ∞}`. So L5 is right and the ledger overstates. (Part 2 is unaffected: it proves μ/2 margins independently.) | Orchestrator: change E-HL19-7 to kind "typo" with the L5 wording. The ledger is public (D10). |
| m4 | intro bullets (l. 10–12), Def. `bp:p2:objects`, Lemma `bp:p2:error-decay`(a), §ledger | minor | Notation clashes. The source remarks use HL19's own symbols; the text uses the same letters for other things. | A is HL19's Case-III matrix "A = 0" (l. 11) and also A := DX_h∘K (l. 298). G is HL19's metric "G = I₂ₙ" (l. 10) and also the Gram matrix. Q is the matrix −Ω₀PᵀΩ₀ and also the constant Q in `error-decay`(a). d is the displacement bound and also HL19's dimension d (l. 8, L-list). | Write "HL19's matrix A(θ) of (3.5)" and "HL19's metric G" in the intro, and rename the error-decay constant (e.g. Q′). A formalizer will read these literally. |
| m5 | paragraph after Def. `bp:p2:constants` (l. 109–111) | minor | Wrong pointer: "We use a ≥ 3 in Lemma error-decay". | Lemma `error-decay` holds for every a > 0. The condition a ≥ 3 is used in `step:p2:it-sums` (j = a+2 ≤ 2a−1). | Point to Proposition `bp:p2:iteration`. |
| m6 | Q6 (`bp:p2:sec-requests`) | minor | Q6 says Lemma `bp:p2:perturbation` "is the stability statement STAB". It has the hypothesis \|ω\| ≤ Θ, which in Part 2 comes from Lemma `frequency` (needs \|E\| ≤ 1). Its absolute conclusions are crude (\|B̃\| ≤ 2𝔪); only the difference bounds keep margins. | Statement of `bp:p2:perturbation`; `docs/PLAN.md` STAB node. | State in Q6 that a Part 4 caller must supply \|ω\| ≤ Θ (automatic for invariant tori, by `frequency` with ε = 0) and must use the difference bounds (b)–(f) for margins. |
| m7 | Lemma `bp:p2:matrix`(a) | minor (cosmetic) | The qualifier "if q ≤ p" is unnecessary. \|Mᵀ\| = max_j Σ_i \|M_ij\| ≤ p·max\|M_ij\| ≤ p\|M\| for any shape. | Direct. | Drop the qualifier, or keep it with a note that it only matches `p1:matrix-norms`. |
| m8 | Lemma `bp:p2:frame-basic`(c) | minor (cosmetic) | The hypothesis "ε ≤ 1" in (c) is not used. | `step:p2:fb-eta`. | Drop it. |
| m9 | build | minor (cosmetic) | Overfull boxes in Part 2. | Log lines for p2: 147–150 (1.6pt), 192–196 (19.9pt), 271–275 (3.9pt), 941–946 (4.5pt). | Rebreak the displays or paragraphs; the worst is `step:p2:avg-bound`. |

Points I examined that are **not** findings:
- the strict "<" in `bp:p2:newton-error` (C_ΔK·ε/(γ²δ^a) < β) holds because d ≤ β/2 and β > 0;
- the piecewise definitions of K̄ and K∞ do not affect any frozen object on the open strips where those objects
  are evaluated;
- realness and periodicity of ξ, ΔK and K∞ are proved, not assumed;
- the uniqueness class needed in `bp:p2:cohomological`(b) is supplied by `p1:cohomological` as now stated;
- HL19 Rem. 2.3 assumes the action form is periodic, so the "Not errata" note on Lemma 4.3 is accurate;
- L1–L4 are verified against the PDF: Lemma A.1 is on p. 55, (5.15)–(5.18) on p. 33, (5.68) on p. 43, the
  sentence after (5.67) on p. 42, and "s → 0" on p. 44.

## Part 1 citations

| Part 1 label | where used in Part 2 | use within the interface statement? |
|---|---|---|
| `bp:p1:cohomological` | Def. `constants` (c(n,τ)); `step:p2:coh-components`; via `bp:p2:cohomological` in `geometry`, `triangular` | Yes. g is holomorphic, bounded by H on the open strip, 1-periodic, ⟨g⟩ = 0; 0 < δ < r; τ ≥ 0; γ > 0. Vector data are handled componentwise. Uniqueness is used in the class "holomorphic periodic, no boundedness", as stated. |
| `bp:p1:cauchy-strip` | `step:p2:cauchy-entries` (hence every Cauchy bound: DE, (DE)ᵀ, ∂_ωN, L̃−L, ∂_ω(Ñ−N), DK_{s+1}−DK_s) | Yes. Each application is to a function bounded on the larger open strip (E by ε, N by 𝔪², K̃−K by d, Ñ−N by C_ΔN·d/δ), with 0 < δ < r. Matrix values are covered ("norms of Part 0"). |
| `bp:p1:averages` | source of `bp:p2:averages`; alternative in `step:p2:avg-deriv` | Yes. It is applied on T_{r/2}, where boundedness comes from `periodic-bounded`. |
| `bp:p1:averages-real` | `step:p2:avg-deriv` (⟨∂_ℓv⟩ = 0, ⟨∂_ωv⟩ = 0) | Yes. The restriction of a holomorphic periodic v to ℝⁿ is continuous, periodic and C¹. Applied entrywise. |
| `bp:p1:periodic-bounded` | `step:p2:avg-deriv` (alternative) | Yes. |
| `bp:p1:holomorphic-inverse` | `step:p2:fb-holo` (B = G⁻¹ holomorphic) | Yes. G is holomorphic with det G ≠ 0 on the open T_r. |
| `bp:p1:neumann` | `step:p2:ne-invert` (A = I₂ₙ), `step:p2:pt-binv` (A = G), `step:p2:pt-twist` (A = ⟨T⟩) | Yes. \|A⁻¹\|\|Δ\| ≤ ½ is verified each time; the pointwise version is used for S and G̃. |
| `bp:p1:taylor` | `step:p2:ham-mvt` (X_h, U = 𝔅, A = M) | Yes. The segment lies in B_β(K(θ)) ⊂ 𝔅, and \|D²X_h\| ≤ M on 𝔅. |
| `bp:p1:matrix-norms` | Lemma `bp:p2:matrix` (source, `step:p2:matrix-transpose`) | Yes. Transposes are of 2n×n matrices. |
| `bp:p1:iteration` | Lemma `bp:p2:error-decay` (comparison), Q2 | Not relied on. Part 2 proves its own sharper form, which matches the current second half of `p1:iteration` (see m1). |
| `bp:p1:increments` | T5 only (as "covers only strips") | Not used. |
| *not cited, should be* | `bp:p1:increments-open`, `bp:p1:real-inverse`, `bp:p1:uniform-limits` | See m2. The uses in Part 2 are within those statements. |

## Lean hard rules

Recorded for any downstream Lean work:
- never use `set_option maxHeartbeats` or any heartbeat override;
- no Lean file may exceed 1500 lines.

This review touches no Lean file.
