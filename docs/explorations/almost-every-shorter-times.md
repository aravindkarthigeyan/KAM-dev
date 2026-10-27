# Most nearby initial conditions over shorter times

Research report, 27 October 2026. This extends [the previous exploration](planetary-and-nekhoroshev.md). It proposes mathematical statements, not approved campaign anchors.

There is a useful opportunity: finite-time averaging gives a quantitative measure estimate without constructing invariant tori or proving Nekhoroshev confinement. However, the multifrequency estimate in the brief needs correction. Under the frequency-rank hypothesis, the **mean** averaging error is O(√ε); the measure of points with error exceeding η is O(√ε/η). It does not assert error O(√ε) outside an exceptional set O(√ε).

Keep five parameters separate: perturbation strength ε, planetary mass ratio μ, observational radius r, tolerated drift η, and exceptional relative measure δ. “Almost every” strictly means a null exception; “at least 1−δ” permits a positive exception. Neither means that the observed datum belongs to the good set. An exponentially long theorem valid only below an unknown ε₀ says nothing quantitative at the actual planetary masses.

## 1. Sources and mathematical landscape

Page numbers below refer to the identified version, not automatically the journal pagination. DOI metadata were checked against exact Crossref title/author matches; arXiv references against their versioned abstract pages. PDFs, metadata and extracts are retained under `sources/incoming-zohar2/`; the existing Barbieri–Niederman pin was read without alteration. Unresolved original-source details are explicitly marked **[unverified]**.

### Averaging: the directly relevant polynomial-time result

For slow variables x and m fast angles φ, consider

    ẋ = ε f(x,φ,ε),   φ̇ = ω(x) + ε g(x,φ,ε),
    ẏ = ε f̄(y),       y(0) = x(0).

Use analytic coefficients on fixed neighborhoods, uniform bounds, compact initial sets, and an interior margin for averaged trajectories. This is a safe specialization of the smooth setting. Arnold–Kozlov–Neishtadt, third edition, §6.1.9, **Theorem 6.11 and Corollary 6.1, p. 243, (6.27)–(6.28)**, assume either rank Dω=m or rank D[ω]=m−1 for the projective frequency map. They give

    ∫ sup(0≤t≤1/ε) |x(t)−y(t)| dx₀ dφ₀ ≤ C√ε,
    meas{ sup |x(t)−y(t)| ≥ η } ≤ C√ε/η.

For a fixed initial ball B of volume V, the relative exception is at most C√ε/(ηV). Choosing η proportional to ε¹ᐟ⁴ balances the two vanishing quantities. Fixed slow duration L gives time L/ε with constants C_L; no uniformity as L→∞ follows. [AKN, DOI](https://doi.org/10.1007/978-3-540-48926-9).

The book attributes this quantitative result to Neishtadt, *Averaging in multifrequency systems II* (1976), Doklady 226, 1295–1298; the original numbered theorem and DOI/arXiv verification remain **[unverified]**. Its content was checked in the book's full-text transcription and independently in [Neishtadt's own 2022 slides, slide 14](https://indico.cern.ch/event/1117554/attachments/2380210/4066752/talk_averaging.pdf). The book's printed PDF rendering remains **[unverified]**; the downloaded university PDF is only a contents excerpt and is not theorem evidence. Two-frequency resonance-passage results have additional hypotheses and different logarithmic losses; they do not justify the brief's blanket multifrequency claim.

**Anosov.** AKN p. 243 restates convergence in measure: for every fixed η>0, the exceptional measure tends to zero on time 1/ε. The unperturbed motion must be ergodic on almost every common integral level, with the requisite regular compact foliation and averaging setup. No power rate is asserted. The original 1960 article's theorem locator and DOI/arXiv check are **[unverified]**; this report relies on AKN's restatement.

**Kasuga.** Parts I–III are independently identified by [DOI I](https://doi.org/10.3792/pja/1195577651), [DOI II](https://doi.org/10.3792/pja/1195577652), and [DOI III](https://doi.org/10.3792/pja/1195577653). **Theorem 4, III p. 381**, concerns the enclosed phase volume J for slowly varying Hamiltonians. Assumptions 1–2, I pp. 368–369, require regular compact nested energy hypersurfaces and uniform volume ranges; Assumption 3, II p. 373, requires ergodicity on almost every energy shell. For every η>0, the measure of data leaving the prescribed region or violating |J−J₀|≤η on a fixed slow interval tends to zero as the fast parameter A→∞. Writing ε=1/A gives physical duration O(1/ε), but no quantitative exceptional-measure rate. Ergodicity on energy shells is a substantive hypothesis, not a general property of integrable planetary systems.

### Stickiness: stronger times, different centers

**Morbidelli–Giorgilli 1995**, [DOI](https://doi.org/10.1007/BF02180145), unnumbered theorem, **author manuscript p. 3**: analytic H=H₀+H₁ near an action p*, a (γ,τ)-Diophantine frequency with τ>n−1, uniformly invertible Hessian, local quasi-convexity transverse to the frequency, and sufficiently small ‖H₁‖ produce a KAM torus. For each sufficiently small radius r there are adapted canonical coordinates J in which every initial J₀∈B_r has drift bounded in the source’s asymptotic notation by exp(−(r*/r)^(1/(τ+1))) up to a time of order

    exp[exp((r*/r)^(1/(τ+1)))].

The displayed torus-complement estimate is exp(−1/r), with normalization-dependent constants implicit; the dynamical confinement exception is zero. Constants depend on analytic widths, γ, τ and nondegeneracy bounds. The tiny drift is in the theorem's radius-dependent coordinates, not directly in observed Cartesian positions. This is all-data confinement near a certified torus, not an estimate around an arbitrary numerical orbit.

**Perry–Wiggins 1994**, [DOI](https://doi.org/10.1016/0167-2789%2894%2990184-8), Physica D 71, 102–121: the publisher abstract describes analytic dynamics near an invariant Lagrangian torus with strongly nonresonant linear flow, and an action-doubling lower time of the form

    (C/r) exp((Kγ/r)^(1/(n+2))).

No steepness hypothesis appears in that abstract. The full theorem number, precise frequency convention and complete constants are **[unverified]** because the full article was inaccessible. This is an abstract-level locator, not a usable formalization contract; no candidate below depends on it.

**Bounemoura–Fayad–Niederman**, [arXiv:1601.01783v1](https://arxiv.org/abs/1601.01783v1), published as *Superexponential Stability of Quasi-Periodic Motion in Hamiltonian Systems*, [DOI](https://doi.org/10.1007/s00220-016-2782-9): **Theorem A, p. 4**, for Gevrey-α H=ω·I+O(I²), requires a Diophantine torus and a stably steep Birkhoff polynomial of order ⌊n²/2+2⌋. All |I₀|≤r remain within 2r for time `exp(exp(C r^(-1/(α(1+τ)))))`. **Theorem B, p. 5, with Definition 3**, additionally assumes Kolmogorov nondegeneracy and stable steepness of the relevant Taylor polynomials of h. For each γ and sufficiently small ε depending on γ, a family of doubly exponentially sticky tori has complement O(γ); the stickiness exponent can be any u<1/(αn). The separate KAM inequality ε≲γ² does not by itself justify substituting γ=√ε in the complete theorem.

**Bounemoura–Farré** is the strongest direct “most nearby” result found: [arXiv:2105.01297v1](https://arxiv.org/abs/2105.01297v1), [published DOI](https://doi.org/10.1007/s00023-023-01302-4), **Theorem A, p. 4**. Let analytic H=ω·I+O(I²), with normalized Diophantine ω and a=1/(τ+1). For all sufficiently small r, an open U_r⊂Tᵈ×B_r satisfies

    meas((Tᵈ×B_r)\U_r) / meas(Tᵈ×B_r) < exp(−cr⁻ᵃ).

Every point of U_r has |I(t)−I₀|≤Cr² and a frequency ω(I₀) with lifted angle error ≤Cr for |t|≤exp exp(cr⁻ᵃ). No twist or steepness is required. Constants depend on the analytic data and a finite Birkhoff jet whose required order depends on H. This starts from an **exact Diophantine torus**. Its tube contains all angles; intersecting an arbitrary small phase-space ball loses a volume factor. Restricting its time yields a polynomial-time corollary, but obtaining the reference torus remains the expensive step.

### Generic Hamiltonians are not generic initial conditions

**Niederman 2007**, [DOI](https://doi.org/10.1017/S0143385706000927): **Theorem IV.1, p. 12 of the 2004 author preprint**, together with Definition I.1, p. 2, says that for any analytic h near a closed action ball, almost every linear shift hΩ=h−Ω·I is exponentially stable. On an interior domain, all initial actions have drift ≤C₁εᵇ until exp(C₂ε⁻ᵃ), with

    b = 1/[2(1+2ⁿn)],   a = b/(2+n²).

The null exception is in Ω; thresholds and constants are not uniform in Ω. It supplies no bound on a bad subset of observed initial data for the fixed Solar System Hamiltonian.

**Bounemoura–Niederman**, *Generic Nekhoroshev theory without small divisors*, [DOI](https://doi.org/10.5802/aif.2706), published PDF: **Theorem 2.2, p. 284**, gives simultaneous Diophantine Morse (SDM) behavior for almost every linear shift when h∈C²ⁿ⁺² and τ>2(n²+1). **Theorem 2.4, p. 285**, for analytic h satisfying SDMγτ, bounded derivatives through order three, fixed analytic widths and sufficiently small ε, gives every initial I₀∈B_R/2

    |I(t)−I₀| < (n+1)²εᵇ,   |t| < exp(ε⁻ᵃ),
    a = b = (1/3)[2(n+1)τ]⁻ⁿ.

Here γ≤1, τ≥2; ε₀ depends on n,R, widths, derivative bounds, γ,τ. Again this is prevalence of Hamiltonians followed by all-data stability. Printed definition/lemma defects recorded below require resolution before formalizing that source.

### Effective planetary calculations: what is actually certified

**Giorgilli–Locatelli–Sansottera.** The [2009 three-body paper](https://doi.org/10.1007/s10569-009-9192-7) and [2017 planar Sun–Jupiter–Saturn–Uranus paper](https://arxiv.org/abs/1702.04894v1) combine KAM normalization and effective confinement. In the latter, **§4, (58)–(60), pp. 25–26**, the bound is optimized over finite normalization order r: T(ρ₀)=max_r τ̃(ρ₀,r), with τ̃ proportional to ρ₀⁻ʳ times computed remainder factors. Figure 2 gives about 10¹⁰ years for radius slightly below 10⁻⁷, whereas the estimated observational radius is 7×10⁻⁷. Crucially, **p. 6** says: “Our result is not supported by a rigorous computer-assisted proof.” These are valuable estimates, not certified ball-measure theorems. The proposed confinement mechanism removes no exceptional subset.

**Celletti–Chierchia**, [DOI](https://doi.org/10.1090/memo/0878): **Theorem 1.1, p. 7 of the December 2003 author version**, certifies an invariant region between two KAM tori on energy E_V=−1.769, containing the fixed-energy points |L−0.670|<0.0015, |G−0.654|<0.0059, for mass parameter ε≤10⁻³. This is all-time, all-data confinement on that energy surface. But **p. 6, (1.4)** replaces the perturbation by an ε-independent trigonometric polynomial of degree ten: this certified Sun–Jupiter–Victoria model is truncated. It is not automatically the full restricted three-body problem, nor a full-dimensional uncertainty ball. The final 2007 text's identical statement is **[unverified]**; the precise pin here is the author version.

**Barbieri–Niederman 2018**, [arXiv:1810.05987v1](https://arxiv.org/abs/1810.05987v1), existing repository pin: **Theorem 1, pp. 15–16**, assumes the analytic planetary setup (18), a periodic Kepler reference torus, normalization order m, contraction conditions (28), domain margins (29), and C₁(R)>0 in (30). Every datum in box (32) remains controlled for

    T = [C₁(R)/C₂] q₁⁻ᵐ,   C₂ = r|ω₁+ω₂|η₀,

with action bound R_f(t) and eccentricity bounds (35). There is no measure exception. **Theorem 2** only controls fast actions until domain exit; **Theorem 7, pp. 30–32**, supplies secular confinement. In §5.1, **Table 1, p. 40**, ε=10⁻¹¹·²⁵ yields 5.75×10¹⁰ years on exact 5:2 resonance; ε=10⁻¹¹ yields 3.08×10⁷ years. Table 3 addresses a surrounding action radius about 8×10⁻⁷. These perturbations are far below the actual Jupiter/Sun ratio near 10⁻³. Eccentricity below one alone does not prevent interplanetary collisions: radial separation must also be checked.

## 2. What the numerical evidence permits

**Laskar 1994**, *Large-scale chaos in the solar system*, A&A 287, L9–L12, [ADS scan](https://adsabs.harvard.edu/pdf/1994A%26A...287L...9L): §3, pp. L11–L12, repeatedly selects branches maximizing Mercury's eccentricity, reaching a possible Venus-crossing configuration around 3.5 Gyr. This is a targeted instability search, not an unbiased collision-frequency estimate. The earlier ensemble already reaches Mercury eccentricities above 0.5; the selected branches approach one. These excursions measure transport, not a constant Gaussian diffusion coefficient. The secular approximation deteriorates at the large eccentricities in question. DOI/arXiv verification is **[unverified]**; title, author and pages were checked directly in the scan.

**Laskar–Gastineau 2009**, [DOI](https://doi.org/10.1038/nature08096), Nature 459, 817–819: 2,501 nearby trajectories over 5 Gyr, including relativistic and lunar effects, show roughly a one-percent high-eccentricity instability fraction and actual collisions in some runs. This does not establish a Lebesgue probability for an arbitrary uncertainty ball, and the high-eccentricity percentage should not be relabelled the percentage of physical collisions.

**Mogavero–Laskar 2021**, [arXiv:2105.14976v1](https://arxiv.org/abs/2105.14976v1), **§7, pp. 13–14**, obtains 42 secular collisions among 10,560 forced-inner-system runs over 5 Gyr, about 0.4%. A secular collision means intersecting osculating ellipses, not necessarily simultaneous contact. **§8.1, p. 15**, gives a median first secular-collision time 40.8 Gyr (reported 98% interval 38.2–43.5), approximately 20% instability by 20 Gyr and 85.4% by 100 Gyr. These concern a fixed forced secular model, not the Sun's physical evolution over those ages; its median does not imply a constant exponential hazard. **§8.2, p. 16**, fits frequency transport toward the g₁−g₅ resonance with a reflected/absorbed diffusion: T₁=27.6 Gyr, α=0.9, hence short-time first-passage scale T₀=22.4 Gyr. This fit is not a rigorous eccentricity diffusion law or a collision-free lower-time bound.

**Hoang–Mogavero–Laskar 2022**, [arXiv:2205.04170v1](https://arxiv.org/abs/2205.04170v1), **§3, Table 1 and §4, pp. 2–6**, compares secular truncations using 108,000 initial samples drawn from a specified narrow Gaussian. Degree-four dynamics strongly suppress 5-Gyr instability; degree-six terms substantially change it. Figure 5 gives median times roughly 75 Gyr for H₄ and 35 Gyr for H₁₀. Similar Lyapunov exponents do not ensure similar tails.

The [2022 resonance analysis](https://arxiv.org/abs/2205.03298v1) and **Mogavero–Hoang–Laskar 2023**, [arXiv:2305.01683v1](https://arxiv.org/abs/2305.01683v1), **§III, Fig. 1; §VI; Appendix C**, distinguish Lyapunov times, approximately 5–500 Myr across the spectrum, from slow transport constrained by approximate integrals. Laskar's eccentricity excursions and these later ensemble dispersions indicate diffusion over Gyr scales; none supplies a universal constant D_e for Mercury. A five-million-year predictability horizon is not a five-million-year safety horizon.

Thus “at least 99% safe over 5 Gyr” is broadly compatible with selected numerical models and sampling laws; “all except a null set” is not what they support. Very small δ at 20–40 Gyr conflicts with the forced-model ensembles. These are numerical comparisons, not rigorous counterexamples to analytic theorems. The main mismatch is usually unverified smallness/nondegeneracy at actual masses, plus confusing uncertainty r with perturbation ε. Making r tiny does not make planetary coupling tiny.

There is also an elementary finite-time statement: if one reference solution stays a positive distance from collisions and infinity on [0,T], continuous dependence gives an open neighborhood whose solutions do likewise. This has no exceptional set. It becomes useful only after bounding that neighborhood; a crude Grönwall radius can decay like exp(−KT). Simulations with a fixed sampled uncertainty scale cannot refute this arbitrarily-small-neighborhood statement.

## 3. Two proposed statements

### A. Abstract averaging on a fixed ball — source theorem plus deduction

Fix n≥2, an analytic domain, uniform bounds for h,f, and Hε=h(I)+εf(θ,I), ‖f‖≤1. Assume ∇h≠0 and uniform positive quasi-convexity on vectors perpendicular to ∇h. Fix a phase-space ball B of volume V>0 with compact closure inside the domain, and L>0.

Then there exist C_L, ε₀, η₀>0 such that, for every 0<ε<ε₀ and 0<η<η₀, a measurable Eε,η⊂B satisfies

    meas(Eε,η) ≤ min(V,C_L√ε/η),
    ∀z₀∈B\Eε,η, ∀t∈[0,L/ε], |I(t)−I(0)|≤η,

and these solutions exist throughout that interval. Equivalently, for each δ∈(0,1), imposing C_L√ε≤δηV gives relative exception ≤δ. Here L/ε is polynomial and shorter than Nekhoroshev's exponential time. Constants are fixed before ε,η,δ; the ball is not allowed to shrink silently with ε. This specifies T(ε,δ)=L/ε on the stated admissible parameter region; it does not optimize T over δ without further control of C_L.

**Justification.** Quasi-convexity makes the projective gradient map have rank n−1: its derivative restricted to ω⊥ has trivial kernel, since D²h·v parallel to ω would imply v·D²h·v=0. Averaging gives İ=0 because the angular derivative of f has zero average. AKN then gives the integral estimate; Markov's inequality and a stopped-flow continuation argument give the displayed statement. General steepness alone is not substituted for the stated rank condition.

**Infrastructure and cost.** K supplies analytic/Fourier estimates and measure tools; I supplies flow continuation; N and P share averaging transformations. New work is mean-over-initial-data resonance control and its measure/flow bookkeeping. Budget roughly 10,000–20,000 additional Lean lines, several expert-months, after shared analysis; this is an architectural estimate, not an inspected implementation forecast. If N-HEAD is already proved, restricting its all-data conclusion to polynomial times is cheaper and stronger. This proposal is valuable as an independent route, not an improvement of Nekhoroshev under identical hypotheses.

### B. Fixed-Sun planar planets — short deduction with geometric margins

Fix n≥2 positive mass weights and a fixed Sun. Scale mutual planetary forces by μ; use planar Poincaré variables (Λ,λ,z) for the rescaled canonical Hamiltonian. The following geometric formulas use conventional radian angles and Kepler actions: conversion to campaign period-one angles multiplies their conjugate actions by 2π and must be carried through explicitly. Choose compact semimajor-axis intervals [a_i⁻,a_i⁺] and 0<e*<1 satisfying

    a_i⁺(1+e*) < a_(i+1)⁻(1−e*),   a_1⁻(1−e*)>0.

Let Λ_min be the minimum Kepler action on these intervals. Choose

    0 < A₀ < Λ_min[1−√(1−e*²)],
    A = Σ Λ_i[1−√(1−e_i²)] = ½Σ|z_i|².

Fix a phase-space chart ball B, volume V>0, whose closure has positive margins inside the chosen action intervals and A<A₀. For each fixed L>0 there exist μ₀,C_L,η_geom,d,R>0 such that, for every δ∈(0,1) and every 0<μ<μ₀ satisfying

    C_L√μ ≤ δη_geom V,

there exists measurable Eμ⊂B, meas(Eμ)≤δV, and every initial point outside Eμ has a solution for 0≤t≤L/μ satisfying

    d ≤ |q_i(t)| ≤ R,   |q_i(t)−q_j(t)| ≥ d   (i≠j).

This gives no collisions and no escapes on the stated interval, with bounded momenta as well.

**Proof of the extra premises, not an assumed safety conclusion.** The Kepler Hamiltonian is −Σc_i/(2Λ_i²), so the fast-frequency derivative in Λ is invertible. Averaging over all λ fixes Λ. Rotational symmetry of the averaged Hamiltonian conserves A; positivity of each summand then bounds every e_i below e*. The radial inequalities keep every averaged configuration separated, for all fast phases. Consequently averaged slow trajectories stay in a compact interior region for every fixed slow duration L. Apply AKN to the slow variables (Λ,z), then choose η_geom smaller than these margins. On the good set the exact osculating elements retain the radial bounds; first-exit continuation completes existence. These deductions, rather than an existing named planetary theorem, produce the displayed statement.

**Infrastructure, cost, risks.** I/P supply Kepler coordinates and Newtonian flow; K supplies frequency-measure estimates; N/P share Candidate A's averaging engine. Allow another 15,000–25,000 lines for coordinates, angular momentum, geometry and continuation if absent, again an uncertain several-month estimate. Proper degeneracy in the full action space does not spoil the fast-frequency rank. No secular twist or steepness is claimed. Spatial inclinations and moving-Sun indirect terms require separate work. The small-angular-momentum-deficit region is restrictive; it has not been checked for the observed Solar System. Very small observational balls worsen the absolute-to-relative volume bound. Constants may grow rapidly with L, so this does not certify arbitrary billions of years by choosing L afterward. For μ≈10⁻³ and L=1, this horizon is only about 10³ fast time units; conversion to years depends on the normalization. Shortening the requested horizon does not by itself verify the smallness inequality at actual masses.

## 4. Recommendation, verification limits and handoff

Prioritize A as a shared quantitative averaging theorem, then B as the fixed-Sun application. Bounemoura–Farré is an attractive later result around certified tori. Actual-parameter claims require an explicitly chosen force model and epoch uncertainty set, a specified measure, interval-certified coordinate maps and remainder bounds, and a validated covering of good initial boxes with total volume at least (1−δ)V. Uncovered boxes are unresolved, not proved unstable. Shorter finite horizons are plausible computational targets; this search found no certificate for the full observed planetary uncertainty set over billions of years. Celletti–Chierchia demonstrates feasibility for a particular truncated restricted model, not that full-system goal.

Suspected source defects for the orchestrator's ledger, with printed-page verification:

- BFN arXiv v1, Definition 1 p. 3, prints `(θ(0), I(0)) ∈ V₂r T` in the time-dependent conclusion; unchanged initial time makes it tautological. Page 6 prints “strictly smaller than n−1” where the preceding Diophantine condition and exponent comparison require greater than n−1.
- BN published Definition 2.1, p. 284, quantifies η∈ℝⁿ although its α-Hessian is k×k. Lemma B.3, p. 319, prints `‖dgζ(x).ν‖ > κ‖ν‖` for every nonzero ν∈ℝⁿ with g:B⊂ℝⁿ→ℝᵏ; for k<n this conflicts with the derivative's nontrivial kernel whenever the antecedent holds. The intended restricted-direction or adjoint statement needs author/source reconciliation. The older [arXiv:0912.3725v1](https://arxiv.org/abs/0912.3725v1), p. 7, also includes the zero vector in that strict inequality. Its p. 5 describes nonresonating indices by the resonant membership condition `k ∈ ℤⁿ ∩ ω⊥`, apparently reversing the intended set.
- MG95 manuscript p. 3 uses strict positive lower bounds in (b),(c) with quantifiers including v=0. The usual nonzero-vector interpretation is necessary and has been made explicit here.

No source files or ledger entries were repaired. Introduced specializations are analytic regularity, fixed interior balls, fixed slow duration, positive quasi-convexity, and planar fixed-Sun low-deficit geometry, and the explicitly stated radian-coordinate convention for the planetary formulas. Candidate B is our deduction, not a quotation or a realistic-parameter certification. No Lean declaration, proof or axiom claim is part of this handoff.


Source pins: [SHA256SUMS](../../sources/incoming-zohar2/SHA256SUMS) records downloaded PDF bytes. The principal local sources are `mg95.pdf` (author manuscript), `n07.pdf` (2004 preprint), `bfn16.pdf`, `bf21.pdf`, `bn12published.pdf`, `gls17.pdf`, `cc03preprint.pdf`, `ml21.pdf`, `hml22.pdf`, and `mhl23.pdf`. The book evidence is `akn06-web-excerpt.json` plus `nei22slides.pdf`. The complete source URLs for the two otherwise unlinked author versions are [Niederman 2004](https://web.ma.utexas.edu/mp_arc/c/04/04-380.pdf) and [Celletti–Chierchia 2003](https://www.mat.uniroma3.it/users/chierchia/PREPRINTS/kam.pdf).

Validation: only this report was authored outside the permitted incoming research directory. `git diff --check -- docs/explorations/almost-every-shorter-times.md` exited 0 without output. The non-elaborating source-lint components also passed: `gen_root_imports.py --check` and `render_errata.py --check` exited 0 silently; `check_lean_modules.py --root /root/code/KAM` printed `check_lean_modules: PASS (40 Lean files, 0 comparator configurations)`; `check_frozen_anchors.py --root /root/code/KAM --manifest /root/code/KAM/manifest/frozen-anchors.json` printed `FROZEN-ANCHOR GUARD OK`. The full `scripts/lint_sources.sh` was not run because its ABI stage writes and elaborates a temporary Lean file, contrary to this brief's “No Lean” scope. No builds or `#print axioms` were performed. An unrelated concurrent modification of `blueprint/parts/p2-aposteriori.tex` was left untouched.
