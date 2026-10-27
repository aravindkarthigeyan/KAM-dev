# Review 1: stopped stability and the energy-confinement core

## Verdict: ACCEPT WITH FIXES

I found no blocking or major error in the stated stability theorems or their proofs. The near-identity preimage argument supplies the required surjectivity; the transfer proof uses compact **action** confinement and permits unbounded lifted angles. The energy core and no-exit constants check out. The additional condition Mr ≤ ℓ/4 repairs the identified step in the proof of Lemma 2, and Proposition 2 correctly applies it at half the original radius.

The p.199 scan confirms the unsupported extension of the 5δ/4 closeness estimate. This is a defect in the printed argument, not a demonstrated counterexample to the printed stability theorem or evidence that the added hypothesis is necessary. The other source concerns need more careful classification, and the parameter dictionary contains a missing 2π on δ.

## Snapshot, materials and validation

- Reviewed `blueprint-N/parts/p7-stability.tex`: **283 lines, 44,633 bytes**; SHA-256 `745c6b3246d4bbadfffa1c4261c1890cc5d3343f64c7bd2042d024ecba700b9d`.
- Read the complete review brief, AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, writer convention ruling, N PLAN/source interfaces and relevant Parts 0–6; checked the actual definitions and contracts of the shared ODE layer, weighted derivative/bracket estimates and Normal Form Lemma. The frozen complex/real Hamiltonian fields and total-real-Hamiltonian convention were retained.
- Directly inspected `sources/incoming-N/poschel1993_gdz.pdf`, printed **pp.196–200**, PDF pp.11–15. In particular, the p.198 derivation and the disputed p.199 display were read from the scan, not inferred from the writer's gap claim.
- The Part-4/5 dependency fixes landed during the turn. Their checked hashes are `ef713786581a34855a4e6c3ad1eec69e2eb81ce61b1632990f7bbc5c52ff15b7` and `40560931653c109631d9edbebe453856a49dbb925002536cefc423aa15e01db0`. B.3 and B.4 now retain the angular sum pointwise before taking the action supremum, as required by the preceding review. The present real-point derivative estimate independently uses that valid pointwise calculation.
- Mathlib checks: `ContractingWith.exists_fixedPoint` / `exists_fixedPoint'` in `Topology/MetricSpace/Contracting.lean`; `taylor_mean_remainder_lagrange` in `Analysis/Calculus/Taylor.lean:331`. The complete closed subtype, self-map and contraction hypotheses are supplied here. Taylor is applied to a real scalar function on [0,1], with distinct scalar endpoints 0 and 1 even if ΔI=0.
- `latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` in blueprint-N: **exit 0, 54 pages**, zero lines beginning `!`, no undefined-reference warnings. Cross-track macros do not establish applicability of their mathematical targets.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (175 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- Exact/rational and numerical scratch checks: Young slack 5/32; no-exit upper coefficient 0.2494066201 versus lower coefficient 75/256=0.29296875; repaired cone coefficient 0.9404007896; preimage scaled bounds 1/64 and 5/128; nonresonant returned radius 31/64. No Lean file was changed or built, and no provider sealing or fresh `#print axioms` is claimed.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| N7-01 | `bpN:p7:dictionary`, line 276 | minor | Under the stated symplectic scaling, frequency is multiplied by 2π, so its distance to a fixed resonance subspace is also multiplied by 2π. The phrase “δ_P=δ unchanged” is incorrect. The displayed time combinations are nevertheless invariant with the correct scaling. | State `δ_P=2πδ`, `ℓ_P=2πℓ`, `m_P=(2π)²m`, `M_P=(2π)²M`, and `ρ_P=ρ/(2π)`. Hamiltonian/remainder norms ε,ζ,η remain unchanged under this symplectic coordinate substitution. Keep the correctly invariant time formulas. |
| N7-02 | `bpN:p7:errata`(2), p.200 small-Ks claim | minor | The scan says to apply the two lemmas directly to H with g=0; it does not explicitly say “at radius r”. The preceding proof already introduced the half-radius. The blueprint's half-radius argument is valid, but the stronger allegation that the source explicitly applies Lemma 2 with a forbidden radius is not supported by the quoted text. | Classify this as an omitted radius choice, supplied explicitly here, rather than a confirmed false application. Record the half-radius/time comparison as the proof supplement. |
| N7-03 | `bpN:p7:errata`(4), p.197 | minor | The expression `norm(f*)≤exp(−Ks/6)ε` is false for f*=f≠0, but p.197 never asserts it. It proves Proposition 1 directly in original coordinates. The current `nonresonant` proof correctly uses the full original strip and obtains the printed time bound without that expression. | Remove this item from suspected source defects, or mark the allegation rejected. Retain `bpN:p7:factor-e` as explanation of why the direct small-Ks argument loses no factor. |
| N7-04 | `bpN:p7:stopped-extension`; `bpN:p7:consumers` | minor | Two implementation contracts should be explicit: “z′=F(z)” must mean a genuine derivative, and the cited QC conversion is stated on B(0,R), not automatically the whole larger real tube B_s(R). Also ℓ and the replacement curvature m=μ are distinct constants in that conversion. | Write `∀ t∈J, HasDerivAt z (F(z t)) t` in the stopped-extension interface. At the later source import prove `U_r D⊆B(0,R)` (or use an enlarged valid conversion domain), keep ℓ as defined in `qc-convert`, and set its curvature parameter to μ. The inclusion of the complex tube in the analytic domain alone does not supply the QC conversion's narrower real-domain premise. |

## What I recomputed: refutations that failed

### Real restrictions, derivative norms and resonance projections

The real Hamiltonian is defined by agreement with the real-valued holomorphic function on the open real slice, with arbitrary values outside. Its total derivatives therefore agree with genuine local derivatives at every visited point. The field is C¹ and periodic there. Neither energy conservation nor uniqueness assumes regularity of that extension at the boundary.

At fixed real I, Fourier differentiation gives the pointwise angular derivative sum bounded by `norm(u)/(e(s−s'))`; taking s'↓0 yields

`Σ_j abs(∂θ_j u(θ,I)) ≤ norm(u)/(es)`.

The Euclidean length of that derivative vector is at most its l¹ length. This is dimension-free and does not repeat the former false exchange of sum and action supremum. For a resonant g, the coefficients of `Π_perp ∂θg` are `2πi Π_perp k g_k`, all zero. On a smaller strip the derivative series has finite norm, so coefficient uniqueness proves vanishing. No finite Fourier support or lattice-module closure is needed for this step.

The proof uses a bilinear real dot product and Euclidean orthogonal projections only where needed; all complex analytic action neighborhoods remain max-norm tubes. The comparisons between these norms are carried explicitly.

### Surjectivity by contraction and orbit transfer

In `preimage`, center the real closed set X at the desired y, with scaled radius κ*≤1/4. Its action coordinates lie strictly inside the available action tube. For every x∈X, the complex scaled ball of radius 1/2 fits in the holomorphy domain: its angular imaginary part is <σ'/2≤tilde s, and action distance from I_y is <ρ'/2+ρ'/4<tilde r. Cauchy's inequality gives `norm(DG)_ν≤2κ*≤1/2`. The map `x↦y−G(x)` preserves X and is a contraction there, hence has a fixed point satisfying Ψ(x)=y. The displacement components at that fixed point have the original dθ,dI bounds. A left inverse alone would not supply this existence result; the argument does.

For the Normal Form Lemma, take `ρ'=r/2`, `σ'=s/3`; the two scaled displacements are bounded by 1/64 and `30/(128κ)≤5/128`, both <1/4. Thus all real initial points over D really do have preimages. Nonconvex or disconnected D causes no difficulty because each contraction is centered at a single I_y∈D.

The transfer lemma's normal-form orbit starts at that preimage. Its a priori bound places its action in the compact closed norm ball of radius varrho about I_x. The strict condition `varrho+d*<tilde r` puts that compact action ball inside the normal-form action domain. Periodic-field continuation extends this orbit past any proposed finite endpoint before the time horizon. Conjugation gives an original-variable solution, and uniqueness on the intersection of the actual intervals identifies it with the given orbit. Summing the two map displacements and the normal-form movement gives `varrho+2d*`.

The a priori premise in this general transport helper is discharged by the separately proved stability lemmas at both applications; it is not substituted for a source theorem or inserted into a frozen headline. No existence assumption about an orbit's confinement is smuggled into those final applications.

For an arbitrary extension F outside W_r, stop a genuine solution in the connected component of its times in W_r. At any finite endpoint within the horizon, continuity preserves the strict margin varrho<r and puts the endpoint inside W_r, contradicting exit. This works without smoothness of F outside W_r. Genuine differentiability is the requirement identified in N7-04.

### Proposition 1, both strip cases and zero error

For κ≥6, the normal-form remainder satisfies η≤exp(−κ/6)ε, on angle width s/6. Its real action speed is ≤6η/(es). For `T_nr=sr exp(κ/6)/(5ε)`, a first exit would give movement at most `6r/(5e)=0.4414553294r`, strictly less than the chosen `varrho=15r/32`. The preimage displacement is d≤r/128, so

`d+varrho≤61r/128<r/2`, and `varrho+2d≤31r/64<r/2`.

Both the continuation margin and the strengthened r/2 output are therefore valid. For κ<6, use the identity map on the original strip s. The speed bound is ε/(es), and movement at the requested time is <r/5, strictly below r/2. There is no missing exponential-remainder estimate in this case. If ε=0, the action derivative vanishes; the infinite horizon is handled by that case distinction rather than real division by zero.

### Reusable energy core and no-exit arithmetic

The core needs h∈C² and g,f∈C¹ on the real open domain, and an already genuine Hamiltonian orbit. These hypotheses suffice for energy conservation; no C² hypothesis on the whole H or ODE existence theorem is needed in this helper. Along an admissible chord, scalar Taylor on [0,1] gives the stated real Lagrange remainder. Projecting the action equation removes g from the Π_perp component. Combining the energy identity, Taylor and self-adjointness of Π gives exactly

`(m/2)Δ² ≤ abs(Δ(g+f))+norm(Πω₀)Δ+norm(ω₀)norm(Π_perp ΔI)`.

For an admissible initial action, the strict Euclidean distance <ρ from J₀∈D makes the **closed** radius-(r−ρ) Euclidean ball lie inside the max tube U_rD. The Hessian bound gives `norm(Πω₀)≤5δ/4` and, at other points in that ball, only `norm(Πω(I))≤5δ/4+M norm(I−I₀)`. This extra term is essential for Lemma 2.

The no-exit bounds are A≤2ζ≤mr²/16 and

`(5/4)δΔ ≤ [5/(2m)]δ²+(m/6)Δ²`.

Completing the square gives a nonnegative remainder with δ² coefficient 5/(32m), so the stated Young inequality is valid. The δ term is ≤5mr²/32. The time/remainder term is ≤mr²/(12e). After moving mΔ²/6 to the left, the upper coefficient is

`1/16+5/32+1/(12e)=0.2494066201<1/4`.

But `ρ≤r/16` gives `(m/3)Δ²≥(75/256)mr²>mr²/4`. For a fully rational proof, e>8/3 already proves the strict upper bound. This checks the narrow numerical margin without relying on rounded decimals.

### Lemmas 1 and 2

Full m-convexity supplies the required Hessian bound on the entire chord, so Lemma 1 follows from first exit and no-exit. If norm(ω₀)η=0, the cross term vanishes for every finite time, yielding the stated infinite-horizon interpretation.

For Lemma 2, Ω is finite and attained on the compact admissible chord ball. At every I_s on the chord,

`abs(ω(I_s)·ΔI) ≤ (5δ/4+Mr)Δ + Ω abs(t*)η/(es)`.

At an exit, Δ=r−ρ≥15r/16 and the time condition bounds the second term by `mr²/(12e)≤[4/(45e)]mr Δ`. Therefore its total coefficient relative to ℓΔ is at most

`2(5/16+4/(45e))+1/4 = 0.9404007896 < 1`,

using mr≤2ℓ and Mr≤ℓ/4. The QC alternative then forces the Hessian bound along every point of the chord, and the no-exit lemma applies. The projection, norm and constant order are correct. The new Mr condition is a sufficient explicit repair; necessity is not shown.

### Proposition 2, all three cases

Replacing δ by δ'=mr/8 preserves the closeness premise. With `rho'=mr/(32M)`, radius `tilde r=r/2` satisfies δ'=m tilde r/4 and `M tilde r≤ℓ/4`. The Euclidean complex-Hessian bound M implies the max-norm Lipschitz bound L=√n M, explaining the √n in the radius condition. The perturbation bound implies the scalar Normal Form Lemma's smallness with no reversed inequality.

For κ≥6 and Λ≠Zⁿ, the normal-form g satisfies `norm(g)≤5ε/4`, while η≤ε/e, so ζ=2ε dominates both. Since p/q≤1/2, `2ε≤mr²/128=m tilde r²/32`. Its Euclidean map displacement is bounded by

`√n qKε/α ≤ qε/(pMr) ≤ mr/(128M)=rho'/4`.

The preimage lemma and this same displacement bound make every chosen preimage admissible. The trapped ball lies in the radius-r/2 ball around the original I₀, so tilde Ω≤Ω(I₀). The time calculation is exactly

`(s/6) m(r/2)²/(12Ω exp(−κ/6)ε) = sr²m exp(κ/6)/(288Ωε)`.

For κ<6, the identity map at radius r/2 and full strip s gives a time ≥smr²/(48Ωε), which covers the target because exp(κ/6)<e<6. For Λ=Zⁿ use g=f and f*=0, giving all finite times. Finally `varrho+2d*≤r/2−rho'/2<r/2`. The Ωε=0 guards are handled as vanishing-cross-term cases, not unguarded reciprocal formulas.

## Source audit of the p.199 gap

The scan on p.198 explicitly derives 5δ/4 closeness on **U_ρD**, and uses it at ω₀=ω(I₀). On p.199 the printed first display instead uses

`abs(<ω(I(s)),P ΔI>) ≤ (5/4)δ norm(ΔI)`

for every point on the whole radius-(r−ρ) chord. It provides no argument that these points lie in U_ρD. This is the unsupported step identified by the blueprint. The generally available estimate includes `M norm(I(s)−I₀)`.

For a concrete check of the attempted uniform extension, take n=1, h(I)=I²/2, D={0}, Λ=Z, r=1, m=M=1, δ=1/10 and ρ=1/40. These satisfy the structural convexity/closeness bounds; I₀=0 is admissible. The allowed chord endpoint ΔI=39/40 has a point I(s)=1/2. The disputed projection bound there would compare 39/80 to 39/320 and fails by a factor four. This fixture refutes the extension of the local projection estimate to arbitrary chords in that ball. It is **not** an orbit escaping under the small-perturbation hypotheses and is not a counterexample to Lemma 2 itself.

Thus the scan verifies a proof gap, and the added condition repairs the blueprint's proof. It does not establish that the original theorem is false, or rule out a different proof without the added condition. Under the ledger's policy, distinguish this unsupported source step and the adopted strengthening from a confirmed false headline. The errata ledger was not edited.

P.200's inverse-image assertion is correctly supplied with a concrete contraction proof here. Its small-Ks paragraph can be completed by an explicit half-radius choice, so N7-02 avoids overclaiming a false radius assertion. The p.197 allegation is rejected for the reason in N7-03; this part's own proof already takes the correct direct route.

## Route, reuse and limits

This part can provide its stopped bounds and the reusable energy/no-exit core under the explicit premises. It has no new frozen theorem to transcribe and does not by itself prove N-HEAD-C. Part 9 must verify the extra `Mr≤ℓ/2` in every resonant application; the stated source pattern `r≤r₀/(AK)`, `r₀≤4ℓ/m`, `A=11M/m` gives `Mr≤4ℓ/(11K)≤ℓ/2` when K≥1. The max/Euclidean cutoff changes and the correct parameter dictionary must be retained at that call. Part 10 must also prove the real-domain condition for QC conversion noted in N7-04 before attaching this to the frozen analytic class.

The transfer/stopped-extension lemmas then let the later existence theorem use genuine confinement inside an open action domain. They do not assume competitors stay in the smaller normal-form domain. I's use of the energy core remains conditional on its own energy and chord hypotheses; these lemmas do not replace I's separate torus-separation argument.

No frozen statement was found false. Only the requested review Markdown files were edited by this reviewer; no source, provider, statement or ledger was changed.

Closeout: both requested source hashes and the refreshed I Part-7 dependency hash still match the snapshots recorded above. `git diff --check` passed; both reports passed explicit table-column, trailing-whitespace and conflict-marker checks. Concurrent work and generated tool artifacts elsewhere in the workspace were left untouched. No state-changing git command was run.
