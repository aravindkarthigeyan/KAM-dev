# Track P statement audit, v0.1

Independent refute-first audit, 27 October 2026. This report audits the intended Lean
statements, their definitions, the pinned source contracts and the proposed route.
It is not a proof receipt or an approval to freeze. Only this report and files under
`.drafts/P/audit-scratch/` were written by this audit. No git state-changing command
was run; no frozen declaration, manifest, generated file or draft was edited.

## Verdict

**REJECT the packet as drafted. P-G is false.** Three independent problems affect
its quantitative, whole-domain conclusion:

1. Its secular region is a Cartesian box. Even the integrable oscillator cannot
   have a union of whole invariant tori inside that box with relative measure
   tending to one.
2. Its fast-frequency diffeomorphism may degenerate at the boundary. A polynomial
   pendulum example has an excluded fraction larger than the asserted square-root
   radius loss, even on an interval with regular boundary.
3. Its arbitrary open, connected action domain has no boundary-volume control.
   An exact symplectic shear on a connected comb domain gives another counterexample,
   even with identity fast-frequency map.

These are mathematical counterexamples, detailed below. The scratch module proves
the elementary box refutation, the failure of the source's linear resonance-loss
bound for a flat frequency map, and several supporting identities without `sorry`.
**It does not prove the negation of the entire drafted P-G type in Lean.** The
ODE/invariant-torus and measure steps of the full counterexamples are mathematical
arguments in this report, not claimed machine certificates.

| Theorem | Verdict | Reason |
|---|---|---|
| `properlyDegenerateKAM`, P-G, draft line 146 | **REJECT** | False by P1–P3 below. The proposed analytic specializations also await the owner ruling requested by the draft. |
| `planarTwoPlanetKAM`, P-PLANAR, line 318 | **APPROVABLE WITH CHANGES** | Mathematical target is consistent with the analytic weak-nondegeneracy route. Remove the unsourced numerical factor-four premise, or obtain the explicit owner scope ruling. Repair the source-proof issues before signing off the proof route. |
| `fixedSunPlanetaryKAM`, P-FIXED, line 331 | **APPROVABLE WITH CHANGES** | Same separation issue. This is a plausible, correctly specified new deduction for the exact fixed-center Hamiltonian; the secular identification remains unpaid. It is not a theorem quoted from CP09 or Féjoz. |

The definition-by-definition verdicts are in §5. P-G's defects do not refute the
two physical headlines: their qualitative, local positive-measure route can use
CP09 Theorem 4 and does not need P-G's whole-domain density estimate.

## 1. Pins and method

Repository HEAD when checked: `f9ec180af1f003c81fc168f55ca7f06466ea48b9`.
The checkout already had an unrelated modification to
`blueprint/parts/p2-aposteriori.tex`. Shared-checkout changes are not owned by this audit.

| Audited object | SHA-256 |
|---|---|
| `.drafts/P/Statements.lean` | `8db635bc75f9cf106c32377caa48535c557e2f43e6aa260e009191d0fade80ae` |
| `docs/tracks/P/statement.md` | `e737c911a91d81bbc4a9b46d37707d5c73ce28a2e8f73a5c1e3f9ff392e2d9e8` |
| `docs/tracks/P/sources.md` | `4386258b490044115821f1013b3e732c25475143340414a29699bcb33113d044` |
| `docs/tracks/P/notes.md` | `2e735c12746f041f448dd69710dc50679ee0fd4a8af626ed3ca79e2e26932840` |
| `docs/DECISIONS.md` | `3ef99ed937a78ff4c30ee7d6b02382f8acd4b202b1fd4d586e719457edf1b1ef` |
| `docs/PLAN.md` | `3efa6ab0e8da45cf578fcd9c294f330d6db4372fed34c07729e9ba6f6e1fb71f` |
| CP10, `sources/incoming-P/cp10.pdf` | `68fbf161e0aa62fc966f33b3b3c49e2ab0fbcca3eb7fdb0950d62eadcdf18338` |
| CP11, `sources/pdf/cp11_planetary_invent.pdf` | `9b525c5896cfd006b813e79ce56df0b33fcdc55595c972e5090f4a839de4c30f` |
| CP09, `sources/incoming-P/cp09.pdf` | `dd29561ef38116ba27a743b9b580f797a602bfda1edee8510ef1371c61655859` |
| Fej04r, `sources/pdf/fejoz04_herman_arnold_revised.pdf` | `d5a05c79f754da467d8148ee572a22098e1e1ee16a8c6f3052356657a02ac9e3` |
| Fej07e, `sources/pdf/fejoz04_erratum.pdf` | `e8559fa0b031e7151e947a1d37106fbbb4f57deb7add3f91c623f101686bc5a4` |

All five PDF hashes match the packet. Fresh `pdftotext -layout` extractions were made
from these bytes into scratch; the packet's transcripts were not treated as authority.
The cited theorem pages and the relevant proof pages were read. Rendered pages
CP10 556 and 561, Fej04r 55 and 56, and CP11 34 were inspected to check the critical
formulas and ambiguous typography. The track-K model audit, current AGENTS.md,
PLAN, DECISIONS, TRACKS and the three imported frozen definitions were read.

The [publisher record for CP10](https://www.aimsciences.org/article/doi/10.3934/dcdss.2010.3.545)
independently matches its title, authors, year and pages. A web retrieval of the
CP09 arXiv abstract failed; no source assertion relies on that retrieval. The
pinned local PDF, not a replacement online version, is the authority throughout.
Arnold's original PDF was unavailable and was not independently verified.

## 2. Findings and exact proposed changes

Every proposed source strengthening below needs to be identified as a corrected or
specialized contract. None has been applied, and none silently repairs the source.

| ID | Declaration | Severity | Finding and source evidence | Exact proposed Lean change |
|---|---|---|---|---|
| P1 | `cylinder`, `cylinderCell`, `properlyDegenerateKAM` | **blocking** | The draft uses independent sup bounds on p and q. CP10 §2, p. 551, does use sup norms for these separate vectors, but its actual measure construction on p. 561 defines the region by `p_i² + q_i² < ε²`. That is a product of discs, not a box. The box interpretation makes the theorem false (§3.1). CP11 pp. 50–51's word “ball” does not resolve this distinction. | Replace the body of `cylinder` by `{z | fast z.2 ∈ V ∧ ∀ j : Fin b, (slow z.2 j)^2 + (slow z.1 j)^2 < r^2}`. Retain positive-radius guards. `cylinderCell` then uses that region automatically. Reconcile the intended real domain and analytic extension in `hP`/`hBNF`; do not merely change a norm in the prose. |
| P2 | `HasFastDiffeomorphism` as consumed by P-G | **blocking** | Diffeomorphism only on V gives no uniform inverse control up to its boundary. CP10 p. 556 assumes a diffeomorphism on `V_{ρ₀}`; (38) then uses a linear resonance-volume bound, and p. 562 (58) explicitly uses the inverse Jacobian. The draft's extra analyticity on closure V does not imply that inverse bound. Counterexample §3.2. | Add `(W : Set (Fin a → ℝ)) (hW : IsOpen W) (hVW : closure V ⊆ W)` and replace `(hfreq : HasFastDiffeomorphism H0 V)` by `(hfreq : HasFastDiffeomorphism H0 W)`, before the existential constants. The now-redundant `hH0` may be removed. An explicitly bounded inverse Hessian on a neighborhood is another possible corrected contract, but is not silently supplied by current A1. |
| P3 | `properlyDegenerateKAM` action-domain hypotheses | **blocking** | Arbitrary open connected bounded V does not support the required boundary loss. CP10 p. 561, immediately below (56), asserts `meas(Re(V_r) \ V) ≤ C γ̄₂ meas V`; no suitable regularity of V appears in the printed statement. The literal draft is false even with a uniformly invertible fast frequency map (§3.3). | Add the geometric guard displayed below, or initially restrict V to a nonempty open rectangular box with positive side lengths. If arbitrary V must be retained, change to a qualitative local positive-measure statement instead of the current whole-V rate. |
| P4 | P-G `hH0`, `hP`; P-PLANAR/P-FIXED `hsep` | major, fidelity/approval | Closed-neighborhood analyticity and joint analytic μ dependence are proposed extra restrictions; CP10 footnote 3, p. 546, only asks for sufficiently smooth parameter dependence with uniform norms. No P1–P7 approval is in current DECISIONS. For the physical headlines, Fej04r Prop. 77, pp. 56–57, applies on the ordered distinct-axis domain; CP11 p. 34 gives asymptotics, not a threshold 4. | For P-PLANAR replace `4 * a 0 < a 1` by `a 0 < a 1`; for P-FIXED replace `4 * a i < a j` by `a i < a j`. Alternatively obtain the expressly requested scope ruling before freezing the narrower targets. Obtain a ruling for the corrected P-G analytic/domain specialization; do not mark its new premises SOURCE. |
| P5 | Physical proof route | major, source-proof repair | Fej04r p. 55 has two wrong repeated mass factors and a missing factor 1/2 in a diagonal term; (36)–(37), p. 51, determine the corrected entries. See §8. These are intermediate-source defects, not hypotheses that can be passed to the headlines. | No headline binder change. Prove the actual matrix entries from (36)–(37) in a distinct provider lemma; do not freeze the erroneous displayed formulas. |
| P6 | Physical proof route | major, source-proof repair | Fej04r Lemma 76, p. 56, claims global meromorphic continuation with poles. The defining integral has a logarithmic singularity at α=1. The same page also calls its displayed `A^C` simply connected, which it is not. See §8. | No headline binder change. Use a local holomorphic coefficient lemma on `‖α‖ < 1`, and an explicitly chosen simply connected logarithmic cover/chart for the axis domain and eigenvalue continuation. No globally single-valued meromorphic lemma. |
| P7 | P-PLANAR/P-FIXED | note, dependency | CP09 Thm. 4, p. 8, supplies analytic Lagrangian tori under R-nondegeneracy. Fej07e p. 4 only attributes the analytic upgrade to Chierchia–Pusateri. Neither a smooth theorem nor P-G alone supplies the selected analytic weak route. | No new hypothesis. Blueprint the analytic weak-nondegeneracy theorem and the fixed-center secular identification as genuine proof obligations with distinct declarations. |
| P8 | `fastShift`, cylinder torus interface | note, convention | CP10 footnote 1, p. 546, uses physical period 2π. The draft correctly leaves those canonical coordinates unchanged and divides source frequencies by 2π for period-one torus parameters. Current D9 fixes period one for track K; the local P exception is pending P2 in the packet. | No mathematical change needed. Record the convention ruling before freezing. Do not replace `2 * Real.pi` by 1 without rescaling the canonical variables, Hamiltonian and averaging formula together. |
| P9 | Draft header, source metadata | minor | D15/D16 name both Scott Armstrong and Zohar Komargodski; the ignored draft names only Scott. Fej04r's first-page header says 1–62, but the actual supplied revised PDF has 65 numbered pages. | Update the draft copyright/authors on its next revision. Correct the source packet's “numbered 1–62” description to 65 pages, explaining the retained header. Neither requires a theorem-type change. |

An explicit possible replacement for P3, with all its constants fixed before r and μ,
is the following ordinary geometric premise (not a KAM conclusion):

```lean
(hboundary : ∃ A d : ℝ, 0 < A ∧ 0 < d ∧
  ∀ t : ℝ, 0 < t → t < d →
    volume {I : Fin a → ℝ | ∃ J ∈ frontier V, dist I J < t} ≤
      ENNReal.ofReal (A * t))
```

This controls both inner and outer boundary layers. Restricting V to boxes is a
simpler initial specialization. P1, P2 and P3 are independent: fixing only the
secular domain leaves both action-domain counterexamples; fixing the inverse
frequency bound leaves the comb counterexample. The corrected theorem still
needs a fresh statement audit before being labelled approvable.

## 3. Counterexamples to P-G

In this section, scalar coordinates are identified with `Fin 1 → ℝ` and ordered
two-coordinate vectors with `Fin 2 → ℝ`. Write J=(p²+q²)/2 and
F(J)=J+J²/2. The averaged quartic data are Ω=1, β=(1), so the torsion lower bound
B=1 and symmetry hold exactly. All Hamiltonians below are analytic on the entire
real carrier, jointly in μ, and periodic with the required physical period.
Take r₀=μ₀=1. The little-o remainder is exactly zero.

### 3.1 The box cannot be filled by invariant tori

Set a=b=1, V=(1,2), H₀(I)=I²/2 and P(μ,z)=F(J). All drafted premises hold;
the fast-frequency map and its inverse are the identity. The slow equations are

    qdot = μ(1+J)p,     pdot = −μ(1+J)q.

J is conserved. Every nonzero slow orbit is a full circle of positive angular
speed. A whole orbit staying inside |p|<r, |q|<r must therefore have
p²+q²<r². In particular no point of the corner rectangle

    3r/4 < p < r,     3r/4 < q < r

can be on a witnessing torus contained in the draft cylinder. Its area is r²/16,
which is exactly 1/64 of the square's area 4r². Since `IsCylinderKolmogorovSet`
requires the entire torus range to lie in S and every real-time orbit to solve
the actual smooth field, uniqueness of the explicit rotation solution gives

    |S ∩ cylinderCell V r| ≤ (63/64)|cylinderCell V r|.

Given any proposed positive rStar,C,c, choose r>0 below rStar and 1 with
C√r<1/64. Choose μ to be half the minimum of μ₀ and
r⁶/(log(1/r))^c; both are positive. The asserted strict lower measure bound is
larger than (63/64) of the cell, a contradiction. This works for every possible
choice of theorem constants.

The scratch proofs `box_rotation_escape`, `not_box_rotation_invariant`,
`corner_fraction` and `corner_outside_disc` verify the elementary obstruction.
`cylinder_literal` checks the exact draft domain by reflexivity. These checks
do not replace the mathematical invariant-set/volume argument above.

### 3.2 A fast diffeomorphism with a flat boundary

Now take a=b=1, V=(0,1), H₀(I)=I¹⁶/16, and

    P(μ,z)=cos φ + F(J).

The gradient I↦I¹⁵ is a C¹ diffeomorphism from (0,1) to (0,1), with inverse
w↦w^(1/15), smooth at each positive w. It therefore satisfies the actual draft
predicate. Analyticity of H₀ on closure V does not prevent its Hessian from
vanishing at I=0. The secular average of cos φ is zero, so P₀=0 and all the
same Birkhoff and torsion data apply.

The fast Hamiltonian E=I¹⁶/16+μ cos φ is conserved independently of J. Any
torus with the drafted winding and Diophantine linear dynamics has constant E:
its invariant continuous functions are constant along the dense linear orbit.
The fast-angle winding forces the torus to contain a point with φ=0 modulo 2π.
At that point I>0, hence E>μ. Thus no such torus contains any point with E≤μ.

For small μ, the region

    0 < I < μ^(1/16),     π/2 < φ < 3π/2

has E≤μ/16<μ and occupies fraction μ^(1/16)/2 of the full fast cell. The
exclusion holds for every slow point, so it also holds with a product of discs
in place of the erroneous secular box.

Choose μ=r⁷. For any fixed c>0, r(log(1/r))^c→0; therefore this μ satisfies
the drafted smallness condition for all sufficiently small r. But

    (μ^(1/16)/2)/√r = (1/2)r^(−1/16) → ∞.

No constant C can give the claimed √r loss.

This also pinpoints a literal source-proof failure: in one dimension, for
frequency I¹⁵ and V=(0,1), the fast resonance exclusion in CP10 (38), p. 556,
has measure γ^(1/15), not O(γ). Its printed preliminary passage to a
diffeomorphism on a fixed neighborhood of V is not without loss for the
whole-domain quantitative statement. Scratch theorem `no_linear_frequency_loss`
proves the equivalent polynomial obstruction: there is no C>0 with
x≤C x¹⁵ for every 0<x<1. The derivative checks verify the displayed powers.

### 3.3 A connected comb defeats uniform boundary loss

This example keeps the Hessian equal to the identity and works after the P1
disc correction. Set a=2, b=1. Inside (2,3), place mutually disjoint intervals
J(k,j), k≥1, 1≤j≤2^(15k), of length

    ell_k = 2^(−16k−4),

with gaps of that same length, placing the finite batches consecutively.
This is possible: total interval length is Σ 2^(−k−4)=1/16 and gaps can
occupy another 1/16. Keep their closure strictly inside (2,3). Define

    V = ((2,3) × (0,1/4)) ∪ ⋃_{k,j} (J(k,j) × (0,1)).

It is open, bounded, nonempty and connected: the bottom strip meets every
finger. No boundary regularity is asserted by the draft.

Let H₀(I)=(I₁²+I₂²)/2 and

    P(μ,z)=I₁ cos φ₁ + (μ/2)cos² φ₁ + F(J).

The full Hamiltonian is exactly

    H=(I₁+μ cos φ₁)²/2 + I₂²/2 + μF(J).

The angle average is μ/4+F(J), so choose P₀=μ/4, Ω=β=1. All analytic and
uniformity hypotheses hold, and `HasFastDiffeomorphism H₀ V` has identity
inverse. The same inverse extends to all of the ambient action space.

A₁=I₁+μ cos φ₁ and I₂ are conserved, while φ₁dot=A₁. For 0<μ<1 and a
trajectory in V, A₁>1; the first angle therefore traverses every phase.
Its I₁ coordinate sweeps an interval of width 2μ. If I₂>1/2 it cannot reach
the connecting bottom strip, so a complete orbit remaining in V must fit
inside one finger of width at least 2μ. Every narrower finger's upper half
is excluded from any S in the conclusion.

Set μ_K=2^(−16K) and r_K=μ_K^(1/7)=2^(−16K/7). Every finger in batches
k≥K is too narrow. Their excluded action area is at least

    (1/2) Σ_{k≥K} 2^(15k) ell_k = 2^(−K−4).

Since |V|≤1, this is also a lower bound for the excluded relative fraction.
It applies at all fast phases and all slow points. The ratio of this fraction
to √r_K is 2^(K/7−4), which diverges. Meanwhile μ_K=r_K⁷ obeys the smallness
condition for every fixed c once K is large, and r_K<rStar eventually.
This contradicts the conclusion independently of P1 and P2.

Scratch theorem `shear_hamiltonian_identity` verifies the exact completed square.
The comb construction and its measure/ODE argument are not formalized in scratch.

## 4. Binder classification and quantifier order

SOURCE means a literal source premise or its equivalent coordinate formulation.
STANDING means a mathematical domain/typing convention or a justified corollary
parameter. EXCESS means a stricter restriction lacking a current owner ruling.
Proposed rulings P1–P7 in the packet are not owner rulings. In particular D14
authorizes the planetary track, not every restriction in the draft.

### P-G: all 26 outer binders

| Binder(s), all explicitly listed | Classification | Evidence or issue |
|---|---|---|
| `{a}`, `{b}` | TYPING | Numbers of fast and slow degrees of freedom. |
| `ha`, `hb` | SOURCE | Positive block dimensions in the properly degenerate setting, CP10 pp. 546–547. |
| `V` | SOURCE | CP11 Thm. 11.1's action domain. |
| `hV`, `hVc`, `hVb` | SOURCE, insufficient for claimed rate | Open, connected, bounded in CP11 p. 50. Mathlib `IsConnected` includes nonemptiness. P3 applies. |
| `r0`, `hr0` | SOURCE | Initial secular radius and its positivity. |
| `mu0`, `hmu0` | STANDING | Explicit compact positive parameter interval for CP10 footnote 3's uniform family. |
| `B`, `hB` | SOURCE | The positive lower determinant constant in A3. |
| `H0`, `P` | SOURCE | Literal family H₀+μP. P is fixed before all output constants. |
| `P0`, `Omega`, `beta` | SOURCE | Coefficients of the literal averaged expansion A2″. Their types allow μ dependence, as footnote 3 does. |
| `hH0` | EXCESS as a claimed literal source premise; pending specialization | Analyticity near closure V is stronger than printed analyticity on V and does not fix P2. It becomes redundant under the proposed neighborhood-diffeomorphism correction. |
| `hP` | EXCESS in its stronger part; pending specialization | Real analyticity in phase variables and uniform parameter control are source requirements. Joint analyticity in μ and analyticity near the entire closed domain are stronger. P4 applies. |
| `hperiod` | SOURCE | A real-valued function on the physical torus, period 2π. |
| `hfreq` | SOURCE as printed A1 | Explicit C¹ inverse is a valid real-diffeomorphism encoding on open V; it does not control the boundary. |
| `hBNF` | SOURCE plus redundant integrability guard | Exact quartic averaged jet. The integral guard follows from continuity on the compact angle cube in this application. |
| `htorsion` | SOURCE | Uniform nonzero determinant A3, including μ through the standing parameter convention. |
| `hsymm` | SOURCE, intrinsic coefficient identification | The actual second Birkhoff invariants are a symmetric Hessian. This avoids exploiting an antisymmetric part invisible to the quartic polynomial. |

The output binders `rStar`, `C`, `c` and their positivity/radius inequalities are
conclusions. They occur **after every function and uniform-data parameter**.
They may depend on a,b,V,r₀,μ₀,B,H₀,P and the jet data, but not on r or μ.
There is no hidden uniformity in a later Hamiltonian.

The later universal binders are `r`, `mu` (SOURCE small parameters) and
`0 < r`, `r < rStar`, `0 < mu`, `mu < mu0`,
`mu < r ^ 6 / (Real.log (1/r)) ^ c` (SOURCE smallness, with the explicit
STANDING parameter cap). `S` is an existential conclusion. The additional
`rStar < 1` is a harmless choice of output constant. The lower and upper strict
measure inequalities match CP10 (12)/CP11 (11.2) only after the actual domain
and missing uniform-data issues are resolved.

### P-PLANAR: all 11 outer binders

| Binder(s) | Classification | Evidence or issue |
|---|---|---|
| `G`, `hG` | STANDING physical scaling | Source sets G=1; any fixed positive G is restored by scaling, before all constants. |
| `m0`, `m`, `hm0`, `hm` | SOURCE | Positive central and planet mass coefficients, Fej04r §6.1, pp. 45–47. |
| `a`, `ha` | SOURCE | Positive semimajor axes fixed before the small-mass threshold. |
| `hsep` | **EXCESS** pending owner scope ruling | The particular factor 4 is neither in Prop. 77 nor certified by CP11's asymptotic determinant. Distinct ordered axes suffice for the qualitative local route. |
| `eta`, `heta` | STANDING corollary data | Any prescribed positive neighborhood of the fixed circular torus; the good patch and mass threshold may depend on it. |

`mu0`, `d`, `D` are existential conclusions, positive with d<D, chosen before
the universal `mu`. The latter and `0<mu`, `mu<mu0` are SOURCE small-mass
parameters. The measurable set `S` and `0<volume S<⊤` are conclusions.
No bound is claimed uniformly over η, masses or axes, and no quantitative
threshold 4 is derived from the chosen constants.

### P-FIXED: all 13 outer binders

| Binder(s) | Classification | Evidence or issue |
|---|---|---|
| `{n}` | TYPING | Number of planets. |
| `hn` | SOURCE for the reused secular result | Prop. 77 is for n≥2. |
| `G`, `hG` | STANDING physical scaling | Fixed positive gravitational constant. |
| `m0`, `m`, `hm0`, `hm` | SOURCE physical data for the new deduction | Positive masses, same zero-coupling Kepler problem. |
| `a`, `ha` | SOURCE | Positive axes. |
| `hsep` | **EXCESS** pending owner scope ruling | Replace the factor-four ordering by strict ordering, or explicitly approve the restricted target. |
| `eta`, `heta` | STANDING corollary data | Prescribed positive physical tube, fixed before threshold. |

`eps0`, `d`, `D` are conclusions chosen before the universal `eps`; its
`0<eps`, `eps<eps0` premises are the new deduction's small-coupling regime.
`S`, its positive finite measure and `FixedKolmogorovSet` are conclusions.
There is no arbitrary perturbation function, normal-form certificate, secular
nondegeneracy, torus existence or source theorem passed as a premise.

## 5. All 33 definitions: body and carrier audit

Definitions are literal formulas/predicates. Their exposed bodies were checked
against the cited sources and the physical laws; all 33, including documentation,
were copied byte-for-byte into the scratch module for the checks. No definition
uses a hidden `Classical.choose`, arbitrary witness or author-written fallback.

| Declaration (draft line) | Verdict | Body, carrier and source check |
|---|---|---|
| `Phase` (40) | APPROVABLE | `(Fin d → ℝ) × (Fin d → ℝ)`, position first, momentum second. |
| `fast` (43) | APPROVABLE | First finite block via `Fin.castAdd`. |
| `slow` (47) | APPROVABLE | Second finite block via `Fin.natAdd`. |
| `assemble` (51) | APPROVABLE | `(phi,q; I,p)` order agrees with the frozen Hamiltonian field. |
| `cylinder` (55) | **REJECT as the source measure domain** | Box/disc mismatch P1; literal box is well-defined but cannot be the density-one region. |
| `cylinderCell` (60) | APPROVABLE WITH CHANGES | Correct half-open physical fast-angle fundamental cell; inherits P1 from `cylinder`. |
| `secularAverage` (64) | APPROVABLE | `(2π)^(-a)` times integral over `[0,2π]^a`; integer power, normalized Lebesgue measure. CP10 (3). |
| `oscillatorAction` (71) | APPROVABLE | Exactly `(p_j²+q_j²)/2`. |
| `HasSecularBirkhoffForm` (76) | APPROVABLE | Integral guard plus little-o of order four at each μ,I; including zero fixes P₀ there. Pointwise remainder control is made uniform locally by joint analyticity and the uniquely determined symmetric jet. Its rectangular integration guard is a harmless stronger domain guard even if the conclusion domain is corrected to discs. |
| `fastFrequency` (94) | APPROVABLE | Coordinate components of the genuine real derivative on the analytic locus. |
| `HasFastDiffeomorphism` (98) | APPROVABLE as a local predicate | Analytic H₀, open image, supplied C¹ inverse and both inverse identities. It is insufficient as the whole-domain uniform premise in P-G (P2). |
| `degenerateHamiltonian` (107) | APPROVABLE | Actual H₀+μP, not a normal-form proxy. |
| `fastShift` (112) | APPROVABLE, pending convention ruling | Physical 2π lattice only in fast position coordinates, zero slow shift/momentum. |
| `IsCylinderTorus` (117) | APPROVABLE | Analytic lift, correct fast winding and slow periodicity, quotient injectivity, immersion, isotropy, genuine all-time Hamilton equations and on-range H differentiability. Generic U must be supplied by the caller; P-G's wrong U is P1. |
| `IsCylinderKolmogorovSet` (134) | APPROVABLE WITH CHANGES | Measurable union of whole tori, positive Diophantine constants, genuine fast/slow frequency bounds. Inherits the wrong region from `cylinder`. |
| `bodyVector` (175) | APPROVABLE | Finite product equivalence extracts planet and Cartesian coordinate without overlap. |
| `planeSq` (179) | APPROVABLE | Sum of two real squares, not the Pi norm squared. |
| `planeLength` (182) | APPROVABLE | Nonnegative Euclidean square root; used for physical distances. |
| `planeDot` (185) | APPROVABLE | Physical Euclidean scalar product. |
| `NoCollision` (188) | APPROVABLE | Positive Sun–planet and distinct planet–planet distances. |
| `movingHamiltonian` (195) | APPROVABLE | Fej04r (28): correct diagonal mass correction, cross kinetic term, direct potential and pair counting; arbitrary G restored in both potentials. |
| `fixedHamiltonian` (205) | APPROVABLE as the new model | Exact fixed-center Newtonian law, no indirect terms, mutual potential multiplied by eps. |
| `circularPoint` (213) | APPROVABLE | Prograde circular Kepler state, radius a, momentum magnitude m√(Gm₀/a), period-one phase, zero-coupling reference. |
| `circularTube` (224) | APPROVABLE | Open Pi-norm tube of the full compact circular reference torus; η>0 in the headlines. No unbounded angle lift enters Cartesian positions. |
| `IsPhysicalTorus` (230) | APPROVABLE | Periodic analytic Cartesian map, injectivity modulo integers, immersion, isotropy, Diophantine flow and actual ODE for every real time. Compact quotient ensures an embedding. |
| `actualMasses` (245) | APPROVABLE | `(m₀, μm₁,…,μm_n)`. All entries positive in P-PLANAR. |
| `barycentricPositions` (250) | APPROVABLE | Zero-barycenter reconstruction, positive total mass denominator. Planet differences and heliocentric differences agree. |
| `barycentricVelocities` (256) | APPROVABLE | Planet velocities p_i/m_i; Sun velocity −μΣp_i/m₀. Correct scaled actual momenta and zero total momentum. |
| `IsNewtonSolution` (263) | APPROVABLE | Genuine pairwise Newton accelerations with masses of the attracting bodies, inverse-cube distances and correct signs; all t, collisions excluded. |
| `IsFixedSolution` (272) | APPROVABLE | Central acceleration −Gm₀Q_i/|Q_i|³ plus eps times mutual acceleration; all t and positive distances. The Sun is prescribed, not incorrectly asserted to satisfy the moving-Sun equation. |
| `PairBounds` (283) | APPROVABLE | Every distinct physical pair has distances between d and D. Positivity is supplied in the headline. |
| `MovingKolmogorovSet` (288) | APPROVABLE | Whole torus range in S and in the physical tube; genuine reconstructed complete Newton solutions, collision exclusion and pair bounds. |
| `FixedKolmogorovSet` (301) | APPROVABLE | Same, with exact fixed-center law and the origin included in pair bounds. |

The frozen `KAM.hamiltonianVectorField` has `(∂momentum H, −∂position H)`.
`KAM.symplecticForm` has the sign Σdp∧dq. The zero pullback condition is
independent of the conventional overall sign. No frozen declaration appears
defective, and no frozen theorem or provider is imported. The cylinder and
physical torus predicates correctly differ from the frozen primary-torus
predicate, whose affine physical-angle winding is unsuitable in Cartesian space.

## 6. Junk values, boundary cases and non-vacuity

| Potential junk or vacuity | Audit result |
|---|---|
| `fderiv H0` | Analyticity on the actual open locus makes it genuine. The issue in P2 is a genuinely small Hessian, not an off-locus junk derivative. |
| `fderiv K`, Hamiltonian field | K is analytic on all parameter space, and H is explicitly differentiable on its range. Injectivity of the derivative excludes constant fake tori. |
| Singular matrix inverse | No matrix inverse is used. `HasFastDiffeomorphism` supplies an actual inverse function with identities. `B>0` and determinant bound exclude singular β. |
| Bochner integral | Integrability on the compact angle cube is explicit for every p,q used in the jet. Joint analyticity and periodicity also imply it. A zero junk integral cannot manufacture a jet. |
| Nonsymmetric β | `hsymm` prevents a nonzero antisymmetric part from faking the determinant of an unchanged quartic polynomial. |
| `Real.sqrt`, division in physical laws | `planeSq` is always nonnegative. G,masses,axes and μ/eps are positive in the headlines. Every inverse distance in asserted dynamics is guarded by collision exclusion; total mass is positive. |
| Log/rpow in P-G | `0<r<rStar<1` gives log(1/r)>0. The exponent c is positive; no zero/negative-base escape. |
| Diophantine rpow | For nonzero integer k, Σ|k_i|≥1. γ>0 is explicit, so zero frequency cannot satisfy it. Enlarging an existing exponent to τ>a+b is valid. |
| Empty V | `IsConnected V` includes nonemptiness, verified in Mathlib. Along with openness it gives positive measure. |
| Empty S / null tori set | Explicit positive volume in all three theorems excludes S=∅ and a single null torus. Whole-range containment prevents cutting off escaping pieces of tori. |
| Infinite lift measure | P-G measures only a fast-angle cell. Bounded V and finite r make it finite. The physical tubes are bounded and measurable; volume finiteness there is consistent. |
| μ=0 or eps=0 | Both excluded by the later positive-parameter premises. No all-Diophantine maximal planetary-torus claim is made at zero coupling. |
| n=0, n=1 | P-G requires positive fast and slow block sizes. P-PLANAR has two planets; P-FIXED requires n≥2. |
| All-time physical content | `HasDerivAt` equations hold for every real t, with the actual Hamiltonian and reconstructed Newton field. These are complete solutions, not solutions of an averaged secular system. |

Natural input witnesses:

* P-G: any bounded open box V, H₀(I)=ΣI_i²/2, and
  P=ΣJ_j+(1/2)ΣJ_j² have Ω=(1,…,1), β=identity, B=1, P₀=0 and zero
  remainder. The explicit hypotheses are nonempty. This very natural example
  refutes the drafted secular-box conclusion; non-vacuity is not truth.
* The flat-boundary and comb examples satisfy all hypotheses too; they do not
  exploit nonanalytic data or unrelated families after the constants are chosen.
* P-PLANAR: G=m₀=m₁=m₂=1, axes a=(1,5), any η>0 satisfy every premise.
* P-FIXED: G=m₀=m_i=1 and a_i=5^i for n≥2 satisfy every premise.

For the physical conclusions, choose a smaller tube inside the requested one
so all Sun–planet and planet–planet separations are bounded below. Distinct
circular ring radii give this positive margin. Compactness gives an upper bound
and a common d,D independent of sufficiently small coupling. At positive masses,
zero barycenter plus the pair upper bound also bounds each absolute barycentric
position; the physical statements assert relative nonescape directly.

## 7. Physical truth check and downstream route

The selected analytic route is mathematically coherent, subject to explicit repair
of the source lemmas in §8 and to proving the coordinate calculations. It does not
use any of the false quantitative P-G clauses.

1. Use μ=0 Kepler/Poincaré coordinates with fixed positive masses, on a compact
   noncolliding patch of disjoint circular rings. This gives an analytic canonical
   chart extending through zero eccentricity. Preserve the sqrt(2) normalization
   in Fej07e p. 3 / revised (31). Reverse planet ordering to match Fej04r's
   a₁>⋯>a_n; the draft orders it oppositely, a harmless explicit permutation.
2. CP09 Theorem 4, pp. 7–8, applies to h(I)+εf with elliptic quadratic average
   and an R-nondegenerate combined frequency map. Fej04r Prop. 73 and 77,
   pp. 54–57, supply the negative definite horizontal quadratic form and
   nonplanarity on a good open dense full-measure axis set. Every prescribed
   tube contains a compact good patch; its center need not itself be good.
3. In the same μ=0 canonical chart, the two exact physical Hamiltonians differ by

       Hmov − Hfix(with eps=mu) = μ/(2m₀) |Σ_i p_i|₂².

   Thus both are h+μf with f independent of μ in these fixed coordinates.
   There is no need to assume an unprinted parameter-dependent version of CP09.
   Off-diagonal products average to zero by Fej04r Lemma 64. For a Kepler ellipse,

       average |p_i|₂² = m_i² Gm₀/a_i,

   since average 1/|q_i|=1/a_i and the Kepler energy is −Gm₀m_i/(2a_i).
   The diagonal kinetic correction therefore has action-only average and no
   eccentricity-dependent quadratic secular part. The horizontal secular matrix
   is unchanged. This calculation still needs a formal provider; the scratch
   kinetic-square identity alone is not that provider.
4. Fej04r writes the quadratic term as σ_j(ξ_j²+η_j²), whereas CP09 uses
   Ω_j(u_j²+v_j²)/2. Track the factor Ω_j=2σ_j (and any canonical sign choice).
   Nonplanarity is preserved by these fixed invertible diagonal rescalings and
   by the action/semimajor-axis diffeomorphism. Do not equate the coefficients
   literally without this normalization.
5. Apply CP09 on that fixed patch. Its analytic Lagrangian tori have positive
   ambient measure and are close to the circular product as coupling decreases.
   A canonical chart preserves volume; restriction to a compact parameter set
   yields a measurable positive-measure union. Transporting analytic embeddings
   supplies the exact `IsPhysicalTorus` clauses.
6. Differentiate the explicit moving-Sun reconstruction. The reduced velocity is

       qdot_i = p_i/m_i + (μ/m₀)Σ_j p_j.

   Differentiating the barycenter formula gives xdot₀=−μΣp_i/m₀ and
   xdot_i=p_i/m_i, exactly the draft velocities. Forces in the moving law give
   the actual masses (m₀,μm); in the fixed law they give the explicit eps
   mutual coupling. The scratch algebra checks this velocity cancellation for
   two planets; the all-n force and chart proofs remain obligations.
7. The tori give actual solutions for all t, and the smaller physical tube gives
   uniform d,D. Local uniqueness of the smooth collision-free Newton field
   identifies these with the trajectories through the selected initial data.

The first unpaid obligations are the canonical chart and exact secular matrix
identification, followed by the analytic weak-nondegeneracy KAM provider. A
published theorem citation or a smooth invariant torus is not an analytic provider.
P-FIXED remains a new deduction; its headline does not assume the missing work.

For P-SPATIAL, there is no Lean declaration to audit. CP11 pp. 51–53 confirms the
leaf dimensions and explicitly allows resonant or Liouvillean reconstructed
rotations (Remark 11.2(ii)). The packet correctly keeps leafwise and ambient
measure separate. P-G's domain/uniformity repairs would have to propagate to any
future literal abstract gate used there; this report approves no spatial theorem.

## 8. Suspected source defects and deviations for the orchestrator

No ledger file was edited. The following records distinguish verified printed
text and mathematical objections from a complete audit of the source proofs.

### E-P-CP10-DOMAIN: ambiguous ball versus product of discs

CP10 p. 547 (5) says a 2n₂-ball; p. 551 fixes separate sup norms on p and q.
But p. 561 explicitly writes `P_ε := V × T^{n₁} × {p_i²+q_i²<ε²}` in the
measure construction. The box reading adopted by the draft is false by §3.1.
Record the discrepancy and use the literal product-of-discs region in that
proof. This does not claim that the authors intended a box or that every natural
rotation-invariant version of the theorem is false. CP11's “ball” wording
also needs a precise convention before formalization.

### E-P-CP10-INV: unjustified uniform inverse at the boundary

CP10 p. 556 says “Without loss of generality” before assuming that the frequency
map is a diffeomorphism on `V_{ρ₀}`. Its (38) asserts a linear fast-resonance
measure loss; (58), p. 562, exposes an inverse Jacobian constant. A1 on V alone
does not justify that passage. The I¹⁶/16 example gives resonance loss
γ^(1/15) and the full quantitative counterexample in §3.2. The source statement
needs a neighborhood/inverse-control qualification if it is to retain that
whole-V rate. Merely shrinking to a compact subdomain changes the conclusion.

### E-P-CP10-BOUNDARY: unassumed boundary-volume estimate

CP10 p. 561, below (56), asserts
`meas(Re(V_r) \ V) ≤ C γ̄₂ meas V` when r≲γ̄₂. Such a linear collar-volume
bound is not a consequence of open bounded connected V. The comb example
§3.3 additionally shows the drafted whole-V theorem can fail, not just that
one proof estimate is unavailable. Record an explicit boundary hypothesis or
a weaker conclusion as a deviation; do not call it a consequence of A1–A3.

### E-P-Fej04r-1: matrix display, extended correction

Verified on rendered p. 55, proof of Prop. 73. The second sum in q_jj and the
j<k expression in q_jk print `m_k m_k`. Both should be `m_j m_k`, as forced
by (36)–(37), p. 51, and symmetry. **In addition**, that second diagonal sum
has denominator `a_j²`; (37) requires `2 a_j²`. The exact corrected entries are

    q_jj = −Σ_{k<j} m_j m_k a_j/(2a_k²) b^(1)_{3/2}(a_j/a_k)
           −Σ_{j<k} m_j m_k a_k/(2a_j²) b^(1)_{3/2}(a_k/a_j),
    q_jk = m_j m_k a_k/(2a_j²) b^(2)_{3/2}(a_k/a_j),    j<k,

with the transpose formula for j>k. The missing 1/2 was not listed in the
packet's candidate erratum. These corrections follow by multiplying Q_h by
the two diagonal sqrt(Λ) factors; they do not alter the target physical law.

### E-P-Fej04r-2: Lemma 76 is too strong

Verified printed p. 56: “fonctions méromorphes sur la sphère de Riemann” with
the asserted singular poles 0,±1,∞. From Definition 66, p. 50,
b^(0)_{1/2}(α) is the mean of
`((1−α)²+2α(1−cos θ))^(−1/2)`. As α tends to 1 from below, its local
integral has logarithmic, not pole, divergence. It is regular at α=0.
The claim of a single-valued meromorphic function on the sphere is false.
Holomorphy on |α|<1, or continuation on appropriate covers, is the usable
replacement. The differential equation by itself does not imply meromorphy.

### E-P-Fej04r-3: the displayed complex axis domain is not simply connected

The paragraph after Lemma 76 calls

    A^C = {a∈(C\{0})^n : |a_k/a_j|<1 and Re(a_k/a_j)>0 for j<k}

“simplement connexe”. Fix positive strictly decreasing axes and multiply every
axis by exp(it), 0≤t≤2π. All ratios stay fixed, so the loop lies in A^C;
its first-coordinate projection winds once around zero in C*. It cannot be
contracted. This is a direct counterexample to the printed topology claim.

The fractional powers in Λ and Q_h also require branches: under common
scaling Q_h scales as a^(−3/2), so global single-valued holomorphy is not free.
Work on a specified logarithmic cover or an appropriate simply connected
sector containing the positive real axes, and recheck the continuation argument
there. The source itself later uses a universal cover for eigenvalue branches
on p. 57; do not infer that its earlier A^C was simply connected.

### Author corrections and historical limits

Fej07e pp. 1–4 was read directly. Its corrections include the inverse's Whitney
dependence, the linear-inverse estimate constants, the original mass indices
in (28), and the sqrt(2) normalization in (31). Its planar positive-measure
2n-torus addendum is on p. 3; the distinction between smooth and analytic
tori is on p. 4. Use the revised statements and corrected conventions. No
additional defect in the drafted Newtonian Hamiltonian was found.

CP11 p. 34 footnote 53 reports an Arnold p. 138 exponent correction
`a₂⁴` to `a₂⁷` and a factor-two convention for second Birkhoff invariants.
The footnote was visually checked; Arnold's original was not. Retain the
packet's “reported, original unverified” status.

The proposed P-G repairs, CP09 analytic route, exact fixed-center deduction,
physical reconstruction, period convention and factor-four scope choice are
deviations or specializations requiring accurate ledger labels. This audit has
introduced no deviation into library code or a frozen statement.

## 9. Checks, axioms and limits

The ignored draft was elaborated directly at default budgets, as required by the
audit brief. There is no new library module in this read-only audit, so this and
the direct scratch elaboration are the applicable targeted Lean checks; no
`lake build` of unrelated library modules or clean/rebuild was run.

```text
$ nice -n 5 lake env lean .drafts/P/Statements.lean
.drafts/P/Statements.lean:146:8: warning: declaration uses `sorry`
.drafts/P/Statements.lean:318:8: warning: declaration uses `sorry`
.drafts/P/Statements.lean:331:8: warning: declaration uses `sorry`
'KAM.Planetary.properlyDegenerateKAM' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.planarTwoPlanetKAM' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.fixedSunPlanetaryKAM' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
exit 0

$ scripts/lint_sources.sh
check_lean_modules: PASS (40 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (25 frozen declarations)
exit 0
```

The three draft theorems therefore remain unproved, as intended. Their successful
elaboration says nothing about the truth of P-G. Repository lint excludes
`.drafts/`; its PASS does not certify the scratch module or the draft statements.
All scratch Lean declarations have ordinary proofs, with no placeholder added.

A final lint after concurrent library additions also passed:

```text
$ scripts/lint_sources.sh
check_lean_modules: PASS (43 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (25 frozen declarations)
exit 0
```

The final scratch run used the same default budgets:

```text
$ nice -n 5 lake env lean .drafts/P/audit-scratch/CounterexampleChecks.lean
'KAM.Planetary.Audit.cylinder_literal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.Audit.not_box_rotation_invariant' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.Audit.corner_fraction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.Audit.corner_outside_disc' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.Audit.flat_fast_derivative' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.Audit.flat_frequency_boundary' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.Audit.no_linear_frequency_loss' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.Audit.shear_hamiltonian_identity' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.Audit.kinetic_correction_two' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.Audit.barycentric_velocity_identity' depends on axioms: [propext, Classical.choice, Quot.sound]
exit 0
```

There were no warnings or errors in that final run. Earlier scratch iterations
needed explicit derivative imports and two small tactic corrections; these were
resolved without changing any draft definition or raising any resource budget.

Scratch module: `.drafts/P/audit-scratch/CounterexampleChecks.lean`, 404 lines,
SHA-256 `f7e8f861b70df1effa0aeb78f774169d4b4cbf1a9c2dd5e3b5569af792e26aa8`.
The final static check reported:

```text
Draft unchanged; all 33 definition blocks byte-identical in scratch.
Scratch code proof-escape/resource/ambient-type checks: PASS.
Scratch lines: 404
Scratch lines >100 columns: []
Report whitespace check: PASS.
```

Fresh PDF extractions, selected-page text and the five rendered evidence pages
are also under the allowed scratch directory. They are supporting evidence,
not Lean modules or library artifacts.

`git diff --check -- docs/tracks/P/AUDIT-statements-v0.1.md` exited 0. Since the
report was untracked, its trailing whitespace and final newline were checked
separately by Python. An unscoped `git diff --check` during the audit exited 2:

```text
blueprint/parts/p4-measure.tex:502: new blank line at EOF.
```

That concurrent, unrelated file was left untouched. The report records this
shared-checkout limitation rather than claiming an unqualified repository-wide
whitespace PASS. No complete Lean refutation of P-G, source-proof closure,
owner approval or physical provider completion is claimed.

The final packet check covered all 36 drafted declarations (33 definitions and
three theorems), found no unfinished report markers or unbalanced code fences,
and confirmed that all four audited track-P input files retained the pinned
hashes above.

## 10. Required Lean rules

1. **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration
   failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a
   proof will not elaborate at default heartbeats, report it as a design signal.
2. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules,
   preserving public import paths as cheap facades.

No heartbeat, recursion-depth or synthesis-heartbeat override was used. Lean
invocations and the lint command's ABI elaboration were serialized.

## 11. v0.2 delta

Audited 27 October 2026, against the revised draft and `RESPONSE-v0.1.md`.
**The v0.2 mathematical statements are APPROVABLE.** P-G is true as the explicitly
corrected, more restrictive contract now proposed. All three v0.1 counterexamples
are excluded for the right reasons. No additional Lean statement change is
required by this delta audit. This is a statement verdict, not a Lean proof,
source-proof completion, owner approval or authorization to freeze.

P4's P-G scope choice and P8's convention choice remain **pending owner decisions**;
the response correctly labels them that way. P5–P7 now specify the appropriate
proof repairs and dependencies, but those providers are still unpaid. Two further
CP10 proof defects found while checking sufficiency are recorded in §11.7. They
require explicit proof repairs and do not invalidate the revised √r conclusion.

### 11.1 Exact baseline, pins and diff

The v0.1 Lean text was reconstructed from its retained definition blocks and the
inverse of the documented edits. Its **full SHA-256 matches the original audited
file**, `8db635bc75f9cf106c32377caa48535c557e2f43e6aa260e009191d0fade80ae`.
Thus the comparison is against the exact audited bytes, not an inferred similar
statement. The old mathematical statement recovered read-only from commit
`9fcd939` also matches its original hash, `e737c911…92e2d9e8`.

| Current audited object | SHA-256 |
|---|---|
| `.drafts/P/Statements.lean`, 357 lines | `189047cf6507792945a62bd9ff36e606ff5aca1328f051ef1bdd80052615e833` |
| `docs/tracks/P/statement.md` | `8caf48afe2be98b08d56df3b6760d30e38df5fb19b108d39db1387211fc8effc` |
| `docs/tracks/P/RESPONSE-v0.1.md` | `7306b4995e3ab589329ebe3a903de332140f4d2ba4509be11be2a92522c1e4cd` |
| `docs/tracks/P/sources.md` | `b3253f46fc8431d094f295e056bced3e2decb544eb45085717603372c6f4f73e` |
| `docs/tracks/P/notes.md` | `34da59e2f862a5f8926747750995f7b7ebc84ad2795294da56d980a6bc30732d` |
| This report before this append | `89cfa670494652412f6998ac5dcc6ac747c284c6dd8d02292e4e0503bafe76d3` |

Repository HEAD at the delta check was `fc5745396809aea029f53224069833e84389236e`;
the working tree was initially clean. Current AGENTS, PLAN, DECISIONS and the audit
brief were reread. No track-P approval was found in DECISIONS. All five PDF hashes
still match §1; relevant CP10 proof pages were reread, including fresh rendered
pages 559, 561 and 564. The publisher metadata was also rechecked against the
[pinned CP10 article's record](https://www.aimsciences.org/article/doi/10.3934/dcdss.2010.3.545);
no online replacement PDF was substituted for the local source.

The complete Lean diff has precisely these changes:

1. Copyright/authors and the module/P-G/P-PLANAR documentation are updated.
2. `cylinder` uses a product of oscillator discs.
3. `HasSecularBirkhoffForm` uses those discs in both its integrability guard and
   its little-o neighborhood; the fourth-power remainder norm is unchanged.
4. P-G adds `W`, `hW`, `hVW`, `hboundary`, removes `hH0`, and changes `hfreq`
   from V to W. Its conclusion text and the order of its small parameters are
   byte-identical, with the intended new meaning of `cylinder`.
5. Both physical theorem types remove exactly the factor 4 from `hsep`.
   Their other binders, conclusions and quantifier order are identical.

A mechanical declaration comparison, after removing comments and trimming only
outside declarations, found **31 identical declarations and exactly five changed**:
the two definitions and three theorems above. The exact physical-Hamiltonian and
reference-configuration section of the mathematical statement is unchanged, as
are both physical conclusion blocks. The documentary diff adds the source repairs,
removes the excess separation, and accurately describes the corrected P-G.

Evidence retained under `.drafts/P/audit-scratch/`:
`Statements-v0.1.lean.txt`, `Statements-v0.2.lean.txt`,
`Statements-v0.1-v0.2.diff`, `statement-v0.1.md.txt`, and
`statement-v0.1-v0.2.diff`. The `.txt` snapshots are evidence, not new Lean modules.
The old counterexample module was not altered.

### 11.2 Findings P1–P9: disposition

| Finding | Delta verdict | Verification and remaining boundary |
|---|---|---|
| P1, disc cylinder | **FIXED** | Lean lines 55–58 require `∀ j, p_j²+q_j²<r²`. `cylinderCell`, `hP` and both conclusion uses refer to that exact definition. The two guards at lines 85 and 90 use the same discs; no hidden box measure remains. CP10 p. 561 is the relevant domain evidence. |
| P2, neighborhood inverse | **FIXED** | Lines 153 and 168 require an open W containing **closure V** and `HasFastDiffeomorphism H0 W`. The inverse is C¹ on an open image, with both identities. All of W and the function data precede the constants. Deleting `hH0` loses nothing: the predicate already supplies analyticity on W. |
| P3, boundary loss | **FIXED** | Lines 154–157 reproduce the proposed two-sided collar guard exactly. The measured variable I ranges over the entire ambient space; it is not restricted to V. The existential A,d precede the universal collar width t and all KAM constants. It controls both inner and outer losses. |
| P4, excess premises/scope | **CODE AND DISCLOSURE FIXED; OWNER CHOICE OPEN** | Both numerical factor-four premises are gone. The remaining P-G strengthening is expressly a corrected specialization awaiting Q-P1, not falsely labelled a literal source premise or an existing owner ruling. No additional premise is needed for this audit. |
| P5, matrix entries | **REPAIR SPECIFIED CORRECTLY; PROVIDER UNPROVED** | The statement includes both mass-index replacements and the missing denominator factor 2, matching (36)–(37). `horizontalSecularMatrix_entries` is identified as future work, not an assumed theorem or a headline binder. |
| P6, meromorphy/topology | **REPAIR SPECIFIED CORRECTLY; PROVIDER UNPROVED** | Local unit-disc holomorphy and the explicit logarithmic domain replace the false global claims. The log domain is convex, exponentiation is injective there, and ordered ratios have modulus below one and positive real part. The discriminant-complement/eigenvalue-cover argument is explicitly unpaid, rather than asserted proved by choosing a chart. |
| P7, analytic weak route | **DEPENDENCIES CORRECTLY IDENTIFIED; PROVIDERS UNPROVED** | CP09's analytic gate, Ω=2σ, the fixed zero-coupling chart and the exact averaged kinetic difference are stated separately. Neither physical headline assumes these conclusions. The fixed-center result remains a new deduction. |
| P8, periods | **INTERFACE CORRECT; OWNER CHOICE OPEN** | Physical 2π shifts and normalized average are unchanged, as are period-one parameter lifts. Source frequencies are divided by 2π. Q-P2 remains explicit; the audit supplies no owner ruling. |
| P9, authors/pages | **FIXED** | Both authors are named; source metadata says 65 numbered pages and distinguishes the retained 1–62 header. No mathematical content changed. |

“Accepted” in the response is therefore accurate as acceptance and implementation
of the requested revisions. It must not be read as proof closure of P5–P7 or
owner resolution of Q-P1/Q-P2.

### 11.3 Retrying the counterexamples and checking the guards

**P1, oscillator box.** The old corner rectangle has p²+q²>r² and is outside the
new cylinder. For the old integrable example, the slow flow preserves p²+q²
exactly. All circles of radius less than r stay in the revised disc, so there
is no fixed missing corner fraction. Scratch `disc_rotation_invariant` proves
this for every angle, without a KAM hypothesis. `cylinder_literal` checks the
actual revised carrier by reflexivity.

The changed little-o clause is equivalent to a little-o clause on sup-norm
neighborhoods: a disc of radius δ lies in the corresponding coordinate box,
and the box with coordinate radius δ/2 lies in that disc. The denominator in
the estimate is still the same norm to the fourth power. These two inclusions
are proved in scratch. The disc guard at radius δ is contained in that at r₀
because 0<δ≤r₀, also proved in scratch; every remainder integral is therefore
guarded. Zero lies in every positive-radius disc, so the clause still fixes
P₀ at zero and does not permit a spurious constant jet.

**P2, flat boundary.** With V=(0,1), closure V contains zero. Thus every allowed
W contains zero as an interior point. For H₀(I)=I¹⁶/16, the fast map is I¹⁵.
If g were its C¹ inverse on the open image, differentiating g(I¹⁵)=I at zero
would give `Dg(0)·0=1`, a contradiction. The scratch theorem
`flat_frequency_no_differentiable_inverse` proves exactly this local scalar
obstruction on any open W containing zero. Its reduction from the one-coordinate
`Fin 1` draft predicate is mathematical, not claimed as a machine-checked
negation of that entire predicate. The counterexample fails the new premise;
its old contradiction is not being hidden by a different choice of constants.

**P3, comb.** In the old comb, take t_K=2^(−16K). Every upper half of a finger
in a batch k≥K lies within t_K of a vertical boundary side: its width is
2^(−16k−4)<t_K. Hence the two-sided collar has volume at least 2^(−K−4).
The ratio of that lower bound to t_K is 2^(15K−4), unbounded. For any fixed
A,d, sufficiently large K has both t_K<d and collar volume>A t_K. Thus the
comb fails `hboundary`, independently of its identity frequency map.
Scratch `interval_collar_both_sides` additionally checks that the literal collar
formula includes both an interior point and an exterior point near an interval
boundary; it is not an accidentally one-sided set.

No new junk-value route was introduced. All cylinder radii used by P-G are
positive, even though its total squared-radius formula also has values for
negative inputs. `HasFastDiffeomorphism` supplies genuine inverse identities
on an open set, not a totalized singular inverse. The collar is an ordinary
open metric neighborhood of the frontier; no junk integral or empty domain
is involved. `IsConnected V` still supplies nonemptiness. The finite-dimensional
bounded open V has positive finite volume, so converting absolute collar loss
to relative loss by division by |V| is legitimate. The log/rpow and physical
collision/mass guards are unchanged from §6.

### 11.4 Why the corrected P-G is true

Excluding three examples is not enough on its own. The following checks connect
the new hypotheses to the quantitative proof, with constants depending only on
the data chosen before r and μ. This is a mathematical sufficiency argument using
the analytic KAM machinery of CP10, not a formal provider receipt.

**Uniform analytic and inverse data.** Since closure V is compact and contained
in open W, it has a positive neighborhood contained in W. On that compact
neighborhood the analytic fast map has a genuine inverse derivative: differentiate
the inverse identity on W. Its inverse Jacobian is continuous and bounded there.
The C¹ inverse is analytic locally by the analytic inverse-function theorem.
Shrinking the neighborhood gives uniform local complex inverse charts, which
suffice for the source's inverse-Jacobian estimates; no inverse bound is inferred
merely from nonvanishing pointwise determinants on the original open V.

The closed μ interval, closed action set, closed small secular discs and compact
fast-angle cell give uniform analytic data for P. Periodicity glues the angle
faces. One may choose a fixed smaller secular complex box inside the initial
disc domain for analytic estimates; its radius is independent of the later r.
This does not replace the **real measure domain**, which remains the discs.

The averaged function is analytic, and the symmetric quartic jet is uniquely
fixed by `hBNF`. Thus P₀, Ω and β on the used carrier are the actual analytic
Taylor coefficients, despite being supplied as unrestricted functions off that
carrier. The pointwise little-o annihilates every Taylor term through degree
four after subtracting the displayed jet. Compactness then gives the uniform
O(|(p,q)|⁵) remainder used in CP10 (60), p. 563. The determinant bound extends
with a positive margin to a smaller neighborhood. No unassumed regularity or
uniformity of a separately chosen jet is being used.

**Small divisors and powers.** Let L=log(1/r). The averaging requirements (61)–(63)
are met with fast exclusion scale γbar=A₁√r and with source exponent c taken
sufficiently large, for example larger than 4τ+2 with room for fixed constants
and fixed radius rescalings. Indeed the critical lower bound has the form

    γbar ≥ C sqrt(μ) L^(2τ+1) / r^(5/2),

and μ<r⁶/L^c makes its right side at most
C√r L^(2τ+1−c/2). Shrinking rStar absorbs that constant. Take the remaining
source scales γ₁ and γbar₂ to be sufficiently large fixed multiples of r^(5/2),
with actual slow Diophantine constant μγbar₂. These are the scales in (17),
(20), and the two-scale KAM estimates (52)–(54). Their large fixed coefficients
make the scale-independent smallness ratios small; their upper restrictions
hold after shrinking rStar. A fixed prefactor in a smallness condition can be
absorbed by increasing c and shrinking rStar, since L tends to infinity.
This explains why no separate C₀ multiplying the draft's r⁶/L^c is missing.
No first-order nonresonance condition on Ω is used: the already assumed quartic
normal form and invertible β are the inputs of Theorem 1.3, not Theorem 1.2.

**Boundary and whole tori.** Work with central fast actions farther than κ√r
from frontier V and with slow actions in

    κ r^(5/2) < J_j < r²/2 − κ r^(5/2),

where κ is a sufficiently large fixed constant. This costs O(√r) of the target
volume: the action loss follows from `hboundary`, and the secular loss follows
from the exact positive-action product-volume calculation in §11.7. The source's
uniform action-displacement estimates, (35), (42), (51) and §4, are smaller than
these margins (or a fixed multiple of r^(5/2) in slow actions). Choose κ larger
than that fixed multiple. Each retained torus then remains wholly in V and in
every oscillator disc for **all** parameter values. This uses both the inner
collar bound and the independent analytic extension neighborhood.

Select entire tori by their central parameters. Do not take an arbitrary spatial
intersection of a torus union with the target region: that is the source-proof
gap recorded below. The available margins make the selection possible at the
same O(√r) cost. Uniform inverse charts, the ordinary resonance measure estimates
and the outer collar bound control the parameter-to-phase-space measure step.
The resulting total relative loss is bounded by a constant times

    γbar + γ₁ + γbar₂/r² + √r + (A/|V|) κ√r = O(√r).

The source's analytic symplectic maps and KAM embeddings give analytic,
Lagrangian, injective immersed tori, with the required fast winding and slow
periodicity. The physical-time flow is unchanged. Reparameterizing all source
angles by 2π gives period-one parameters and divides frequencies by 2π; the
fast O(1), slow O(μ) bounds and a positive Diophantine constant survive. Compact
parameter restrictions and countable exhaustion give a measurable union.

The upper radial margin leaves a region of positive volume unused, giving the
strict upper measure inequality. Enlarge C to make the lower inequality strict
and to dominate both frequency bounds, and shrink rStar to give positive measure
and rStar<min(r₀,1). All these choices precede r and μ. No hypothetical torus,
measure conclusion or normal-form theorem is assumed as an extra premise.

This argument also shows non-vacuity after the corrections. An open bounded
box V, W=the entire space, H₀=ΣI_i²/2 and
P=ΣJ_j+(1/2)ΣJ_j² satisfy the new data: the boundary collar is O(t), the inverse
is the identity on W, and the quartic remainder is zero. The full disc domain
is compatible with the oscillator tori.

### 11.5 Physical headlines and binder delta

Removing factor 4 enlarges the physical targets to all distinct ordered positive
axes. It creates no collision at zero eccentricity: disjoint circles have a
positive minimal radial separation for any fixed distinct axes. Choose a smaller
tube inside the requested η tube and a compact good frequency patch inside it.
The resulting constants may deteriorate as axes approach each other; the theorem
chooses them **after** the axes and makes no uniform claim in that limit.
The local analytic route in §7 therefore still applies. No physical definition,
force law, barycentric reconstruction, time normalization or measure space changed.

The new log domain in the response is open and convex. Its imaginary strip widths
make exp injective, and for j<k the log-ratio has negative real part and imaginary
part between −π/2 and π/2. This proves the stated ratio conditions. Removing a
nontrivial complex analytic discriminant can be handled on its connected complement
and then a universal cover; nontriviality and the asymptotic nonplanarity argument
remain provider work. The response does not use the false topology of the original
axis domain as an axiom. The P5 matrix corrections and the P7 fixed-center averaging
argument have no new algebraic change from the accepted remedies in §7–§8.

P-G now has **29 outer binders**, compared with 26: add `W,hW,hVW,hboundary` and
remove `hH0`. Their classifications are:

| Binder change | Classification and quantifier check |
|---|---|
| `W` | Typing/geometric neighborhood data, new corrected-contract scope. |
| `hW`, `hVW` | Ordinary geometric premises: openness and closure inclusion, not conclusions. |
| `hboundary` | Ordinary geometric measure premise. Its witnesses A,d can be chosen before all KAM constants; it is not a conclusion-shaped hypothesis. |
| `hfreq` on W | Strengthened nondegeneracy contract with the same literal inverse predicate; explicitly distinguished from printed A1 on V. |
| Deleted `hH0` | Redundant, because analyticity on W implies analyticity on closure V. |
| Retained `hP` | Proposed analytic-family specialization, still awaiting Q-P1. |
| Both physical `hsep` | Now source ordered-distinct-axis conditions; the former EXCESS factor 4 is absent. |

All other binder classifications and all conclusion quantifier orders in §4 persist.
The mathematical sufficiency of the added premises does not manufacture an owner
ruling about whether this stronger scope should be frozen.

### 11.6 Per-declaration v0.2 verdicts

These verdicts concern mathematical statements/definitions as proposed. The common
owner scope/convention boundary and unpaid provider obligations above still apply.

| Declaration | v0.2 verdict |
|---|---|
| `properlyDegenerateKAM` | **APPROVABLE** as the corrected specialization; P1–P3 resolved. |
| `planarTwoPlanetKAM` | **APPROVABLE**; ordered distinct axes suffice for the qualitative local route. |
| `fixedSunPlanetaryKAM` | **APPROVABLE** as the stated new deduction, with secular/analytic providers unpaid. |
| `Phase` | APPROVABLE, unchanged. |
| `fast` | APPROVABLE, unchanged. |
| `slow` | APPROVABLE, unchanged. |
| `assemble` | APPROVABLE, unchanged. |
| `cylinder` | **APPROVABLE**, corrected product of discs with positive-radius uses. |
| `cylinderCell` | **APPROVABLE**, now measures the corrected cylinder. |
| `secularAverage` | APPROVABLE, unchanged. |
| `oscillatorAction` | APPROVABLE, unchanged. |
| `HasSecularBirkhoffForm` | **APPROVABLE**, correctly reconciled disc guards and unchanged little-o order. |
| `fastFrequency` | APPROVABLE, unchanged. |
| `HasFastDiffeomorphism` | APPROVABLE, unchanged body; P-G now consumes it on W. |
| `degenerateHamiltonian` | APPROVABLE, unchanged. |
| `fastShift` | APPROVABLE, unchanged; Q-P2 pending. |
| `IsCylinderTorus` | APPROVABLE, unchanged body. |
| `IsCylinderKolmogorovSet` | **APPROVABLE**, now uses the correct domain, still requires whole tori. |
| `bodyVector` | APPROVABLE, unchanged. |
| `planeSq` | APPROVABLE, unchanged. |
| `planeLength` | APPROVABLE, unchanged. |
| `planeDot` | APPROVABLE, unchanged. |
| `NoCollision` | APPROVABLE, unchanged. |
| `movingHamiltonian` | APPROVABLE, unchanged. |
| `fixedHamiltonian` | APPROVABLE, unchanged. |
| `circularPoint` | APPROVABLE, unchanged. |
| `circularTube` | APPROVABLE, unchanged. |
| `IsPhysicalTorus` | APPROVABLE, unchanged. |
| `actualMasses` | APPROVABLE, unchanged. |
| `barycentricPositions` | APPROVABLE, unchanged. |
| `barycentricVelocities` | APPROVABLE, unchanged. |
| `IsNewtonSolution` | APPROVABLE, unchanged. |
| `IsFixedSolution` | APPROVABLE, unchanged. |
| `PairBounds` | APPROVABLE, unchanged. |
| `MovingKolmogorovSet` | APPROVABLE, unchanged. |
| `FixedKolmogorovSet` | APPROVABLE, unchanged. |

### 11.7 Additional source-proof findings from the delta review

These were not introduced by the writer and do not require another Lean statement
revision. They must be recorded and repaired in the eventual provider. No ledger
was edited. The relevant printed pages were checked visually, not only by extraction.

**E-P-CP10-ANNULUS, CP10 (47), p. 559, and (56), p. 561; major source-proof
bookkeeping defect.** The printed annulus has every slow action between
c₁ ε^(5/2) and c₂ ε². Relative to the correct positive action box
(0,c₂ ε²)^b, its volume fraction is

    (1 − (c₁/c₂)√ε)^b.

Thus its missing fraction is O(√ε), and for b>1 is not in general O(ε^(b/2))
as printed in (56) and repeated in the subsequent estimates. Already b=2 gives
`1−(1−u)²=2u−u²`, which cannot be bounded by C u² for all small u. Both that
identity and the negation of such a uniform quadratic bound are proved in scratch.

The same paragraph on p. 561 explicitly describes its comparison action ball by
`{|J_i| < c₂ ε²}`. That signed box has 2^b times the positive box's volume, so
it cannot serve as the near-full-measure reference in (56) for the positive annulus.
Use the positive action box for the volume comparison and the exact polar Jacobian;
a larger signed box may still be used as an auxiliary domain for upper bounds on
resonant measure. Replace the annulus loss by its correct O(√ε) bound. The final
P-G rate is already √ε, so this repair does not change the drafted conclusion.

**E-P-CP10-WHOLE, final paragraph of §4, p. 564; source-proof containment gap.**
The printed conclusion sets `K := K_* ∩ P_{c₂ ε}`. A pointwise intersection of
a union of invariant tori with a region need not be a union of whole invariant
tori. The same sentence changes the reference radius by √(2c₂), which also
needs consistent radius bookkeeping; the two printed radius expressions are
not identical. Neither operation alone proves the required whole-torus containment.

Use central-action and radial margins and retain entire parameterized tori, as
in §11.4. Their uniform displacement bounds and the two-sided collar assumption
pay for this selection with an O(√r) loss. This is an explicit proof repair,
not permission to weaken `Set.range K ⊆ S` or the all-time invariance clauses.
The revised Lean statement already contains the right whole-torus conclusion.

### 11.8 Delta validation and handoff

Only this appended section and new scratch evidence were written in the delta audit.
The v0.1 report text and `CounterexampleChecks.lean` remain unchanged. No draft,
source, provider, frozen file, manifest, generated file or other track was edited;
no state-changing git command was used.

The direct v0.2 elaboration, at default budgets, produced:

```text
$ nice -n 5 lake env lean .drafts/P/Statements.lean
.drafts/P/Statements.lean:150:8: warning: declaration uses `sorry`
.drafts/P/Statements.lean:327:8: warning: declaration uses `sorry`
.drafts/P/Statements.lean:340:8: warning: declaration uses `sorry`
'KAM.Planetary.properlyDegenerateKAM' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.planarTwoPlanetKAM' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.fixedSunPlanetaryKAM' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
exit 0
```

The new module `.drafts/P/audit-scratch/DeltaV02Checks.lean` has 407 lines and SHA-256
`1830b9814881130dc2f5ce2cd64cd77a15bb983e7aeb0df926b0f159cdd667fe`. It copies all
33 v0.2 definitions exactly and contains only proved checking lemmas. Final output:

```text
$ nice -n 5 lake env lean .drafts/P/audit-scratch/DeltaV02Checks.lean
'KAM.Planetary.DeltaAudit.cylinder_literal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.DeltaAudit.disc_guard_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.DeltaAudit.disc_implies_coordinate_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.DeltaAudit.smaller_box_in_disc' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.DeltaAudit.disc_rotation_invariant' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.DeltaAudit.flat_frequency_no_differentiable_inverse' depends on axioms: [propext,
 Classical.choice,
 Quot.sound]
'KAM.Planetary.DeltaAudit.interval_collar_both_sides' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.DeltaAudit.two_disc_annulus_loss' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.DeltaAudit.no_quadratic_annulus_loss' depends on axioms: [propext, Classical.choice, Quot.sound]
exit 0

$ scripts/lint_sources.sh
check_lean_modules: PASS (45 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (25 frozen declarations)
exit 0
```

The final scratch run has no warnings or errors. An initial iteration needed an
explicit `sq_abs` simplification and an explicit composed function for the chain
rule; both were corrected locally without changing the copied definitions or any
resource budget. Static checks found no scratch proof escapes, resource overrides,
forbidden ambient types or lines over 100 columns. The original scratch hash is
still `f7e8f861b70df1effa0aeb78f774169d4b4cbf1a9c2dd5e3b5569af792e26aa8`.
Repository lint excludes drafts; their direct elaborations above are the relevant
targeted checks. No new library module exists to target with `lake build`.

The three draft theorems still depend on `sorryAx`; the delta lemmas do not.
The mathematical verdict in §11.4 is not asserted to be a Lean theorem. The source
repairs, analytic KAM providers, physical canonical charts and fixed-center secular
identification remain proof work. Q-P1–Q-P7 remain owner review questions, and this
completion marker approves no freeze or root closure.

Final `git diff --check` exited 0 with no output. `git status --short` showed only
this report as a tracked modification. The integrity check confirmed that the
entire v0.1 report prefix is byte-identical, all five v0.2 input pins are unchanged,
all 36 declarations have delta verdicts, and report whitespace/fences/completion
checks pass.

The unchanged hard rules remain in force:

1. **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration
   failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a
   proof will not elaborate at default heartbeats, report it as a design signal.
2. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules,
   preserving public import paths as cheap facades.
