# Part 11 independent review — round 2

**Verdict: ACCEPT WITH FIXES.** The revision repairs the substantive domain, derivative-loss, complex-rotation, symplectic, quantifier and fixed-datum defects from round 1. The new rectangular averaging and polar-average arguments supply the missing analytic bridges at blueprint level. Five local notation/dependency corrections remain below. The quantitative KAM outputs in K1–K4 and the displacement power K6 are still declared forward dependencies; this acceptance does not certify their existence or close P-FIXED.

Reviewed `blueprint-P/parts/p11-cp09-preparation.tex`: 273 lines, 88,063 bytes, SHA256 `787b4049953f47e1dedfe6c9d1e3aeabde0984e55d4633e1363196ecba19fde0`. Latest change to the target: `cafc33e3cb8d84b4e44cd6534f9b721e8e87467a`, “blueprint-P Part 11 revision (review 1 F01-F14)”. Checkout HEAD at review: `185114129954a6b09b30f754c19fb7c0120879de`. Date: 2026-10-27. No target source was edited.

Read the review brief again, the full revised target, the latest target diff, round 1 report, current 11a-3 `sel-data`, `adm-budget` and `adm-budget-beta`, and the relevant Part 2/N Parts 4–6 averaging/Cauchy/flow interfaces. Rechecked the frozen P-FIXED conclusion and its quantifier attachment; the per-point wrapper now has an existential frequency, torus and phase. The fixed theorem and pinned CP09 PDF retain the hashes from round 1:

- `KAM/Frozen/Planetary/Theorems/FixedSunPlanetaryKAM.lean`: `9eb5abd0507b6feb40ad4af5918a78089efeab3551ab5b7625f125e4dfa65f8b`.
- `sources/incoming-P/cp09.pdf`: `dd29561ef38116ba27a743b9b580f797a602bfda1edee8510ef1371c61655859`.
- Current `p11a3-iteration-selection.tex`: `a2715ad98156037914f24eb8543d41acd8d976e09e67561bb2d95ccf7896c406`. Its later correction allowing a budget constant to depend on the strip rate does not affect this application: the strip rate is zero.

## Disposition of every round 1 finding

| Round 1 ID | Revised location / label | Disposition | Independent check |
|---|---|---|---|
| F01 | 193, 201, 219; domain table, prepared(c), am-dir | Closed in the actual estimate/consumer | g2 is estimated inside its half-domain. The J-derivative claim is now on `D_R(J0,s2/4)`; sampled actions have radius eps/2 and fit under `5eps≤s2`. The incorrect larger disk s1/4 is no longer used as g2's derivative domain. A remaining containment typo in pr-basic is R2-04. |
| F02 | 197, 207–211, 215–220 | Closed in proof; stale remark R2-02 | The common error exponent is now `Q=5tau0+2+(tau0+1)(mu+1)`, with mu J derivatives, all losses displayed. L1 is declared and used in the actual stability condition. Finite-order full rescaled derivatives use a separate logarithmic envelope. |
| F03 | 64–81; holo-chart, hc-rot/hc-lift/hc-F | Closed | The extension is complex orthogonal; real points are in SO(n). Finite complex operator bounds B_rho and B'_rho replace isometry/derivative≤2 claims. The radius bound uses B_rho, and the angular shift is bounded by `n B'_rho r_z²`. Choices of sigma-prime and r_z are not circular. |
| F04 | 67, 105, 110, 249 | Closed | The working form is consistently `dJ∧dtheta+dy∧dx`. The Part 2 form is its overall negative, and the polar pullback is `d(rho)∧d(zeta)`. No slow-only sign reversal remains. |
| F05 | 239–242, 251; wrapper/wr-tor | Closed | `∀z∈S ∃w,K,theta0` is explicit. The witness is the frequency of the retained parameter torus containing z. Its entire torus image is in S. This agrees with the frozen per-point existential order. |
| F06 | 193–211; domain table/prepared | Closed in estimates; threshold wording R2-03 | A single eps3 controls preparation and margins. `5eps≤s2` gives both the rescaling inclusion and J Cauchy room; the slow Cauchy radius is eps/4, not pi eps/4 at the outer evaluation collar. |
| F07 | 182; as-nr | Closed | The pure-slow perturbation bound is proved **before** multiplying by eps: `K2 |d_rho Z|≤delta0/8`. Its ratio to the divisor is `O(eps log^(3tau0+2))→0`. |
| F08 | 24–37, 203, 211, 245 | Closed | Datum/admissibility now include a fixed M0 upper bound, d, C1≥1, M≥beta and beta≤min(1,M). Actual M0 need only be bounded by M0*. The general family budget is explicitly invoked for upper-bound envelopes. |
| F09 | 24, 36–37, 120–143, 269 | Closed as a dependency/analytic-interface repair | K5 is the existing lower-budget corollary; K6 is a distinct forward displacement dependency. Rectangular averaging now has a named bracket/field lemma, initial losses, blockwise iteration losses and explicit R1–R3 replacements. Its target bound is correct after the local subscript fix R2-01. Future KAM outputs remain open. |
| F10 | 155–169, 181; polar-avg/as-osc | Closed | The new lemma constructs the average by normally convergent Cartesian Taylor series. Odd coordinate powers cancel; surviving monomials are integral powers of rho. The fixed complex radius, bound, vanishing order and derivative margins are supplied. |
| F11 | 253; wr-tube | Closed | Both action displacements use the actual `log^(3tau0+1)` bounds. They remain o(eps), and the fast Cartesian displacement is o(sqrt(eps)). |
| F12 | 59, 181, 252 | Closed | Rectangle replaces cube. The inner Cartesian ball is r_z/4 with a safe coordinate Cauchy estimate and explicit 2n factor. Positive ambient-cell measure is proved by a countable cell partition, without identifying the parameter cell with the ambient cell. |
| F13 | 265; errata paragraph | Closed | E-P-CP09-7 is explicitly withdrawn as a domain complaint. The separate conformal normalizer/time bookkeeping is described without alleging that restriction of a pulled-back domain is invalid. E1–E6 retain the qualifications established against the pinned PDF in round 1. |
| F14 | 14–22, 43, 150; external facts and displays | Closed | e1–e5 have labels; the frequency dictionary and parameter display are split. No overfull-box warning occurs in the Part 11 log segment. Rendered dictionary page 127 is within the margins. |

## Remaining findings and exact fixes

All are minor because the corrected bounds/domains are already available in the revised construction; none requires a new mathematical hypothesis or stronger external theorem.

| ID | Location / label | Severity | Finding / evidence | Exact proposed fix |
|---|---|---|---|---|
| R2-01 | 126; `stepP:p11:ab-der` | minor | The intermediate angular derivative norm is written at width s, but the denominator is `e(s0-s+sigma)`. The latter is the loss to **s−sigma**, as required by the lemma's conclusion. For s0=s and a single Fourier mode k, the displayed width-s estimate would give `2pi |k|≤1/(e sigma)`, false for large k. | Replace the left-hand subscript s by `s−sigma`; state that all bracket factors in ab-prod are evaluated at `I∈V−rho`, angular width `s−sigma`. The claimed final bracket inequality then follows. |
| R2-02 | 225; `bpP:p11:r-cp-2` | minor | The explanatory remark still claims the unscaled error is `O(eps log^(5tau0+2))`, the very estimate corrected in prepared(c). Its proof and amount lemma now use Q correctly. | Replace that power by Q and cite the revised prepared(c). Optionally use the consequence `O(eps^(1/2))` after decreasing the threshold. |
| R2-03 | 215; `bpP:p11:amount` | minor | “enlarge eps3” has the wrong direction, and “depending only on the data” drops the already fixed nu2 although c3 and eps2 may depend on it. | Say “decrease eps3, depending only on the data and the already fixed nu2,” to impose stability, beta≤min(1,M*) and sampled-action containment in K_J. This preserves the established choice order. |
| R2-04 | 205; `stepP:p11:pr-basic` | minor | The text writes that `T_(sigmaF/6) × D(J0,s1) × B_(r_z/4) ⊂ D1'`; D1' has J-radius s1/2, so this particular inclusion is false. The actual image has unchanged J in D(J0,s2), with s2≤s1/4. | Replace the displayed image's J disk by `D(J0,s2)` (and, if desired, its angular strip by sigma3). Then the stated inclusion in D1' is immediate. |
| R2-05 | 248; `stepP:p11:wr-nu` | minor | The parenthesis “those depend on nu2 only through thresholds” is inaccurate for all constants of Steps C–E: c2,c3 also depend on nu2. It is only the fixed **datum envelopes** that must not depend on nu2. | Say: “the fixed datum and its K5/K6 constants are independent of nu2; intermediate estimate constants and thresholds may depend on the subsequently fixed nu2.” |

## Changed estimates recomputed

Write `ell=log(1/eps)`, `q=tau0+1`, `a=5tau0+2`, and `mu=bar mu`. The cutoff definitions give `s1,s2 ≥ c_nu ell^(-q)` for small eps. Let `|alpha|≤mu`. The four error contributions in prepared(c) are bounded respectively by

| Contribution | Bound after J differentiation |
|---|---|
| `eps d_J G0` | `C eps ell^(q(mu+1))` |
| `d_J g2` | `C eps³ ell^(a+q(mu+1))` |
| `d_rho Z` | `C eps ell^(2tau0+1+q mu)` |
| `eps^(-1) d_rho g2` | `C eps ell^(a+q mu)` |

All logarithmic exponents are at most `Q=a+q(mu+1)` and each eps power is at least 1. Thus a common `C eps ell^Q` works. This is a symbolic comparison for every mu≥1, not a numerical sampling argument. The reduction from mu+1 to mu J derivatives is sufficient for the cited finite-type stability lemma; the higher derivatives needed for M are controlled separately in prepared(d).

The new mixed Cauchy estimate is

`|d_J^alpha d_rho^gamma g2| ≤ C alpha! gamma! eps^(3-|gamma|) ell^(a+q|alpha|)`.

For full rescaled derivatives of order j=j_J+j_rho, multiply by eps^j. Consequently the g2 corrections to the actual frequency and its finite jet tend to zero: `d_J g2` contributes `O(eps^(3+j_J) ell^(a+q(j_J+1)))`, and `d_rho g2` contributes `O(eps^(2+j_J) ell^(a+q j_J))`. Fixed-radius Z terms and the G0 terms have the same required positive eps powers. This supplies fixed M*=2^(mu+1)(2L+1)^2 and M0*=c(n,mu)(2L+1), after choosing the final threshold. Constants in these intermediate estimates may depend on nu2; their eventual fixed envelopes do not. R2-05 is only about how the text describes that distinction.

### Domain and threshold attachment

The half-domain for g2/f3 has radii s2/2 in J and pi eps/2 about rho0. Evaluation on K+3vartheta gives offsets less than 5eps/4. Under `5eps≤s2`, adding a J Cauchy radius s2/4 gives at most s2/2, with strict containment at evaluated points. In the slow block,

`5eps/4 + eps/4 = 3eps/2 < pi eps/2`.

The slack `(pi/2−5/4)eps≈0.320796eps` exceeds eps/4. For G0/Z, `s2≤s1/4` supplies the J room inside s1/2. Their fixed slow radius pi r_z²/16 contains the O(eps) shell and the fixed Cauchy radius pi r_z²/32 once eps is sufficiently small. The separate c-domain `|J−J0|<s2/4` also admits the stated s2/4 derivative disks; its real slow points use the same safe eps/4 radius. Sampled J0+eps r, |r|≤1/2, lie strictly inside it. Rescaling E with |r|<2 fits the half-domain since `2eps≤s2/2`; `5eps≤s2` is stronger.

`K+2vartheta`, used by the revised KAM input, is contained in the larger analytic/estimate domain. All real torus actions have modulus≤1 from K3 and Delta≤1/2; they lie in the physical chart's open action window. The final eps0 may additionally be decreased for the tube inequalities. No f-, torus-parameter-, or initial-phase-dependent constant is selected before an earlier quantifier permits it.

### Polar mean and rectangular averaging

For polar averaging, the coefficient sum at Cartesian radius r/2 is at most `2^(2n) S`. For each pair, the real angular average of `sin^a cos^b` vanishes unless both a,b are even. Surviving terms have rho degree `(a+b)/2`, and `|rho|<pi r²/4` gives normal convergence with exactly that bound. Vanishing Cartesian degrees below k yield vanishing rho degrees below ceil(k/2). In particular R4 produces a quadratic rho remainder; its derivative on the O(eps) shell is O(eps). Applied with r=r_z/2, the fixed mean domain is `|rho|<pi r_z²/16`; the bar-g mean derivative is O(eta1) there after a fixed-radius Cauchy loss. The added J losses in avg-slow(a) are explicitly retained. Complex averaging uses real-angle integration followed by holomorphic dependence; it does not require choosing a polar inverse at zero.

For the block bracket, at each fixed inner I the angular Fourier derivative sum costs `1/(e(s0-s+sigma))` at width s−sigma; action derivatives cost the inverse appropriate block margin. Multiplication and summation give the two terms in the new lemma with `nu_theta+nu_I`. The field estimate holds in the norm whose loss ball has angle radius sigma and action block radii rho_j. N Part 5's flow lemma is stated for an arbitrary complex norm, so this is a valid replacement. The initial losses give `rho_*=r_*/8`, `sigma=s/6`, hence y0=48E/(bar-alpha2 r_* s). Proportional block losses make the relevant radius ratios agree with the isotropic iteration. The numerical quadratic estimate remains less than 128E²/(bar-alpha2 r_*s), hence 130 is safe. Correcting R2-01 makes the proof use the precise lemma stated, rather than its false intermediate width-s line.

For pure-slow nonresonance, `eta1=O(eps ell^(2tau0+1))`, and K2 is O(ell). Thus `K2^(tau0+1)(eps+eta1)=O(eps ell^(3tau0+2))→0` before the extra eps factor. The fast case has its own eps-small errors. B2 still has ratio eps^(1/2) times a fixed log power; the final size is `O(eps^(nu2+3/2) ell^(2tau0+1))`.

## K1–K6 exact dependency review

K1–K4 retain the primary/equivariant torus output, Diophantine exponent, injective derivative, Lagrangian property, real dynamics, displacement and positive-measure evaluation family required by the transport. The four labels `weak-kam-quantitative`, `limit-torus`, `displacement`, `evaluation-bilipschitz` still do not exist and are explicitly marked future inputs. This is acceptable as a visible blueprint dependency, not as a claim of closure.

K5 correctly invokes the existing `adm-budget-beta`; for rho=2, `G0=(mu+1)/2` and `1+mu G0−2G0=mu(mu−1)/2≥0`, giving `B0=mu(mu+1)+2`. The uniform-upper-bound version is explicitly attached through `adm-budget` with all rates zero except a_beta=1. Hence a varying actual frequency norm M0(eps) bounded by fixed M0* is allowed; it is not incorrectly asserted equal to that fixed bound. The current strip-rate qualification in 11a-3 is harmless because a_s=0.

The family fixes N,mu,K,diameter d=1,vartheta=1/4,s=sigmaF/72,eps*=1/2,M*,M0*,C1=2L+1≥3,tauD. Only beta_eps=beta_J eps^(mu+2)/2 varies. It is explicitly restricted to `(0,min(1,M*)]`. Thus the beta-only lower budget is applicable, including its C1≥1 hypothesis. No K5 exponent is chosen after nu2.

K6 correctly remains a separate forward assertion. The wrapper uses it only to guarantee Delta≤1/2. Its choice of nu2 gives

`kappa_D(nu2+3/2)−(mu+2)a_D ≥ 1+(7/2)kappa_D ≥ 1+2kappa_D`,

so the weaker power displayed in wr-nu is valid; its positive extra eps power absorbs the fixed logarithm. Also `nu2≥(mu+2)B0+2` places the final remainder below the K5 lower threshold for sufficiently small eps. The documented weaker future alternative “Delta≤1/2 whenever eps_f≤eps_adm” would suffice for this wrapper; it is not currently proved by K5 and is not silently assumed from it.

The corrected per-point witness, invariant union, countable Borel translates and ambient cell-partition proof give positive measure; the conformal Jacobian is eps^(2n). Tube containment and its finite-volume lemma give finiteness. The entire torus is in the union S; no single common frequency is required. The frozen P-FIXED statement receives no additional secular-rank or displacement hypothesis.

## Build, rendering and limits

Ran `cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`. The first attempt exited 12 because the pre-existing `.aux`/`.out` files ended inside label/bookmark arguments. Those were generated-artifact errors at begin/end-document, not a new Part 11 command failure. Re-ran with `latexmk -g -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`, logging to `.build/review/p11-round2-command.log`: **exit 0**. No mathematical source was changed to obtain the successful build.

Final PDF: `.build/review/blueprint.pdf`, 208 pages, 2,409,338 bytes. Final log: zero lines beginning `!`; seven undefined-reference occurrences remain in Part 14a, outside this review. The Part 11 log segment has no undefined ordinary references and no overfull boxes. The four declared Pref dependencies above remain textual forward references. Inspected rendered pages 125, 127 and 134, including the repaired frequency dictionary and the domain/derivative proposition; the reviewed displays fit the page.

The round 1 pinned-PDF checks of E-P-CP09-1…6 are retained; the changed E7 wording now follows that review's actual conclusion. No new external-source erratum or frozen-statement defect was found. This round audited the revised preparation proof plan and dependency attachment; it did not prove the future KAM theorem or run Lean builds.

Apply R2-01…05 as local text/type-location fixes, then recompile. No new analytic estimate, stronger KAM output, or change to a frozen statement is required by these fixes.

READY review-p11r2
