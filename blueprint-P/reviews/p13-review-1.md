# Part 13 review 1: fixed-Sun assembly

Reviewed `blueprint-P/parts/p13-fixed-assembly.tex`: 202 lines, 32,574 bytes; SHA256 `7c5c617d6baaea21ac9093c0263c746d61edd468c8b97a79ae65e84046a87670`.

Reviewer: independent, refute-first. Marker: review-p13. I did not write or edit the reviewed part.

## Verdict: ACCEPT WITH FIXES

No blocking or major assembly error found. Three minor corrections are listed below. The frozen theorem really assumes `hn : 2 ≤ n`: the split into `n=2` and `n≥3` covers its entire dimension range. There is no missing `n=1` case.

The two-planet assembly can use the frozen P-G, the current Part 11b theorem and the indicated Part 12 arguments without Part 11 or Part 11a. The general-dimensional assembly correctly consumes the Part 11 wrapper and Part 6 physical assembly. Its weak-KAM dependency remains a forward dependency through that wrapper; this review does not certify the missing gate or any Lean provider.

## Materials checked

- Governing review brief in full; AGENTS.md, PLAN/DECISIONS, track-P PLAN and preamble, and the conventions ruling in `.drafts/briefs/bp-part-writer.md`, item 3. D20 and the current frozen Lean take precedence over historical draft/audit language in `docs/tracks/P/statement.md`, `sources.md`, `notes.md` and `AUDIT-statements-v0.1.md`.
- Authoritative `KAM/Frozen/Planetary/Theorems/FixedSunPlanetaryKAM.lean:46` and `ProperlyDegenerateKAM.lean:53`. Their imported definitions were checked where used: Phase, FixedKolmogorovSet, FixedHamiltonian, IsFixedSolution, IsPhysicalTorus, IsCylinderTorus, IsCylinderKolmogorovSet, Cylinder/Cell, HasSecularBirkhoffForm, secularAverage, HasFastDiffeomorphism, fastShift, circularPoint/Tube, bodyVector, planeLength, NoCollision and PairBounds, together with the Hamiltonian-field/symplectic/Diophantine conventions.
- Part 1 chart-field/chart-orbit and Liouville contracts; Part 6 splitting, collision-free regularity, reconstruction-fixed, tube geometry, measure finiteness and fixkol-assembly; Part 7 product chart; Part 8 identification/same-jets; Part 9 spectral and chart interfaces; Part 10 patch interfaces; Part 11 wrapper/KAM-input boundary; Part 11b lift-map, torsion patch and complete birkhoff-form statement/proof; Part 12 elementary lemmas, data, chart, hypotheses, torus transport and measure proof. Part 12 was read in full.
- Pinned PDFs read directly: Fej04r printed pp. 49–50 and 56–58; CP09 pp. 8–9; CP11 pp. 33–34 and 50–51. These support the cited averaging, weak-route context, planar torsion cross-check and P-G source statement. The existing Part 11b quartic computation was checked as a prerequisite contract, not independently regenerated in this assembly review.
- Source hashes match the registry: CP09 `dd29561ef38116ba27a743b9b580f797a602bfda1edee8510ef1371c61655859`; CP11 `9b525c5896cfd006b813e79ce56df0b33fcdc55595c972e5090f4a839de4c30f`; Fej04r `d5a05c79f754da467d8148ee572a22098e1e1ee16a8c6f3052356657a02ac9e3`.

## Findings

| ID | Location / label | Severity | Finding | Evidence | Exact proposed fix |
|---|---|---|---|---|---|
| P13-01 | L56; L80–82, `bpP:p13:d-pg`; L124 | minor | Make the constant-family lift explicit. The phase function `P_fix(w)` is defined first, but the P-G data then writes `P=P_fix` and action-only `P_0,Omega,beta`, while a later line writes `P_fix(eps,·)`. These are inconsistent arities unless the implicit dummy coupling argument is inserted. The intended lift is valid and requires no extra hypothesis. | Frozen P-G requires `P : ℝ → Phase 4 → ℝ`, `P0 : ℝ → (Fin 2 → ℝ) → ℝ`, and corresponding coupling-indexed Omega/beta. Part 12's perturbation definition supplies these arguments explicitly. | Keep `P_fix : Phase 4 → ℝ` from L56. In D6 write `P(mu,w):=P_fix(w)`; for `I∈V`, write `P_0(mu,I):=C_0(a(I))`, `Omega(mu,I):=2 sigma(a(I))`, `beta(mu,I):=hat beta(a(I))`, with the stated zero extensions. Define `H_eps:=degenerateHamiltonian H_0 P eps`; in L124 use `P(eps,·)`, not `P_fix(eps,·)`. Interpret the HasBirkhoff statements using this explicitly named constant family. |
| P13-02 | L13, index dictionary | minor | The explanation that `n` occurs in types “only through n·2” is false. Dependent substitution is nevertheless legitimate. | The authoritative theorem also binds `m,a : Fin n → ℝ`, and `hsep` quantifies over `Fin n`. All these dependent data are transported by substitution. | Replace the clause beginning “which is legitimate because” by: “substituting the equality n=2 simultaneously transports m,a and their hypotheses as well as the phase and frequency types; thereafter Fin (2*2), Fin (2+2) and Fin 4 are definitionally equal.” |
| P13-03 | L59, source note for `bpP:p13:fixed-hamiltonian-form` | minor | Fej04r Lemma 64 is misnamed “action–reaction”. It is the zero-average cross-kinetic identity. The proof uses the correct result through Part 8, so this does not invalidate the identification. | Printed pp. 49–50 state that each complementary term has zero mean along Kepler tori, with the display `∫ Y_j·Y_k dλ=0`; the proof uses the longitude derivative and Fubini. Force action–reaction is a different Part 6 lemma. | Replace “Fej04r Lemma 64, pp. 49–50 (action–reaction)” by “Fej04r Lemma 64, pp. 49–50 (zero average of the cross kinetic terms)”. Keep the action-only diagonal contribution attributed to the explicit Part 8 computation. |

These fixes change no frozen hypothesis, quantifier, domain or conclusion.

## Frozen binder and conclusion audit

The authoritative fixed-Sun theorem has the following data, in this order.

| Frozen binder / clause | Consumption in Part 13 | Result |
|---|---|---|
| `{n : ℕ}`, `hn : 2 ≤ n` | L157 splits `n=2` or `3≤n`. The first branch specializes all dependent data; the second uses a wrapper valid already for `n≥2`. | Exact scope; `n=0,1` excluded. |
| `G,m0 : ℝ`; `m,a : Fin n → ℝ` | Fixed throughout the chart, Kepler Hamiltonian and physical model; chosen before the constants. The 0-based/1-based planet dictionary preserves the increasing order. | No parameter is silently changed to a coupling-dependent mass. |
| `hG`, `hm0` | Positivity of kappa, actions, circular velocities, Kepler frequencies and all central-mass divisions. | Available at every use. |
| `hm : ∀ i,0<m i` | Positive actions and division by planet mass in the physical velocity, with the source spectral/normal-form data. | Available. |
| `ha : ∀ i,0<a i` | Positive circular radicands and action coordinates, positive axis gap constants. | Available. |
| `hsep : ∀ i j,i<j → a i<a j` | The ordered-axis patch and pairwise-distinct axes for the tube lemma/physical assembly. Reversing indices uses strict-order symmetry, not a new separation hypothesis. | No factor-four or additional axis separation inserted. |
| `eta : ℝ`, `heta : 0<eta` | zeta*=min(eta,gamma_a/6)>0; shrinking the patch/cylinder and coupling window gives the prescribed physical tube. | Fixed before eps0,d,D. |
| `∃ eps0 d D, 0<eps0 ∧ 0<d ∧ d<D` | d=gamma_a/2, D=2 a_max+gamma_a; n=2 eps0 is the new P-G window, general eps0 is the wrapper's. | Correct existential order; d,D depend only on axes. |
| `∀ eps,0<eps → eps<eps0 → ∃ S` | P-G or the wrapper is applied only after all constants are fixed. | S may depend on eps; constants do not. |
| `0<volume S ∧ volume S<⊤` | Positive measure in a cylinder cell, injective symplectic image and bounded physical tube; or the wrapper's identical measure conclusion. | Ambient Lebesgue measure in dimension 4n, not measure of an individual torus. |
| `FixedKolmogorovSet ... S` | Borel set, tube inclusion and whole physical tori first; Part 6 fixkol-assembly supplies the remaining physical clauses. | All frozen conjuncts retained. |

The physical-set predicate requires every point to have a torus whose **whole range** lies in S. L126 supplies exactly this from the cylinder set; it does not merely produce unrelated local trajectories. The physical clauses are all-time, for every phase: collision exclusion, the genuine fixed-center equations with velocity p_i/m_i, and PairBounds for `Fin.cons 0 q`. These follow from whole-range containment in the uniform safe tube and the frozen flow clause. No barycentric reconstruction or moving-Sun mass array is substituted for this fixed-Sun configuration.

### What about n=1?

There is no n=1 binder to prove: `hn : 2 ≤ n` rules it out. The warning about vanishing secular interaction at n=1 explains the method's restriction, but the restriction itself comes from the authoritative Lean statement. The proof must not delete hn or extend the headline to n=1. Substitution at n=2 is valid despite the incorrect explanatory sentence identified in P13-02.

## What I recomputed: refutation attempts that failed

### 1. Fixed versus moving perturbations and the common Birkhoff map

With the common zero-coupling chart,

`H_mov - H_fix|eps=mu = mu |sum_i p_i|_2²/(2m0)`.

Averaging gives zero cross terms because each Kepler momentum has zero longitude mean. For the diagonal terms,

`<|p_i|_2²> = m_i² kappa/a_i`,

so

`delta(Lambda) = kappa/(2m0) sum_i m_i²/a_i = G/2 sum_i m_i²/a_i = sum_i kappa² m_i⁴/(2m0 Lambda_i²)`.

This is action-only. It changes P0 but no positive-order oscillator jet: Q_h, Omega=2 sigma, the quartic jet and the planar torsion agree. This does **not** assert that all fast frequencies of the perturbed systems agree: their secular fast frequencies can differ by the coupling times `d_Lambda delta`. The R-nondegeneracy input refers to the leading map built from h and Q_h.

The current Part 11b birkhoff-form theorem explicitly quantifies over both `hat f_fix` and `hat f_mov`, with the same map T and an image inside both analyticity domains. Thus Part 13 does not need to infer this domain statement from equal jets alone. Equal jets by themselves would not suffice to identify full analytic perturbations or their norms.

The full symplectic map includes an angle correction:

`T(lambda,Lambda,z)=(lambda+h_T(Lambda,z),Lambda,varrho(Lambda)Y(Lambda,z))`.

It is not merely a map of the slow coordinates. Nevertheless h_T is independent of lambda, so translation invariance of the **integrable** longitude average gives

`<hat f_mov∘T> - <hat f_fix∘T> = delta(Lambda)`.

This verifies the auxiliary transfer check at L65 as well as the primary direct use of Part 11b. The Kepler term is unchanged because T preserves Lambda.

### 2. All P-G hypotheses for P_fix

Once the constant-family notation in P13-01 is explicit, the application meets every frozen input.

- The positive-action boxes V=int K and W=O are open; V is nonempty, connected and bounded; closure V=K⊂W. The coordinatewise action map is strictly increasing on positive axes.
- The two-sided max-norm collar is exact in dimension two: for side lengths L1,L2 and `0<t<min(L1,L2)/2`, the outer-minus-inner box area is `4t(L1+L2)`. Thus the stated A_c,d_c satisfy the frozen ambient collar bound.
- `r0=r*/2>0`, `mu0^G=1>0`, and `B=min_Ka |det hat beta|>0` are fixed before the coupling.
- **hP:** the closure of the oscillator-disc cylinder has `|z|_2≤sqrt(2) r0=r*/sqrt(2)<r*`, with actions in K⊂O'. It lies in the open T. On ℝ×T the constant coupling-family `hat f_fix∘T` is jointly real analytic, so its zero extension outside T is invisible on a neighborhood of every point of `[0,1]×closure(cylinder V r0)`. There is no boundary-extension discontinuity entering hP.
- **hperiod:** the chart and T commute with the physical fast shift 2pi k. P_fix is therefore periodic for the frozen `fastShift`, which leaves slow coordinates unchanged.
- **hfreq:** the Kepler map is the same for both systems: `nu_i=kappa² m_i³/Lambda_i³`, with nonzero derivative `-3 kappa² m_i³/Lambda_i⁴` and C1 inverse `(kappa² m_i³/v_i)^(1/3)` on its positive open image. All divisions and real powers here have positive arguments.
- **hBNF:** Part 11b(c) applies to P_fix. Each oscillator disc satisfies `p_j²+q_j²<r0²`, hence `|z|_2<sqrt(2)r0<r*`. Continuity on the compact fast torus supplies IntegrableOn before using the frozen Bochner secularAverage. For the little-o clause, `|z|_2≤2||(p,q)||_∞` gives remainder `≤64 C*||(p,q)||_∞⁶`; choosing a positive auxiliary delta≤r0 with `delta²≤epsilon/(64 C*)` gives the exact frozen fourth-order remainder bound. This includes the zero oscillator point. The radius restriction is monotone and the family is valid also at mu=0.
- **htorsion/hsymm:** beta is the common symmetric torsion matrix. Its positive determinant lower bound is uniform on V because a(V)⊂K_a and K_a is compact inside the nonvanishing patch. Zero extension of P0,Omega,beta off V is harmless: these hypotheses quantify over I∈V, not its boundary.

No arbitrary perturbation, Birkhoff certificate or assumed secular nondegeneracy becomes a premise of P-FIXED.

### 3. P-G constants and the physical tube

The source does not provide numerical formulas for the P-G output constants, and neither does the frozen gate. “Recompute” here correctly means **apply the gate anew to P_fix**; reusing moving-Sun witnesses without proof would be unjustified. D7 chooses new `r_G,C_G,c_G`, with their full dependence on the fixed-Sun datum. The shared geometric/Birkhoff data can be shared because Part 11b asserts the common construction for both models.

For

`r=(1/2)min(r_G,sqrt(delta/2))`,

I get `0<r<r_G<r0`, `r<1`, and the stronger bound `2r²≤delta/4`. The writer's weaker bound `2r²≤delta/2<delta` is valid. Therefore

`eps0=min(1,r⁶/(log(1/r))^c_G)>0`

and every `0<eps<eps0` satisfies all three coupling/radius guards of P-G. No limit of r as eps→0 is needed; r is chosen first.

The chart flow bound gives `|Y|_2²≤2|z|_2²<4r²`. Orthogonality of varrho then gives `Gamma_i(Tw)<2r²≤delta`, and the action box gives `|Lambda-Lambda*|_∞<delta`. The forward-tube lemma applies. Its uniform-continuity construction also checks: `delta_zeta=min(delta0,delta1/2,delta1²/4)` ensures both the action displacement and `sqrt(2 delta_zeta)` are strictly smaller than delta1.

For the physical distances, `zeta*≤gamma_a/6` and the planar conversion factor sqrt(2) give

`2sqrt(2) zeta*≤(sqrt(2)/3)gamma_a<gamma_a/2`.

Consequently d=gamma_a/2 is a valid common lower bound for Sun–planet and planet–planet distances, and D=2 a_max+gamma_a is a common upper bound. The upper/lower bounds and `0<d<D` depend only on axes, not on eps, eta, masses or a barycenter estimate.

### 4. Part 12 transport and measure really can be reused

The fixed-Sun proposition is a new proposition with its own fixed-Sun hypotheses and a proof replay, rather than a literal instantiation of a theorem hardwired to H_mov. This distinction is satisfied at L113–115.

For torus transport, Part 12's steps require only the chart/domain/lattice properties and the pulled-back Hamiltonian identity on the **open** T. Part 13 supplies the identity for H_fix. Part 1 chart-field transports genuine differentiability using the locally invertible symplectic chart. The derivative, Lagrangian and flow clauses follow with c=1. Cylinder parameter phases have period one while the physical fast-angle image shifts by 2pi; the quotient chart removes that shift. Frequencies w and time are unchanged by this physical transport. Gamma>0 and tau>4 imply the physical condition tau>3.

For measure, inspecting every step of Part 12's proof confirms the writer's claim:

1. The frozen IsCylKol predicate supplies a Borel set contained in the cylinder and whole torus ranges.
2. IsCylTorus lattice winding makes S invariant under the fast lattice, independently of which Hamiltonian occurs in its flow clause.
3. Every point can be shifted into the half-open fast cell, and chart periodicity identifies its physical image.
4. Chart injectivity modulo that same lattice gives actual injectivity on the cell. Thus Borel image measurability and Liouville apply on `S∩cell`; they are not applied to the noninjective chart on the entire periodic cylinder.
5. The image has the positive cell measure and lies in the bounded physical tube, hence has finite measure.

No moving-Sun kinetic term, barycenter, equation of motion, perturbation estimate or P-G measure constant is used in this measure argument. Replacing H_mu by the fixed-Sun H_eps changes none of its premises or proof steps. There is no need to assert that the two original cylinder sets coincide.

### 5. Physical clauses, totality and general n

The frozen lengths use Real.sqrt of planeSq, always a nonnegative radicand. Positivity of d supplies the stronger nonzero guards before reciprocal-length or cubic-force formulas are interpreted. Positive planet masses guard p_i/m_i. The circular velocity has `Gm0/a_i>0`. The fixed Hamiltonian is smooth on the collision-free open image, and its differentiability on each torus is also an explicit transported predicate clause. Real logarithms/powers in the coupling threshold have `0<r<1`, and nonzero lattice indices have l1 length at least one.

Differentiating H_fix gives exactly

`Q_i'=p_i/m_i`,

`V_i'=-(Gm0/|Q_i|_2³)Q_i + eps sum_{j≠i} G m_j (Q_j-Q_i)/|Q_j-Q_i|_2³`.

The sign and mass cancellation agree with frozen IsFixedSolution. The Sun in PairBounds is the literal fixed origin at index zero, not the moving barycentric Sun.

For general n, the current wrapper explicitly has all the mass/axis/tube hypotheses of the frozen headline, a positive threshold chosen before eps, Borel positive finite measure, tube inclusion and the whole-range physical-torus conclusion for **fixedHamiltonian**. These are precisely S1–S2 of fixkol-assembly; no hidden closeness certificate or secular premise is added to the headline. Its Diophantine constants may depend on the torus, as the frozen predicate allows.

The open gate remains inside the wrapper, as disclosed. At this snapshot the printed planned labels `weak-kam-quantitative`, `budget`, `physical-interface` remain forward references; the labels `limit-torus`, `displacement`, `evaluation-bilipschitz`, `lipschitz-family` are already present in current Part 11a material. The presence of a label is not a proof audit or a sealed provider. None of these inputs is used by the n=2 route: that route uses P-G and the planar finite Birkhoff construction, with the Part 12 geometric/cylinder arguments. General R-nondegeneracy is not an additional P-G requirement in that route.

## Build and validation

From `blueprint-P/`:

`latexmk -pdf -outdir=.build/review blueprint.tex`

Final verification: **exit 0**, PDF **216 pages**, **0 lines beginning with `!`** in `.build/review/blueprint.log`. The verified build transcript is `.build/review/latexmk-p13-verified.txt`. Part 13 begins on PDF page 189 and its notes are on page 195 in this build.

The initial run encountered malformed pre-existing `.aux`/`.out` data. Forced regenerated passes were needed before the final ordinary command succeeded. No TeX source was changed to obtain that result.

Seven unresolved-reference warnings remain outside Part 13, in Part 14a: `bpN:p0:actionnbhd`, `bpN:p0:partial-pert`, `bpN:p0:partial-domain` (two occurrences), `bpN:p3:gen-uniform`, `bpN:p0:sol`, `bpN:p0:partial-core`. These are not described as clean forward references of Part 13. All 193 ordinary reference occurrences in Part 13 resolve to existing track-P labels. The intentional Part 11a forward citations use the printed Pref convention and are recorded above.

No Lean build or implementation/provider proof was inspected; no axiom/sealing claim is made. No state-changing git command was run. Only this Markdown report and the requested build artifacts were written. The reviewed source hash remains the one stated above.

## Suspected source errata and deviations

No new pinned-source mathematical erratum found. P13-03 concerns the blueprint's description of a source lemma, not a defect in that lemma. Existing Fej04r continuation/normalization issues and CP11 quartic-coefficient issues are inherited through the separately named Part 8–11b results, rather than silently copied into Part 13.

The fixed-center theorem is a new deduction for the exact frozen direct-interaction Hamiltonian. CP09 does not state this physical fixed-Sun headline; CP11 supplies the properly degenerate source gate, and Fej04r supplies the kinetic averaging/planetary spectral context. Part 13 marks this route change. The accepted verdict is for the assembly against its cited contracts, with the stated general-n gate dependency; it is not independent closure of all prerequisites.
