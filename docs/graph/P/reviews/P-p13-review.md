# P-p13 slice topology review

**Verdict: FAIL.** Reviewer: `sol-review-P-u`. Marker: `rev-P-u`.

Reviewed all 34 nodes, all 173 EDGE lines, all 61 coverage items, and Part 13 L1-L203. This is source topology review, not a proof-status assessment. Only this report is written.

## Evidence and scope

Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, REVIEW-BRIEF.md and SPEC.md, including the writer rulings and the 2026-10-28 P-FIXED revision. P-FIXED is a seventh root now: the old deferral paragraphs do not exclude Part 13, Part 11/11a or fixed-Sun physical suppliers. The root anchor belongs to P-p0; the source theorem here is an ordinary non-anchor node. The frozen theorem statement and Part 0 transcription agree on n>=2, positive G,m0,m,a, strict increasing axes, eta>0 and data -> (eps_0,d,D) -> eps -> S. Manifest identity ABI is a710d06469f0efa43a0eede7aa23e7e13216737ac0895ff11757e256903b2eec; no manifest proof-state field is used.

Re-read all local statement/proof and EDGE locators. Prerequisite checks include the complete relevant Part 12 data/perturbation/chart/PG/transport/measure/quantifier source spans (L15-L195), Part 11 wrapper L237-L241, Part 11b lift-map L166-L172, beta-def L184-L192, birkhoff-form L205-L221 and patch L260-L262, Part 10 interface L235-L248, Part 8 chart/average/coefficients/identification/same-jets contracts, Part 7 product chart, Part 6 model/tube/assembly statements and the named Part 0 definitions. The generic Part 1 chart-field, chart-orbit, chart, composition, Borel-image and Liouville contracts were checked at their source. No implementation/provider file, Lean command or state-changing git command was used.

## Findings

**R1 — direct package/data uses.** The table identifies missing links to the product-domain definition, secular data and coefficient packages, torsion package, fixed-Sun D6 data and tube constants. The local replay steps must themselves link the packages whose objects they use; a path through a reused Part 12 step does not replace a direct package edge. Torus/measure replay also uses the literal predicate, chart, composition, cell, Borel-image and finite-tube suppliers. All new EDGE locators point at the local use. L49 only aliases existing chart/average/Birkhoff objects; its mapping to the four consumers remains valid once those consumers link the actual packages.

**R2 — fixed-Sun inputs are not moving-Sun P-G outputs.** The current data node imports P-p12 data#pg-data and data#choices. The former names the moving-Sun P and P_0, and the latter contains constants delivered for that moving-Sun input. Part 13 L81/L84 explicitly changes P, P_0 and recomputes the P-G constants. Keep the unchanged D1-D5 geometry, define D6 here, and split D7-D8 into data#choices, supplied by n2-pg after pg-hypotheses. Retarget the consumers of r,eps_0 to that new node. This mirrors the already split Part 12 contracts without assuming a delivered constant during verification of its own hypotheses.

**R3 — n=2 closure leaks into the general-n wrapper.** n2-const cites quantifiers for the n=2 clause L164, but the whole quantifiers record also depends on the Part 11 wrapper through its unrelated L165 clause. Thus the extracted n=2 closure contradicts L120 and the explicit independence in the SPEC revision. Project the consumed n=2 clause under the existing ID, keep its direct constant dependencies, and exclude the unconsumed general-n audit separately. The main theorem still uses n-general through fx-n as intended.

**R4 — premise identification is not application.** ng-wrap at L143 says the supplied set meets S1-S2; it does not use the conclusion of fixkol-assembly. Remove that premature edge. ng-phys at L144 applies the assembly and retains its edge.

**R5 — exact scopes.** pg-h2 inherits the P-G source domain w in C(V,r_0), not an unrestricted w. d,D depend only on a; eta enters zeta_* and the coupling threshold, not those two physical bounds. Correct the three overbroad constant-dependence fields. Also preserve the actual supplier scopes in the form/identification records: the interface is for n>=2 and the planar torsion is defined for n=2; neither follows for arbitrary n>=1.

**R6 — consumer locators.** The data EDGE of transport points only to the L111 heading; the use is L112. The fx-split edges of fx-2/fx-n point at the supplier L158; the cases are used at L159/L160. Only those locator fields change.

## Judgment on replay and case split

The extractor is right to avoid applying the full moving-Sun transport/measure statements. L95/L103-L108/L115-L116 explicitly replay particular computations with the replacement Hamiltonian, rather than merely point to an analogy. Their proof-step dependencies are valid source-level reuse: the same chart/domain and fast lattice are retained, and P-p13 chart supplies H_fix^Psi_tot=H_eps, the model-specific identity needed in the differentiated/flow clauses. Keep these replay edges and their replacement annotations. Supply the actual fixed-Sun data and direct generic premises at the local replay consumer. In particular cylinder-domain gives C(V,r) subset T for every 0<r<=r_0 without assuming 2r^2<=delta; the extra delta bound is for physical tube inclusion and the measure clause. No full-lattice Part 1 torus theorem is silently substituted for the fast-lattice cylinder argument.

The root proof uses hn to split n=2 from n>=3. These are required cases, not alternative proofs of the same obligation, so conjunctive fx-split/fx-2/fx-n edges are correct. n-general is valid already for n>=2, but the root uses it only in the n>=3 branch. Its wrapper application carries exactly the positive physical data, increasing axes and eta premise; the wrapper supplies Borel S, positive finite measure, the smaller tube and whole physical tori. Frequencies may depend on the point. No direct Part 11a edge belongs in the general-n assembly: the wrapper is the consumed interface.

## Node verdicts

All spans in the table refer to blueprint-P/parts/p13-fixed-assembly.tex; statement/proof and each EDGE-use span were re-read.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p13:fixed-hamiltonian-form | FAIL | L51-L61; L62-L66; L63-L63; L64-L64; L65-L65; L49-L49; L53-L53; L54-L54; L56-L56; L57-L57 | R1: missing direct bpP:p7:product-def use; R1: missing direct bpP:p8:coeffs use; R1: missing direct bpP:p11b:beta-def use; R5: preserve n>=2 interface and n=2 torsion scopes |
| stepP:p13:fh-chart | FAIL | L63-L63 | R1: missing direct bpP:p6:conv#data use; R1: missing direct bpP:p8:conv#data use; R1: missing direct bpP:p7:product-def use |
| stepP:p13:fh-id | FAIL | L64-L64 | R1: missing direct bpP:p8:conv#data use; R1: missing direct bpP:p8:coeffs use; R5: preserve n>=2 interface and n=2 torsion scopes |
| stepP:p13:fh-bnf | FAIL | L65-L65 | R1: missing direct bpP:p8:conv#data use; R1: missing direct bpP:p8:coeffs use; R1: missing direct bpP:p11b:beta-def use |
| bpP:p13:data | FAIL | L72-L88; L70-L70; L80-L80; L85-L85; L75-L75; L77-L77; L78-L78; L79-L79; L82-L82; L83-L83; L84-L84 | R1: missing direct bpP:p8:coeffs use; R1: missing direct bpP:p11b:beta-def use; R2: moving-Sun P-G data/choices are not the fixed-Sun input; separate D1-D6 from delivered D7-D8 |
| bpP:p13:chart | FAIL | L90-L93; L94-L97; L95-L95; L96-L96; L91-L91 | R1: missing direct bpP:p7:product-def use |
| stepP:p13:ch-same | FAIL | L95-L95 | R1: missing direct bpP:p13:data use |
| stepP:p13:ch-ham | FAIL | L96-L96 | R1: missing direct bpP:p13:data use |
| bpP:p13:pg-hypotheses | PASS | L99-L101; L102-L109; L103-L103; L104-L104; L105-L105; L106-L106; L107-L107; L108-L108; L100-L100 | Source fields, direct uses, application premises and scoped reachability agree. |
| stepP:p13:pg-sets | PASS | L103-L103 | Source fields, direct uses, application premises and scoped reachability agree. |
| stepP:p13:pg-h1 | PASS | L104-L104 | Source fields, direct uses, application premises and scoped reachability agree. |
| stepP:p13:pg-h2 | FAIL | L105-L105 | R1: missing direct bpP:p13:data use; R5: restore the H2 source domain w in C(V,r_0), rather than quantifying all w |
| stepP:p13:pg-h3 | PASS | L106-L106 | Source fields, direct uses, application premises and scoped reachability agree. |
| stepP:p13:pg-h4 | PASS | L107-L107 | Source fields, direct uses, application premises and scoped reachability agree. |
| stepP:p13:pg-h56 | FAIL | L108-L108 | R1: missing direct bpP:p11b:beta-def use |
| bpP:p13:transport | FAIL | L111-L113; L114-L117; L115-L115; L116-L116; L111-L111; L112-L112 | R6: move EDGE to the actual consumer use, not a heading or the supplier step |
| stepP:p13:tr-torus | FAIL | L115-L115 | R1: missing direct bpP:p13:data use; R1: missing direct bpP:p1:chart use; R1: missing direct bpP:p0:cyltorus#IsCylinderTorus use; R1: missing direct bpP:p0:phystorus#IsPhysicalTorus use; R1: missing direct bpP:p1:ext-comp use; R1: missing direct bpP:p12:chart#cylinder-domain use |
| stepP:p13:tr-meas | FAIL | L116-L116 | R1: missing direct bpP:p13:data use; R1: missing direct bpP:p1:chart use; R1: missing direct bpP:p0:cylkol#IsCylinderKolmogorovSet use; R1: missing direct bpP:p0:cyltorus#IsCylinderTorus use; R1: missing direct bpP:p0:cylinder#cylinderCell use; R1: missing direct bpP:p1:ext-borel use; R1: missing direct bpP:p6:measure-positive use |
| bpP:p13:n2 | PASS | L119-L123; L124-L131; L125-L125; L126-L126; L127-L127; L128-L128; L129-L129; L130-L130; L120-L120 | Source fields, direct uses, application premises and scoped reachability agree. |
| stepP:p13:n2-const | FAIL | L125-L125 | R1: missing direct bpP:p13:data#choices use; R2: use fixed-Sun D7-D8 choices, not moving-Sun delivered constants |
| stepP:p13:n2-pg | PASS | L126-L126 | Source fields, direct uses, application premises and scoped reachability agree. |
| stepP:p13:n2-mu | FAIL | L127-L127 | R1: missing direct bpP:p13:data#choices use; R2: use fixed-Sun D7-D8 choices, not moving-Sun delivered constants |
| stepP:p13:n2-S | FAIL | L128-L128 | R1: missing direct bpP:p13:chart use; R1: missing direct bpP:p13:data#choices use; R2: use fixed-Sun D7-D8 choices, not moving-Sun delivered constants |
| stepP:p13:n2-tori | FAIL | L129-L129 | R1: missing direct bpP:p13:data use; R1: missing direct bpP:p13:chart use; R1: missing direct bpP:p13:data#choices use; R2: use fixed-Sun D7-D8 choices, not moving-Sun delivered constants |
| stepP:p13:n2-phys | FAIL | L130-L130 | R1: missing direct bpP:p6:tube-constants use |
| bpP:p13:n-general | FAIL | L135-L140; L141-L145; L142-L142; L143-L143; L144-L144; L136-L136 | R5: d,D depend on a alone; eta enters zeta_* and the coupling window |
| stepP:p13:ng-const | FAIL | L142-L142 | R5: d,D depend on a alone; eta enters zeta_* and the coupling window |
| stepP:p13:ng-wrap | FAIL | L143-L143 | R1: missing direct bpP:p6:tube-constants use; R4: L143 only identifies S1-S2; fixkol-assembly is applied at L144, not here |
| stepP:p13:ng-phys | FAIL | L144-L144 | R1: missing direct bpP:p6:tube-constants use |
| bpP:p13:fixed | FAIL | L153-L156; L157-L161; L158-L158; L159-L159; L160-L160 | R5: d,D depend on a alone; eta enters zeta_* and the coupling window |
| stepP:p13:fx-split | PASS | L158-L158 | Source fields, direct uses, application premises and scoped reachability agree. |
| stepP:p13:fx-2 | FAIL | L159-L159; L158-L158 | R6: move EDGE to the actual consumer use, not a heading or the supplier step |
| stepP:p13:fx-n | FAIL | L160-L160; L158-L158 | R6: move EDGE to the actual consumer use, not a heading or the supplier step |
| bpP:p13:quantifiers | FAIL | L163-L166; L164-L164; L165-L165 | R1: missing direct bpP:p13:data#choices use; R2: use fixed-Sun D7-D8 choices, not moving-Sun delivered constants; R3: the n=2 consumer must not consume the whole remark and thereby Part 11; project the consumed L164 clause |

The additional data#choices node below is an R2 replacement fragment for the split definition; it is not counted among the original 34 nodes.

## Coverage failures

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p13:data | FAIL | L72-L88 | R2: map the input/output pieces to their separate records |
| p13:prose-L70-L70 | FAIL | L70-L70 | R2: map the input/output pieces to their separate records |
| bpP:p13:quantifiers | FAIL | L163-L166 | R3: coverage must distinguish the consumed n=2 clause from the unconsumed general-n audit |
| p13:choices-L84-L85 | FAIL | L84-L85 | R2: inventory the split delivered-constant/choice node |
| p13:quantifiers-general-L165-L166 | FAIL | L165-L166 | R3: inventory the excluded general-n audit after projecting the n=2 claim |

all other coverage items PASS

The two supplemental coverage records accompany the data split and partial-remark exclusion. Existing heading, introduction, binder-table, totality, provenance, consumer-summary and notes exclusions are valid. The Part 11a sourcegap notice maps to the wrapper-based assembly; it does not add a new unproved input here. The direct Part 1 composition alias and f-mono uses are correctly inventoried.

## Suspected blueprint defects and limitations

Part 13 L7 calls the Part 11a dependency “the only open dependency”; L196 and L200 similarly describe accepted corpus results as open/planned. These are stale workflow remarks under the P-FIXED revision, not mathematical premises or proof-status evidence. No new paper erratum is independently alleged. One scope ambiguity should be clarified upstream: L53 explicitly allows n>=1, but the following same-form paragraph/packet quantifier “for the same n” includes torsion beta-hat defined in Part 11b only for n=2, and an R-nondegeneracy interface stated for n>=2. The R5 replacement quantifiers explicitly preserve the torsion statement in its n=2 context and the interface in its n>=2 context; no n=1 nondegeneracy theorem is supplied by this review. The frozen root only asserts n>=2.

## Replacement blocks

Each block is for P-p13. Existing blocks retain every nonfailing field and all identity/status/author metadata. Added nodes/items implement only the split and projection above.

### P-p13 — bpP:p13:fixed-hamiltonian-form

```text
NODE: bpP:p13:fixed-hamiltonian-form
KIND: proposition
TITLE: The fixed-Sun Hamiltonian has the same form as the moving-Sun one
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L51-L61
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L62-L66
CONTRACT_ID: bpP:p13:fixed-hamiltonian-form
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bpP:p6:conv#data (n, G, m0, m_i > 0, kappa = G m0); Psi = Psi^(n) the product Poincare chart of bpP:p7:product-chart; f_fix, f_mov the perturbations of bpP:p6:split and f^ = f o Psi; S_fix, S_mov the averages of Part 8 (bpP:p8:conv#data); (c) only: n = 2, the objects K_a, O_a, varrho, chi, r_*, C_*, O prime, T-set and T = Phi_varrho^-1 o Phi_chi of bpP:p11b:birkhoff-form (depending only on (G, m0, m, K_a), not on f), mu_0 > 0, r_0 in (0, r_*/sqrt2]
SOURCE_QUANTIFIERS: (a) for every n >= 1, every real eps, every w in O_n; (b) equality of the defined secular jets for n>=1 on their analytic domain, the R-nondegeneracy interface for n>=2, and the planar torsion comparison for n=2; (c) n = 2: mu_0 > 0 and r_0 in (0, r_*/sqrt2] arbitrary, w in the Birkhoff domain, eps real
SOURCE_CONCLUSION: (a) H_fix(Psi(w)) = h(Lambda) + eps f^_fix(w) with h, f^_fix independent of eps; Psi and h are those of H_mov; f^_fix = -G sum_{i<j} m_i m_j s_ij^{-1/2} is real analytic on Psi^{-1}(W); (b) f^_mov - f^_fix = ¦sum_i p^(i)¦^2/(2 m0), whose lambda-average is delta(Lambda) of bpP:p8:identification; all (xi,eta)-derivatives of order >= 1 of S_mov and S_fix agree, S_fix = C_0 + xi^T Q_h xi + eta^T Q_h eta + O(¦(xi,eta)¦^4), (nu, Omega = 2 sigma), Q_h, the quartic jet and the torsion beta^ are the same for both models, hence the R-nondegeneracy of (nu, Omega) with index and amount (bpP:p10:interface) holds for the fixed-Sun model; (c) P_fix := f^_fix o T on T-set (0 elsewhere): T(T-set) lies in the analyticity domain of f^_fix, P_fix is real analytic on T-set, 2pi-periodic in lambda, independent of eps, H_fix(Psi o T(w)) = h(Lambda) + eps P_fix(w) for all real eps and w in T-set, and HasBirkhoff(P_fix, int K, r_0, mu_0, P_0^fix, Omega, beta) with P_0^fix = C_0(a(I)), Omega = 2 sigma(a(I)), beta = beta^(a(I)) in the dictionary (I, phi, p, q) = (Lambda, lambda, y, x); Omega, beta coincide with the moving-Sun data and P_0^mov - P_0^fix = delta
CONSTANT_SCOPE: h, f^_fix independent of eps; the Birkhoff objects depend only on (G, m0, m, K_a), not on f nor on eps; delta depends on Lambda only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p13:fh-chart, stepP:p13:fh-id, stepP:p13:fh-bnf, bpP:p6:conv#data, bpP:p7:product-chart, bpP:p6:split, bpP:p8:conv#data, bpP:p11b:birkhoff-form, bpP:p0:fixham#fixedHamiltonian, bpP:p8:identification, bpP:p10:interface, bpP:p0:birkhoff#HasSecularBirkhoffForm, bpP:p12:sec-set#data, bpP:p7:product-def, bpP:p8:coeffs, bpP:p11b:beta-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p13:fh-chart | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L63-L63 | proof step (a) Chart
EDGE: stepP:p13:fh-id | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L64-L64 | proof step (b) Identification
EDGE: stepP:p13:fh-bnf | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L65-L65 | proof step (c) Birkhoff form
EDGE: bpP:p6:conv#data | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L49-L49 | the setting n, G, m0, m_i of Part 6 for the models
EDGE: bpP:p7:product-chart | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L49-L49 | the chart Psi = Psi^(n) and O_n
EDGE: bpP:p6:split | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L49-L49 | the perturbations f_fix, f_mov
EDGE: bpP:p8:conv#data | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L49-L49 | the averages S_fix, S_mov and the dictionary of Part 8
EDGE: bpP:p11b:birkhoff-form | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L49-L49 | the Birkhoff objects K_a, varrho, chi, r_*, C_*, T used in (c)
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L53-L53 | H_fix in (a)
EDGE: bpP:p8:identification | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L54-L54 | delta(Lambda) is the average of the difference (b)
EDGE: bpP:p10:interface | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L54-L54 | R-nondegeneracy, index and amount inherited for the fixed-Sun model
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L56-L56 | HasBirkhoff in (c)
EDGE: bpP:p12:sec-set#data | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L57-L57 | the dictionary (I, phi, p, q) of Part 12 in (c)
EDGE: bpP:p7:product-def | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L53-L53 | the product chart Psi and its domain O_n used directly
EDGE: bpP:p8:coeffs | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L54-L54 | C_0 or Q_h of the secular coefficient package
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed-hamiltonian-form@L54-L54 | the named torsion beta-hat package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the reference to bpP:p12:pg-hypotheses (L57) only compares the Omega, beta with the moving-Sun ones (deleted); the source note (L60) is provenance
```

### P-p13 — stepP:p13:fh-chart

```text
NODE: stepP:p13:fh-chart
KIND: step
TITLE: (a) Chart
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-chart@L63-L63
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-chart@L63-L63
CONTRACT_ID: stepP:p13:fh-chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: context of the Proposition part (a): n >= 1, eps real, w in O_n
SOURCE_QUANTIFIERS: Psi, f_fix as in the Proposition; eps real, w in O_n
SOURCE_CONCLUSION: H_fix = H_Kep + eps f_fix on all of Ph_2n (total functions); composing with Psi and H_Kep o Psi = h(Lambda) gives H_fix(Psi(w)) = h(Lambda) + eps f^_fix(w); analyticity of f^_fix on Psi^{-1}(W)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:split, bpP:p7:product-chart, bpP:p8:perturbation-analytic, bpP:p0:fixham#fixedHamiltonian, bpP:p6:conv#data, bpP:p8:conv#data, bpP:p7:product-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:split | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-chart@L63-L63 | H_fix = H_Kep + eps f_fix on all of Ph_2n
EDGE: bpP:p7:product-chart | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-chart@L63-L63 | H_Kep o Psi = h(Lambda) by (b),(c); analyticity of Psi by (c)
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-chart@L63-L63 | analyticity of f^_fix by part (b)
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-chart@L63-L63 | H_fix, the Hamiltonian being decomposed
EDGE: bpP:p6:conv#data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-chart@L63-L63 | the collision-free set W and physical model notation
EDGE: bpP:p8:conv#data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-chart@L63-L63 | hat f, the secular averages and their chart-coordinate dictionary
EDGE: bpP:p7:product-def | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-chart@L63-L63 | the product chart Psi and its domain O_n used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:fh-id

```text
NODE: stepP:p13:fh-id
KIND: step
TITLE: (b) Identification
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-id@L64-L64
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-id@L64-L64
CONTRACT_ID: stepP:p13:fh-id
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: context of the Proposition part (b): Psi, f_fix, f_mov, S_fix, S_mov of Part 8
SOURCE_QUANTIFIERS: n>=1 for the defined averages/jets on their analytic domain; n>=2 for the interface; n=2 for the planar torsion beta-hat
SOURCE_CONCLUSION: difference formula f^_mov - f^_fix = ¦sum p^(i)¦^2/(2 m0) and its average delta(Lambda); equality of the (xi,eta)-jets, of Q_h, Omega, Q_4 and beta^ for S_fix and S_mov; the statements of bpP:p10:interface (which mention f only through Q_h) are inherited
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:split, bpP:p8:identification, bpP:p8:lemma64, bpP:p8:same-jets, bpP:p11b:beta-def, bpP:p10:interface, bpP:p8:conv#data, bpP:p8:coeffs
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:split | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-id@L64-L64 | the difference formula of the two perturbations
EDGE: bpP:p8:identification | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-id@L64-L64 | the average of the difference is delta(Lambda)
EDGE: bpP:p8:lemma64 | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-id@L64-L64 | the cross terms vanish exactly
EDGE: bpP:p8:same-jets | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-id@L64-L64 | equality of jets, Q_h, Omega, Q_4 (Corollary same-jets (a))
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-id@L64-L64 | beta^ is the same for S_fix and S_mov
EDGE: bpP:p10:interface | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-id@L64-L64 | its statements never mention f beyond Q_h, so they are inherited
EDGE: bpP:p8:conv#data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-id@L64-L64 | hat f, the secular averages and their chart-coordinate dictionary
EDGE: bpP:p8:coeffs | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-id@L64-L64 | C_0 or Q_h of the secular coefficient package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:fh-bnf

```text
NODE: stepP:p13:fh-bnf
KIND: step
TITLE: (c) Birkhoff form
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-bnf@L65-L65
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-bnf@L65-L65
CONTRACT_ID: stepP:p13:fh-bnf
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: context of the Proposition part (c): n = 2 and the Birkhoff objects of bpP:p11b:birkhoff-form; step (a) gives H_fix o Psi = h + eps f^_fix
SOURCE_QUANTIFIERS: mu_0 > 0, r_0 in (0, r_*/sqrt2]
SOURCE_CONCLUSION: bpP:p11b:birkhoff-form holds for f^_fix with the same T and K = S_fix(Lambda, varrho x, varrho y) (no delta, P_0 = C_0): values in the analyticity domain, average and remainder C_* ¦z¦^6 and HasBirkhoff; H_fix o Psi o T = h + eps P_fix by (a) and since T preserves Lambda
CONSTANT_SCOPE: the constants of Theorem birkhoff-form (no dependence on f)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:birkhoff-form, stepP:p11b:bt-K, stepP:p11b:bt-avg, bpP:p11b:lift-map, stepP:p13:fh-chart, bpP:p8:conv#data, bpP:p8:coeffs, bpP:p11b:beta-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:birkhoff-form | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-bnf@L65-L65 | Theorem stated for f^ in {f^_fix, f^_mov} with the same T; parts (a),(b),(c)
EDGE: stepP:p11b:bt-K | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-bnf@L65-L65 | the proof of the theorem with K = S_fix itself (step bt-K)
EDGE: stepP:p11b:bt-avg | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-bnf@L65-L65 | the average and remainder (step bt-avg)
EDGE: bpP:p11b:lift-map | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-bnf@L65-L65 | T preserves Lambda
EDGE: stepP:p13:fh-chart | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-bnf@L65-L65 | the identity H_fix o Psi o T = h + eps P_fix is (a)
EDGE: bpP:p8:conv#data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-bnf@L65-L65 | hat f, the secular averages and their chart-coordinate dictionary
EDGE: bpP:p8:coeffs | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-bnf@L65-L65 | C_0 or Q_h of the secular coefficient package
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fh-bnf@L65-L65 | the named torsion beta-hat package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the Corollary same-jets (c) transfer is only a check (L65, deleted)
```

### P-p13 — bpP:p13:data

```text
NODE: bpP:p13:data
KIND: definition
TITLE: Data of P-G for the fixed-Sun model
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L72-L88
PROOF_SOURCE: -
CONTRACT_ID: bpP:p13:data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n = 2; (G, m0, m, a, eta) as in bpP:p0:fixed (m_i > 0, 0 < a_1 < a_2, eta > 0); the geometric choices (D1)-(D5) of Definition bpP:p12:data; bpP:p13:fixed-hamiltonian-form(c)
SOURCE_QUANTIFIERS: (D1)-(D6) chosen successively: zeta_*, d, D, delta; eta prime; patch a°, rho_a, K_a, O_a, B; boxes K, O, V, W and collar A_c, d_c; Birkhoff data; P-G input data (a = b = 2, V, W, A_c, d_c, r_0 = r_*/2, mu_0^G = 1, B and H_0, P, P_0, Omega, beta). Nothing depends on eps; D7-D8 are recorded separately in bpP:p13:data#choices
SOURCE_CONCLUSION: defines: zeta_* = min{eta, gamma_a/6}, d = gamma_a/2, D = 2 a_max + gamma_a, delta = delta_zeta_*; eta prime; a°, rho_a, K_a, B = min over K_a of ¦det beta^¦ > 0; V, W, A_c, d_c; varrho, chi, r_*, C_*, O prime, T-set, T; H_0 = h, P(mu, w) = P_fix(w), P_0(mu, I) = C_0(a(I)), Omega(mu, I) = 2 sigma(a(I)), beta(mu, I) = beta^(a(I)) for I in V (0 outside), H_eps := degenerateHamiltonian H_0 P eps with P_fix extended by 0 outside T-set
CONSTANT_SCOPE: the constants (D1)-(D5) are the geometric choices of bpP:p12:data and do not involve the perturbation; (D6) uses P_fix and P_0=C_0, with Omega,beta unchanged; all depend on the fixed physical data and preceding choices, not on eps; no P-G output is assumed
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p12:data, bpP:p6:tube-constants, bpP:p12:forward-tube, bpP:p11b:patch, bpP:p12:collar, bpP:p11b:birkhoff-form, bpP:p0:degham#degenerateHamiltonian, bpP:p13:fixed-hamiltonian-form, bpP:p8:coeffs, bpP:p11b:beta-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p12:data | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L70-L70 | the unchanged D1-D5 geometric choices of Part 12; D6 functions are defined here for P_fix
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L75-L75 | zeta_*, d, D
EDGE: bpP:p12:forward-tube | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L75-L75 | delta = delta_zeta_* of the forward-tube lemma
EDGE: bpP:p11b:patch | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L77-L77 | the patch a°, rho_a, K_a, O_a and B > 0 (Corollary patch)
EDGE: bpP:p12:collar | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L78-L78 | the collar constants A_c, d_c
EDGE: bpP:p11b:birkhoff-form | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L79-L79 | the Birkhoff data varrho, chi, r_*, C_*, O prime, T-set, T for K_a
EDGE: bpP:p0:degham#degenerateHamiltonian | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L82-L82 | H_eps := degenerateHamiltonian H_0 P eps
EDGE: bpP:p13:fixed-hamiltonian-form | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L83-L83 | P_fix of part (c) and its zero extension
EDGE: bpP:p8:coeffs | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L81-L81 | C_0 or Q_h of the secular coefficient package
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L81-L81 | the named torsion beta-hat package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — bpP:p13:chart

```text
NODE: bpP:p13:chart
KIND: proposition
TITLE: The total chart for the fixed Sun
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:chart@L90-L93
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:chart@L94-L97
CONTRACT_ID: bpP:p13:chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of Definition bpP:p13:data; Psi_tot = Psi^(2) o T on T-set (0 elsewhere); H_eps = h + eps P_fix (bpP:p0:degham)
SOURCE_QUANTIFIERS: eps real, w in T-set
SOURCE_CONCLUSION: parts (a),(b),(c),(e) of bpP:p12:chart hold verbatim (they concern T-set, T, Psi^(2), not the perturbation); (d) becomes H_fix(Psi_tot(w)) = H_0(Lambda) + eps P_fix(w), i.e. H_fix^{Psi_tot} = H_eps on T-set
CONSTANT_SCOPE: those of bpP:p13:data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p13:ch-same, stepP:p13:ch-ham, bpP:p13:data, bpP:p12:chart, bpP:p7:product-chart, bpP:p0:degham#degenerateHamiltonian, bpP:p7:product-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p13:ch-same | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:chart@L95-L95 | unchanged parts of bpP:p12:chart
EDGE: stepP:p13:ch-ham | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:chart@L96-L96 | the Hamiltonian identity (d)
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:chart@L91-L91 | Psi_tot, H_eps, P_fix of the data
EDGE: bpP:p12:chart | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:chart@L91-L91 | parts (a),(b),(c),(e) hold verbatim
EDGE: bpP:p7:product-chart | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:chart@L91-L91 | the chart Psi^(2)
EDGE: bpP:p0:degham#degenerateHamiltonian | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:chart@L91-L91 | H_eps = h + eps P_fix as degenerateHamiltonian
EDGE: bpP:p7:product-def | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:chart@L91-L91 | the product chart Psi and its domain O_n used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:ch-same

```text
NODE: stepP:p13:ch-same
KIND: step
TITLE: Unchanged parts
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ch-same@L95-L95
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ch-same@L95-L95
CONTRACT_ID: stepP:p13:ch-same
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: context of Proposition bpP:p13:chart; the steps of bpP:p12:chart do not mention the Hamiltonian
SOURCE_QUANTIFIERS: data of bpP:p13:data
SOURCE_CONCLUSION: Steps ch-dom, ch-chart, ch-lat, ch-tube of Part 12 hold unchanged; the image inclusion of ch-dom is the statement of bpP:p11b:birkhoff-form for both f^
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p12:ch-dom, stepP:p12:ch-chart, stepP:p12:ch-lat, stepP:p12:ch-tube, bpP:p11b:birkhoff-form, bpP:p13:data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p12:ch-dom | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ch-same@L95-L95 | unchanged step (domain)
EDGE: stepP:p12:ch-chart | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ch-same@L95-L95 | unchanged step (chart)
EDGE: stepP:p12:ch-lat | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ch-same@L95-L95 | unchanged step (lattice)
EDGE: stepP:p12:ch-tube | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ch-same@L95-L95 | unchanged step (tube)
EDGE: bpP:p11b:birkhoff-form | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ch-same@L95-L95 | the image inclusion holds for both f^
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ch-same@L95-L95 | fixed-Sun input data and chosen geometric objects used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:ch-ham

```text
NODE: stepP:p13:ch-ham
KIND: step
TITLE: The Hamiltonian
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ch-ham@L96-L96
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ch-ham@L96-L96
CONTRACT_ID: stepP:p13:ch-ham
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: context of Proposition bpP:p13:chart
SOURCE_QUANTIFIERS: eps real, w in T-set
SOURCE_CONCLUSION: H_fix(Psi_tot(w)) = H_0(Lambda) + eps P_fix(w)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p13:fixed-hamiltonian-form, bpP:p13:data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p13:fixed-hamiltonian-form | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ch-ham@L96-L96 | part (c)
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ch-ham@L96-L96 | fixed-Sun input data and chosen geometric objects used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:pg-h2

```text
NODE: stepP:p13:pg-h2
KIND: step
TITLE: (H2) Periodicity
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:pg-h2@L105-L105
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:pg-h2@L105-L105
CONTRACT_ID: stepP:p13:pg-h2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition bpP:p13:data
SOURCE_QUANTIFIERS: k in Z^2, eps in [0, mu_0], w in C(V,r_0)
SOURCE_CONCLUSION: (H2): P(mu, w + iota prime_k) = P(mu, w) since T(w + iota prime_k) = T(w) + iota prime_k and f^_fix = f_fix o Psi^(2) is 2pi-periodic in each lambda_i
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:lift-map, bpP:p7:product-chart, bpP:p0:fastshift#fastShift, bpP:p13:data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:lift-map | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:pg-h2@L105-L105 | T(w + iota prime_k) = T(w) + iota prime_k
EDGE: bpP:p7:product-chart | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:pg-h2@L105-L105 | 2pi-periodicity of Psi^(2) in lambda by (a)
EDGE: bpP:p0:fastshift#fastShift | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:pg-h2@L105-L105 | iota prime_k = shift(k)
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:pg-h2@L105-L105 | fixed-Sun input data and chosen geometric objects used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:pg-h56

```text
NODE: stepP:p13:pg-h56
KIND: step
TITLE: (H5), (H6)
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:pg-h56@L108-L108
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:pg-h56@L108-L108
CONTRACT_ID: stepP:p13:pg-h56
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition bpP:p13:data
SOURCE_QUANTIFIERS: I in V
SOURCE_CONCLUSION: (H5),(H6): beta = beta^ o a is symmetric and ¦det beta¦ >= B on V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p12:pg-h56, bpP:p13:fixed-hamiltonian-form, bpP:p13:data, bpP:p11b:beta-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p12:pg-h56 | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:pg-h56@L108-L108 | Step (H5),(H6) of Part 12
EDGE: bpP:p13:fixed-hamiltonian-form | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:pg-h56@L108-L108 | beta^ is the same function for the two models (part (b))
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:pg-h56@L108-L108 | beta, B of D3, D6
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:pg-h56@L108-L108 | the named torsion beta-hat package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — bpP:p13:transport

```text
NODE: bpP:p13:transport
KIND: proposition
TITLE: Cylinder tori of $H_\varepsilon$ are physical tori of $H_{\rm fix}$
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:transport@L111-L113
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:transport@L114-L117
CONTRACT_ID: bpP:p13:transport
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of Definition bpP:p13:data; eps real, 0 < r <= r_0, w in R^4, K : R^4 -> Ph4 with IsCylTorus(H_eps, C(V, r), w, K), w (gamma, tau)-Diophantine with gamma > 0, tau > 4; second part: 0 < r < r_0, 2 r^2 <= delta, S in Ph4 with IsCylKol(H_eps, V, r, eps, C, S) and 0 < meas(S cap F(V, r))
SOURCE_QUANTIFIERS: for all eps, r, w, K, gamma, tau as stated; for all S in the second part
SOURCE_CONCLUSION: K_ph = Psi_tot o K satisfies IsPhysTorus(H_fix, w, K_ph) with H_fix = fixedHamiltonian G m0 m eps (d = 4) and K_ph(R^4) = Psi_tot(K(R^4)); and Psi_tot(S) is Borel, contained in U_zeta_*, and 0 < meas Psi_tot(S) < infinity
CONSTANT_SCOPE: as in bpP:p13:data; no constant introduced
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p13:tr-torus, stepP:p13:tr-meas, bpP:p13:data, bpP:p13:chart, bpP:p0:cyltorus#IsCylinderTorus, bpP:p0:phystorus#IsPhysicalTorus, bpP:p0:cylkol#IsCylinderKolmogorovSet, bpP:p0:fixham#fixedHamiltonian, bpP:p0:diophantine#IsDiophantine, bpP:p0:cylinder#cylinder, bpP:p0:cylinder#cylinderCell
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p13:tr-torus | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:transport@L115-L115 | proof step torus predicate
EDGE: stepP:p13:tr-meas | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:transport@L116-L116 | proof step measure
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:transport@L112-L112 | V, r_0, delta, zeta_*, H_eps of the data
EDGE: bpP:p13:chart | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:transport@L112-L112 | Psi_tot with H_fix^{Psi_tot} = H_eps
EDGE: bpP:p0:cyltorus#IsCylinderTorus | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:transport@L112-L112 | IsCylTorus in the hypothesis
EDGE: bpP:p0:phystorus#IsPhysicalTorus | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:transport@L112-L112 | IsPhysTorus in the conclusion
EDGE: bpP:p0:cylkol#IsCylinderKolmogorovSet | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:transport@L112-L112 | IsCylKol in the second part
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:transport@L112-L112 | H_fix = fixedHamiltonian G m0 m eps
EDGE: bpP:p0:diophantine#IsDiophantine | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:transport@L112-L112 | (gamma, tau)-Diophantine
EDGE: bpP:p0:cylinder#cylinder | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:transport@L112-L112 | C(V, r)
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:transport@L112-L112 | F(V, r) the cell
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Proposition bpP:p12:transport and bpP:p12:measure are stated for H_mov and are replayed step by step (their steps are the edges of the two proof steps), not applied
```

### P-p13 — stepP:p13:tr-torus

```text
NODE: stepP:p13:tr-torus
KIND: step
TITLE: Torus predicate
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115
CONTRACT_ID: stepP:p13:tr-torus
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H_fix^{Psi_tot} = H_eps on the open set T-set; differentiability of H_eps at K(theta) (IsCylTorus (ii)); Lemma bpP:p1:chart-field, Corollary bpP:p1:chart-orbit
SOURCE_QUANTIFIERS: eps real, 0 < r <= r_0, w, K as in the Proposition
SOURCE_CONCLUSION: Steps tr-an to tr-dio of bpP:p12:transport hold with H_mov, H_mu replaced by H_fix, H_eps: IsPhysTorus(H_fix, w, Psi_tot o K)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p12:tr-an, stepP:p12:tr-per, stepP:p12:tr-inj, stepP:p12:tr-lag, stepP:p12:tr-flow, stepP:p12:tr-dio, bpP:p13:chart, bpP:p1:chart-field, bpP:p1:chart-orbit, bpP:p13:data, bpP:p1:chart, bpP:p0:cyltorus#IsCylinderTorus, bpP:p0:phystorus#IsPhysicalTorus, bpP:p1:ext-comp, bpP:p12:chart#cylinder-domain
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p12:tr-an | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | Step of Part 12, replayed
EDGE: stepP:p12:tr-per | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | Step of Part 12, replayed
EDGE: stepP:p12:tr-inj | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | Step of Part 12, replayed
EDGE: stepP:p12:tr-lag | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | Step of Part 12, replayed
EDGE: stepP:p12:tr-flow | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | Step of Part 12, replayed
EDGE: stepP:p12:tr-dio | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | Step of Part 12, replayed
EDGE: bpP:p13:chart | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | the identity H_fix^{Psi_tot} = H_eps on T-set
EDGE: bpP:p1:chart-field | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | transport of the vector field by the chart
EDGE: bpP:p1:chart-orbit | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | transport of orbits
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | fixed-Sun input data and chosen geometric objects used here
EDGE: bpP:p1:chart | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | the conformal chart hypotheses, with factor c=1
EDGE: bpP:p0:cyltorus#IsCylinderTorus | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | the cylinder torus clauses used in this replay
EDGE: bpP:p0:phystorus#IsPhysicalTorus | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | the physical torus clauses being verified
EDGE: bpP:p1:ext-comp | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | analytic composition and the derivative chain rule in the replay
EDGE: bpP:p12:chart#cylinder-domain | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-torus@L115-L115 | C(V,r) lies in the common T for r<=r_0, before any delta-smallness condition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:tr-meas

```text
NODE: stepP:p13:tr-meas
KIND: step
TITLE: Measure
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116
CONTRACT_ID: stepP:p13:tr-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < r < r_0, 2 r^2 <= delta, S with IsCylKol(H_eps, V, r, eps, C, S) and 0 < meas(S cap F(V, r)); the Hamiltonian enters only as the argument of IsCylKol
SOURCE_QUANTIFIERS: as in the Proposition
SOURCE_CONCLUSION: Psi_tot(S) is Borel, in U_zeta_* and 0 < meas Psi_tot(S) < infinity: the proof of bpP:p12:measure applies verbatim
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p12:me-inv, stepP:p12:me-cell, stepP:p12:me-meas, stepP:p12:me-tube, bpP:p1:liouville, bpP:p13:chart, bpP:p13:data, bpP:p1:chart, bpP:p0:cylkol#IsCylinderKolmogorovSet, bpP:p0:cyltorus#IsCylinderTorus, bpP:p0:cylinder#cylinderCell, bpP:p1:ext-borel, bpP:p6:measure-positive
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p12:me-inv | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116 | step of Part 12 (union of whole tori invariant under the fast lattice), replayed
EDGE: stepP:p12:me-cell | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116 | step of Part 12 (shift into the cell), replayed
EDGE: stepP:p12:me-meas | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116 | step of Part 12 (Liouville on the cell, positivity), replayed
EDGE: stepP:p12:me-tube | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116 | step of Part 12 (finiteness from the tube), replayed
EDGE: bpP:p1:liouville | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116 | volume preservation of the chart
EDGE: bpP:p13:chart | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116 | tube inclusion of bpP:p12:chart(e) holds for the fixed Sun
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116 | fixed-Sun input data and chosen geometric objects used here
EDGE: bpP:p1:chart | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116 | the conformal chart hypotheses, with factor c=1
EDGE: bpP:p0:cylkol#IsCylinderKolmogorovSet | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116 | Borelness and the union of whole cylinder tori
EDGE: bpP:p0:cyltorus#IsCylinderTorus | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116 | the cylinder torus clauses used in this replay
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116 | the fast-angle half-open fundamental cell
EDGE: bpP:p1:ext-borel | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116 | Borel image under the continuous chart, injective on the cell
EDGE: bpP:p6:measure-positive | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:tr-meas@L116-L116 | finite measure of a set contained in the physical tube
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:n2-const

```text
NODE: stepP:p13:n2-const
KIND: step
TITLE: Constants
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-const@L125-L125
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-const@L125-L125
CONTRACT_ID: stepP:p13:n2-const
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition bpP:p13:data
SOURCE_QUANTIFIERS: (G, m0, m, a, eta) given
SOURCE_CONCLUSION: choose all constants of Definition bpP:p13:data; 0 < d < D; eps_0 > 0 since 0 < r < 1 and log(1/r) > 0; they depend on (G, m0, m, a, eta) only
CONSTANT_SCOPE: d, D depend on a alone; eps_0 on all the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p13:data, bpP:p6:tube-constants, bpP:p12:f-mono, bpP:p13:quantifiers, bpP:p13:data#choices
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-const@L125-L125 | the constants (D1)-(D8)
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-const@L125-L125 | 0 < d < D
EDGE: bpP:p12:f-mono | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-const@L125-L125 | elementary positivity of r^6/(log(1/r))^c
EDGE: bpP:p13:quantifiers | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-const@L125-L125 | dependence of the constants
EDGE: bpP:p13:data#choices | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-const@L125-L125 | the fixed-Sun r_G,C_G,c_G and subsequent r,eps_0, chosen after verification of the D6 input
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:n2-mu

```text
NODE: stepP:p13:n2-mu
KIND: step
TITLE: The coupling
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-mu@L127-L127
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-mu@L127-L127
CONTRACT_ID: stepP:p13:n2-mu
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r_G, C_G, c_G of stepP:p13:n2-pg; r and eps_0 of bpP:p13:data; 0 < eps < eps_0
SOURCE_QUANTIFIERS: 0 < eps < eps_0
SOURCE_CONCLUSION: 0 < r < r_G, 0 < eps < 1 = mu_0^G and eps < r^6/(log(1/r))^c_G, so P-G gives S_cyl with IsCylKol(H_eps, V, r, eps, C_G, S_cyl) and 0 < meas(S_cyl cap F(V, r)), where H_eps = H_0 + eps P(eps, .), P(eps, .) = P_fix
CONSTANT_SCOPE: S_cyl depends on eps; r, C_G do not
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p13:n2-pg, bpP:p13:data, bpP:p0:pg, bpP:p0:cylkol#IsCylinderKolmogorovSet, bpP:p13:data#choices
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p13:n2-pg | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-mu@L127-L127 | the constants r_G, c_G and the validity of P-G
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-mu@L127-L127 | V, H_eps and P_fix of the D6 input
EDGE: bpP:p0:pg | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-mu@L127-L127 | the conclusion of P-G for 0 < eps < eps_0
EDGE: bpP:p0:cylkol#IsCylinderKolmogorovSet | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-mu@L127-L127 | IsCylKol
EDGE: bpP:p13:data#choices | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-mu@L127-L127 | the fixed-Sun r_G,C_G,c_G and subsequent r,eps_0, chosen after verification of the D6 input
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:n2-S

```text
NODE: stepP:p13:n2-S
KIND: step
TITLE: The physical set
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-S@L128-L128
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-S@L128-L128
CONTRACT_ID: stepP:p13:n2-S
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S_cyl of stepP:p13:n2-mu; 2 r^2 <= delta/2 < delta, r < r_0
SOURCE_QUANTIFIERS: 0 < eps < eps_0
SOURCE_CONCLUSION: S = Psi_tot(S_cyl) is Borel, S in U_zeta_*, 0 < meas S < infinity
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p13:transport, stepP:p13:n2-mu, bpP:p13:data, bpP:p13:chart, bpP:p13:data#choices
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p13:transport | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-S@L128-L128 | measure part of the Proposition
EDGE: stepP:p13:n2-mu | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-S@L128-L128 | S_cyl
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-S@L128-L128 | r, delta, zeta_*
EDGE: bpP:p13:chart | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-S@L128-L128 | the total chart Psi_tot defining the physical image
EDGE: bpP:p13:data#choices | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-S@L128-L128 | the fixed-Sun r_G,C_G,c_G and subsequent r,eps_0, chosen after verification of the D6 input
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:n2-tori

```text
NODE: stepP:p13:n2-tori
KIND: step
TITLE: Tori
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-tori@L129-L129
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-tori@L129-L129
CONTRACT_ID: stepP:p13:n2-tori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: z = Psi_tot(s) in S with s in S_cyl; IsCylKol data
SOURCE_QUANTIFIERS: z in S
SOURCE_CONCLUSION: IsPhysTorus(H_fix, w, Psi_tot o K), Psi_tot(K(theta)) = z, Psi_tot(K(R^4)) in S, with w Diophantine
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p13:transport, stepP:p13:n2-mu, stepP:p13:n2-S, bpP:p0:cylkol#IsCylinderKolmogorovSet, bpP:p0:phystorus#IsPhysicalTorus, bpP:p13:data, bpP:p13:chart, bpP:p13:data#choices
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p13:transport | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-tori@L129-L129 | cylinder tori transport to physical tori
EDGE: stepP:p13:n2-mu | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-tori@L129-L129 | IsCylKol supplies w, K, theta, K(R^4) in S_cyl
EDGE: stepP:p13:n2-S | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-tori@L129-L129 | S = Psi_tot(S_cyl)
EDGE: bpP:p0:cylkol#IsCylinderKolmogorovSet | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-tori@L129-L129 | IsCylKol gives w, K, theta
EDGE: bpP:p0:phystorus#IsPhysicalTorus | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-tori@L129-L129 | IsPhysTorus
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-tori@L129-L129 | fixed-Sun input data and chosen geometric objects used here
EDGE: bpP:p13:chart | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-tori@L129-L129 | the total chart Psi_tot defining the physical image
EDGE: bpP:p13:data#choices | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-tori@L129-L129 | the fixed-Sun r_G,C_G,c_G and subsequent r,eps_0, chosen after verification of the D6 input
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:n2-phys

```text
NODE: stepP:p13:n2-phys
KIND: step
TITLE: Physical clauses
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-phys@L130-L130
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-phys@L130-L130
CONTRACT_ID: stepP:p13:n2-phys
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S Borel in U_zeta_*, every point on an IsPhysTorus(H_fix, .) torus inside S
SOURCE_QUANTIFIERS: 0 < eps < eps_0
SOURCE_CONCLUSION: FixKol(G, m0, m, a, eps, eta, d, D, S): NoColl by tube-geometry (d), IsFixedSol by orbit-transfer (b), PairBounds with the Sun at the origin by tube-geometry (e); the measure bounds are those of n2-S
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:fixkol-assembly, bpP:p13:data, bpP:p6:tube-geometry, bpP:p6:orbit-transfer, stepP:p13:n2-S, stepP:p13:n2-tori, bpP:p0:fixkol#FixedKolmogorovSet, bpP:p0:nocoll#NoCollision, bpP:p0:fixedsol#IsFixedSolution, bpP:p0:nocoll#PairBounds, bpP:p6:tube-constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:fixkol-assembly | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-phys@L130-L130 | physical clauses of FixKol
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-phys@L130-L130 | zeta_*, d, D of D1
EDGE: bpP:p6:tube-geometry | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-phys@L130-L130 | NoColl (d) and PairBounds (e)
EDGE: bpP:p6:orbit-transfer | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-phys@L130-L130 | IsFixedSol (b)
EDGE: stepP:p13:n2-S | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-phys@L130-L130 | S Borel in the tube, measure bounds
EDGE: stepP:p13:n2-tori | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-phys@L130-L130 | every point of S on a physical torus inside S
EDGE: bpP:p0:fixkol#FixedKolmogorovSet | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-phys@L130-L130 | FixKol
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-phys@L130-L130 | NoColl
EDGE: bpP:p0:fixedsol#IsFixedSolution | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-phys@L130-L130 | IsFixedSol
EDGE: bpP:p0:nocoll#PairBounds | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-phys@L130-L130 | PairBounds
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-phys@L130-L130 | the chosen physical tube radius zeta_* and axis-only d,D
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — bpP:p13:n-general

```text
NODE: bpP:p13:n-general
KIND: theorem
TITLE: P-FIXED for every $n\ge2$, route (a)
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:n-general@L135-L140
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:n-general@L141-L145
CONTRACT_ID: bpP:p13:n-general
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 2; G, m0 > 0; m, a : Fin n -> R with m_i > 0, a strictly increasing and positive; eta > 0
SOURCE_QUANTIFIERS: data (n, G, m0, m, a, eta) first; with zeta_*, d, D of Definition bpP:p6:tube-constants there is eps_0 > 0; then for every 0 < eps < eps_0 there is S in Ph(n*2)
SOURCE_CONCLUSION: for every n >= 2: with zeta_*, d, D of bpP:p6:tube-constants there is eps_0 > 0 such that for every 0 < eps < eps_0 there is S in Ph(n*2) with 0 < meas S < infinity and FixKol(G, m0, m, a, eps, eta, d, D, S)
CONSTANT_SCOPE: d,D depend on a alone; zeta_* on (a,eta); eps_0 on the fixed data; S on eps as well
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p13:ng-const, stepP:p13:ng-wrap, stepP:p13:ng-phys, bpP:p6:tube-constants, bpP:p0:fixkol#FixedKolmogorovSet, bpP:p0:phase#Phase
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p13:ng-const | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:n-general@L142-L142 | proof step constants
EDGE: stepP:p13:ng-wrap | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:n-general@L143-L143 | proof step the wrapper
EDGE: stepP:p13:ng-phys | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:n-general@L144-L144 | proof step physical clauses
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:n-general@L136-L136 | zeta_*, d, D
EDGE: bpP:p0:fixkol#FixedKolmogorovSet | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:n-general@L136-L136 | FixKol
EDGE: bpP:p0:phase#Phase | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:n-general@L136-L136 | S in Ph(n*2)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: route (a) for general n; the reference to bpP:p11:kam-input and the Part 11a labels in the sourcegap (L139) is a statement that the dependency goes through the wrapper (bpP:p11:wrapper, via stepP:p13:ng-wrap); no direct edge, per the text "the part cites the wrapper only"
```

### P-p13 — stepP:p13:ng-const

```text
NODE: stepP:p13:ng-const
KIND: step
TITLE: Constants
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-const@L142-L142
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-const@L142-L142
CONTRACT_ID: stepP:p13:ng-const
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data (n, G, m0, m, a, eta) with the hypotheses hn, hG, hm0, hm, ha, hsep, heta
SOURCE_QUANTIFIERS: data fixed
SOURCE_CONCLUSION: zeta_*, d, D are those of Definition bpP:p6:tube-constants (0 < d < D, depending on (a, eta) only); eps_0 is the number of bpP:p11:wrapper for the data, eps_0 > 0, independent of eps
CONSTANT_SCOPE: d,D depend on a alone; zeta_* on (a,eta); eps_0 on the fixed data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:tube-constants, bpP:p11:wrapper
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-const@L142-L142 | zeta_*, d, D
EDGE: bpP:p11:wrapper | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-const@L142-L142 | the number eps_0 of the wrapper
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:ng-wrap

```text
NODE: stepP:p13:ng-wrap
KIND: step
TITLE: The wrapper
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-wrap@L143-L143
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-wrap@L143-L143
CONTRACT_ID: stepP:p13:ng-wrap
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < eps < eps_0 for eps_0 of stepP:p13:ng-const
SOURCE_QUANTIFIERS: 0 < eps < eps_0
SOURCE_CONCLUSION: bpP:p11:wrapper gives a Borel S in Ph(n*2) with 0 < meas S < infinity, S in U_zeta_*, and for every z in S data w, K, theta_0 with z = K(theta_0), K(R^2n) in S, IsPhysTorus(H_fix, w, K): hypotheses (S1)-(S2) of bpP:p6:fixkol-assembly
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11:wrapper, stepP:p13:ng-const, bpP:p6:tube-constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11:wrapper | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-wrap@L143-L143 | gives S with its physical tori
EDGE: stepP:p13:ng-const | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-wrap@L143-L143 | the threshold eps_0
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-wrap@L143-L143 | the chosen physical tube radius zeta_* and axis-only d,D
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — stepP:p13:ng-phys

```text
NODE: stepP:p13:ng-phys
KIND: step
TITLE: Physical clauses
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-phys@L144-L144
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-phys@L144-L144
CONTRACT_ID: stepP:p13:ng-phys
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S of stepP:p13:ng-wrap meeting (S1)-(S2)
SOURCE_QUANTIFIERS: 0 < eps < eps_0
SOURCE_CONCLUSION: FixKol(G, m0, m, a, eps, eta, d, D, S) by bpP:p6:fixkol-assembly (clauses by tube-geometry (d),(e), orbit-transfer (b)); the measure bounds are those of the wrapper
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:fixkol-assembly, stepP:p13:ng-wrap, bpP:p6:tube-geometry, bpP:p6:orbit-transfer, bpP:p11:wrapper, bpP:p0:fixkol#FixedKolmogorovSet, bpP:p6:tube-constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:fixkol-assembly | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-phys@L144-L144 | physical clauses of FixKol
EDGE: stepP:p13:ng-wrap | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-phys@L144-L144 | S with (S1)-(S2)
EDGE: bpP:p6:tube-geometry | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-phys@L144-L144 | NoColl and PairBounds
EDGE: bpP:p6:orbit-transfer | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-phys@L144-L144 | IsFixedSol
EDGE: bpP:p11:wrapper | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-phys@L144-L144 | measure bounds of the wrapper
EDGE: bpP:p0:fixkol#FixedKolmogorovSet | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-phys@L144-L144 | FixKol
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:ng-phys@L144-L144 | the chosen physical tube radius zeta_* and axis-only d,D
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the pointer "clauses as in Step n2-phys" is not an edge (the lemmas are cited directly)
```

### P-p13 — bpP:p13:fixed

```text
NODE: bpP:p13:fixed
KIND: theorem
TITLE: P-FIXED: $n$ planar planets around a fixed Sun
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed@L153-L156
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed@L157-L161
CONTRACT_ID: bpP:p13:fixed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 2 (hn); G, m0 > 0; m, a : Fin n -> R with m_i > 0, a_i > 0, i < j -> a_i < a_j; eta > 0 (the frozen statement bpP:p0:fixed)
SOURCE_QUANTIFIERS: data first; then exists eps_0, d, D (0 < eps_0, 0 < d < D); then for every eps in (0, eps_0) exists S
SOURCE_CONCLUSION: bpP:p0:fixed holds: exists eps_0 > 0, 0 < d < D such that for every 0 < eps < eps_0 there is S with 0 < meas S < infinity and FixKol(G, m0, m, a, eps, eta, d, D, S); for n = 2 by bpP:p13:n2, for n >= 3 by bpP:p13:n-general
CONSTANT_SCOPE: eps_0 depends on the fixed data; d,D on a alone; S on eps as well
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p13:fx-split, stepP:p13:fx-2, stepP:p13:fx-n, bpP:p0:fixkol#FixedKolmogorovSet
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p13:fx-split | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed@L158-L158 | case split n = 2 or n >= 3
EDGE: stepP:p13:fx-2 | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed@L159-L159 | case n = 2
EDGE: stepP:p13:fx-n | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed@L160-L160 | case n >= 3
EDGE: bpP:p0:fixkol#FixedKolmogorovSet | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:fixed@L160-L160 | FixKol in the common conclusion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the two case theorems feed it through steps fx-2, fx-n (conjunctive case split, not alternatives)
```

### P-p13 — stepP:p13:fx-2

```text
NODE: stepP:p13:fx-2
KIND: step
TITLE: $n=2$
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fx-2@L159-L159
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fx-2@L159-L159
CONTRACT_ID: stepP:p13:fx-2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n = 2 (from stepP:p13:fx-split); after subst of n = 2 the dependent data m, a, hsep and the types Fin (2*2), Fin 4 are identified (index dictionary paragraph, L13)
SOURCE_QUANTIFIERS: data (G, m0, m, a, eta)
SOURCE_CONCLUSION: the frozen conclusion for n = 2, by bpP:p13:n2; Ph(2*2) is the phase space of that theorem
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p13:n2, stepP:p13:fx-split
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p13:n2 | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fx-2@L159-L159 | Theorem n2 after subst
EDGE: stepP:p13:fx-split | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fx-2@L159-L159 | the case n = 2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the subst of n = 2 (L13, L159) has no mathematical content (SPEC: Lean dependent-type transport), no node
```

### P-p13 — stepP:p13:fx-n

```text
NODE: stepP:p13:fx-n
KIND: step
TITLE: $n\ge3$
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fx-n@L160-L160
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fx-n@L160-L160
CONTRACT_ID: stepP:p13:fx-n
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 3 (from stepP:p13:fx-split)
SOURCE_QUANTIFIERS: data (n, G, m0, m, a, eta)
SOURCE_CONCLUSION: the frozen conclusion exists eps_0 > 0, 0 < d < D, forall eps in (0, eps_0) exists S with 0 < meas S < infinity and FixKol, in the frozen order, by bpP:p13:n-general
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p13:n-general, stepP:p13:fx-split
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p13:n-general | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fx-n@L160-L160 | Theorem n-general
EDGE: stepP:p13:fx-split | blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:fx-n@L160-L160 | the case n >= 3
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p13 — bpP:p13:quantifiers

```text
NODE: bpP:p13:quantifiers
KIND: claim
TITLE: Order of the constants against the frozen quantifiers
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L163-L164
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L164-L164
CONTRACT_ID: bpP:p13:quantifiers
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=2; the table of bpP:p12:quantifiers and D1-D6 of bpP:p13:data, with D7-D8 supplied by bpP:p13:data#choices
SOURCE_QUANTIFIERS: n = 2; fixed physical data first, then fixed-Sun constants, then eps, then S
SOURCE_CONCLUSION: n = 2: r_G, C_G, c_G depend on the data D6 (including P_fix), r and eps_0 as in D8, d, D on a alone, eps_0 on (G, m0, m, a, eta) through delta, the patch and P-G; only after (eps_0, d, D) does eps enter, selecting S_cyl then S = Psi_tot(S_cyl); the Kepler part, chart, patch and T do not depend on eps. General n: data, patch, (mu bar, beta bar), J_0, gamma_0, chart constants, the fixed part of the KAM datum and its constants, nu_2, eps_0, eps; d, D first and depending only on a
CONSTANT_SCOPE: as stated
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p12:quantifiers, bpP:p13:data, bpP:p13:fixed-hamiltonian-form, bpP:p13:data#choices
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p12:quantifiers | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L164-L164 | the table of Remark quantifiers applies with changes
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L164-L164 | D6, D8 constants
EDGE: bpP:p13:fixed-hamiltonian-form | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L164-L164 | part (a): Kepler part, chart, patch, T independent of eps
EDGE: bpP:p13:data#choices | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L164-L164 | the fixed-Sun r_G,C_G,c_G and subsequent r,eps_0, chosen after verification of the D6 input
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
```

### P-p13 — bpP:p13:data#choices

```text
NODE: bpP:p13:data#choices
KIND: definition
TITLE: Fixed-Sun P-G witnesses and subsequent secular-radius/coupling choices
STATEMENT_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L84-L85
PROOF_SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#stepP:p13:n2-const@L125-L127
CONTRACT_ID: bpP:p13:data#choices
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed physical data and D1-D6 input data of bpP:p13:data; no delivered P-G constant is assumed
SOURCE_QUANTIFIERS: after the fixed-Sun P-G input has been verified, choose r_G,C_G,c_G, then r and eps_0; all before eps
SOURCE_CONCLUSION: stepP:p13:n2-pg supplies r_G,C_G,c_G>0 with r_G<r_0 and r_G<1 for P_fix; define r=(1/2)min{r_G,sqrt(delta/2)} and eps_0=min{1,r^6/(log(1/r))^c_G}>0; 0<r<r_G<r_0, r<1, 2r^2<=delta/2; no choice depends on eps
CONSTANT_SCOPE: r_G,C_G,c_G depend on the fixed-Sun D6 input; r on r_G,delta; eps_0 on r,c_G; all depend only on the fixed data and earlier choices
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p13:data, stepP:p13:n2-pg, bpP:p12:f-mono
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p13:data | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data#choices@L84-L85 | D6 input and geometric delta, with P_fix rather than P_mov
EDGE: stepP:p13:n2-pg | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data#choices@L126-L127 | P-G applied after verifying H1-H6 supplies the fixed-Sun witnesses
EDGE: bpP:p12:f-mono | blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data#choices@L125-L125 | positivity of the logarithm and coupling threshold
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-u
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: R2: split D7-D8 from the input-only data node so that hypothesis verification does not assume the conclusion of its P-G application.
```

### P-p13 — coverage bpP:p13:data

```text
ITEM: bpP:p13:data
KIND: definition
SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L72-L88
DISPOSITION: NODE bpP:p13:data, bpP:p13:data#choices
REASON: D1-D6 fixed-Sun input maps to bpP:p13:data; delivered D7-D8 witnesses and subsequent choices map to bpP:p13:data#choices; the n=2 setting is unchanged
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
```

### P-p13 — coverage p13:prose-L70-L70

```text
ITEM: p13:prose-L70-L70
KIND: proof-region
SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#prose@L70-L70
DISPOSITION: NODE bpP:p13:data, bpP:p13:n2, bpP:p13:data#choices
REASON: D1-D6 fixed-Sun input maps to bpP:p13:data; delivered D7-D8 witnesses and subsequent choices map to bpP:p13:data#choices; the n=2 setting is unchanged
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
```

### P-p13 — coverage bpP:p13:quantifiers

```text
ITEM: bpP:p13:quantifiers
KIND: claim
SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L163-L164
DISPOSITION: NODE bpP:p13:quantifiers
REASON: the n=2 constant-dependence claim at L164 is consumed by stepP:p13:n2-const; the general-n audit L165-L166 is excluded separately, so it cannot introduce the Part 11 wrapper into the n=2 closure
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p13
REVIEWER: -
```

### P-p13 — coverage p13:choices-L84-L85

```text
ITEM: p13:choices-L84-L85
KIND: proof-region
SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:data@L84-L85
DISPOSITION: NODE bpP:p13:data#choices
REASON: R2: delivered P-G witnesses and subsequent radius/threshold choice are separate from D1-D6 hypothesis data
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-u
REVIEWER: -
```

### P-p13 — coverage p13:quantifiers-general-L165-L166

```text
ITEM: p13:quantifiers-general-L165-L166
KIND: proof-region
SOURCE: blueprint-P/parts/p13-fixed-assembly.tex#bpP:p13:quantifiers@L165-L166
DISPOSITION: EXCLUDED
REASON: general-n order-of-constants audit restating bpP:p11:wrapper; no proof consumes this clause (n2-const uses only the n=2 clause L164)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-u
REVIEWER: -
```

## Validation

All corpus/import pins verify (`sha256sum -c` exits 0). The original structural packet check reports `P-p13: 34 nodes, 173 edges, 61 coverage items, 0 problems, 0 TODO records (not counted: --structural)`. Semantic failures above are not detected by that check.

Snapshot SHA-256:

- `docs/graph/P/packets/P-p13.nodes.md`: `f6efb958ea4af0f0f0eb23b90e9efb28b7e8468fd1043bd5f7f823826682461c`.
- `docs/graph/P/packets/P-p13.coverage.md`: `97b3742334a7b8939bb2133ed6c4141f7641518ed681771d879c022369de6d71`.
- `blueprint-P/parts/p13-fixed-assembly.tex`: `8b208fe0799dec36bf3ff95b51a08bda6d2ca705491e045fe7d3c150838bb9e5`.

Read-only replacement application dry run: `P-p13: 26 replaced, 1 added, 5 coverage items, 0 unresolved FAILs, 8 PASS nodes`. All original 34 nodes have exactly one verdict row (26 FAIL, 8 PASS). The five coverage fragments are three original-item replacements and two supplemental items; the other 58 original coverage items PASS. Independent checks confirm one EDGE per DEPS/ROUTES entry, existing targets, correct separators and line bounds, unchanged nonfailing fields and author/identity/status metadata, and unchanged packet/source snapshot hashes. In-memory application of the proposals gives a 795-node n=2 closure with no Part 11/11a nodes, and no cycle in the P-p13 fixed-root closure. This is a scoped topology check, not a global graph or Lean proof certification. `git diff --check -- docs/graph/P/reviews/P-p13-review.md` exits 0. No replacement was applied to a packet.
