# N-p910: second-round delta topology review

Reviewer: `sol-delta2-N-e`. Scope: only the currently PROPOSED records, checked against the first delta report and the raw source under the convergence rule.

Verdict: **FAIL** — 19 proposed nodes pass, 2 fail; the single proposed coverage item passes. Both failures are over-strong time domains in statement fields.

In the table, Part 8 means `blueprint-N/parts/p8-resonance-geometry.tex`, Part 9 means `blueprint-N/parts/p9-poschel-theorem1.tex`, and Part 10 means `blueprint-N/parts/p10-assembly.tex`. Spans include every EDGE consumer locator of each proposed record.

| ID | Verdict | Source spans re-read | Assessment |
| --- | --- | --- | --- |
| stepN:p10:hc-h | PASS | Part 10 L77–77 | The hypotheses now give the enclosing source assumptions rather than the derived Hessian estimate; the tube and norm conversion inputs supply the conclusion. |
| stepN:p10:hc-qc | PASS | Part 10 L79–79 | Source assumptions replace the previously assumed conversion output; the conversion, real restriction, tube inclusion and chosen constants supply its premises. |
| stepN:p10:hc-f | PASS | Part 10 L81–81 | Source assumptions replace the derived perturbation estimate; the domain restriction, weighted norm conversion and chosen constants are explicit. |
| stepN:p10:hc-field | PASS | Part 10 L89–89 | The source assumptions and tube supply an open domain of equality; the restriction and vector-field inputs give the claimed field identity. |
| stepN:p10:cf-setting | PASS | Part 10 L100–100 | The enclosing source data and solution assumptions replace a derived setting premise; hypotheses-check supplies the conditional setting. |
| stepN:p10:cf-branch | FAIL | Part 10 L104–104 | SOURCE_CONCLUSION omits t ∈ J. L104 explicitly restricts the conclusion to t ∈ J; the total curve is constrained by the solution predicate only on J. |
| stepN:p10:cf-trans | FAIL | Part 10 L106–106 | SOURCE_CONCLUSION omits t ∈ J when asserting the drift bound. L106 concludes the proposition at L95–96 by using the interval-restricted estimate at L104. |
| stepN:p10:ex-rho | PASS | Part 10 L116–116 | The source data replace the derived positivity/smallness premise; choice-props supplies these inequalities. |
| stepN:p10:ex-apriori | PASS | Part 10 L120–120 | The open interval containing zero and the initial condition are explicit; confinement supplies exactly the interval-restricted estimate. |
| stepN:p10:ex-glue | PASS | Part 10 L122–122 | The source data replace the previously assumed gluing premises; the radius, closed-ball and a-priori inputs supply the conditional gluing hypotheses. |
| stepN:p10:hd-abc | PASS | Part 10 L150–150 | The source hypotheses replace the existence conclusion as a premise; existence supplies the chosen witness and clauses (a)–(c). |
| stepN:p10:hd-d | PASS | Part 10 L152–152 | The previously chosen witness is legitimate local proof data; uniqueness supplies clause (d), without assuming it. |
| stepN:p10:hd-dep | PASS | Part 10 L154–154 | The source data and previous witness replace a uniformity premise; the constants remain fixed while the curve may depend on the later data. |
| stepN:p9:om-max | PASS | Part 9 L67–67 | The actual Theorem-1 setting, centre and closed ball replace the derived maximum/derivative facts; local regularity supplies those needed regularity facts. |
| stepN:p9:bh-eps | PASS | Part 9 L88–88 | The Theorem-1 and block settings replace the derived smallness inequality; elementary and covering supply it. |
| stepN:p9:bh-rad | PASS | Part 9 L89–89 | The source and block settings replace the derived radius identities; the block relation, domain estimate and (S3) supply the conclusions. |
| stepN:p9:bh-small | PASS | Part 9 L92–92 | The source and block settings replace the desired smallness bound; the preceding two estimates and fixed p/q supply it. |
| stepN:p9:bs-stop | PASS | Part 9 L106–106 | The extension-field agreement and derivative-on-J data are explicit; the two branch estimates and local-field bridge supply the stopped-extension hypotheses. |
| stepN:p9:om-max#local-real-regularity | PASS | Part 9 L67–67 | General open-domain holomorphic regularity and real restriction supply the locally asserted C²/derivative identity; no ball-specific theorem is applied to arbitrary P. |
| bpN:p9:block-stab#local-field | PASS | Part 9 L103–103 | F and its agreement on W are bound explicitly; the source at L103 establishes the smaller open domain and equality of its local Hamiltonian field. |
| bpN:p9:block-stab#frequency-size | PASS | Part 9 L96–96 | The generic-radius maximum is exposed separately: the smaller closed ball lies in the open tube, is compact and nonempty, and the local frequency is continuous. |

| Coverage item | Verdict | Source spans re-read | Assessment |
| --- | --- | --- | --- |
| p9:block-frequency-size | PASS | Part 9 L94–106, especially L96 | NODE disposition names the separate generic-radius maximum bridge; the reason accurately distinguishes it from the R₀-radius omega0 statement. |

Supporting source re-read: Part 9 L12–22, L25–107 and L111–123 (standing data, branch hypotheses, all local bridge assertions and Theorem 1); Part 10 L25–155 (choice and choice-props, hypotheses-check, confinement, existence, uniqueness and head assembly); Part 7 L24–39 and L110–123 (real restrictions and stopped extension); Part 3 L53–56 and L544–554 (compactness and confinement-glue); Part 1 scalar restriction, partial derivatives and Hessian conversion, plus the real-domain, quasi-convexity and norm-conversion statements. Imported K statements checked at `blueprint/parts/p1-analysis.tex` L75–78 (mean value) and L227–236 (open-domain holomorphic regularity). The three bridge replacements expose facts asserted by the raw source using existing general inputs, resolving the first delta SOURCE_GAP objections without a new mathematical assumption.

The earlier hypothesis-field failures are resolved. The two remaining failures concern only `SOURCE_CONCLUSION`; all other fields in each replacement below are copied verbatim from the current packet. In particular, no dependency, locator, metadata or hypothesis is changed.

```text
NODE: stepN:p10:cf-branch
KIND: step
TITLE: Branch (a)
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104
CONTRACT_ID: stepN:p10:cf-branch
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the seven data and chosen constants of Definition choice; h,f,epsilon satisfying (H1)-(H7) as in hypotheses-check; theta_0 in R^n, I_0 in B(0,R/2); J is an interval containing 0; y(0)=(theta_0,I_0) and IsSolutionOn H_(h,f) B(0,R) J y; tau=T exp(c epsilon^(-a))
SOURCE_QUANTIFIERS: I_0
SOURCE_CONCLUSION: Theorem thm1(a) with (μ,B_c,ε′): for t ∈ J with ¦t¦ ≤ T_0 exp((πs_1/(3√n))(ε_1/ε′)^a): ¦I(t)−I_0¦ ≤ ½R_0(ε′/ε_1)^a
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:hypotheses-check, bpN:p9:thm1, stepN:p10:cf-setting, stepN:p10:cf-orbit, bpN:p10:choice, bpN:p9:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:hypotheses-check | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104 | (f): ‖ω(I_0)‖ > μ r_0/8, branch (a)
EDGE: bpN:p9:thm1 | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104 | Theorem 1(a)
EDGE: stepN:p10:cf-setting | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104 | setting applies
EDGE: stepN:p10:cf-orbit | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104 | hypotheses on the orbit
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104 | the substituted mu,B_c,epsilon-prime,epsilon1,s1 are choice data
EDGE: bpN:p9:setting | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104 | the Theorem-1 time and radius parameters are used
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910+sol-delta-N-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:cf-trans
KIND: step
TITLE: Translating the constants
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106
CONTRACT_ID: stepN:p10:cf-trans
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the seven data and chosen constants of Definition choice; h,f,epsilon satisfying (H1)-(H7) as in hypotheses-check; theta_0 in R^n, I_0 in B(0,R/2); J is an interval containing 0; y(0)=(theta_0,I_0) and IsSolutionOn H_(h,f) B(0,R) J y; tau=T exp(c epsilon^(-a))
SOURCE_QUANTIFIERS: τ
SOURCE_CONCLUSION: for t ∈ J, ¦t¦ ≤ τ ⇒ ¦t¦ ≤ T_0 e^{cε^{-a}} and radius ½Cε^a ≤ Cε^a: ¦y(t)_2 − I_0¦ ≤ Cε^a
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:choice-props, bpN:p10:hypotheses-check, bpN:p10:ext-rpow, stepN:p10:cf-branch, bpN:p10:choice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:choice-props | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106 | (c): exponent = cε^{-a}, radius = ½Cε^a
EDGE: bpN:p10:hypotheses-check | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106 | (g): T_0 ≥ 2T ≥ T
EDGE: bpN:p10:ext-rpow | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106 | exp monotone
EDGE: stepN:p10:cf-branch | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106 | conclusion of Theorem 1(a)
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106 | C,T,c,tau and epsilon-prime are the chosen constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910+sol-delta-N-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Suspected blueprint defects or deviations: none identified in this scoped review. Topology verdicts do not assert proof completion. No Lean files, packets or source files were changed; no Lean builds were run.
