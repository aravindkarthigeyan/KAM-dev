# P-p5 topology review

Reviewer: `sol-review-P-g`
Marker: `rev-P-g`
**Verdict: FAIL.** Source-topology review only; no Lean execution or proof-status inference. Reviewed all 85 present nodes and 114 coverage items against the pinned Part 5 text, their cited prerequisite statements, the track-P SPEC and the P-G signature. The pre-extraction count 88 includes the three remarks subsequently excluded.

## Findings

P5G-01: The source is not forced into a mathematical constant-choice circle. At L286 the measure constants depend on the inner core only through its positive-volume lower bound; substitute meas(V)/2 in c_1. The two explicit coefficients at L286-L287 give C_b before r or mu. L291 then defines C_* algebraically. Conditions (r1)-(r4) and the displacement half of (r5) suffice for the estimates; their proof does not use the final C_*-smallness half of (r5). Shrinking the preliminary threshold after fixing C_* preserves all those conditions. Thus the reading proposed in the assignment resolves the apparent circle. However, deleting edges to compound suppliers while relying only on the order remark loses direct dependencies. The replacements below project the five constant choices (C_1, scales, C_gamma, C_b, C_*) from the existing source, keeping the later estimates separate. They add no mathematical premise and do not weaken any theorem contract.

P5G-02: L336 is an unlabelled list, not a SPEC-approved external node. Existing step nodes can and must expose its unregistered classical inputs with NOTE beginning SOURCE_GAP. This is a registration gap, not a claim that these familiar classical facts are false. Neumann series is already bpP:p3:ext-neumann and needs a direct edge. No new external or import is invented.

P5G-03: Several steps and statements omit direct local-package edges. Transitive access to params, consts, rstar, phi or kset does not satisfy the SPEC. The replacements add only uses present in the statement or proof. The real-vector beta-inverse citation at L112 is a comparison of the repeated adjugate argument; the complex computation uses Cramer directly.

P5G-04: main records its chosen witnesses as hypotheses, and strictness records the B it constructs as a hypothesis. Move/remove those fields while preserving their quantifier order and conclusions. main also needs direct statement-definition edges, independently of its proof-step edges.

## Per-node decisions

| Node | Decision | Source spans re-read and reason |
|---|---|---|
| bpP:p5:order | PASS | L13-L23 / L13-L23; Statement, direct uses and locators agree; no further topology defect found. |
| bpP:p5:ext | PASS | L29-L31 / L32-L37; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:ext-loc | FAIL | L33-L33 / L33-L33; Classical input is neither linked to an approved result nor exposed as SOURCE_GAP (SPEC Other gaps). |
| stepP:p5:ext-glue | FAIL | L34-L34 / L34-L34; Classical input is neither linked to an approved result nor exposed as SOURCE_GAP (SPEC Other gaps). |
| stepP:p5:ext-per | PASS | L35-L35 / L35-L35; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:ext-H0 | PASS | L36-L36 / L36-L36; Statement, direct uses and locators agree; no further topology defect found. |
| bpP:p5:consts | PASS | L39-L44 / L45-L47; Statement, direct uses and locators agree; no further topology defect found. |
| bpP:p5:birkhoff-ext | PASS | L49-L56 / L57-L62; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:be-coef | FAIL | L58-L58 / L58-L58; Classical input is neither linked to an approved result nor exposed as SOURCE_GAP (SPEC Other gaps). |
| stepP:p5:be-an | FAIL | L59-L59 / L59-L59; Classical input is neither linked to an approved result nor exposed as SOURCE_GAP (SPEC Other gaps). |
| stepP:p5:be-jet | FAIL | L60-L60 / L60-L60; Classical input is neither linked to an approved result nor exposed as SOURCE_GAP (SPEC Other gaps). Missing direct dependency bpP:p5:consts (uses the complex strip, oscillator radius or averaged function of this package). |
| stepP:p5:be-det | PASS | L61-L61 / L61-L61; Statement, direct uses and locators agree; no further topology defect found. |
| bpP:p5:uniform-remainder | PASS | L64-L70 / L71-L74; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:ur-bound | PASS | L72-L72 / L72-L72; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:ur-schwarz | FAIL | L73-L73 / L73-L73; Classical input is neither linked to an approved result nor exposed as SOURCE_GAP (SPEC Other gaps). |
| bpP:p5:lip-complex | PASS | L80-L82 / L83-L86; Statement, direct uses and locators agree; no further topology defect found. |
| bpP:p5:bilip | PASS | L88-L90 / L91-L94; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:bl-real | FAIL | L92-L92 / L92-L92; Classical input is neither linked to an approved result nor exposed as SOURCE_GAP (SPEC Other gaps). |
| stepP:p5:bl-comp | FAIL | L93-L93 / L93-L93; Classical input is neither linked to an approved result nor exposed as SOURCE_GAP (SPEC Other gaps). |
| bpP:p5:dio-one | PASS | L96-L98 / L99-L102; Statement, direct uses and locators agree; no further topology defect found. |
| bpP:p5:freq-data | PASS | L104-L108 / L109-L113; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:fd-bd | FAIL | L110-L110 / L110-L110; Missing direct dependency bpP:p5:consts (uses the complex strip, oscillator radius or averaged function of this package). Missing direct dependency bpP:p5:bilip (uses rho_c, delta_c or M0bar in the domain or bound directly). |
| stepP:p5:fd-lip | PASS | L111-L111 / L111-L111; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:fd-beta | FAIL | L112-L112 / L112-L112; The real-vector beta-inverse contract is not applied to the complex vectors at L112: the text repeats Cramer algebra; retain the actual Cramer input and delete the comparison edge. Wrong-carrier comparison retained as a use. |
| bpP:p5:freq-inj | PASS | L115-L125 / L126-L130; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:fi-inj | PASS | L127-L127 / L127-L127; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:fi-blk | FAIL | L128-L128 / L128-L128; Classical input is neither linked to an approved result nor exposed as SOURCE_GAP (SPEC Other gaps). Missing direct dependency bpP:p3:ext-neumann (Neumann inversion of A and of the normalized Schur complement). |
| stepP:p5:fi-inv | FAIL | L129-L129 / L129-L129; Classical input is neither linked to an approved result nor exposed as SOURCE_GAP (SPEC Other gaps). |
| bpP:p5:params | FAIL | L137-L145; Missing direct dependency bpP:p5:kam-hyp#C1 (uses the numerical constant choice separately from the later estimate). Missing direct dependency bpP:p5:kam-cond#scales (uses the numerical constant choice separately from the later estimate). Deleting cyclic supplier edges without retaining the constant-choice projections leaves those choices unsupported. |
| bpP:p5:rstar | FAIL | L147-L156; Missing direct dependency bpP:p5:lower#constant (uses the numerical constant choice separately from the later estimate). Missing direct dependency bpP:p5:kam-cond#scales (uses the numerical constant choice separately from the later estimate). Missing direct dependency bpP:p5:rstar#Cgamma (uses the numerical constant choice separately from the later estimate). The omitted C_* supplier is a real topology omission; it is resolved by projecting constant definitions, not by declaring the blueprint circular. |
| bpP:p5:param-facts | FAIL | L158-L163 / L164-L166; Missing direct dependency bpP:p5:consts (uses the complex strip, oscillator radius or averaged function of this package). |
| bpP:p5:avg | PASS | L170-L174 / L175-L180; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:av-dict | PASS | L176-L176 / L176-L176; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:av-R1 | PASS | L177-L177 / L177-L177; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:av-R2 | FAIL | L178-L178 / L178-L178; Missing direct dependency bpP:p5:consts (uses the complex strip, oscillator radius or averaged function of this package). Missing direct dependency bpP:p5:bilip (uses rho_c, delta_c or M0bar in the domain or bound directly). Missing direct dependency bpP:p5:rstar (uses the threshold or C_gamma and its smallness conditions directly). Missing direct dependency bpP:p5:kam-cond#scales (uses the numerical constant choice separately from the later estimate). The edge to the order remark does not supply the stated G inequalities. |
| stepP:p5:av-id | FAIL | L179-L179 / L179-L179; Missing direct dependency bpP:p5:consts (uses the complex strip, oscillator radius or averaged function of this package). |
| bpP:p5:phi | PASS | L184-L186; Statement, direct uses and locators agree; no further topology defect found. |
| bpP:p5:phi-chart | FAIL | L188-L191 / L192-L196; Missing direct dependency bpP:p5:params (uses the parameter definitions (widths, scales, domain or shell) directly). Missing direct dependency bpP:p5:birkhoff-ext (uses N-tilde and Q in the displayed Hamiltonian directly). |
| stepP:p5:pc-img | FAIL | L193-L193 / L193-L193; Missing direct dependency bpP:p5:consts (uses the complex strip, oscillator radius or averaged function of this package). |
| stepP:p5:pc-lat | PASS | L194-L194 / L194-L194; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:pc-ham | PASS | L195-L195 / L195-L195; Statement, direct uses and locators agree; no further topology defect found. |
| bpP:p5:kam-hyp | FAIL | L198-L202 / L203-L208; Missing direct dependency bpP:p5:kam-hyp#C1 (uses the numerical constant choice separately from the later estimate). |
| stepP:p5:kh-dom | FAIL | L204-L204 / L204-L204; Missing direct dependency bpP:p5:rstar (uses the threshold or C_gamma and its smallness conditions directly). |
| stepP:p5:kh-h | PASS | L205-L205 / L205-L205; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:kh-f | FAIL | L206-L206 / L206-L206; Missing direct dependency bpP:p5:params (uses the parameter definitions (widths, scales, domain or shell) directly). |
| stepP:p5:kh-norm | FAIL | L207-L207 / L207-L207; Missing direct dependency bpP:p5:rstar (uses the threshold or C_gamma and its smallness conditions directly). |
| bpP:p5:kam-cond | FAIL | L212-L222 / L223-L226; Missing direct dependency bpP:p5:kam-cond#scales (uses the numerical constant choice separately from the later estimate). |
| stepP:p5:kc-eval | PASS | L224-L224 / L224-L224; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:kc-small | FAIL | L225-L225 / L225-L225; Missing direct dependency bpP:p5:params (uses the parameter definitions (widths, scales, domain or shell) directly). Missing direct dependency bpP:p5:kam-cond#scales (uses the numerical constant choice separately from the later estimate). |
| bpP:p5:rK | FAIL | L228-L231 / L232-L234; Missing direct dependency bpP:p5:rstar (uses the threshold or C_gamma and its smallness conditions directly). |
| stepP:p5:rk-dir | PASS | L233-L233 / L233-L233; Statement, direct uses and locators agree; no further topology defect found. |
| bpP:p5:location | FAIL | L241-L243 / L244-L248; Missing direct dependency bpP:p5:params (uses the parameter definitions (widths, scales, domain or shell) directly). |
| stepP:p5:lo-range | PASS | L245-L245 / L245-L245; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:lo-act | FAIL | L246-L246 / L246-L246; Missing direct dependency bpP:p5:rstar (uses the threshold or C_gamma and its smallness conditions directly). |
| stepP:p5:lo-disc | PASS | L247-L247 / L247-L247; Statement, direct uses and locators agree; no further topology defect found. |
| bpP:p5:kset | PASS | L250-L254; Statement, direct uses and locators agree; no further topology defect found. |
| bpP:p5:torus-conv | FAIL | L256-L258 / L259-L264; Missing direct dependency bpP:p5:params (uses the parameter definitions (widths, scales, domain or shell) directly). Missing direct dependency bpP:p5:freq-data (uses A_N in the displayed C_w directly). |
| stepP:p5:tc-chart | FAIL | L260-L260 / L260-L260; Missing direct dependency bpP:p5:phi (uses Phi, Pol or O_0 directly). Missing direct dependency bpP:p1:period-convert (uses S_{2pi} directly). |
| stepP:p5:tc-LT | FAIL | L261-L261 / L261-L261; Missing direct dependency bpP:p5:params (uses the parameter definitions (widths, scales, domain or shell) directly). Missing direct dependency bpP:p5:phi (uses Phi, Pol or O_0 directly). Missing direct dependency bpP:p5:kset (uses D_0, K_omega, S_B or the action-angle torus union directly). Missing direct dependency bpP:p1:period-convert (uses S_{2pi} directly). |
| stepP:p5:tc-pipe | PASS | L262-L262 / L262-L262; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:tc-freq | FAIL | L263-L263 / L263-L263; Missing direct dependency bpP:p5:params (uses the parameter definitions (widths, scales, domain or shell) directly). |
| bpP:p5:cell-transfer | FAIL | L266-L268 / L269-L275; Missing direct dependency bpP:p5:rstar (uses the threshold or C_gamma and its smallness conditions directly). |
| stepP:p5:ct-cell | PASS | L270-L270 / L270-L270; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:ct-dec | FAIL | L271-L271 / L271-L271; Missing direct dependency bpP:p1:period-convert (uses S_{2pi} directly). Missing direct dependency bpP:p1:order (uses the coordinate permutation pi directly). |
| stepP:p5:ct-disj | FAIL | L272-L272 / L272-L272; Missing direct dependency bpP:p5:phi (uses Phi, Pol or O_0 directly). Missing direct dependency bpP:p5:kset (uses D_0, K_omega, S_B or the action-angle torus union directly). |
| stepP:p5:ct-count | FAIL | L273-L273 / L273-L273; Missing direct dependency bpP:p5:kset (uses D_0, K_omega, S_B or the action-angle torus union directly). |
| stepP:p5:ct-liou | FAIL | L274-L274 / L274-L274; Missing direct dependency bpP:p5:phi (uses Phi, Pol or O_0 directly). Missing direct dependency bpP:p5:kset (uses D_0, K_omega, S_B or the action-angle torus union directly). Missing direct dependency bpP:p1:order (uses the coordinate permutation pi directly). |
| bpP:p5:budget | FAIL | L280-L283 / L284-L288; Missing direct dependency bpP:p5:budget#constant (uses the numerical constant choice separately from the later estimate). |
| stepP:p5:bu-read | PASS | L285-L285 / L285-L285; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:bu-dio | FAIL | L286-L286 / L286-L286; Missing direct dependency bpP:p4:conv#data (uses the inner core D_t and the volume of V directly). |
| stepP:p5:bu-collar | FAIL | L287-L287 / L287-L287; Missing direct dependency bpP:p5:rstar (uses the threshold or C_gamma and its smallness conditions directly). |
| bpP:p5:lower | FAIL | L290-L293 / L294-L298; Missing direct dependency bpP:p5:params (uses the parameter definitions (widths, scales, domain or shell) directly). Missing direct dependency bpP:p5:lower#constant (uses the numerical constant choice separately from the later estimate). |
| stepP:p5:lo-setup | FAIL | L295-L295 / L295-L295; Missing direct dependency bpP:p5:params (uses the parameter definitions (widths, scales, domain or shell) directly). |
| stepP:p5:lo-bad | PASS | L296-L296 / L296-L296; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:lo-lost | FAIL | L297-L297 / L297-L297; Missing direct dependency bpP:p5:params (uses the parameter definitions (widths, scales, domain or shell) directly). |
| bpP:p5:strictness | FAIL | L302-L307 / L308-L313; B is the existential witness being constructed, not a premise of the proposition. |
| stepP:p5:st-add | FAIL | L309-L309 / L309-L309; Missing direct dependency bpP:p0:cylinder#cylinderCell (the source statement directly uses this frozen predicate or cell definition). |
| stepP:p5:st-null | PASS | L310-L310 / L310-L310; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:st-ivt | FAIL | L311-L311 / L311-L311; Classical input is neither linked to an approved result nor exposed as SOURCE_GAP (SPEC Other gaps). Missing direct dependency bpP:p0:cylinder#cylinderCell (the source statement directly uses this frozen predicate or cell definition). |
| stepP:p5:st-conc | FAIL | L312-L312 / L312-L312; Missing direct dependency bpP:p5:kset (uses D_0, K_omega, S_B or the action-angle torus union directly). |
| bpP:p5:main | FAIL | L317-L320 / L321-L326; Missing direct dependency bpP:p0:fastdiffeo#HasFastDiffeomorphism (the source statement directly uses this frozen predicate or cell definition). Missing direct dependency bpP:p0:birkhoff#HasSecularBirkhoffForm (the source statement directly uses this frozen predicate or cell definition). Missing direct dependency bpP:p0:degham#degenerateHamiltonian (the source statement directly uses this frozen predicate or cell definition). Missing direct dependency bpP:p0:cylkol#IsCylinderKolmogorovSet (the source statement directly uses this frozen predicate or cell definition). Missing direct dependency bpP:p0:cylinder#cylinderCell (the source statement directly uses this frozen predicate or cell definition). The proof witnesses c, C and r_* are recorded as source hypotheses. Move the explicit witnesses out of the hypothesis field. The note incorrectly excuses transitive-only statement edges. |
| stepP:p5:mn-const | PASS | L322-L322 / L322-L322; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:mn-given | PASS | L323-L323 / L323-L323; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:mn-set | PASS | L324-L324 / L324-L324; Statement, direct uses and locators agree; no further topology defect found. |
| stepP:p5:mn-meas | PASS | L325-L325 / L325-L325; Statement, direct uses and locators agree; no further topology defect found. |

## Coverage decisions

| Item | Decision | Reason |
|---|---|---|
| bpP:p5:kam-hyp | FAIL | The numerical choice also needs its own mapped node. |
| bpP:p5:kam-cond | FAIL | The numerical choice also needs its own mapped node. |
| bpP:p5:rstar | FAIL | The numerical choice also needs its own mapped node. |
| bpP:p5:budget | FAIL | The numerical choice also needs its own mapped node. |
| bpP:p5:lower | FAIL | The numerical choice also needs its own mapped node. |
| p5:prose-L334-L339 | FAIL | The existing reason admits unregistered facts while claiming all inputs were linked; expose the gaps explicitly. |

all other coverage items PASS

The exclusions of freq-inj-rem (interface commentary), use5-fix (interface update), quant (audit restatement), headings, provenance and the introductory/administrative prose are valid. The CP10 sourcegap notes at L69 and L306 map to supplied blueprint arguments; their classical inputs are separately exposed above.

## Replacement fragments

Each existing block below preserves all fields not identified as failing. The five new blocks are projections of already printed numerical choices, not new external facts. Existing topology/reviewer status fields are left untouched for the writer and independent delta reviewer.

### stepP:p5:ext-loc

```text
NODE: stepP:p5:ext-loc
KIND: step
TITLE: Local extensions
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-loc@L33-L33
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-loc@L33-L33
CONTRACT_ID: stepP:p5:ext-loc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (H1); X_0 := [0,mu_0] x closure(V) x [0,2pi]^a x {¦(p,q)¦ <= eps_box} compact; 2 eps_box^2 < r_0^2
SOURCE_QUANTIFIERS: x in X_0; delta_1 from a Lebesgue number of the cover by convergence polydiscs
SOURCE_CONCLUSION: X_0 lies in [0,mu_0] x closure of C(V,r_0); P is analytic at each point of X_0, so its power series gives a holomorphic extension P_x on a polydisc B(x,delta_1) with ¦P_x¦ <= M uniformly
CONSTANT_SCOPE: delta_1, M depend on the data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:cylinder#cylinder
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:cylinder#cylinder | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-loc@L33-L33 | X_0 subset [0,mu_0] x closure of the cylinder C(V,r_0) where (H1) holds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L33 uses finite-dimensional compactness, complexification of a real convergent power series, and a Lebesgue number with a uniform bound; no approved node supplies these classical inputs. L336 lists compactness and the Lebesgue number lemma but is not an external declaration under SPEC. The local-extension argument is present; the gap here is its unregistered classical inputs.
```

### stepP:p5:ext-glue

```text
NODE: stepP:p5:ext-glue
KIND: step
TITLE: Gluing
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-glue@L34-L34
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-glue@L34-L34
CONTRACT_ID: stepP:p5:ext-glue
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P_x, P_y holomorphic extensions on polydiscs B(x,delta_1), B(y,delta_1) with B(x,delta_1) intersect B(y,delta_1) nonempty; both equal P at real points
SOURCE_QUANTIFIERS: x, y in X_0
SOURCE_CONCLUSION: P_x = P_y on the intersection (convex, hence connected; identity theorem), so the P_x define one holomorphic P~ on the union of the B(x,delta_1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:ext-loc
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:ext-loc | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ext-glue@L34-L34 | the local extensions P_x and delta_1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L34 invokes the identity theorem for a holomorphic function of several variables vanishing on a real open subset of a connected overlap. No approved input node supplies this version. The one-variable identity theorem is not silently strengthened.
```

### stepP:p5:be-coef

```text
NODE: stepP:p5:be-coef
KIND: step
TITLE: Coefficients on $V$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-coef@L58-L58
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-coef@L58-L58
CONTRACT_ID: stepP:p5:be-coef
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: mu in [0,mu_0], I in V; (H4) clause (ii) P_av - N = o(¦x¦^4); (H6) beta symmetric; P_av real analytic near x=0 by differentiation under the integral
SOURCE_QUANTIFIERS: (mu,I) in [0,mu_0] x V
SOURCE_CONCLUSION: the degree <= 4 Taylor polynomial of P_av(mu,I;.) equals N, whence d^2_{p_j} N(0) = Omega_j, d^2_{p_i} d^2_{p_j} N(0) = beta_ij (i != j, using (H6)), d^4_{p_j} N(0) = 3 beta_jj, P_0 = P_av at x=0: part (a) on V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:birkhoff#HasSecularBirkhoffForm, bpP:p0:secavg#secularAverage, bpP:p5:ext, bpP:p0:oscaction#oscillatorAction
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-coef@L58-L58 | (H4)(ii): P_av - N is o(¦x¦^4)
EDGE: bpP:p0:secavg#secularAverage | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-coef@L58-L58 | P_av and its analyticity
EDGE: bpP:p5:ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-coef@L58-L58 | P_av analytic by the holomorphic extension
EDGE: bpP:p0:oscaction#oscillatorAction | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-coef@L58-L58 | R_j = (p_j^2+q_j^2)/2 in the Taylor coefficients
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L58 uses differentiation under the integral and uniqueness of the analytic fourth Taylor jet from an o(norm(x)^4) remainder. The polynomial coefficient computation is explicit; the analytic integration and jet facts have no supplying edge in this packet.
```

### stepP:p5:be-an

```text
NODE: stepP:p5:be-an
KIND: step
TITLE: Analyticity
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-an@L59-L59
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-an@L59-L59
CONTRACT_ID: stepP:p5:be-an
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P~_av holomorphic extension; uniform bounds from bpP:p5:ext
SOURCE_QUANTIFIERS: (mu,I) in [0,mu_0] x D_c
SOURCE_CONCLUSION: the listed derivatives of P~_av at x = 0 are holomorphic in I, continuous in mu; symmetry of beta~ is symmetry of mixed derivatives
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:ext, bpP:p5:consts
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-an@L59-L59 | holomorphy and uniform bounds of P~
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-an@L59-L59 | P~_av and D_c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L59 invokes holomorphic parameter integration, continuity in the parameter, and commutation of mixed derivatives. These classical inputs are not supplied by ext or consts and have no approved input node here.
```

### stepP:p5:be-jet

```text
NODE: stepP:p5:be-jet
KIND: step
TITLE: (b) on $V$, then everywhere
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-jet@L60-L60
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-jet@L60-L60
CONTRACT_ID: stepP:p5:be-jet
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D_c connected (closure of V is connected, hVc; D_c a union of balls centred on it); the vanishing jet on V from be-coef
SOURCE_QUANTIFIERS: mu in [0,mu_0], multi-index alpha with ¦alpha¦ <= 4
SOURCE_CONCLUSION: each derivative d_x^alpha Q(mu,.;0) is holomorphic on D_c and vanishes on the real open set V, hence on D_c: part (b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:be-coef, stepP:p5:be-an, bpP:p5:consts
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:be-coef | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-jet@L60-L60 | vanishing jet and equality N~ = N on V
EDGE: stepP:p5:be-an | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-jet@L60-L60 | holomorphy of the derivatives on D_c
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:be-jet@L60-L60 | uses the complex strip, oscillator radius or averaged function of this package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L60 invokes the several-variable identity theorem from a real open set, and connectedness of the complex tube about closure(V). Neither is proved here or supplied by an approved external/import. The on-V jet is supplied by be-coef.
```

### stepP:p5:ur-schwarz

```text
NODE: stepP:p5:ur-schwarz
KIND: step
TITLE: Schwarz
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ur-schwarz@L73-L73
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ur-schwarz@L73-L73
CONTRACT_ID: stepP:p5:ur-schwarz
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g(t) = Q(mu,I;t x^) holomorphic on ¦t¦ < r_1, ¦g¦ <= M_1, vanishing to order >= 5 at 0 by birkhoff-ext (b)
SOURCE_QUANTIFIERS: (mu,I) fixed, x^ with ¦x^¦ = 1
SOURCE_CONCLUSION: ¦g(t)¦ <= M_1 ¦t¦^5 / r_1^5, so C_Q := M_1 r_1^{-5}
CONSTANT_SCOPE: C_Q depends on the data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:birkhoff-ext, stepP:p5:ur-bound
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:birkhoff-ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ur-schwarz@L73-L73 | vanishing jet of Q to order 4
EDGE: stepP:p5:ur-bound | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ur-schwarz@L73-L73 | bound ¦g¦ <= M_1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L73 invokes the one-variable maximum principle (equivalently the higher-order Schwarz estimate). L336 names Schwarz but creates no approved external node. The jet and uniform bound have the existing supplying edges.
```

### stepP:p5:bl-real

```text
NODE: stepP:p5:bl-real
KIND: step
TITLE: Real facts
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-real@L92-L92
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-real@L92-L92
CONTRACT_ID: stepP:p5:bl-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: HasFastDiffeo(H_0,W): g(omega-bar_0(I)) = I on W, g in C^1, omega-bar_0 analytic
SOURCE_QUANTIFIERS: I in W
SOURCE_CONCLUSION: omega-bar_0 is injective on W (contains closure V) and, differentiating g o omega-bar_0 = id (chain rule), d^2 H_0 = D omega-bar_0 is invertible on W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:fastdiffeo#HasFastDiffeomorphism, bpP:p0:fastfreq#fastFrequency
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:fastdiffeo#HasFastDiffeomorphism | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-real@L92-L92 | clause (iii): g o omega_{H_0} = id on W, g C^1
EDGE: bpP:p0:fastfreq#fastFrequency | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-real@L92-L92 | omega-bar_0 = omega_{H_0} = dH_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L92 uses the chain rule for g composed with the fast frequency map and the finite-dimensional inference that a square linear map with a left inverse is invertible. The frozen fast-diffeomorphism definition supplies the premises but does not itself prove these classical facts; no supplying input node is present.
```

### stepP:p5:bl-comp

```text
NODE: stepP:p5:bl-comp
KIND: step
TITLE: Compactness
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-comp@L93-L93
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-comp@L93-L93
CONTRACT_ID: stepP:p5:bl-comp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: z_m != z_m' in (closure V)_{1/m} with ¦omega~_0(z_m) - omega~_0(z_m')¦ < ¦z_m - z_m'¦/m (negation of the claim); closure of V compact; bl-real injectivity and invertibility
SOURCE_QUANTIFIERS: m large; limit points x, x' in closure V
SOURCE_CONCLUSION: contradiction in both cases x != x' (injectivity) and x = x' (continuity of d omega~_0 near x); the operator bound follows by differentiating along z' -> z; M0bar < infinity by the bounds of bpP:p5:ext
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:bl-real, bpP:p5:ext
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:bl-real | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-comp@L93-L93 | injectivity of omega-bar_0 on closure V and invertibility of d omega-bar_0
EDGE: bpP:p5:ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bl-comp@L93-L93 | omega~_0 = dH~_0, its continuity and the bound M_0 for M0bar
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L93 uses compact sequential extraction in finite-dimensional complex space (listed as compactness at L336). No approved node supplies this classical input. The two-case contradiction is explicitly given in the source.
```

### stepP:p5:fi-blk

```text
NODE: stepP:p5:fi-blk
KIND: step
TITLE: (b) Blocks
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-blk@L128-L128
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-blk@L128-L128
CONTRACT_ID: stepP:p5:fi-blk
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U_11 = d omega~_0 + mu N~_11 =: A, U_12 = mu N~_12, U_21 = U_12^T, U_22 = mu beta~; mu A_N <= c_0/2 and 4 mu A_N^2 L_beta <= c_0
SOURCE_QUANTIFIERS: J in E_1
SOURCE_CONCLUSION: ¦A^{-1}¦ <= 2/c_0; the Schur complement S = mu(beta~ - mu N~_21 A^{-1} N~_12) satisfies ¦S^{-1}¦ <= 2 L_beta/mu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:bilip, bpP:p5:freq-data, bpP:p3:ext-neumann
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:bilip | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-blk@L128-L128 | ¦(d omega~_0)^{-1}¦ <= c_0^{-1}
EDGE: bpP:p5:freq-data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-blk@L128-L128 | A_N bounds on N~ derivatives and ¦beta~^{-1}¦ <= L_beta
EDGE: bpP:p3:ext-neumann | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-blk@L128-L128 | Neumann inversion of A and of the normalized Schur complement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L128 uses Schur-complement algebra without a supplying approved node; L336 names it but is not an external declaration. Neumann inversion is supplied separately by bpP:p3:ext-neumann.
```

### stepP:p5:fi-inv

```text
NODE: stepP:p5:fi-inv
KIND: step
TITLE: Inverse
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-inv@L129-L129
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-inv@L129-L129
CONTRACT_ID: stepP:p5:fi-inv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block inversion of U with the bounds of fi-blk
SOURCE_QUANTIFIERS: J in E_1
SOURCE_CONCLUSION: the blocks T_11, T_12, T_21, T_22 of U^{-1} have norms <= 2/c_0 + 8 mu A_N^2 L_beta c_0^{-2}, 4 A_N L_beta/c_0, 4 A_N L_beta/c_0, 2 L_beta/mu; hence the row-sum bounds with C_U
CONSTANT_SCOPE: C_U depends on the data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:fi-blk, bpP:p5:bilip, bpP:p5:freq-data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:fi-blk | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-inv@L129-L129 | A^{-1} and S^{-1} bounds
EDGE: bpP:p5:bilip | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-inv@L129-L129 | c_0 in the block norms and M0bar in C_U
EDGE: bpP:p5:freq-data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fi-inv@L129-L129 | A_N, L_beta in the block norms and C_U
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L129 invokes the block inverse identity, listed at L336 but without an approved external or proof of that identity. The displayed blocks and their bounds are preserved verbatim; fi-blk supplies the invertible diagonal blocks.
```

### stepP:p5:st-ivt

```text
NODE: stepP:p5:st-ivt
KIND: step
TITLE: Intermediate value
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-ivt@L311-L311
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-ivt@L311-L311
CONTRACT_ID: stepP:p5:st-ivt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f(s) := m(D_0 intersect {x_1 <= s}) nondecreasing; f(+inf) = m(D_0) >= (1 - C_* sqrt r) meas F > 0 (lower bound, (r5)); additivity; slices null
SOURCE_QUANTIFIERS: s in R
SOURCE_CONCLUSION: f is continuous (right: decreasing intersections and additivity; left: slices null), so there is s with f(s) = theta_0 := min{m(D_0)/2, (1/2) sqrt r meas F} > 0; B := D_0 intersect {x_1 <= s} is closed in D_0, hence sigma-compact, and so is D_0 minus B
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:lower, stepP:p5:st-null, stepP:p5:st-add, bpP:p5:rstar, bpP:p5:kset, bpP:p0:cylinder#cylinderCell
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:lower | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-ivt@L311-L311 | m(D_0) = meas(S intersect F) >= (1 - C_* sqrt r) meas F
EDGE: stepP:p5:st-null | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-ivt@L311-L311 | left-continuity: m(H_s) = 0
EDGE: stepP:p5:st-add | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-ivt@L311-L311 | additivity and continuity from above of m
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-ivt@L311-L311 | (r5): (C_* + 1/2) sqrt r <= 1/2 so the lower bound is positive
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-ivt@L311-L311 | D_0 sigma-compact
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-ivt@L311-L311 | the source statement directly uses this frozen predicate or cell definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L311 invokes continuity of finite measure along monotone sequences and the intermediate value theorem. L336 lists the former but creates no approved external; neither classical input is supplied by the existing edges. Additivity, null slices and the lower bound retain their stated contracts.
```

### stepP:p5:fd-bd

```text
NODE: stepP:p5:fd-bd
KIND: step
TITLE: Bounds
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-bd@L110-L110
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-bd@L110-L110
CONTRACT_ID: stepP:p5:fd-bd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N~ is a polynomial in J_2 with coefficients P~_0, Omega~, beta~ holomorphic and bounded on D_c; rho_c <= delta_c/16
SOURCE_QUANTIFIERS: J in E
SOURCE_CONCLUSION: N~, d_J N~, d^2_J N~ are bounded by A_N on E; J_1-derivatives up to order 3 bounded on (closure V)_{2 rho_c}
CONSTANT_SCOPE: A_N depends on the data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:birkhoff-ext, bpP:p5:ext, K:bp:p1:cauchy-open, bpP:p5:consts, bpP:p5:bilip
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:birkhoff-ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-bd@L110-L110 | coefficients holomorphic and bounded on D_c
EDGE: bpP:p5:ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-bd@L110-L110 | bound M_P and Cauchy
EDGE: K:bp:p1:cauchy-open | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-bd@L110-L110 | Cauchy estimates for derivatives in J_1
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-bd@L110-L110 | uses the complex strip, oscillator radius or averaged function of this package
EDGE: bpP:p5:bilip | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-bd@L110-L110 | uses rho_c, delta_c or M0bar in the domain or bound directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p5:param-facts

```text
NODE: bpP:p5:param-facts
KIND: lemma
TITLE: Consequences of the parameter choice
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:param-facts@L158-L163
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:param-facts@L164-L166
CONTRACT_ID: bpP:p5:param-facts
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < r < r_* (bpP:p5:rstar); 0 < mu < min{mu_0, r^6/(log 1/r)^c}; objects of bpP:p5:params
SOURCE_QUANTIFIERS: the constants fixed first; then r, mu in the stated ranges
SOURCE_CONCLUSION: (a) mu_2 <= r^6 (log 1/r)^{-(2 tau+1)}, mu < mu_1, Kbar s_* = 30 log(1/r) >= 6, gamma-bar <= C_gamma sqrt r; (b) rhobar <= rho_c, rhobar >= lambda_1 if G >= 2 M0bar kappa_1 (so rho = lambda_1/2 <= rhobar/2), l >= lambda_2/2 >= r^2/4; (c) meas D_t >= (1/2) meas V, meas Dcheck >= (1/4) meas V, meas D_t <= 4 meas Dcheck
CONSTANT_SCOPE: C_gamma depends on the data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:rstar, bpP:p5:params, bpP:p4:collar, bpP:p5:dio-one, bpP:p5:bilip, bpP:p4:conv#data, bpP:p5:consts
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:param-facts@L159-L165 | conditions (r1) to (r4)
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:param-facts@L160-L160 | Kbar, gamma-bar, rhobar, lambda_i, l, Dcheck
EDGE: bpP:p4:collar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:param-facts@L165-L165 | (b): meas D_t >= meas V - A t
EDGE: bpP:p5:dio-one | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:param-facts@L165-L165 | meas(D_t minus Dcheck) <= c_dio gamma-bar
EDGE: bpP:p5:bilip | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:param-facts@L165-L165 | M0bar in rhobar <= rho_c
EDGE: bpP:p4:conv#data | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:param-facts@L165-L165 | D_t, A, meas V
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:param-facts@L158-L163 | uses the complex strip, oscillator radius or averaged function of this package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:av-R2

```text
NODE: stepP:p5:av-R2
KIND: step
TITLE: (R2) and the remainder
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178
CONTRACT_ID: stepP:p5:av-R2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: alpha_av d = gamma-bar^2 s_*/(4 M0bar Kbar^{2 tau+1}) >= G^2 s_* mu_2 r^{-5}/(4 M0bar) (first branch of gamma-bar); G^2 >= 2^14 (1+b) M0bar and G^2 >= 1600 (1+b) M0bar/s_*
SOURCE_QUANTIFIERS: (r,mu) admissible
SOURCE_CONCLUSION: (R2): 2^12 (1+b) Kbar s_* mu_2 <= alpha_av d and 400 (1+b) mu_2/(alpha_av d) <= r^5; hence the N-norm of P~_rem <= mu_2 r^5 + mu_2 r^5 = 2 Lambda_P mu r^5
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:params, bpP:p5:order, bpP:p2:averaged-remainder, stepP:p5:av-dict, bpP:p5:consts, bpP:p5:bilip, bpP:p5:rstar, bpP:p5:kam-cond#scales
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178 | gamma-bar, alpha_av, d
EDGE: bpP:p5:order | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178 | the conditions on G are met by the choice of G in Remark order item 4
EDGE: bpP:p2:averaged-remainder | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178 | remainder bound of the proposition
EDGE: stepP:p5:av-dict | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178 | the matched setting
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178 | uses the complex strip, oscillator radius or averaged function of this package
EDGE: bpP:p5:bilip | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178 | uses rho_c, delta_c or M0bar in the domain or bound directly
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178 | uses the threshold or C_gamma and its smallness conditions directly
EDGE: bpP:p5:kam-cond#scales | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-R2@L178-L178 | uses the numerical constant choice separately from the later estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The G inequalities are supplied by the scale-choice projection of kam-cond item (3), not by the order remark alone. The threshold edge supplies the small-r regime; Kbar r^5<=1 follows from (r2), r<=eps_an/4<=s_*/8 and r log(1/r)<=1.
```

### stepP:p5:av-id

```text
NODE: stepP:p5:av-id
KIND: step
TITLE: Identification
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179
CONTRACT_ID: stepP:p5:av-id
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: mu_2 <P_2> = mu P~_av = mu N~ + mu Q (birkhoff-ext); displacement bounds of averaged-remainder converted by use5 (3): alpha_av s_* ¦Delta I¦ <= 6 mu_2, alpha_av eps_an ¦Delta p¦, ¦Delta q¦ <= 9 mu_2; gamma-bar >= G sqrt(mu_2) Kbar^{tau+1/2} r^{-5/2}
SOURCE_QUANTIFIERS: (r,mu) admissible
SOURCE_CONCLUSION: the displayed identity H_mu o Psi-bar = H~_0 + mu N~ + mu Q + P~_rem and the displacements Delta_I, Delta_max with mu_2 Kbar^tau/gamma-bar <= r^{11/2}/G
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:averaged-remainder, bpP:p5:birkhoff-ext, bpP:p2:use5, bpP:p5:params, stepP:p5:av-dict, stepP:p5:av-R2, bpP:p5:consts
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:averaged-remainder | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179 | average and displacement bounds
EDGE: bpP:p5:birkhoff-ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179 | P~_av = N~ + Q
EDGE: bpP:p2:use5 | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179 | conversion of the displacement bounds to CP variables
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179 | alpha_av, gamma-bar
EDGE: stepP:p5:av-dict | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179 | the matched setting
EDGE: stepP:p5:av-R2 | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179 | remainder bound of the N-norm
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:av-id@L179-L179 | uses the complex strip, oscillator radius or averaged function of this package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p5:phi-chart

```text
NODE: bpP:p5:phi-chart
KIND: lemma
TITLE: $\Phi$ is a $1$-chart with the lattice properties of \Pref{bpP:p1:cyl-pipeline}
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L188-L191
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L192-L196
CONTRACT_ID: bpP:p5:phi-chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < r < r_*, admissible mu; Phi, Pol, O_0 of bpP:p5:phi; Psi-bar of bpP:p5:avg; H_mu = H_0 + mu P
SOURCE_QUANTIFIERS: (r,mu) admissible; k in Z^n, z, z' in O_0
SOURCE_CONCLUSION: Phi is a symplectic chart on O_0 (Definition chart, c = 1), O_0 + (2 pi k,0) = O_0, Phi(z + (2 pi k,0)) = Phi(z) + shift(k_f), and Phi(z') = Phi(z) + shift(k_f) implies z' = z + (2 pi m, 0) for some m in Z^n; H_mu o Phi = h_mu + f_mu on O_0 with h_mu(J) = H~_0(J_1) + mu N~(J) and f_mu = (mu Q + P~_rem) o Pol
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:phi, bpP:p5:avg, bpP:p1:chart, bpP:p0:degham#degenerateHamiltonian, bpP:p0:fastshift#fastShift, stepP:p5:pc-img, stepP:p5:pc-lat, stepP:p5:pc-ham, bpP:p5:params, bpP:p5:birkhoff-ext
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:phi | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L189-L189 | Phi, Pol, O_0
EDGE: bpP:p5:avg | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L189-L190 | Psi-bar and the identity for H_mu o Psi-bar
EDGE: bpP:p1:chart | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L189-L189 | Definition of a (conformally) symplectic chart with c = 1
EDGE: bpP:p0:degham#degenerateHamiltonian | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L189-L189 | H_mu
EDGE: bpP:p0:fastshift#fastShift | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L189-L189 | shift(k_f)
EDGE: stepP:p5:pc-img | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L193-L193 | proof step
EDGE: stepP:p5:pc-lat | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L194-L194 | proof step
EDGE: stepP:p5:pc-ham | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L195-L195 | proof step
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L188-L191 | uses the parameter definitions (widths, scales, domain or shell) directly
EDGE: bpP:p5:birkhoff-ext | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:phi-chart@L188-L191 | uses N-tilde and Q in the displayed Hamiltonian directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:pc-img

```text
NODE: stepP:p5:pc-img
KIND: step
TITLE: Image
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193
CONTRACT_ID: stepP:p5:pc-img
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: z in O_0; abs bounds sqrt(2 J_2) < 2 sqrt(lambda_2) <= 2 r < eps_an/2; Psi-bar real analytic and symplectic (Prop avg); Pol a 1-chart on {J_2>0}
SOURCE_QUANTIFIERS: z in O_0
SOURCE_CONCLUSION: Pol(O_0) is contained in W intersect R^{2n}, so Psi-bar is defined and holomorphic there; Phi = Psi-bar o Pol is a symplectic chart (composition of charts)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:avg, bpP:p1:hol-chart, bpP:p1:typical, bpP:p5:phi, bpP:p5:rstar, bpP:p5:params, bpP:p5:consts
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:avg | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193 | Psi-bar real analytic and symplectic on W
EDGE: bpP:p1:hol-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193 | a real-analytic restriction of a holomorphic symplectic map is a chart
EDGE: bpP:p1:typical | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193 | Remark typical (1) for each oscillator and (3) for compositions
EDGE: bpP:p5:phi | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193 | Pol, O_0
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193 | r_* <= eps_an/4 gives 2r < eps_an/2
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193 | lambda_2 = r^2/2
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:pc-img@L193-L193 | uses the complex strip, oscillator radius or averaged function of this package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:kh-dom

```text
NODE: stepP:p5:kh-dom
KIND: step
TITLE: Domain
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-dom@L204-L204
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-dom@L204-L204
CONTRACT_ID: stepP:p5:kh-dom
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D_rho = Dcheck_rho x (A_sh)_rho (max norm) with rho <= rhobar/2 <= rho_c; ¦J_2¦ < lambda_2' + rho < 1; polar image within W
SOURCE_QUANTIFIERS: (r,mu) admissible
SOURCE_CONCLUSION: D_rho subset E_1; the polar image of D_rho x {¦Im psi¦ < sigma_av} lies in W (¦(p-bar,q-bar)¦ < 2r <= eps_an/2); so f_mu is holomorphic on D_rho x {¦Im psi¦ < sigma_av}, 2 pi-periodic and real at real points, and h_mu is holomorphic on D_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:params, bpP:p5:param-facts, bpP:p5:freq-inj, bpP:p5:avg, bpP:p5:phi, bpP:p5:consts, bpP:p5:phi-chart, bpP:p5:rstar
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-dom@L204-L204 | D, rho, Dcheck, A_sh, rhobar
EDGE: bpP:p5:param-facts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-dom@L204-L204 | rho <= rhobar/2 <= rho_c, lambda_2' + rho < 1
EDGE: bpP:p5:freq-inj | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-dom@L204-L204 | E_1 = (closure V)_{rho_c} x {¦J_2¦ < 1}
EDGE: bpP:p5:avg | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-dom@L204-L204 | W and holomorphy of Psi-bar
EDGE: bpP:p5:phi | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-dom@L204-L204 | polar image under Pol
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-dom@L204-L204 | sigma_av, eps_an
EDGE: bpP:p5:phi-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-dom@L204-L204 | f_mu = (mu Q + P~_rem) o Pol
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-dom@L204-L204 | uses the threshold or C_gamma and its smallness conditions directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:kh-f

```text
NODE: stepP:p5:kh-f
KIND: step
TITLE: $f$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206
CONTRACT_ID: stepP:p5:kh-f
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: on the polar image ¦x¦ < 2r <= r_1; sup bounds of mu Q (uniform remainder) and P~_rem (N-norm bound of avg); sup-to-weighted conversion with loss sigma_av/2
SOURCE_QUANTIFIERS: (r,mu) admissible
SOURCE_CONCLUSION: sup of ¦f_mu¦ <= C_R mu r^5 on the strip sigma_av, hence the N-norm of f_3 at (rho, sigma_tot) is <= C_R coth(sigma_av/4)^n mu r^5/2 pi <= C_1 mu r^5 = E
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:uniform-remainder, bpP:p5:avg, bpP:p5:consts, N:bpN:p4:sup-weighted, stepP:p5:kh-dom, bpP:p5:phi-chart, bpP:p5:rstar, bpP:p5:params
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:uniform-remainder | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | ¦Q¦ <= C_Q ¦x¦^5
EDGE: bpP:p5:avg | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | N-norm of P~_rem <= 2 Lambda_P mu r^5
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | sup-to-weighted conversion and Lambda_P
EDGE: N:bpN:p4:sup-weighted | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | sup <= weighted norm and weighted <= coth . sup
EDGE: stepP:p5:kh-dom | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | polar image inside W
EDGE: bpP:p5:phi-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | f_mu = (mu Q + P~_rem) o Pol
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | 2r <= r_1 from r_* <= r_1/2
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | uses the parameter definitions (widths, scales, domain or shell) directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:kh-norm

```text
NODE: stepP:p5:kh-norm
KIND: step
TITLE: Normalizations
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-norm@L207-L207
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-norm@L207-L207
CONTRACT_ID: stepP:p5:kh-norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M = C_1, hat M = C_1 mu, bar M_i; mu <= 1
SOURCE_QUANTIFIERS: (r,mu) admissible
SOURCE_CONCLUSION: hat M <= M and bar M_i <= bar M, the normalisations required by Proposition two-scale-kam; all numerical constants are upper bounds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:rem-norm, stepP:p5:kh-h, bpP:p3:two-scale-kam, bpP:p5:rstar
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:rem-norm | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-norm@L207-L207 | normalisation hat M <= M, bar M_i <= bar M and the order of computing the constants
EDGE: stepP:p5:kh-h | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-norm@L207-L207 | values M, hat M, bar M
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-norm@L207-L207 | the normalisation required by its data
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-norm@L207-L207 | uses the threshold or C_gamma and its smallness conditions directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:kc-small

```text
NODE: stepP:p5:kc-small
KIND: step
TITLE: Smallness
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kc-small@L225-L225
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kc-small@L225-L225
CONTRACT_ID: stepP:p5:kc-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the choice of kappa_0, kappa_1 (items 1, 2 of the lemma); gamma_2 = mu gamma_1
SOURCE_QUANTIFIERS: (r,mu) as above
SOURCE_CONCLUSION: hat c E-hat < 1 (KAM condition), gamma_2 = mu gamma_1 <= gamma_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:kc-eval, bpP:p3:constants, bpP:p5:params, bpP:p5:kam-cond#scales
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:kc-eval | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kc-small@L225-L225 | the displayed value of E-hat
EDGE: bpP:p3:constants | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kc-small@L225-L225 | hat c and the KAM condition hat c E-hat < 1
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kc-small@L225-L225 | uses the parameter definitions (widths, scales, domain or shell) directly
EDGE: bpP:p5:kam-cond#scales | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kc-small@L225-L225 | uses the numerical constant choice separately from the later estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p5:rK

```text
NODE: bpP:p5:rK
KIND: lemma
TITLE: The radius $r_K$ (what Part~4 should state instead of $r_K\le C\hat\rho\le C\gamma_2$)
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rK@L228-L231
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rK@L232-L234
CONTRACT_ID: bpP:p5:rK
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation of bpP:p5:kam-cond; r_K := 32 E-hat rho-hat (the enlargement radius of bpP:p3:two-scale-kam)
SOURCE_QUANTIFIERS: all admissible (r,mu)
SOURCE_CONCLUSION: r_K < rho-hat/(256 n) <= lambda_1/(512 n); r_K < min{t, lambda_1}; r_K < rhobar/2; 2 r_K/l <= kappa_1 sqrt(r)/(64 n); (1 + 2 r_K/l)^b < 2
CONSTANT_SCOPE: none (functions of (r,mu))
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:kam-cond, bpP:p3:two-scale-kam, bpP:p5:params, stepP:p5:rk-dir, bpP:p5:rstar
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:kam-cond | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rK@L229-L229 | hat c E-hat < 1, E-hat and rho-hat
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rK@L229-L229 | r_K = 32 E-hat rho-hat is its enlargement radius
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rK@L230-L230 | t, lambda_1, l, rhobar
EDGE: stepP:p5:rk-dir | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rK@L233-L233 | proof step
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rK@L228-L231 | uses the threshold or C_gamma and its smallness conditions directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p5:location

```text
NODE: bpP:p5:location
KIND: lemma
TITLE: Location of the tori in the cylinder
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L241-L243
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L244-L248
CONTRACT_ID: bpP:p5:location
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi_omega = (v, theta + u) a torus of bpP:p3:two-scale-kam (so v in Re(D_{r_K})); z := Phi(2 pi (theta + u), v) in Ph_n; Delta_max of bpP:p5:avg; (r5): sqrt 2 Delta_max <= kappa_1 r^{3/2}; 0 < r < r_*
SOURCE_QUANTIFIERS: (r,mu) admissible; omega in Omega_*, theta in R^n
SOURCE_CONCLUSION: v lies in the O_0-range (v_1 in Re(Dcheck_{rhobar/2}), v_2 in (lambda_1/2, 2 lambda_2)^b), I(z) in V and p_j^2 + q_j^2 < r^2 for all j; hence z in C(V,r)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:two-scale-kam, bpP:p5:phi, bpP:p5:avg, bpP:p0:cylinder#cylinder, bpP:p5:rstar, stepP:p5:lo-range, stepP:p5:lo-act, stepP:p5:lo-disc, bpP:p5:params
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L242-L242 | the torus phi_omega and v in Re(D_{r_K})
EDGE: bpP:p5:phi | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L242-L242 | Phi, O_0
EDGE: bpP:p5:avg | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L242-L242 | Delta_max, Delta_I
EDGE: bpP:p0:cylinder#cylinder | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L242-L242 | z in C(V,r)
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L242-L242 | (r5), r < r_*
EDGE: stepP:p5:lo-range | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L245-L245 | proof step
EDGE: stepP:p5:lo-act | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L246-L246 | proof step
EDGE: stepP:p5:lo-disc | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L247-L247 | proof step
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:location@L241-L243 | uses the parameter definitions (widths, scales, domain or shell) directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:lo-act

```text
NODE: stepP:p5:lo-act
KIND: step
TITLE: Actions
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-act@L246-L246
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-act@L246-L246
CONTRACT_ID: stepP:p5:lo-act
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: I = I-bar + (I - I-bar), I-bar = v_1, dist(I-bar, D_t) < r_K, ¦I - I-bar¦ <= Delta_I; r_K + Delta_I < t
SOURCE_QUANTIFIERS: torus point
SOURCE_CONCLUSION: I in N_{r_K+Delta_I}(D_t) subset V by the collar lemma (c)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:avg, bpP:p4:collar, bpP:p5:rK, bpP:p5:params, bpP:p4:conv#data, bpP:p5:rstar
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:avg | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-act@L246-L246 | ¦I - I-bar¦ <= Delta_I
EDGE: bpP:p4:collar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-act@L246-L246 | (c): N_s(D_t) subset V for s < t
EDGE: bpP:p5:rK | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-act@L246-L246 | r_K < t
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-act@L246-L246 | t = sqrt r and Delta_I < t via the bound r^{11/2}/G
EDGE: bpP:p4:conv#data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-act@L246-L246 | N_s and D_t
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-act@L246-L246 | uses the threshold or C_gamma and its smallness conditions directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p5:torus-conv

```text
NODE: bpP:p5:torus-conv
KIND: proposition
TITLE: Each torus is a frozen cylinder torus with frozen frequencies
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L256-L258
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L259-L264
CONTRACT_ID: bpP:p5:torus-conv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < r < r_*, admissible mu; omega in Omega_*; w := omega; K_omega of bpP:p5:kset; C_w := (M_omega + A_N)/2 pi + 1, M_omega := sup over closure V of ¦omega-bar_0¦
SOURCE_QUANTIFIERS: r_*, mu admissible fixed; omega in Omega_*
SOURCE_CONCLUSION: IsCylTorus(H_mu, C(V,r), w, K_omega); w is (min{gamma_1,gamma_2}, tau)-Diophantine with tau = n+1 > a+b; ¦w^f¦ <= C_w, ¦w^s¦ <= C_w mu; K_omega(R^n) subset C(V,r)
CONSTANT_SCOPE: C_w depends on the data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:kset, bpP:p0:cyltorus#IsCylinderTorus, bpP:p0:cylinder#cylinder, bpP:p0:diophantine#IsDiophantine, bpP:p1:dio-sources, bpP:p5:rstar, stepP:p5:tc-chart, stepP:p5:tc-LT, stepP:p5:tc-pipe, stepP:p5:tc-freq, bpP:p5:params, bpP:p5:freq-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L257-L257 | Omega_*, K_omega
EDGE: bpP:p0:cyltorus#IsCylinderTorus | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L257-L257 | the predicate IsCylTorus
EDGE: bpP:p0:cylinder#cylinder | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L257-L257 | C(V,r)
EDGE: bpP:p0:diophantine#IsDiophantine | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L257-L257 | (gamma,tau)-Diophantine
EDGE: bpP:p1:dio-sources | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L257-L257 | Diophantine clause for the frozen predicate
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L257-L257 | r < r_*
EDGE: stepP:p5:tc-chart | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L260-L260 | proof step
EDGE: stepP:p5:tc-LT | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L261-L261 | proof step
EDGE: stepP:p5:tc-pipe | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L262-L262 | proof step
EDGE: stepP:p5:tc-freq | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L263-L263 | proof step
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L256-L258 | uses the parameter definitions (widths, scales, domain or shell) directly
EDGE: bpP:p5:freq-data | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:torus-conv@L256-L258 | uses A_N in the displayed C_w directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:tc-chart

```text
NODE: stepP:p5:tc-chart
KIND: step
TITLE: Chart data
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-chart@L260-L260
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-chart@L260-L260
CONTRACT_ID: stepP:p5:tc-chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lemma phi-chart supplies O_0, Phi with the hypotheses of the pipeline lemma (d = n); G_3 = (2 pi)^{-1} (H_mu o Phi)(2 pi z_1, z_2)
SOURCE_QUANTIFIERS: (r,mu) admissible
SOURCE_CONCLUSION: G_3 equals H_3 in the frozen order pi on O = S_{2 pi}^{-1}(O_0), so the pipeline hypotheses hold
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:phi-chart, bpP:p1:cyl-pipeline, bpP:p5:kam-hyp, bpP:p5:phi, bpP:p1:period-convert
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:phi-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-chart@L260-L260 | O_0, Phi and H_mu o Phi = h_mu + f_mu
EDGE: bpP:p1:cyl-pipeline | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-chart@L260-L260 | hypotheses of the pipeline lemma
EDGE: bpP:p5:kam-hyp | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-chart@L260-L260 | H_3 = (h_mu + f_mu)(.,2 pi theta)/2 pi
EDGE: bpP:p5:phi | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-chart@L260-L260 | uses Phi, Pol or O_0 directly
EDGE: bpP:p1:period-convert | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-chart@L260-L260 | uses S_{2pi} directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:tc-LT

```text
NODE: stepP:p5:tc-LT
KIND: step
TITLE: $\operatorname{LT}(G_3,O,w,K_3)$, $K_3=\pi\circ\varphi_\omega$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261
CONTRACT_ID: stepP:p5:tc-LT
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi_omega real analytic (Prop two-scale-kam (a)); K_3 = pi o phi_omega; K_3(R^n) subset O by location; H_mu analytic near Phi(.) in C(V,r) since r < r_0, (H1), H_0 analytic on W; G_3 = H_3 on Re(D_rho) x R^n
SOURCE_QUANTIFIERS: omega in Omega_*
SOURCE_CONCLUSION: LT(G_3, O, w, K_3) holds: (L1) analyticity, K_3(R^n) subset O, G_3 differentiable at K_3(theta); (L2) periodicity; (L3) injectivity modulo translations; (L4), (L5) isotropy and injectivity of the derivative; (L6) invariance under the Hamiltonian flow in the order pi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:two-scale-kam, bpP:p5:location, stepP:p5:lo-range, bpP:p1:chart-field, bpP:p1:order, bpP:p1:lattice-torus, bpP:p5:rK, bpP:p5:phi-chart, bpP:p0:fastdiffeo#HasFastDiffeomorphism, bpP:p0:degham#degenerateHamiltonian, stepP:p5:tc-chart, bpP:p5:params, bpP:p5:phi, bpP:p5:kset, bpP:p1:period-convert
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | conclusions (a), (b), (c) and injectivity modulo translations
EDGE: bpP:p5:location | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | K_3(R^n) subset O and the range v
EDGE: stepP:p5:lo-range | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | range of v
EDGE: bpP:p1:chart-field | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | chart-field lemma: H_mu is analytic near the chart image
EDGE: bpP:p1:order | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | relabelling pi of the frozen order
EDGE: bpP:p1:lattice-torus | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | the lattice-torus predicate LT
EDGE: bpP:p5:rK | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | r_K < rho
EDGE: bpP:p5:phi-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | G_3 = H_3
EDGE: bpP:p0:fastdiffeo#HasFastDiffeomorphism | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | H_0 analytic on W
EDGE: bpP:p0:degham#degenerateHamiltonian | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | H_mu = H_0 + mu P near the image
EDGE: stepP:p5:tc-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L260-L261 | O and G_3
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | uses the parameter definitions (widths, scales, domain or shell) directly
EDGE: bpP:p5:phi | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | uses Phi, Pol or O_0 directly
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | uses D_0, K_omega, S_B or the action-angle torus union directly
EDGE: bpP:p1:period-convert | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-LT@L261-L261 | uses S_{2pi} directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:tc-freq

```text
NODE: stepP:p5:tc-freq
KIND: step
TITLE: Frequencies
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-freq@L263-L263
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-freq@L263-L263
CONTRACT_ID: stepP:p5:tc-freq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega = omega_0(I_0), I_0 = (J_1,J_2) in D real, ¦J_2¦ <= lambda_2 <= 1; ¦G¦, ¦Theta¦ <= A_N; gamma_1, gamma_2 > 0, tau > n
SOURCE_QUANTIFIERS: omega in Omega_*
SOURCE_CONCLUSION: w^f = (omega-bar_0(J_1) + mu G)/2 pi and w^s = mu Theta/2 pi are bounded by C_w and C_w mu; w is (min{gamma_1,gamma_2}, tau)-Diophantine
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:kset, bpP:p5:freq-data, bpP:p0:fastfreq#fastFrequency, bpP:p1:dio-sources, bpP:p0:diophantine#IsDiophantine, bpP:p5:kam-hyp, bpP:p5:params
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-freq@L263-L263 | omega = omega_0(I_0) with I_0 in D
EDGE: bpP:p5:freq-data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-freq@L263-L263 | ¦G¦, ¦Theta¦ <= A_N
EDGE: bpP:p0:fastfreq#fastFrequency | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-freq@L263-L263 | omega-bar_0 and M_omega
EDGE: bpP:p1:dio-sources | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-freq@L263-L263 | (a): Diophantine clause
EDGE: bpP:p0:diophantine#IsDiophantine | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-freq@L263-L263 | IsDiophantine
EDGE: bpP:p5:kam-hyp | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-freq@L263-L263 | omega_0 = F_mu/2 pi
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:tc-freq@L263-L263 | uses the parameter definitions (widths, scales, domain or shell) directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p5:cell-transfer

```text
NODE: bpP:p5:cell-transfer
KIND: lemma
TITLE: Borelness, whole tori, cell measure
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L266-L268
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L269-L275
CONTRACT_ID: bpP:p5:cell-transfer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B subset D_0 sigma-compact; A_B := K_B intersect (R^n x [0,1)^n) (the measured representative: an output-angle cell); 0 < r < r_*, admissible mu
SOURCE_QUANTIFIERS: (r,mu) admissible; B subset D_0 sigma-compact
SOURCE_CONCLUSION: (a) A_B is sigma-compact; S_B is Borel, S_B subset C(V,r), and every point of S_B lies on some K_omega(R^n) subset S_B; (b) meas(S_B intersect F(V,r)) = (2 pi)^n meas A_B
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:kset, bpP:p0:cylinder#cylinderCell, bpP:p0:cylinder#cylinder, stepP:p5:ct-cell, stepP:p5:ct-dec, stepP:p5:ct-disj, stepP:p5:ct-count, stepP:p5:ct-liou, bpP:p5:rstar
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L267-L267 | K_B, S_B, K_omega
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L267-L267 | F(V,r)
EDGE: bpP:p0:cylinder#cylinder | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L267-L267 | S_B subset C(V,r)
EDGE: stepP:p5:ct-cell | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L270-L270 | proof step
EDGE: stepP:p5:ct-dec | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L271-L271 | proof step
EDGE: stepP:p5:ct-disj | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L272-L272 | proof step
EDGE: stepP:p5:ct-count | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L273-L273 | proof step
EDGE: stepP:p5:ct-liou | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L274-L274 | proof step
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:cell-transfer@L266-L268 | uses the threshold or C_gamma and its smallness conditions directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:ct-dec

```text
NODE: stepP:p5:ct-dec
KIND: step
TITLE: Decomposition
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271
CONTRACT_ID: stepP:p5:ct-dec
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: T := Phi(S_{2 pi} pi A_B); S_{2 pi} pi A_B subset Q'' := [0,2pi)^n intersect O_0 (location); Phi continuous on O_0; Phi(z + (2 pi k,0)) = Phi(z) + shift(k_f)
SOURCE_QUANTIFIERS: B sigma-compact
SOURCE_CONCLUSION: T is sigma-compact; S_B = union over k in Z^a of (T + shift(k)), hence Borel; every point of T is some K_omega(theta); part (a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:location, bpP:p5:phi-chart, bpP:p5:phi, bpP:p5:kset, bpP:p0:fastshift#fastShift, stepP:p5:ct-cell, bpP:p1:period-convert, bpP:p1:order
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:location | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271 | S_{2 pi} pi A_B subset O_0 and S_B subset C(V,r)
EDGE: bpP:p5:phi-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271 | lattice property of Phi
EDGE: bpP:p5:phi | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271 | Phi continuous on O_0
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271 | K_omega, S_B, K_B
EDGE: bpP:p0:fastshift#fastShift | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271 | shift(m_f)
EDGE: stepP:p5:ct-cell | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271 | sigma-compactness of A_B
EDGE: bpP:p1:period-convert | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271 | uses S_{2pi} directly
EDGE: bpP:p1:order | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-dec@L271-L271 | uses the coordinate permutation pi directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:ct-disj

```text
NODE: stepP:p5:ct-disj
KIND: step
TITLE: Disjointness and injectivity
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-disj@L272-L272
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-disj@L272-L272
CONTRACT_ID: stepP:p5:ct-disj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: z, z' in Q'' with Phi(z) + shift(k) = Phi(z') + shift(k'); (Q2) of the chart lemma
SOURCE_QUANTIFIERS: k, k' in Z^a
SOURCE_CONCLUSION: Phi is injective on S_{2 pi} pi A_B and the translates T + shift(k), k in Z^a, are pairwise disjoint
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:phi-chart, bpP:p5:location, bpP:p0:fastshift#fastShift, stepP:p5:ct-dec, bpP:p5:phi, bpP:p5:kset
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:phi-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-disj@L272-L272 | (Q2): Phi(z') = Phi(z) + shift(k - k') implies z' = z + (2 pi m,0)
EDGE: bpP:p5:location | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-disj@L272-L272 | both points in [0,2pi)^n intersect O_0
EDGE: bpP:p0:fastshift#fastShift | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-disj@L272-L272 | shift(k)
EDGE: stepP:p5:ct-dec | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-disj@L272-L272 | T and Q''
EDGE: bpP:p5:phi | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-disj@L272-L272 | uses Phi, Pol or O_0 directly
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-disj@L272-L272 | uses D_0, K_omega, S_B or the action-angle torus union directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:ct-count

```text
NODE: stepP:p5:ct-count
KIND: step
TITLE: Counting
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-count@L273-L273
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-count@L273-L273
CONTRACT_ID: stepP:p5:ct-count
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S_B subset C(V,r) so S_B intersect F = S_B intersect {phi in [0,2pi)^a}; translation invariance of meas; ct-dec, ct-disj
SOURCE_QUANTIFIERS: B sigma-compact
SOURCE_CONCLUSION: meas(S_B intersect F(V,r)) = sum over k of meas(T intersect {phi in [-2 pi k, 2 pi (1-k))}) = meas T (the slabs partition R^a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:ct-dec, stepP:p5:ct-disj, bpP:p0:cylinder#cylinderCell, bpP:p0:cylinder#cylinder, bpP:p0:fastshift#fastShift, bpP:p5:kset
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:ct-dec | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-count@L273-L273 | S_B = union of the translates T + shift(k)
EDGE: stepP:p5:ct-disj | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-count@L273-L273 | disjointness of the translates
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-count@L273-L273 | F(V,r) = C(V,r) intersect {phi in [0,2pi)^a}
EDGE: bpP:p0:cylinder#cylinder | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-count@L273-L273 | S_B subset C(V,r)
EDGE: bpP:p0:fastshift#fastShift | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-count@L273-L273 | shift(k)
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-count@L273-L273 | uses D_0, K_omega, S_B or the action-angle torus union directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:ct-liou

```text
NODE: stepP:p5:ct-liou
KIND: step
TITLE: Liouville
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274
CONTRACT_ID: stepP:p5:ct-liou
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Phi a 1-chart injective on the measurable set S_{2 pi} pi A_B; S_{2 pi} multiplies volume by (2 pi)^n; pi permutes coordinates
SOURCE_QUANTIFIERS: B sigma-compact
SOURCE_CONCLUSION: meas T = meas(S_{2 pi} pi A_B) = (2 pi)^n meas A_B
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:ct-disj, bpP:p1:liouville, bpP:p1:period-convert, bpP:p5:phi-chart, stepP:p5:ct-dec, bpP:p5:phi, bpP:p5:kset, bpP:p1:order
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:ct-disj | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274 | injectivity of Phi on S_{2 pi} pi A_B
EDGE: bpP:p1:liouville | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274 | charts scale Lebesgue measure on injectivity sets
EDGE: bpP:p1:period-convert | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274 | (a): S_{2 pi} multiplies volume by (2 pi)^n
EDGE: bpP:p5:phi-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274 | Phi is a 1-chart
EDGE: stepP:p5:ct-dec | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274 | T = Phi(S_{2 pi} pi A_B)
EDGE: bpP:p5:phi | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274 | uses Phi, Pol or O_0 directly
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274 | uses D_0, K_omega, S_B or the action-angle torus union directly
EDGE: bpP:p1:order | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:ct-liou@L274-L274 | uses the coordinate permutation pi directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:bu-dio

```text
NODE: stepP:p5:bu-dio
KIND: step
TITLE: Diophantine part
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286
CONTRACT_ID: stepP:p5:bu-dio
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D minus D_0 subset R := {(I,xi) in D_t x A_sh: F_mu(I,xi) not in D_{alpha_1,alpha_2,tau}}, alpha_i = 2 pi gamma_i; (S4) of bpP:p4:data holds with D = D_t, lambda_0 = 1, mu_1 of (r1) and the constants of freq-data; lambda = lambda_2' in [lambda_2/2, 1], Q = A_sh, gamma-bar_P4 = alpha_2/mu = 2 pi kappa_0 r^{5/2}; meas D_t >= (1/2) meas V
SOURCE_QUANTIFIERS: admissible (r,mu)
SOURCE_CONCLUSION: meas(D minus D_0) <= 4^{b+1} 2 pi kappa_0 (5 c-bar_1 + 4 c-bar_2) sqrt r meas D
CONSTANT_SCOPE: c-bar_1, c-bar_2 data-dependent bounds on c_1, c_2
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:freq, bpP:p4:data, bpP:p5:param-facts, bpP:p5:freq-data, bpP:p4:two-scale-diophantine-measure, bpP:p1:two-scale, bpP:p5:rstar, bpP:p5:params, bpP:p5:kset, bpP:p4:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:freq | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | the dictionary D minus D^dio = {omega_mu not in D_{alpha_1,alpha_2,tau}}
EDGE: bpP:p4:data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | (S4) with D = D_t, lambda_0 = 1
EDGE: bpP:p5:param-facts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | meas D_t >= (1/2) meas V, meas D_t <= 4 meas Dcheck, mu < mu_1
EDGE: bpP:p5:freq-data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | the constants Lambda_N, L_beta for (S4)
EDGE: bpP:p4:two-scale-diophantine-measure | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | measure of the non-Diophantine set R
EDGE: bpP:p1:two-scale | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | D_{alpha_1,alpha_2,tau}
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | mu_1 of (r1)
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | alpha_i, A_sh, lambda_2', gamma_i
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | D_0
EDGE: bpP:p4:conv#data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L286 | uses the inner core D_t and the volume of V directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:bu-collar

```text
NODE: stepP:p5:bu-collar
KIND: step
TITLE: Collar part
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287
CONTRACT_ID: stepP:p5:bu-collar
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Re(D_{r_K}) = N_{r_K}(Dcheck) x (lambda_1 - r_K, lambda_2' + r_K)^b; N_{r_K}(Dcheck) minus Dcheck subset (N_{r_K}(D_t) minus D_t) union (D_t minus Dcheck); meas Dcheck >= (1/4) meas V; (1 + 2 r_K/l)^b < 2
SOURCE_QUANTIFIERS: admissible (r,mu)
SOURCE_CONCLUSION: meas(Re(D_{r_K}) minus D) <= meas D [8 (A + c_dio C_gamma)/meas V + b kappa_1/16] sqrt r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:dc-prod, bpP:p4:collar, bpP:p5:dio-one, bpP:p5:rK, bpP:p5:param-facts, bpP:p5:params, K:bp:p1:ext-lebesgue, bpP:p4:conv#data, bpP:p5:rstar
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:dc-prod | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | product structure of Re(D_{r_K}) (max norm)
EDGE: bpP:p4:collar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | (c): meas(N_{r_K}(D_t) minus D_t) <= A t
EDGE: bpP:p5:dio-one | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | meas(D_t minus Dcheck) <= c_dio gamma-bar
EDGE: bpP:p5:rK | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | (1 + 2 r_K/l)^b < 2 and r_K < t < d
EDGE: bpP:p5:param-facts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | meas Dcheck >= (1/4) meas V, gamma-bar <= C_gamma sqrt r
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | D, Dcheck, A_sh, t
EDGE: K:bp:p1:ext-lebesgue | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | monotonicity and subadditivity of meas
EDGE: bpP:p4:conv#data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | A, N_s, D_t
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-collar@L287-L287 | uses the threshold or C_gamma and its smallness conditions directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the pre-extracted edges to bpP:p4:domain-collar and stepP:p4:dc-diff are deleted: the text says it re-derives their steps ("as in") and Part 4 is not used as a black box (bpP:p5:use5-fix); only the product structure stepP:p4:dc-prod is cited.
```

### bpP:p5:lower

```text
NODE: bpP:p5:lower
KIND: proposition
TITLE: Lower bound for $\meas(S\cap\mathcal F)$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L290-L293
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L294-L298
CONTRACT_ID: bpP:p5:lower
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: C_* := (A + c_dio C_gamma)/meas V + 6 b kappa_1 + c_n C_b; 0 < r < r_*, admissible mu; S := S_{D_0}; F(V,r) the frozen cell
SOURCE_QUANTIFIERS: constants fixed; then (r,mu) admissible
SOURCE_CONCLUSION: meas(F(V,r) minus S) <= C_* sqrt r meas F(V,r), i.e. meas(S intersect F) >= (1 - C_* sqrt r) meas F
CONSTANT_SCOPE: C_* depends on the data and kappa_0, kappa_1, G only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:kset, bpP:p0:cylinder#cylinderCell, bpP:p5:rstar, bpP:p5:budget, bpP:p5:dio-one, bpP:p3:two-scale-kam, bpP:p4:conv#data, stepP:p5:lo-setup, stepP:p5:lo-bad, stepP:p5:lo-lost, bpP:p5:params, bpP:p5:lower#constant
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | S := S_{D_0}
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | F(V,r)
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | r < r_*, C_gamma
EDGE: bpP:p5:budget | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | C_b
EDGE: bpP:p5:dio-one | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | c_dio
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | c_n
EDGE: bpP:p4:conv#data | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | A, meas V
EDGE: stepP:p5:lo-setup | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L295-L295 | proof step
EDGE: stepP:p5:lo-bad | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L296-L296 | proof step
EDGE: stepP:p5:lo-lost | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L297-L297 | proof step
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L290-L293 | uses the parameter definitions (widths, scales, domain or shell) directly
EDGE: bpP:p5:lower#constant | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | uses the numerical constant choice separately from the later estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:lo-setup

```text
NODE: stepP:p5:lo-setup
KIND: step
TITLE: Set up
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-setup@L295-L295
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-setup@L295-L295
CONTRACT_ID: stepP:p5:lo-setup
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: cell-transfer (b); L := K intersect (R^n x [0,1)^n); location gives L subset V x (0,lambda_2)^b x [0,1)^n =: F'; disc-measure (b)
SOURCE_QUANTIFIERS: admissible (r,mu)
SOURCE_CONCLUSION: meas(S intersect F) = (2 pi)^n meas L, meas F = (2 pi)^n meas F' = (2 pi)^n meas V lambda_2^b, hence meas(F minus S) = (2 pi)^n meas(F' minus L)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:cell-transfer, bpP:p5:location, bpP:p4:disc-measure, bpP:p0:cylinder#cylinderCell, bpP:p5:kset, bpP:p5:params
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:cell-transfer | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-setup@L295-L295 | (b): meas(S_B intersect F) = (2 pi)^n meas A_B
EDGE: bpP:p5:location | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-setup@L295-L295 | L subset V x (0,lambda_2)^b x [0,1)^n
EDGE: bpP:p4:disc-measure | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-setup@L295-L295 | (b): meas F(V,r) = (2 pi)^n meas V (r^2/2)^b
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-setup@L295-L295 | F(V,r)
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-setup@L295-L295 | K = K_{D_0}, S
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-setup@L295-L295 | uses the parameter definitions (widths, scales, domain or shell) directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:lo-lost

```text
NODE: stepP:p5:lo-lost
KIND: step
TITLE: Lost tori
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-lost@L297-L297
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-lost@L297-L297
CONTRACT_ID: stepP:p5:lo-lost
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: meas((D x [0,1)^n) minus L) = meas((D x T^n) minus K) since K is Z^n-invariant in vartheta; budget
SOURCE_QUANTIFIERS: admissible (r,mu)
SOURCE_CONCLUSION: meas((D x [0,1)^n) minus L) <= c_n C_b sqrt r meas D <= c_n C_b sqrt r meas F'; adding the bad-action part gives the claim
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:budget, stepP:p5:lo-setup, stepP:p5:lo-bad, bpP:p5:kset, bpP:p5:params
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:budget | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-lost@L297-L297 | meas((D x T^n) minus K) <= c_n C_b sqrt r meas D
EDGE: stepP:p5:lo-setup | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-lost@L297-L297 | F', L
EDGE: stepP:p5:lo-bad | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-lost@L297-L297 | the bad-action part
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-lost@L297-L297 | K is Z^n-invariant in vartheta
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:lo-lost@L297-L297 | uses the parameter definitions (widths, scales, domain or shell) directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:st-add

```text
NODE: stepP:p5:st-add
KIND: step
TITLE: Additivity
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-add@L309-L309
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-add@L309-L309
CONTRACT_ID: stepP:p5:st-add
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m(B) := meas(S_B intersect F) = (2 pi)^n meas A_B for sigma-compact B subset D_0 (cell-transfer); the tori phi_omega(R^n) are pairwise disjoint (injectivity modulo translations)
SOURCE_QUANTIFIERS: B sigma-compact subset of D_0
SOURCE_CONCLUSION: m is countably additive on sigma-compact subsets of D_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:cell-transfer, bpP:p3:two-scale-kam, bpP:p5:kset, bpP:p0:cylinder#cylinderCell
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:cell-transfer | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-add@L309-L309 | m(B) = (2 pi)^n meas A_B
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-add@L309-L309 | injectivity modulo translations: disjoint tori
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-add@L309-L309 | K_B, A_B, Omega_B
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-add@L309-L309 | the source statement directly uses this frozen predicate or cell definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p5:st-conc

```text
NODE: stepP:p5:st-conc
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-conc@L312-L312
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-conc@L312-L312
CONTRACT_ID: stepP:p5:st-conc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: meas(S' intersect F) = m(D_0) - theta_0; S intersect F subset F; (r5): (C_* + 1/2) sqrt r <= 1/2; meas F > 0
SOURCE_QUANTIFIERS: the B of st-ivt
SOURCE_CONCLUSION: meas(S' intersect F) < meas F and meas(S' intersect F) >= (1 - (C_* + 1/2) sqrt r) meas F > 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p5:st-ivt, bpP:p5:lower, bpP:p5:rstar, bpP:p0:cylinder#cylinderCell, bpP:p5:kset
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p5:st-ivt | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-conc@L312-L312 | theta_0 and B
EDGE: bpP:p5:lower | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-conc@L312-L312 | m(D_0) >= (1 - C_* sqrt r) meas F
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-conc@L312-L312 | (r5)
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-conc@L312-L312 | F(V,r), meas F > 0
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:st-conc@L312-L312 | uses D_0, K_omega, S_B or the action-angle torus union directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p5:main

```text
NODE: bpP:p5:main
KIND: theorem
TITLE: P-G; \Pref{bpP:p0:pg}
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L317-L320
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L321-L326
CONTRACT_ID: bpP:p5:main
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the hypotheses and data of bpP:p0:pg: a, b >= 1; V open connected bounded; W open with closure V subset W; A, d > 0 with the collar bound; r_0, mu_0, B > 0; H_0, P, P_0, Omega, beta; (H1) joint analyticity of P on [0,mu_0] x closure of C(V,r_0); (H2) periodicity; (H3) HasFastDiffeo(H_0,W); (H4) HasBirkhoff(P,V,r_0,mu_0,P_0,Omega,beta); (H5) ¦det beta¦ >= B; (H6) beta symmetric
SOURCE_QUANTIFIERS: data fixed first; then exists r_*, C, c; then for all r, mu with 0 < r < r_*, 0 < mu < mu_0, mu < r^6/(log 1/r)^c; then exists S (the printed quantifier order of bpP:p0:pg); witnesses are c := 2n+4, C := max{C_*+1,C_w}, r_* of bpP:p5:rstar (L319)
SOURCE_CONCLUSION: there exist r_*, C, c with 0 < r_* < r_0, r_* < 1, C > 0, c > 0 such that for all r, mu with 0 < r < r_*, 0 < mu < mu_0, mu < r^6/(log 1/r)^c there is S subset Ph_{a+b} with IsCylKol(H_mu, V, r, mu, C, S) (H_mu = H_0 + mu P(mu,.)), 0 < meas(S intersect F(V,r)), ofReal(1 - C sqrt r) meas F(V,r) < meas(S intersect F(V,r)) < meas F(V,r)
CONSTANT_SCOPE: r_*, C, c depend on all the data and hypotheses (a, b, V, W, A, d, r_0, mu_0, B, H_0, P, P_0, Omega, beta) and not on r or mu; C is both the frequency bound of IsCylKol and the measure constant; S depends on (r, mu)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:rstar, stepP:p5:mn-const, stepP:p5:mn-given, stepP:p5:mn-set, stepP:p5:mn-meas, bpP:p0:fastdiffeo#HasFastDiffeomorphism, bpP:p0:birkhoff#HasSecularBirkhoffForm, bpP:p0:degham#degenerateHamiltonian, bpP:p0:cylkol#IsCylinderKolmogorovSet, bpP:p0:cylinder#cylinderCell, bpP:p5:lower#constant, bpP:p5:torus-conv
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L319-L319 | r_* of the definition
EDGE: stepP:p5:mn-const | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L322-L322 | proof step
EDGE: stepP:p5:mn-given | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L323-L323 | proof step
EDGE: stepP:p5:mn-set | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L324-L324 | proof step
EDGE: stepP:p5:mn-meas | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L325-L325 | proof step
EDGE: bpP:p0:fastdiffeo#HasFastDiffeomorphism | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L317-L320 | the source statement directly uses this frozen predicate or cell definition
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L317-L320 | the source statement directly uses this frozen predicate or cell definition
EDGE: bpP:p0:degham#degenerateHamiltonian | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L317-L320 | the source statement directly uses this frozen predicate or cell definition
EDGE: bpP:p0:cylkol#IsCylinderKolmogorovSet | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L317-L320 | the source statement directly uses this frozen predicate or cell definition
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L317-L320 | the source statement directly uses this frozen predicate or cell definition
EDGE: bpP:p5:lower#constant | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L319-L319 | C_* in the specified witness C
EDGE: bpP:p5:torus-conv | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:main@L319-L319 | C_w in the specified witness C
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Proving result of frozen root bpP:p0:pg; the root depends on this node, with no edge back. Direct statement edges to the frozen definitions are retained independently of their uses by mn-set and mn-meas.
```

### stepP:p5:fd-beta

```text
NODE: stepP:p5:fd-beta
KIND: step
TITLE: Inverse of $\tilde\beta$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-beta@L112-L112
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-beta@L112-L112
CONTRACT_ID: stepP:p5:fd-beta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M_beta := sup ¦beta~_ij¦ on (closure V)_{rho_c}; ¦det beta~¦ >= B on closure V; det Lipschitz; beta~^T = beta~
SOURCE_QUANTIFIERS: J_1 in (closure V)_{rho_c}, nu in C^b
SOURCE_CONCLUSION: ¦det beta~¦ >= B/2 on (closure V)_{rho_c} after decreasing rho_c; ¦nu¦ <= L_beta ¦beta~ nu¦ with L_beta := 2 b! M_beta^{b-1}/B (Cramer; the adjugate bound holds for complex matrices)
CONSTANT_SCOPE: L_beta depends on the data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:birkhoff-ext, K:bp:p1:ext-cramer, bpP:p5:bilip
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:birkhoff-ext | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-beta@L112-L112 | (c): ¦det beta~¦ >= B on closure V; beta~ symmetric
EDGE: K:bp:p1:ext-cramer | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-beta@L112-L112 | Cramer inverse for complex matrices
EDGE: bpP:p5:bilip | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:fd-beta@L112-L112 | rho_c decreased
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The phrase "Cramer as in bpP:p4:beta-inverse" compares the repeated adjugate computation. The actual input is K:bp:p1:ext-cramer for complex matrices, not the real-vector conclusion of bpP:p4:beta-inverse.
```

### bpP:p5:strictness

```text
NODE: bpP:p5:strictness
KIND: proposition
TITLE: Deleting a small positive-measure family of tori
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L302-L307
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L308-L313
CONTRACT_ID: bpP:p5:strictness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < r < r_*, admissible mu; S := S_{D_0}; the family S_B of bpP:p5:kset
SOURCE_QUANTIFIERS: (r,mu) admissible; then a sigma-compact B subset D_0
SOURCE_CONCLUSION: there is a sigma-compact B subset D_0 such that S' := S_{D_0 minus B} satisfies 0 < meas(S' intersect F) and (1 - (C_* + 1/2) sqrt r) meas F <= meas(S' intersect F) < meas F
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:kset, bpP:p5:rstar, bpP:p0:cylinder#cylinderCell, stepP:p5:st-add, stepP:p5:st-null, stepP:p5:st-ivt, stepP:p5:st-conc
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L303-L303 | S_B, D_0
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L303-L303 | r < r_*, (r5)
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L304-L304 | F(V,r)
EDGE: stepP:p5:st-add | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L309-L309 | proof step
EDGE: stepP:p5:st-null | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L310-L310 | proof step
EDGE: stepP:p5:st-ivt | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L311-L311 | proof step
EDGE: stepP:p5:st-conc | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:strictness@L312-L312 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: sourcegap L306 (strictness from the slack and the bi-Lipschitz parametrisation of Part 3) is supplied by these steps.
```

### bpP:p5:params

```text
NODE: bpP:p5:params
KIND: definition
TITLE: Parameters as functions of $(r,\mu)$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L137-L145
PROOF_SOURCE: -
CONTRACT_ID: bpP:p5:params
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n = a+b; the data constants of Remark order (2); s_* of bpP:p5:consts; C_1, kappa_0, kappa_1, G (chosen in Remark order items 3 and 4); r in (0,1), mu in (0,mu_0), mu_2 := Lambda_P mu
SOURCE_QUANTIFIERS: the constants fixed first in the order of bpP:p5:order; then (r,mu); the listed quantities are explicit functions of (r,mu)
SOURCE_CONCLUSION: defines tau := n+1, c := 2 tau + 2, sigma_av := s_*/6, sigma_tot := s_*/12, s := sigma_tot/5, sbar := 4 sigma_tot/5, Kbar := (30/s_*) log(1/r), t := sqrt r, lambda_2 := r^2/2, lambda_1 := kappa_1 r^{5/2}, lambda_2' := lambda_2 - 2 lambda_1, l := lambda_2' - lambda_1, rho := lambda_1/2, gamma-bar := G max{sqrt(mu_2) Kbar^{tau+1/2} r^{-5/2}, r^{5/2} Kbar^{tau+1}}, alpha_av := gamma-bar/(2 Kbar^tau), rhobar := gamma-bar/(2 M0bar Kbar^{tau+1}), gamma_1 := kappa_0 r^{5/2}, gamma_2 := mu kappa_0 r^{5/2}, K := K_0 := (6/s) log_+(kappa_0^2/C_1^4); rho-hat, E-hat, r_K as in bpP:p3:constants; the sets D_t, Dcheck := D_t intersect omega-bar_0^{-1}(D^1_gamma) (compact), A_sh := (lambda_1, lambda_2')^b, D := Dcheck x A_sh; alpha_i := 2 pi gamma_i
CONSTANT_SCOPE: all quantities are functions of (r,mu) and of constants chosen before r, mu (K = K_0 does not depend on (r,mu)); C_1, kappa_0, kappa_1, G depend on the data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:order, bpP:p5:consts, bpP:p5:bilip, bpP:p3:constants, bpP:p4:conv#data, bpP:p5:dio-one, bpP:p0:fastfreq#fastFrequency, bpP:p5:kam-hyp#C1, bpP:p5:kam-cond#scales
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:order | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L138-L138 | the constants fixed first and their order
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L138-L138 | s_*, Lambda_P (mu_2), eps_an
EDGE: bpP:p5:bilip | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L141-L141 | M0bar in rhobar
EDGE: bpP:p3:constants | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L144-L144 | rho-hat, E-hat, r_K of Definition constants
EDGE: bpP:p4:conv#data | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L144-L144 | D_t of the collar section
EDGE: bpP:p5:dio-one | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L144-L144 | D^1_gamma and Dcheck := D_t intersect omega-bar_0^{-1}(D^1_gamma)
EDGE: bpP:p0:fastfreq#fastFrequency | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L144-L144 | omega-bar_0 = omega_{H_0}
EDGE: bpP:p5:kam-hyp#C1 | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L138-L138 | uses the numerical constant choice separately from the later estimate
EDGE: bpP:p5:kam-cond#scales | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:params@L138-L138 | uses the numerical constant choice separately from the later estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: C_1 and kappa_0,kappa_1,G come from the numerical-choice projections. No edge to the compound kam-hyp or kam-cond result is needed: their later estimates consume params. Remark order records the order, not the defining formulas or inequalities.
```

### bpP:p5:rstar

```text
NODE: bpP:p5:rstar
KIND: definition
TITLE: Smallness thresholds
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L147-L156
PROOF_SOURCE: -
CONTRACT_ID: bpP:p5:rstar
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the constants of Remark order items 2-4 (analytic constants, tau, C_1, widths, kappa_0, kappa_1, G) and C_* of Proposition lower; mu_1 := min{mu_*, (2(1+M) a Lambda_N Lambda_g)^{-1}}, M = 2 b Lambda_N L_beta (bpP:p4:data); c_dio of bpP:p5:dio-one; C_gamma := G (30/s_*)^{tau+1}
SOURCE_QUANTIFIERS: all constants fixed before r_*; then 0 < r < r_*
SOURCE_CONCLUSION: defines r_* in (0, min{r_0, e^{-1/5}, 1}) so small that for 0 < r < r_*: (r1) log(1/r_*) >= Lambda_P, r_*^2 (log 1/r_*)^{tau+1} <= 1 (so mu < r^6/(log 1/r)^c implies mu_2 <= r^6 (log 1/r)^{-(2 tau+1)}) and r_*^6 <= mu_1; (r2) sqrt(r_*) < d, A sqrt(r_*) <= (1/2) meas V, r_* <= r_1/2, r_* <= eps_an/4; (r3) C_gamma sqrt(r_*) <= 2 M0bar rho_c and c_dio C_gamma sqrt(r_*) <= (1/4) meas V; (r4) 6 kappa_1 sqrt(r_*) <= 1/2; (r5) the displacement margin sqrt(2) Delta_max <= kappa_1 r^{3/2} and (C_*+1) sqrt(r_*) <= 1/2
CONSTANT_SCOPE: r_* depends on the data and the constants of Remark order items 2-4 and C_* only; not on r or mu
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:order, bpP:p5:consts, bpP:p5:uniform-remainder, bpP:p5:freq-inj, bpP:p5:freq-data, bpP:p4:data, bpP:p4:lip-inverse, bpP:p5:dio-one, bpP:p5:bilip, bpP:p4:conv#data, bpP:p5:lower#constant, bpP:p5:kam-cond#scales, bpP:p5:rstar#Cgamma
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:order | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L148-L148 | the constants of items 2 to 4 fixed before r_*
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L150-L151 | Lambda_P, eps_an, s_*
EDGE: bpP:p5:uniform-remainder | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L151-L151 | r_1
EDGE: bpP:p5:freq-inj | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L150-L150 | mu_*
EDGE: bpP:p5:freq-data | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L150-L150 | Lambda_N, L_beta
EDGE: bpP:p4:data | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L150-L150 | mu_1 and M of the standing data
EDGE: bpP:p4:lip-inverse | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L150-L150 | Lambda_g in mu_1
EDGE: bpP:p5:dio-one | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L152-L152 | c_dio
EDGE: bpP:p5:bilip | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L152-L152 | M0bar, rho_c
EDGE: bpP:p4:conv#data | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L151-L151 | A, d, meas V in (r2)
EDGE: bpP:p5:lower#constant | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L148-L148 | uses the numerical constant choice separately from the later estimate
EDGE: bpP:p5:kam-cond#scales | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L150-L150 | uses the numerical constant choice separately from the later estimate
EDGE: bpP:p5:rstar#Cgamma | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L152-L152 | uses the numerical constant choice separately from the later estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: C_* is supplied by lower#constant and the numerical C_b witness, independently of their later estimates. The admissible-radius estimates use (r1)-(r4) and the displacement half of (r5); after those constants are chosen shrink the preliminary radius to impose (C_*+1)sqrt(r_*)<=1/2. Delta_max is bounded by the explicit numerical expression 18 r^(11/2)/(G eps_an) from L171-L179; the sufficient displacement condition involves no averaging-map construction. No edge to the compound lower, budget, avg or location result is justified.
```

### bpP:p5:kam-hyp

```text
NODE: bpP:p5:kam-hyp
KIND: lemma
TITLE: Hypotheses of the two-scale KAM theorem
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L198-L202
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L203-L208
CONTRACT_ID: bpP:p5:kam-hyp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < r < r_*, 0 < mu < min{mu_0, r^6/(log 1/r)^c}; h_mu, f_mu of bpP:p5:phi-chart; H_3(J,theta) := H~(J,2 pi theta)/2pi with H~ = h_mu + f_mu in (J,psi); objects of bpP:p5:params
SOURCE_QUANTIFIERS: constants chosen before (r,mu) in the order of Remark order; C_1 >= 1 depends on the data only; then (r,mu)
SOURCE_CONCLUSION: there is C_1 >= 1 (data only) such that the hypotheses of bpP:p3:two-scale-kam hold with n_1 = a, n_2 = b, tau = n+1, D = Dcheck x A_sh, rho = lambda_1/2, A = D_rho, s, sbar of bpP:p5:params, and M = C_1, hat M = C_1 mu, bar M = bar M_2 = C_1/mu, bar M_1 = C_1, E = C_1 mu r^5; explicitly C_1 := max{1, 2 pi C_U, C_R coth(sigma_av/4)^n/2 pi} with C_R := 2^5 C_Q + 2 Lambda_P
CONSTANT_SCOPE: C_1 depends on the data only (Remark order items 2-3), not on r, mu
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:two-scale-kam, bpP:p5:params, bpP:p5:rstar, bpP:p5:phi-chart, bpP:p3:period-dictionary, bpP:p5:freq-inj, bpP:p5:uniform-remainder, bpP:p5:consts, stepP:p5:kh-dom, stepP:p5:kh-h, stepP:p5:kh-f, stepP:p5:kh-norm, bpP:p5:kam-hyp#C1
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L199-L199 | the hypotheses of the two-scale KAM theorem to be verified
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L199-L200 | D = Dcheck x A_sh, rho, s, sbar, tau, c
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L199-L199 | 0 < r < r_*
EDGE: bpP:p5:phi-chart | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L199-L199 | h_mu, f_mu in the variables (J,psi)
EDGE: bpP:p3:period-dictionary | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L199-L199 | H_3 = H~(J,2 pi theta)/2 pi
EDGE: bpP:p5:freq-inj | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L201-L201 | C_U
EDGE: bpP:p5:uniform-remainder | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L201-L201 | C_Q in C_R
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L201-L201 | Lambda_P, sigma_av
EDGE: stepP:p5:kh-dom | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L204-L204 | proof step
EDGE: stepP:p5:kh-h | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L205-L205 | proof step
EDGE: stepP:p5:kh-f | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L206-L206 | proof step
EDGE: stepP:p5:kh-norm | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L207-L207 | proof step
EDGE: bpP:p5:kam-hyp#C1 | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L201-L201 | uses the numerical constant choice separately from the later estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p5:kam-cond

```text
NODE: bpP:p5:kam-cond
KIND: lemma
TITLE: Scale constants and the KAM condition
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L212-L222
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L223-L226
CONTRACT_ID: bpP:p5:kam-cond
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hat c = hat c(n,tau) = max{2^13 n, 24^{tau+1}/3} (bpP:p3:constants); C_1, s of bpP:p5:kam-hyp and bpP:p5:params; r in (0,1) small enough that rho = lambda_1/2 makes sense; mu in (0,1]
SOURCE_QUANTIFIERS: constants chosen in this order: kappa_0 >= C_1^2 with kappa_0^2 > 9 hat c C_1^4 K_0^{2 tau+2}; kappa_1 with kappa_1^2 > 4 hat c C_1^2; G >= max{2 M0bar kappa_1, (2^14 (1+b) M0bar)^{1/2}, (1600 (1+b) M0bar/s_*)^{1/2}}; then (r,mu)
SOURCE_CONCLUSION: with them, L = C_1/mu, x = C_1^4/kappa_0^2, K = K_0 independent of (r,mu), rho-hat = min{kappa_0 r^{5/2}/(3 C_1 K_0^{tau+1}), kappa_1 r^{5/2}/2}, E-hat = C_1^2 r^5/rho-hat^2 = max{9 C_1^4 K_0^{2 tau+2}/kappa_0^2, 4 C_1^2/kappa_1^2} < 1/hat c, i.e. the KAM condition hat c E-hat < 1 holds, gamma_1 >= gamma_2 and tau > n
CONSTANT_SCOPE: kappa_0, kappa_1, G depend on the data only (chosen in this order), not on (r,mu)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:constants, bpP:p5:kam-hyp, bpP:p5:params, bpP:p5:bilip, bpP:p5:consts, stepP:p5:kc-eval, stepP:p5:kc-small, bpP:p5:kam-cond#scales
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:constants | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L213-L213 | hat c, L, K, rho-hat, E-hat of Definition constants
EDGE: bpP:p5:kam-hyp | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L213-L219 | C_1 and the values M, hat M, bar M, E
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L213-L219 | s, gamma_i, K_0 of the parameter definition
EDGE: bpP:p5:bilip | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L217-L217 | M0bar in the condition on G
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L217-L217 | s_* in the condition on G
EDGE: stepP:p5:kc-eval | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L224-L224 | proof step
EDGE: stepP:p5:kc-small | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L225-L225 | proof step
EDGE: bpP:p5:kam-cond#scales | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L215-L215 | uses the numerical constant choice separately from the later estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p5:budget

```text
NODE: bpP:p5:budget
KIND: lemma
TITLE: Budget on the action side
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L280-L283
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L284-L288
CONTRACT_ID: bpP:p5:budget
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < r < r_*, admissible mu; K := K_{D_0} of bpP:p5:kset; c_n = 1 + (1 + 2^n)(1 + (4/3)^n) of bpP:p3:two-scale-kam
SOURCE_QUANTIFIERS: data and kappa_0, kappa_1, G fixed; then C_b; then admissible (r,mu)
SOURCE_CONCLUSION: there is C_b < infinity (data and kappa_0, kappa_1, G only) with meas((D x T^n) minus K) <= c_n C_b sqrt r meas D and meas D = meas Dcheck l^b > 0
CONSTANT_SCOPE: C_b depends on the data and kappa_0, kappa_1, G only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:kset, bpP:p3:two-scale-kam, bpP:p5:rstar, bpP:p5:params, bpP:p5:param-facts, stepP:p5:bu-read, stepP:p5:bu-dio, stepP:p5:bu-collar, bpP:p5:budget#constant
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:kset | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L281-L281 | K = K_{D_0}
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L281-L281 | c_n and inequality (3.1)
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L281-L282 | admissible (r,mu)
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L282-L282 | D = Dcheck x A_sh, l
EDGE: bpP:p5:param-facts | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L282-L282 | meas Dcheck > 0
EDGE: stepP:p5:bu-read | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L285-L285 | proof step
EDGE: stepP:p5:bu-dio | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L286-L286 | proof step
EDGE: stepP:p5:bu-collar | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L287-L287 | proof step
EDGE: bpP:p5:budget#constant | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L281-L281 | uses the numerical constant choice separately from the later estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### New constant-choice records

```text
NODE: bpP:p5:kam-hyp#C1
KIND: definition
TITLE: The numerical constant C_1, before the estimates
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L200-L201
PROOF_SOURCE: -
CONTRACT_ID: bpP:p5:kam-hyp#C1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data constants C_U, C_Q, Lambda_P and s_*; n=a+b
SOURCE_QUANTIFIERS: data fixed; then C_R, sigma_av and C_1, before r or mu
SOURCE_CONCLUSION: C_R := 2^5 C_Q + 2 Lambda_P, sigma_av := s_*/6, C_1 := max{1, 2 pi C_U, C_R coth(sigma_av/4)^n/(2 pi)}
CONSTANT_SCOPE: data only; does not depend on the KAM-hypothesis verification or averaging map
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:freq-inj, bpP:p5:uniform-remainder, bpP:p5:consts
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:freq-inj | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L200-L201 | numerical data used in this constant choice
EDGE: bpP:p5:uniform-remainder | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L200-L201 | numerical data used in this constant choice
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L200-L201 | numerical data used in this constant choice
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p5:kam-cond#scales
KIND: definition
TITLE: Scale-constant selection before r and mu
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L213-L217
PROOF_SOURCE: -
CONTRACT_ID: bpP:p5:kam-cond#scales
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=a+b, tau=n+1; C_1 and s_*>0, M0bar fixed data constants; s=s_*/60
SOURCE_QUANTIFIERS: choose kappa_0, then kappa_1, then G; all before r, mu
SOURCE_CONCLUSION: choose kappa_0>=C_1^2 with kappa_0^2>9 chat C_1^4 K_0^(2 tau+2), K_0=(6/s)log_+(kappa_0^2/C_1^4); kappa_1^2>4 chat C_1^2; G>=max{2 M0bar kappa_1, sqrt(2^14(1+b)M0bar), sqrt(1600(1+b)M0bar/s_*)}
CONSTANT_SCOPE: data only, in the displayed order
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:kam-hyp#C1, bpP:p5:consts, bpP:p5:bilip, bpP:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:kam-hyp#C1 | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L213-L217 | numerical data used in this constant choice
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L213-L217 | numerical data used in this constant choice
EDGE: bpP:p5:bilip | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L213-L217 | numerical data used in this constant choice
EDGE: bpP:p3:constants | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L213-L217 | numerical data used in this constant choice
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: Numerical witness selection from items 1-3, not the later KAM-condition verification. L215 invokes the elementary limit kappa_0^2/(log kappa_0)^(2 tau+2) -> infinity; that standard growth fact is an unregistered input, so its existence justification remains SOURCE_GAP unless an approved supplier is added. The numerical contract is unchanged.
```

```text
NODE: bpP:p5:rstar#Cgamma
KIND: definition
TITLE: C_gamma independently of the threshold
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L152-L152
PROOF_SOURCE: -
CONTRACT_ID: bpP:p5:rstar#Cgamma
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: s_*>0 and G chosen in the data-dependent scale selection; tau=n+1
SOURCE_QUANTIFIERS: data fixed; define C_gamma before r_*
SOURCE_CONCLUSION: C_gamma := G(30/s_*)^(tau+1)
CONSTANT_SCOPE: data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:consts, bpP:p5:kam-cond#scales
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L152-L152 | numerical data used in this constant choice
EDGE: bpP:p5:kam-cond#scales | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L152-L152 | numerical data used in this constant choice
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p5:budget#constant
KIND: definition
TITLE: Numerical budget constant before the small-radius restriction
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L287
PROOF_SOURCE: -
CONTRACT_ID: bpP:p5:budget#constant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data constants of the Part 4 measure estimate; kappa_0,kappa_1,G chosen; C_gamma fixed; meas V>0
SOURCE_QUANTIFIERS: data fixed; choose bar c_1,bar c_2 and C_b before r_*, r, mu
SOURCE_CONCLUSION: take bar c_1 from the explicit Part 4 c_1 formula with its denominator meas(Dbar) replaced by meas(V)/2 and bar c_2=c_2; choose C_b as the sum 4^(b+1) 2 pi kappa_0 (5 bar c_1+4 bar c_2) + 8(A+c_dio C_gamma)/meas(V) + b kappa_1/16
CONSTANT_SCOPE: data and kappa_0,kappa_1,G only; this is the numerical witness, not the later estimate for a torus union
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:two-scale-diophantine-measure, bpP:p4:conv#data, bpP:p5:freq-data, bpP:p5:dio-one, bpP:p5:rstar#Cgamma, bpP:p5:kam-cond#scales, bpP:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:two-scale-diophantine-measure | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L287 | numerical data used in this constant choice
EDGE: bpP:p4:conv#data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L287 | numerical data used in this constant choice
EDGE: bpP:p5:freq-data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L287 | numerical data used in this constant choice
EDGE: bpP:p5:dio-one | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L287 | numerical data used in this constant choice
EDGE: bpP:p5:rstar#Cgamma | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L287 | numerical data used in this constant choice
EDGE: bpP:p5:kam-cond#scales | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L287 | numerical data used in this constant choice
EDGE: bpP:p4:data | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:bu-dio@L286-L287 | standing numerical constants in the Part 4 measure coefficient
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Extracts the displayed coefficients from L286-L287; their validity as estimates is proved by bu-dio and bu-collar under the preliminary margins. This definition itself does not assert those estimates or assume r<r_*.
```

```text
NODE: bpP:p5:lower#constant
KIND: definition
TITLE: The lower-measure coefficient before the threshold
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291
PROOF_SOURCE: -
CONTRACT_ID: bpP:p5:lower#constant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A, meas V>0, c_dio, C_gamma, kappa_1 and C_b fixed; n=a+b
SOURCE_QUANTIFIERS: data fixed; then C_* before r_*
SOURCE_CONCLUSION: C_* := (A+c_dio C_gamma)/meas V + 6 b kappa_1 + c_n C_b, c_n=1+(1+2^n)(1+(4/3)^n)
CONSTANT_SCOPE: data and scale constants only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:conv#data, bpP:p5:dio-one, bpP:p5:rstar#Cgamma, bpP:p5:kam-cond#scales, bpP:p5:budget#constant, bpP:p3:two-scale-kam
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:conv#data | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | numerical data used in this constant choice
EDGE: bpP:p5:dio-one | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | numerical data used in this constant choice
EDGE: bpP:p5:rstar#Cgamma | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | numerical data used in this constant choice
EDGE: bpP:p5:kam-cond#scales | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | numerical data used in this constant choice
EDGE: bpP:p5:budget#constant | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | numerical data used in this constant choice
EDGE: bpP:p3:two-scale-kam | blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L291-L291 | numerical data used in this constant choice
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### Coverage bpP:p5:kam-hyp

```text
ITEM: bpP:p5:kam-hyp
KIND: lemma
SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-hyp@L198-L202
DISPOSITION: NODE bpP:p5:kam-hyp, bpP:p5:kam-hyp#C1
REASON: labelled unit plus its separately consumed numerical constant choice; the choice must remain distinct from the later estimate to preserve direct dependencies without cycles
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
```

### Coverage bpP:p5:kam-cond

```text
ITEM: bpP:p5:kam-cond
KIND: lemma
SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:kam-cond@L212-L222
DISPOSITION: NODE bpP:p5:kam-cond, bpP:p5:kam-cond#scales
REASON: labelled unit plus its separately consumed numerical constant choice; the choice must remain distinct from the later estimate to preserve direct dependencies without cycles
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
```

### Coverage bpP:p5:rstar

```text
ITEM: bpP:p5:rstar
KIND: definition
SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:rstar@L147-L156
DISPOSITION: NODE bpP:p5:rstar, bpP:p5:rstar#Cgamma
REASON: labelled unit plus its separately consumed numerical constant choice; the choice must remain distinct from the later estimate to preserve direct dependencies without cycles
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
```

### Coverage bpP:p5:budget

```text
ITEM: bpP:p5:budget
KIND: lemma
SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:budget@L280-L283
DISPOSITION: NODE bpP:p5:budget, bpP:p5:budget#constant
REASON: labelled unit plus its separately consumed numerical constant choice; the choice must remain distinct from the later estimate to preserve direct dependencies without cycles
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
```

### Coverage bpP:p5:lower

```text
ITEM: bpP:p5:lower
KIND: proposition
SOURCE: blueprint-P/parts/p5-pg-assembly.tex#bpP:p5:lower@L290-L293
DISPOSITION: NODE bpP:p5:lower, bpP:p5:lower#constant
REASON: labelled unit plus its separately consumed numerical constant choice; the choice must remain distinct from the later estimate to preserve direct dependencies without cycles
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
```

### Coverage p5:prose-L334-L339

```text
ITEM: p5:prose-L334-L339
KIND: proof-region
SOURCE: blueprint-P/parts/p5-pg-assembly.tex#prose@L334-L339
DISPOSITION: EXCLUDED
REASON: administrative errata, deviations, external-facts list, forward references and index. The list itself is not an approved external. Unregistered inputs are exposed as SOURCE_GAP in ext-loc, ext-glue, be-coef, be-an, be-jet, ur-schwarz, bl-real, bl-comp, fi-blk, fi-inv and st-ivt. Cauchy and Cramer use their existing K imports; Neumann inversion uses bpP:p3:ext-neumann. The coverage exclusion does not certify that the unregistered inputs have been proved.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5
REVIEWER: -
```

## Verification receipt

All 85 present nodes have exactly one decision: 37 PASS and 48 FAIL. Six coverage items have replacements; all other coverage items PASS. The 48 existing-node replacements and five new constant-choice projections have matching DEPS/EDGE inventories, no unresolved dependency target, and exactly two EDGE separators. Traversing all packet prerequisites from these replacements found no cycle. An independent field comparison confirmed that existing-node replacements alter only DEPS/EDGE, NOTE and the specifically identified SOURCE_HYPOTHESES/SOURCE_QUANTIFIERS fields.

## Source and interface checks

The Part 2 application retains the canonical fast-angle/action conversion with Cartesian oscillators (p2 use5(3)), the normalization P/Lambda_P, R1 from the complex tube, and R2 with its explicit G conditions. The Part 3 application retains complex injectivity, all Hessian row-block bounds, the weighted norm, the two-scale smallness condition, and the direct r_K bound. No weaker imported contract was substituted. Period transport uses K_omega=Phi(S_{2pi} pi varphi_omega) and w=omega, with one division by 2pi. Cell transfer measures the output-angle cell, not the parameter cell. The strictness construction deletes whole tori and the final step treats both signs of 1-C sqrt(r) with ofReal.

Prerequisites checked: Part 1 order/chart/field/hol-chart/lattice/typical/period-convert/cyl-pipeline/two-scale/dio-sources/liouville/torus-union; Part 2 oscillator averaging, averaged remainder and use5; Part 3 constants, two-scale theorem, normalizations, period dictionary, limit actions/map and Neumann external; Part 4 collar, inverse frequency, adjugate bound, standing data, slab/lattice/measure estimate, product structure and polar cell; K cauchy-open, decay, ext-cramer, ext-lebesgue, ext-mvt, lip-image and mcshane; N norm and sup-weighted. The K and N source statements were read at their imported locators. The frozen P-G declaration is used only as a contract/signature; no implementation was inspected or executed.

## Suspected blueprint defects and limits

No genuine circularity defect is established by the phrase at L281, "for admissible (r,mu)". It is shorthand for the preliminary restrictions explained above; the estimates explicitly identify data-only coefficients. The packet must preserve that numerical construction instead of treating the order remark as a supplier of unstated inequalities. A source edit separating preliminary and final thresholds would clarify the exposition but is not required to repair the mathematics.

L336, "External facts used (beyond Parts 1--4)", lists several facts without labelled input contracts. This is an external-registration omission under this graph SPEC, addressed by SOURCE_GAP notes, not a suspected defect in CP10. The elementary growth limit used at L215 is exposed in the new scale-choice record for the same reason. No new pinned-paper erratum is asserted by this topology review.

No Lean build, lint execution, proof-body audit or state-changing git command was run: the slice brief prohibits Lean execution and permits editing only this report. Remaining proof gaps are the explicitly registered classical inputs, not topology approval or proof closure.
