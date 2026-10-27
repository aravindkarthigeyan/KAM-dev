# Review 1: Kepler determinant, shared fundamentals and Delaunay coordinates

## Verdict: REVISE

**Part 6's I-KEPLER proof checks out against the frozen theorem.** Its determinant, positivity, frequency map, bordered Hessian and period-one scaling are correct. The real Delaunay one-form calculation, bijectivity, mean-value calculations and the exact barycentric potential calculation also check out.

**The shared complex Kepler proposition is false on its stated domain.** The proof bounds the imaginary part of `e sin u` as if e were real, although e ranges over a complex disc. This invalidates the supplied complex-domain proof and the subsequent uniform complex-extension argument. A thinner complex neighborhood of the real eccentricity interval repairs the intended application, including e=0, without changing a frozen theorem. The remaining findings are smaller contract, convention and source-classification fixes.

## Snapshot, materials and validation

- `blueprint-I/parts/p6-kepler.tex`: 168 lines, 13,361 bytes; SHA-256 `95cbee8a243fc5e7173793515ad0b99afc19320879c799442f78948e745d0209`.
- `blueprint-I/parts/p7-delaunay.tex`: 480 lines, 55,664 bytes; SHA-256 `c062dee8da14852a7e8284ca2bec77ac816b2ee12853fd97c1aae00ed23f7d69`.
- Read the review brief in full, AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the writer convention ruling, I's PLAN/preamble and relevant Part-0 interfaces, the source packet, and track P's Kepler/Poincaré and mean-value requirements in PLAN. Checked N's shared ODE reduction/continuation interfaces rather than requiring a second ODE theory here.
- Compared with the frozen `kepler_bordered_det`, `keplerBorder`, `borderedHessian`, `frequencyMap`, `NearCircular`, restricted Hamiltonian/vector field/collision predicates, `IsRestrictedSolutionOn`, `IsHamiltonianSolutionOn`, and the real-Hamiltonian and period-one definitions. The Hamiltonian identities must hold on a neighborhood to identify the frozen total derivatives; this requirement is correctly recognized in the transfer proof.
- Independently read pinned Chi05 pp.8–9, 11–17: (2.23)–(2.26), (2.29)–(2.32), (3.33)–(3.43), the Kepler determinant and the ellipse formulas. Used `pdftotext -layout` and the available rendered p.17. The source's exact square-root Hamiltonian was checked, not presumed to be truncated from the blueprint's description.
- Checked local Mathlib inverse-function interfaces: `HasStrictFDerivAt.toOpenPartialHomeomorph`, and the general `OpenPartialHomeomorph.hasFPowerSeriesAt_symm` / `analyticAt_symm` results in `Analysis/Analytic/Inverse.lean` and `Analysis/Calculus/FDeriv/Analytic.lean`. These support the stated local real-analytic inverse argument after its analytic premises are proved. The complex-power, parameter-integral and one-variable substitution facts have the expected guarded mathematical contracts; no compiled Lean implementation is claimed.
- `latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` in blueprint-I: exit 0, **52 pages**, zero lines beginning `!`, no undefined-reference warnings. Other writers were active during the review; the snapshot is identified by the two hashes above, not by a claim that every other included part was reviewed.
- `scripts/lint_sources.sh`: exit 0; `check_lean_modules: PASS (175 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- Scratch symbolic expansion returned zero for the general Kepler determinant residual and the nontrivial du coefficient in the symplectic one-form calculation. The explicit complex-e counterexample below has `y₀=0.22891558497617 < 1/2`. No Lean file or frozen declaration was changed; no Lean build, provider sealing or fresh `#print axioms` is claimed.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| I67-01 | p7:92–131, `bpI:p7:kepler-eq`, especially `stepI:p7:ke-contr`; consumers `orbit-maps-e`, `complex-domain`, `exact-ham` | blocking | For complex e, `Im(e sin u)` is not bounded by `abs(e) sinh(abs(Im u))`. Already at real u=π/2 it equals Im e. The claimed invariant strip can therefore fail. The proposition itself, including its bounded-imaginary-part conclusion, is false: for e₁=9/10, ℓ=π/2 and e=i/2 there is no solution in its strip S. See the exact argument below. Thus the claimed nonvanishing denominator and the subsequent complex analytic extension are not established on that full domain. | Replace the complex eccentricity disc by a sufficiently thin complex tube around the real interval [−e₁,e₁], with a uniform angle strip and a valid contraction or compact analytic-IFT/gluing proof. Keep a disc near e=0 only with an independently valid radius. Rechoose δ₁ so the complex eccentricities of the action neighborhood lie in the repaired tube, then reprove `orbit-maps-e`, `complex-domain` and `exact-ham` with that domain. Do not claim a full complex disc up to every e₁<1. |
| I67-02 | p6 `bpI:p6:conversion`(a); p7 notation and symplectic/transfer displays | minor | These parts redefine Ω₀ as `[[0,Id],[−Id,0]]`, whereas frozen `KAM.omegaZero` and the earlier I convention use `[[0,−Id],[Id,0]]`. The matrices differ by a sign. The symplectic invariance identities are unaffected by changing that sign, but `X_H=Ω₀∇H` is not the frozen Ω₀ convention. | Call the matrix here J and state `J=−Ω₀_frozen`, `X_H=J∇H=−Ω₀_frozen∇H`. Keep the correctly computed symplectic and field-conjugation formulas. Do not identify J with frozen omegaZero in the Lean implementation. |
| I67-03 | p7:348, `bpI:p7:shift-def` | minor | For real q,μ, membership in Ξ is **not** equivalent to collision freedom: Ξ also requires q≠0. For instance μ=1/10, q=0 is distinct from both primaries −μ and 1−μ, hence collision free, but ϑ(q)=0 excludes it from Ξ. The later shell domain does exclude q=0 and only needs the forward implication. | State `Ξ iff q≠0 and CollisionFree μ (q,p)` for real data, or state only the implication actually used. Retain the unshifted nonzero condition because w(q)=1/r is part of the baseline Kepler decomposition. |
| I67-04 | p7 introduction/sourcegap, `exact-ham` source line and `bpI:p7:errata`(2) | minor | Chi05 (3.38)–(3.43) is described repeatedly as a “truncated” model. The pinned source instead gives an exact heliocentric Hamiltonian and exact changes of variables; (3.42) retains its full square-root denominator and m₀(ε) dependence. Its earlier time dependence is made autonomous and then reduced by a cyclic variable before (3.43). No discarded Taylor remainder is exhibited. The different coordinates/parameter do not make the source model truncated. | Describe it as an exact heliocentric/extended-phase-space formulation, with a different normalization and rotating reduction. Keep the direct derivation from the frozen barycentric Hamiltonian, which is useful and correct, but classify it as a coordinate/parameter adaptation rather than repair of a source truncation. |
| I67-05 | `bpI:p7:means`, `bpI:p7:scaling`, shared-output claims | minor | The advertised P use includes circles and general masses. The mean/identity statements currently quantify only over 0<G<L, so they exclude e=0; the analytic orbit-map statement alone does not literally provide the circle mean-value theorem. The mass dictionary is only the phrase “take p=mv”. The formulas are correct and extend, but these endpoint/dictionary interfaces should be explicit. | State the orbit identities/means also for `Q_el` with real 0≤e<1 and k=√(1−e²), or give the e→0 continuity corollary. For mass m>0 and strength k=Gm₀ record H=mE_k(q,p/m), L_mass=m√(ka), Γ_mass=mΓ_velocity and average p²=m²k/a, with time unchanged in the velocity equations. P still owns the Poincaré-coordinate regularization. |
| I67-06 | `stepI:p7:ch-surj3` (p7:253); `bpI:p7:period-one`(e) (p7:424) | minor | Two harmless but literal errors: the system v↦(q·v,q₀v₁−q₁v₀) has determinant **+**r² in that row order, not −r². Also ε/abs(μ) is said to depend only on K although μ=0 is allowed: Lean division then gives 0, while for nonzero μ the quotient is CF>0. Neither error affects the valid nonzero-system argument or the bound ε=CF abs(μ). | Correct the determinant sign, or specify the alternative row order. Replace the ratio claim by “s₀,r₀,CF depend only on K and ε=CF abs(μ)”; state a quotient equality only under μ≠0. |

## Exact refutation of the complex Kepler strip

Take e₁=9/10. Then e₂=19/20, θ*=39/40 and

`y₀=arcosh(39/38)=0.22891558497617 < 1/2`.

The allowed parameter pair `(ℓ,e)=(π/2,i/2)` lies in P(e₁): ℓ is real and abs(e)=1/2<19/20. The proposed fixed-point map at the real point u=π/2 is `π/2+i/2`, outside S. Thus the asserted self-map estimate already fails at the first Picard iterate.

This is more than a failure of that proof. If u=x+iy were any solution in S, then v=π−conj(u) would also solve `v−(i/2)sin v=π/2` and belong to S. On the convex strip S, the fixed-point map has derivative modulus at most `(1/2)cosh(y₀)=39/76<1`, so any two fixed points in S must coincide, even though the map need not preserve S. Therefore u=v, forcing x=π/2. The imaginary equation now reads

`y=(1/2)cosh y ≥ 1/2`,

contradicting abs(y)≤y₀<1/2. There is no solution with the bounded imaginary part required by the proposition. No numerical root finder or external fact about a Kepler convergence radius is needed for this refutation.

## A valid replacement domain, including e=0

The needed real-neighborhood theorem is true with a thinner complex eccentricity domain. For fixed real e₁<1 choose y>0 small enough that e₁ cosh y<1. Choose δ_e>0 so `(e₁+δ_e)cosh y<1`, and then δ_ℓ>0 so

`δ_ℓ+(e₁+δ_e)sinh y+δ_e cosh y < y`.

This is possible since `e₁ sinh y < e₁ y cosh y < y`. For complex e at distance <δ_e from [−e₁,e₁], one has abs(e)<e₁+δ_e, abs(Im e)<δ_e and abs(Re e)<e₁+δ_e. On abs(Im u)≤y,

`abs(Im(e sin u)) ≤ abs(Re e)sinh y+abs(Im e)cosh y`.

The corrected estimate proves preservation of the strip when abs(Im ℓ)<δ_ℓ, and the derivative bound gives a strict contraction. Picard convergence is uniform because `abs(e sin ℓ)` is uniformly bounded on this parameter domain. The holomorphic solution, denominator bound, derivatives, reality and period shift follow as intended. This tube contains every real eccentricity in [−e₁,e₁], in particular zero. For each compact real safe action set, continuity then lets δ₁ be chosen so e(L,G) takes values in this tube. That is the extra condition the current `complex-domain` proof lacks.

## What I recomputed: refutations that failed

### Complete frozen I-KEPLER and the period-one conversion

For the frozen matrix with rows `(-3κ/L⁴,0,κ/L³)`, `(0,0,−Ω)`, `(κ/L³,−Ω,0)`, only the product `−k₁₁ k₂₃ k₃₂` survives the determinant expansion. It equals `3κΩ²/L⁴`. The formula requires no sign of κ or Ω; positivity uses exactly κ>0, Ω>0 and L.val>0. This is the frozen conjunction, with the same implicit κ,Ω hypotheses and positive-L subtype. No Hessian-invertibility premise is introduced. All denominators are nonzero on that subtype.

For `hκΩ(I)=−κ/(2I₁²)−ΩI₂`, the real restriction is smooth on the open half-space I₁>0. Germ locality identifies the frozen frequency map with `(κ/I₁³,−Ω)`, then its derivative with `diag(−3κ/I₁⁴,0)`. The bordered matrix agrees entrywise after the stated index bijection; determinant reindexing contributes no sign because both row and column are reindexed. Its definition through total real fderiv is guarded by this neighborhood calculation.

The conversion S has diagonal blocks 2π Id and (2π)⁻¹Id and is symplectic for either sign convention of the form. It preserves time under H↦H∘S. Direct substitution gives `κ'=κ(2π)²`, `Ω'=Ω/(2π)`, so the frequency is the old one divided by 2π. The bordered congruence is `D KκΩ(I₁/(2π)) D` with D=diag((2π)⁻¹,(2π)⁻¹,1); its determinant equals `3κΩ²/I₁⁴`. This cancellation is correct, and gives 3/I₁⁴ for κ=Ω=1. The positive-real-I₁ neighborhood condition in `nondeg` guards the poles on the whole complex tube, not just on B.

### Frozen restricted field and rotating Newton equations

Differentiating the **exact** frozen Hamiltonian at collision-free points gives q′=(p₀+q₁,p₁−q₀) and

`p′=(p₁,−p₀)−(1−μ)(q+μe_vec)/r₁³−μ(q−(1−μ)e_vec)/r₂³`.

The derivative of 1/r has the displayed negative sign; differentiating the negative potential gives the positive gradient before applying the Hamiltonian minus sign. The field agrees with the frozen subtype-valued definition and the existential collision witness in `IsRestrictedSolutionOn` is supplied. For `q=R(−t)x`, `p=R(−t)x′`, differentiation produces the correct −Jq and −Jp terms. Orthogonality preserves the **Euclidean** collision radii. Positivity of both radii guards the real square roots and inverse powers.

### Real Kepler elements, orbit identities and dynamics

The real anomaly equation is a contraction on R for each abs(e)<1, independently of the false complex-disc extension. Its derivative with respect to ℓ is positive, and it commutes with shifts by 2π. Real analyticity can be supplied locally by the analytic implicit function theorem, or by the repaired complex-neighborhood argument.

For c=cos u, s=sin u, k=G/L and D=1−ec, the formulas give

`r²=L⁴[(c−e)²+(1−e²)s²]=L⁴D²`,

`p²=(1+ec)/(L²D)`, `Γ=Lk=G`, `q·p=Le s`, and `E=−1/(2L²)`.

D≥1−e>0 fixes the sign when taking the radius square root. The radial-momentum identity is `(Le s)²=−G²+2r−r²/L²`; all divisions by e in the inverse chart occur only for e>0. The orbit maps have q′=p for ℓ′=L⁻³, g constant: differentiating the position with respect to u and using u′=L⁻³/D gives exactly the velocity formula. Differentiating the velocity gives `p′=−q/r³`. These checks justify the orbit interpretation rather than only an algebraic energy level.

### Symplecticity and bijectivity of the real Delaunay chart

In (u,L,e) coordinates, the pulled-back Liouville form before the g rotation is

`π·dξ = L(1+ec)du+2e s dL+L s de`.

Since `dℓ=(1−ec)du−s de`, its difference from L dℓ is exactly `d(2Le sin u)`. The rotation adds Γ dg=G dg. Exterior differentiation therefore gives the displayed symplectic identity, without a hidden factor 2π or an adjoint in place of transpose. Nondegeneracy gives invertible differential; the field-conjugation identity then follows by the chain rule with J (see I67-02).

For injectivity modulo the two periods, E and Γ recover L,G, then r and q·p recover cos u and sin u because e>0. Thus ℓ modulo 2π is determined, and the nonzero position vector determines g modulo 2π. Conversely, Lagrange's planar identity gives `(q·p)²=2r−r²/L²−G²`; it proves c²+s²=1 for the reconstructed anomaly. The reconstructed position has radius r and can be rotated to q. The dot and cross products with q then identify its momentum with p by an invertible real 2×2 system. The positive determinant correction in I67-06 does not change that conclusion. A bijective local real-analytic diffeomorphism descends to the stated quotient chart. A lifted globally injective map on R² angles is not claimed.

The frozen `NearCircular` witnesses r,a,e are positive and unique on the stated region. Their equations force r=abs(q), a=−1/(2E), and e=√(1+2EΓ²), with Γ>0 and 0<e<1. Conversely the chart elements supply all frozen witness clauses. The preimage/image description and openness are correct. Neither circular nor radial degeneracies are silently included in this Delaunay bijection.

### Mean values and strengths/masses

The anomaly substitution has `dℓ=D du` and maps the endpoints 0,2π to 0,2π. Thus average(1/r)=1/a and average(r)=a(1+e²/2). Since E=−1/(2a), averaging the energy identity gives average(p²)=1/a. These are averages in mean anomaly, hence in time for a Kepler orbit, not unweighted eccentric-anomaly averages. At fixed g, shifting from mean anomaly to mean longitude does not change a full-period average.

For k>0, `S_k(Q,P)=(Q/k,kP)` is symplectic and `E_k∘S_k=k²E_1`. The time argument k²t is therefore correct. The semimajor axis becomes a/k, giving average(1/r)=1/a_k and average(p²)=k/a_k. For physical mass m, writing velocity p/m yields H=mE_k(q,p/m); the time equations remain q′=v, v′=−kq/r³ and average(p²)=m²k/a. Explicitly adjoining this and the e=0 endpoint to the shared interface is I67-05, not a refutation of the formulas.

### Uniform complex shell and exact barycentric perturbation

Conditional on the repaired complex Kepler domain, the remaining construction is sound. On a compact safe action set the real eccentricity stays away from 0 and 1 and L,G stay positive. The principal square root of `1−G²/L²` is holomorphic on a sufficiently small action tube with positive real radicand. Its real points are still in 0<G<L. The extra repaired eccentricity-tube condition can be enforced by further shrinking, uniformly in the compact set.

The shell assumptions `0<r_min≤rho_max<1` give both primary margins. For each of the three radicands the bound

`abs(ϑ(z)−ϑ(z′))≤abs(z−z′)_2(abs(z−z′)_2+2abs(z′)_2)`

holds also for complex vectors, using the bilinear pairing and ordinary modulus inequality. The shifts are at most ε₀, so their real parts are ≥c*>0 even on the closed μ-disc of radius μ₂=ε₀/2. The inequality ε₀(ε₀+4)<(1−rho_max)²<1 implies ε₀<1/4, as used in the loose numerator bound. The bounds on Ψ and w give `abs(w−Ψ)≤3/sqrt(c*)`. The quotient singularity at μ=0 is removed by the integral of ∂μΨ, and Schwarz's estimate gives exactly `CF=6/(ε₀ sqrt(c*))`. It does not divide by μ at zero.

Differentiating Ψ at zero gives the correct barycentric correction

`f(q,0)=1/r+q₀/r³−1/abs(q−e_vec)`.

The positive q₀/r³ term includes displacement of the first primary; it is not omitted or replaced by a heliocentric indirect term with the wrong power of r. On the real shell, `Ham_μ=E−Γ+[w−Ψ]`; hence `Ham_μ∘Q=−1/(2L²)−G+μF_μ` exactly. No Taylor truncation in μ is used in this calculation.

A periodic angle cell times a compact smaller action tube is compact inside the holomorphy domain. Uniform continuity therefore supplies δ₂ so the complex orbit position stays in the shell neighborhood O, independently of μ. This validates the stated uniform CF after I67-01 is repaired. It also shows why one must work over an enlarged compact safe action set, rather than assume a uniform margin inside the open initial annulus.

### Period-one domain and solution transfer

With `s₀=δ₂/(2π)` and `r₀=2πδ₂`, S maps the whole frozen angle strip/action tube into U(δ₂). The action pole is excluded by Re I₁>πmL. Periodicity and reality of `tilde f_μ=μF_μ∘S` hold on exactly the required domain, with bound `ε=CF abs(μ)`, including μ=0. The frozen bordered determinant is nonzero at **every real point of the action tube**, not only at the unperturbed initial actions.

The physical Hamiltonian agrees with the real transformed Hamiltonian on an **open real neighborhood** of each solution point. Therefore their total fderiv values agree there. Symplectic naturality and the curve's genuine HasDerivAt give the physical restricted field, while the shell lemma supplies collision freedom. This proves the one-way transfer for arbitrary time sets J as stated; no invertibility of a global lifted angle map is required. Global existence, confinement and agreement with arbitrary physical competitors remain the separate I-HEAD/Part-8 and shared ODE obligations.

## Route and source conclusions

The I-KEPLER route is complete at blueprint level and matches the frozen value/positivity conjunction. For I-R3BP, real chart bijectivity, exact barycentric decomposition, uniform compact-shell estimates and neighborhood-level solution transfer are the correct ingredients. The first unpaid analytic claim is I67-01; it must be repaired before the uniform complex Fμ package can be consumed. After that repair, the construction supplies the intended I-HEAD data without a frozen-statement change. This review does not prove the remaining confinement or I-R3BP assembly.

For P, a valid complex neighborhood including the circular locus, the endpoint mean-value corollary and the explicit mass dictionary are the useful shared outputs. Analyticity in (e,g) alone is not a proof that the Poincaré map is analytic in Cartesian eccentricity variables; that regularization remains P's own task.

No new pinned-source defect is confirmed here. Chi05's local “abs(e) small enough” claim is compatible with a correct small complex disc and should not be replaced by the false global disc proposition. Supplying a uniform neighborhood of a larger **real** compact eccentricity interval is a proof supplement. Chi05's heliocentric normalization is an exact alternative formulation, not evidence of truncation. The new blocking error belongs to the blueprint. The errata ledger and frozen statements were left untouched.

Closeout: all three reviewed source hashes still match the captured snapshot. `git diff --check` passed, and both reports passed explicit table-column, trailing-whitespace and conflict-marker checks. Other writers changed unrelated blueprint masters/parts during this turn; those changes were left untouched and are not covered by this review. Only the two requested review Markdown files were edited by this reviewer.
