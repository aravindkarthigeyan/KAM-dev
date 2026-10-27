# N-p02 second-round delta topology review

Reviewer: `sol-delta2-N-a`. Marker: `delta2-N-a`. Verdict: **FAIL**.

Scope: exactly 35 records still marked `TOPOLOGY_STATUS: PROPOSED` and 70 records still marked `COVERAGE_STATUS: PROPOSED`. This session did not write the first delta review (`sol-delta-N-a`) or the slice review (`sol-review-N-a`). Previously reviewed records are prerequisite context only. Read the complete current DELTA-BRIEF and REVIEW-BRIEF, SPEC including the D28 revision, repository rules/PLAN/DECISIONS, and the first-delta findings. The convergence rule is applied: no wording-only rewrite and no mathematical repair of an exposed source gap.

## Proposed nodes

| ID | Verdict | Spans re-read | Finding |
|---|---|---|---|
| bpN:p0:actionnbhd#actionNbhd | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:actionnbhd@L36-L41 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:freq#frequencyMap | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:freq@L43-L50 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:vf#hamiltonianVectorField | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:vf@L52-L58 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:realH#realHamiltonian | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:realH@L60-L65 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:strip#complexStrip | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:strip@L67-L71 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:ball#actionBall | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:ball@L75-L79 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:cdomain#complexDomain | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:cdomain@L81-L86 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:rdomain#realActionDomain | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain@L88-L92 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:rdomain-eq | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain-eq@L94-L98; blueprint-N/parts/p1-interfaces.tex#stepN:p1:rd-real@L59-L59 | The restored Part 0 locator matches the real-tube identity; rd-real at Part 1 L59 proves it independently, without the earlier remark/proof cycle. |
| bpN:p0:realpart#realPart | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:realpart@L100-L104 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:integrable#IsAnalyticIntegrable | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:integrable@L106-L119 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:pert#IsAnalyticPerturbation | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:pert@L121-L133 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:bm#HasDerivativeBounds | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:bm@L135-L144 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:qc#IsStrictlyQuasiConvex | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:qc@L146-L153 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:hess#HasComplexHessianBound | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:hess@L155-L163 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:sol#IsSolutionOn | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:sol@L165-L172 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:orbit#integrableOrbit | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:orbit@L174-L179 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:totality | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L181-L200 | Delete node: the prior deletion remains unapplied. This administrative totality remark is already EXCLUDED in coverage, has zero incoming consumers and is outside all six root closures. The actual derivative proofs remain represented by Part 2 steps. |
| bpN:p0:head | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L204-L237; blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L143-L155 | The restored locator, frozen signature, max norms, H1–H7, seven-data-before-constants order, positive epsilon, exhibited solution and arbitrary comparison-solution quantifiers agree. |
| bpN:p0:zero | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:zero@L239-L246; blueprint-N/parts/p2-qc-zero.tex#bpN:p2:zero@L87-L97 | The restored locator and frozen signature retain arbitrary n, epsilon=0, the explicit integrable orbit on all real times, and the action-ball solution predicate. |
| bpN:p0:qcthm | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:qcthm@L248-L257; blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-bij@L53-L61 | The restored locator and frozen signature retain arbitrary n, the local quasi-convexity premise and lambda>0; the derivative is bijective without a uniform inverse-radius claim. |
| bpN:p0:partial-sec#Phase | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L264-L264 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:partial-sec#fast | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L265-L266 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:partial-sec#slow | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L265-L266 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:partial-sec#fastShift | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L269-L269 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:partial-complexify#complexifyPhase | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-complexify@L271-L275 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:partial-core#innerCore | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-core@L277-L282 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:partial-domain#partialComplexDomain | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-domain@L284-L290 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:partial-definite#HasDefiniteFastPart | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-definite@L292-L299 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:partial-pert#IsPartialPerturbation | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-pert@L301-L311 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:partial-exponents#partialTimeExponent | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:partial-exponents#partialDriftExponent | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p0:partial | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L319-L335; blueprint-N/parts/p11c-partial-stability.tex#bpN:p0:partial@L159-L169 | The restored locator and frozen signature retain the collar and closed max-norm erosion, global Hessian sign, 2pi fast period, witness order and slow confinement only through the queried time. |
| bpN:p0:partial-sec#degenerateHamiltonian | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L324-L324 | The first-delta locator correction matches the pinned raw source and every EDGE use. The source contract and frozen declaration/identity, where applicable, agree; no additional premise or dependency is introduced. |
| bpN:p2:qc-deriv | PASS | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-deriv@L33-L37; blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-deriv@L38-L46 | Both definition EDGE locators now point to their actual use in Psi at L34. Differentiability and the displayed symmetric derivative are proved by qd-first/qd-freq/qd-sym/qd-prod, without a totality-remark dependency. |

## Proposed coverage records

| ID | Verdict | Span re-read | Finding |
|---|---|---|---|
| bpN:p0:actionnbhd#actionNbhd | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:actionnbhd@L36-L41 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:freq#frequencyMap | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:freq@L43-L50 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:vf#hamiltonianVectorField | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:vf@L52-L58 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:realH#realHamiltonian | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:realH@L60-L65 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:strip#complexStrip | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:strip@L67-L71 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:ball#actionBall | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:ball@L75-L79 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:cdomain#complexDomain | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:cdomain@L81-L86 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:rdomain#realActionDomain | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain@L88-L92 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:rdomain-eq | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain-eq@L94-L98 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:realpart#realPart | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:realpart@L100-L104 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:integrable#IsAnalyticIntegrable | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:integrable@L106-L119 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:pert#IsAnalyticPerturbation | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:pert@L121-L133 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:bm#HasDerivativeBounds | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:bm@L135-L144 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:qc#IsStrictlyQuasiConvex | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:qc@L146-L153 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:hess#HasComplexHessianBound | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:hess@L155-L163 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:sol#IsSolutionOn | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:sol@L165-L172 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:orbit#integrableOrbit | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:orbit@L174-L179 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:totality | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L181-L200 | EXCLUDED is correct. The former incoming edges have already been removed; only deletion of the unused node remains. Preserve this coverage disposition. |
| bpN:p0:head | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L204-L237 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:zero | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:zero@L239-L246 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:qcthm | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:qcthm@L248-L257 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial-sec#Phase | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L264-L264 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial-sec#fast | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L265-L266 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial-sec#slow | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L265-L266 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial-sec#fastShift | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L269-L269 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial-complexify#complexifyPhase | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-complexify@L271-L275 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial-core#innerCore | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-core@L277-L282 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial-domain#partialComplexDomain | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-domain@L284-L290 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial-definite#HasDefiniteFastPart | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-definite@L292-L299 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial-pert#IsPartialPerturbation | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-pert@L301-L311 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial-exponents#partialTimeExponent | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial-exponents#partialDriftExponent | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L319-L335 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial-sec#degenerateHamiltonian | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L324-L324 | Corrected SOURCE matches the exact declaration/statement unit and its node disposition. |
| bpN:p0:partial-totality | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-totality@L337-L339 | Administrative totality remark, not a consumed result. Its corrected source locator and exclusion agree. |
| heading:bpN:p0:conventions | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:conventions@L10-L10 | Corrected SOURCE points to the actual heading; EXCLUDED is correct. |
| heading:bpN:p0:kdefs | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:kdefs@L34-L34 | Corrected SOURCE points to the actual heading; EXCLUDED is correct. |
| heading:bpN:p0:defs | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:defs@L73-L73 | Corrected SOURCE points to the actual heading; EXCLUDED is correct. |
| heading:bpN:p0:theorems | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:theorems@L202-L202 | Corrected SOURCE points to the actual heading; EXCLUDED is correct. |
| heading:bpN:p0:partial-sec | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L259-L259 | Corrected SOURCE points to the actual heading; EXCLUDED is correct. |
| p0:sourcegap-L234 | PASS | blueprint-N/parts/p0-conventions.tex#sourcegap@L233-L233 | Corrected SOURCE starts at the actual source-gap note; its blueprint bridge/root mapping is accurate. |
| p0:sourcegap-L335 | PASS | blueprint-N/parts/p0-conventions.tex#sourcegap@L334-L334 | Corrected SOURCE starts at the actual source-gap note; its blueprint bridge/root mapping is accurate. |
| p0:source-L41 | PASS | blueprint-N/parts/p0-conventions.tex#source@L40-L40 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L50 | PASS | blueprint-N/parts/p0-conventions.tex#source@L49-L49 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L58 | PASS | blueprint-N/parts/p0-conventions.tex#source@L57-L57 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L65 | PASS | blueprint-N/parts/p0-conventions.tex#source@L64-L64 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L79 | PASS | blueprint-N/parts/p0-conventions.tex#source@L78-L78 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L86 | PASS | blueprint-N/parts/p0-conventions.tex#source@L85-L85 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L92 | PASS | blueprint-N/parts/p0-conventions.tex#source@L91-L91 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L104 | PASS | blueprint-N/parts/p0-conventions.tex#source@L103-L103 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L119 | PASS | blueprint-N/parts/p0-conventions.tex#source@L118-L118 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L133 | PASS | blueprint-N/parts/p0-conventions.tex#source@L132-L132 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L144 | PASS | blueprint-N/parts/p0-conventions.tex#source@L143-L143 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L153 | PASS | blueprint-N/parts/p0-conventions.tex#source@L152-L152 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L162 | PASS | blueprint-N/parts/p0-conventions.tex#source@L161-L161 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L172 | PASS | blueprint-N/parts/p0-conventions.tex#source@L171-L171 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L179 | PASS | blueprint-N/parts/p0-conventions.tex#source@L178-L178 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L232 | PASS | blueprint-N/parts/p0-conventions.tex#source@L231-L231 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L246 | PASS | blueprint-N/parts/p0-conventions.tex#source@L245-L245 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L257 | PASS | blueprint-N/parts/p0-conventions.tex#source@L256-L256 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L275 | PASS | blueprint-N/parts/p0-conventions.tex#source@L274-L274 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L282 | PASS | blueprint-N/parts/p0-conventions.tex#source@L281-L281 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L290 | PASS | blueprint-N/parts/p0-conventions.tex#source@L289-L289 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L299 | PASS | blueprint-N/parts/p0-conventions.tex#source@L298-L298 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L311 | PASS | blueprint-N/parts/p0-conventions.tex#source@L310-L310 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L317 | PASS | blueprint-N/parts/p0-conventions.tex#source@L316-L316 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:source-L334 | PASS | blueprint-N/parts/p0-conventions.tex#source@L333-L333 | Corrected SOURCE starts at the actual provenance note. The disposition remains EXCLUDED; no provenance edge is needed. |
| p0:prose-L13-L33 | PASS | blueprint-N/parts/p0-conventions.tex#prose@L12-L32 | Corrected SOURCE matches the convention/notation/pointer paragraph and its consumer mapping or exclusion. |
| p0:prose-L262-L264 | PASS | blueprint-N/parts/p0-conventions.tex#prose@L261-L263 | Corrected SOURCE matches the convention/notation/pointer paragraph and its consumer mapping or exclusion. |
| p0:prose-L268-L269 | PASS | blueprint-N/parts/p0-conventions.tex#prose@L267-L268 | Corrected SOURCE matches the convention/notation/pointer paragraph and its consumer mapping or exclusion. |

## Complete deletion replacement

The replacement for the failing NODE block is **empty**. Remove exactly the full block below from `N-p02.nodes.md`; leave every other node and field verbatim. This repeats the still-unapplied first-delta deletion, not a replacement mathematical statement. There are no incoming edges left to remove.

The review applier supports replacement/insertion but does not physically delete nodes. The following exact deletion patch makes the required change explicit for the writer. Do not reinsert the NODE as a replacement or treat the applier count as evidence that it was deleted.

```diff
--- a/docs/graph/N/packets/N-p02.nodes.md
+++ b/docs/graph/N/packets/N-p02.nodes.md
@@ -465,35 +464,0 @@
-NODE: bpN:p0:totality
-KIND: claim
-TITLE: Lean totality
-STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L181-L200
-PROOF_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L181-L200
-CONTRACT_ID: bpN:p0:totality
-CONTRACT_VERSION: 1
-SOURCE_HYPOTHESES: the hypothesis packages of Definitions integrable (v), bm, qc, hess, and the clauses of bpN:p0:sol; real points z with h, f holomorphic on open sets containing them
-SOURCE_QUANTIFIERS: n; R, s; h; f (as in the cited definitions); U open
-SOURCE_CONCLUSION: (a) ω_h, D²h_ℝ are used only on 𝓑_s(R) (or U open) where h_ℝ is C³ (C²), so the Lean fderivs are the genuine derivatives; (b) D²h is used only on B(0,R)_s where h is C²; (c) in N-ZERO and N-HEAD-C differentiability of H_{h,f} on ℝⁿ × 𝓑_s(R) ⊇ ℝⁿ × B(0,R) is a proof obligation (holomorphy at real points, K:bp:p1:hamiltonian-real); (d) ε^{±1/(2n)} occurs only with ε > 0, 2n ≠ 0; (e) in N-QC Ψ(I',λ') = (h_ℝ(I'), λ'ω_h(I')) is differentiable at (I,λ) since h_ℝ ∈ C² on the open U ∋ I
-CONSTANT_SCOPE: none
-FROZEN_FILE: -
-FROZEN_DECL: -
-FROZEN_ANCHOR_ID: -
-FROZEN_ABI_SHA256: -
-DEPS: bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:bm#HasDerivativeBounds, bpN:p0:qc#IsStrictlyQuasiConvex, bpN:p0:hess#HasComplexHessianBound, bpN:p0:freq#frequencyMap, bpN:p0:orbit#integrableOrbit, bpN:p0:vf#hamiltonianVectorField, bpN:p0:sol#IsSolutionOn, bpN:p0:realH#realHamiltonian, K:bp:p1:hamiltonian-real
-ROUTES: -
-ROUTE_FOR: -
-EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L187-L187 | (v) of Definition integrable
-EDGE: bpN:p0:bm#HasDerivativeBounds | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L187-L187 | C³ clause of bm
-EDGE: bpN:p0:qc#IsStrictlyQuasiConvex | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L187-L187 | C² clause of qc
-EDGE: bpN:p0:hess#HasComplexHessianBound | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L191-L191 | complex C² on B(0,R)_s
-EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L185-L185 | frequencyMap total, default value off the differentiability locus
-EDGE: bpN:p0:orbit#integrableOrbit | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L185-L185 | integrableOrbit total
-EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L193-L193 | X_H used only inside IsSolutionOn
-EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L193-L193 | differentiability of H at visited points
-EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L193-L193 | H_{h,f} real-differentiable
-EDGE: K:bp:p1:hamiltonian-real | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L195-L195 | holomorphy at real points gives real differentiability of H_{h,f}
-TOPOLOGY_STATUS: PROPOSED
-EXTRACTOR: sonnet-extract-N-p02
-REVIEWER: -
-LEAN_STATUS: NOT_STARTED
-LEAN_REF: -
-LEAN_NOTE: -
-NOTE: remark kept as a claim: consumed by bpN:p2:qc-deriv (item (e)) and stepN:p2:zd-diff; items (a)-(e) are the guard facts. The pointer from Definition freq (L48) is not an edge (it would create a cycle freq -> totality -> qc -> freq)
```

The resulting database disposition is the following complete coverage block, preserved **verbatim**. It replaces the deleted claim as the representation of this administrative source unit; it is not a new or changed coverage finding.

```text
ITEM: bpN:p0:totality
KIND: claim
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L181-L200
DISPOSITION: EXCLUDED
REASON: Administrative Lean-totality note. Checked every occurrence in blueprint-N/parts: p0 frequency/p2 qc-deriv explain total derivatives; p2 zd-diff verifies the guards. Actual differentiability is proved in qd-first/qd-freq/qd-prod and zd-diff, so no root proof consumes this remark as a result. Delete its node and its two incoming edges.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

## Evidence, source questions and limits

Current `sha256sum -c docs/graph/N/CORPUS.sha256` and `sha256sum -c docs/graph/N/IMPORTS.sha256` both returned exit 0, with every listed file OK. This includes the repinned Part 0 and D28 Part 12. Current SPEC has six roots; D28 anchors belong to N-p12, outside this assignment. The earlier drift/remap warnings are closed for this snapshot. Stable inventory IDs containing old line numbers are not source locators and do not need renaming.

Raw source checked: all in-scope Part 0 L1–339; Part 2 L1–102; Part 1 L18–29, L46–64, L66–123, L147–171, L176–209 and L213–252; all proposed EDGE spans; root proof attachments at Part 10 L138–155 and Part 11c L159–169. Prerequisite package statements in Part 4 (domains/norms) and Part 9 (setting and frequency maximum) were checked. Imported K raw statements were checked at Part 1 L786–789 (decay), L824–831 (summation) and L1073–1079 (Hamiltonian fields), including the standing strip convention L37–39. The imports packet was context, not an assigned import-slice audit.

All 32 N-p02 frozen attachments match current manifest identity fields: file, export, anchor ID, contract ID/version and ABI hash. Frozen definition bodies and the four frozen theorem signatures were compared with the source fields. No theorem proof body, provider, implementation module or manifest state was inspected. No frozen-statement defect was found.

No new pinned-paper erratum or introduced mathematical deviation is asserted. Existing Part 1 source questions remain: the missing h-scope of constants(f)/(g), the standing perturbation datum in the literal subsection contracts, and the n=0 import-application attachment. They are exposed in SOURCE_GAP notes and are not promoted into proof closure. Part 1 L195 says "linearity ... of the operator norm": an operator norm is positively homogeneous, not linear. The positive 2pi scaling intended there is unchanged; this is the already reported wording defect. No paper PDF was audited in this review.

The norm-conversion forward alternatives remain routes, with their converse common to both. The parent mechanical route EDGE spans L205–209 contain the actual alternative at L206 and are valid. No generic writer fill "inherits the fixed data and quantifiers of the enclosing proof; no new binders" occurs in the proposed records. Inherited short quantifier fields were checked against their enclosing statements rather than rewritten for style.

No packet, SPEC, blueprint, frozen file, manifest or generated file is edited. Only this report is written. No state-changing git, Lean/build, source-lint or axiom query is run under the specific review brief; there are no new Lean modules/results for an axiom handoff. This is source-topology review, not proof closure.

Input packet SHA-256:

- `N-p02.nodes.md`: `98caf04918be2a011c320321209dda60e78d0e336cc8da209ec4321c6aed7c7d`.
- `N-p02.coverage.md`: `f11420ae1e203ce9cf10fe38bfa48d064480ceeb4a79fd9d28b3db88b2072622`.

Validation receipts:

- `python3 scripts/depgraph_apply_review.py docs/graph/N/packets N-p02 docs/graph/N/reviews/N-p02-delta2.md sol-delta2-N-a --dry-run`: `N-p02: 0 replaced, 0 added, 1 coverage items, 0 unresolved FAILs, 68 PASS nodes`. The applier associates the FAIL with the same-ID coverage block, so its "0 unresolved FAILs" does **not** mean the node was deleted. It ignores the deletion patch. The writer must perform the exact deletion explicitly. PASS counts include duplicate node IDs from coverage rows; the authoritative totals are 34 node PASS, 1 node FAIL, 70 coverage PASS.
- Exact proposed-node/proposed-coverage table inventories, unchanged input SHA-256 snapshots, locator bounds and report whitespace: PASS.
- Exact deletion patch and verbatim retained coverage: PASS. In-memory graph after that deletion: acyclic, zero dangling dependencies, all 41 surviving proposed nodes reachable from the six roots, counting DEPS and ROUTES. No graph files were written for this check.
- `git diff --check`: exit 0, no output; both new report files also pass direct trailing-whitespace checks.

READY delta2-N-a
