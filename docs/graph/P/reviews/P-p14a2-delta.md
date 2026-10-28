# P-p14a2 delta topology review

Reviewer: sol-delta-P-s. Marker: delta-P-s. Verdict: **FAIL**.

Reviewed only the 46 still-PROPOSED node replacements and 1 still-PROPOSED coverage replacement written in P-p14a2-review.md. Records with EXTRACTOR containing writer-pfixed-revision or sonnet-extract-pfixed are excluded. Other original PROPOSED coverage records and already REVIEWED records are outside this requested delta.

Read DELTA-BRIEF.md, REVIEW-BRIEF.md, current SPEC.md and the named review. Independently read current Part 14a L157-L350, its preceding data/externals and cited lemmas, the relevant P Parts 0/1/6/7 statements, the N partial-system definitions/theorem and ODE suppliers. The two duplicated frozen-definition identities were checked against the designated frozen Fast/ DegenerateHamiltonian files and manifest identity fields only. No implementation/provider or manifest state/proof-status field was used.

The generic phrase “source setting” is accepted as its premises/data, not the enclosing conclusion. In particular, the normalization identity is not claimed sign-invariant: only P1-P4 pass to -P. The N threshold order is relative to the already fixed domain data; this does not assert invariance when those earlier analytic domain choices are changed.

## Node verdicts

| Record | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| stepP:p14:en-lim | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:en-lim@L180-L180 | Admissibility supplies the strict limit-point margins; the context is source data, not derived estimates assumed as premises. |
| stepP:p14:en-choice | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:en-choice@L181-L181 | Continuity and finiteness give the neighbourhood and parameter choices; the added topology input is applicable. |
| stepP:p14:rd-o | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:rd-o@L189-L189 | E1/E2 supply positive actions and the strict chart-domain inequality; package uses are attached. |
| stepP:p14:rd-ecc | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:rd-ecc@L190-L190 | Ch1/Ch2 and the element/radius lemma supply the bound. The obsolete n=2 D25 edge and wrong L195 locator are removed. |
| stepP:p14:rd-sep | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:rd-sep@L191-L191 | Uses the established radii, E3 and reverse triangle inequality to prove NoColl; no separation estimate is an added premise. |
| stepP:p14:rd-last | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:rd-last@L192-L192 | The source data imply the interval/AMD inclusions directly. |
| bpP:p14:h-data | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:h-data@L195-L200; blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:h-data@L201-L206 | The N stability conclusion is no longer a prerequisite; the neighbourhood and definite-fast-part definitions are the relevant inputs. |
| stepP:p14:hd-i | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:hd-i@L202-L202 | The source open-box inequalities imply the closed max-norm collar for rho<=kappa. |
| stepP:p14:hd-ii | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:hd-ii@L203-L203 | Uses the defining action neighbourhood and rho<=kappa, not the collar conclusion as an assumed proof input. |
| stepP:p14:hd-iv | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:hd-iv@L204-L204 | The scalar curried Hessian uses the sum of coefficients, not the diagonal matrix maximum; the derivative bounds are supplied by hd-ii. |
| stepP:p14:hd-v | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:hd-v@L205-L205 | The real set is the real trace of G-prime_rho; positive frequency magnitude and opposite definite signs are supplied without the stability theorem. |
| stepP:p14:tb-local | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:tb-local@L214-L214 | Complexification applies at each real point; shrinking to the open real domain is valid. |
| stepP:p14:tb-leb | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:tb-leb@L215-L215 | The empty compact set is handled separately; the finite-cover radius is positive in the nonempty branch. |
| stepP:p14:tb-glue | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:tb-glue@L216-L216 | Overlapping polydiscs have connected intersections and nonempty open real traces; the admitted identity theorem applies. |
| stepP:p14:tb-per | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:tb-per@L217-L217 | The translation/identity-theorem argument supplies representation independence and periodicity; the translation data is actually used. |
| stepP:p14:pt-input | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-input@L228-L228 | The compact cell is contained in the collision-free real set; Ch3 supplies analyticity/periodicity for the tube theorem. |
| stepP:p14:pt-rho | FAIL | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-rho@L229-L229 | Missing direct bpP:p14:sec-domain#data edge: the fast/slow coordinate dictionary and the translation tau_{-k} reducing Re lambda to [0,2pi)^n. |
| stepP:p14:pt-def | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-def@L230-L230 | P is defined from previously constructed f^C and B_0, not assumed to satisfy its target estimates. |
| stepP:p14:pt-p12 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p12@L231-L231 | F_rho lies in the holomorphic tube and B_0>=1 supplies normalization and the unit bound. |
| stepP:p14:pt-p3 | FAIL | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232 | Keep the two domains separate: P3 is required on all real points of F(G-prime,D,rho), not only the smaller calV based on G. The current quantifier field appends w in calV to the P3 binder. Missing direct N:bpN:p0:partial-domain#partialComplexDomain edge: the real-trace membership w in R^n x G-prime x D obtained from cx(w) in F_rho. |
| stepP:p14:pt-p4 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p4@L233-L233 | The actual fast shift is 2pi-periodic; no slow periodicity or time conversion is introduced. |
| stepP:p14:pt-neg | FAIL | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-neg@L234-L234 | Missing direct N:bpN:p0:partial-pert#IsPartialPerturbation edge: assemble exactly P1-P4 for -P into the named predicate, without asserting sign invariance of normalization assertion (ii). |
| stepP:p14:ud-cell | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:ud-cell@L243-L243 | The topology external already supplies the compact-neighbourhood form; N gen-lip applies to the compact subset of the open C1 domain. |
| stepP:p14:ud-transl | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:ud-transl@L244-L244 | Translation transfers the closed-ball bounds using delta<=pi; the uniform-data definition and coordinate translation are attached. |
| stepP:p14:li-init | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:li-init@L251-L251 | Surjectivity supplies w_0; the preimage statement is explicitly conditional and its element bounds are derived. |
| stepP:p14:li-max | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:li-max@L252-L252 | Ch3 supplies C-infinity, N ham-smooth gives C1, and the inline translation differentiation supplies periodicity before maximal existence. |
| stepP:p14:li-proj | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:li-proj@L253-L253 | The chart orbit projects to the physical solution; uniqueness is applied on the interval intersection with matching initial point. |
| stepP:p14:li-cont | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:li-cont@L254-L254 | The endpoint assumption is local to the contradiction. Uniform continuation on the compact slow set forces strict endpoint inclusion. |
| stepP:p14:li-concl | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:li-concl@L255-L255 | The chosen maximal curve has the claimed properties on a segment strictly inside its maximal interval, including full endpoint derivatives. |
| stepP:p14:hn-eq | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:hn-eq@L268-L268 | On calV the normalized perturbation identity with nu=B_0 mu gives equality of Hamiltonians, without time rescaling. |
| stepP:p14:hn-field | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:hn-field@L269-L269 | Equality on the open calV supplies derivative equality; the negative field follows by linearity. |
| stepP:p14:st-thr | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-thr@L278-L280 | Both signs meet the literal N hypotheses; the thresholds precede arbitrary normalized perturbations for the fixed domain data, with planet-count exponents. |
| stepP:p14:st-seg | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-seg@L281-L281 | The stopped-predicate implication has its genuine segment premises; lifting places the curve in calV and identifies its physical actions. |
| stepP:p14:st-sol | FAIL | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-sol@L282-L282 | Missing direct bpP:p14:sec-domain#data edge: the chart-coordinate identification fast(y(s)_2)=Lambda(y(s)) and H^Psi used in the solution conversion. |
| stepP:p14:st-core | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-core@L283-L283 | The fast initial erosion and slow erosion on the tested segment follow from the stated collars and the sqrt(2n) norm conversion. |
| stepP:p14:st-fwd | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-fwd@L284-L284 | The positive branch has C=r>0, a normalized P, Z1/Z2 and the slow erosion only on [0,t], with the correct time bound. |
| stepP:p14:st-bwd | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-bwd@L285-L285 | The negative branch uses (-h,-P), C=-l>0 and the reversed curve; the source sign and tested-interval conditions are supplied. |
| stepP:p14:st-phys | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-phys@L286-L286 | The two time branches are complementary cases, not optional proof routes; st-seg also supplies the trivial zero-time case. |
| stepP:p14:es-par | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-par@L305-L305 | The definitions yield positivity, the N horizon bound and all strict AMD margins without strengthening the source assumptions. |
| stepP:p14:es-stop | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-stop@L306-L306 | The stopped theorem is applied only after its coupling, time and delta conditions are supplied. |
| stepP:p14:es-amd | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-amd@L307-L307 | The AMD helper receives the source margins, initial region and derived stopped bound; no stability conclusion is assumed. |
| stepP:p14:es-axis | FAIL | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L308-L309 | Missing direct stepP:p14:es-par edge: the chosen delta=nu^b/2 with nu=B_0 mu, substituted in the axis-drift equality. |
| stepP:p14:es-assemble | FAIL | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-assemble@L310-L310 | Missing direct stepP:p14:es-par edge: the constructed horizon T=exp(c mu^{-a}) used in the assembly. The es-const EDGE attributes the horizon choice to L301-L304, which only chooses theta, mu_*, c, C. T is defined in es-par at L305; correct the supplier/rationale without changing the conclusion. |
| bpP:p14:sec-domain#data | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#data@L159-L162 | The N theorem was a phase/notation pointer. Product/phase/splitting definitions supply the actual data without the backwards theorem edge. |
| bpP:p14:sec-domain#chart-facts | FAIL | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L162-L168 | Ch3 at L162/L166 recalls product-chart(c); it does not reapply the Part 6 splitting theorem. The Part 6 split is already consumed in sec-domain#data at L161 and in the Part 7 supplier. Missing direct bpP:p14:conv#data edge: the physical element/AMD notation and J=sum_i C_i, used when summing Lambda_i-C_i=Gamma_i to obtain A=Gamma. |
| bpP:p14:sec-stopped#data | FAIL | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-stopped#data@L260-L262 | SPEC requires cross-track mentions of definitions already transcribed by P to resolve to P own anchors. Both imports duplicate the existing planetary.degenerateHamiltonian.v1 and planetary.fast.v1 anchors; retarget their DEPS/EDGE entries. |

## Rewritten coverage verdict

| Item | Verdict | Source span re-read | Reason |
|---|---|---|---|
| p14a:prose-L339-L339 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#prose@L339-L339 | The paragraph is administrative Deviations prose. The corrected rationale distinguishes the product-chart supplier from the explanatory same-chart comparison. |

Within the requested rewritten inventory, all other coverage items PASS. No verdict is issued for unrewritten or P-FIXED extractor records.

## Replacement blocks

Only the identified failing fields change. Existing status, reviewer/extractor metadata, source locators, frozen identities and Lean fields remain verbatim. No replacement to another slice is issued.

### P-p14a2 — stepP:p14:pt-rho

```text
NODE: stepP:p14:pt-rho
KIND: step
TITLE: Choice of $\rho,B_0$
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-rho@L229-L229
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-rho@L229-L229
CONTRACT_ID: stepP:p14:pt-rho
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p14:perturbation: B admissible and the choices kappa,e_1,A^+,G,G-prime,D of enlarge; calV is defined in the source statement; previous proof steps and cited conclusions are derived through DEPS, not independent hypotheses
SOURCE_QUANTIFIERS: fixed choices of enlarge
SOURCE_CONCLUSION: rho = min(kappa, r_0/2); F_rho subset T is open and tau_k-invariant; f^C is bounded by some B' on the compact rho-neighbourhood of K_*; B_0 = max(1,B') and ¦f^C¦ <= B_0 on F_rho
CONSTANT_SCOPE: rho and B_0 depend on (n,B), kappa and r_0 (hence on K_*), not on mu
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:pt-input, bpP:p14:tube, N:bpN:p0:partial-domain#partialComplexDomain, bpP:p14:x-top, bpP:p14:enlarge, bpP:p14:sec-domain#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:pt-input | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-rho@L229-L229 | r_0, K_*, K_0 and f^C
EDGE: bpP:p14:tube | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-rho@L229-L229 | periodicity f^C(z) = f^C(tau_{-k} z) and f^C holomorphic, hence continuous, on T
EDGE: N:bpN:p0:partial-domain#partialComplexDomain | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-rho@L229-L229 | F_rho = F(G',D,rho)
EDGE: bpP:p14:x-top | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-rho@L229-L229 | a continuous function on a compact set is bounded
EDGE: bpP:p14:enlarge | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-rho@L229-L229 | kappa
EDGE: bpP:p14:sec-domain#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-rho@L229-L229 | the fast/slow coordinate dictionary and the translation tau_{-k} reducing Re lambda to [0,2pi)^n
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a2+sol-review-P-o
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p14a2 — stepP:p14:pt-p3

```text
NODE: stepP:p14:pt-p3
KIND: step
TITLE: (P3)
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232
CONTRACT_ID: stepP:p14:pt-p3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p14:perturbation: B admissible and the choices kappa,e_1,A^+,G,G-prime,D of enlarge; calV is defined in the source statement; previous proof steps and cited conclusions are derived through DEPS, not independent hypotheses
SOURCE_QUANTIFIERS: fixed choices; for (P3), every real w with cx(w) in F_rho; separately for assertion (ii), every w in calV
SOURCE_CONCLUSION: (P3) P(cx w) = f-hat(w)/B_0 in R for real w with cx(w) in F_rho; this also proves (ii) because calV subset R^n x G' x D and calV subset calK (open as a preimage of open sets under coordinate projections)
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:pt-def, stepP:p14:pt-rho, bpP:p14:tube, bpP:p14:real-domain, bpP:p14:enlarge, N:bpN:p0:partial-complexify#complexifyPhase, N:bpN:p0:partial-pert#IsPartialPerturbation, bpP:p14:sec-domain#data, N:bpN:p0:partial-domain#partialComplexDomain
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:pt-def | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232 | P = f^C/B_0
EDGE: stepP:p14:pt-rho | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232 | F_rho: w in R^n x G' x D subset K_0 subset T
EDGE: bpP:p14:tube | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232 | f^C = f-hat on the real points of T
EDGE: bpP:p14:real-domain | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232 | calV subset calK
EDGE: bpP:p14:enlarge | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232 | G subset G' and Gamma < A^+ on D
EDGE: N:bpN:p0:partial-complexify#complexifyPhase | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232 | cx(w)
EDGE: N:bpN:p0:partial-pert#IsPartialPerturbation | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232 | (P3): Im P(cx z) = 0
EDGE: bpP:p14:sec-domain#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232 | Direct use of chart variables, Gamma, Psi, tau_k, calW or H^Psi from sec-domain#data.
EDGE: N:bpN:p0:partial-domain#partialComplexDomain | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232 | the real-trace membership w in R^n x G-prime x D obtained from cx(w) in F_rho
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a2+sol-review-P-o
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p14a2 — stepP:p14:pt-neg

```text
NODE: stepP:p14:pt-neg
KIND: step
TITLE: $-P$
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-neg@L234-L234
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-neg@L234-L234
CONTRACT_ID: stepP:p14:pt-neg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p14:perturbation: B admissible and the choices kappa,e_1,A^+,G,G-prime,D of enlarge; calV is defined in the source statement; previous proof steps and cited conclusions are derived through DEPS, not independent hypotheses
SOURCE_QUANTIFIERS: fixed choices
SOURCE_CONCLUSION: (P1)-(P4) are invariant under P -> -P, so IsPartialPerturbation G' D rho (-P)
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:pt-p12, stepP:p14:pt-p3, stepP:p14:pt-p4, N:bpN:p0:partial-pert#IsPartialPerturbation
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:pt-p12 | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-neg@L234-L234 | (P1),(P2) are invariant under a sign change
EDGE: stepP:p14:pt-p3 | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-neg@L234-L234 | (P3) is invariant under a sign change
EDGE: stepP:p14:pt-p4 | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-neg@L234-L234 | (P4) is invariant under a sign change
EDGE: N:bpN:p0:partial-pert#IsPartialPerturbation | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-neg@L234-L234 | assemble exactly P1-P4 for -P into the named predicate, without asserting sign invariance of normalization assertion (ii)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a2+sol-review-P-o
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p14a2 — stepP:p14:st-sol

```text
NODE: stepP:p14:st-sol
KIND: step
TITLE: $y$ solves the N-system on $[0,r]$ and on the reversed segment
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-sol@L282-L282
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-sol@L282-L282
CONTRACT_ID: stepP:p14:st-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p14:stopped: n>=2, B admissible and the fixed analytic data; mu>0 with nu=B_0 mu<nu_0; T,delta>0 with T<=nu^{-1}exp(nu^{-a}) and delta>=nu^b/2; inside the stopped-predicate implication take l<=0<=r, l<r, z(0)=z_0, IsMovSolOn(m,mu,[l,r],z) and z(s) in R_out on [l,r]; y denotes the lifted curve constructed through DEPS; previous proof steps and cited conclusions are derived through DEPS, not independent hypotheses
SOURCE_QUANTIFIERS: fixed y, l, r
SOURCE_CONCLUSION: IsSolutionOn H_nu^+ {I: fast I in G} [0,r] y; for y~(s) = y(-s), s in [0,-l]: derivative -X_{H_nu^+}(y(-s)) = X_{H_nu^-}(y~(s)), H_nu^- differentiable there, IsSolutionOn H_nu^- {fast in G} [0,-l] y~
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p14:hnu, bpP:p14:lift, stepP:p14:st-seg, N:bpN:p0:sol#IsSolutionOn, bpP:p14:x-calc, bpP:p14:sec-stopped#data, bpP:p14:sec-domain#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p14:hnu | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-sol@L282-L282 | y has derivative X_{H^Psi}(y(s)) = X_{H_nu^+}(y(s)) and H_nu^+ differentiable
EDGE: bpP:p14:lift | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-sol@L282-L282 | y has derivative X_{H^Psi}(y(s)) on [l,r]
EDGE: stepP:p14:st-seg | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-sol@L282-L282 | y(s) in calV and fast(y(s)_2) = Lambda(y(s)) in G
EDGE: N:bpN:p0:sol#IsSolutionOn | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-sol@L282-L283 | IsSolutionOn conclusions of (Z1)
EDGE: bpP:p14:x-calc | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-sol@L282-L282 | derivative of the reversed curve s -> y(-s)
EDGE: bpP:p14:sec-stopped#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-sol@L282-L282 | H_nu^+- and the set {fast in G}
EDGE: bpP:p14:sec-domain#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-sol@L282-L282 | the chart-coordinate identification fast(y(s)_2)=Lambda(y(s)) and H^Psi used in the solution conversion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a2+sol-review-P-o
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p14a2 — stepP:p14:es-axis

```text
NODE: stepP:p14:es-axis
KIND: step
TITLE: Axis drift
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L308-L309
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L308-L309
CONTRACT_ID: stepP:p14:es-axis
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p14:expsafe: n>=2 and B admissible; preceding choices are fixed before mu and z_0; 0<mu<mu_*, z_0 in R_in, abs(t)<=T and i<n; z denotes the helper solution obtained through DEPS; previous proof steps and cited conclusions are derived through DEPS, not independent hypotheses
SOURCE_QUANTIFIERS: fixed mu, z_0; ¦t¦ <= T; i
SOURCE_CONCLUSION: ¦a_i(z(t)) - a_i(z_0)¦ = ¦Lambda_i(z(t)) - Lambda_i(z_0)¦ (Lambda_i(z(t)) + Lambda_i(z_0))/m_i^2 <= 2 u_i delta/m_i^2 = (u_i/m_i^2) B_0^b mu^b <= C mu^b
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:es-amd, stepP:p14:es-const, bpP:p14:elements, bpP:p0:d25-kepler#keplerAxis, bpP:p0:d25-kepler#keplerAction, bpP:p0:d25-prograde#ProgradeElliptic, bpP:p14:conv#data, bpP:p14:sec-stopped#data, stepP:p14:es-par
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:es-amd | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L308-L308 | ¦Lambda_i(z(t)) - Lambda_i(z_0)¦ <= delta and z(t) in R_out, z_0 in R_in
EDGE: stepP:p14:es-const | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L309-L309 | C = B_0^b max_i u_i/m_i^2
EDGE: bpP:p14:elements | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L308-L308 | a_i = Lambda_i^2/m_i^2 (Lemma elements (a))
EDGE: bpP:p0:d25-kepler#keplerAxis | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L308-L308 | a_i
EDGE: bpP:p0:d25-kepler#keplerAction | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L308-L308 | Lambda_i
EDGE: bpP:p0:d25-prograde#ProgradeElliptic | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L308-L308 | z(t), z_0 prograde elliptic (LowAMD membership)
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L308-L308 | R_out, R_in
EDGE: bpP:p14:sec-stopped#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L308-L308 | Direct use of the fixed N-Hamiltonians or analytic data from sec-stopped#data.
EDGE: stepP:p14:es-par | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L309-L309 | the chosen delta=nu^b/2 with nu=B_0 mu, substituted in the axis-drift equality
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a2+sol-review-P-o
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p14a2 — stepP:p14:es-assemble

```text
NODE: stepP:p14:es-assemble
KIND: step
TITLE: Assembly
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-assemble@L310-L310
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-assemble@L310-L310
CONTRACT_ID: stepP:p14:es-assemble
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p14:expsafe: n>=2 and B admissible; preceding choices are fixed before mu and z_0; 0<mu<mu_*, z_0 in R_in; z denotes the helper solution obtained through DEPS; previous proof steps and cited conclusions are derived through DEPS, not independent hypotheses
SOURCE_QUANTIFIERS: fixed mu, z_0
SOURCE_CONCLUSION: z and the horizon T = exp(c mu^{-a}) are those demanded by P-EXP-SAFE; the clause groups (a)-(c) are those of P-AMD-CONFINEMENT and (b) is the axis drift
CONSTANT_SCOPE: none (constants as fixed in the enclosing proof)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:es-amd, stepP:p14:es-axis, stepP:p14:es-const, bpP:p14:conv#data, stepP:p14:es-par
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:es-amd | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-assemble@L310-L310 | z and the clauses (a)-(c) of the helper
EDGE: stepP:p14:es-axis | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-assemble@L310-L310 | the axis drift clause
EDGE: stepP:p14:es-const | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-assemble@L310-L310 | mu_*, c, C chosen before mu and z_0
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-assemble@L310-L310 | Direct use of box/mass data, physical element notation, inner/outer regions or exponents fixed by conv#data.
EDGE: stepP:p14:es-par | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-assemble@L310-L310 | the constructed horizon T=exp(c mu^{-a}) used in the assembly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a2+sol-review-P-o
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped references to bpP:p0:amd and bpP:p0:expsafe, which part p14a proves or sets up]
```

### P-p14a2 — bpP:p14:sec-domain#chart-facts

```text
NODE: bpP:p14:sec-domain#chart-facts
KIND: claim
TITLE: Recalled chart facts (Ch1)-(Ch3) of Part 14a
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L162-L168
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L162-L168
CONTRACT_ID: bpP:p14:sec-domain#chart-facts
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi = Psi^(n) with kappa = G m_0 = 1 and weights m (m_i > 0), the section data of bpP:p14:sec-domain#data; (Ch1), (Ch2): w in O_n, z = Psi(w); (Ch3): w in O_n and mu arbitrary
SOURCE_QUANTIFIERS: n >= 2; m; then (Ch1); w in O_n and z = Psi(w) for (Ch2); mu and w in O_n for (Ch3)
SOURCE_CONCLUSION: (Ch1) Psi is a real analytic 1-chart on O_n, Psi o tau_k = Psi, and Psi(O_n) = {z: ProgradeElliptic(m,z)} (onto); (Ch2) for z = Psi(w): Lambda_i(z) = Lambda_i, C_i(z) = Lambda_i - Gamma_i(w), A(z) = Gamma(w), a_i(z) = Lambda_i^2/m_i^2, E_i(z) = -m_i^3/(2 Lambda_i^2), e_i(z) = v_i with ¦v_i¦^2 = 1 - (1 - Gamma_i/Lambda_i)^2; (Ch3) for all w in O_n and mu: H^Psi(w) = h(Lambda) + mu f-hat(w) with h(Lambda) = -sum_i m_i^3/(2 Lambda_i^2); f-hat is real analytic on calW, f-hat o tau_k = f-hat, and H^Psi is C^infty on calW with D Psi X_{H^Psi} = X_{H_mov} o Psi there
CONSTANT_SCOPE: none (h and f-hat do not depend on mu)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p14:sec-domain#data, bpP:p7:product-chart, bpP:p7:poincare, bpP:p6:domain, bpP:p1:chart-field, bpP:p0:d25-prograde#ProgradeElliptic, bpP:p0:d25-kepler#keplerAction, bpP:p0:d25-kepler#keplerAxis, bpP:p0:d25-kepler#keplerEnergy, bpP:p0:d25-kepler#keplerEccVector, bpP:p0:d25-cross#planeCross, bpP:p0:d25-amd#physicalAMD, bpP:p7:product-def, bpP:p7:poincare-def, bpP:p7:o-facts, bpP:p14:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p14:sec-domain#data | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L162-L162 | Psi, O_n, tau_k, H^Psi, f-hat, calW are those of the section data
EDGE: bpP:p7:product-chart | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L162-L166 | (Ch1) is Theorem product-chart (a); (Ch3) is product-chart (c)
EDGE: bpP:p7:poincare | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L168-L168 | (Ch2) for every n is the one-planet identity of Proposition poincare (d),(e) in each block
EDGE: bpP:p6:domain | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L166-L166 | H_mov is C^infty on the collision-free set, so H^Psi is C^infty on calW
EDGE: bpP:p1:chart-field | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L166-L166 | D Psi X_{H^Psi} = X_{H_mov} o Psi on calW
EDGE: bpP:p0:d25-prograde#ProgradeElliptic | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L164-L164 | Psi(O_n) = {z: ProgradeElliptic(m,z)}
EDGE: bpP:p0:d25-kepler#keplerAction | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L165-L165 | Lambda_i(z) = Lambda_i
EDGE: bpP:p0:d25-kepler#keplerAxis | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L165-L165 | a_i(z) = Lambda_i^2/m_i^2
EDGE: bpP:p0:d25-kepler#keplerEnergy | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L165-L165 | E_i(z) = -m_i^3/(2 Lambda_i^2)
EDGE: bpP:p0:d25-kepler#keplerEccVector | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L165-L165 | e_i(z) = v_i
EDGE: bpP:p0:d25-cross#planeCross | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L165-L165 | C_i(z) = Lambda_i - Gamma_i(w)
EDGE: bpP:p0:d25-amd#physicalAMD | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L165-L165 | A(z) = Gamma(w)
EDGE: bpP:p7:product-def | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L168-L168 | The product definition identifies each physical body pair with its one-planet chart in the Ch2 application.
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L168-L168 | the v_i,k_i definitions in the one-planet block identity
EDGE: bpP:p7:o-facts | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L165-L168 | the block identity norm(v_i)^2=1-(1-Gamma_i/Lambda_i)^2 included in Ch2
EDGE: bpP:p14:conv#data | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L165-L165 | the physical element/AMD notation and J=sum_i C_i, used when summing Lambda_i-C_i=Gamma_i to obtain A=Gamma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a2+sol-review-P-o
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: L168 explicitly prescribes poincare(d),(e) in each product block. Product-def identifies the body pair; poincare(d) gives the action, energy, axis, cross product and eccentricity vector. The one-planet definitions and o-facts give norm(v_i)^2=1-k_i^2. Finite summation of the action/cross identities gives physicalAMD=Gamma. This is the componentwise source argument, not an application of the n=2 d25 statement at arbitrary n. No new external or source premise is introduced.
```

### P-p14a2 — bpP:p14:sec-stopped#data

```text
NODE: bpP:p14:sec-stopped#data
KIND: definition
TITLE: Data and Hamiltonians H_nu^+- of §sec-stopped (N-system)
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-stopped#data@L260-L262
PROOF_SOURCE: -
CONTRACT_ID: bpP:p14:sec-stopped#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of Lemma enlarge (kappa, e_1, A^+, G, G', D, epsilon_D), Lemma h-data (rho, g_h, varsigma_h, M_C, h) and Proposition perturbation (B_0, P) fixed, with rho and B_0 of Proposition perturbation (so rho <= kappa); nu > 0; chart coordinates (phi,I) in Ph_{2n} (N's phase order)
SOURCE_QUANTIFIERS: n; B; the choices of the preceding subsections fixed; nu > 0
SOURCE_CONCLUSION: defines H_nu^+-(phi,I) = +-[Re h(fast(I)) + nu Re P(cx(phi,I))] and H_nu = H_nu^+; H_nu^+ is the Hamiltonian H_nu of N-PARTIAL-CONVEX for the data (h,P) and H_nu^- the one for (-h,-P) (both satisfy its hypotheses by Lemma h-data and Proposition perturbation); H_nu^- = -H_nu^+
CONSTANT_SCOPE: none (all earlier constants fixed; nu free)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p14:enlarge, bpP:p14:h-data, bpP:p14:perturbation, bpP:p14:sec-domain#data, bpP:p0:degham#degenerateHamiltonian, N:bpN:p0:partial-complexify#complexifyPhase, bpP:p0:blocks#fast
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p14:enlarge | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-stopped#data@L260-L260 | kappa, e_1, A^+, G, G', D, epsilon_D are fixed from Lemma enlarge
EDGE: bpP:p14:h-data | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-stopped#data@L260-L260 | rho, g_h, varsigma_h, M_C, h are fixed from Lemma h-data
EDGE: bpP:p14:perturbation | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-stopped#data@L260-L260 | B_0 and P are fixed from Proposition perturbation (rho and B_0 of that proposition)
EDGE: bpP:p14:sec-domain#data | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-stopped#data@L260-L261 | chart coordinates and phase order of the section data
EDGE: bpP:p0:degham#degenerateHamiltonian | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-stopped#data@L261-L262 | H_nu^+ is degenerateHamiltonian (I -> Re h(I)) (lambda _ w. Re P(cx(w))) nu; the perturbation family is constant in its coupling argument
EDGE: N:bpN:p0:partial-complexify#complexifyPhase | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-stopped#data@L261-L261 | cx(phi,I) in the perturbation term
EDGE: bpP:p0:blocks#fast | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-stopped#data@L261-L261 | fast(I)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14a2+sol-review-P-o
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: created from p14a:prose-L260-L262 (SPEC section data); consumers: hnu, stopped and its steps
```

## Conditional applications and boundaries

The current general-n Ch2 argument is supported by the one-planet poincare result in each product block, the product definition, the eccentricity identity and finite summation. The removed n=2 D25 and same-chart edges stay removed. Its remaining repair concerns direct physical-notation input and the extra transitive split edge; no SOURCE_GAP is introduced for this componentwise calculation.

For N-PARTIAL-CONVEX, h-data supplies the closed max-norm collar, complex C2/reality and the scalar Hessian norm, and the two definite signs. Perturbation supplies P1-P4 for P and -P. The lift and hnu supply full endpoint derivatives for the original and reversed curves. st-core supplies initial fast erosion and slow erosion on the tested segment; st-fwd/st-bwd supply positive C and the required time bounds. The physical and N Hamiltonians agree with nu=B_0 mu, without a time rescaling.

The two duplicate N imports are not rewritten here. Once all consumers have been retargeted, the writer can reconcile them in P-imports under SPEC; this report only replaces the in-scope consumer edges with the existing P anchors.

## Suspected blueprint defects and validation

No new pinned-paper erratum or blueprint mathematical defect is asserted. The failures concern record scope, direct dependencies, datum provenance and anchor resolution; they do not change a frozen statement or add a mathematical premise. This source-topology review does not close upstream source gaps or certify a root theorem as proved.

Read-only checks PASS: exact 46-node/1-item selected inventory; eight complete replacements; only DEPS/EDGE and the one identified SOURCE_QUANTIFIERS field change; dependency/route-to-EDGE matching and targets; in-bounds source ranges; no cycle in the Part 14a subgraph after in-memory replacements; final packet/source snapshot hashes unchanged. No Lean command, repository-wide source lint or state-changing git is run. Only this report is written.

Input SHA-256:

- `docs/graph/P/packets/P-p14a2.nodes.md`: `a87bec245adb428e991bd44f57ccc6a8177d4bedcd1ba52da0ac63dff12b414a`.
- `docs/graph/P/packets/P-p14a2.coverage.md`: `d2319570725d07b2320aa7a44bde7eee59d14160c3b34869bbf98a4aa4556f00`.
- `blueprint-P/parts/p14a-amd-expsafe.tex`: `a2735bd6fbc36dc765bafccac43af4e3742b101a7e0f2d97725e70ac37ff8452`.

Selected node-block SHA-256: `89641fd5cf6ac274282b905ee8b811bb6265e69371f2fd000779930a2e897aab`.
