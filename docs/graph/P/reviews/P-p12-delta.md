# P-p12 delta topology review

**Verdict: FAIL.** Reviewer: `sol-delta-P-c`. Marker: `delta-P-c`.

Reviewed only the current **54 TOPOLOGY_STATUS: PROPOSED nodes** and **72 COVERAGE_STATUS: PROPOSED items**. Node verdicts: **48 PASS, 6 FAIL**. Coverage verdicts: **72 PASS, 0 FAIL**. I am distinct from extractor `sonnet-extract-P-p12` and reviewer `sol-review-P-a`.

Read DELTA-BRIEF and REVIEW-BRIEF in full, the binding SPEC including its latest ownership ruling, the latest P-p12 review and its rev-P-a2 follow-up. Re-read all 216 lines of Part 12, every proposed statement/proof and EDGE span, and all raw prerequisite statements in P Parts 0/1/6/7/8/9/11b, including bt-avg. There is no direct imported K/I/N node or frozen anchor in this assigned packet. No implementation/provider Lean, manifest state, or proof status was inspected.

## Resolution of the earlier failures

The systematic SOURCE_CONCLUSION / CONSTANT_SCOPE transposition is repaired throughout. The source hypotheses now distinguish source inputs from results derived by the proof; the corrected flow quantifier has theta in R^4. The added section/package edges generally name actual uses. The optional exponent-lowering pointer and the backward movkol-assembly edge are absent where the earlier review requested their removal.

**data#choices PASS.** D1–D5 remain in data, D6 is input-only pg-data, and the actual application pl-pg depends on pg-hypotheses and P-G. D7–D9 then depend on pl-pg, with the exact radius and positive logarithmic threshold chosen before mu. Neither the verified input tuple nor its premise-checking nodes assume the delivered P-G constants. No cycle through any P-p12 node is present.

**chart#cylinder-domain PASS.** L106's first two sentences prove C(V,r) subset T for 0<r<=r_0, with the Euclidean bound |z|_2<sqrt(2)r<=r_*/sqrt(2)<r_*. No tube-smallness premise is added. The full chart(e) still correctly requires 2r^2<=delta for the physical-tube conclusion. The new intermediate supplies the weaker inclusion needed by transport; D3 and D4 below correct two residual application edges without changing either source statement.

The two Newton derivations at L170 are genuine alternatives, and their ROUTES / ROUTE_FOR and EDGE records agree. Each route has the physical orbit and tube inputs needed to apply its Part 6 theorem. The common collision and pair-bound consequences remain on the parent. There are no mechanically added route edges with the generic “alternative derivation offered by the proof (route)” rationale.

The inherited-quantifier text in me-cell, me-meas and me-tube is acceptable in context: the data and set are fixed by measure, and injectivity supplies its universal point quantification in the conclusion. No binder/domain is changed merely to improve wording. The convergence rule is applied to the concrete defects below only.

## Remaining findings

**D1 — missing direct definition use, sec-set#data (L17).** The dictionary explicitly identifies R_j=(x_j^2+y_j^2)/2, the frozen oscillator action transcribed at p0 L91–95. Add that direct definition edge. The assemble and cylinder edges do not themselves record this named action definition.

**D2 — missing construction value, ft-cpt (L37).** The node defines Q_0 using delta_0 and ft-uc consumes that delta_0, but no source field defines it as (1/4) min_i Lambda_i^*. Merely listing its dependence leaves out the radius choice that ensures Q_0 subset O_2 and the forward-tube upper bound. Add that source value to SOURCE_CONCLUSION only; do not change any radius.

**D3 — non-direct edge, pg-h1 (L125).** The new cylinder-domain node proves an inclusion for an open cylinder. This does not imply the inclusion of its closure into the open T. The L125 proof independently checks Lambda in K subset O-prime and |z|_2<=sqrt(2)r_0=r_*/sqrt(2)<r_* using data and pg-data, both already direct inputs. Remove only the cylinder-domain DEPS/EDGE pair from pg-h1. Its use by pg-h2, pg-h4 and the transport inclusion remains valid.

**D4 — residual incorrect use-site claim, transport.** Its chart EDGE still says “C(V,r) in T, Proposition chart(e)” at L138, although chart(e) also assumes 2r^2<=delta and transport does not. Preserve the chart dependency: clauses (b)–(d) really are used at L139–143 in the constituent proof steps. Correct this one EDGE to those uses; the separate cylinder-domain edge supplies L138's inclusion without the extra premise.

**D5 — over-correction, tr-dio (L144).** This step checks tau>4>d-1 and gives the immediate range identity. It does not use any of data's chosen boxes, Birkhoff domain, or tube constants. Remove its data edge. Keep perturbation, which defines Psi_tot used by the range statement, and the two frozen Diophantine/physical-torus definitions.

**D6 — incorrect constant-table locator, quantifiers.** The pg-data edge now correctly describes the D6 inputs r_0 and mu_0^G, but it retains L188, which lists D7's delivered P-G constants. Move this edge to the actual D6 row L187; leave the choices edge and all fields unchanged.

## Proposed-node verdicts

`p12` denotes `blueprint-P/parts/p12-planar-assembly.tex`. Spans below include the statement, proof and every current EDGE location; the supporting prerequisite contracts were also read at their raw locators.

| ID | Verdict | Spans re-read | Reason for FAIL |
|---|---|---|---|
| bpP:p12:f-unif | PASS | p12 L25–25 | — |
| bpP:p12:f-mono | PASS | p12 L27–27 | — |
| bpP:p12:sec-set#data | FAIL | p12 L15–20 | D1: R_j is explicitly reused at L17 without a direct oscillatorAction definition edge. |
| bpP:p12:forward-tube | PASS | p12 L32–40 | — |
| stepP:p12:ft-cpt | FAIL | p12 L37–37 | D2: the constructed delta_0 used to define Q_0 and by ft-uc has no defining value in the record. |
| stepP:p12:ft-uc | PASS | p12 L38–38 | — |
| stepP:p12:ft-cmp | PASS | p12 L39–39 | — |
| bpP:p12:collar | PASS | p12 L42–52 | — |
| stepP:p12:co-inc | PASS | p12 L49–49 | — |
| stepP:p12:co-meas | PASS | p12 L50–51 | — |
| bpP:p12:fast-diffeo | PASS | p12 L54–61 | — |
| stepP:p12:fd-an | PASS | p12 L58–58 | — |
| stepP:p12:fd-open | PASS | p12 L59–59 | — |
| stepP:p12:fd-inv | PASS | p12 L60–60 | — |
| bpP:p12:data | PASS | p12 L65–72 | — |
| bpP:p12:data#pg-data | PASS | p12 L73–73 | — |
| bpP:p12:perturbation | PASS | p12 L81–89 | — |
| bpP:p12:chart | PASS | p12 L91–107 | — |
| stepP:p12:ch-dom | PASS | p12 L102–102 | — |
| stepP:p12:ch-chart | PASS | p12 L103–103 | — |
| stepP:p12:ch-lat | PASS | p12 L104–104 | — |
| stepP:p12:ch-ham | PASS | p12 L105–105 | — |
| stepP:p12:ch-tube | PASS | p12 L106–106 | — |
| bpP:p12:pg-hypotheses | PASS | p12 L111–130 | — |
| stepP:p12:pg-sets | PASS | p12 L124–124 | — |
| stepP:p12:pg-h1 | FAIL | p12 L125–125 | D3: the open-cylinder inclusion is not used to prove the stronger closure inclusion at L125; that inclusion is re-derived from D5/D6. |
| stepP:p12:pg-h2 | PASS | p12 L126–126 | — |
| stepP:p12:pg-h3 | PASS | p12 L127–127 | — |
| stepP:p12:pg-h4 | PASS | p12 L128–128 | — |
| stepP:p12:pg-h56 | PASS | p12 L129–129 | — |
| bpP:p12:transport | FAIL | p12 L134–145 | D4: the chart EDGE still claims a use of clause (e) at L138, whose extra delta premise transport does not assume. |
| stepP:p12:tr-an | PASS | p12 L139–139 | — |
| stepP:p12:tr-per | PASS | p12 L140–140 | — |
| stepP:p12:tr-inj | PASS | p12 L141–141 | — |
| stepP:p12:tr-lag | PASS | p12 L142–142 | — |
| stepP:p12:tr-flow | PASS | p12 L143–143 | — |
| stepP:p12:tr-dio | FAIL | p12 L144–144 | D5: the scalar Diophantine check and immediate range identity do not use the chosen boxes, Birkhoff domain or physical tube constants. |
| bpP:p12:measure | PASS | p12 L147–155 | — |
| stepP:p12:me-inv | PASS | p12 L151–151 | — |
| stepP:p12:me-cell | PASS | p12 L152–152 | — |
| stepP:p12:me-meas | PASS | p12 L153–153 | — |
| stepP:p12:me-tube | PASS | p12 L154–154 | — |
| bpP:p12:planar | PASS | p12 L159–171 | — |
| stepP:p12:pl-const | PASS | p12 L165–165 | — |
| stepP:p12:pl-pg | PASS | p12 L166–166 | — |
| stepP:p12:pl-mu | PASS | p12 L167–167 | — |
| stepP:p12:pl-S | PASS | p12 L168–168 | — |
| stepP:p12:pl-tori | PASS | p12 L169–169 | — |
| stepP:p12:pl-phys | PASS | p12 L170–170 | — |
| stepP:p12:pl-phys#route-orbit | PASS | p12 L170–170 | — |
| stepP:p12:pl-phys#route-tube | PASS | p12 L170–170 | — |
| bpP:p12:quantifiers | FAIL | p12 L173–195 | D6: the D6 input-data edge points to the D7 output-constants row L188; its actual use is L187. |
| bpP:p12:data#choices | PASS | p12 L74–79 | — |
| bpP:p12:chart#cylinder-domain | PASS | p12 L106–106 | — |

## Proposed-coverage verdicts

Every proposed item receives a row. Both split mappings pass: data maps D1–D5/D6/D7–D9 separately, and ch-tube maps its full tube step plus the independent cylinder-domain intermediate. Alias, administrative, pointer and provenance exclusions match the raw source. All other coverage items PASS; there are no coverage replacements.

| ID | Verdict | Spans re-read | Reason for FAIL |
|---|---|---|---|
| bpP:p12:f-comp | PASS | p12 L24-L24 | — |
| bpP:p12:f-unif | PASS | p12 L25-L25 | — |
| bpP:p12:f-borel | PASS | p12 L26-L26 | — |
| bpP:p12:f-mono | PASS | p12 L27-L27 | — |
| bpP:p12:forward-tube | PASS | p12 L32-L35 | — |
| stepP:p12:ft-cpt | PASS | p12 L37-L37 | — |
| stepP:p12:ft-uc | PASS | p12 L38-L38 | — |
| stepP:p12:ft-cmp | PASS | p12 L39-L39 | — |
| bpP:p12:collar | PASS | p12 L42-L47 | — |
| stepP:p12:co-inc | PASS | p12 L49-L49 | — |
| stepP:p12:co-meas | PASS | p12 L50-L51 | — |
| bpP:p12:fast-diffeo | PASS | p12 L54-L56 | — |
| stepP:p12:fd-an | PASS | p12 L58-L58 | — |
| stepP:p12:fd-open | PASS | p12 L59-L59 | — |
| stepP:p12:fd-inv | PASS | p12 L60-L60 | — |
| bpP:p12:data | PASS | p12 L65-L79 | — |
| bpP:p12:perturbation | PASS | p12 L81-L89 | — |
| bpP:p12:chart | PASS | p12 L91-L100 | — |
| stepP:p12:ch-dom | PASS | p12 L102-L102 | — |
| stepP:p12:ch-chart | PASS | p12 L103-L103 | — |
| stepP:p12:ch-lat | PASS | p12 L104-L104 | — |
| stepP:p12:ch-ham | PASS | p12 L105-L105 | — |
| stepP:p12:ch-tube | PASS | p12 L106-L106 | — |
| bpP:p12:pg-hypotheses | PASS | p12 L111-L122 | — |
| stepP:p12:pg-sets | PASS | p12 L124-L124 | — |
| stepP:p12:pg-h1 | PASS | p12 L125-L125 | — |
| stepP:p12:pg-h2 | PASS | p12 L126-L126 | — |
| stepP:p12:pg-h3 | PASS | p12 L127-L127 | — |
| stepP:p12:pg-h4 | PASS | p12 L128-L128 | — |
| stepP:p12:pg-h56 | PASS | p12 L129-L129 | — |
| bpP:p12:transport | PASS | p12 L134-L136 | — |
| stepP:p12:tr-an | PASS | p12 L139-L139 | — |
| stepP:p12:tr-per | PASS | p12 L140-L140 | — |
| stepP:p12:tr-inj | PASS | p12 L141-L141 | — |
| stepP:p12:tr-lag | PASS | p12 L142-L142 | — |
| stepP:p12:tr-flow | PASS | p12 L143-L143 | — |
| stepP:p12:tr-dio | PASS | p12 L144-L144 | — |
| bpP:p12:measure | PASS | p12 L147-L149 | — |
| stepP:p12:me-inv | PASS | p12 L151-L151 | — |
| stepP:p12:me-cell | PASS | p12 L152-L152 | — |
| stepP:p12:me-meas | PASS | p12 L153-L153 | — |
| stepP:p12:me-tube | PASS | p12 L154-L154 | — |
| bpP:p12:planar | PASS | p12 L159-L163 | — |
| stepP:p12:pl-const | PASS | p12 L165-L165 | — |
| stepP:p12:pl-pg | PASS | p12 L166-L166 | — |
| stepP:p12:pl-mu | PASS | p12 L167-L167 | — |
| stepP:p12:pl-S | PASS | p12 L168-L168 | — |
| stepP:p12:pl-tori | PASS | p12 L169-L169 | — |
| stepP:p12:pl-phys | PASS | p12 L170-L170 | — |
| bpP:p12:quantifiers | PASS | p12 L173-L195 | — |
| bpP:p12:contract | PASS | p12 L197-L199 | — |
| heading:bpP:p12 | PASS | p12 L1-L1 | — |
| heading:bpP:p12:sec-set | PASS | p12 L13-L13 | — |
| heading:bpP:p12:sec-lem | PASS | p12 L30-L30 | — |
| heading:bpP:p12:sec-data | PASS | p12 L63-L63 | — |
| heading:bpP:p12:sec-pg | PASS | p12 L109-L109 | — |
| heading:bpP:p12:sec-tr | PASS | p12 L132-L132 | — |
| heading:bpP:p12:sec-main | PASS | p12 L157-L157 | — |
| heading:bpP:p12:notes | PASS | p12 L201-L201 | — |
| p12:source-L34 | PASS | p12 L34-L34 | — |
| p12:source-L46 | PASS | p12 L46-L46 | — |
| p12:source-L162 | PASS | p12 L162-L162 | — |
| p12:prose-L4-L11 | PASS | p12 L4-L11 | — |
| p12:prose-L15-L20 | PASS | p12 L15-L20 | — |
| p12:prose-L22-L23 | PASS | p12 L22-L23 | — |
| p12:prose-L203-L203 | PASS | p12 L203-L203 | — |
| p12:prose-L205-L205 | PASS | p12 L205-L205 | — |
| p12:prose-L207-L207 | PASS | p12 L207-L207 | — |
| p12:prose-L209-L209 | PASS | p12 L209-L209 | — |
| p12:prose-L211-L211 | PASS | p12 L211-L211 | — |
| p12:prose-L213-L213 | PASS | p12 L213-L213 | — |
| p12:prose-L215-L216 | PASS | p12 L215-L216 | — |

## Replacement blocks

Each block belongs only to P-p12; all fields outside the listed failing fields are retained verbatim.

### P-p12: bpP:p12:sec-set#data

Changed fields: DEPS, EDGE.

```text
NODE: bpP:p12:sec-set#data
KIND: definition
TITLE: Section data of 12.1: the data of P-PLANAR, dictionary, cylinder inequality
STATEMENT_SOURCE: blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:sec-set#data@L15-L20
PROOF_SOURCE: -
CONTRACT_ID: bpP:p12:sec-set#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data): G,m_0>0, kappa=G m_0, m,a: Fin 2 -> R with m_i>0, 0<a_0<a_1, eta>0 (the data of Theorem bpP:p0:planar)
SOURCE_QUANTIFIERS: G,m_0,m,a,eta fixed first (outermost); V a bounded open box in R^2 and r>0 only in the cylinder inequality
SOURCE_CONCLUSION: defines the index dictionary (Lean planets 0,1 = planets 1,2; Lambda_i^*=m_i sqrt(kappa a_i); a_i(Lambda)=Lambda_i^2/(m_i^2 kappa)), the point w=((lambda,xi),(Lambda,eta)) of Ph(2+2)=Ph(2*2), z=assemble(I,phi,p,q) with (I,phi,p,q)=(Lambda,lambda,eta,xi), the chart Psi=Psi^(2), Gamma_i(w)=(xi_i^2+eta_i^2)/2, the oscillator variable z=(x,y)=(q,p), R_j and the Euclidean length ¦z¦_2; and states ¦z¦_2^2<2r^2 on the cylinder C(V,r) (eq cylnorm)
CONSTANT_SCOPE: (kappa depends on (G,m_0); Lambda_i^* on (G,m_0,m_i,a_i))
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:phase#Phase, bpP:p0:blocks#assemble, bpP:p0:cylinder#cylinder, bpP:p7:product-chart, bpP:p7:product-def, bpP:p0:oscaction#oscillatorAction
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:phase#Phase | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:sec-set#data@L15-L15 | Ph(4)=Ph(2+2)=Ph(2*2) is the frozen phase space
EDGE: bpP:p0:blocks#assemble | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:sec-set#data@L15-L15 | z=assemble(I,phi,p,q) of the dictionary
EDGE: bpP:p0:cylinder#cylinder | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:sec-set#data@L17-L17 | cylinder C(V,r) (b=2) used in the inequality cylnorm
EDGE: bpP:p7:product-chart | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:sec-set#data@L17-L17 | chart Psi=Psi^(2) of Theorem product-chart
EDGE: bpP:p7:product-def | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:sec-set#data@L15-L15 | axis set A_2, Lambda_i^*, a_i(Lambda), domain O_2 of the product chart
EDGE: bpP:p0:oscaction#oscillatorAction | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:sec-set#data@L17-L17 | R_j=(x_j^2+y_j^2)/2 is the frozen oscillator action in the stated dictionary
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p12+sol-review-P-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section data of 12.1 (SPEC section-data table); coverage prose-L15-L20. The dictionary section label bpP:p8:conv has no node of its own in the P-p8 draft, so no edge to it
```

### P-p12: stepP:p12:ft-cpt

Changed fields: SOURCE_CONCLUSION.

```text
NODE: stepP:p12:ft-cpt
KIND: step
TITLE: A compact set
STATEMENT_SOURCE: blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:ft-cpt@L37-L37
PROOF_SOURCE: blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:ft-cpt@L37-L37
CONTRACT_ID: stepP:p12:ft-cpt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source hypotheses of bpP:p12:forward-tube; cited theorem conclusions and earlier-step outputs are derived via DEPS, not additional premises
SOURCE_QUANTIFIERS: for the fixed (G,m_0,m,a); independent of zeta
SOURCE_CONCLUSION: defines delta_0=(1/4) min_i Lambda_i^*>0; Q_0={w: lambda in [0,2pi]^2, ¦Lambda_i-Lambda_i^*¦<=delta_0, xi_i^2+eta_i^2<=2delta_0} is compact and Q_0 is contained in O_2
CONSTANT_SCOPE: delta_0 and Q_0 depend on (G,m_0,m,a) only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:product-def, bpP:p12:sec-set#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:product-def | blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:ft-cpt@L37-L37 | definition of O_2: Lambda_i>0 and Gamma_i<Lambda_i on Q_0
EDGE: bpP:p12:sec-set#data | blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:ft-cpt@L37-L37 | Lambda_i^*, Gamma_i
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p12+sol-review-P-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p12: stepP:p12:pg-h1

Changed fields: DEPS, EDGE.

```text
NODE: stepP:p12:pg-h1
KIND: step
TITLE: (H1) Joint analyticity
STATEMENT_SOURCE: blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:pg-h1@L125-L125
PROOF_SOURCE: blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:pg-h1@L125-L125
CONTRACT_ID: stepP:p12:pg-h1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source hypotheses of bpP:p12:pg-hypotheses; mu in [0,1] and w in closure C(V,r_0); cited theorem conclusions and earlier-step outputs are derived via DEPS, not additional premises
SOURCE_QUANTIFIERS: for w in closure of C(V,r_0), mu in [0,1]
SOURCE_CONCLUSION: closure of C(V,r_0) lies in 𝒯 and (mu,w)->hat f_mov(T(w)) is real analytic on R x 𝒯, so P is real analytic at every point of [0,1] x closure C(V,r_0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p12:chart, bpP:p11b:birkhoff-form, bpP:p8:perturbation-analytic, bpP:p1:ext-comp, bpP:p12:data, bpP:p12:data#pg-data, bpP:p12:perturbation, bpP:p0:cylinder#cylinder
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p12:chart | blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:pg-h1@L125-L125 | 𝒯 is open, Proposition chart(a)
EDGE: bpP:p11b:birkhoff-form | blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:pg-h1@L125-L125 | T analytic with values in the domain of hat f, part (a)
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:pg-h1@L125-L125 | hat f_mov analytic on its domain, part (a)
EDGE: bpP:p1:ext-comp | blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:pg-h1@L125-L125 | composition of analytic maps (alias of external F1)
EDGE: bpP:p12:data | blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:pg-h1@L125-L125 | Lambda in K in O' and the radius r_*; definition of 𝒯
EDGE: bpP:p12:data#pg-data | blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:pg-h1@L125-L125 | r_0=r_*/2
EDGE: bpP:p12:perturbation | blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:pg-h1@L125-L125 | P(mu,w)=hat f_mov(T(w))
EDGE: bpP:p0:cylinder#cylinder | blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:pg-h1@L125-L125 | closure of C(V,r_0)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p12+sol-review-P-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p12: bpP:p12:transport

Changed fields: EDGE.

```text
NODE: bpP:p12:transport
KIND: proposition
TITLE: Cylinder tori of $H_\mu$ are physical tori of $H_{\rm mov}$
STATEMENT_SOURCE: blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L134-L136
PROOF_SOURCE: blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L137-L145
CONTRACT_ID: bpP:p12:transport
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: mu in R; 0<r<=r_0; w in R^4 a frequency; K: R^4 -> Ph4 with IsCylTorus(H_mu,C(V,r),w,K); gamma>0, tau>4, w (gamma,tau)-Diophantine
SOURCE_QUANTIFIERS: for all mu, r in (0,r_0], w, K, gamma, tau
SOURCE_CONCLUSION: K_ph=Psi_tot o K satisfies IsPhysTorus(H_mov,w,K_ph) (d=4, H_mov=movingHamiltonian G m_0 m mu) and K_ph(R^4)=Psi_tot(K(R^4))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p12:tr-an, stepP:p12:tr-per, stepP:p12:tr-inj, stepP:p12:tr-lag, stepP:p12:tr-flow, stepP:p12:tr-dio, bpP:p12:chart, bpP:p12:data#pg-data, bpP:p12:perturbation, bpP:p12:sec-set#data, bpP:p0:cyltorus#IsCylinderTorus, bpP:p0:phystorus#IsPhysicalTorus, bpP:p0:cylinder#cylinder, bpP:p0:diophantine#IsDiophantine, bpP:p0:degham#degenerateHamiltonian, bpP:p0:movham#movingHamiltonian, bpP:p12:chart#cylinder-domain, bpP:p12:data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p12:tr-an | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L139-L139 | (i)
EDGE: stepP:p12:tr-per | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L140-L140 | (ii)
EDGE: stepP:p12:tr-inj | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L141-L141 | (iii)
EDGE: stepP:p12:tr-lag | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L142-L142 | (iv)
EDGE: stepP:p12:tr-flow | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L143-L143 | (v)
EDGE: stepP:p12:tr-dio | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L144-L144 | (vi)
EDGE: bpP:p12:chart | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L139-L143 | chart clauses (b)-(d) supply analyticity, lattice properties, invertible symplectic derivative and the Hamiltonian identity in the constituent proof steps; cylinder-domain separately supplies the inclusion at L138
EDGE: bpP:p12:data#pg-data | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L135-L135 | r_0
EDGE: bpP:p12:perturbation | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L135-L135 | Psi_tot
EDGE: bpP:p12:sec-set#data | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L135-L135 | G,m_0,m of H_mov
EDGE: bpP:p0:cyltorus#IsCylinderTorus | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L135-L135 | hypothesis IsCylTorus
EDGE: bpP:p0:phystorus#IsPhysicalTorus | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L135-L135 | conclusion IsPhysTorus
EDGE: bpP:p0:cylinder#cylinder | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L135-L135 | C(V,r)
EDGE: bpP:p0:diophantine#IsDiophantine | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L135-L135 | (gamma,tau)-Diophantine
EDGE: bpP:p0:degham#degenerateHamiltonian | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L135-L135 | H_mu
EDGE: bpP:p0:movham#movingHamiltonian | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L135-L135 | H_mov
EDGE: bpP:p12:chart#cylinder-domain | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L137-L145 | the inclusion used at L138 requires only r<=r_0, not the additional tube-smallness premise of chart(e)
EDGE: bpP:p12:data | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:transport@L137-L145 | the chosen V and T used in the source contract
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p12+sol-review-P-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Theorem bpP:p1:torus-transport is explicitly not used (L138); edge dropped
```

### P-p12: stepP:p12:tr-dio

Changed fields: DEPS, EDGE.

```text
NODE: stepP:p12:tr-dio
KIND: step
TITLE: (vi) Diophantine
STATEMENT_SOURCE: blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:tr-dio@L144-L144
PROOF_SOURCE: blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:tr-dio@L144-L144
CONTRACT_ID: stepP:p12:tr-dio
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: tau>4; w (gamma,tau)-Diophantine
SOURCE_QUANTIFIERS: d=4
SOURCE_CONCLUSION: tau>4>d-1=3 gives clause (vii) of IsPhysTorus; the range statement holds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:phystorus#IsPhysicalTorus, bpP:p0:diophantine#IsDiophantine, bpP:p12:perturbation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:phystorus#IsPhysicalTorus | blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:tr-dio@L144-L144 | clause (vii)
EDGE: bpP:p0:diophantine#IsDiophantine | blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:tr-dio@L144-L144 | the Diophantine condition
EDGE: bpP:p12:perturbation | blueprint-P/parts/p12-planar-assembly.tex#stepP:p12:tr-dio@L144-L144 | the defined Psi_tot / pulled-back Hamiltonian used in this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p12+sol-review-P-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The optional pointer to dio-basic(a) is not used: tau>4 already implies tau>d-1=3 at the same exponent. No lowering argument or alternate route is required.
```

### P-p12: bpP:p12:quantifiers

Changed fields: EDGE.

```text
NODE: bpP:p12:quantifiers
KIND: claim
TITLE: Order of the constants against the frozen quantifiers
STATEMENT_SOURCE: blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:quantifiers@L173-L195
PROOF_SOURCE: blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:quantifiers@L173-L195
CONTRACT_ID: bpP:p12:quantifiers
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of Definition data; frozen statement forall(G,m_0,m,a,eta) exists(mu_0,d,D) forall mu in (0,mu_0) exists S
SOURCE_QUANTIFIERS: constants chosen in the table's order; mu enters only after (mu_0,d,D)
SOURCE_CONCLUSION: each constant of Definition data depends only on the quantities of the table (e.g. gamma_a,zeta_*,d,D on a (zeta_* also eta); delta on (G,m_0,m,a,eta); r_*, T on (G,m_0,m,K_a); r_G,C_G,c_G on all P-G data; r on (r_G,delta); mu_0 on (r,c_G)); r is fixed before mu so the chart image of C(V,r) lies in the zeta_*-tube
CONSTANT_SCOPE: exactly the dependence table of the remark
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p12:data, bpP:p12:data#pg-data, bpP:p12:forward-tube, bpP:p12:collar, bpP:p12:chart, bpP:p12:data#choices
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p12:data | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:quantifiers@L174-L174 | the constants of the table
EDGE: bpP:p12:data#pg-data | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:quantifiers@L187-L187 | D6 input data including r_0 and mu_0^G=1; delivered constants and choices are in data#choices
EDGE: bpP:p12:forward-tube | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:quantifiers@L182-L182 | delta=delta_{zeta_*} depends on (G,m_0,m,a,eta)
EDGE: bpP:p12:collar | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:quantifiers@L185-L185 | A_c,d_c depend on (a^o,rho_a)
EDGE: bpP:p12:chart | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:quantifiers@L194-L194 | the chart image of C(V,r) lies in the zeta_*-tube, Proposition chart(e)
EDGE: bpP:p12:data#choices | blueprint-P/parts/p12-planar-assembly.tex#bpP:p12:quantifiers@L173-L195 | D7-D9: the supplied P-G constants followed by the chosen r and mu_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p12+sol-review-P-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: kept as a node: cited by stepP:p12:pl-const as the place where the order of choice and the dependence lists are recorded; the pointer to Step pl-mu (L194) is not an edge
```

## Source observations and limits

The previously reported citation mismatch remains in the manuscript at L138: it names the full chart(e) instead of the weaker domain intermediate proved at L106. This is not a counterexample to transport and does not require a new hypothesis; the graph now has the correct intermediate. D4 makes its chart use-site line consistent with that distinction. No new pinned-paper erratum is asserted, and no paper was re-audited.

The closed-cylinder margin in H1 and the open-cylinder domain inclusion are kept distinct. The total-function extensions outside T or V are guarded at their applications. Fast angles have period 2*pi, torus parameters period one, and the oscillator Euclidean square bound is 2r^2 for two discs. The physical d,D are chosen before mu, without a new axis-separation premise beyond distinct increasing positive axes. The cell-restricted Borel image and Liouville argument uses actual injectivity; full-position-lattice transport is explicitly not used.

## Validation and scope

The unmodified slice structural checker reports `54 nodes, 355 edges, 72 coverage items, 0 problems, 0 TODO records`. All current CORPUS and IMPORTS hashes match. Each assigned DEPS/ROUTES target exists, EDGE correspondence and locator bounds hold, every assigned node is reachable from a root, and no directed cycle contains a P-p12 node. The same structural/reachability/cycle checks were repeated on the in-memory replacement overlay. These checks do not replace manual source-use or conditional-premise review.

The review applier dry run reports `6 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 91 PASS nodes`. Its PASS count includes repeated node IDs from the required coverage rows; there are 48 distinct passed node IDs. No coverage replacement is supplied. All 126 proposed records appear exactly once in their appropriate verdict tables; complete replacement blocks are provided for the six failed nodes. Every replacement changes only its listed fields. Packet hashes were rechecked unchanged after writing, and whitespace checks pass.

| Input | SHA-256 |
|---|---|
| docs/graph/P/packets/P-p12.nodes.md | 4dcf71933cd44443885b1e893e2d992c94078f08930ecc140d66cff2504f0916 |
| docs/graph/P/packets/P-p12.coverage.md | 17defe9d4de70e17b57e6ce0bb27108828d7996e38a428a08489c5b5972a191b |
| blueprint-P/parts/p12-planar-assembly.tex | 83eee5fc9d881bf115be39e811ffc58cc206d45355d7956599115c9c7e0965db |

Only `docs/graph/P/reviews/P-p12-delta.md` was written. No packet, source, SPEC, manifest, other review or git state was edited. No Lean or build was run. This is a source-topology review, not proof closure.
