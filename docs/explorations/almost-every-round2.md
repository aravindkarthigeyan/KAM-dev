# Longer-time planetary safety: round 2

Research report, 27 October 2026. This is a proposal for tracks N and P, not an approved or frozen statement. It supersedes the emphasis, but does not edit the claims, of [round 1](almost-every-shorter-times.md).

The strongest useful finding is classical: **on a fixed, sufficiently low-angular-momentum-deficit, radially separated planetary region, small masses give exponential-time safety for every initial condition**. Partial Nekhoroshev theory controls the fast Kepler actions; exact angular momentum closes the continuation argument for the remaining variables. Consequently every fixed polynomial horizon μ^−k is available, without exceptional points. This needs neither a secular twist condition nor individual eccentricities remaining close to their initial values. It does require a mass threshold which has not been verified at μ≈10^−3.

There is no unique strongest theorem across different quantifiers: planetary KAM gives infinite time for most data, while this result includes every datum for finite time. I recommend the latter as the next safety target. The mathematical mechanism is known; a faithful formalization and an effective realistic-mass certificate would be the contributions.

## 1. Longer times and exceptional measure

Constants below depend on fixed domains, analytic widths, mass weights and geometric margins. They are chosen before μ and the requested relative exception δ. Absolute measure estimates must be divided by the volume of the specified initial region. None is automatically uniform over arbitrarily small observational boxes.

### Averaging, resonance passage and stochastic limits

The verified starting point remains Arnold–Kozlov–Neishtadt, third edition, §6.1.9, Theorem 6.11 and Corollary 6.1, p. 243: mean averaging error O(√μ), hence relative exception at most C_L√μ/η for tolerated slow-variable error η and physical time L/μ, with L fixed. The rank hypothesis concerns the fast-frequency map or its projectivization. Kepler fast frequencies satisfy it. The book's full-text transcription was checked; its printed theorem-page image remains **[unverified]**, as recorded in round 1. [AKN, DOI](https://doi.org/10.1007/978-3-540-48926-9).

This does not yield μ^−k by substituting L=μ^(1−k). Even an optimistic blockwise union bound would accumulate μ^(1−k)√μ/η=μ^(3/2−k)/η, which fails for k≥2. Transported initial sets, accumulated errors and constants also need control. Hamiltonian volume preservation does not reset these errors or make resonance encounters independent.

Dolgopyat's *Repulsion from resonances*, Theorem 1, printed p. 9, concerns a specific fast–slow system satisfying conditions A–F in §1.3, p. 8. These include transverse simple resonances, nonvanishing slow rotation, and nondegeneracy of the resonance dynamics. With random initial phases, a rescaled slow variable converges weakly to a deterministic drift killed at a state-dependent rate. Theorem 2, p. 11, adds conditions G–K and a Markov description after capture. Its time rescaling is Iε(t)=I(t/√ε) in the source's slow time; since the fast equation has speed ε^−1, this corresponds to ε^−3/2 fast-time units. The limiting survival probability is exp(−∫λ), potentially bounded away from one. There is no general finite-ε δ guarantee, let alone a planetary μ^−2 safety theorem. [Dolgopyat 2012, DOI](https://doi.org/10.24033/msmf.439).

Kifer supplies a genuine exponential-time probability estimate, but for another mechanism. Theorem 1.2.5, pp. 12–13 of [arXiv:0710.2405v1](https://arxiv.org/abs/0710.2405v1), assumes hyperbolic fast dynamics and an averaged attracting set with the stated inward/outward accessibility conditions. With positive exit quasipotential R∂, the slow exit time lies between exp((R∂−a)/ε) and exp((R∂+a)/ε), except on fast-initial-data measure at most exp(−λ(a)/ε). Thus exception ≤δ requires ε≤λ(a)/log(1/δ), alongside the theorem's thresholds; physical time includes an additional ε^−1 factor. Kepler rotations are not the required hyperbolic fast system, and Hamiltonian secular dynamics do not supply the attracting basin. [Published DOI](https://doi.org/10.1090/memo/0944).

Bakhtin's *Cramér's asymptotics in systems with fast and slow motions* treats fast stochastic dynamics and large deviations. Its title/authorship and publisher abstract were verified; the complete theorem contract and locator are **[unverified]**. It supplies no established planetary transfer here. [Bakhtin 2003, DOI](https://doi.org/10.1080/1045112031000155669). These works explain possible long-time transport, but their hypotheses cannot be replaced by the phrase “most initial conditions.”

### Higher-order elimination away from resonances

A useful, explicit alternative avoids passage through resonances entirely. For the fast Kepler frequency ω(Λ), exclude initial actions with

    |k·ω(Λ)| < α,     0 < |k|₁ ≤ K.

On a fixed positive action box, ω is a diffeomorphism with bounded Jacobian and inverse Jacobian. A slab has volume at most Cα/|k|, and summation gives relative excluded measure at most C_R αK^(n−1), for n≥2. Take α=c_Rδ/K^(n−1). Thicken each good action point by radius ρ=cα/K; the Lipschitz bound for ω preserves nonresonance on that neighborhood, including a controlled complex extension.

Pöschel's §2 Normal Form Lemma, author-version p. 8, and §3 Proposition 1, pp. 12–13, give a remainder O(μe^−cK), transformation control and action confinement time of order (ρ/μ)e^cK, provided μK/(αρ) is sufficiently small. The source has action–angle variables. [Pöschel 1993, DOI](https://doi.org/10.1007/BF03025718). Rather than quote that sharper smallness condition for additional eccentricity pairs, the following **new adaptation** uses a conservative extra factor K.

Work in the analytic Fourier norm, obtained from a fixed wider strip. Perform K averaging steps, allocating action, angle and slow-variable losses proportional to ρ/K, s/K and r_z/K. Solve each homological equation only in the fast angles; its solution has norm at most the current remainder divided by α. Cauchy estimates bound the fast Poisson bracket by C K²/(ρs) times the product of norms, and the slow bracket by C K²/r_z² times that product. Fixed available slow width permits r_z²≥ρs. The accumulated averaged term has size O(μ), so μK²/(αρ)≤c ensures geometric contraction at each step. Fourier tails are exponentially small in K on the reserved strip. Summing the changes gives fast-action displacement O(μK/α) and remainder O(μe^−cK). The normal form is independent of fast angles, so only this remainder drives its fast actions. This proves the following conservative scale by the usual Lie-series iteration; a formal proof still requires its domain bookkeeping.

The resulting sufficient condition and trade-off are

    μK^(2n+1) ≤ cδ²,
    K ≍ (δ²/μ)^(1/(2n+1)),     ρ ≍ δ/Kⁿ,
    relative exception ≤ δ,
    T(μ,δ) ≥ c δ/(μKⁿ) exp(cK).

Here μ≤cδ² and K must exceed a fixed minimum. Transformation displacement is O(μK/α), smaller than ρ under the same smallness inequality. The exact angular-momentum argument in §2 closes slow-variable exit. No covering multiplicity is charged to the good set: the slab union is estimated globally, and each retained point uses a local normal form. Boundary margins are fixed in advance.

For any fixed k≥2, choosing K=C_k log(1/μ) gives T≥μ^−k whenever

    μ(log(1/μ))^(2n+1) ≤ c_kδ².

These are sufficient bounds, not an optimality claim or a theorem already proved in this repository. In the source's action–angle setting its sharper iteration gives K≍(δ²/μ)^(1/(2n)) and T≥cμ^−1/2 exp(cK). Extending that sharper estimate to the slow pairs is a separate optimization, not an input here. Proper degeneracy introduces no slow-frequency divisors into the conservative proof. Its value would be effective constants or a cheaper alternative; the all-data result below is qualitatively stronger.

### Resonant geometry and the genuinely stronger conclusion

Partial Nekhoroshev theory applies to H=h(I)+μP(I,φ,p,q), controlling I until the slow variables leave the analytic domain. Pinzari, Theorem 1.3, p. 7, and Appendix D, Theorem D.1, p. 41, state this properly degenerate version; footnote 5, p. 7, explicitly identifies angular momentum as the ingredient closing its planetary application. The discussion on p. 8 attributes exponential-time planetary semimajor-axis stability to Nekhoroshev. [Pinzari, arXiv:1310.0181v3](https://arxiv.org/abs/1310.0181v3), [DOI](https://doi.org/10.1134/S1560354713060178).

For convex h, Guzzo's introductory statement, printed p. 443, explicitly gives drift O(μ^(1/(2n))) until the lesser of domain-exit time and t₀exp(cμ^−1/(2n)); n counts fast actions, not all canonical pairs. Its subsequent theorem on p. 444 has extra secular hypotheses and is not needed here. Concavity is handled by reversing the Hamiltonian's sign. [Guzzo 1999, DOI](https://doi.org/10.1017/S0252921100073085).

Resonant blocks are therefore not automatically bad initial sets: resonant normal forms, convex fast-energy geometry and transitions between blocks bound action transport throughout the region. Faster local times and shrinking resonant neighborhoods appear inside the proof, but are not a universal theorem about collision probability. With the continuation argument below the pair is simply

    T=t₀exp(cμ^−1/(2n)),     exceptional measure=0.

The optimized exponent is explicitly source-stated, but Guzzo's two-page proceedings text is not a complete proof source. Before freezing that exponent, independently audit its derivation with the extra canonical variables. Pinzari's detailed statement supplies the robust fallback with positive exponents a,b, rather than silently applying a nondegenerate theorem in 2n actions.

### KAM and stickiness

For the planar two-planet problem, Pinzari v3, Theorem 1.2, p. 6, restates Arnold's fixed-small-eccentricity result: an invariant torus union occupies relative measure at least 1−μ^a*, for sufficiently small μ. Thus T=∞ and exception ≤δ if μ≤δ^(1/a*) and all source domain assumptions hold. This already answers the most-data question in that setting, at the cost of planetary KAM. Theorem A, p. 7, gives a different hierarchical result with complement bounded by C(μ^1/4(log α^−1)^β*+√α). At fixed semimajor-axis hierarchy α, that particular estimate has a √α floor; decreasing μ alone does not make its bound smaller than every δ.

Bounemoura–Farré, Theorem A, p. 4 of [arXiv:2105.01297v1](https://arxiv.org/abs/2105.01297v1), start from an exact analytic Diophantine torus. For tube radius r, a=1/(τ+1), their pair is

    T=exp(exp(cr^−a)),     relative exception < exp(−cr^−a),
    action displacement ≤ Cr².

One can ensure exception ≤δ by r≤(c/log(1/δ))^(1/a), below the additional theorem threshold. This shrinks the initial region. Planetary slow frequencies are O(μ), so the Diophantine constant, allowable radius and stability constants can deteriorate with μ. The theorem gives no uniform T(μ,δ) on our fixed region by setting r=μ. A single torus has zero ambient phase volume; covering a fixed planetary region by suitable tubes and estimating overlaps would be additional work. Proper degeneracy does not invalidate the theorem after a torus is constructed, but obstructs that uniform transfer. [Published DOI](https://doi.org/10.1007/s00023-023-01302-4).

## 2. Recommended statement and complete proof sketch

Use the full planar moving-Sun Newtonian problem with n≥2 planets. Set the solar mass and gravitational constant to one, fix positive weights m₁,…,mₙ, and give planet i mass μmᵢ. After translation reduction and canonical mass scaling, use heliocentric positions qᵢ and rescaled momenta pᵢ:

    Hμ(q,p) = Σᵢ[|pᵢ|²/(2mᵢ) − mᵢ/|qᵢ|]
              + μ[½|Σᵢpᵢ|² − Σᵢ<ⱼ mᵢmⱼ/|qᵢ−qⱼ|].

The indirect kinetic term is retained. This is the Hamiltonian in Figueras–Haro, published §2, equation (2.1), specialized to the plane; it describes a moving Sun although heliocentric coordinates put its coordinate position at zero. [Published DOI](https://doi.org/10.1007/s00332-024-10109-4).

Use planar prograde Poincaré variables (Λ,λ,z), with

    Λᵢ=mᵢ√aᵢ,     hK(Λ)=−Σᵢmᵢ³/(2Λᵢ²),
    A=½Σᵢ|zᵢ|²=ΣᵢΛᵢ(1−√(1−eᵢ²)).

Here λ has period 2π. Campaign period-one coordinates require θ=λ/(2π) and conjugate fast actions 2πΛ. Every constant and Hamiltonian formula must be transported through that canonical scaling; no source convention is silently changed.

Fix an outer box Q=∏[ℓᵢ,uᵢ], with 0<ℓᵢ<uᵢ, and an inner positive-volume box Q₀ compactly contained in its interior. Put aᵢ⁻=ℓᵢ²/mᵢ² and aᵢ⁺=uᵢ²/mᵢ². Fix e*∈(0,1) such that

    aᵢ⁺(1+e*) < aᵢ₊₁⁻(1−e*)      for i<n.

Set ℓmin=minᵢℓᵢ and Acrit=ℓmin(1−√(1−e*²)). Fix 0<A₀<A₁<Acrit and the initial region

    R = Q₀ × (ℝ/2πℤ)ⁿ × {z : A(z)<A₀}.

All these choices are independent of μ and δ. Let ν denote canonical Liouville volume on R, so 0<ν(R)<∞.

**Proposed theorem.** There exist μ*,C,c,t₀,d,Rmax>0, depending only on these fixed data, such that for every 0<μ<μ* and every 0<δ<1 there is a measurable Eμ,δ⊂R with ν(Eμ,δ)≤δν(R), and every initial point in R\Eμ,δ has a unique solution on

    0 ≤ t ≤ T(μ,δ) := t₀exp(cμ^−β),     β=1/(2n),

satisfying, throughout this interval,

    |Λ(t)−Λ(0)|∞ ≤ Cμ^β,
    d ≤ |qᵢ(t)| ≤ Rmax,     |qᵢ(t)−qⱼ(t)| ≥ d  (i≠j).

Momenta are uniformly bounded. In fact Eμ,δ can be empty, and μ* need not depend on δ. Consequently, for each fixed k≥2 there is μ_k>0 such that the same conclusions hold through μ^−k whenever μ<min(μ*,μ_k). No conclusion about individual eccentricity drift, a particular ephemeris or perpetual stability is asserted.

The following seven lemmas discharge the premises rather than assuming safety.

1. **Standard, with source pin: canonical chart and integrals.** The planar Poincaré chart extends analytically through circular orbits. Its Kepler part is hK above. Simultaneous rotations have conserved generator

       J=Σᵢqᵢ×pᵢ=ΣᵢΛᵢ√(1−eᵢ²)=ΣᵢΛᵢ−A.

   The Hamiltonian's displayed terms are rotationally invariant, so Hamilton's equations give dJ/dt=0. The coordinate formulas and angular-momentum/AMD identities are written in Laskar–Petit, §2.1–2.2, equations (4)–(11), p. 2 of [arXiv:1703.07125v2](https://arxiv.org/abs/1703.07125v2), [DOI](https://doi.org/10.1051/0004-6361/201630022); Pinzari v3 §1.1 supplies the regular planetary coordinates. The mass normalization used here is fixed by the displayed Hamiltonian. Crucially, A itself need not be conserved by the full dynamics.

2. **New elementary specialization: geometric analytic domain.** On Λ∈Q and A≤A₁, each nonnegative AMD summand is at most A₁. Since Λᵢ≥ℓmin, this implies eᵢ<e*. Elliptic geometry gives aᵢ(1−eᵢ)≤|qᵢ|≤aᵢ(1+eᵢ). The stipulated gaps therefore separate all configurations, regardless of orbital phases. Compactness and strict inequalities permit a slightly larger real neighborhood, then a uniform complex neighborhood on which the Kepler map and potential branches are analytic. The perturbation and its derivatives are uniformly bounded there. This is an explicit compactness deduction, not an assumption that the trajectory remains there.

3. **New calculation using a standard criterion: fast convexity.** Direct differentiation gives D²hK=diag(−3mᵢ³/Λᵢ⁴), uniformly negative definite on Q. Thus −hK is uniformly convex in the n fast actions. Pinzari Appendix D.1, p. 41, writes the relevant quasi-convexity criterion and includes definite Hessians. No assertion of convexity or steepness in all 2n actions is made.

4. **Source-proved analytic estimate, source-stated optimized rate: stopped partial Nekhoroshev.** Apply the properly degenerate theorem to this fixed analytic domain, stopped at its first exit. Guzzo p. 443 explicitly includes the exit-time minimum and the exponent β. Pinzari Theorem D.1 measures smallness by M=sup|∂P|, where P is the entire perturbation; here Cauchy estimates give M≤C₀μ. It is not legitimate to identify M numerically with μ. This produces the displayed fast-action bound through the lesser of the exponential time and exit time. The optimized-rate proof audit remains a prerequisite for a frozen provider; the positive-a,b version supports the same argument without that optimization.

5. **New assembly of exact identities: prevent slow exit.** Conservation of J gives

       A(t)=A(0)+Σᵢ(Λᵢ(t)−Λᵢ(0)) ≤ A₀+nCμ^β.

   Choose μ* so Cμ*^β is smaller than half the action-box margin and (A₁−A₀)/(2n). On every interval before first exit, both actions and A remain strictly inside the outer region. The bound controls total deficit, even if individual eccentricities exchange substantially.

6. **Standard continuation, proved here in the required form.** On that smaller compact region the coordinate map, momenta and vector field are bounded, and the vector field is locally Lipschitz. At a finite endpoint the solution has a limit because its derivative is bounded; the limit remains in the collision-free open domain, where local existence and uniqueness extend it. Thus no first exit or maximal-solution endpoint occurs before T. Taking d below all fixed radial gaps and perihelion bounds proves the geometric inequalities. The Sun's barycentric position is −μΣmᵢqᵢ/(1+μΣmᵢ); hence all bodies also stay bounded relative to the center of mass. “No escape” is not a claim that a freely translating center of mass stays in a fixed inertial ball.

7. **New immediate deduction: quantifiers and measure.** Set Eμ,δ=∅. Exponential growth dominates every fixed power as μ→0, giving the polynomial corollary. The fixed region and its volume never shrink with μ, k or δ.

This is a precise packaging of a known planetary argument, not a new dynamical theorem. The new work is its explicit contract, source audit, formal proof and any usable constants. Calling it merely folklore would understate Pinzari's explicit historical attribution. Conversely, track N's present nondegenerate N-HEAD, with owner-approved n≥3, cannot simply be instantiated with the degenerate planetary Hamiltonian or with two fast actions.

The concurrently updated [track-N statement, draft 0.2](../tracks/N/statement.md) also records source-import gap F-N1: real derivative bounds do not supply the uniform complex Hessian bound used by the imported normal-form estimate. This report does not resolve that existing audit finding. Its Kepler Hamiltonian is fixed and explicit, so its derivatives can instead be bounded directly on the chosen complex neighborhood. A uniform abstract N-PARTIAL-CONVEX statement must retain the necessary complex bounds among its parameters.

## 3. Actual Jupiter–Saturn masses

There is a realistic **secular-model** safety statement with unusually modest certification costs. Normalize mJ=1, let mS∈[0.29,0.31], and take

    aJ∈[5.15,5.25] au,   aS∈[9.45,9.65] au,
    eJ≤0.06,             eS≤0.07,

with every planar prograde phase allowed. These ranges surround nominal J2000 values in [JPL's approximate-element table](https://ssd.jpl.nasa.gov/planets/approx_pos.html). They are an illustrative input box, not a certified ephemeris uncertainty enclosure. Figueras–Haro's realistic model uses masses 0.9546×10^−3 and 0.2856×10^−3 relative to the Sun; our equivalent mass normalization has μ≈0.0009546 and mS≈0.2992.

Define the secular Hamiltonian by the exact average of Hμ over both Kepler mean longitudes, retaining the full interaction integral. It is independent of the fast angles, so ΛJ,ΛS are constant. Rotation invariance also conserves J, hence A. This needs no truncated eccentricity series and holds at the actual chosen masses. Conservation of secular AMD is discussed in Laskar–Petit §2 and Appendix B, pp. 16–17; transferring it to the full problem would be incorrect.

Exact rational upper bounds give

    A < 2.3×0.00181 + 0.97×0.00246 = 0.0065492.

Both actions exceed 0.87. For e*=0.15,

    Acrit > 0.87×0.011 = 0.00957 > A.

Consequently every secular solution has eᵢ<0.15, a planet–planet radial gap at least

    9.45×0.85 − 5.25×1.15 = 1.995 au,

heliocentric radii at least 4.3775 au and at most 11.0975 au. Compact continuation proves this for all time. Thus T=10^6–10^8 years and δ=0 are feasible in this honest, explicitly defined secular model. The eleven arithmetic checks are retained in `sources/incoming-zohar2/r2-secular-box-arithmetic.json`; they are rational calculations, not a formal proof or an orbital integration certificate. The geometric bounds apply to reconstructed secular ellipses for every fast phase. They do not prove that full Newtonian trajectories follow those ellipses for 10^8 years.

For the **full** planar Sun–Jupiter–Saturn model, the first unpaid numerical inequality is a validated fast-action drift bound small enough to preserve the AMD and radial margins over the requested physical time. Generic asymptotic smallness does not pay it. Near 5:2 mean-motion resonance one should retain the resonant terms, not divide by a tiny divisor. At μ≈10^−3 and δ=0.01, the scale δ²/μ is only about 0.1; the elementary exclusion scheme above has no useful large cutoff without much better local constants. A narrow observed box may lie mostly inside the retained resonance zone.

The necessary certificate would include exact parameter intervals and time units; an analytic collision-free complex domain; interval bounds for the Kepler transformation and its inverse; a resonant or torus-centered normal form; rigorous Fourier/Taylor tails and transformation losses; a remainder bound propagated for T; and the final AMD/radial inequalities. A 99% claim additionally needs a finite covering with a certified measure bound for uncovered or rejected cells, in the stated Liouville measure. For an all-data AMD proof, that covering can be replaced by uniform bounds. A sampled ensemble or a single successful trajectory pays neither contract. Converting GM⊙=1, lengths in au, to years requires the corresponding time unit, not treating one angular radian as a full orbit.

The closest checked results have different strengths:

| Result and exact locator | What it establishes or computes | Missing part of this target |
|---|---|---|
| Celletti–Chierchia, author version Theorem 1.1, p. 7; model (1.4), p. 6; [DOI](https://doi.org/10.1090/memo/0878) | Certified confinement between invariant tori at mass parameter up to 10^−3 | Restricted Sun–Jupiter–Victoria, fixed energy, degree-ten truncated perturbation; not the full planetary box |
| Barbieri–Niederman, Theorem 1, pp. 15–16; Theorem 7, pp. 30–32; Table 1, p. 40; [arXiv:1810.05987v1](https://arxiv.org/abs/1810.05987v1) | Explicit full planetary confinement bounds, including a 5:2 resonant calculation | Displayed 10^7–10^10-year examples use perturbations around 10^−11, far below actual masses |
| Giorgilli–Locatelli–Sansottera, p. 6 and §4; [arXiv:1702.04894v1](https://arxiv.org/abs/1702.04894v1) | Very long effective secular stability estimates near a computed torus | The paper explicitly says these are not a rigorous computer-assisted proof |
| Figueras–Haro, published §1–§4; [2025 DOI](https://doi.org/10.1007/s00332-024-10109-4); [arXiv:2403.10152v1](https://arxiv.org/abs/2403.10152v1) | Full, untruncated planar model at realistic masses; highly accurate torus computations and an a-posteriori validation framework | Published §1 says the final rigorous-numerics stage is work in progress; one torus would still not certify 99% of an initial box |

The last distinction was checked in the published text, not inferred from its title. No later completed full-model certificate was found in this search; this is a search result, not a universal nonexistence claim. A small torus invariance residual alone is insufficient without certified small-divisor, torsion, analytic-tail and domain bounds.

My feasibility judgment is therefore affirmative for the exact secular safety box, and a substantial open certification project for the full model. Start the latter at 10^6 years, with an explicit box and no promised δ; extend the horizon or measure coverage only after the certified inequalities succeed. Long direct interval integration is vulnerable to wrapping and phase instability, so analytic integrals and normal forms should carry the duration.

## 4. Ranked campaign milestones and refutation gates

These are proposed new statements, not edits to existing anchors. Costs are rough additional Lean lines after the stated dependencies, not estimates obtained by profiling current APIs; shared work must not be counted twice.

| Rank | Proposed statement and attachment | Value and indicative cost |
|---|---|---|
| 1 | **P-AMD-CONFINEMENT:** exact angular momentum plus an explicit fast-action displacement bound implies the displayed eccentricity, radial separation and continuation bounds | Reusable deterministic safety gate for N, KAM or a computer certificate; roughly 3,000–6,000 lines after coordinates and local ODE theory |
| 2 | **P-SECULAR-BOX:** exact fast-angle averaging conserves Λ and A; the specified Jupiter–Saturn input box is safe for all time | Realistic masses with a clear model boundary; 1,000–3,000 lines after averaging/coordinates, plus certified parameter membership if requested |
| 3 | **N-PARTIAL-CONVEX:** analytic h(I)+μP(I,φ,z), uniformly definite fast Hessian, stopped fast-action confinement, including n=2 | Main missing bridge from N to P; perhaps 20,000–40,000 lines if resonant normal forms and their geometric proof are absent; less with reusable N machinery |
| 4 | **P-EXP-SAFE:** §2, including empty exception and moving-Sun reconstruction | Known theorem with useful physical conclusion; 2,000–5,000 assembly lines after the above; Kepler/Poincaré infrastructure itself may require another 10,000–20,000 shared lines |
| 5 | **N-NONRESONANT-MEASURE:** slab union, normal form with slow canonical pairs, and the displayed (μ,δ,K) contract | Explicit most-data alternative; roughly 8,000–15,000 lines beyond shared normal-form tools; useful only if constants or cost improve |
| 6 | **P-REALISTIC-CERT:** a machine-checkable remainder/AMD certificate on a named full-model box for 10^6 years, then 10^8 | Potentially the most scientifically valuable result; success and cost currently unknown, so first fund a numerical feasibility study, not a promised theorem |

Before owner approval, an independent refutation round should test these specific failure modes:

- Check the stopped properly degenerate theorem and β=1/(2n) against a full proof. Do not substitute track N's nondegenerate n≥3 anchor. If the optimized rate fails audit, retain explicit positive exponents from the general partial theorem and revise the proposed statement before freezing.
- Re-derive the moving-Sun Hamiltonian, time/mass scaling, symplectic period conversion and exact J identity. Attempt to invalidate the AMD bootstrap with action drift of either sign and a datum near each domain boundary.
- Check complex analyticity through circular orbits and around the full compact eccentricity domain; real separation alone is not a numerical complex-width estimate.
- Audit the extra slow-pair Poisson brackets, transformation displacement and slab-volume factors in the optional δ-dependent scheme. Its adaptation is new proof work, not a quoted source theorem.
- Verify every rational secular-box inequality and distinguish canonical/mean elements from observed osculating elements. Recheck any claimed ephemeris enclosure using validated input intervals.
- Challenge realistic-mass proposals with the 5:2 divisor, uncovered-volume accounting, full interaction tails and the year conversion. Distinguish safety from closeness of eccentricities and from quasiperiodicity.

## 5. Evidence and scope receipt

New PDFs, versioned abstract-page records, Crossref responses and extracts were appended under `sources/incoming-zohar2/`, with new-PDF hashes in `r2-SHA256SUMS`. DOI title/author matches and arXiv versions were checked; theorem locators refer to the named versions. The JPL page is an agency data source, not a DOI-bearing mathematical theorem. The inaccessible details explicitly marked **[unverified]** are not premises of §2.

Only this report is an authored repository deliverable. No Lean, frozen declaration, manifest, generated file, existing report or track document was edited; no state-changing git command was used. Concurrent workspace changes belong to other work. The brief's no-Lean rule excludes the full source-lint script's elaborated-ABI stage, builds and `#print axioms`; no formal proof or build receipt is claimed.

Executed checks: `python3 -I scripts/gen_root_imports.py --check` and `python3 -I scripts/render_errata.py --check` exited 0 without output. `python3 -I scripts/check_lean_modules.py --root /root/code/KAM` returned `PASS (43 Lean files, 0 comparator configurations)`; the static frozen-anchor guard returned `FROZEN-ANCHOR GUARD OK`. A read-only reproduction of the lint script's forbidden-pattern and size checks passed on its 42 included files. `sha256sum --check r2-SHA256SUMS` returned `OK` for all nine new PDFs. All eleven DOI links matched retained Crossref title/author records; relative report links and whitespace checks passed. The secular-box arithmetic record contains eleven successful rational checks. `git diff --check -- docs/explorations/almost-every-round2.md` exited 0; because the report was untracked, a separate direct trailing-whitespace check also passed. These are source/data hygiene checks, not mathematical closure.

No new suspected defect in a pinned mathematical source was identified. The restrictions introduced here are explicit: planar prograde motion, fixed compact separated annuli, low initial total deficit and sufficiently small masses for the full exponential theorem. The slow-pair normal-form extension is a proposed adaptation. The secular certificate concerns its stated averaged model. These boundaries, and the unverified realistic full-model remainder, must survive any later statement drafting.
