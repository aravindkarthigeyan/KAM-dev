# Part 11a split plan: the maximal-case analytic weak-nondegeneracy KAM theorem (P-FIXED gate)

Author: bpP-p11a-1 (2026-10-27). Authority: `PLAN.md`, "P-FIXED gate after the Rüssmann check"; `reviews/p11a-russmann-check.md`
(rows `p11a:*`, errata R01-1, R05-1, R05-2, A2-A7, R-CP-1/2). Sources: Rus01 = `sources/pdf/Russmann01_RCD_6_2_119-204.pdf`
(print page = pdf page + 118), Rus05 = `sources/pdf/Russmann05_RCD_10_1_21-31_addendum.pdf`, CP09 = `sources/incoming-P/cp09.pdf`.
Rus01 pages quoted below were read (§§7.2-7.5, 13.1-13.5, 16, 17, 18.1-18.5); the others are taken from the review's locators and must be re-read by the
file's writer before writing (the plan flags them "to read").

Lean hard rules (verbatim; every brief for Part 11a, and every Lean brief derived from it, repeats them):
(1) Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor
or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default heartbeats, report it as a design signal.
(2) No Lean file may exceed 1500 lines of code. When a file approaches the cap, split it into focused modules, preserving public import paths as cheap facades.

## 1. The theorem, and where we follow Rüssmann and where we do not

**Setting (maximal case, frozen conventions).** Period-one angles `θ ∈ ℝ^N/ℤ^N`, characters `e^{2πik·θ}`, max norms on `ℝ^N, ℂ^N`, induced
operator norms (balls and derivative tensors in the Euclidean norm only where an orthogonal change of variables is needed, with explicit `√N`
factors; 11a-1 conventions). `N` = number of actions (for P-FIXED, `N = 2n` after CP09's polar reduction). `H(θ,I) = h(I) + f(θ,I)`, `h` and `f`
holomorphic on `T_s × (K+2ϑ)` (`K ⊂ ℝ^N` compact, `meas K > 0`), `ω = ∇h`. No elliptic or hyperbolic variables: Rus01's `p = q = 0`.

**Target statement `bpP:p11a:weak-kam-quantitative` (File 11a-5).** Data: `N, K, d = diam_∞ K, ϑ`, **the angular strip width `s ∈ (0,1]`** (see the relation below), the index/amount `(ρ, μ, β)` of `ω` on `K` (Definition
`bpP:p11a:index-def`, `ρ ∈ {1,2}`), the chart constants `M` (size of `D^k g_ρ[ω]`, `k ≤ μ+1`, on `K_ϑ`) and `C_1 ≥ |ω|, |D²h|`, an exponent
`τ_D > max{Nμ/ρ − 1, N − 1}` (the second term is the frozen `IsPhysicalTorus` clause (vii), `τ > d − 1`), a loss `ε* ∈ (0, meas K)`. Conclusion: explicit
`γ > 0` and `ε_adm > 0`, depending only on these data (including `s`), such that every `f` with `|f|_{s,K+2ϑ} ≤ ε ≤ ε_adm` admits:
(i) a compact `H ⊂ K`, `meas H ≥ meas K − ε*`; (ii) real-analytic maps `𝒦_b : ℝ^N → ℝ^N × ℝ^N` (`b ∈ H`) that are **primary (equivariant), not periodic**, in the maximal action-angle coordinates: `𝒦_b(θ+k) = 𝒦_b(θ) + (k,0)` for `k ∈ ℤ^N`, i.e. the **defect** `u_b(θ) := 𝒦_b(θ) − (θ,b)` is period one in `θ`; the torus is `𝒦_b(ℝ^N)` mod the lattice action; periodic physical maps arise only after the polar/physical charts (Part 11/13) and carry the frozen `IsPhysicalTorus` clauses there. One period-one frequency throughout: `∂_t 𝒦_b(θ + t w_b) = X_H(𝒦_b(θ + t w_b))`,
`w_b = ω_*(b)`, `|k·w_b| ≥ γ|k|_1^{−τ_D}` (frozen `IsDiophantine`), `𝒦_b` an embedded Lagrangian torus (`D𝒦_b` injective, zero symplectic pullback, `𝒦_b(θ)=𝒦_b(θ')` only if `θ−θ' ∈ ℤ^N`);
(iii) displacement of the **defect**, uniformly in `θ ∈ ℝ^N` (periodicity of `u_b` makes this consistent): `sup_θ |u_b(θ)|_∞ ≤ Δ(ε; data)` with an explicit `Δ`; (iv) the evaluation map `𝒦(b,θ) = 𝒦_b(θ)` is injective on `H × ℝ^N/ℤ^N` in the lifted coordinates (`(b,θ) ∈ H × [0,1)^N`), with
`|𝒦(b,θ) − 𝒦(b',θ')| ≥ ½|(b,θ) − (b',θ')|`-type inverse-Lipschitz bound, and Lipschitz, so the image is compact with
`meas(𝒦(H × [0,1)^N)) ≥ (1−λ)^{2N} meas H ≥ 2^{−2N} meas H` when the defect is `λ ≤ 1/4`-Lipschitz (the lower factor is `(1−λ)^{2N}`, not `(1+λ)^{−2N}`; review P11A1-P05); the image `𝒦(H × [0,1]^N)` is compact (continuous image of a compact set) and its quotient by the lattice action is compact in the quotient target; (v) `ε_adm ≥ ` an explicit polynomial expression in `(β, d, ϑ, s, M, C_1, ε*, γ-scale)` (the shrinking-domain budget, `bpP:p11a:budget`). **Relation among `s`, `ϑ`, `T_0`:** the Fourier cutoffs spend angular width `Σ_ν d_ν`, so the initial inequality `(I0): Σ_ν d_ν ≤ s/2` (with `d_ν` of `fourier-cutoff` below) is part of the hypotheses on `T_0`; `s` and `ϑ` are independent data, nothing recovers `s` from `ϑ`; if the physical coupling shrinks the angular width, `s ≥ s_0 ε^{a_s}` enters the budget exponent `B`.
Not literal Rus01 Thm 1.7 (Thm 1.7 has no displacement, no Lipschitz family, no explicit `ε_adm`, and an all-powers condition on `Φ` that a power law violates, A3).

**Where we follow Rus01 (Rüssmann-type scheme).** Translation `(ξ,η) ↦ (ξ, b+η)` with parameter `b ∈ K` (Rus01 (14.2), §14); normal form
`N_ν = h_ν(b) + ⟨ω_ν(b), η⟩` (no `η²` term; it sits in the remainder); remainder `R_ν`, `ε_ν = ε_0 δ^{κν}` (**geometric** with ratio `δ^κ`, `κ ∈ (1/2,1)`, e.g. `κ = 24/25`, Rus01 (13.1) p. 156; it is not superlinear; all exponent inequalities of (13.1.2) are rechecked in 11a-3, and the cutoff power called `d` in `Ψ(T)=T^{-d}Φ(T)`, `d = max(n+1, …)`, is renamed `d_cut` to avoid the clash with the diameter `d`), cutoffs `T_ν = Ψ^{-1}(Ψ(T_0) δ^{τν})`,
`Ψ(T) = T^{-d} Φ(T)`, domains `r_ν, s_ν, t_ν` (§§13.1, 16.4); at each step cut the remainder to a trigonometric polynomial of degree `T_ν` in `θ` and degree `≤ 1` in `η`,
absorb its average into `Δω_ν, Δh_ν`, solve the homological equation for the rest with divisors `|k·ω_ν(b)| ≥ ½γΦ(T_ν)`, conjugate by a "simple canonical map" (`X` depends on `θ` only, `Y` affine in `η`,
Rus01 §§10, 12); parameters `b` are removed at each stage `K_{ν+1} = {b ∈ K_ν : |k·ω_ν(b)| ≥ ½γΦ(T_ν), 0<|k| ≤ T_ν}` (16.1) and the total loss is controlled by the
sublevel estimate (§§17-18, here 11a-1); limit on `K_∞ = ∩ K_ν` (§15); Theorem 16.7 (existence of non-resonant parameters from the initial size and the frequency increments only).

**Where we replace Rus01 (every item a recorded deviation, to be repeated in each file's notes).**

| # | Rus01 / Rus05 | Replacement | File |
|---|---|---|---|
| D-1 | scalar sublevel (17.4) from Bakhtin [2] | elementary divided-difference proof (done) | 11a-1 |
| D-2 | one tensor norm + polarization constant `σ_ν`, Gamma/Stirling in ball volume | two norms (diagonal/operator), cube bound | 11a-1 |
| D-3 | general approximation function `Φ` with `s^λ Φ(s) → 0` for all `λ`; `Φ_{mμ_0}` | the power `Ψ(k)=γ|k|_1^{-τ_D}`, explicit lattice sum, `τ_D > Nμ/ρ − 1` (A3) | 11a-1, 11a-3 |
| D-4 | trigonometric cutoff Thm 7.3 via [21] (Akhiezer) / Rus05 Thm 1 (elliptic functions; R05-1, R05-2) | elementary Fourier cutoff in `|k|_1` from Cauchy decay: `\Kref{bp:p1:decay}`, `\Nref{bpN:p4:projections}` (tail `Σ_{|k|_1>T} e^{−2π|k|_1 d}`); NOT the repaired Rus05 estimate | 11a-2 |
| D-5 | algebraic cutoff Thm 7.4 via Rüssmann 1983 Lemma 6 ([18], external) | Taylor/Cauchy cutoff of order 2 in `η` (`|F − F(·,0) − ∂_ηF(·,0)η| ≤ ((|η|/s)²/(1−|η|/s)) |F|_s`) | 11a-2 |
| D-6 | Euclidean `|k|_2`, `2π`-periodic angles | `|k|_1`, period one; `√N` factors recorded | all |
| D-7 | §§19-20 smoothing/chain extension (≈ 9 pages) | chain extension by mollified cut-offs: `ω̃_ν = ω_0 + Σ_{j<ν} χ_j Δω_j`, `χ_j = 1` on `K_j`, supported in the real part of `B_j`, `‖D^kχ_j‖ ≤ c(N,μ) t_j^{-k}`, so the `C^μ`-size of each increment is `≲ t_j^{-μ} L_j` and is summable iff `κ`-condition `τ μ < τ_0` (Rus01 (20.35)); **to be verified by the 11a-3 writer** (if a gap appears, fall back to Rus01 §§19-20 with this plan's statement list) | 11a-3 |
| D-8 | Rus01 Thm 1.7 statement (continuous `𝓧`, no displacement) | explicit displacement and bi-Lipschitz family (A2) | 11a-4 |
| D-9 | `ε_0, γ` existence only; Lemma 8 of CP09 (printed constants not independently reproduced) | explicit admissible `ε_adm` recomputed from the schedule, lower bound (A4) | 11a-3, 11a-5 |

## 2. The five files

Page budgets are for the final printed pages in the Part-0 format; a file over 25 pages is split again (`p11a3a/b`). Sum ≈ 55-65 pages (review: 35-60;
the upper end is the risk). Estimated Lean: 11a-1 2-3k, 11a-2 4-6k, 11a-3 5-8k, 11a-4 3-5k, 11a-5 1-2k lines (all under the 1500-line file cap after splitting
into modules `KAM/Provider/...` by the Lean orchestrator).

### 11a-1 `parts/p11a1-weak-measure.tex` (WRITTEN; 9 pages; compiles with exit 0, no `!` lines)

Labels: `bpP:p11a:index-def`, `rank-compact` (Rus01 §§18.2-18.3 pp. 185-186; CP09 Lemma 1; via `\Pref{bpP:p10:cp09-lemma1}`), `stability` (finite-order, `ρ=1,2`),
`M-bound`, `divided-difference`, `scalar-sublevel` (Rus01 Lemma 17.2 p. 180, own proof), `ball-sublevel` (Lemma 17.3 pp. 180-181), `sublevel` (Thm 17.1 pp. 180-183,
constant `C_sub = 2^{N+2} μ (√N d)^{N−1} (M/β)(1+(4+1/ϑ)√N d)`, range `ε < β/4`), `diophantine-measure` (Rus01 Thm 18.5 pp. 189-193 with `p=q=0`, `k`-dependent `ω̃_k`),
`power-law` (`meas(K∖H_γ) ≤ C_Dio γ^{ρ/μ}`, `τ > Nμ/ρ − 1`, threshold `γ_*(ε*)`), `chart-scaling`, `consumers`.
Inputs: `\Pref{bpP:p10:finite-type}`, `index-def`, `cp09-lemma1`, `stability`, `interface`; `\Kref{bp:p4:lattice-sum}`, `\Kref{bp:p4:lattice-count}`, `\Kref{bp:p1:ext-mvt}`, `\Kref{bp:p1:ext-measure}`.

### 11a-2 `parts/p11a2-analytic-step.tex` (analytic cutoff, homological equation, canonical step; 14-18 pages)

Rus01 §§7.2-7.5 pp. 134-136 (read), §§8, 10 pp. 137-138, 143-147 (to read), §11 pp. 148-153 (to read), §12 pp. 154-155 (to read); Rus05 §§9-11 pp. 26-31 only as a comparison
(the plan does not use it: D-4); CP09 pp. 17-19 (to read) for what the consumer needs.
Statements (each with explicit domains, `t, σ, ρ`-losses, in sup norms on complex strips `T_r × {|η|_∞ < s} × B` with a holomorphic parameter `b ∈ B ⊂ ℂ^N`, the sup over `b`
being immediate because every operation is fibrewise in `b`):
- `bpP:p11a:fourier-cutoff`: for `F` bounded holomorphic 1-periodic on `T_r`, `0<d<r`, `T ≥ 0`: `|F − Σ_{|k|_1 ≤ T} F̂_k e^{2πik·θ}|_{r−d} ≤ c(N)(1+d^{-N}) e^{−πTd} |F|_r` (from `|F̂_k| ≤ e^{−2π|k|_1 r'}|F|_r` and `#{|k|_1=j} ≤ 2·3^{N−1}j^{N−1}`; half the exponent pays the polynomial factor);
  inputs `\Kref{bp:p1:decay}`, `\Kref{bp:p1:summation}`, `\Kref{bp:p1:exp-sums}`, `\Nref{bpN:p4:projections}` (weighted-norm form, `e^{-2πKσ}`) and `\Nref{bpN:p4:sup-weighted}` (sup/weighted conversion `coth^N`).
  **Loss choice (corrects the first draft, review P11A1-P02):** the choice `d = (N+1)log(1/α)/(2πT)` does NOT give error `≤ α` (the factor `d^{-N}` grows like `T^N`). Take instead `d_T = [log(2c(N)/α) + N log(πT)]/(πT)` (assume `d_T ≤ min(1,r/2)`): then `c(N)(1+d^{-N})e^{−πTd} ≤ 2c(N)(πT)^N e^{−A} = α` with `A = πTd_T`, which is `≤ α` (for `d_T ≤ 1`, `A ≥ 1`: `d^{-N} ≤ (πT/A)^N ≤ (πT)^N`). The loss `d_ν := d_{T_ν}` contains a `log T_ν` term; with `T_ν` geometric in `ν`, `Σ_ν d_ν < ∞`, to be bounded explicitly in 11a-3 (condition `(I0)`); strip-loss summability and the budget are recomputed from this, not imported from Rus01 Thm 7.3 (`ρ = n log(4n/α)/T`, error `4α/5`; deviation D-4). The 11a-2 writer proves the estimate and the loss choice together.
- `bpP:p11a:taylor-cutoff`: Cauchy-Taylor cutoff of order `≤ 1` in `η` on `{|η|_∞ < δ^{σ} s}` with error `≤ 2δ|F|_s`-type (Rus01 Thm 7.4 p. 135, `0<σ<1` fixed by the schedule of §13.1).
- `bpP:p11a:cutoff` (row `p11a:analytic-cutoff`): the composed estimate `|R − R_*|_{r−ρ, s'} ≤ (…)δ ε_ν` with `R_* ∈ P(B, T)` (Rus01 Thm 7.2 / (13.10) p. 159); records which losses are used.
- `bpP:p11a:homological-maximal` (row `p11a:homological-maximal`, Rus01 §11): for `R_* = R_0(b,θ) + R_1(b,θ)·η` trigonometric of degree `≤ T` and `|k·ω(b)| ≥ ½γΦ(T)` for `0<|k|_1 ≤ T`:
  `φ = φ_0(θ)+φ_1(θ)·η` with `∂_ωφ_0 = −(R_0−⟨R_0⟩)`, `∂_ωφ_1 = −(R_1−⟨R_1⟩)` and `Δω = ⟨R_1⟩`, `Δh_0 = ⟨R_0⟩`; bounds from `\Kref{bp:p1:cohomological}` (constants `c(N,τ)γ^{-1}δ^{-(τ+N)}`), here
  with divisor `Ψ`, and parameter Cauchy estimates for `b`-holomorphy (`\Kref{bp:p1:cauchy-open}` only covers orders `≤ 3`; for derivative orders `≤ μ+1` use `\Nref{bpN:p4:general-cauchy}`). The divisor hypothesis is a hypothesis of the lemma on `b` (a premise supplied by the iteration), not an assumption on any
  conclusion.
- `bpP:p11a:affine-flow`: the time-one flow of `φ = φ_0(θ) + φ_1(θ)·η` is a simple canonical map in Rus01's sense (§12 pp. 154-155, Lemma 12.1): `θ' = φ_1(θ)` autonomous in `θ`, `η'` affine in `η`; existence, domain inclusions, `|X−id|`, `|DX − 1|`, and the **Lipschitz bound `e^{c C_ν T_ν}`**
  from `\Nref{bpN:p5:flow}`, `\Nref{bpN:p5:canonical-map}` (these are stated in the weighted norm of N; the sup-norm translation is `\Nref{bpN:p4:sup-weighted}`; if a sup-norm version is missing it is added as a labelled lemma in 11a-2).
- `bpP:p11a:canonical-step` (row `p11a:canonical-step`): `H∘X = N_+ + R_+`, `N_+ = N + Δh + ⟨Δω,η⟩`, with `|R_+| ≲ ε_ν² / (loss factors) + (cutoff error)` as in Rus01 §13.6-13.12 (to read), in the maximal case; this is the one-step output consumed by 11a-3.
Reuse: track N Parts 4-5 for flows/composition (no new ODE theory), track K p1 for Cauchy/cohomological/strips. Not reusable: N's Iterative Lemma `\Nref{bpN:p6:iterative}` (one scale, no parameters, no `η`-linear normal form term).

### 11a-3 `parts/p11a3-iteration-selection.tex` (iteration schedule, inductive lemma, initialisation, parameter selection; 18-22 pages)

Rus01 §13.1-13.4 pp. 156-158 (read), 13.5-13.12 pp. 159-164 (13.5-13.6 read), §14 pp. 165-171 (to read), §16 pp. 178-179 (read), §20.5-20.7 pp. 201-203 (to read); CP09 Lemma 8 pp. 18-19 and (34)-(47) pp. 18-21 (to read).
- `bpP:p11a:schedule`: constants `δ, κ, σ, φ, ψ, τ, τ_0` (admissible values of Rus01 (13.1) specialised), `Ψ(T) = T^{-d−τ_D}` for the power divisor, `T_ν = T_0 δ^{−τν/(d+τ_D)}`, `ε_ν = ε_0 δ^{κν}`, `t_ν, r_ν, s_ν`; proof that `Σ C_ν T_ν < ∞` and the Bruno-type integral `∫_{T_0}^∞ log(1/Φ) dT/T² = τ_D(log T_0+1)/T_0` conditions hold for the power (review A3 items 2, 3) with the exact exponent bookkeeping `a > t/(d+τ_D)`; this replaces Rus01 §1.4.3.
- `bpP:p11a:initial` (Rus01 §14): translation, holomorphic domains, the initial remainder `R_0 = ½ η·D²h(b) η + f(θ,b+η) + …` of size `ε + C_1 s_0²` (the `s_0²` term is the origin of the shrinking-domain budget), the smallness hypotheses (13.4)-(13.7) as one list of explicit initial inequalities `(I1)-(I5)` in terms of `(ε, γ, T_0, ϑ, C_1, δ, κ)`.
- `bpP:p11a:inductive-lemma` (Rus01 Lemma 13.4 p. 158, maximal case): under the `ν`-th hypotheses, for every `b ∈ B_ν` there are `Δω_ν, Δh_ν, X_ν, R_{ν+1}` with `|Δω_ν| ≤ 3ε_ν/(2 s_ν)`, `X_ν` holomorphic in `b ∈ B_{ν+1}`, `|X_ν − id| ≤ C_ν`, Lipschitz `e^{24 C_ν T_ν}` (constants recomputed), `H_{ν+1} = H_ν∘X_ν`. Proof by 11a-2. Parameter dependence: holomorphic in `b` on `B_ν = K_ν + t_ν`.
- `bpP:p11a:smooth-cutoff` and `bpP:p11a:finite-extension` (replaces Rus01 §§19-20, D-7): explicit `C^μ` cut-off `χ` with `χ = 1` on a compact set `E`, `supp χ ⊂ E + t`, `|D^kχ| ≤ c(N,μ) t^{-k}` (convolution of the indicator of `E + t/2` with a polynomial bump of radius `t/4`; `k ≤ μ+1`); the chain extension `ω̃_ν`; the closeness `‖ω̃_ν − ω‖^μ_{dg,K_ϑ} ≤ Σ_j c t_j^{-μ} L_j < ∞` (needs `τμ < τ_0`).
- `bpP:p11a:parameter-selection` (Rus01 Thm 16.7 p. 179, proof §20.7 pp. 201-203 replaced): given `ε* ∈ (0, meas K)`, the iteration can be run for all `ν`, `K_∞ ≠ ∅`, `meas K_∞ ≥ meas H ≥ meas K − ε*`, with `H = {b ∈ K_∞ : |k·ω_*(b)| ≥ γ|k|_1^{-τ_D}, k ≠ 0}`. **Interface to be supplied per Fourier mode (Remark `bpP:p11a:consumers`(b), review P11A1-05):** stage of `k` is `ν(k)=min{ν : |k|_1 ≤ T_ν}` (the `ℓ^1` norm of the cutoff, never `|k|_2`); `(I1)` map `ω̃_k = ω̃_{ν(k)}` = chain extension, equal to `ω_{ν(k)}` on `K_{ν(k)}`, closeness (D3) uniform in `k`; `(I2)` mode-wise test with margin `2γ|k|_1^{-τ_D}` (not the cutoff-wide `Φ(T_ν)`); `(I3)` tail `|ω_*−ω_{ν(k)}|_∞ ≤ Σ_{j≥ν(k)}L_j ≤ γ|k|_1^{-τ_D−1}`, ensured by `Σ_{j≥ν}L_j ≤ γT_{ν−1}^{-τ_D−1}`. Then `ω_*(b)` is `(γ,τ_D)`-Diophantine by `\Pref{bpP:p11a:limit-bridge}` (`|k·(u−v)| ≤ |k|_1|u−v|_∞`) and the cutoff-wide divisor `≥ γT_ν^{-τ_D}` follows for the homological equation; the excluded measure accumulates as the sum over shells of the 11a-1 bound, total `≤ C_Dio (2γ)^{ρ/μ} ≤ ε*` (`\Pref{bpP:p11a:diophantine-measure}`, `\Pref{bpP:p11a:power-law}`, `\Pref{bpP:p11a:stability}`); the thresholds `γ ≤ γ_*(ε*)` (with `2γ`), `L_0 ≤ γL_2*` are explicit.
Inputs: 11a-1, 11a-2; `\Kref{bp:p1:iteration}` (quadratic recursions; the scheme here is only **geometric** with ratio `δ^κ`, so this lemma is not directly applicable: state a geometric-recursion version in 11a-3); `\Kref{bp:p1:cauchy-open}`/`\Nref{bpN:p4:general-cauchy}`.

### 11a-4 `parts/p11a4-limit-family.tex` (limit, tori, displacement, inverse-Lipschitz; 12-15 pages)

Rus01 §§15.2-15.6 pp. 172-177 (to read) for convergence and domain inclusion; the Lipschitz part is new (A2).
- `bpP:p11a:limit-map` (Rus01 Thm 15.5): for `b ∈ K_∞` the compositions `X_0∘…∘X_ν` converge, uniformly on the angle strip and on compact `ξ`-sets, to a real-analytic map `𝓧(b,·)`; `\Kref{bp:p1:uniform-limits}`; summability `Σ C_ν T_ν < ∞` (11a-3 schedule).
- `bpP:p11a:limit-torus`: `H∘𝓧(b,·) = h_*(b) + ⟨ω_*(b),η⟩ + O(η² + η·…)`; hence `𝒦_b(θ) = 𝓧(b,θ,0)` satisfies `∂_t𝒦_b(θ+tω_*(b)) = X_H(𝒦_b(θ+tω_*(b)))`, is real analytic, Lagrangian (image of the zero section under symplectic `𝓧(b,·)`), `D𝒦_b` injective, embedded mod `ℤ^N` (from the displacement bound; equivariance `𝒦_b(θ+k)=𝒦_b(θ)+(k,0)` from `X(·)−id` being period one in `ξ`); the symplectic sign convention is that of Part 0 (`bpP:p0:hamsymp`).
- `bpP:p11a:displacement`: for the periodic defect `u_b = 𝒦_b − (id,b)`: `sup_θ |u_b(θ)|_∞ ≤ e^{c C T}`-weighted `Σ_ν C_ν` plus the action scale `s_0`; explicit in `ε, γ, T_0, ϑ, δ, κ` (A2).
- `bpP:p11a:lipschitz-family`: the **defect** `Δ𝒦(b,θ) = 𝒦_b(θ) − (θ,b)` (periodic in `θ`, so defined on `K_∞ × ℝ^N`) is `λ`-Lipschitz with `λ ≤ 1/4` (explicit): in `θ` by the Lipschitz bounds of 11a-3; in `b` by the local-to-global argument: for `|b−b'| ∈ [t_{ν+1}, t_ν)` use Cauchy estimates on the segment for steps `j < ν` (the segment lies in `B_j`) and the plain displacement `2C_j` for steps `j ≥ ν`, needing `Σ_{j≥ν} C_j ≤ c t_{ν+1}` (a `κ`-versus-`τ` condition); for `|b−b'| ≥ t_0` use `2 Σ C_j`. No convexity of `K_∞` is used (R-CP/A2 comment in the review).
- `bpP:p11a:evaluation-bilipschitz`: from `\Kref{bp:p1:lipeo}` (the evaluation map `(b,θ) ↦ (θ,b) + Δ𝒦` is injective on `H × ℝ^N` with `(1−λ)|·| ≤ |·| ≤ (1+λ)|·|`, hence its inverse is `(1−λ)^{-1}`-Lipschitz) and `\Kref{bp:p1:lip-image}`: the image of the half-open cell `H × [0,1)^N` is Borel (`𝒦` injective continuous on the compact `H×[0,1]^N`, Lusin–Souslin or direct) with measure `≥ (1−λ)^{2N} meas H` (not `(1+λ)^{-2N}`); compactness of `𝒦(H × [0,1]^N)` and of its quotient.
Inputs: 11a-3 output; `\Kref{bp:p1:uniform-limits}`, `\Kref{bp:p1:lipeo}`, `\Kref{bp:p1:lip-image}`, `\Kref{bp:p1:mcshane}` (if an extension of the defect from `H` is wanted for the consumer).

### 11a-5 `parts/p11a5-quantitative-theorem.tex` (quantitative maximal theorem and budget; 8-12 pages)

Rus01 Thm 1.7 p. 126 and §14.10 p. 171 (to read); CP09 Thm 3, Lemma 8, Remark 5, (34)-(47) pp. 6-7, 18-21 (to read).
- `bpP:p11a:weak-kam-quantitative`: the target statement above, assembled from 11a-1 (measure), 11a-3 (iteration/selection), 11a-4 (tori, displacement, family), with the quantifier order `data → ε* → (γ, ε_adm) → f`. No premise equals a conclusion; the Diophantine property, the bi-Lipschitz family and the polynomial threshold are outputs.
- `bpP:p11a:budget` (row `p11a:shrinking-domain-budget`): `ε_adm` as an explicit function of `(N, μ, ρ, β, M, d, ϑ, s, C_1, ε*, τ_D)`, monotone: nondecreasing in `β, ϑ, s, ε*`, nonincreasing in `M, d, C_1`; and **a lower bound**: if `ϑ ≥ ϑ_0 ε^{a_ϑ}`, `s ≥ s_0 ε^{a_s}`, `β ≥ β_0 ε^{a_β}`, `ε* ≥ ε*_0 ε^{a_*}`, `M, C_1 ≤ M_0 ε^{−a_M}`, then `ε_adm ≥ c ε^{B}` with `B` explicit in the exponents (A4: lower bound, not O). This is the interface Part 11 uses with CP09's prepared family (`ϑ = ε/16`, `ε* = ε^{p+1}`, `β ≥ cε^{μ+2}`, `T_0 = ε^{-2}`).
- `bpP:p11a:reference-constants`: for the reference analytic `ω = ∇h` on `K_{2ϑ}`: `M` from the general Cauchy estimate (`\Nref{bpN:p4:general-cauchy}`) and `M-bound` (11a-1), `C_1`; instantiation `(ρ, μ, β) = (2, μ_0, β)` of `\Pref{bpP:p10:interface}(d)` is NOT automatic for the prepared maximal frequency (different `m`, shrinking patch): see Part 11.
- `bpP:p11a:physical-interface`: the shape in which Part 11 and Part 13 consume the theorem: `H_ε = h(I) + ε f`-type family, torus map `𝒦`, displacement in the original actions, `S := image` with `0 < meas S < ∞`; period-one frozen form (`IsPhysTorus` (i)-(viii) minus the chart-specific clauses). Frequency scaling `w_b = ω_*(b)` already in period one, so no conversion inside Part 11a (conversion of CP09's `2π` angles is done once by `\Pref{bpP:p1:period-convert}`).

## 3. Inputs used from other parts

- **Part 10** (`parts/p10-nondegeneracy.tex`): `\Pref{bpP:p10:interface}` (good patch, (c) R-nondegeneracy of `(ν,Ω)`, (d) index/amount independent of the coupling), `\Pref{bpP:p10:finite-type}`, `\Pref{bpP:p10:index-def}`, `\Pref{bpP:p10:cp09-lemma1}` (both `ρ=1,2`), `\Pref{bpP:p10:stability}` (11a-1 re-proves it for `C^μ`, both `ρ`), `\Pref{bpP:p10:rnd-def}`.
- **Track N** (`blueprint-N/parts/p4`-`p6`): `\Nref{bpN:p4:norm}`, `sup-weighted`, `cauchy`, `bracket`, `general-cauchy`, `projections` (Fourier truncation, `e^{-2πKσ}`); `\Nref{bpN:p5:flow}`, `symplectic`, `canonical-map` (time-one flows, displacement, derivative); `\Nref{bpN:p6:homological}` only as a model (ours has `η`-linear normal form, divisors `Ψ(T)` not `α`). Not used: `\Nref{bpN:p6:iterative}`, `normal-form`.
- **Track K**: `\Kref{bp:p1:cauchy-open}` (orders `≤ 3`), `cauchy-strip`, `decay`, `summation`, `exp-sums`, `cohomological`, `uniform-limits`, `holomorphic-inverse`, `iteration`, `lipeo`, `lip-image`, `mcshane`, `ext-mvt`, `ext-measure`; Part 4: `lattice-count`, `lattice-sum`, `slab` (the lattice count; used in 11a-1).
- **Hard rule 6 reminder for the consumers:** nothing in 11a is assumed as a conclusion of itself; 11a-1's hypotheses (index/amount, closeness) are data checked by Part 11 and 11a-3.

## 4. Interface to Part 11 (CP09 finite preparation) and Part 13 (P-FIXED assembly)

Part 11 supplies, for the prepared maximal system at coupling `ε`: the holomorphic `H_ε = h_ε(I) + f_ε(θ,I)` on `T_{s} × (K_ε + 2ϑ_ε)` with period-one angles; a `C^μ`
estimate for the prepared frequency map (CP09 Prop. 2 with derivative control, R-CP-2); the chart constants `(d_ε, ϑ_ε, β_ε, M_ε, C_1)`; the perturbation size `|f_ε| ≤ ε^{ν}`
for a finite preparation order `ν > B`; and the final transport of the tori back to Cartesian coordinates (displacement in the polar and Birkhoff charts, inclusion in `circularTube η`). Part 11a-5 gives it, in return,
`weak-kam-quantitative` and `budget` with the exact threshold. Part 13 (`p13-fixed-assembly`) cites only 11a-5 (`physical-interface`) through Part 11's wrapper; it never cites 11a-1..4 directly.

## 5. Order of writing, review, risks

Order: 11a-1 (done) → 11a-2 (independent of 11a-1; needs N p4-p5, K p1) → 11a-3 (needs 11a-1, 11a-2) → 11a-4 → 11a-5. 11a-2 and a first draft of the Part-11 preparation can run in parallel. One independent review per file
(arithmetic of the schedule in 11a-3 and the Lipschitz argument in 11a-4 deserve a second reviewer with a numerical check: a Python simulation of the schedule `T_ν, ε_ν, t_ν` and of `Σ C_ν T_ν`, `Σ C_ν/t_{ν+1}`).
Main risks: (R1) the shrinking-domain budget (exponent `B`) — the whole gate is useless if the schedule forces `ε_adm` smaller than `ε^B` for every fixed `ν`; (R2) the finite-order chain extension (D-7) — if the mollified cut-off argument fails, §§19-20 must be written (+6-9 pages); (R3) the local-to-global Lipschitz bound of the defect on a Cantor set (11a-4); (R4) consistency of the index convention (`ρ=1` vs `2` vs Rus01's product family) between Part 10, Part 11 and 11a-1: the consumer picks one; (R5) the cutoff replacement (D-4/D-5) changes the loss schedule: redo §13.1's constants (`r_ν`, `s_ν`) before 11a-3.
