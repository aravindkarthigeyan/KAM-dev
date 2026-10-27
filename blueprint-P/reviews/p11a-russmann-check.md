# P11a: Rüssmann 2001/2005 route check

Date: 2026-10-27. Independent auditor: Codex. Scope: mathematical source audit and statement recommendation, not theorem approval, a Lean proof, or a certificate of recursive source closure. Printed page numbers are used throughout. This incorporates the owner's update pinning Rus05.

## Verdict

**Retain CP09's analytic, maximal-torus route for P-FIXED, but do not yet label Part 11a source-complete.** Rus01 contains the KAM iteration, convergence, and parameter-measure argument, not merely an announcement. Rus05 supplies the intended proof of its trigonometric approximation input. Neither paper proves CP09's power-law specialization as a separately stated theorem. Moreover, the supplied Rus05 proof has a dimension-rescaling problem described below, and several load-bearing auxiliary facts remain externally cited.

**Must the 2005 addendum be pinned? Yes for the proposed source-backed proof using Rus01 §7.3 without its unpinned approximation-theory citation. It is now pinned.** It is not logically indispensable to proving a weak KAM theorem: one can instead prove a suitable Fourier truncation estimate and redo the constants. Its acquisition resolves an identified source dependency, not all of Part 11a.

**Do Rus01 + Rus05 together give a complete proof of Theorem 1.7 in the pinned sources? No, if “complete in the pinned sources” means that the required results and the estimates used are actually proved there without outstanding repairs.** There is a substantial proof of Theorem 1.7, conditional on named external auxiliary results. Rus05 replaces one such external input, but still cites elliptic-function identities; Rus01 still imports its algebraic approximation inequality and scalar sublevel theorem. More decisively, Rus05 §11's printed multidimensional error estimate does not follow from its preceding rescalings; a single-mode test fails for the multipliers constructed there. This is a local proof/constant defect, not a counterexample to Theorem 1.7 or to the existence of other approximating multipliers. With ordinary external analysis accepted and the approximation estimate repaired, these are the ingredients of a conventional proof. That weaker claim must not be confused with pinned proof closure.

The **first unpaid Part 11a estimate** is a proved maximal-case analytic KAM interface with power-law divisors and a positive admissible perturbation bound of polynomial size on CP09's shrinking domains. It must include displacement and parameter inverse-Lipschitz control. Merely quoting the existence constants of Rus01 Theorem 1.7 does not supply that interface.

## Authority, inputs and method

Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the full brief, blueprint-P/PLAN.md including the Part 11 ruling, the earlier p11-route-study.md, frozen FixedSunPlanetaryKAM and its FixedKolmogorovSet/IsPhysicalTorus consumers, and Part 0's conventions and P-FIXED transcription. Direct PDF reads covered Rus01 §§1, 6–7, the relevant iteration/convergence and measure sections, Rus05's entire 11 pages, and CP09 Theorems 3–4, all of §2.3 including Lemma 8/Remark 5. Technical dependencies were traced using fresh page-separated PDF text. Rus01 p. 126 and Rus05 pp. 30–31 were additionally rendered and visually checked to resolve formula layout.

Read-only HEAD during the audit: `26fa1d1ef7e4c86f8ada179875788f0f8c7e41e5`. Other workers have unrelated changes; the entry status listed blueprint-I/blueprint.pdf and parts/p6-kepler.tex and p7-delaunay.tex. They were not edited by this task.

| Input | SHA-256 |
|---|---|
| sources/pdf/Russmann01_RCD_6_2_119-204.pdf | cf2066ad478e5a42e737ce1d875967f902ab6050344b7e85909137bdacc1de30 |
| sources/pdf/Russmann05_RCD_10_1_21-31_addendum.pdf | 8c0951b8945992b849d3cb4a405d370c317e7b1bfd11e919db23e28a2d98c879 |
| sources/incoming-P/cp09.pdf | dd29561ef38116ba27a743b9b580f797a602bfda1edee8510ef1371c61655859 |
| blueprint-P/PLAN.md | 0da44488c0418c8ed6efa3d2e6f081758423ec52bfb4cbee8b220d1280a3d813 |
| blueprint-P/parts/p0-conventions.tex | 16192e0f49d611715f939c5371ccc9a4337a91a148a6e7574ddff7edacecd621 |
| KAM/Frozen/Planetary/Theorems/FixedSunPlanetaryKAM.lean | 9eb5abd0507b6feb40ad4af5918a78089efeab3551ab5b7625f125e4dfa65f8b |

No frozen defect was found. Freshly identified source defects below are **UNREFUTED-TENTATIVE** in the campaign sense: checked against the pinned text and challenged locally, but not independently reviewed by a second auditor. No ledger or source was changed. Exhaustive line-by-line verification of every estimate in the 86-page Rus01 is not claimed.

## The precise source contract

### Definitions used by Theorem 1.7

Theorem 1.7 is on **printed p. 126**, with proof remarks on p. 127 and its final proof on p. 177. CP09's footnote pointing to p. 127 is off by one for this pinned printing.

1. **Phase space and Hamiltonian (§1.1, pp. 123–124).** Angle x is in R^n/(2π Z^n); action y is in an open, nonempty, connected Y ⊂ R^n. Elliptic coordinates z ∈ Z ⊂ R^(2p) and hyperbolic coordinates w ∈ W ⊂ R^(2q) have open neighborhoods of zero. H=N+P is real analytic on E=T^n×Y×Z×W, with holomorphic continuations to E_bullet containing E. The integrable part is

   `N(y,z,w) = F(y) + (1/2) <z,z A(y)> + <w_plus,w_minus Q(y)>`,

   where A is symmetric, ω=∂F/∂y, and Q is q×q. The quadratic form and J_p require A to be **2p×2p**; the displayed p×p in (1.2) is a dimensional typo (R01-1 below). The notation uses row vectors/transposes; changing it to columns requires a consistent transpose convention.

2. **Nondegeneracy (§1.2, p. 124).** An analytic f:Y→R^m is nondegenerate when `<c,f>` is not identically zero on Y for every nonzero constant c∈R^m. Thus the image is not contained in a linear hyperplane through zero; this is not the stronger exclusion of every affine hyperplane. The notation “≠0” here means nonidentity as a function, not pointwise nonvanishing.

3. **Weak and extreme nondegeneracy (same page).** (ω,Ω):Y→R^m×R^p is weakly nondegenerate when ω is nondegenerate. Define

   `Z_Ω = {l∈Z^p : |l|₁≤2 and <l,Ω> is not identically zero}`,

   `Z_ωΩ = {l∈Z^p : 0<|l|₁≤2 and <k,ω>+<l,Ω> is not identically zero for every k∈Z^m}`.

   The latter is a subset of the former. “Extreme” means equality of these sets. This is weaker than joint homogeneous nondegeneracy. **For p=0 both qualifications reduce to homogeneous nondegeneracy of ω.** The maximal case after CP09's polar reduction has p=q=0 in *Rüssmann's* notation, even though CP09 started with p slow oscillators.

4. **Elliptic spectral condition (§1.3, p. 124).** With `J_p=[[0,-Id],[Id,0]]`, A J_p has eigenvalues ±iΩ_j(y), where each Ω_j is real analytic throughout Y. Theorem 1.7 additionally requires det A≠0. The eigenvalues of Q have positive real parts at every real y. These conditions disappear in the maximal case; do not demand them of CP09's prepared maximal action system.

5. **Approximation function (§1.4, p. 125).** Φ:[0,∞)→R is continuous, positive, nonincreasing, Φ(0)=Φ(1)=1 (hence Φ=1 on [0,1]); `s^λ Φ(s)→0` for **every** λ≥0; and

   `∫₁^∞ log(1/Φ(s)) ds/s² < ∞`.

   The accompanying constants are `Φ_(λ,µ)=sup_(s≥1) s^λ Φ(s)^(1/µ)<∞` for λ≥0, µ>0. The exponent is **1/µ**, not µ. This is a superpolynomial upper decay condition plus a Bruno-type integrability restriction. Example: Φ(s)=exp(1−sqrt(s)) for s≥1, extended by 1. A power `max(1,s)^(−τ)` fails the all-λ condition. Conversely a Φ-nonresonance lower bound for a superpolynomial Φ does **not** imply ordinary polynomial Diophantinity.

6. **Norms and domains (§1.1; §§6.1, 10.1, 14.1, pp. 123–124, 132, 143, 165).** `|P_bullet|_A=sup_A |P_bullet|` on an arbitrary open complex A⊂E_bullet containing T^n×K×{0}×{0}. Technical strips are `S_n(r)={x∈C^n: |Im x|₂<r}`; multi-disc domains D(s) use the specified norms in the coordinate blocks, Euclidean norms in the iteration. Fourier cutoff uses |k|₂, not |k|₁. Complex `K+t` is the union of radius-t complex balls about K; real thickening `K⊕t` stays in real space. The parameter derivative norm used in §18 is the maximum on repeated unit directions of the symmetric derivative tensor. These are sup norms, not CP09's preparation sup-Fourier norm (13), and not the track-N weighted norm. Frozen max norms and period 1 require explicit dimension factors and a 2π conversion.

7. **Simple canonical transformations (§1.6, pp. 125–126; §12, pp. 154–155).** A real analytic canonical map `(ξ,η,ζ,θ)↦(X,Y,Z,W)` preserves `Σ dx_j∧dy_j+Σ dz_j∧dz_(p+j)+Σ dw_j∧dw_(q+j)`, has X depending only on ξ, and Z,W affine in (ζ,θ). Y is then forced to have the form in Lemma 12.1. For p=q=0 it is `Y(ξ,η)=Y(ξ,0)+η (∂X/∂ξ)^(-1)` in the source row-vector convention. It is not an arbitrary near-identity map. The map is holomorphic on a complex strip for each retained parameter, even though its parameter dependence is only stated to be continuous in Theorem 1.7.

8. **Index and amount (§§18.2–18.4, pp. 185–189).** These do not occur explicitly as named hypotheses in Theorem 1.7; they quantify the proof's dependence. For nondegenerate analytic factors f_j, let `f(c,y)=Π_j <c_j,f_j(y)>`, each |c_j|₂=1, and define

   `β(f,µ,K)=min_(y∈K,c∈Π spheres) max_(0≤ν≤µ) |D_y^ν f(c,y)|`.

   Here for ν>0 the tensor norm is `max_(|a|₂=1)|D^ν f(c,y)(a,...,a)|`. Lemma 18.2 proves existence of a positive amount at a finite order by compactness and analyticity. The index µ₀ is the least **positive** integer giving β>0, with β(f,0,K):=0 by convention; the amount is β at µ₀. For several product families take the minimum of their amounts before taking the index. §18.3 constructs families f^{1,2,3} for squared tangential divisors and elliptic determinants; their combined index/amount define µ₀(χ,K),β(χ,K), χ=(ω,A). For the first family the two coefficient directions are independent: `<c,ω><ĉ,ω>`. CP09's displayed compactness data instead use `<c,ω>². Do not identify the two numerical indices/amounts without a comparison proof or a rederived scalar maximal-case estimate. A fixed enlarged order µ≥µ₀ is usable with β(f,µ,K), not automatically with an unrelated normalized amount.

   §18.1 also defines the **amount of degeneracy** α=min(1, |k+r_l|₂/|(k,1)|₂ over k∈Z^m,l∈V), or 1 when V is empty; V and the nonintegral r_l come from Lemma 2.2. It controls normal resonances. This is not β. It is unnecessary in the maximal specialization.

### Theorem 1.7 itself (pp. 126–127)

Under the preceding spectral, extreme weak-nondegeneracy and approximation-function assumptions, **for every** compact K⊂Y with meas_n K>0, **every** loss 0<ε*<meas_n K, and **every** allowed complex open A, there are ε>0 and γ>0 depending on `(ε*,ω,A_matrix,Q,K,A_domain,Φ)` such that **for every** perturbation with `|P_bullet|_A≤ε`:

- There is compact H⊂K with `meas_n H≥meas_n K−ε*`.
- There is a continuous map `𝓧:H×T^n×U→E`, U a real open neighborhood of zero in R^n×R^(2p)×R^(2q), each `𝓧(b,·)` a real analytic simple canonical transformation.
- In the new coordinates the Hamiltonian is

  `H∘𝓧 = h(b)+<ω*(b),η>+(1/2)<ζ,ζ A*(b)> + O(|η|₂²+|η|₂(|ζ|₂+|θ|₂)+|θ|₂²+|θ|₂|ζ|₂²+|ζ|₂³)`.

- For each b∈H the three bounds are

  `|<k,ω*>|≥γ Φ(|k|₂)` for k≠0;

  `|det(i<k,ω*> Id_(2p)+A*J_p)|≥γ Φ(|k|₂)` for every k;

  `|det(i<k,ω*> Id_(2p²+p)+[A*J_p])|≥γ Φ(|k|₂)` for k≠0.

  Here A* is symmetric and `[M]` is the matrix of the linear map on symmetric matrices `V↦MV+VMᵀ` (§§1.5, 9.5), of dimension 2p²+p. Empty normal conditions are omitted in the maximal case, rather than blindly substituting zero into formulas with denominators.
- Consequently η=ζ=θ=0, `ξ(t)=ξ(0)+tω*(b)` gives an invariant torus, analytically conjugate to that rotation.

The printed theorem gives **parameter measure**, not a stated lower bound for ambient volume of the union. It states **continuity**, not CP09's explicit bi-Lipschitz evaluation clause. It states **no numerical near-identity/displacement bound**. For p=q=0 the torus is Lagrangian because the zero section is Lagrangian and the chart is canonical, but embeddedness and global parameter injectivity still need the construction's near-identity estimates. The statement is stronger in allowing lower-dimensional elliptic/hyperbolic tori, and weaker than CP09's restatement in its explicit quantitative/family clauses. Those differences matter.

## What the proof supplies and imports

### Internal dependency inventory (one level below the proof's main blocks)

| Block and locator | Results actually used; status |
|---|---|
| Final proof §15.6 p. 177 | §14 initialization/threshold; Theorem 15.5 for analytic canonical limit and normal form; Theorem 16.7 for the surviving set and final nonresonance. All have arguments in Rus01. |
| Initialization §§14.1–14.10 pp. 165–171 | Cauchy bounds; Lemmas 14.2–14.5 for spectral/exponential and initial remainder estimates; Inductive Lemma 13.4; Theorem 16.7 with constants from §20.6. The displayed p. 171 formulas are for the nonzero normal dimensions; CP09 correctly warns against zero-dimensional substitution. |
| Inductive Lemma §13.4 pp. 158–164 | §13.5 uses Theorem 7.2 to construct R_ν* and obtain (13.10); §§13.6–13.12 use polynomial estimates §10, linear equation Theorem 11.4, canonical flow estimates §§8/10, matrix estimates §9, and remainder bounds. |
| Polynomial approximation §§7.2–7.5 pp. 134–136 | Trigonometric approximation Theorem 7.3 plus algebraic approximation Theorem 7.4. The former is cited externally in Rus01, the latter uses an external sharp one-variable approximation inequality. This is the exact route by which Rus05 enters. |
| Analytic limit §§15.2–15.5 pp. 172–177 | Summable map and derivative differences (15.8)–(15.11), Cauchy bounds, canonical-limit Theorem 12.3, Weierstrass convergence, compact domain inclusion and (in the printed argument) Montel. §15.3 p. 174 explicitly invokes §1.4.3. |
| Frequency selection Theorem 16.7 p. 179; proof §20.7 p. 203 | Chain Theorem 20.5 pp. 201–202 and explicit constants §20.6 p. 203, using §18.5's measure bound and §19's smooth extensions of holomorphic functions on shrinking sets. This is an actual proof, not an invocation of another KAM theorem. |
| Sublevel/measure §§17–18 pp. 180–194 | Theorem 17.1 from scalar Lemma 17.2 and slicing/covering Lemma 17.3; analytic finite type Lemma 18.2; determinant bounds §§9/17; Theorem 18.5. The lattice summation p. 193 uses Φ_(m,µ₀). |
| Extension/chains §§19–20 pp. 195–203 | Explicit smoothing kernel and derivative estimates, Theorem 19.7, Lemmas 19.8–19.9, chain extension estimates 20.3–20.4, and §18.5 at finite stages and at the limit. This constructs the finite-derivative stability needed for measure selection; it is not a free invocation of Whitney's theorem. |

### External proof leaves, distinguished from historical citations

| Locator | Cited work/result | Consequence for pinned closure / maximal route |
|---|---|---|
| Rus01 §7.3 pp. 134–135, footnote p. 135 | [21], Rüssmann 1994, “On the frequencies of quasi periodic solution of analytic nearly integrable Hamiltonian systems”, subsection 2.3; its proof uses an Akhiezer approximation theorem. | An imported proof in Rus01 alone. Rus05 Theorem 1/Remark 2 expressly targets this input. The addendum's abstract says p. 136; the pinned 2001 footnote is on p. 135. |
| Rus01 §7.4 pp. 135–136, inequality (7.10) | [18], Rüssmann 1983, “On the existence of invariant curves of twist mappings of an annulus”, Lemma 6, LNM 1007, pp. 677–718. | Still externally cited after Rus05; algebraic cutoff is used even for the action variable in the maximal case. A Taylor/Cauchy replacement is possible, with changed constants. |
| Rus01 §14.3 p. 166 | [16], Putzer 1966, Theorem 2, matrix exponential representation. | External linear algebra input for normal exponential estimates. Not needed for a freshly proved p=q=0 specialization. |
| Rus01 §17.2 p. 180 | [2], Bakhtin 1987, strengthened extremal property of Chebyshev polynomials, yielding scalar sublevel inequality (17.4). | Load-bearing for the measure theorem. Pyartli [17] is attribution/comparison here; this particular scalar proof is not supplied in Rus01. Can prove an elementary divided-difference sublevel bound instead, losing only constants at fixed order. |
| Rus01 §17.3 p. 181, (17.9) | [26], Whittaker–Watson p. 253, Gamma/Stirling inequalities. | Used for the numerical ball-volume constant; standard replaceable infrastructure, not a missing KAM theorem. |
| Rus01 §2.1 p. 128 | [19], Rüssmann 1989, Lemma 1, analytic Taylor coefficient characterization (m≠n extension asserted). | External proof for this explanatory characterization. The actual finite-type argument of §18.2 is given directly, so this need not remain a separate external leaf of the maximal proof. |
| Rus05 §3 p. 22, formulas (4)–(13) | [1] Jacobi, Gesammelte Werke I pp. 49–239; [2] Tricomi, Funzioni ellittiche; [3] Whittaker–Watson. | Explicit formulas are listed but proofs delegated. Identities, zero/pole structure and transformations of elliptic/theta functions are external analytic infrastructure. Pinning the addendum does not pin these proofs. |
| Rus05 §9 p. 28; §10 p. 28 | A Fourier-transform table for the cosh kernel (unnamed there); Euler's product identity, [1] p. 145. | Further ordinary analytic leaves. §5 proves its needed Fourier partial-sum bound; §6 uses Fourier inversion; §4 uses residues. These standard theorems also need library proofs when formalized. |

Rus01 also uses ordinary Cauchy/maximum-modulus, holomorphic ODE/fixed-point, spectral, compactness, Fubini, determinant and analytic identity results. These are not additional unstated KAM theorems. Its references to Arnold, Moser, Sevryuk, Cheng–Sun, Melnikov, Yoccoz, etc. in §§1–5 largely explain strategy, comparisons or necessity; they must not all be misreported as imported proofs of Theorem 1.7. In particular its Bruno continued-fraction Lemma 1.9 is not required once an admissible Φ is supplied as data.

### Exactly what Rus05 supplies

Rus05 Theorem 1 (pp. 21–22) constructs finite Fourier multipliers λ_k=λ_−k∈[0,1), supported in |k|₂≤T, for bounded 2π-periodic holomorphic F on a Euclidean strip. With q∈(0,1) and `ρ=n log(1/q)/(2T)<r`, it claims

`‖F−F_(n,T,q)‖_(r−ρ) ≤ [(1+(8/π)exp(−Tρ))^n−1] ‖F‖_r`.

Remark 2 sets `q=(α/(4n))²`, 0<α≤1/4, to recover Rus01 Theorem 7.3: loss `ρ=n log(4n/α)/T` and error at most `(4/5)α |F|_r`. The final elementary inequalities from Rus01 p. 135 are retained. It therefore supplies **§7.3, hence §7.5's construction of §7.2, hence §13.5 (13.10), hence the remainder contraction in §13.4**, not the sublevel estimate or CP09's approximation-function modification.

The addendum's proof chain is explicit: elliptic/theta identities §3; residue identity §4; Fourier/Lebesgue tools §§5–7; strip representation §8; one-variable approximation §9; tensor product/cube strip §10; Euclidean support/strip conversion and imaginary translation §11. It does not supply Rus01 §7.4's algebraic approximation proof, and does not revise Rus01 §1.4 or establish CP09 Lemma 8.

There are two defects to retain as explicit audit findings:

- **R05-1, §8 p. 26:** “Every holomorphic function” is too broad for the strip integral formula. Its proof needs boundedness/growth control to discard the vertical sides. For H(z)=exp(z²) the indicated improper integral is not generally convergent (already x=0); the vertical sides need not vanish. The actual application in §9 is periodic and bounded on every narrower closed strip, so that application has the required control. Add a boundedness hypothesis to a *new helper*, not to a frozen statement.
- **R05-2, §11 pp. 30–31, (46):** after replacing cutoff T by T/√n, the cube estimate has `E((T/√n)ρ_cube)` with `ρ_cube=√n log(1/q)/(2T)`. After replacing the Euclidean loss by `ρ=√n ρ_cube`, its argument is **Tρ/n**, not Tρ. Equation (46) and the last paragraph instead use E(Tρ). This loses a dimension factor. The same rescaling gives an error bound with exp(−Tρ/n), which is adequate for a repaired approximation lemma but changes Remark 2's q choice/strip constants.

The latter is testable without computing elliptic functions. Take n=4,T=4,q=exp(−10),ρ=5,r=6, and `F(x)=exp(3 i x₁−18)` on |Im x|₂<6. Then ‖F‖_r=1. The §11 construction first truncates to the cube |k|_∞≤T/√n=2, so its coefficient at k=(3,0,0,0) is zero, although that k is allowed in the final radius-4 ball. Thus its error on the radius-1 strip is exp(−15)=3.059023205018258e−7. The claimed bound is `[(1+(8/π)e^(−20))⁴−1]=2.0994738564195348e−8`, smaller than the error. This refutes the bound **for the constructed multipliers**, not the theorem's existential assertion for other multipliers. Symmetry or real-valued restrictions do not explain the discrepancy; Theorem 1 explicitly allows complex F. The factor issue was checked in rendered PDF pp. 30–31, not inferred from broken text extraction.

A conservative repair is to use the proved cube bound with exp(−Tρ/n), choose `q=(α/(4n))^(2n)`, and allow loss `n² log(4n/α)/T`. Redo §13.1's strip losses, its integral restriction on T₀ and all affected constants. This is a proposed reconstruction, **not** a certified literal replacement of Rus01 (7.5). The existential KAM threshold allows dimension constants to worsen.

A simpler formalization may skip elliptic functions entirely. Cauchy Fourier decay gives, for 0<d<r,

`|F−Σ_(|k|₂≤T) F_k exp(i<k,x>)|_(r−d) ≤ C_n (1+d^(−n)) exp(−Td/2) |F|_r`.

Indeed split exp(−d|k|₂) into two halves and sum one half over the lattice. A geometric Fourier/Taylor cutoff yields the mixed analogue. This does not give Rus01's sharp numerical estimate with its printed strip losses; absorb the extra logarithmic factors in a redesigned schedule and recompute. “Jackson/Cauchy estimates are standard” alone does not discharge (13.10) with the constants as printed.

## CP09's arithmetic specialization: finding A3

**A3 is confirmed as a real specialization obligation, not a demonstrated false KAM claim.** Rus01's actual hypothesis is stronger than CP09's. The valid normalized choice for CP09 is Φ(T)=1 on [0,1] and T^(−τ_D) afterwards, τ_D>nµ. Without this normalization even the value at zero is undefined; this small omission is harmless to large divisors but should be explicit.

Three concrete uses must be distinguished.

1. **Finite-derivative measure control.** Rus01 §18.5 pp. 189–193 uses `Φ_(m,µ₀)=sup T^m Φ(T)^(1/µ₀)` in (18.13) and the lattice sum on p. 193. For a power and τ_D>mµ₀ this constant is finite (in fact 1 with normalization). One need not retain all powers λ here. At the maximal dimension m=n, this is compatible with CP09's τ_D>nµ. But Rus01's original µ₀ for product families and CP09's squared-direction µ must be reconciled, or this scalar argument must be rederived with CP09's exact µ. Blind substitution in (18.13) is invalid at p=0.

2. **Analytic iteration and convergence.** Rus01 §13.1.4 p. 156 uses Ψ(T)=T^(−d)Φ(T), and §15.3 p. 174 invokes all-power decay in proving `Σ C_ν T_ν<∞`. For a power, it is possible to check the required convergence directly. Write t for Rus01's internal parameter called τ (not τ_D), and a=κ−2ψ for the positive exponent of C_ν in (15.10), preserving the source's barred/unbarred distinction. Then

   `T_ν=T₀ δ^(−tν/(d+τ_D))`, `C_ν=C₀ δ^(aν)`,

   so `Σ C_ν T_ν=C₀ T₀/(1−δ^(a−t/(d+τ_D)))` when `a>t/(d+τ_D)`. One can choose the internal t small enough; the finite-derivative extensions in §§19–20 impose additional conditions such as µt<τ₀ in (20.35). These are compatible with choosing a smaller t. This explicit geometric calculation explains why the power-law theorem is plausible and exposes an actual non-measure use of §1.4.3. It still leaves its full p=q=0 realization and displacement/parameter estimates to be written.

3. **Bruno integral and threshold.** For a normalized power,

   `∫_(T₀)^∞ log(1/Φ(T)) dT/T² = τ_D (log T₀+1)/T₀`.

   Thus a polynomially large T₀ meets a polynomially small strip margin; CP09's T₀=ε^(−2), ϑ=ε/16 works for sufficiently small ε, with fixed τ_D. Also Ψ(T₀)=T₀^(−d−τ_D) is polynomial in ε. In contrast a fixed superpolynomial Φ can make Φ(T₀) smaller than every power, ruining the finite preparation budget. This explains CP09's warning about Rus01 §14.10.10–11; the addendum does not address it.

CP09 Remark 5(ii)'s weaker displayed limit “for all 0≤λ<nµ” is not itself a proof of every constant or convergence bound above. For arbitrary Φ that limit does not even imply finiteness of `sup T^n Φ(T)^(1/µ)` at the endpoint (take a normalized large-T tail T^(−nµ) log T). For the **strict power** actually chosen, there is endpoint room. The defensible recommendation is to prove that strict-power specialization directly, not approve a general theorem from the displayed limit alone.

CP09 Remark 5(i) correctly states that many p=0 substitutions into p. 171 are meaningless and directs the reader through §18.5 and §13.4 instead. Its Lemma 8 fixes n, µ, β, analytic margin ϑ, frequency bound C₁, compact-set diameter d₀, loss ε*, and cutoff T₀, then defines

`C*=2^(µ+1) (µ+1)^(µ+2) (C₁+1) / ϑ^(µ+1)`,

`γ=(d₀^n C*)^(−µ/2) β^((µ+1)/2) (ε*)^(µ/2)`,

`t₀=γ T₀^(−(τ_D+n+1)) ϑ/(C₁+1)`,

`E₁=γ T₀^(−(τ_D+n+1)) ϑ`, `E₂=β t₀^µ/(T₀ C*)`,

`ε_adm=c₀(n,µ) (ϑ/C₁) min(E₁,E₂)²`.

These are the printed (35)–(39). They are **not** formulas stated in Rus01 for p=q=0, and this audit has not independently reproduced their exact constants. CP09's Theorem 3's displayed ε₀/γ argument lists omit A even though the theorem first fixes A and Lemma 8 depends on its margin ϑ; that omission must not be interpreted as uniformity over arbitrarily thin A.

For the prepared family CP09 takes ϑ=ε/16, ε*=ε^(p+1), β≥c ε^(µ+2), C₁≤M₁ and T₀=ε^(−2); it obtains exponent (47). The correct consumer claim is a **positive lower bound** for a usable admissible threshold, or an explicit usable value, `ε_adm≥c ε^B`. An upper estimate O(ε^B) is insufficient. CP09 p. 21 prints the reverse inequality; A4 remains. Choose finite preparation order ν>B once, then `C ε^ν≤c ε^B` for every sufficiently small positive ε. This gives the quantifier order, provided the constants are controlled uniformly on the selected patch.

## P-FIXED consumer map and displacement

Frozen P-FIXED fixes n≥2, G,m₀,m,a and η>0, then chooses ε₀,d,D, then for **every** 0<ε<ε₀ chooses S. FixedKolmogorovSet requires measurable S of finite positive ambient 4n-volume, S⊂circularTube η, whole embedded analytic Lagrangian 2n-tori, polynomial Diophantine rotation, fixed-Sun equations and common pair bounds. It does not require uniform constants over all masses or all analytic Hamiltonians.

| Earlier obligation | What the new sources supply | Still required |
|---|---|---|
| `p11:finite-index` | Rus01 Lemma 18.2 pp. 185–186 gives the compactness proof. | Choose scalar/square/product convention, prove conversions and finite-order stability; do not import a conclusion-shaped “prepared map is nondegenerate” premise. |
| `p11:sublevel` | Rus01 Theorem 17.1 pp. 180–183 gives covering/slicing and explicit constants. | Prove/replace scalar Lemma 17.2's Bakhtin input. |
| `p11:fast-slow-selection` | CP09 pp. 11–12; Rus01 measure machinery supports the scalar selection. | Inverse-image notation, fixed patch and finite slow resonance avoidance; pick center before coupling. |
| `p11:finite-preparation` | CP09 Lemmas 4–7 pp. 12–15, not supplied by Rus05. | Averaging, equilibrium shift, symplectic diagonalization, finite Birkhoff construction, complete canonical lifts and estimates. |
| `p11:polar-scaling` | CP09 pp. 15–16. | Componentwise polar margins, conformal factor and H/ε; constants in every inverse map. |
| `p11:normal-form-index` | CP09 Proposition 2 pp. 16–17; Rus01 finite-type/stability ideas. | A proof with derivatives on shrinking domains, not only a C⁰ O(ε) assertion. |
| `p11:analytic-weak-kam` | Rus01 §§13–16,20 give a constructed analytic KAM proof with Φ-divisors. | Repair/reprove approximation; specialize p=q=0 and power divisors; derive explicit displacement and parameter bi-Lipschitz bounds. |
| `p11:polynomial-budget` | Rus01 §14.10 p. 171 indicates threshold structure; CP09 Lemma 8 and (40)–(47) give the intended specialization. | Prove usable polynomial **lower** threshold, preserving all domain/norm dependence. |
| `p11:cartesian-closeness` | Rus01 §§13.4,15.2–15.5 supply map increments and domain containment, beyond its bare Theorem 1.7 statement. | Sum them in the maximal case, propagate through CP09 preparation and the physical chart. |
| `p11:measurable-family` | Compact surviving parameter set, analytic canonical maps; CP09 3(ii) asserts bi-Lipschitz evaluation. | Prove the latter quantitatively; compact image gives measurability, inverse Lipschitz gives positive ambient measure. Mere continuity is insufficient. |
| `p11:properly-degenerate-local` | Structure of CP09 Theorem 4 and its preparation. | Localize in every prescribed inner action/secular neighborhood and prove one threshold for all smaller ε. |

For displacement, initialize with the translation `(ξ,η)↦(ξ,b+η)` of Rus01 (14.2). Inductive Lemma 13.4.5.4 bounds each step in its **scaled** norm by C_ν and its Lipschitz constant by exp(24 C_ν T_ν). Lemma 15.3 proves summability; thus, retaining the dependence of these constants, the displacement from the translated identity is bounded by a product-of-Lipschitz factor times `Σ C_ν` in the initial scaled norm. The action component must be multiplied back by the initial action scale (and the source's scale coefficient). Alternatively, Theorem 15.5.4 gives that the limiting torus lies inside D₀; the action displacement is then <s₀. Equations (14.19) express s₀ in terms of the chosen small initial quotient and analytic margin. These are legitimate sources for a **new quantitative wrapper**, not a printed bound in Theorem 1.7.

The same holomorphic parameter neighborhoods B_ν give derivative estimates with losses t_ν^(−1). To obtain bi-Lipschitz evaluation one needs a summable *small* Lipschitz defect of `(b,ξ)↦𝓧(b,ξ,0)−(ξ,b)`, not just bounded forward derivatives. Control parameter differences across removed gaps by extensions/local estimates plus a global separation argument; do not assume a line segment lies inside a Cantor neighborhood. A defect <1 in an explicitly chosen product metric gives injectivity and inverse Lipschitz bounds. This quantitative extraction remains unpaid here.

After CP09 preparation, oscillator actions are O(ε), hence Cartesian secular amplitudes O(sqrt ε), not O(ε). The equilibrium translation is O(ε log(1/ε)^(2τ₀+1)); the finite Birkhoff maps have small displacement on the shrinking ball. Uniform fast-action and angular bounds must be propagated through their canonical lifts. Source Theorem 4's “close to” does not state the resulting uniform bound. On a repaired componentwise positive polar box, containing the final KAM torus within the prepared domain already bounds its oscillator amplitudes; no optimal displacement exponent is required.

For physical assembly choose, before ε, an inner chart whose entire image lies in a safe tube of radius ζ<η. Choose the good weakly nondegenerate patch there, fix a finite normalization order and all its norms/margins, then prove the above local gate for every smaller coupling. Chart continuity and uniform displacement imply S⊂circularTube η. With the max phase norm, planar Euclidean position errors are ≤sqrt(2)ζ; positive axis gaps then give common d,D before ε. Pair differences are exactly q_i−q_j and Sun–planet differences q_i in the fixed-center setting. The Hamiltonian-to-fixed-equations calculation, secular identification and general-n nonplanarity are separate Parts 6–10/13 work. No Rus01 theorem supplies those physical premises.

A compact positive-measure parameter set times the full angle torus has positive product measure. Its bi-Lipschitz image has positive ambient volume and is compact/measurable; symplectic transport preserves positivity. Finite volume follows from bounded chart/tube containment. Period-one parametrization uses `K(θ)=𝓧(b,2πθ,0)` and rotation w=ω*/(2π). In finite dimension compare |k|₂ and |k|₁ explicitly; retain a positive Diophantine constant and an exponent exceeding 2n−1. A Φ-only torus from the literal original statement does not meet that frozen arithmetic clause automatically.

## Recommended Part 11a statements and effort

Use a focused **maximal** theorem, not the full elliptic/hyperbolic generality of Rus01. Proposed labels are new statement work, not existing approved declarations.

| Proposed statement | Source locators | Required output |
|---|---|---|
| `p11a:rank-compact` | Rus01 §§18.2–18.3 pp. 185–186 | Finite derivative index/amount on a fixed compact patch, plus a finite-order stability lemma in the chosen convention. |
| `p11a:scalar-sublevel`, `p11a:diophantine-measure` | §§17.1–17.4 pp. 180–183, §18.5 pp. 189–193 | Proved scalar sublevel estimate, lattice count and measure loss for a power τ_D>mµ. |
| `p11a:analytic-cutoff` | §§7.2–7.5 pp. 134–136; Rus05 §§9–11 pp. 26–31 | A proved Fourier/Taylor approximation with explicit domains and constants; record whether it is a repaired Rus05 estimate or a simpler Cauchy replacement. |
| `p11a:homological-maximal` | Rus01 §11 pp. 148–153 | Scalar maximal homological equations, cutoff bounds and parameter Cauchy estimates, with period/norm conversion. |
| `p11a:canonical-step` | §§8,10,12 pp. 137–138,143–147,154–155 | Analytic symplectic step with map/derivative/domain estimates. Reuse N/K exact proved interfaces where available. |
| `p11a:iteration-maximal` | §§13–14 pp. 156–171 | One full p=q=0 step with power-divisor cutoff schedule and explicitly sufficient initial inequalities. No undefined p=0 denominators. |
| `p11a:parameter-selection` | §§19–20 pp. 195–203; Theorem 16.7 p. 179 | Finite-derivative extension/stability through the iteration, compact surviving set and specified loss. Only finite differentiability needed for the chosen µ. |
| `p11a:analytic-limit-family` | §§15.2–15.6 pp. 172–177 | Analytic embedded Lagrangian tori, rotation equation, displacement, parameter bi-Lipschitz evaluation and compact union. |
| `p11a:weak-kam-quantitative` | Theorem 1.7 p. 126; CP09 3/8 pp. 6–7,18–19 | Assemble the exact maximal/power statement with all constant dependencies; do not claim literal identity with Theorem 1.7. |
| `p11a:shrinking-domain-budget` | Rus01 §14.10 p. 171; CP09 (34)–(47) pp. 18–21 | A usable `c ε^B` threshold on the prepared family and simultaneous displacement/domain margins. |

Part 11's finite preparation, polar normalization and local properly-degenerate wrapper remain separate from this analytic core. Each statement must list source premises, quantitative typing/domain data, and only genuine standing assumptions. The tori, polynomial threshold and bi-Lipschitz family cannot be hypotheses of their own provider.

Planning estimate after shared complex/Fourier/canonical infrastructure: **35–60 blueprint pages and roughly 15–30k Lean lines for Part 11a alone**, excluding CP09 finite preparation, planetary charts and secular algebra. Full Rus01 normal generality plus the elliptic-function proof could substantially exceed this, plausibly 30–60k lines. These are unmeasured planning bands, not estimates from completed Lean prototypes. The earlier 15–30k estimate for the whole analytic gate plus preparation is optimistic if the full Rüssmann extension/chain machinery is retained. An economical maximal proof with elementary cutoff and finite-derivative parameter estimates is the recommended architecture.

Main risks are the shrinking-domain polynomial budget; parameter derivatives and inverse Lipschitz control on Cantor sets; conversion between scalar/squared/product indices; and combined original-coordinate displacement. Approximation theory is replaceable but cannot be dropped without recomputing the schedule. Reuse K for Cauchy/cohomology/analytic limits and Lipschitz measure tools; N for finite canonical flows/averaging. Neither K's full-torsion G1 nor a mere finite-type measure estimate proves this weak KAM gate.

## Suspected errata, source gaps and proposed deviations

No frozen file should be repaired in response to this report. The orchestrator owns the public ledger.

| ID / status | Exact location and short printed anchor | Reason and disposition |
|---|---|---|
| R01-1, dimensional typo | Rus01 p. 123 (1.2): “A : Y → R^{p×p}” | z has 2p components; J_p and all subsequent determinants require A∈R^{2p×2p}. Report explicitly; maximal specialization avoids it. |
| R01-2, summary inconsistency | Rus01 p. 171 item 5: “C_bullet = |ω_bullet|₂ + |Ω_bullet|_∞ + |Q_bullet|₂” (with the indicated compact-neighborhood subscripts) | The established definition (14.7), p. 165, uses the **matrix norm of A**, not the eigenvalue norm of Ω. For a general symmetric Hamiltonian matrix no uniform bound of |A| by its symplectic frequencies follows without condition-number control. Do not replace (14.7) by this summary silently. Irrelevant to normal-free proof. |
| R05-1, missing growth assumption | Rus05 Lemma 8 p. 26: “Every holomorphic function” | exp(z²) violates the improper integral claim; proof discards vertical sides using a finite sup bound. Periodic narrower-strip application is repairable. |
| R05-2, dimension-rescaling error | Rus05 p. 30 (46), p. 31: “E(Tρ)” and “exp(−Tρ)” | Cube cutoff T/√n and strip comparison change the argument to Tρ/n. The explicit single-mode test above fails for the constructed multipliers. Retain as a proof/constant defect pending independent review, not as refutation of existential approximation or KAM. |
| R-CITE-1, page locator | CP09 p. 6 fn. 8 “Theorem 1.7 … p. 127”; Rus05 abstract “footnote on p. 136” | In the pinned Rus01 the theorem is p. 126 and the approximation footnote p. 135. Bibliographic corrections only. |
| A1, updated | Earlier study: Rus01 source unpinned | Acquisition resolved. Proof dependencies, the approximation repair, and maximal/power specialization now replace the acquisition blocker. |
| A2, still open extraction | CP09 p. 8 “which are close to”; Rus01 p. 126 continuous mapping | Quantitative displacement and inverse-Lipschitz family are not in the original theorem statement. Proof offers estimates; the consumer wrapper must be proved. |
| A3, confirmed specialization gap | CP09 p. 19 “Nevertheless we claim” | Strict power violates Rus01 §1.4.3. Finite measure and convergence checks above support a reconstruction, but no literal theorem instantiation or certified Lemma 8 constants. |
| A4, retained inequality direction | CP09 p. 21 after (47): “ε₀ ≤ c̄ ε^{ν₀}” | Does not justify admitting an order-ν remainder for ν>ν₀; need an explicit admissible value/lower bound. |
| A5, retained polar domain | CP09 p. 15 (27), radius “|ρ₀|/2” | Does not control every component's distance from the square-root singularity. Pick comparable positive components and componentwise margins. |
| A6, retained canonical/formula issues | CP09 pp. 14–15: “(θ,r)=(x̃,ỹ)”, Q* starts with “<Ω̂(r),I>”, “2p×2p”; p. 15 “ρ₀j+ρ₀j” | Action-dependent normal transforms require the fast-angle lift; quadratic terms must not be counted twice; the torsion on p oscillator actions is p×p; the last summand must involve the varying action. Reconstruct rather than copy. |
| A7, retained set notation | CP09 p. 11 “K ∩ D_{γ₀,τ₀}” and “Theorem 2” | Needed set is the inverse image under ω; proof uses the preceding Lemma 2. |
| R-CP-1, omitted dependency | CP09 p. 6 displayed argument lists for ε₀,γ omit A | Lemma 8's ϑ depends on A; no uniformity over arbitrary analytic-domain thickness is justified. Treat as a dependency omission, not a contradiction once A is fixed. |
| R-CP-2, derivative-control gap | CP09 p. 17, “Ψ_ε=Ψ₀+O(ε). Therefore … β_ε≥ε^µ β̄/2” | A C⁰ bound alone does not preserve a derivative amount of size ε^µ on shrinking domains. Establish the estimate in the original I variable with derivative control before rescaling, using actual preparation bounds. Not a counterexample to Proposition 2. |

The earlier Fejoz/planetary source findings remain outside the new Rus01/Rus05 closure claim; this audit neither erases nor revalidates their separate repairs. New proposed deviations are an elementary Fourier/Taylor cutoff or dimension-repaired Rus05 cutoff, a maximal-case power-divisor KAM theorem, finite-order parameter regularity instead of the full extension theory when sufficient, and explicit local displacement/family wrappers. None changes the frozen physical equations, tori regularity, positive ambient measure or quantifier order. No deviation was implemented in Lean.

## Handoff and checks

Files written: **blueprint-P/reviews/p11a-russmann-check.md only**. Approach: direct pinned-source dependency and consumer-contract audit, including a single-mode challenge to the addendum's rescaling and explicit power-law convergence checks. Source SHA-256 values and the reviewed frozen contract are recorded above. The source/route gate remains open with the exact outstanding estimates identified; the requested review artifact is complete.

Validation: fresh `pdftotext -layout` extraction succeeded for all three PDFs; Rus01 p. 126 and Rus05 pp. 30–31 were visually checked. The numerical single-mode check returned error `3.059023205018258e-7` versus claimed upper bound `2.0994738564195348e-8`. Report whitespace and completeness checks passed (see final validation receipt below). No state-changing git command, Lean edit or build was used. Per the brief's report-only exception, targeted builds, `#print axioms` and source lint are inapplicable here; no new theorem/axiom receipt is claimed. Frozen P-FIXED remains manifest-bound `by sorry`.

Final validation receipt: `PASS: report whitespace, terminal newline, fence balance, all 11 p11 obligations, six input hashes`. `git diff --check -- blueprint-P/reviews/p11a-russmann-check.md` exited 0 with no output. The source, plan, Part 0 and frozen hashes still matched at closeout. Concurrent workers' final untracked blueprint-N/reviews/p7-review-1.md and blueprint-P/parts/p6-newtonian-models.tex were left untouched. Only this report was written by the auditor.
