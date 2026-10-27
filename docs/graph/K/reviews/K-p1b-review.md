# K-p1b source topology review

Reviewer: sol-review-r2. Verdict: **FAIL**.

Read the complete assigned slice, all its node and coverage records, SPEC, the governing documents, the 25 track-K frozen declaration files and the manifest identity fields. Corpus hashes match CORPUS.sha256. No implementation or provider modules were read.

External/source targets re-read: Part 0 L19–L24, L32–L55 and L91–L101; Part 1 L24–L107 (including E1, E2, E3, E4, E6 and E7), L114–L195 (matrix and operator norms), L214–L280 (holomorphic regularity), L352–L390 (uniform limits), L462–L496 (open-set Cauchy). Full source slice: Part 1 L499–L994. The second-derivative exclusions fail the explicit labelled-node threshold; they are not administrative remarks.


One row per existing node follows. Spans refer to blueprint/parts/p1-analysis.tex. Statement and proof spans were both re-read; a dash denotes a definition with no separate proof. PASS is a local record verdict, not a theorem/proof-status claim and not a certification of its failed prerequisites.

| Node | Verdict | Source spans re-read (statement; proof) | Finding |
|---|---|---|---|
| `bp:p1:periodic-bounded` | FAIL | L505-L507; L509-L517 | R1: the quantifier field restricts rho' to positive radii although L506 and L511 explicitly include nonpositive radii. |
| `step:p1:pb-compact` | FAIL | L510-L516; L510-L516 | R1: omits the explicit empty-strip case split at L511; the compact-set formula only describes the positive branch. |
| `bp:p1:strip-identity` | PASS | L519-L522; L524-L534 | — |
| `step:p1:si-induction` | PASS | L525-L533; L525-L533 | — |
| `bp:p1:increments` | PASS | L539-L543; L545-L554 | — |
| `step:p1:inc-mvt` | PASS | L546-L549; L546-L549 | — |
| `step:p1:inc-cauchy` | PASS | L551-L553; L551-L553 | — |
| `bp:p1:cauchy-strip` | PASS | L556-L562; L564-L585 | — |
| `step:p1:cs-coordinate` | PASS | L567-L575; L567-L575 | — |
| `step:p1:cs-full` | PASS | L577-L584; L577-L584 | — |
| `bp:p1:cauchy-corollaries` | PASS | L605-L609; L611-L625 | — |
| `step:p1:cc-transpose` | PASS | L614-L619; L614-L619 | — |
| `step:p1:cc-omega` | PASS | L621-L624; L621-L624 | — |
| `bp:p1:averages-real` | PASS | L634-L637; L639-L651 | — |
| `step:p1:ar-one` | PASS | L640-L644; L640-L644 | — |
| `step:p1:ar-fubini` | PASS | L646-L650; L646-L650 | — |
| `bp:p1:averages` | PASS | L653-L657; L659-L672 | — |
| `step:p1:av-derivatives` | PASS | L660-L665; L660-L665 | — |
| `step:p1:av-bound` | PASS | L667-L671; L667-L671 | — |
| `bp:p1:averages-matrix` | PASS | L674-L677; L679-L687 | — |
| `step:p1:am-bound` | PASS | L680-L682; L680-L682 | — |
| `step:p1:am-derivative` | PASS | L684-L686; L684-L686 | — |
| `bp:p1:periodic-average` | PASS | L689-L691; L693-L705 | — |
| `step:p1:pa-one` | PASS | L694-L697; L694-L697 | — |
| `step:p1:pa-induction` | PASS | L699-L704; L699-L704 | — |
| `bp:p1:exp-sums` | PASS | L715-L722; L724-L743 | — |
| `step:p1:es-power` | PASS | L725-L728; L725-L728 | — |
| `step:p1:es-product` | PASS | L730-L733; L730-L733 | — |
| `step:p1:es-nonzero` | PASS | L735-L742; L735-L742 | — |
| `bp:p1:fourier-basic` | PASS | L745-L756; L758-L772 | — |
| `step:p1:fb-derivative` | PASS | L759-L764; L759-L764 | — |
| `step:p1:fb-series` | PASS | L766-L767; L766-L767 | — |
| `step:p1:fb-holomorphic` | PASS | L769-L771; L769-L771 | — |
| `bp:p1:decay` | PASS | L774-L777; L779-L807 | — |
| `step:p1:dec-shift` | PASS | L788-L799; L788-L799 | — |
| `step:p1:dec-bound` | FAIL | L801-L806; L801-L806 | R2: the estimate of I_n uses E6 (norm of an integral), without a dependency. |
| `bp:p1:summation` | PASS | L812-L819; L821-L863 | — |
| `step:p1:sum-bound` | PASS | L824-L827; L824-L827 | — |
| `step:p1:sum-holo` | PASS | L829-L839; L829-L839 | — |
| `step:p1:sum-coeff` | PASS | L841-L847; L841-L847 | — |
| `step:p1:sum-converse` | FAIL | L849-L855; L849-L855 | R3: applies the limit form at radius rho; the recorded dependency only concludes decay for rho'<rho. The reused L809-L810 claim needs its own node. |
| `step:p1:sum-representation` | PASS | L857-L862; L857-L862 | — |
| `bp:p1:cohomological` | FAIL | L875-L885; L887-L957 | R4: SOURCE_QUANTIFIERS puts c(n,tau) after g, delta and u, contradicting the uniform dependence in L880 and CONSTANT_SCOPE. |
| `step:p1:coh-data` | FAIL | L894-L896; L894-L896 | R3: applies the limit form at radius rho; the recorded dependency only concludes decay for rho'<rho. The reused L809-L810 claim needs its own node. |
| `step:p1:coh-coefficients` | FAIL | L898-L903; L898-L903 | R5: k!=0 is made a global premise although the step claims an all-mode identity; the zero-mode premise and its supplier are absent. |
| `step:p1:coh-weighted` | PASS | L905-L920; L905-L920 | — |
| `step:p1:coh-existence` | PASS | L922-L925; L922-L925 | — |
| `step:p1:coh-equation` | PASS | L927-L932; L927-L932 | — |
| `step:p1:coh-unique` | PASS | L934-L941; L934-L941 | — |
| `step:p1:coh-real` | PASS | L943-L948; L943-L948 | — |
| `step:p1:coh-vector` | PASS | L950-L956; L950-L956 | — |
| `bp:p1:cohomological-operator` | PASS | L959-L962; L964-L992 | — |
| `step:p1:coo-entries` | PASS | L968-L971; L968-L971 | — |
| `step:p1:coo-vectors` | PASS | L973-L978; L973-L978 | — |
| `step:p1:coo-norm` | PASS | L980-L983; L980-L983 | — |
| `step:p1:coo-apriori` | PASS | L985-L991; L985-L991 | — |

Missing nodes required by the coverage findings:

| Node | Verdict | Source span re-read | Finding |
|---|---|---|---|
| `bp:p1:cauchy-strip-2` | FAIL (absent) | L592-L594 | Required replacement node below. |
| `step:p1:cs2-polydisc` | FAIL (absent) | L597-L602 | Required replacement node below. |
| `bp:p1:decay#boundary-radius` | FAIL (absent) | L809-L810 | Required replacement node below. |

Coverage failures:

| Item | Source | Finding |
|---|---|---|
| `bp:p1:cauchy-strip-2` | L592–L594 | Labelled mathematical lemma excluded solely because no root consumes it; SPEC has no root-reachability pruning rule. |
| `step:p1:cs2-polydisc` | L597–L602 | Labelled proofstep excluded for the same invalid pruning reason. |
| Missing `bp:p1:decay#boundary-radius` | L809–L810 | Reused intermediate claim has no inventory item/node; consumers currently target a strictly thinner-radius statement. |

All other coverage items PASS. The corrected NODE dispositions above do not themselves certify the source-statement fields of those nodes.

Replacement fragments follow. Replace each existing NODE block with the block of the same ID; add the new blocks. Replace same-ID coverage items and add missing items. These are proposed database edits only; the packet files have not been edited.

```text
NODE: bp:p1:periodic-bounded
KIND: lemma
TITLE: Periodic functions are bounded on smaller strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L505-L507
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L509-L517
CONTRACT_ID: bp:p1:periodic-bounded
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic and 1-periodic on T_rho, values in W
SOURCE_QUANTIFIERS: rho>0; every holomorphic 1-periodic u:T_rho -> W; every real rho'<rho, including rho'<=0
SOURCE_CONCLUSION: u is bounded on T_rho'
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:pb-compact, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:pb-compact | blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L510-L510 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L505-L505 | strip T_rho used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p1:pb-compact
KIND: step
TITLE: A compact fundamental set
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pb-compact@L510-L516
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pb-compact@L510-L516
CONTRACT_ID: step:p1:pb-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic and 1-periodic on T_rho; rho'<rho
SOURCE_QUANTIFIERS: rho>0, u fixed; every real rho'<rho
SOURCE_CONCLUSION: if rho'<=0 then T_rho' is empty; if 0<rho'<rho then the compact fundamental set S at L512 is contained in T_rho and sup_{T_rho'} |u| <= max_S |u|; hence boundedness in both cases
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p1:dec-bound
KIND: step
TITLE: The bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L801-L806
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L801-L806
CONTRACT_ID: step:p1:dec-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: I_n=hat u_k via the shifts; |u|<=||u||_rho
SOURCE_QUANTIFIERS: k; rho'
SOURCE_CONCLUSION: |hat u_k| = |I_n| <= e^{-2 pi rho' |k|_1} ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:dec-shift, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:dec-shift | blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L806-L806 | hat u_k = I_0 = ... = I_n
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L802-L806 | norm of the integral over a box of volume one bounds I_n by the displayed uniform integrand bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p1:sum-converse
KIND: step
TITLE: The converse estimate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L849-L855
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L849-L855
CONTRACT_ID: step:p1:sum-converse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic, bounded and 1-periodic on T_rho; 0<delta<rho (the boundary-radius decay is a dependency, not an extra premise)
SOURCE_QUANTIFIERS: delta
SOURCE_CONCLUSION: sum |hat u_k| e^{2 pi |k|_1 (rho-delta)} <= coth(pi delta)^n ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:decay#boundary-radius, bp:p1:exp-sums
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:exp-sums | blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L851-L851 | part (b) with x=2 pi delta
EDGE: bp:p1:decay#boundary-radius | blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L850-L851 | the boundary-radius decay statement of L809-L810
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p1:coh-data
KIND: step
TITLE: Coefficients of the datum
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-data@L894-L896
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-data@L894-L896
CONTRACT_ID: step:p1:coh-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g scalar holomorphic bounded 1-periodic on T_rho, avg(g)=0
SOURCE_QUANTIFIERS: k in Z^n
SOURCE_CONCLUSION: hat g_0=0 and |hat g_k| <= e^{-2 pi |k|_1 rho}||g||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:decay#boundary-radius
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:decay#boundary-radius | blueprint/parts/p1-analysis.tex#step:p1:coh-data@L895-L896 | the boundary-radius decay statement of L809-L810
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p1:cohomological
KIND: lemma
TITLE: Cohomological equation on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L875-L885
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L887-L957
CONTRACT_ID: bp:p1:cohomological
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega in Dio_{gamma,tau}, gamma>0, tau>=0; g holomorphic, bounded, 1-periodic on T_rho with avg(g)=0; 0<delta<rho; g real on real points (for realness); vector/matrix valued componentwise
SOURCE_QUANTIFIERS: fixed dimension n under the corpus conventions, and tau>=0; a constant c(n,tau) depending only on these; then every gamma>0, rho>0, Diophantine omega, datum g as stated and 0<delta<rho; then the unique zero-average solution u
SOURCE_CONCLUSION: there is a unique u holomorphic and 1-periodic on T_{rho-delta} (no boundedness assumed) with avg(u)=0 and Du(theta) omega=g(theta); u is bounded and ||u||_{rho-delta} <= c(n,tau) gamma^-1 delta^-(tau+n) ||g||_rho; u real on real points if g is
CONSTANT_SCOPE: c(n,tau) depends only on n and tau (not on gamma, rho, delta, omega, g)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coh-data, step:p1:coh-coefficients, step:p1:coh-weighted, step:p1:coh-existence, step:p1:coh-equation, step:p1:coh-unique, step:p1:coh-real, step:p1:coh-vector, bp:p0:diophantine#IsDiophantine, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coh-data | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L894-L894 | proof step of this result
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L898-L898 | proof step of this result
EDGE: step:p1:coh-weighted | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L905-L905 | proof step of this result
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L922-L922 | proof step of this result
EDGE: step:p1:coh-equation | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L927-L927 | proof step of this result
EDGE: step:p1:coh-unique | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L934-L934 | proof step of this result
EDGE: step:p1:coh-real | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L943-L943 | proof step of this result
EDGE: step:p1:coh-vector | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L950-L950 | proof step of this result
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L876-L876 | omega in Dio_{gamma,tau}
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L876-L876 | strip T_rho used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p1:coh-coefficients
KIND: step
TITLE: The coefficient solution
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L898-L903
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L898-L903
CONTRACT_ID: step:p1:coh-coefficients
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: gamma>0, tau>=0, omega Diophantine (gamma,tau); datum g as in the enclosing lemma with hat g_0=0 from step:p1:coh-data
SOURCE_QUANTIFIERS: define a_0=0 and a_k=hat g_k/(2 pi i k.omega) for every k!=0; coefficient identity for every k in Z^n; inverse-divisor estimate for every k!=0
SOURCE_CONCLUSION: a_0=0, a_k=hat g_k/(2 pi i k.omega) satisfy 2 pi i (k.omega) a_k=hat g_k and |a_k| <= (2 pi gamma)^-1 |k|_1^tau |hat g_k|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:diophantine#IsDiophantine, step:p1:coh-data
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L899-L899 | k.omega >= gamma k_1^-tau
EDGE: step:p1:coh-data | blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L900-L901 | the all-mode coefficient identity uses hat g_0=0 at k=0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p1:cauchy-strip-2
KIND: lemma
TITLE: Second-derivative Cauchy estimate on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip-2@L592-L594
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip-2@L596-L603
CONTRACT_ID: bp:p1:cauchy-strip-2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic and bounded on T_rho; 0<delta<rho
SOURCE_QUANTIFIERS: rho, delta, u as stated
SOURCE_CONCLUSION: ||D^2 u||_{rho-delta} <= c(n) delta^-2 ||u||_rho
CONSTANT_SCOPE: c(n) depends only on n; the proof chooses 4
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cs2-polydisc
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cs2-polydisc | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip-2@L597-L602 | the proof embeds closed polydiscs in the strip
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-r2
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p1:cs2-polydisc
KIND: step
TITLE: Polydiscs in the strip
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs2-polydisc@L597-L602
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs2-polydisc@L597-L602
CONTRACT_ID: step:p1:cs2-polydisc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic and bounded on T_rho; 0<delta<rho
SOURCE_QUANTIFIERS: theta in T_{rho-delta}
SOURCE_CONCLUSION: closed P(theta,delta) is contained in T_rho and |D^2u(theta)| <= 4 delta^-2 ||u||_rho; taking the supremum proves the claim
CONSTANT_SCOPE: 4, independent of n
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-open
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-open | blueprint/parts/p1-analysis.tex#step:p1:cs2-polydisc@L600-L601 | U=T_rho, m=n, j=2, A=||u||_rho; delta>0 and polydisc containment checked at L598-L600
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-r2
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p1:decay#boundary-radius
KIND: step
TITLE: Coefficient decay at the boundary radius
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay#boundary-radius@L809-L810
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay#boundary-radius@L809-L810
CONTRACT_ID: bp:p1:decay#boundary-radius
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic, bounded and 1-periodic on T_rho; rho>0
SOURCE_QUANTIFIERS: every k in Z^n
SOURCE_CONCLUSION: |hat u_k| <= exp(-2 pi |k|_1 rho) ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:decay
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:decay | blueprint/parts/p1-analysis.tex#bp:p1:decay#boundary-radius@L809-L810 | let rho' increase to rho in the coefficient estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-r2
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
ITEM: bp:p1:cauchy-strip-2
KIND: lemma
SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip-2@L592-L594
DISPOSITION: NODE bp:p1:cauchy-strip-2
REASON: SPEC requires labelled result environments; absence of a root consumer does not remove this mathematical lemma.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-r2
REVIEWER: sol-review-r2
```

```text
ITEM: step:p1:cs2-polydisc
KIND: proof-region
SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs2-polydisc@L597-L602
DISPOSITION: NODE step:p1:cs2-polydisc
REASON: SPEC requires every labelled proofstep; this proves the second-derivative strip lemma.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-r2
REVIEWER: sol-review-r2
```

```text
ITEM: bp:p1:decay#boundary-radius
KIND: proof-region
SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay#boundary-radius@L809-L810
DISPOSITION: NODE bp:p1:decay#boundary-radius
REASON: A reused intermediate claim, applied at L850-L851 and L895-L896.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-r2
REVIEWER: sol-review-r2
```

Checks: source-only review; all five corpus hashes matched the pin; report node-row completeness and replacement-field checks below. No Lean, build, #print axioms or lint script was run: REVIEW-BRIEF expressly says “Run no Lean” and “Edit nothing else.” No Lean declarations were changed, so axioms are not applicable. No state-changing git command was run.

Uncertainties/errata: no suspected defect in a pinned paper is asserted by this review; the papers are provenance only under SPEC. Findings concern graph transcription and topology. No mathematical repair or deviation was introduced. The existing cohomological-vector forward pointer was correctly omitted as an edge; no cycle through cohomological-operator is added.

Validation receipt (read-only Python assertions over packets/reports and SHA-256 over the corpus):

```text
K-p1b: 56/56 existing node rows; 10 replacement/addition node blocks; DEPS/ROUTES match EDGE targets; required fields present; PASS
Corpus: 5/5 pinned hashes match; PASS
```

Command: `git diff --check -- docs/graph/K/reviews/K-p1b-review.md docs/graph/K/reviews/K-p2a-review.md`

```text
exit 0; no output
```

The Python check also verified the explicit all-other-coverage PASS statement and absence of trailing spaces. These checks validate report structure, not mathematical closure.
