# P-p11a3 topology review

Reviewer: sol-review-P-y

**Verdict: FAIL.** Source topology only; no assertion about Lean proof closure. Read the current REVIEW-BRIEF and full SPEC, including the restored P-FIXED scope and Y1-Y4 writer ruling; read all 441 lines of Part 11a-3, all 74 current node records and all 124 coverage records, and the statements of all 19 out-of-slice suppliers. The packet has 264 edges. The stale SPEC slice count of 73 does not determine the inventory.

## Findings

1. `il-c3 -> geom-recursion` is pattern-only. At L304 the sentence “only the inequality ... is needed” is followed by the complete direct proof from (S4) and (A4). L306 separately proves the remainder estimate. The displayed substitutions explain an analogy and do not apply the recursion lemma to an actual error sequence. Delete this edge and the two now unreachable helper nodes, with the exclusions below. A prescribed positive sequence eps_nu=eps_0 varpi^nu would not itself satisfy the stronger contraction x_{nu+1}<=7 varpi x_nu/8.

2. Direct package dependencies are missing in the records listed below. The repairs link independent uses of the schedule, its constants, the selection data and the retained-chain definition; a transitive route does not replace these required direct edges. Geometric sums in sb-strip and es-2/es-3 also need their approved Y4 supplier.

3. Three source quantifiers exclude eps=0 although L318 includes it. The initial quadratic contribution keeps eps_0>0, so no extra positive-eps restriction belongs here.

4. `finite-measure` assumes the A inequalities for its schedule; it does not invoke the theorem establishing them for the specially chosen schedule. Remove its adm-choice edge and the analogous fm-close edge, consistently with the existing schedule-props treatment. Keep fm-close -> adm-params: theta_max is genuinely defined there.

5. `ps-lim` cannot apply the imported holomorphic derivative-limit theorem on the compact real set K_infty. The replacement exposes the continuous-limit bridge as SOURCE_GAP without inventing a new external. `ab-lam` must also record its theta_max lower bound as an output, not a premise.

## Cycle breaks and hand-off

The documented pointer removals PASS: schedule does not depend on the later adm-params choice; adm-choice does not use adm-budget or strip-budget to establish its defining inequalities; finite-divisor proves its estimate directly and does not consume divisor-wide or canonical-step; fd-concl only compares divisor-wide; the i3-corrected and consumers references are provenance/interface pointers. The inductive lemma obtains O1 through il-ret, and the real Lipschitz result through canonical-step. None of these removed edges should be restored merely to mirror a reference.

The retained-set definition is independent of its later nonemptiness proof. finite-measure uses already built finite chains, il-ret obtains nonemptiness before the next step, and il-inc constructs the increments on the whole previous collar. The package edges added below preserve these directions and introduce no local cycle. The L360-L367 hand-off is a summary of parameter-selection, O3/O4 and exported-sums; its exclusion is valid. No new node for the summary is needed. The Y1-Y4 externals PASS under the current writer ruling despite their stale extractor notes.

## Nodes

| Node | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpP:p11a:sel-data | PASS | Part 11a-3 L32-L40 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:geom-recursion | FAIL | Part 11a-3 L58-L63, L64-L66 | Delete node: outside every root closure after removing the pattern-only il-c3 edge; corpus and all packet consumers checked. |
| stepP:p11a:gr-ind | FAIL | Part 11a-3 L65-L65 | Delete node: outside every root closure after removing the pattern-only il-c3 edge; corpus and all packet consumers checked. |
| bpP:p11a:y-log | PASS | Part 11a-3 L45-L45 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:y-conv | PASS | Part 11a-3 L46-L46 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:y-down | PASS | Part 11a-3 L47-L47 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:y-geom | PASS | Part 11a-3 L48-L48 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:schedule-consts | PASS | Part 11a-3 L68-L75 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:schedule-ratios | PASS | Part 11a-3 L77-L82, L83-L85 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:sr-exp | PASS | Part 11a-3 L84-L84 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:schedule | PASS | Part 11a-3 L90-L97 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:strip-budget | PASS | Part 11a-3 L99-L104, L105-L113 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:sb-sum | PASS | Part 11a-3 L106-L106 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:sb-solve | FAIL | Part 11a-3 L108-L108 | Missing/extraneous dependencies: direct bpP:p11a:sel-data use at L108. |
| stepP:p11a:sb-strip | FAIL | Part 11a-3 L110-L110 | Missing/extraneous dependencies: direct bpP:p11a:y-geom use at L110. |
| stepP:p11a:sb-err | FAIL | Part 11a-3 L112-L112 | Missing/extraneous dependencies: direct bpP:p11a:schedule-consts use at L112. |
| bpP:p11a:schedule-props | FAIL | Part 11a-3 L115-L125, L126-L136 | Missing/extraneous dependencies: direct bpP:p11a:schedule-consts use at L121. |
| stepP:p11a:sp-1 | FAIL | Part 11a-3 L127-L127 | Missing/extraneous dependencies: direct bpP:p11a:sel-data use at L127; direct bpP:p11a:schedule-consts use at L127. |
| stepP:p11a:sp-2 | PASS | Part 11a-3 L129-L129 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:sp-3 | FAIL | Part 11a-3 L131-L131 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L131. |
| stepP:p11a:sp-4 | PASS | Part 11a-3 L133-L133 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:sp-5 | PASS | Part 11a-3 L135-L135 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:smooth-cutoff | PASS | Part 11a-3 L143-L149, L150-L154 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:sc-constr | PASS | Part 11a-3 L151-L151 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:sc-deriv | PASS | Part 11a-3 L153-L153 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:finite-extension | PASS | Part 11a-3 L156-L165, L166-L174 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:fe-supp | FAIL | Part 11a-3 L167-L167 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L167. |
| stepP:p11a:fe-reg | FAIL | Part 11a-3 L169-L169 | Missing/extraneous dependencies: direct bpP:p11a:sel-data use at L169. |
| stepP:p11a:fe-cauchy | FAIL | Part 11a-3 L171-L171 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L171. |
| stepP:p11a:fe-leib | FAIL | Part 11a-3 L173-L173 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L173. |
| bpP:p11a:initial | PASS | Part 11a-3 L183-L190, L191-L195 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:in-dom | PASS | Part 11a-3 L192-L192 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:in-taylor | PASS | Part 11a-3 L194-L194 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:adm-params | PASS | Part 11a-3 L197-L204 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:adm-choice | FAIL | Part 11a-3 L206-L218, L219-L223 | The positive-only epsilon quantifier drops eps=0, which the selection theorem L318 explicitly includes; eps_0 stays positive because of the quadratic term. |
| stepP:p11a:ac-lam | FAIL | Part 11a-3 L220-L220 | The positive-only epsilon quantifier drops eps=0, which the selection theorem L318 explicitly includes; eps_0 stays positive because of the quadratic term. |
| stepP:p11a:ac-list | FAIL | Part 11a-3 L222-L222 | Missing/extraneous dependencies: direct bpP:p11a:sel-data use at L222. The positive-only epsilon quantifier drops eps=0, which the selection theorem L318 explicitly includes; eps_0 stays positive because of the quadratic term. |
| bpP:p11a:sec-retained#data | PASS | Part 11a-3 L234-L238 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:finite-divisor | PASS | Part 11a-3 L240-L245, L246-L252 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:fd-tel | PASS | Part 11a-3 L247-L247 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:fd-test | PASS | Part 11a-3 L249-L249 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:fd-concl | PASS | Part 11a-3 L251-L251 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:finite-measure | FAIL | Part 11a-3 L258-L265, L266-L272 | Missing/extraneous dependencies: remove bpP:p11a:adm-choice. (A1)-(A6), respectively (A5), are assumed locally at L259, not obtained by invoking adm-choice for its special parameter choice. |
| stepP:p11a:fm-close | FAIL | Part 11a-3 L267-L267 | Missing/extraneous dependencies: remove bpP:p11a:adm-choice. (A1)-(A6), respectively (A5), are assumed locally at L259, not obtained by invoking adm-choice for its special parameter choice. |
| stepP:p11a:fm-family | PASS | Part 11a-3 L269-L269 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:fm-incl | PASS | Part 11a-3 L271-L271 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:inductive-lemma | PASS | Part 11a-3 L277-L294, L295-L312 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:il-p0 | FAIL | Part 11a-3 L296-L296 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L296. |
| stepP:p11a:il-ret | PASS | Part 11a-3 L298-L298 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:il-c2 | FAIL | Part 11a-3 L300-L300 | Missing/extraneous dependencies: direct bpP:p11a:sel-data use at L300; direct bpP:p11a:sec-retained#data use at L300. |
| stepP:p11a:il-c1 | FAIL | Part 11a-3 L302-L302 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L302; direct bpP:p11a:schedule-consts use at L302; direct bpP:p11a:sel-data use at L302. |
| stepP:p11a:il-c3 | FAIL | Part 11a-3 L304-L304 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L304; direct bpP:p11a:schedule-consts use at L304; direct stepP:p11a:il-c1 use at L304. Missing/extraneous dependencies: remove bpP:p11a:geom-recursion. The recursion lemma supplies no premise or conclusion of this direct proof.  |
| stepP:p11a:il-rem | FAIL | Part 11a-3 L306-L306 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L306. |
| stepP:p11a:il-inc | PASS | Part 11a-3 L308-L308 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:il-dom | FAIL | Part 11a-3 L310-L310 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L310; direct bpP:p11a:sec-retained#data use at L310. |
| stepP:p11a:il-map | FAIL | Part 11a-3 L312-L312 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L312. |
| bpP:p11a:parameter-selection | PASS | Part 11a-3 L317-L326, L327-L335 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:ps-iter | PASS | Part 11a-3 L328-L328 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:ps-lim | FAIL | Part 11a-3 L330-L330 | Missing/extraneous dependencies: remove K:bp:p1:uniform-limits. Wrong carrier and missing derivative-convergence premises for the cited K lemma; expose the actual bridge under the external-input policy. |
| stepP:p11a:ps-H | PASS | Part 11a-3 L332-L332 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:ps-dio | FAIL | Part 11a-3 L334-L334 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L334. |
| bpP:p11a:exported-sums | FAIL | Part 11a-3 L340-L349, L350-L358 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L345; direct bpP:p11a:schedule-consts use at L343. |
| stepP:p11a:es-1 | PASS | Part 11a-3 L351-L351 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:es-2 | FAIL | Part 11a-3 L353-L353 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L353; direct bpP:p11a:y-geom use at L353. |
| stepP:p11a:es-3 | FAIL | Part 11a-3 L355-L355 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L355; direct bpP:p11a:y-geom use at L355. |
| stepP:p11a:es-4 | FAIL | Part 11a-3 L357-L357 | Missing/extraneous dependencies: direct bpP:p11a:schedule use at L357; direct bpP:p11a:inductive-lemma use at L357. |
| bpP:p11a:adm-budget | PASS | Part 11a-3 L374-L383, L384-L396 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:ab-gamma | PASS | Part 11a-3 L387-L387 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:ab-T0 | PASS | Part 11a-3 L389-L389 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:ab-t0 | PASS | Part 11a-3 L391-L391 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:ab-lam | FAIL | Part 11a-3 L393-L393 | The theta_max lower bound is proved in this step, not an additional assumption.  |
| stepP:p11a:ab-concl | PASS | Part 11a-3 L395-L395 | Statement, direct uses and coverage agree with source. |
| bpP:p11a:adm-budget-beta | PASS | Part 11a-3 L402-L407, L408-L410 | Statement, direct uses and coverage agree with source. |
| stepP:p11a:abb-spec | PASS | Part 11a-3 L409-L409 | Statement, direct uses and coverage agree with source. |

## Coverage

| Item | Verdict | Reason |
|---|---|---|
| bpP:p11a:geom-recursion | FAIL | The NODE disposition retains an unreachable helper after removal of the pattern-only edge. |
| stepP:p11a:gr-ind | FAIL | The NODE disposition retains an unreachable helper after removal of the pattern-only edge. |
| p11a3:prose-L436-L436 | FAIL | The current reason claims that the inapplicable uniform-limits supplier discharges ps-lim. |

all other coverage items PASS

## Replacements for slice P-p11a3

Delete the complete node blocks `bpP:p11a:geom-recursion` and `stepP:p11a:gr-ind`. Their complete replacement coverage dispositions follow the node repairs. All other changes below retain the original fields verbatim except the identified dependency/source/NOTE fields. Status and reviewer fields are left for the writer workflow.

### P-p11a3 — stepP:p11a:sb-solve

```text
NODE: stepP:p11a:sb-solve
KIND: step
TITLE: Solving for $T_0$
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-solve@L108-L108
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-solve@L108-L108
CONTRACT_ID: stepP:p11a:sb-solve
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the bound of Step sb-sum; the assumption on T_0
SOURCE_QUANTIFIERS: s in (0,1], T_0 as assumed
SOURCE_CONCLUSION: (4/X)(A_0+N log X)<=s/4, hence sum d_nu<=s/4 and each d_nu<=s/4<=1/4
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:y-log, stepP:p11a:sb-sum, bpP:p11a:sel-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:y-log | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-solve@L108-L108 | tangent-line inequality for log with y=32N/s
EDGE: stepP:p11a:sb-sum | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-solve@L108-L108 | bound on sum d_nu being estimated
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-solve@L108-L108 | s<=1, N>=1 in solving the cutoff inequality
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:sb-strip

```text
NODE: stepP:p11a:sb-strip
KIND: step
TITLE: Losses of $\delta_\nu,\sigma_\nu$ and the strip
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-strip@L110-L110
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-strip@L110-L110
CONTRACT_ID: stepP:p11a:sb-strip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: sum d_nu<=s/4; delta_nu=sigma_nu=varsigma_0 2^-nu, varsigma_0=s/24
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: sum(delta_nu+2 sigma_nu)=6 varsigma_0=s/4 and r_nu=s-sum_{j<nu}(d_j+delta_j+2 sigma_j)>=s/2 for every nu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:schedule, stepP:p11a:sb-solve, bpP:p11a:y-geom
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-strip@L110-L110 | delta_nu, sigma_nu, varsigma_0 and the recursion for r_nu
EDGE: stepP:p11a:sb-solve | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-strip@L110-L110 | sum d_nu<=s/4
EDGE: bpP:p11a:y-geom | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-strip@L110-L110 | sum 2^-nu=2 in the strip loss sum
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:sb-err

```text
NODE: stepP:p11a:sb-err
KIND: step
TITLE: Cutoff error
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-err@L112-L112
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-err@L112-L112
CONTRACT_ID: stepP:p11a:sb-err
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: d_nu<=1 and T_nu>=1, alpha<=1
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: E_nu=eps_N(T_nu,d_{T_nu})<=alpha
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:loss-choice, stepP:p11a:sb-solve, bpP:p11a:schedule, bpP:p11a:schedule-consts
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:loss-choice | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-err@L112-L112 | Lemma loss-choice gives eps_N(T,d_T(alpha))<=alpha for d_T<=1, T>=1, alpha<=1
EDGE: stepP:p11a:sb-solve | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-err@L112-L112 | d_nu<=1/4<=1
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-err@L112-L112 | E_nu=eps_N(T_nu,d_nu) and T_nu>=1
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-err@L112-L112 | alpha=varpi/8 lies in (0,1], the loss-choice input
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — bpP:p11a:schedule-props

```text
NODE: bpP:p11a:schedule-props
KIND: lemma
TITLE: Elementary properties of the schedule
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:schedule-props@L115-L125
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:schedule-props@L126-L136
CONTRACT_ID: bpP:p11a:schedule-props
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: lambda_0=eps_0/s_0, a=gamma T_0^{-tau-1}, 4 lambda_0<=a, 8 lambda_0<=C_1 t_0, 4 C_1 t_0<=a ((A1),(A2) of Proposition adm-choice); the schedule
SOURCE_QUANTIFIERS: data, schedule and (T_0,t_0,s_0,eps_0) fixed; for all nu,m>=0
SOURCE_CONCLUSION: (S1) T_{nu+1}=2 T_nu, t_{nu+1}=2^{-(tau+1)}t_nu<=t_nu/2, t_nu<=gamma T_nu^{-tau-1}/(4C_1), s_nu=s_0 q^nu, eps_nu/s_nu=lambda_0 varrho^nu, ell_nu=2 lambda_0 varrho^nu; (S2) S_m<=4 lambda_0 varrho^m<=gamma T_m^{-tau-1}; (S3) sum_{j<nu}4 eps_j/(s_j t_j)<=8 lambda_0/t_0<=C_1 and sum_{j<nu}ell_j t_j^{-mu}<=4 lambda_0 t_0^{-mu}; (S4) Q^#_nu=Q_0 g_1^nu with Q_0=C_Q 2^N T_0^tau lambda_0/(pi gamma varsigma_0^{N+1}); (S5) t_{nu+1} T_nu 2 C_1<=D_nu/2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:sp-1, stepP:p11a:sp-2, stepP:p11a:sp-3, stepP:p11a:sp-4, stepP:p11a:sp-5, bpP:p11a:schedule, bpP:p11a:sel-data, bpP:p11a:schedule-consts
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:sp-1 | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:schedule-props@L127-L127 | proof step (S1)
EDGE: stepP:p11a:sp-2 | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:schedule-props@L129-L129 | proof step (S2)
EDGE: stepP:p11a:sp-3 | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:schedule-props@L131-L131 | proof step (S3)
EDGE: stepP:p11a:sp-4 | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:schedule-props@L133-L133 | proof step (S4)
EDGE: stepP:p11a:sp-5 | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:schedule-props@L135-L135 | proof step (S5)
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:schedule-props@L116-L116 | all quantities of the statement are those of the schedule
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:schedule-props@L116-L116 | gamma, C_1 of the data
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:schedule-props@L121-L121 | C_Q and g_1 in (S4) are the defined constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The hypotheses (A1), (A2) are named by reference to Proposition adm-choice (stated later); adm-choice states them, the lemma assumes them, so no edge (the consumer il-ret supplies them).
```

### P-p11a3 — stepP:p11a:sp-1

```text
NODE: stepP:p11a:sp-1
KIND: step
TITLE: (S1)
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-1@L127-L127
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-1@L127-L127
CONTRACT_ID: stepP:p11a:sp-1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition schedule; 4 C_1 t_0<=a; 2^{-(tau+1)}<=1/2 since tau>=0
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: (S1): T_{nu+1}=2T_nu, t_{nu+1}=2^{-(tau+1)}t_nu<=t_nu/2, t_nu<=gamma T_nu^{-tau-1}/(4C_1), s_nu=s_0 q^nu, eps_nu/s_nu=lambda_0 varrho^nu, ell_nu=2 lambda_0 varrho^nu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:schedule, bpP:p11a:sel-data, bpP:p11a:schedule-consts
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-1@L127-L127 | formulas for T_nu, t_nu, s_nu, eps_nu, ell_nu and varrho=varpi/q
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-1@L127-L127 | tau>=0 and C_1 of the standing data
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-1@L127-L127 | varrho=varpi/q in the displayed epsilon-to-width identity
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:sp-3

```text
NODE: stepP:p11a:sp-3
KIND: step
TITLE: (S3)
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-3@L131-L131
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-3@L131-L131
CONTRACT_ID: stepP:p11a:sp-3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g_2,g_3<=1/2; 8 lambda_0<=C_1 t_0
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: sum_{j<nu}4 eps_j/(s_j t_j)<=8 lambda_0/t_0<=C_1 and sum_{j<nu}ell_j t_j^{-mu}<=4 lambda_0 t_0^{-mu}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:schedule-ratios, bpP:p11a:schedule-consts, stepP:p11a:sp-1, bpP:p11a:y-geom, bpP:p11a:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:schedule-ratios | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-3@L131-L131 | g_2<=1/2 and g_3<=1/2
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-3@L131-L131 | g_2=varrho Theta^{tau+1}, g_3=varrho Theta^{(tau+1)mu}
EDGE: stepP:p11a:sp-1 | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-3@L131-L131 | eps_j/s_j=lambda_0 varrho^j and t_j=t_0 2^{-(tau+1)j}
EDGE: bpP:p11a:y-geom | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-3@L131-L131 | geometric sums with ratio <=1/2
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-3@L131-L131 | stage radii t_j and increments ell_j in both geometric sums
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:fe-supp

```text
NODE: stepP:p11a:fe-supp
KIND: step
TITLE: Supports
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-supp@L167-L167
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-supp@L167-L167
CONTRACT_ID: stepP:p11a:fe-supp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: supp chi_j in {dist_inf(.,K_j)<=t_j/2}; t_0<=vartheta/sqrt N; K_vartheta subset V
SOURCE_QUANTIFIERS: j<nu
SOURCE_CONCLUSION: supp chi_j lies in K+vartheta/(2 sqrt N) (Euclidean distance to K at most vartheta/2), so inside K_vartheta subset V and inside B_j∩R^N with room (K_j+t_j/2 subset B_j)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:smooth-cutoff, bpP:p11a:sel-data, bpP:p11a:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:smooth-cutoff | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-supp@L167-L167 | support of chi_j
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-supp@L167-L167 | K_vartheta subset V and vartheta
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-supp@L167-L167 | t_j<=t_0, together with t_0<=vartheta/sqrt N, places the supports inside V
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:fe-reg

```text
NODE: stepP:p11a:fe-reg
KIND: step
TITLE: Regularity and equality
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-reg@L169-L169
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-reg@L169-L169
CONTRACT_ID: stepP:p11a:fe-reg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Delta omega_j real analytic on B_j∩R^N; supp chi_j inside the domain of Delta omega_j
SOURCE_QUANTIFIERS: j<nu
SOURCE_CONCLUSION: chi_j Delta omega_j in C^mu(V,R^N); on K_nu (subset K_j) chi_j=1 so tilde omega_nu=omega_nu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:smooth-cutoff, stepP:p11a:fe-supp, bpP:p11a:sel-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:smooth-cutoff | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-reg@L169-L169 | chi_j in C^mu and chi_j=1 on K_j
EDGE: stepP:p11a:fe-supp | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-reg@L169-L169 | chi_j supported where Delta omega_j is defined
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-reg@L169-L169 | omega is real analytic on the fixed real neighbourhood V
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:fe-cauchy

```text
NODE: stepP:p11a:fe-cauchy
KIND: step
TITLE: Derivatives of the increments
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-cauchy@L171-L171
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-cauchy@L171-L171
CONTRACT_ID: stepP:p11a:fe-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: y real with dist_inf(y,K_j)<=t_j/2, so y in K_j+3 t_j/4; ¦Delta omega_j¦_inf<=ell_j on B_j
SOURCE_QUANTIFIERS: j<nu, u>=1
SOURCE_CONCLUSION: ¦¦D^u Delta omega_j(y)¦¦<=u^u 4^u ell_j t_j^{-u}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:param-cauchy, bpP:p11a:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:param-cauchy | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-cauchy@L171-L171 | parameter Cauchy estimate of every order with E=K_j, t=t_j, t'=3 t_j/4
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-cauchy@L171-L171 | t_j and ell_j are the collar and uniform increment bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:fe-leib

```text
NODE: stepP:p11a:fe-leib
KIND: step
TITLE: Leibniz
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-leib@L173-L173
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-leib@L173-L173
CONTRACT_ID: stepP:p11a:fe-leib
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: chi_j Delta omega_j; derivative bounds for chi_j (Lemma smooth-cutoff) and for D^u Delta omega_j (Step fe-cauchy); t_j<=1
SOURCE_QUANTIFIERS: k<=mu, unit vector a
SOURCE_CONCLUSION: ¦D^k(chi_j Delta omega_j)¦<=c'_{N,mu} ell_j t_j^{-mu} (Leibniz, Euclidean norm at most sqrt N times the max norm), and summing over j<nu gives (b)
CONSTANT_SCOPE: c'_{N,mu} depends only on (N,mu)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:smooth-cutoff, stepP:p11a:fe-cauchy, bpP:p11a:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:smooth-cutoff | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-leib@L173-L173 | derivative bounds c_{k-u}(4/t_j)^{k-u} of chi_j and the constant c'_{N,mu}
EDGE: stepP:p11a:fe-cauchy | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-leib@L173-L173 | bounds for D^u Delta omega_j
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-leib@L173-L173 | t_j<=1 and ell_j in the derivative sum
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:ac-list

```text
NODE: stepP:p11a:ac-list
KIND: step
TITLE: (A1)--(A5)
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ac-list@L222-L222
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ac-list@L222-L222
CONTRACT_ID: stepP:p11a:ac-list
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: lambda_0<=lambda_max (Step ac-lam) and the three terms of lambda_max; vartheta<=1
SOURCE_QUANTIFIERS: eps in [0,eps_adm]
SOURCE_CONCLUSION: (A1)-(A5) from the three terms of lambda_max, (A6) is the definition of T_0, (A7) is Lemma initial with hypotheses t_0<=vartheta (A1), s_0<=vartheta (A3)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:ac-lam, bpP:p11a:adm-params, bpP:p11a:initial, bpP:p11a:sel-data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:ac-lam | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ac-list@L222-L222 | lambda_0<=lambda_max used for (A2), (A4), (A5)
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ac-list@L222-L222 | definitions of t_0, T_0, lambda_max, theta_max, s_0
EDGE: bpP:p11a:initial | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ac-list@L222-L222 | (A7) is Lemma initial
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ac-list@L222-L222 | vartheta<=1 and N>=1 used for (A1) and (A3)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:il-p0

```text
NODE: stepP:p11a:il-p0
KIND: step
TITLE: $(\mathrm P_0)$
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-p0@L296-L296
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-p0@L296-L296
CONTRACT_ID: stepP:p11a:il-p0
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_0=K, B_0=K+t_0, empty chain, omega_0=omega, h_0=0, R_0 of Lemma initial; (A7), r_0=s; t_0<=vartheta
SOURCE_QUANTIFIERS: base case nu=0
SOURCE_CONCLUSION: (P_0): ¦R_0¦<=eps_0 on D(s,s_0;B_0)=D(r_0,s_0;B_0), ¦¦D omega¦¦<=C_1<=2C_1 on B_0 subset U, H_0 is the empty composition
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:initial, bpP:p11a:adm-choice, bpP:p11a:sel-data, bpP:p11a:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:initial | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-p0@L296-L296 | R_0 and its bound
EDGE: bpP:p11a:adm-choice | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-p0@L296-L296 | (A7): ¦R_0¦<=eps_0 on D(s,s_0;B_0); (A1) t_0<=vartheta
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-p0@L296-L296 | ¦¦D omega¦¦<=C_1 on U
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-p0@L296-L296 | r_0=s and B_0=K+t_0 identify the initial domain
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:il-c2

```text
NODE: stepP:p11a:il-c2
KIND: step
TITLE: Hypothesis (C2)
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300
CONTRACT_ID: stepP:p11a:il-c2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (P_nu); (O1); L=2C_1 on B_{nu+1}; (S5)
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: Proposition canonical-step applies at stage nu with E=K_{nu+1}, t=t_{nu+1}, B=B_{nu+1}, r=r_nu, s=s_nu, T=T_nu, d=d_nu, delta, sigma, q, D=D_nu, eps:=eps_nu (hypothesis (C2): divisor part is (O1), t_{nu+1} T_nu L<=D_nu/2 is (S5))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:canonical-step, bpP:p11a:cutoff, bpP:p11a:affine-flow, bpP:p11a:schedule-props, stepP:p11a:il-ret, bpP:p11a:schedule, bpP:p11a:sel-data, bpP:p11a:sec-retained#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:canonical-step | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | the proposition applied with these parameters
EDGE: bpP:p11a:cutoff | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | the proof of the step uses ¦R¦<=eps only, through Proposition cutoff
EDGE: bpP:p11a:affine-flow | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | A_1>0 as Lemma affine-flow requires
EDGE: bpP:p11a:schedule-props | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | (S5): t_{nu+1} T_nu L<=D_nu/2
EDGE: stepP:p11a:il-ret | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | divisor part of (C2) is (O1) established there
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | stage parameters r_nu, s_nu, T_nu, d_nu, delta_nu, sigma_nu, D_nu
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | C_1 is the standing Hessian bound used as L=2C_1
EDGE: bpP:p11a:sec-retained#data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | E=K_{nu+1} and B_{nu+1} subset B_nu come from the nested chain
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:il-c1

```text
NODE: stepP:p11a:il-c1
KIND: step
TITLE: Hypotheses (C1) and the loss
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c1@L302-L302
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c1@L302-L302
CONTRACT_ID: stepP:p11a:il-c1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: strip-budget; schedule-ratios; delta_nu<=s/24<=1
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: hypothesis (C1) and loss: r_{nu+1}>=s/2>0, d_nu<=1/4, E_nu<=alpha<=1, q<=1/2, delta_nu<=1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:strip-budget, bpP:p11a:schedule-ratios, bpP:p11a:schedule, bpP:p11a:schedule-consts, bpP:p11a:sel-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:strip-budget | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c1@L302-L302 | r_{nu+1}>=s/2, d_nu<=1/4, E_nu<=alpha
EDGE: bpP:p11a:schedule-ratios | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c1@L302-L302 | q<=1/2
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c1@L302-L302 | delta_nu=varsigma_0 2^-nu and the recurrence for r_nu
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c1@L302-L302 | alpha<=1 from its definition
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c1@L302-L302 | s<=1 and s>0 in the strip and delta bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:il-c3

```text
NODE: stepP:p11a:il-c3
KIND: step
TITLE: Hypothesis (C3) and the recursion
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c3@L304-L304
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c3@L304-L304
CONTRACT_ID: stepP:p11a:il-c3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Q_nu:=C_Q Lambda_{delta_nu} eps_nu/(pi D_nu s_nu sigma_nu); Lambda_delta<=(1+1/(pi delta))^N-1<=(2/delta)^N for 0<delta<=1; (S4), (A4); g_1<=2^-5
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: Q_nu<=Q^#_nu=Q_0 g_1^nu<=Q_0<=varpi/2, hence (C3): 4(N+1) Lambda_{delta_nu}(1+E_nu) eps_nu<=pi D_nu s_nu sigma_nu (C_Q>=4(N+1)(1+E_nu)); the parenthetical c_0=3 varpi/8, P_0=Q_0/eps_0, p=g_1/varpi is a comparison with geom-recursion, not an application to the prescribed eps_nu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:schedule-props, bpP:p11a:adm-choice, bpP:p11a:schedule-ratios, bpP:p11a:canonical-step, K:bp:p1:exp-sums, bpP:p11a:schedule, bpP:p11a:schedule-consts, stepP:p11a:il-c1
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:schedule-props | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c3@L304-L304 | (S4): Q^#_nu=Q_0 g_1^nu
EDGE: bpP:p11a:adm-choice | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c3@L304-L304 | (A4): Q_0<=varpi/2
EDGE: bpP:p11a:schedule-ratios | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c3@L304-L304 | g_1<=2^-5, so p varpi=g_1<=1; 2q^2=varpi/8, 2 alpha=varpi/4
EDGE: bpP:p11a:canonical-step | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c3@L304-L304 | hypothesis (C3) and the quantity Lambda_delta of the step
EDGE: K:bp:p1:exp-sums | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c3@L304-L304 | Lambda_delta<=(1+1/(pi delta))^N-1 from exp-sums(b)
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c3@L304-L304 | the definition of Q_nu^sharp in terms of stage widths and errors
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c3@L304-L304 | C_Q=18N(4N+5), varpi and alpha used in the C3 comparison
EDGE: stepP:p11a:il-c1 | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c3@L304-L304 | 0<delta_nu<=1 and E_nu<=1 required by the exponential-sum and C_Q bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The reference to geom-recursion is pattern-only: eps_nu is prescribed, (S4), g_1<=1 and (A4) already prove the needed Q_nu bound. The following il-rem proves the actual remainder bound directly.
```

### P-p11a3 — stepP:p11a:il-rem

```text
NODE: stepP:p11a:il-rem
KIND: step
TITLE: The new remainder
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-rem@L306-L306
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-rem@L306-L306
CONTRACT_ID: stepP:p11a:il-rem
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Proposition canonical-step (iii) second form; Q_nu<=varpi/2 (il-c3); 2q^2=varpi/8; 2 E_nu<=2 alpha=varpi/4
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: ¦R_+¦<=eps_nu(2q^2+2E_nu+Q_nu)<=eps_nu varpi=eps_{nu+1} on D(r_{nu+1},s_{nu+1};B_{nu+1}); this is (P_{nu+1})(b) and (O5) with (c) by composition
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:canonical-step, bpP:p11a:schedule-ratios, stepP:p11a:il-c3, bpP:p11a:strip-budget, bpP:p11a:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:canonical-step | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-rem@L306-L306 | conclusion (iii) for R_+ and its domain, periodicity, reality
EDGE: bpP:p11a:schedule-ratios | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-rem@L306-L306 | 2q^2=varpi/8, 2 alpha=varpi/4
EDGE: stepP:p11a:il-c3 | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-rem@L306-L306 | Q_nu<=varpi/2
EDGE: bpP:p11a:strip-budget | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-rem@L306-L306 | E_nu<=alpha
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-rem@L306-L306 | eps_{nu+1}=varpi eps_nu and s_{nu+1}=q s_nu identify the target bound and domain
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:il-dom

```text
NODE: stepP:p11a:il-dom
KIND: step
TITLE: $D\omega_{\nu+1}$
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-dom@L310-L310
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-dom@L310-L310
CONTRACT_ID: stepP:p11a:il-dom
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: b in B_{nu+1}, j<=nu, b' in K_{nu+1} subset K_j with ¦b-b'¦<t_{nu+1}<=t_j/2; Delta omega_j holomorphic on B_j with ¦Delta omega_j¦<=ell_j
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: ¦¦D omega_{nu+1}¦¦<=C_1+sum_{j<=nu}4 eps_j/(s_j t_j)<=2C_1 on B_{nu+1}, which is (P_{nu+1})(a); Delta h_nu is holomorphic and real on B_nu superset B_{nu+1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:param-cauchy, bpP:p11a:schedule-props, stepP:p11a:il-inc, bpP:p11a:sel-data, bpP:p11a:schedule, bpP:p11a:sec-retained#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:param-cauchy | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-dom@L310-L310 | Lemma param-cauchy with E=K_j, t=t_j, t'=t_j/2, u=1
EDGE: bpP:p11a:schedule-props | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-dom@L310-L310 | (S1): t_{nu+1}<=t_j/2 and (S3): sum 4 eps_j/(s_j t_j)<=C_1
EDGE: stepP:p11a:il-inc | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-dom@L310-L310 | holomorphy and bound of Delta omega_j on the collar B_j
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-dom@L310-L310 | ¦¦D omega¦¦<=C_1
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-dom@L310-L310 | ell_j=2 eps_j/s_j and the collar ratios
EDGE: bpP:p11a:sec-retained#data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-dom@L310-L310 | K_{nu+1} subset K_j and B_{nu+1}=K_{nu+1}+t_{nu+1}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:il-map

```text
NODE: stepP:p11a:il-map
KIND: step
TITLE: The map, (O3), (O4)
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-map@L312-L312
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-map@L312-L312
CONTRACT_ID: stepP:p11a:il-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Proposition canonical-step (ii),(iv),(v) with A_1=A_{1,nu}, A_eta=A_{eta,nu}, kappa=kappa_nu; (C3); block form of Lemma affine-flow (c),(d)
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: (O3), (O4): X_nu simple canonical map with the displayed bounds, kappa_nu<=1/2 from (C3), and unscaled derivative bound ¦DX_nu-1¦_inf<=2 kappa_nu+kappa_nu s_nu/sigma_nu (maximal row sum)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:canonical-step, bpP:p11a:affine-flow, stepP:p11a:il-c3, bpP:p11a:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:canonical-step | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-map@L312-L312 | conclusions (ii), (iv), (v)
EDGE: bpP:p11a:affine-flow | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-map@L312-L312 | block form (c), (d) of the derivative of the affine flow
EDGE: stepP:p11a:il-c3 | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-map@L312-L312 | (C3) gives 4(N+1)A_1<=sigma, i.e. kappa<=1/2
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-map@L312-L312 | s_nu and sigma_nu in the unscaled derivative bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:ps-dio

```text
NODE: stepP:p11a:ps-dio
KIND: step
TITLE: Diophantine property
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-dio@L334-L334
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-dio@L334-L334
CONTRACT_ID: stepP:p11a:ps-dio
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: b in H_infty, k!=0, m=nu(k); u:=omega_m(b)=tilde omega_m(b) (b in K_m) with ¦k.u¦>=2 gamma ¦k¦_1^{-tau}; v:=omega_*(b) with ¦u-v¦_inf<=S_m<=gamma T_m^{-tau-1}<=gamma ¦k¦_1^{-tau-1}
SOURCE_QUANTIFIERS: b in H_infty, k in Z^N\{0}
SOURCE_CONCLUSION: ¦k.omega_*(b)¦>=gamma ¦k¦_1^{-tau} by Lemma limit-bridge
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:limit-bridge, stepP:p11a:ps-lim, stepP:p11a:ps-H, bpP:p11a:finite-extension, bpP:p11a:schedule-props, bpP:p11a:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:limit-bridge | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-dio@L334-L334 | Lemma limit-bridge
EDGE: stepP:p11a:ps-lim | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-dio@L334-L334 | part (a): ¦omega_*(b)-omega_m(b)¦<=S_m
EDGE: stepP:p11a:ps-H | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-dio@L334-L334 | b in H_infty gives b in H^{(m)} and b in K_m
EDGE: bpP:p11a:finite-extension | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-dio@L334-L334 | omega_m(b)=tilde omega_m(b) on K_m
EDGE: bpP:p11a:schedule-props | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-dio@L334-L334 | (S2): S_m<=gamma T_m^{-tau-1}
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-dio@L334-L334 | m=nu(k), T_m and S_m in the mode-wise tail comparison
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — bpP:p11a:exported-sums

```text
NODE: bpP:p11a:exported-sums
KIND: lemma
TITLE: Exported sums
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L340-L349
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L350-L358
CONTRACT_ID: bpP:p11a:exported-sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation of Theorem parameter-selection (so (A1)-(A7), Q_0 as in (S4)); A_{1,nu}, A_{eta,nu}, kappa_nu, Lambda_{R,nu} as in Proposition inductive-lemma (O3)
SOURCE_QUANTIFIERS: data, eps<=eps_adm fixed; for all nu>=0
SOURCE_CONCLUSION: (E1) A_{1,nu}<=2 sigma_nu Q_nu/C_Q, kappa_nu<=Q_nu/16, A_{eta,nu}=kappa_nu s_nu/2, Lambda_{R,nu}<=(4 pi/C_Q) T_0 varsigma_0 Q_nu with Q_nu<=Q_0 g_1^nu<=Q_0 2^{-5 nu}; (E2) sum(2 kappa_nu+kappa_nu s_nu/sigma_nu)<=2^-12, sum Lambda_{R,nu}<=2^-12, sum A_{1,nu}<=3 varsigma_0 Q_0/C_Q, sum A_{eta,nu}<=s_0 Q_0/16; (E3) sup_nu t_{nu+1}^-1 sum_{j>=nu}(A_{1,j}+A_{eta,j})<=2^-10 and sum_{j>=nu} Lambda_{R,j}<=2^-10; (E4) on K_{nu+1}+t_{nu+1}/2: ¦¦D_b(X_nu-id)¦¦<=2(A_{1,nu}+A_{eta,nu})/t_{nu+1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:es-1, stepP:p11a:es-2, stepP:p11a:es-3, stepP:p11a:es-4, bpP:p11a:parameter-selection, bpP:p11a:adm-choice, bpP:p11a:schedule-props, bpP:p11a:inductive-lemma, bpP:p11a:schedule, bpP:p11a:schedule-consts
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:es-1 | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L351-L351 | proof step
EDGE: stepP:p11a:es-2 | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L353-L353 | proof step
EDGE: stepP:p11a:es-3 | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L355-L355 | proof step
EDGE: stepP:p11a:es-4 | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L357-L357 | proof step
EDGE: bpP:p11a:parameter-selection | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L341-L341 | the situation: the iteration carried out for all nu with eps<=eps_adm
EDGE: bpP:p11a:adm-choice | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L341-L341 | (A1)-(A7) and Q_0
EDGE: bpP:p11a:schedule-props | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L341-L341 | (S4): Q^#_nu=Q_0 g_1^nu
EDGE: bpP:p11a:inductive-lemma | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L341-L341 | definitions of A_{1,nu}, A_{eta,nu}, kappa_nu, Lambda_{R,nu} in (O3)
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L345-L345 | stage widths, radii and tails in (E2)-(E4)
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L343-L343 | C_Q and g_1 in (E1)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:es-2

```text
NODE: stepP:p11a:es-2
KIND: step
TITLE: (E2)
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-2@L353-L353
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-2@L353-L353
CONTRACT_ID: stepP:p11a:es-2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (E1); sum Q_nu<=(32/31)Q_0; s_nu/sigma_nu<=s_0/varsigma_0<=t_0/varsigma_0 (A3); Q_0 Xi<=2^-10 (A4); 2+t_0/varsigma_0<=2 Xi
SOURCE_QUANTIFIERS: nu>=0 summed
SOURCE_CONCLUSION: (E2): sum(2 kappa_nu+kappa_nu s_nu/sigma_nu)<=Q_0 Xi/7<=2^-12, sum Lambda_{R,nu}<=(13/162)Q_0 Xi<=2^-12, sum A_{1,nu}<=3 varsigma_0 Q_0/C_Q, sum A_{eta,nu}<=s_0 Q_0/16
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:es-1, bpP:p11a:adm-choice, bpP:p11a:adm-params, bpP:p11a:schedule-ratios, bpP:p11a:schedule-consts, bpP:p11a:schedule, bpP:p11a:y-geom
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:es-1 | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-2@L353-L353 | (E1) bounds for each stage
EDGE: bpP:p11a:adm-choice | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-2@L353-L353 | (A3): s_0<=t_0/(8N); (A4): Q_0 Xi<=2^-10
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-2@L353-L353 | Xi>=2^{tau+1}(1+t_0/varsigma_0)
EDGE: bpP:p11a:schedule-ratios | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-2@L353-L353 | g_1 zeta and q g_1 geometric ratios<=2^-5
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-2@L353-L353 | zeta=1/2, q, C_Q
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-2@L353-L353 | s_nu/sigma_nu and sigma_nu=varsigma_0 2^-nu in the sums
EDGE: bpP:p11a:y-geom | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-2@L353-L353 | geometric sums of Q_0 g_1^nu and of the weighted stage bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:es-3

```text
NODE: stepP:p11a:es-3
KIND: step
TITLE: (E3)
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-3@L355-L355
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-3@L355-L355
CONTRACT_ID: stepP:p11a:es-3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (E1),(E2); t_{nu+1}=t_0 2^{-(tau+1)}(2^{-(tau+1)})^nu; g_4<=1; s_0<=t_0; q g_1<=g_4; Xi>=2^{tau+1} varsigma_0/t_0 and Xi>=2^{tau+1}
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: (E3): t_{nu+1}^-1 sum_{j>=nu}(A_{1,j}+A_{eta,j})<=3 Q_0 Xi/C_Q+Q_0 Xi/16<=2^-10 and sum_{j>=nu} Lambda_{R,j}<=2^-12
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:es-1, stepP:p11a:es-2, bpP:p11a:adm-choice, bpP:p11a:adm-params, bpP:p11a:schedule-props, bpP:p11a:schedule-ratios, bpP:p11a:schedule, bpP:p11a:y-geom
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:es-1 | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-3@L355-L355 | (E1) bounds for A_{1,j}, A_{eta,j}
EDGE: stepP:p11a:es-2 | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-3@L355-L355 | sum Lambda_{R,j}<=2^-12 and geometric sums
EDGE: bpP:p11a:adm-choice | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-3@L355-L355 | (A3), (A4)
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-3@L355-L355 | Xi
EDGE: bpP:p11a:schedule-props | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-3@L355-L355 | (S1): t_{nu+1} formula
EDGE: bpP:p11a:schedule-ratios | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-3@L355-L355 | g_4<=1 and q g_1<=g_4
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-3@L355-L355 | the defining formula for t_{nu+1} and the widths in the tail ratio
EDGE: bpP:p11a:y-geom | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-3@L355-L355 | sum over j>=nu of the geometric stage displacement bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:es-4

```text
NODE: stepP:p11a:es-4
KIND: step
TITLE: (E4)
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-4@L357-L357
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-4@L357-L357
CONTRACT_ID: stepP:p11a:es-4
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Proposition canonical-step (v) with t'=t_{nu+1}/2, j=1
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: (E4): ¦¦D_b(X_nu-id)¦¦<=2(A_{1,nu}+A_{eta,nu})/t_{nu+1} on K_{nu+1}+t_{nu+1}/2 (each component A/(t_{nu+1}/2); the max norm of the pair is at most the sum)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:canonical-step, bpP:p11a:schedule, bpP:p11a:inductive-lemma
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:canonical-step | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-4@L357-L357 | conclusion (v) parameter derivatives with t'=t_{nu+1}/2
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-4@L357-L357 | the parameter radius t_{nu+1}
EDGE: bpP:p11a:inductive-lemma | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-4@L357-L357 | (O3),(O4) identify X_nu and its bounds as the canonical-step maps on B_{nu+1}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — bpP:p11a:adm-choice

```text
NODE: bpP:p11a:adm-choice
KIND: proposition
TITLE: The initial inequalities
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L206-L218
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L219-L223
CONTRACT_ID: bpP:p11a:adm-choice
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption sel-data; 0<=eps<=eps_adm; the schedule with the parameters T_0,t_0,s_0,eps_0 of Definition adm-params; a=gamma T_0^{-tau-1}, lambda_0=eps_0/s_0, Q_0=C_Q 2^N T_0^tau lambda_0/(pi gamma varsigma_0^{N+1})
SOURCE_QUANTIFIERS: data, eps in [0,eps_adm] then the schedule fixed
SOURCE_CONCLUSION: (A1) 0<t_0<=vartheta/sqrt N<=1 and 4 C_1 t_0<=a; (A2) 8 lambda_0<=C_1 t_0; (A3) s_0<=t_0/(8N)(<=vartheta); (A4) Q_0<=varpi/2 and Q_0 Xi<=2^-10; (A5) 4 c'_{N,mu} lambda_0 t_0^-mu<=theta_max; (A6) T_0>=1 and T_0>=16/(pi s)(A_0+N log(32N/s)); (A7) eps_0=eps+(N/2)C_1 s_0^2 and ¦R_0¦<=eps_0 on D(s,s_0;B_0); in particular eps_adm>0 and s_0<=vartheta
CONSTANT_SCOPE: none (the inequalities hold with the constants of Definition adm-params)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:ac-lam, stepP:p11a:ac-list, bpP:p11a:schedule, bpP:p11a:adm-params
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:ac-lam | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L220-L220 | proof step
EDGE: stepP:p11a:ac-list | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L222-L222 | proof step
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L207-L207 | the schedule whose parameters are tested
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L207-L207 | T_0, t_0, s_0, eps_0, Xi, theta_max, lambda_max, eps_adm
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: CYCLE BREAK: the draft edges adm-choice -> adm-budget (L217: the polynomial lower bound is Proposition adm-budget, a pointer) and adm-choice -> strip-budget/initial (L214, L215: (A6), (A7) cite the lemmas that use or prove them; the proof ac-list cites initial) are not statement dependencies; the proof step carries the initial edge.
```

### P-p11a3 — stepP:p11a:ac-lam

```text
NODE: stepP:p11a:ac-lam
KIND: step
TITLE: $\lambda_0\le\lambda_{\max}$
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ac-lam@L220-L220
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ac-lam@L220-L220
CONTRACT_ID: stepP:p11a:ac-lam
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: lambda_0=eps/s_0+(N/2)C_1 s_0 with s_0=lambda_max/(N C_1); eps<=lambda_max^2/(2 N C_1)
SOURCE_QUANTIFIERS: eps in [0,eps_adm]
SOURCE_CONCLUSION: lambda_0<=lambda_max
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:adm-params
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ac-lam@L220-L220 | s_0=lambda_max/(N C_1), eps_adm=lambda_max^2/(2 N C_1), lambda_0 definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — bpP:p11a:finite-measure

```text
NODE: bpP:p11a:finite-measure
KIND: lemma
TITLE: The retained set is nonempty: finite-stage measure bound
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:finite-measure@L258-L265
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:finite-measure@L266-L272
CONTRACT_ID: bpP:p11a:finite-measure
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption sel-data; the schedule with (A1)-(A6); a chain of length nu and K_{nu+1} by retained-def; tilde omega_j the chain extension of Lemma finite-extension (using K_i, Delta omega_i for i<j<=nu only); H^{(nu)}={b in K: ¦k.tilde omega_{nu(k)}(b)¦>=2 gamma ¦k¦_1^{-tau} for all k in Z^N, 0<¦k¦_1<=T_nu}
SOURCE_QUANTIFIERS: data, schedule, chain of length nu fixed
SOURCE_CONCLUSION: H^{(nu)} is compact, K_{nu+1}⊃H^{(nu)}, H^{(nu)}⊃H^{(nu+1)} whenever both are defined, and meas H^{(nu)}>=meas K-eps*>0; in particular K_{nu+1} is nonempty
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:fm-close, stepP:p11a:fm-family, stepP:p11a:fm-incl, bpP:p11a:sel-data, bpP:p11a:sec-retained#data, bpP:p11a:finite-extension, bpP:p11a:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:fm-close | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:finite-measure@L267-L267 | proof step
EDGE: stepP:p11a:fm-family | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:finite-measure@L269-L269 | proof step
EDGE: stepP:p11a:fm-incl | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:finite-measure@L271-L271 | proof step
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:finite-measure@L259-L259 | data and gamma
EDGE: bpP:p11a:sec-retained#data | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:finite-measure@L259-L259 | chain of length nu and K_{nu+1}
EDGE: bpP:p11a:finite-extension | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:finite-measure@L261-L261 | chain extension tilde omega_j
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:finite-measure@L259-L259 | nu(k), T_nu
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The edge to power-law at L264 (\source) is provenance in the statement; power-law is used in fm-family.
```

### P-p11a3 — stepP:p11a:fm-close

```text
NODE: stepP:p11a:fm-close
KIND: step
TITLE: Closeness for every stage
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fm-close@L267-L267
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fm-close@L267-L267
CONTRACT_ID: stepP:p11a:fm-close
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: initial segments of the chain are chains; (A5); SC3
SOURCE_QUANTIFIERS: j<=nu
SOURCE_CONCLUSION: theta_j:=¦¦tilde omega_j-omega¦¦^mu_{dg,K_vartheta}<=c'_{N,mu} 4 lambda_0 t_0^-mu<=theta_max, hence eta_rho(theta_j)<=beta/2 and D3 holds for tilde omega_j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:finite-extension, bpP:p11a:schedule-props, bpP:p11a:adm-params, bpP:p11a:stability, bpP:p11a:diophantine-measure, bpP:p11a:sel-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:finite-extension | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fm-close@L267-L267 | part (b): closeness of tilde omega_j to omega
EDGE: bpP:p11a:schedule-props | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fm-close@L267-L267 | (S3): sum ell_j t_j^-mu<=4 lambda_0 t_0^-mu
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fm-close@L267-L267 | definition of theta_max
EDGE: bpP:p11a:stability | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fm-close@L267-L267 | Lemma stability: eta_rho(theta)<=beta/2 for small theta
EDGE: bpP:p11a:diophantine-measure | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fm-close@L267-L267 | hypothesis D3 (closeness) of Theorem diophantine-measure
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fm-close@L267-L267 | beta, M_0, rho
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:ps-lim

```text
NODE: stepP:p11a:ps-lim
KIND: step
TITLE: Limits
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-lim@L330-L330
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-lim@L330-L330
CONTRACT_ID: stepP:p11a:ps-lim
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: b in K_infty subset K_j subset B_j for all j; sum ell_j=S_0<infty (S2); sum 2 eps_j<infty; varpi<=1/2
SOURCE_QUANTIFIERS: b in K_infty, m>=0
SOURCE_CONCLUSION: omega_nu converge uniformly on K_infty so omega_* is continuous, tail ¦omega_*-omega_m¦<=S_m<=gamma T_m^{-tau-1}, sum_{j>=m} 2 eps_j<=4 eps_m, h_* continuous
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:schedule-props, bpP:p11a:inductive-lemma, stepP:p11a:ps-iter, bpP:p11a:y-geom, bpP:p11a:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:schedule-props | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-lim@L330-L330 | (S2): sum ell_j=S_0<infty and S_m<=gamma T_m^{-tau-1}
EDGE: bpP:p11a:inductive-lemma | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-lim@L330-L330 | (O2) bounds ¦Delta omega_j¦<=ell_j, ¦Delta h_j¦<=2 eps_j
EDGE: stepP:p11a:ps-iter | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-lim@L330-L330 | b in K_j for all j
EDGE: bpP:p11a:y-geom | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-lim@L330-L330 | sum_{j>=m} varpi^j=varpi^m/(1-varpi)<=2 varpi^m
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-lim@L330-L330 | ell_j, eps_j, S_m
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L330 invokes the uniform Weierstrass test and continuity of uniform limits on the compact real carrier K_infty. K:bp:p1:uniform-limits (blueprint/parts/p1-analysis.tex L364-L368) instead assumes holomorphic maps on one open complex V and uniform convergence of their derivatives. Those hypotheses are not supplied here: the collars shrink and only continuous restrictions to K_infty are used. The continuous-map convergence/continuity bridge used here is not an approved input of this slice; expose it here rather than asserting that the imported lemma supplies it.
```

### P-p11a3 — stepP:p11a:ab-lam

```text
NODE: stepP:p11a:ab-lam
KIND: step
TITLE: The three terms
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393
CONTRACT_ID: stepP:p11a:ab-lam
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: lower bounds of Steps ab-gamma, ab-T0, ab-t0; the family bounds on beta and M_0 of Proposition adm-budget; theta_max and lambda_max of Definition adm-params
SOURCE_QUANTIFIERS: constants as above
SOURCE_CONCLUSION: theta_max>=c_9 u^{a_beta+a_0} by the cases rho=1 and rho=2 (beta<=2M_0 or not); each of the three terms of lambda_max is bounded below (c_4 u^J/8; c_8 u^{G+(N+1)a_s+tau L+X}; c_10 u^{a_beta+a_0+mu J}), so lambda_max>=c_11 u^H
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:adm-params, stepP:p11a:ab-gamma, stepP:p11a:ab-T0, stepP:p11a:ab-t0, bpP:p11a:schedule-consts, bpP:p11a:smooth-cutoff
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393 | the three terms of lambda_max and theta_max
EDGE: stepP:p11a:ab-gamma | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393 | gamma>=c_2 u^G in the second term
EDGE: stepP:p11a:ab-T0 | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393 | T_0<=C u^-L in the second term
EDGE: stepP:p11a:ab-t0 | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393 | t_0>=c_4 u^J and Xi<=C u^-X
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393 | varpi, C_Q constants depending on (N,mu,tau)
EDGE: bpP:p11a:smooth-cutoff | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393 | c'_{N,mu} constant depending on (N,mu)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — coverage bpP:p11a:geom-recursion

```text
ITEM: bpP:p11a:geom-recursion
KIND: lemma
SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:geom-recursion@L58-L63
DISPOSITION: EXCLUDED
REASON: outside every root closure: il-c3 L304 only compares the proof pattern; (S4) and (A4) give Q_nu<=varpi/2 directly and il-rem L306 bounds the new remainder directly. No other mathematical consumer in the P corpus or packets; gr-ind is used only by geom-recursion.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
```

### P-p11a3 — coverage stepP:p11a:gr-ind

```text
ITEM: stepP:p11a:gr-ind
KIND: proof-region
SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:gr-ind@L65-L65
DISPOSITION: EXCLUDED
REASON: outside every root closure: il-c3 L304 only compares the proof pattern; (S4) and (A4) give Q_nu<=varpi/2 directly and il-rem L306 bounds the new remainder directly. No other mathematical consumer in the P corpus or packets; gr-ind is used only by geom-recursion.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
```

### P-p11a3 — coverage p11a3:prose-L436-L436

```text
ITEM: p11a3:prose-L436-L436
KIND: proof-region
SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#prose@L436-L436
DISPOSITION: EXCLUDED
REASON: administrative list of external facts used; exp-sums and decay are linked from il-c3 and il-inc. Its uniform-limits citation is represented by the SOURCE_GAP in ps-lim, not by an inapplicable imported edge.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3
REVIEWER: -
```

## Suspected blueprint defects

- Part 11a-3 L330: “uniform Weierstrass test, [uniform-limits]”. The cited K lemma (Part 1 L364-L368) concerns holomorphic maps on an open complex domain with uniform derivative convergence. It does not state the continuous uniform-limit theorem on K_infty. This is the supplier mismatch exposed above; no missing mathematics is supplied by this review.

- Part 11a-3 L202: “All quantities depend on the data ...” omits eps for eps_0 and lambda_0, although the same line defines eps_0=eps+(N/2)C_1 s_0^2 and lambda_0=eps_0/s_0. The graph faithfully repeats this source wording, so adm-params is not failed for transcribing it. The chosen threshold eps_adm and the other chosen parameters are independent of eps; eps_0 and lambda_0 are not. This source-scope ambiguity should be clarified by the blueprint owner.

- Part 11a-3 L304: “the induction below is that of Lemma [geom-recursion]” should be read as a pattern comparison, for the reasons above; literal application to the prescribed eps_nu would have an unmet recursion premise. The direct proof in L304-L306 does not require that application.

No new suspected error in a pinned paper was established by this source-topology review. No frozen declaration, blueprint source, packet or Lean file was edited.

## Validation

- Current packet structural check: 74 nodes, 264 edges, 124 coverage items, 0 problems, 0 TODO records (`--structural`).
- `sha256sum -c docs/graph/P/CORPUS.sha256`: all 24 pinned files OK.
- Review-parser dry run: 29 replaced, 0 added, 3 coverage items, 0 unresolved FAILs, 43 PASS nodes. The two node deletions remain explicit writer actions; the dry-run tool does not remove node blocks.
- In-memory application of replacements and the two deletions: all 72 retained slice nodes reachable from the seven current roots; 0 cycles in the dependency graph induced by this slice.
- Report check: exactly one verdict for each of the 74 current nodes; complete replacement blocks preserve unrelated fields; each repaired DEPS list has exactly one EDGE per dependency.
- `git diff --check`: no output. No Lean run, as required by the source-only brief.
