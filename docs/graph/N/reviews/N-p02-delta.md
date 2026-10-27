# N-p02 delta topology review

Reviewer: `sol-delta-N-a`. Marker: `delta-N-a`. Verdict: **FAIL**.

Reviewed all 50 nodes still marked TOPOLOGY_STATUS: PROPOSED and all 99 coverage items still marked COVERAGE_STATUS: PROPOSED. The prior reviewer was sol-review-N-a; this reviewer did not write that slice review. This report applies the delta convergence rule: accurate inherited wording and faithfully exposed SOURCE_GAP records pass. No Lean proof/status assessment is made.

Read DELTA-BRIEF.md in full, REVIEW-BRIEF.md, SPEC and its rulings, and the prior slice review. Checked raw Parts 0–2, the consumed K statement spans, the Part 4 domain/norm definitions, the Part 9 setting/formulas, and the root proof attachments in Parts 10 and 11c. All 32 in-scope frozen identity tuples (file, export, anchor ID and ABI hash) match the current manifest; only frozen definition bodies and theorem signatures were used, never theorem proof bodies or manifest state fields. The frozen theorem quantifier order, max norms, periods, and stopped [0,t] confinement agree with the source transcriptions.

## Snapshot and remap

After the orchestrator’s steering message, reloaded both N-p02 packets at commit a45a6d1. Current raw p0 still places actionnbhd at L36–41, head at L204–237 and partial at L319–335; the reloaded packet places them at L35–40, L203–236 and L318–334. Thus the latest remap has moved these already-correct locators one line early. The corrections below concern that post-remap state; they do not repeat an objection to an obsolete pre-remap locator. The totality NODE is handled as an unapplied deletion, not as a remap repair.

Packet SHA-256 snapshot:

- `docs/graph/N/packets/N-p02.nodes.md`: `3bdd3f6f36720092b10bca34c7e213bd7d5c78dafb48cbcc976d999e99355544`
- `docs/graph/N/packets/N-p02.coverage.md`: `73419afd023c2dc91350b87e38c1103701f47806a31bb3f41f1fb07bb693fd0b`

## Proposed nodes

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpN:p0:actionnbhd#actionNbhd | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:actionnbhd@L35-L40; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:freq#frequencyMap | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:freq@L42-L49; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:vf#hamiltonianVectorField | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:vf@L51-L57; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:realH#realHamiltonian | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:realH@L59-L64; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:strip#complexStrip | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:strip@L66-L70; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:ball#actionBall | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:ball@L74-L78; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:cdomain#complexDomain | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:cdomain@L80-L85; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:rdomain#realActionDomain | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain@L87-L91; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:rdomain-eq | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain-eq@L93-L97; blueprint-N/parts/p1-interfaces.tex#stepN:p1:rd-real@L59-L59 | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:realpart#realPart | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:realpart@L99-L103; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:integrable#IsAnalyticIntegrable | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:integrable@L105-L118; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:pert#IsAnalyticPerturbation | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:pert@L120-L132; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:bm#HasDerivativeBounds | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:bm@L134-L143; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:qc#IsStrictlyQuasiConvex | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:qc@L145-L152; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:hess#HasComplexHessianBound | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:hess@L154-L162; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:sol#IsSolutionOn | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:sol@L164-L171; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:orbit#integrableOrbit | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:orbit@L173-L178; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:totality | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L181-L200; blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L181-L200 | Delete node: the prior slice review explicitly excluded this administrative remark, its coverage is EXCLUDED, and no packet consumes it. The requested deletion remains unapplied. |
| bpN:p0:head | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L203-L236; blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L143-L155 | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:zero | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:zero@L238-L245; blueprint-N/parts/p2-qc-zero.tex#bpN:p2:zero@L87-L97 | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:qcthm | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:qcthm@L247-L256; blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-bij@L53-L61 | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:partial-sec#Phase | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L263-L263; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:partial-sec#fast | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L264-L265; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:partial-sec#slow | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L264-L265; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:partial-sec#fastShift | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L268-L268; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:partial-complexify#complexifyPhase | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-complexify@L270-L274; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:partial-core#innerCore | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-core@L276-L281; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:partial-domain#partialComplexDomain | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-domain@L283-L289; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:partial-definite#HasDefiniteFastPart | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-definite@L291-L298; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:partial-pert#IsPartialPerturbation | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-pert@L300-L310; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:partial-exponents#partialTimeExponent | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L312-L316; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:partial-exponents#partialDriftExponent | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L312-L316; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| bpN:p0:partial | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L318-L334; blueprint-N/parts/p11c-partial-stability.tex#bpN:p0:partial@L159-L169 | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. The IsPartialPerturbation premise and the stated type of z occur at current p0 L322, not L320; update those two EDGE use sites independently of the global remap. |
| bpN:p0:partial-sec#degenerateHamiltonian | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L323-L323; - | Post-remap p0 locators are one line before the current source; restore their actual use/statement spans. This finding is against the reloaded a45a6d1 packet, not the pre-remap packet. |
| stepN:p2:qk-pair | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qk-pair@L22-L22; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qk-pair@L22-L22 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p2:qk-scalar | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qk-scalar@L24-L24; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qk-scalar@L24-L24 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p2:qk-bij | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qk-bij@L26-L26; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qk-bij@L26-L26 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| bpN:p2:qc-deriv | FAIL | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-deriv@L33-L37; blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-deriv@L38-L46 | The two definition EDGE locators point to the lemma title at p2 L33. Their actual use in Ψ is L34. |
| stepN:p2:qd-sym | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qd-sym@L43-L43; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qd-sym@L43-L43 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p2:qd-prod | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qd-prod@L45-L45; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qd-prod@L45-L45 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p2:qb-deriv | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qb-deriv@L56-L56; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qb-deriv@L56-L56 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p2:qb-pos | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qb-pos@L58-L58; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qb-pos@L58-L58 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p2:qb-concl | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qb-concl@L60-L60; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qb-concl@L60-L60 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p2:zd-zero | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:zd-zero@L75-L75; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:zd-zero@L75-L75 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p2:zd-diff | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:zd-diff@L77-L77; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:zd-diff@L77-L77 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p2:zd-field | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:zd-field@L79-L79; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:zd-field@L79-L79 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| bpN:p2:zero | PASS | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:zero@L82-L86; blueprint-N/parts/p2-qc-zero.tex#bpN:p2:zero@L87-L97 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p2:z-H | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:z-H@L92-L92; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:z-H@L92-L92 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p2:z-curve | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:z-curve@L94-L94; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:z-curve@L94-L94 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p2:z-eq | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:z-eq@L96-L96; blueprint-N/parts/p2-qc-zero.tex#stepN:p2:z-eq@L96-L96 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |

## Proposed coverage records

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpN:p0:actionnbhd#actionNbhd | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:actionnbhd@L35-L40 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:freq#frequencyMap | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:freq@L42-L49 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:vf#hamiltonianVectorField | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:vf@L51-L57 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:realH#realHamiltonian | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:realH@L59-L64 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:strip#complexStrip | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:strip@L66-L70 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:ball#actionBall | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:ball@L74-L78 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:cdomain#complexDomain | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:cdomain@L80-L85 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:rdomain#realActionDomain | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain@L87-L91 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:rdomain-eq | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain-eq@L93-L97 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:realpart#realPart | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:realpart@L99-L103 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:integrable#IsAnalyticIntegrable | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:integrable@L105-L118 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:pert#IsAnalyticPerturbation | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:pert@L120-L132 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:bm#HasDerivativeBounds | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:bm@L134-L143 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:qc#IsStrictlyQuasiConvex | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:qc@L145-L152 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:hess#HasComplexHessianBound | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:hess@L154-L162 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:sol#IsSolutionOn | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:sol@L164-L171 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:orbit#integrableOrbit | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:orbit@L173-L178 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:totality | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:totality@L180-L199 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:head | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L203-L236 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:zero | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:zero@L238-L245 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:qcthm | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:qcthm@L247-L256 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial-sec#Phase | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L263-L263 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial-sec#fast | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L264-L265 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial-sec#slow | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L264-L265 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial-sec#fastShift | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L268-L268 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial-complexify#complexifyPhase | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-complexify@L270-L274 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial-core#innerCore | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-core@L276-L281 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial-domain#partialComplexDomain | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-domain@L283-L289 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial-definite#HasDefiniteFastPart | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-definite@L291-L298 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial-pert#IsPartialPerturbation | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-pert@L300-L310 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial-exponents#partialTimeExponent | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L312-L316 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial-exponents#partialDriftExponent | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L312-L316 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L318-L334 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial-sec#degenerateHamiltonian | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L323-L323 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| bpN:p0:partial-totality | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-totality@L336-L338 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| heading:bpN:p0 | PASS | blueprint-N/parts/p0-conventions.tex#bpN:p0@L1-L1 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| heading:bpN:p0:conventions | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:conventions@L9-L9 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| heading:bpN:p0:kdefs | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:kdefs@L33-L33 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| heading:bpN:p0:defs | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:defs@L72-L72 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| heading:bpN:p0:theorems | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:theorems@L201-L201 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| heading:bpN:p0:partial-sec | FAIL | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L258-L258 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:sourcegap-L234 | FAIL | blueprint-N/parts/p0-conventions.tex#sourcegap@L232-L232 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:sourcegap-L335 | FAIL | blueprint-N/parts/p0-conventions.tex#sourcegap@L333-L333 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L41 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L39-L39 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L50 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L48-L48 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L58 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L56-L56 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L65 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L63-L63 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L79 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L77-L77 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L86 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L84-L84 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L92 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L90-L90 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L104 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L102-L102 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L119 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L117-L117 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L133 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L131-L131 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L144 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L142-L142 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L153 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L151-L151 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L162 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L160-L160 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L172 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L170-L170 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L179 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L177-L177 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L232 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L230-L230 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L246 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L244-L244 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L257 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L255-L255 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L275 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L273-L273 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L282 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L280-L280 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L290 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L288-L288 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L299 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L297-L297 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L311 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L309-L309 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L317 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L315-L315 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:source-L334 | FAIL | blueprint-N/parts/p0-conventions.tex#source@L332-L332 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:prose-L3-L9 | PASS | blueprint-N/parts/p0-conventions.tex#prose@L3-L8 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p0:prose-L13-L33 | FAIL | blueprint-N/parts/p0-conventions.tex#prose@L11-L31 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:prose-L262-L264 | FAIL | blueprint-N/parts/p0-conventions.tex#prose@L260-L262 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| p0:prose-L268-L269 | FAIL | blueprint-N/parts/p0-conventions.tex#prose@L266-L267 | Post-remap p0 SOURCE is one line early in the current file; the disposition itself remains valid. |
| stepN:p2:qk-pair | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qk-pair@L22-L22 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p2:qk-scalar | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qk-scalar@L24-L24 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p2:qk-bij | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qk-bij@L26-L26 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| bpN:p2:qc-deriv | PASS | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-deriv@L33-L37 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p2:qd-sym | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qd-sym@L43-L43 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p2:qd-prod | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qd-prod@L45-L45 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p2:qb-deriv | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qb-deriv@L56-L56 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p2:qb-pos | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qb-pos@L58-L58 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p2:qb-concl | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:qb-concl@L60-L60 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| bpN:p2:qc-reuse | PASS | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-reuse@L63-L65 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p2:zd-zero | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:zd-zero@L75-L75 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p2:zd-diff | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:zd-diff@L77-L77 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p2:zd-field | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:zd-field@L79-L79 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| bpN:p2:zero | PASS | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:zero@L82-L86 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p2:z-H | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:z-H@L92-L92 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p2:z-curve | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:z-curve@L94-L94 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p2:z-eq | PASS | blueprint-N/parts/p2-qc-zero.tex#stepN:p2:z-eq@L96-L96 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| bpN:p2:zero-scope | PASS | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:zero-scope@L99-L101 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| heading:bpN:p2 | PASS | blueprint-N/parts/p2-qc-zero.tex#bpN:p2@L1-L1 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| heading:bpN:p2:s-qc | PASS | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:s-qc@L9-L9 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| heading:bpN:p2:s-zero | PASS | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:s-zero@L67-L67 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p2:source-L17 | PASS | blueprint-N/parts/p2-qc-zero.tex#source@L17-L17 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p2:source-L36 | PASS | blueprint-N/parts/p2-qc-zero.tex#source@L36-L36 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p2:source-L51 | PASS | blueprint-N/parts/p2-qc-zero.tex#source@L51-L51 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p2:source-L72 | PASS | blueprint-N/parts/p2-qc-zero.tex#source@L72-L72 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p2:source-L85 | PASS | blueprint-N/parts/p2-qc-zero.tex#source@L85-L85 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p2:prose-L4-L7 | PASS | blueprint-N/parts/p2-qc-zero.tex#prose@L4-L7 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |

Every PROPOSED coverage item has its own row above. All other coverage items PASS within the existing slice review; this delta report does not reopen already REVIEWED records.

## Replacement blocks

Each complete record preserves all non-failing fields verbatim. Only locator fields/EDGE lines, genuinely missing edges, or NOTE fields exposing unmet application premises change. These proposed records need an independent delta review.

```text
NODE: bpN:p0:actionnbhd#actionNbhd
KIND: definition
TITLE: Complex action neighbourhood: KAM.actionNbhd
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:actionnbhd@L36-L41
PROOF_SOURCE: -
CONTRACT_ID: kam.actionNbhd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: B ⊂ ℝⁿ, r ∈ ℝ; max norm on ℂⁿ, J viewed in ℂⁿ componentwise)
SOURCE_QUANTIFIERS: n; B ⊂ ℝⁿ; r ∈ ℝ
SOURCE_CONCLUSION: defines B_r = {I ∈ ℂⁿ : ∃ J ∈ B, ¦I−J¦ < r}; B_r = ∅ for r ≤ 0, and B_r is open for B open
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/ActionNbhd.lean
FROZEN_DECL: KAM.actionNbhd
FROZEN_ANCHOR_ID: kam.actionNbhd.v1
FROZEN_ABI_SHA256: b05e2aeddf393c0b232bd809f64d9d8040e0fdf54248c4f880ab1ad98c040f21
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:freq#frequencyMap
KIND: definition
TITLE: Frequency map: KAM.frequencyMap
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:freq@L43-L50
PROOF_SOURCE: -
CONTRACT_ID: kam.frequencyMap
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: h : ℂⁿ → ℂ, I ∈ ℝⁿ)
SOURCE_QUANTIFIERS: n; h : ℂⁿ → ℂ; I ∈ ℝⁿ
SOURCE_CONCLUSION: defines ω_h(I) = ∇h(I) ∈ ℝⁿ with ω_h(I)_i = D(J ↦ Re h(J))(I)[e_i] (real partials of Re h on ℝⁿ); equals 0 where Re h¦ℝⁿ is not differentiable at I (Lean totality)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/FrequencyMap.lean
FROZEN_DECL: KAM.frequencyMap
FROZEN_ANCHOR_ID: kam.frequencyMap.v1
FROZEN_ABI_SHA256: c9326077b299282bff92fdb8a3a849f512167fd4dc8e859bb0fdf1662f525cc5
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:vf#hamiltonianVectorField
KIND: definition
TITLE: Hamiltonian vector field: KAM.hamiltonianVectorField
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:vf@L52-L58
PROOF_SOURCE: -
CONTRACT_ID: kam.hamiltonianVectorField
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: H : ℝⁿ × ℝⁿ → ℝ, z = (θ,I))
SOURCE_QUANTIFIERS: n; H : ℝⁿ × ℝⁿ → ℝ; z = (θ,I)
SOURCE_CONCLUSION: defines X_H(z) = ((∂_{I_i}H(z))_i, (−∂_{θ_i}H(z))_i) with ∂_{I_i}H(z) = DH(z)[(0,e_i)], ∂_{θ_i}H(z) = DH(z)[(e_i,0)] (Fréchet derivatives; 0 where H is not differentiable at z)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/HamiltonianVectorField.lean
FROZEN_DECL: KAM.hamiltonianVectorField
FROZEN_ANCHOR_ID: kam.hamiltonianVectorField.v1
FROZEN_ABI_SHA256: 427a145572df4c3e14079cf88feb16d60e1cd92fcd1770faddd36ad706562ca6
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:realH#realHamiltonian
KIND: definition
TITLE: Real Hamiltonian: KAM.realHamiltonian
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:realH@L60-L65
PROOF_SOURCE: -
CONTRACT_ID: kam.realHamiltonian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: h : ℂⁿ → ℂ, f : ℂⁿ × ℂⁿ → ℂ, real z = (θ,I) viewed in ℂⁿ)
SOURCE_QUANTIFIERS: n; h; f; z = (θ,I) real
SOURCE_CONCLUSION: defines H_{h,f}(z) = Re(h(I) + f(θ,I)), θ and I viewed in ℂⁿ
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/RealHamiltonian.lean
FROZEN_DECL: KAM.realHamiltonian
FROZEN_ANCHOR_ID: kam.realHamiltonian.v1
FROZEN_ABI_SHA256: ea510392f643a3fce65df6d4bc826d902d7b2277f67b0c009e3522d5659a0fab
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:strip#complexStrip
KIND: definition
TITLE: Strip and neighbourhood notation: KAM.complexStrip
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:strip@L67-L71
PROOF_SOURCE: -
CONTRACT_ID: kam.complexStrip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: n, s)
SOURCE_QUANTIFIERS: n; s ∈ ℝ
SOURCE_CONCLUSION: defines complexStrip n s = T_s = {θ ∈ ℂⁿ : ¦Im θ_i¦ < s ∀ i}; for n > 0 it is empty when s ≤ 0; for n = 0 it is the one-point space ℂ⁰ for every s
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/ComplexStrip.lean
FROZEN_DECL: KAM.complexStrip
FROZEN_ANCHOR_ID: kam.complexStrip.v1
FROZEN_ABI_SHA256: 91cedb11be4f33139d30fcc5103f7ed5370fa5d89a68f9a3aaf0b061ae2920e7
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Part 0 transcribes it in Remark bpN:p0:strip (carries the \frozen tag) and in Convention (last item); frozen anchor of track K
```

```text
NODE: bpN:p0:ball#actionBall
KIND: definition
TITLE: Action ball: KAM.Nekhoroshev.actionBall
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:ball@L75-L79
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.actionBall
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: n, R ∈ ℝ)
SOURCE_QUANTIFIERS: n; R ∈ ℝ
SOURCE_CONCLUSION: defines B(0,R) = actionBall n R = {I ∈ ℝⁿ : ¦I¦ < R}, the open max-norm ball
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/ActionBall.lean
FROZEN_DECL: KAM.Nekhoroshev.actionBall
FROZEN_ANCHOR_ID: nekhoroshev.actionBall.v1
FROZEN_ABI_SHA256: 16237abbe0ec8f04d3d825c58c3031351b30e576407f05f897e58a1f07e4db7d
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:cdomain#complexDomain
KIND: definition
TITLE: Complex domain: KAM.Nekhoroshev.complexDomain
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:cdomain@L81-L86
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.complexDomain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: n, R, s ∈ ℝ)
SOURCE_QUANTIFIERS: n; R, s ∈ ℝ
SOURCE_CONCLUSION: defines D_s(R) = complexDomain n R s = T_s × B(0,R)_s ⊂ ℂⁿ × ℂⁿ; open; single width s for angles and actions
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/ComplexDomain.lean
FROZEN_DECL: KAM.Nekhoroshev.complexDomain
FROZEN_ANCHOR_ID: nekhoroshev.complexDomain.v1
FROZEN_ABI_SHA256: 2d6523825e53ad0ef3fe09d18cce966074fd80bb6416bfe28450af7a251227e2
DEPS: bpN:p0:strip#complexStrip, bpN:p0:actionnbhd#actionNbhd, bpN:p0:ball#actionBall
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:strip#complexStrip | blueprint-N/parts/p0-conventions.tex#bpN:p0:cdomain@L82-L82 | T_s factor: the complex strip
EDGE: bpN:p0:actionnbhd#actionNbhd | blueprint-N/parts/p0-conventions.tex#bpN:p0:cdomain@L82-L82 | B(0,R)_s factor: the complex action neighbourhood
EDGE: bpN:p0:ball#actionBall | blueprint-N/parts/p0-conventions.tex#bpN:p0:cdomain@L82-L82 | B(0,R) inside B(0,R)_s
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:rdomain#realActionDomain
KIND: definition
TITLE: Real action domain: KAM.Nekhoroshev.realActionDomain
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain@L88-L92
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.realActionDomain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: n, R, s ∈ ℝ)
SOURCE_QUANTIFIERS: n; R, s ∈ ℝ
SOURCE_CONCLUSION: defines 𝓑_s(R) = realActionDomain n R s = {I ∈ ℝⁿ : I ∈ B(0,R)_s}
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/RealActionDomain.lean
FROZEN_DECL: KAM.Nekhoroshev.realActionDomain
FROZEN_ANCHOR_ID: nekhoroshev.realActionDomain.v1
FROZEN_ABI_SHA256: 2116729de4cde3f9801c8f12e3e93df12a1a87d115776b30419f083b004ea60f
DEPS: bpN:p0:actionnbhd#actionNbhd, bpN:p0:ball#actionBall
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:actionnbhd#actionNbhd | blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain@L89-L89 | B(0,R)_s is the complex action neighbourhood
EDGE: bpN:p0:ball#actionBall | blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain@L89-L89 | B(0,R) is the action ball
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:rdomain-eq
KIND: claim
TITLE: Computing $\mathcal B_s(R)$
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain-eq@L94-L98
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:rd-real@L59-L59
CONTRACT_ID: bpN:p0:rdomain-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: R, s > 0
SOURCE_QUANTIFIERS: R, s > 0
SOURCE_CONCLUSION: 𝓑_s(R) = {I ∈ ℝⁿ : ∃ J, ¦J¦ < R, ¦I−J¦ < s} = B(0,R+s); hence B(0,R) ⊂ 𝓑_s(R) and 𝓑_s(R) is open
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:rdomain#realActionDomain, bpN:p0:actionnbhd#actionNbhd, bpN:p0:ball#actionBall, stepN:p1:rd-real
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:rdomain#realActionDomain | blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain-eq@L95-L95 | the set 𝓑_s(R) is computed
EDGE: bpN:p0:actionnbhd#actionNbhd | blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain-eq@L95-L95 | unfolds B(0,R)_s via ¦I−J¦ < s
EDGE: bpN:p0:ball#actionBall | blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain-eq@L95-L95 | J ranges over B(0,R)
EDGE: stepN:p1:rd-real | blueprint-N/parts/p1-interfaces.tex#stepN:p1:rd-real@L59-L59 | actual proof of the asserted tube identity
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Claim used by Part 3 §s-N. Part 1 rd-real independently supplies the tube identity; no reverse edge from realdomain to this remark.
```

```text
NODE: bpN:p0:realpart#realPart
KIND: definition
TITLE: Real part of the integrable part: KAM.Nekhoroshev.realPart
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:realpart@L100-L104
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.realPart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: h : ℂⁿ → ℂ, I ∈ ℝⁿ)
SOURCE_QUANTIFIERS: n; h : ℂⁿ → ℂ; I ∈ ℝⁿ
SOURCE_CONCLUSION: defines h_ℝ(I) = Re h(I) = realPart h (I)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/RealPart.lean
FROZEN_DECL: KAM.Nekhoroshev.realPart
FROZEN_ANCHOR_ID: nekhoroshev.realPart.v1
FROZEN_ABI_SHA256: 9afe9bdc91867dcdad0499d6a762bf9e9335e235245fac9a9e62d0383c31f0d3
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:integrable#IsAnalyticIntegrable
KIND: definition
TITLE: Analytic integrable part, $h\in A_s(D)$: KAM.Nekhoroshev.IsAnalyticIntegrable
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:integrable@L106-L119
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.IsAnalyticIntegrable
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h : ℂⁿ → ℂ; R, s ∈ ℝ
SOURCE_QUANTIFIERS: n; R, s; h
SOURCE_CONCLUSION: IsAnalyticIntegrable R s h holds iff (i) h complex differentiable on B(0,R)_s; (ii) h continuous on the closure of B(0,R)_s in ℂⁿ; (iii) ∃ A ≥ 0 with ¦h(I)¦ ≤ A on B(0,R)_s; (iv) Im h(I) = 0 for all I ∈ 𝓑_s(R); (v) h_ℝ is C³ on 𝓑_s(R) (real Fréchet sense). No numerical bound on h is fixed
CONSTANT_SCOPE: A is existentially quantified inside clause (iii); this definition fixes no numerical bound on h. Independence of the headline constants from A is a separate theorem-level requirement.
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/IsAnalyticIntegrable.lean
FROZEN_DECL: KAM.Nekhoroshev.IsAnalyticIntegrable
FROZEN_ANCHOR_ID: nekhoroshev.IsAnalyticIntegrable.v1
FROZEN_ABI_SHA256: e55e6e109ac5ccf631158ade80456c54e4ac46235ab21af64092f79b2625e437
DEPS: bpN:p0:actionnbhd#actionNbhd, bpN:p0:ball#actionBall, bpN:p0:rdomain#realActionDomain, bpN:p0:realpart#realPart
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:actionnbhd#actionNbhd | blueprint-N/parts/p0-conventions.tex#bpN:p0:integrable@L109-L109 | B(0,R)_s in clauses (i)-(iii)
EDGE: bpN:p0:ball#actionBall | blueprint-N/parts/p0-conventions.tex#bpN:p0:integrable@L109-L109 | B(0,R) in B(0,R)_s
EDGE: bpN:p0:rdomain#realActionDomain | blueprint-N/parts/p0-conventions.tex#bpN:p0:integrable@L112-L112 | 𝓑_s(R) in clauses (iv)-(v)
EDGE: bpN:p0:realpart#realPart | blueprint-N/parts/p0-conventions.tex#bpN:p0:integrable@L113-L113 | h_ℝ in clause (v)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:pert#IsAnalyticPerturbation
KIND: definition
TITLE: Analytic perturbation of size $\varepsilon$: KAM.Nekhoroshev.IsAnalyticPerturbation
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:pert@L121-L133
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.IsAnalyticPerturbation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f : ℂⁿ × ℂⁿ → ℂ; R, s, ε ∈ ℝ
SOURCE_QUANTIFIERS: n; R, s, ε; f
SOURCE_CONCLUSION: IsAnalyticPerturbation R s ε f holds iff ε ≥ 0 and (i) f complex differentiable on D_s(R) and continuous on its closure; (ii) f(θ+k,I) = f(θ,I) for (θ,I) ∈ D_s(R), k ∈ ℤⁿ; (iii) Im f(θ,I) = 0 for θ ∈ ℝⁿ, I ∈ 𝓑_s(R); (iv) ¦f(z)¦ ≤ ε on D_s(R). (Size is ≤ ε, not the source strict bound.) For ε = 0 it forces f = 0 on D_s(R)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/IsAnalyticPerturbation.lean
FROZEN_DECL: KAM.Nekhoroshev.IsAnalyticPerturbation
FROZEN_ANCHOR_ID: nekhoroshev.IsAnalyticPerturbation.v1
FROZEN_ABI_SHA256: 46a4e6d7674e6079e6e46ab247bd6bff898255962e85dbcf2b716dce8b8d23b1
DEPS: bpN:p0:cdomain#complexDomain, bpN:p0:rdomain#realActionDomain
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:cdomain#complexDomain | blueprint-N/parts/p0-conventions.tex#bpN:p0:pert@L124-L124 | D_s(R) in clauses (i),(ii),(iv)
EDGE: bpN:p0:rdomain#realActionDomain | blueprint-N/parts/p0-conventions.tex#bpN:p0:pert@L126-L126 | 𝓑_s(R) in clause (iii)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:bm#HasDerivativeBounds
KIND: definition
TITLE: Derivative bounds $B(M)$: KAM.Nekhoroshev.HasDerivativeBounds
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:bm@L135-L144
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.HasDerivativeBounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U ⊂ ℝⁿ; h : ℂⁿ → ℂ; M ∈ ℝ
SOURCE_QUANTIFIERS: n; U; h; M
SOURCE_CONCLUSION: HasDerivativeBounds U h M holds iff M > 0, U open, h_ℝ ∈ C³(U), and ¦D^k h_ℝ(I)[e_{i_1},…,e_{i_k}]¦ ≤ M for all I ∈ U, k ∈ {1,2,3}, (i_1..i_k) ∈ {1..n}^k (coordinate partials, not operator norms)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/HasDerivativeBounds.lean
FROZEN_DECL: KAM.Nekhoroshev.HasDerivativeBounds
FROZEN_ANCHOR_ID: nekhoroshev.HasDerivativeBounds.v1
FROZEN_ABI_SHA256: 70f1d102dd39f11e238237942b3cc6d33fbaf967c0db47d0171763f4d7589ee6
DEPS: bpN:p0:realpart#realPart
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:realpart#realPart | blueprint-N/parts/p0-conventions.tex#bpN:p0:bm@L137-L137 | h_ℝ in the C³ clause and the bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the remark that symmetry (K:bp:p1:ext-schwarz) identifies ordered partials with multi-index partials (L141) is a comparison, not used by the definition: no edge
```

```text
NODE: bpN:p0:qc#IsStrictlyQuasiConvex
KIND: definition
TITLE: Strict quasi-convexity $QC(m)$: KAM.Nekhoroshev.IsStrictlyQuasiConvex
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:qc@L146-L153
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.IsStrictlyQuasiConvex
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U ⊂ ℝⁿ; h : ℂⁿ → ℂ; m ∈ ℝ
SOURCE_QUANTIFIERS: n; U; h; m
SOURCE_CONCLUSION: IsStrictlyQuasiConvex U h m holds iff m > 0, U open, h_ℝ ∈ C²(U), and for every I ∈ U: ω_h(I) ≠ 0 and (Σ_i ω_h(I)_i v_i = 0 ⟹ m¦v¦² ≤ D²h_ℝ(I)[v,v]) for v ∈ ℝⁿ (max norm on the left, Euclidean dot product in the hypothesis)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/IsStrictlyQuasiConvex.lean
FROZEN_DECL: KAM.Nekhoroshev.IsStrictlyQuasiConvex
FROZEN_ANCHOR_ID: nekhoroshev.IsStrictlyQuasiConvex.v1
FROZEN_ABI_SHA256: 0eecfbf6aa71f29c1dd00b30b174f4743e15844ae5b2a89549da44ad0fbab3c2
DEPS: bpN:p0:realpart#realPart, bpN:p0:freq#frequencyMap
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:realpart#realPart | blueprint-N/parts/p0-conventions.tex#bpN:p0:qc@L148-L148 | h_ℝ ∈ C² and D²h_ℝ
EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p0-conventions.tex#bpN:p0:qc@L148-L148 | ω_h(I)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:hess#HasComplexHessianBound
KIND: definition
TITLE: Complex Hessian bound: KAM.Nekhoroshev.HasComplexHessianBound
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:hess@L155-L163
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.HasComplexHessianBound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: R, s ∈ ℝ; h : ℂⁿ → ℂ; M_ℂ ∈ ℝ
SOURCE_QUANTIFIERS: n; R, s; h; M_ℂ
SOURCE_CONCLUSION: HasComplexHessianBound R s h M_ℂ holds iff M_ℂ > 0, h is complex C² on B(0,R)_s and ¦¦D²h(z)¦¦ ≤ M_ℂ for all z ∈ B(0,R)_s (operator norm of D(Dh)(z) for the max norm)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/HasComplexHessianBound.lean
FROZEN_DECL: KAM.Nekhoroshev.HasComplexHessianBound
FROZEN_ANCHOR_ID: nekhoroshev.HasComplexHessianBound.v1
FROZEN_ABI_SHA256: e9de4bdac0664d3fa85ef2d0ec7b83841e46203d10145154c4cb7eeab0022bee
DEPS: bpN:p0:actionnbhd#actionNbhd, bpN:p0:ball#actionBall
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:actionnbhd#actionNbhd | blueprint-N/parts/p0-conventions.tex#bpN:p0:hess@L156-L156 | B(0,R)_s
EDGE: bpN:p0:ball#actionBall | blueprint-N/parts/p0-conventions.tex#bpN:p0:hess@L156-L156 | B(0,R)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:sol#IsSolutionOn
KIND: definition
TITLE: Solutions on a time set: KAM.Nekhoroshev.IsSolutionOn
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:sol@L165-L172
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.IsSolutionOn
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H : ℝⁿ × ℝⁿ → ℝ; U ⊂ ℝⁿ; J ⊂ ℝ; z : ℝ → ℝⁿ × ℝⁿ
SOURCE_QUANTIFIERS: n; H; U; J; z
SOURCE_CONCLUSION: IsSolutionOn H U J z holds iff for every t ∈ J: z(t)_2 ∈ U, H is differentiable at z(t), and z is (two-sided) differentiable at t with z'(t) = X_H(z(t))
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/IsSolutionOn.lean
FROZEN_DECL: KAM.Nekhoroshev.IsSolutionOn
FROZEN_ANCHOR_ID: nekhoroshev.IsSolutionOn.v1
FROZEN_ABI_SHA256: 83307c5a783005dd77d4d859f794ae9722467d6560eb097d27cb95f23b551b59
DEPS: bpN:p0:vf#hamiltonianVectorField
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p0-conventions.tex#bpN:p0:sol@L169-L169 | z'(t) = X_H(z(t))
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:orbit#integrableOrbit
KIND: definition
TITLE: The integrable orbit: KAM.Nekhoroshev.integrableOrbit
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:orbit@L174-L179
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.integrableOrbit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h : ℂⁿ → ℂ; θ₀, I₀ ∈ ℝⁿ; t ∈ ℝ
SOURCE_QUANTIFIERS: n; h; θ₀, I₀; t
SOURCE_CONCLUSION: defines γ_{θ₀,I₀}(t) = (θ₀ + t ω_h(I₀), I₀)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/IntegrableOrbit.lean
FROZEN_DECL: KAM.Nekhoroshev.integrableOrbit
FROZEN_ANCHOR_ID: nekhoroshev.integrableOrbit.v1
FROZEN_ABI_SHA256: a0e2e089b0e9f0e05277a2c3481b8063ee4d0d17bd2dcaa9dddd4b60daf4ae68
DEPS: bpN:p0:freq#frequencyMap
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p0-conventions.tex#bpN:p0:orbit@L176-L176 | ω_h(I₀)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:head
KIND: theorem
TITLE: N-HEAD-C: exponential stability, complex Hessian bound
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L204-L237
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L143-L155
CONTRACT_ID: nekhoroshev.quasiConvex_nekhoroshev_complexBound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a Lean frozen statement; n ≥ 3, R, s, M, m, M_ℂ, ω_min > 0 (outer); for h, f, ε: (H1) IsAnalyticIntegrable R s h; (H2) HasComplexHessianBound R s h M_ℂ; (H3) ω_min ≤ ¦ω_h(I)¦ for every I ∈ B(0,R) (max norm); (H4) IsStrictlyQuasiConvex 𝓑_s(R) h m; (H5) HasDerivativeBounds 𝓑_s(R) h M; (H6) IsAnalyticPerturbation R s ε f; (H7) 0 < ε ≤ ε₀; θ₀ ∈ ℝⁿ, I₀ ∈ B(0,R/2); τ := T exp(c ε^{−1/(2n)}), H = H_{h,f}
SOURCE_QUANTIFIERS: n ≥ 3; R, s, M, m, M_ℂ, ω_min > 0; then ∃ C, T, c, ε₀ > 0 with C ε₀^{1/(2n)} ≤ R/4; then ∀ h : ℂⁿ → ℂ, f : ℂⁿ × ℂⁿ → ℂ, ε ∈ ℝ (with H1–H7); then ∀ θ₀ ∈ ℝⁿ, I₀ ∈ B(0,R/2); then ∃ z : ℝ → ℝⁿ × ℝⁿ
SOURCE_CONCLUSION: (a) z(0) = (θ₀,I₀); (b) IsSolutionOn H B(0,R) [−τ,τ] z; (c) ¦z(t)_2 − I₀¦ ≤ C ε^{1/(2n)} for all ¦t¦ ≤ τ; (d) uniqueness: for every L ∈ [0,τ] and y with y(0) = (θ₀,I₀) and IsSolutionOn H B(0,R) [−L,L] y: y(t) = z(t) for t ∈ [−L,L]
CONSTANT_SCOPE: C, T, c, ε₀ depend only on (n, R, s, M, m, M_ℂ, ω_min), chosen before h, f, ε, θ₀, I₀; no dependence on the bound A of IsAnalyticIntegrable(iii); z may depend on all data
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Theorems/QuasiConvexNekhoroshevComplexBound.lean
FROZEN_DECL: KAM.Nekhoroshev.quasiConvex_nekhoroshev_complexBound
FROZEN_ANCHOR_ID: nekhoroshev.quasiConvex_nekhoroshev_complexBound.v1
FROZEN_ABI_SHA256: 84213dab8a417152e6978dcf693b1a826e7d5f1ee5e626c03a99581c6c439091
DEPS: bpN:p0:ball#actionBall, bpN:p0:rdomain#realActionDomain, bpN:p0:freq#frequencyMap, bpN:p0:realH#realHamiltonian, bpN:p0:sol#IsSolutionOn, bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:hess#HasComplexHessianBound, bpN:p0:qc#IsStrictlyQuasiConvex, bpN:p0:bm#HasDerivativeBounds, bpN:p0:pert#IsAnalyticPerturbation, bpN:p10:head
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:ball#actionBall | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L211-L211 | B(0,R) in (H3) and B(0,R/2), B(0,R) in (b),(d)
EDGE: bpN:p0:rdomain#realActionDomain | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L212-L212 | 𝓑_s(R) in (H4)-(H5)
EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L211-L211 | ω_h(I) in (H3)
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L218-L218 | H = H_{h,f}
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L221-L221 | IsSolutionOn in (b),(d)
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L209-L209 | (H1)
EDGE: bpN:p0:hess#HasComplexHessianBound | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L210-L210 | (H2)
EDGE: bpN:p0:qc#IsStrictlyQuasiConvex | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L212-L212 | (H4)
EDGE: bpN:p0:bm#HasDerivativeBounds | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L213-L213 | (H5)
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L214-L214 | (H6)
EDGE: bpN:p10:head | blueprint-N/parts/p10-assembly.tex#bpN:p0:head@L138-L138 | this result carries the \frozen tag: proof of the anchor
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: frozen root; proof is Part 10 (bpN:p10:head, steps stepN:p10:hd-*). The reference to Remark rdomain-eq (L230) explains the set in (H4)-(H5), it is not consumed by the statement: no edge. sourcegap L234 is filled by Part 10
```

```text
NODE: bpN:p0:zero
KIND: theorem
TITLE: N-ZERO: exact integrable dynamics
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:zero@L239-L246
PROOF_SOURCE: blueprint-N/parts/p2-qc-zero.tex#bpN:p2:zero@L87-L97
CONTRACT_ID: nekhoroshev.zero_perturbation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ∈ ℕ; R, s > 0; h with IsAnalyticIntegrable R s h; f with IsAnalyticPerturbation R s 0 f; θ₀ ∈ ℝⁿ; I₀ ∈ B(0,R/2); γ = γ_{θ₀,I₀}
SOURCE_QUANTIFIERS: n; R, s; h, f; θ₀, I₀
SOURCE_CONCLUSION: γ(0) = (θ₀,I₀); IsSolutionOn H_{h,f} B(0,R) ℝ γ; γ(t)_2 = I₀ for all t ∈ ℝ
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Theorems/ZeroPerturbation.lean
FROZEN_DECL: KAM.Nekhoroshev.zero_perturbation
FROZEN_ANCHOR_ID: nekhoroshev.zero_perturbation.v1
FROZEN_ABI_SHA256: 882b36b751430682e0b8147660bb5190a3e2b297ab75e58cfc0a91bed63637e5
DEPS: bpN:p0:orbit#integrableOrbit, bpN:p0:sol#IsSolutionOn, bpN:p0:realH#realHamiltonian, bpN:p0:ball#actionBall, bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:pert#IsAnalyticPerturbation, bpN:p2:zero
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:orbit#integrableOrbit | blueprint-N/parts/p0-conventions.tex#bpN:p0:zero@L242-L242 | γ = integrableOrbit
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p0-conventions.tex#bpN:p0:zero@L243-L243 | IsSolutionOn on J = ℝ
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p0-conventions.tex#bpN:p0:zero@L243-L243 | H_{h,f}
EDGE: bpN:p0:ball#actionBall | blueprint-N/parts/p0-conventions.tex#bpN:p0:zero@L241-L241 | B(0,R/2), B(0,R)
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p0-conventions.tex#bpN:p0:zero@L240-L240 | hypothesis on h
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p0-conventions.tex#bpN:p0:zero@L241-L241 | hypothesis on f with ε = 0
EDGE: bpN:p2:zero | blueprint-N/parts/p2-qc-zero.tex#bpN:p0:zero@L82-L82 | this result carries the \frozen tag: proof of the anchor
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: frozen root; proof is Part 2 (bpN:p2:zero)
```

```text
NODE: bpN:p0:qcthm
KIND: theorem
TITLE: N-QC: nonsingular isoenergetic derivative
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:qcthm@L248-L257
PROOF_SOURCE: blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-bij@L53-L61
CONTRACT_ID: nekhoroshev.quasiConvex_isoenergetic_derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ∈ ℕ; U ⊂ ℝⁿ; h : ℂⁿ → ℂ; m ∈ ℝ with IsStrictlyQuasiConvex U h m; I ∈ U; λ > 0
SOURCE_QUANTIFIERS: n; U; h; m; I ∈ U; λ > 0
SOURCE_CONCLUSION: the derivative at (I,λ) of Ψ(I',λ') = (h_ℝ(I'), λ' ω_h(I')) is a bijective linear map ℝⁿ × ℝ → ℝ × ℝⁿ; explicitly DΨ(I,λ)[v,u] = (ω_h(I)·v, u ω_h(I) + λ D²h_ℝ(I) v). No uniform radius asserted
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Theorems/QuasiConvexIsoenergeticDerivative.lean
FROZEN_DECL: KAM.Nekhoroshev.quasiConvex_isoenergetic_derivative
FROZEN_ANCHOR_ID: nekhoroshev.quasiConvex_isoenergetic_derivative.v1
FROZEN_ABI_SHA256: 89dc295a0bcb7229fb9769fbbea5db19485226123ece025096253a82835f0534
DEPS: bpN:p0:qc#IsStrictlyQuasiConvex, bpN:p0:realpart#realPart, bpN:p0:freq#frequencyMap, bpN:p2:qc-bij
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:qc#IsStrictlyQuasiConvex | blueprint-N/parts/p0-conventions.tex#bpN:p0:qcthm@L249-L249 | hypothesis IsStrictlyQuasiConvex U h m
EDGE: bpN:p0:realpart#realPart | blueprint-N/parts/p0-conventions.tex#bpN:p0:qcthm@L251-L251 | h_ℝ in Ψ
EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p0-conventions.tex#bpN:p0:qcthm@L251-L251 | ω_h in Ψ
EDGE: bpN:p2:qc-bij | blueprint-N/parts/p2-qc-zero.tex#bpN:p0:qcthm@L48-L48 | this result carries the \frozen tag: proof of the anchor
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: frozen root; proof is Part 2 (bpN:p2:qc-bij)
```

```text
NODE: bpN:p0:partial-sec#Phase
KIND: definition
TITLE: prose transcription: KAM.Planetary.Phase
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L264-L264
PROOF_SOURCE: -
CONTRACT_ID: planetary.Phase
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: d ∈ ℕ)
SOURCE_QUANTIFIERS: d
SOURCE_CONCLUSION: defines Ph_d = ℝᵈ × ℝᵈ (positions first, then momenta) with the product of max norms ‖(x,y)‖ = max(¦x¦,¦y¦)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Planetary/Defs/Phase.lean
FROZEN_DECL: KAM.Planetary.Phase
FROZEN_ANCHOR_ID: planetary.Phase.v1
FROZEN_ABI_SHA256: 0b8db62a1a83c34b9c3562bd1bb6043b1db7174c9222df403355844422056af8
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: frozen definition transcribed in unlabelled Part-0 prose (no \frozen tag); anchor bound by the SPEC (track-P definition KAM.Planetary.Phase)
```

```text
NODE: bpN:p0:partial-sec#fast
KIND: definition
TITLE: prose transcription: KAM.Planetary.fast
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L265-L266
PROOF_SOURCE: -
CONTRACT_ID: planetary.fast
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: v ∈ ℝ^{n+k})
SOURCE_QUANTIFIERS: n, k; v ∈ ℝ^{n+k}
SOURCE_CONCLUSION: defines fast(v) = (v_1,…,v_n), the first block of v ∈ ℝ^{n+k}
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Planetary/Defs/Fast.lean
FROZEN_DECL: KAM.Planetary.fast
FROZEN_ANCHOR_ID: planetary.fast.v1
FROZEN_ABI_SHA256: 592a25e5b4ec439e42bd78bc02e0dfd989b1d261387db6319bca10c6d17c1067
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: frozen definition transcribed in unlabelled Part-0 prose; anchor bound by the SPEC (track-P definition KAM.Planetary.fast)
```

```text
NODE: bpN:p0:partial-sec#slow
KIND: definition
TITLE: prose transcription: KAM.Planetary.slow
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L265-L266
PROOF_SOURCE: -
CONTRACT_ID: planetary.slow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: v ∈ ℝ^{n+k})
SOURCE_QUANTIFIERS: n, k; v ∈ ℝ^{n+k}
SOURCE_CONCLUSION: defines slow(v) = (v_{n+1},…,v_{n+k}), the second block of v ∈ ℝ^{n+k}
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Planetary/Defs/Slow.lean
FROZEN_DECL: KAM.Planetary.slow
FROZEN_ANCHOR_ID: planetary.slow.v1
FROZEN_ABI_SHA256: ae34da51fbaf5eb81f8a1436fe5e53cd0413d280bf280221ca79639b92661332
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: frozen definition transcribed in unlabelled Part-0 prose; anchor bound by the SPEC (track-P definition KAM.Planetary.slow)
```

```text
NODE: bpN:p0:partial-sec#fastShift
KIND: definition
TITLE: prose transcription: KAM.Planetary.fastShift
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L269-L269
PROOF_SOURCE: -
CONTRACT_ID: planetary.fastShift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: ℓ ∈ ℤⁿ)
SOURCE_QUANTIFIERS: n, k; ℓ ∈ ℤⁿ
SOURCE_CONCLUSION: defines fastShift ℓ = (2πℓ, 0) ∈ Ph_{n+k}, with 2πℓ in the fast block of the angles
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Planetary/Defs/FastShift.lean
FROZEN_DECL: KAM.Planetary.fastShift
FROZEN_ANCHOR_ID: planetary.fastShift.v1
FROZEN_ABI_SHA256: 8b53f2de2ba13a01ff80cdf95a405e5d5a39eaa40db32a87062c077ddf0775a5
DEPS: bpN:p0:partial-sec#Phase
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:partial-sec#Phase | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L269-L269 | values in Ph_{n+k}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: frozen definition transcribed in unlabelled Part-0 prose; anchor bound by the SPEC (track-P definition KAM.Planetary.fastShift)
```

```text
NODE: bpN:p0:partial-complexify#complexifyPhase
KIND: definition
TITLE: \Lean{complexifyPhase}: KAM.Nekhoroshev.complexifyPhase
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-complexify@L271-L275
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.d25.complexifyPhase
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: z = (x,y) ∈ Ph_d)
SOURCE_QUANTIFIERS: d; z ∈ Ph_d
SOURCE_CONCLUSION: defines cx(z) = ((x_i)_i, (y_i)_i) ∈ ℂᵈ × ℂᵈ, componentwise inclusion ℝ ⊂ ℂ; no choices
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/ComplexifyPhase.lean
FROZEN_DECL: KAM.Nekhoroshev.complexifyPhase
FROZEN_ANCHOR_ID: nekhoroshev.d25.complexifyPhase.v1
FROZEN_ABI_SHA256: 8e6ea4079d2a1fab63a3f5d2eaa66c94724b91d1e1e3703d431ae3f7e3b2b766
DEPS: bpN:p0:partial-sec#Phase
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:partial-sec#Phase | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-complexify@L272-L272 | z ∈ Ph_d
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:partial-core#innerCore
KIND: definition
TITLE: \Lean{innerCore}: closed max-norm erosion: KAM.Nekhoroshev.innerCore
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-core@L277-L282
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.d25.innerCore
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: E a normed group, U ⊂ E, d ∈ ℝ)
SOURCE_QUANTIFIERS: E; U ⊂ E; d ∈ ℝ
SOURCE_CONCLUSION: defines core(U,d) = {x ∈ U : B̄(x,d) ⊂ U} (closed ball of the norm of E); used only with d > 0
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/InnerCore.lean
FROZEN_DECL: KAM.Nekhoroshev.innerCore
FROZEN_ANCHOR_ID: nekhoroshev.d25.innerCore.v1
FROZEN_ABI_SHA256: 26d3941c0044e1fe50bb3c6cf07bc1623b805a0a0c1055b3ebb9aca9d92167e8
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:partial-domain#partialComplexDomain
KIND: definition
TITLE: \Lean{partialComplexDomain}: KAM.Nekhoroshev.partialComplexDomain
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-domain@L284-L290
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.d25.partialComplexDomain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: G ⊂ ℝⁿ, D ⊂ Ph_k, ρ ∈ ℝ)
SOURCE_QUANTIFIERS: n, k; G; D; ρ
SOURCE_CONCLUSION: defines 𝓕(G,D,ρ) = {(φ,𝖨) ∈ ℂ^{n+k} × ℂ^{n+k} : fast(Re 𝖨) ∈ G, (slow(Re φ), slow(Re 𝖨)) ∈ D, φ, 𝖨 ∈ T^{n+k}_ρ}, T^N_ρ = complexStrip N ρ; no other condition on fast real angles and slow real positions
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/PartialComplexDomain.lean
FROZEN_DECL: KAM.Nekhoroshev.partialComplexDomain
FROZEN_ANCHOR_ID: nekhoroshev.d25.partialComplexDomain.v1
FROZEN_ABI_SHA256: 8ace42352bee445db163d0c6a0606ea22f471b05c4a3aae6f8a69e0e98a1cf58
DEPS: bpN:p0:partial-sec#fast, bpN:p0:partial-sec#slow, bpN:p0:strip#complexStrip, bpN:p0:partial-sec#Phase
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:partial-sec#fast | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-domain@L286-L286 | fast(Re 𝖨)
EDGE: bpN:p0:partial-sec#slow | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-domain@L286-L286 | slow(Re φ), slow(Re 𝖨)
EDGE: bpN:p0:strip#complexStrip | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-domain@L287-L287 | T^{n+k}_ρ is the complex strip
EDGE: bpN:p0:partial-sec#Phase | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-domain@L285-L285 | D ⊂ Ph_k
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:partial-definite#HasDefiniteFastPart
KIND: definition
TITLE: \Lean{HasDefiniteFastPart}: KAM.Nekhoroshev.HasDefiniteFastPart
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-definite@L292-L299
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.d25.HasDefiniteFastPart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G ⊂ ℝⁿ; ρ, g, m ∈ ℝ; h : ℂⁿ → ℂ; U = {I ∈ ℝⁿ : I ∈ G_ρ}
SOURCE_QUANTIFIERS: n; G; ρ, g, m; h
SOURCE_CONCLUSION: HasDefiniteFastPart G ρ g m h holds iff g > 0, m > 0, h_ℝ is C³ on U, and ∃ σ ∈ {1,−1} with, for every I ∈ U: ¦ω_h(I)¦ ≥ g and ∀ v ∈ ℝⁿ: m Σ v_i² ≤ σ D²h_ℝ(I)[v,v]
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/HasDefiniteFastPart.lean
FROZEN_DECL: KAM.Nekhoroshev.HasDefiniteFastPart
FROZEN_ANCHOR_ID: nekhoroshev.d25.HasDefiniteFastPart.v1
FROZEN_ABI_SHA256: a14999cd073cbc37fdf097ef6b3543eb5d39204341ef44cd31987745142499ad
DEPS: bpN:p0:actionnbhd#actionNbhd, bpN:p0:freq#frequencyMap, bpN:p0:realpart#realPart
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:actionnbhd#actionNbhd | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-definite@L293-L293 | G_ρ = actionNbhd G ρ
EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-definite@L296-L296 | ω_h = ∇h_ℝ
EDGE: bpN:p0:realpart#realPart | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-definite@L294-L294 | h_ℝ
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:partial-pert#IsPartialPerturbation
KIND: definition
TITLE: \Lean{IsPartialPerturbation}: KAM.Nekhoroshev.IsPartialPerturbation
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-pert@L301-L311
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.d25.IsPartialPerturbation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G ⊂ ℝⁿ; D ⊂ Ph_k; ρ ∈ ℝ; P : ℂ^{n+k} × ℂ^{n+k} → ℂ
SOURCE_QUANTIFIERS: n, k; G; D; ρ; P
SOURCE_CONCLUSION: IsPartialPerturbation G D ρ P holds iff (P1) P complex differentiable on 𝓕(G,D,ρ); (P2) ¦P(z)¦ ≤ 1 on 𝓕(G,D,ρ); (P3) Im P(cx(z)) = 0 for real z ∈ Ph_{n+k} with cx(z) ∈ 𝓕(G,D,ρ); (P4) P(z + cx(fastShift ℓ)) = P(z) for z ∈ 𝓕(G,D,ρ), ℓ ∈ ℤⁿ (2π-periodic in each fast angle, none in slow variables)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/IsPartialPerturbation.lean
FROZEN_DECL: KAM.Nekhoroshev.IsPartialPerturbation
FROZEN_ANCHOR_ID: nekhoroshev.d25.IsPartialPerturbation.v1
FROZEN_ABI_SHA256: 3194f1f76252ceba859a92a45d4c7a96ba72df82f1a1820cd66cee8982308f04
DEPS: bpN:p0:partial-domain#partialComplexDomain, bpN:p0:partial-complexify#complexifyPhase, bpN:p0:partial-sec#fastShift, bpN:p0:partial-sec#Phase
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:partial-domain#partialComplexDomain | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-pert@L304-L304 | 𝓕(G,D,ρ)
EDGE: bpN:p0:partial-complexify#complexifyPhase | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-pert@L306-L306 | cx(z) in (P3)
EDGE: bpN:p0:partial-sec#fastShift | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-pert@L307-L307 | fastShift ℓ in (P4)
EDGE: bpN:p0:partial-sec#Phase | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-pert@L306-L306 | real z ∈ Ph_{n+k}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:partial-exponents#partialTimeExponent
KIND: definition
TITLE: \Lean{partialTimeExponent}, \Lean{partialDriftExponent}: KAM.Nekhoroshev.partialTimeExponent
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.d25.partialTimeExponent
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ∈ ℕ
SOURCE_QUANTIFIERS: n
SOURCE_CONCLUSION: defines a_n = 2/(6n² − 3n + 14) (partialTimeExponent; denominator ≥ 32 > 0 for n ≥ 2)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/PartialTimeExponent.lean
FROZEN_DECL: KAM.Nekhoroshev.partialTimeExponent
FROZEN_ANCHOR_ID: nekhoroshev.d25.partialTimeExponent.v1
FROZEN_ABI_SHA256: dd47438dbbe49b81c1bbc7dc6c8d5f0d938577e98dc1d02e07dd6d2544cf3a65
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:partial-exponents#partialDriftExponent
KIND: definition
TITLE: \Lean{partialTimeExponent}, \Lean{partialDriftExponent}: KAM.Nekhoroshev.partialDriftExponent
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317
PROOF_SOURCE: -
CONTRACT_ID: nekhoroshev.d25.partialDriftExponent
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ∈ ℕ
SOURCE_QUANTIFIERS: n
SOURCE_CONCLUSION: defines b_n = 3/(6n² − 3n + 14) = (3/2) a_n (partialDriftExponent)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Defs/PartialDriftExponent.lean
FROZEN_DECL: KAM.Nekhoroshev.partialDriftExponent
FROZEN_ANCHOR_ID: nekhoroshev.d25.partialDriftExponent.v1
FROZEN_ABI_SHA256: 700c15173e1d6a99fa1bb73ff8a91f91ca08168b32aa62d1a69f91d93d90e855
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p0:partial
KIND: theorem
TITLE: N-PARTIAL-CONVEX: exponential stability of the fast actions, definite fast part, slow--fast
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L319-L335
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p0:partial@L159-L169
CONTRACT_ID: nekhoroshev.d25.partialConvex_nekhoroshev
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a Lean frozen statement; n ≥ 2, k ≥ 1, G, G' ⊂ ℝⁿ open and convex, D ⊂ Ph_k open, ρ, g, m, M_ℂ ∈ ℝ with ρ > 0, M_ℂ > 0, B̄(I,ρ) ⊂ G' for every I ∈ G (closed max-norm ball); h : ℂⁿ → ℂ complex differentiable and complex C² on G'_ρ, Im h(I) = 0 for real I ∈ G'_ρ, ‖D²h(z)‖ ≤ M_ℂ on G'_ρ, HasDefiniteFastPart G' ρ g m h; then for μ ∈ (0,μ₀), P with IsPartialPerturbation G' D ρ P, C > 0, z : ℝ → Ph_{n+k}: (Z1) IsSolutionOn H_μ {𝖨 : fast(𝖨) ∈ G} [0,C] z with H_μ = Re h(fast 𝖨) + μ Re P(cx(φ,𝖨)) (degenerateHamiltonian (realPart h) (Re P ∘ cx) μ); (Z2) fast(z(0)_2) ∈ core(G, μ^{b_n}); t ∈ [0, min(C, μ^{−1} exp(μ^{−a_n}))] with (slow z(u)_1, slow z(u)_2) ∈ core(D, μ^{b_n}) for all u ∈ [0,t]
SOURCE_QUANTIFIERS: n, k; G, G', D, ρ, g, m, M_ℂ, h (with their hypotheses); then ∃ μ₀ > 0; then ∀ μ ∈ (0,μ₀), P, C > 0, z (with Z1, Z2); then ∀ t ∈ [0, min(C, μ^{−1} exp(μ^{−a_n}))] with slow confinement on [0,t]
SOURCE_CONCLUSION: ¦fast(z(t)_2) − fast(z(0)_2)¦ ≤ ½ μ^{b_n}
CONSTANT_SCOPE: μ₀ > 0 depends only on (n, k, G, G', D, ρ, g, m, M_ℂ, h) and is chosen before μ, P, C, z, t; a_n = 2/(6n² − 3n + 14), b_n = 3/(6n² − 3n + 14); slow confinement is tested only on [0,t]; the initial erosion core(G, μ^{b_n}) is used only as fast(z(0)_2) ∈ G
FROZEN_FILE: KAM/Frozen/Nekhoroshev/Theorems/PartialConvexNekhoroshev.lean
FROZEN_DECL: KAM.Nekhoroshev.partialConvex_nekhoroshev
FROZEN_ANCHOR_ID: nekhoroshev.d25.partialConvex_nekhoroshev.v1
FROZEN_ABI_SHA256: 821dd585d6c345a79062e33a20882725afb5182a058117723eb6a3655feec090
DEPS: stepN:p11:final-empty, stepN:p11:final-data, stepN:p11:final-mu, stepN:p11:final-time, stepN:p11:final-given, stepN:p11:final-orbit, stepN:p11:final-sign, stepN:p11:final-drift, stepN:p11:final-order, bpN:p0:realpart#realPart, bpN:p0:actionnbhd#actionNbhd, bpN:p0:partial-definite#HasDefiniteFastPart, bpN:p0:partial-pert#IsPartialPerturbation, bpN:p0:sol#IsSolutionOn, bpN:p0:partial-sec#degenerateHamiltonian, bpN:p0:partial-complexify#complexifyPhase, bpN:p0:partial-core#innerCore, bpN:p0:partial-sec#fast, bpN:p0:partial-sec#slow, bpN:p0:partial-sec#Phase, bpN:p0:partial-exponents#partialTimeExponent, bpN:p0:partial-exponents#partialDriftExponent
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:final-empty | blueprint-N/parts/p11c-partial-stability.tex#bpN:p0:partial@L160-L160 | proof step of this result
EDGE: stepN:p11:final-data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p0:partial@L161-L161 | proof step of this result
EDGE: stepN:p11:final-mu | blueprint-N/parts/p11c-partial-stability.tex#bpN:p0:partial@L162-L162 | proof step of this result
EDGE: stepN:p11:final-time | blueprint-N/parts/p11c-partial-stability.tex#bpN:p0:partial@L163-L163 | proof step of this result
EDGE: stepN:p11:final-given | blueprint-N/parts/p11c-partial-stability.tex#bpN:p0:partial@L164-L164 | proof step of this result
EDGE: stepN:p11:final-orbit | blueprint-N/parts/p11c-partial-stability.tex#bpN:p0:partial@L165-L165 | proof step of this result
EDGE: stepN:p11:final-sign | blueprint-N/parts/p11c-partial-stability.tex#bpN:p0:partial@L166-L166 | proof step of this result
EDGE: stepN:p11:final-drift | blueprint-N/parts/p11c-partial-stability.tex#bpN:p0:partial@L167-L167 | proof step of this result
EDGE: stepN:p11:final-order | blueprint-N/parts/p11c-partial-stability.tex#bpN:p0:partial@L168-L168 | proof step of this result
EDGE: bpN:p0:realpart#realPart | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L324-L324 | h_ℝ in degenerateHamiltonian (realPart h)
EDGE: bpN:p0:actionnbhd#actionNbhd | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L322-L322 | G'_ρ = actionNbhd G' ρ
EDGE: bpN:p0:partial-definite#HasDefiniteFastPart | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L322-L322 | hypothesis HasDefiniteFastPart G' ρ g m h
EDGE: bpN:p0:partial-pert#IsPartialPerturbation | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L322-L322 | P with IsPartialPerturbation G' D ρ P
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L324-L324 | (Z1) IsSolutionOn
EDGE: bpN:p0:partial-sec#degenerateHamiltonian | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L324-L324 | H_μ = degenerateHamiltonian
EDGE: bpN:p0:partial-complexify#complexifyPhase | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L324-L324 | cx in H_μ
EDGE: bpN:p0:partial-core#innerCore | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L325-L325 | core(G,μ^{b_n}), core(D,μ^{b_n})
EDGE: bpN:p0:partial-sec#fast | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L325-L325 | fast(·)
EDGE: bpN:p0:partial-sec#slow | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L328-L328 | slow(·)
EDGE: bpN:p0:partial-sec#Phase | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L322-L322 | z : ℝ → Ph_{n+k}
EDGE: bpN:p0:partial-exponents#partialTimeExponent | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L327-L327 | a_n in the time window
EDGE: bpN:p0:partial-exponents#partialDriftExponent | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L325-L325 | b_n in the erosion and conclusion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: frozen root; proof is Part 11c L159-169 (steps stepN:p11:final-*). SOURCE_GAP of the source paper (sourcegap L335) is filled by Part 11 (route of bpN:p11). The step edges are listed with locators in the proof environment of Part 11c
```

```text
NODE: bpN:p0:partial-sec#degenerateHamiltonian
KIND: definition
TITLE: prose transcription: KAM.Planetary.degenerateHamiltonian
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L324-L324
PROOF_SOURCE: -
CONTRACT_ID: planetary.degenerateHamiltonian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: H₀ : ℝᵃ → ℝ, P : ℝ → Ph_{a+b} → ℝ, μ ∈ ℝ, z ∈ Ph_{a+b})
SOURCE_QUANTIFIERS: a, b; H₀; P; μ; z
SOURCE_CONCLUSION: defines degenerateHamiltonian H₀ P μ z = H₀(fast(z_2)) + μ P(μ,z), i.e. H_μ(φ,𝖨) = Re h(fast 𝖨) + μ Re P(cx(φ,𝖨)) for H₀ = h_ℝ
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Planetary/Defs/DegenerateHamiltonian.lean
FROZEN_DECL: KAM.Planetary.degenerateHamiltonian
FROZEN_ANCHOR_ID: planetary.degenerateHamiltonian.v1
FROZEN_ABI_SHA256: 331c8377743700e4a9163dbc7e9b05d210b63657fbfc42851bf92ee8731f02a6
DEPS: bpN:p0:partial-sec#Phase, bpN:p0:partial-sec#fast
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:partial-sec#Phase | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L324-L324 | z ∈ Ph_{a+b}
EDGE: bpN:p0:partial-sec#fast | blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L324-L324 | fast 𝖨
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: frozen definition transcribed in unlabelled Part-0 prose, item (Z1) of bpN:p0:partial (L325); anchor bound by the SPEC (track-P definition KAM.Planetary.degenerateHamiltonian)
```

```text
NODE: bpN:p2:qc-deriv
KIND: lemma
TITLE: The derivative of $\Psi$
STATEMENT_SOURCE: blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-deriv@L33-L37
PROOF_SOURCE: blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-deriv@L38-L46
CONTRACT_ID: bpN:p2:qc-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U ⊂ ℝⁿ open; h with h_ℝ ∈ C²(U); I ∈ U; λ ∈ ℝ; Ψ(I',λ') = (h_ℝ(I'), λ'ω_h(I'))
SOURCE_QUANTIFIERS: n; U; h; I ∈ U; λ; ω = ω_h(I), Q_ij = D²h_ℝ(I)[e_i,e_j]
SOURCE_CONCLUSION: Ψ is differentiable at (I,λ) (so fderiv is the genuine derivative) and DΨ(I,λ)[v,u] = (ω·v, uω + λQv) with Q symmetric
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p2:qd-first, stepN:p2:qd-freq, stepN:p2:qd-sym, stepN:p2:qd-prod, bpN:p0:realpart#realPart, bpN:p0:freq#frequencyMap
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p2:qd-first | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-deriv@L39-L39 | proof step of this result
EDGE: stepN:p2:qd-freq | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-deriv@L41-L41 | proof step of this result
EDGE: stepN:p2:qd-sym | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-deriv@L43-L43 | proof step of this result
EDGE: stepN:p2:qd-prod | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-deriv@L45-L45 | proof step of this result
EDGE: bpN:p0:realpart#realPart | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-deriv@L34-L34 | h_ℝ
EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p2-qc-zero.tex#bpN:p2:qc-deriv@L34-L34 | ω_h in Ψ
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: ext-prod and K:ext-schwarz are cited in \source (L36) and used at the steps qd-prod and qd-sym: no parent edge
```

Delete the NODE `bpN:p0:totality`. Its existing EXCLUDED inventory disposition is correct; the full ITEM record below supplies the corrected locator and the deletion directive. The application helper cannot physically delete NODE blocks, so the writer must perform this previously requested deletion explicitly. It has no incoming dependency in the current packets.

```text
ITEM: bpN:p0:actionnbhd#actionNbhd
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:actionnbhd@L36-L41
DISPOSITION: NODE bpN:p0:actionnbhd#actionNbhd
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:freq#frequencyMap
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:freq@L43-L50
DISPOSITION: NODE bpN:p0:freq#frequencyMap
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:vf#hamiltonianVectorField
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:vf@L52-L58
DISPOSITION: NODE bpN:p0:vf#hamiltonianVectorField
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:realH#realHamiltonian
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:realH@L60-L65
DISPOSITION: NODE bpN:p0:realH#realHamiltonian
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:strip#complexStrip
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:strip@L67-L71
DISPOSITION: NODE bpN:p0:strip#complexStrip
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:ball#actionBall
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:ball@L75-L79
DISPOSITION: NODE bpN:p0:ball#actionBall
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:cdomain#complexDomain
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:cdomain@L81-L86
DISPOSITION: NODE bpN:p0:cdomain#complexDomain
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:rdomain#realActionDomain
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain@L88-L92
DISPOSITION: NODE bpN:p0:rdomain#realActionDomain
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:rdomain-eq
KIND: claim
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:rdomain-eq@L94-L98
DISPOSITION: NODE bpN:p0:rdomain-eq
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:realpart#realPart
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:realpart@L100-L104
DISPOSITION: NODE bpN:p0:realpart#realPart
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:integrable#IsAnalyticIntegrable
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:integrable@L106-L119
DISPOSITION: NODE bpN:p0:integrable#IsAnalyticIntegrable
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:pert#IsAnalyticPerturbation
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:pert@L121-L133
DISPOSITION: NODE bpN:p0:pert#IsAnalyticPerturbation
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:bm#HasDerivativeBounds
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:bm@L135-L144
DISPOSITION: NODE bpN:p0:bm#HasDerivativeBounds
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:qc#IsStrictlyQuasiConvex
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:qc@L146-L153
DISPOSITION: NODE bpN:p0:qc#IsStrictlyQuasiConvex
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:hess#HasComplexHessianBound
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:hess@L155-L163
DISPOSITION: NODE bpN:p0:hess#HasComplexHessianBound
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:sol#IsSolutionOn
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:sol@L165-L172
DISPOSITION: NODE bpN:p0:sol#IsSolutionOn
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:orbit#integrableOrbit
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:orbit@L174-L179
DISPOSITION: NODE bpN:p0:orbit#integrableOrbit
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

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

```text
ITEM: bpN:p0:head
KIND: theorem
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:head@L204-L237
DISPOSITION: NODE bpN:p0:head
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:zero
KIND: theorem
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:zero@L239-L246
DISPOSITION: NODE bpN:p0:zero
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:qcthm
KIND: theorem
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:qcthm@L248-L257
DISPOSITION: NODE bpN:p0:qcthm
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial-sec#Phase
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L264-L264
DISPOSITION: NODE bpN:p0:partial-sec#Phase
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial-sec#fast
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L265-L266
DISPOSITION: NODE bpN:p0:partial-sec#fast
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial-sec#slow
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L265-L266
DISPOSITION: NODE bpN:p0:partial-sec#slow
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial-sec#fastShift
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L269-L269
DISPOSITION: NODE bpN:p0:partial-sec#fastShift
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial-complexify#complexifyPhase
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-complexify@L271-L275
DISPOSITION: NODE bpN:p0:partial-complexify#complexifyPhase
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial-core#innerCore
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-core@L277-L282
DISPOSITION: NODE bpN:p0:partial-core#innerCore
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial-domain#partialComplexDomain
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-domain@L284-L290
DISPOSITION: NODE bpN:p0:partial-domain#partialComplexDomain
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial-definite#HasDefiniteFastPart
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-definite@L292-L299
DISPOSITION: NODE bpN:p0:partial-definite#HasDefiniteFastPart
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial-pert#IsPartialPerturbation
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-pert@L301-L311
DISPOSITION: NODE bpN:p0:partial-pert#IsPartialPerturbation
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial-exponents#partialTimeExponent
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317
DISPOSITION: NODE bpN:p0:partial-exponents#partialTimeExponent
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial-exponents#partialDriftExponent
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317
DISPOSITION: NODE bpN:p0:partial-exponents#partialDriftExponent
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial
KIND: theorem
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L319-L335
DISPOSITION: NODE bpN:p0:partial
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial-sec#degenerateHamiltonian
KIND: definition
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L324-L324
DISPOSITION: NODE bpN:p0:partial-sec#degenerateHamiltonian
REASON: mechanical inventory of a labelled unit
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: bpN:p0:partial-totality
KIND: claim
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-totality@L337-L339
DISPOSITION: EXCLUDED
REASON: Lean-totality remark of the D25 objects: no proof consumes it (checked by grep for partial-totality across blueprint-N/parts: only its own label); outside every root closure of track N
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: heading:bpN:p0:conventions
KIND: heading
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:conventions@L10-L10
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: heading:bpN:p0:kdefs
KIND: heading
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:kdefs@L34-L34
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: heading:bpN:p0:defs
KIND: heading
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:defs@L73-L73
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: heading:bpN:p0:theorems
KIND: heading
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:theorems@L202-L202
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: heading:bpN:p0:partial-sec
KIND: heading
SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L259-L259
DISPOSITION: EXCLUDED
REASON: section heading; its results are inventoried separately
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:sourcegap-L234
KIND: proof-region
SOURCE: blueprint-N/parts/p0-conventions.tex#sourcegap@L233-L233
DISPOSITION: NODE bpN:p10:head
REASON: the frozen-to-Pöschel conversion gap of the printed theorem is proved in Part 10 (bpN:p10:head and stepN:p10:hd-*); anchor node bpN:p0:head
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:sourcegap-L335
KIND: proof-region
SOURCE: blueprint-N/parts/p0-conventions.tex#sourcegap@L334-L334
DISPOSITION: NODE bpN:p0:partial
REASON: the printed-theorem gap (collar, closed max-norm erosion, confinement on [0,t]) is proved in Part 11 (final steps stepN:p11:final-*); anchor node bpN:p0:partial
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L41
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L40-L40
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L50
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L49-L49
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L58
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L57-L57
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L65
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L64-L64
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L79
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L78-L78
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L86
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L85-L85
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L92
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L91-L91
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L104
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L103-L103
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L119
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L118-L118
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L133
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L132-L132
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L144
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L143-L143
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L153
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L152-L152
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L162
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L161-L161
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L172
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L171-L171
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L179
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L178-L178
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L232
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L231-L231
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L246
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L245-L245
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L257
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L256-L256
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L275
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L274-L274
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L282
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L281-L281
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L290
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L289-L289
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L299
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L298-L298
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L311
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L310-L310
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L317
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L316-L316
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:source-L334
KIND: citation
SOURCE: blueprint-N/parts/p0-conventions.tex#source@L333-L333
DISPOSITION: EXCLUDED
REASON: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:prose-L13-L33
KIND: proof-region
SOURCE: blueprint-N/parts/p0-conventions.tex#prose@L12-L32
DISPOSITION: EXCLUDED
REASON: conventions (max norms, operator norms, unreduced angles, strip): notation only; recorded in the source fields of the anchors and definitions that use them (norms in qc, hess, bm, theorems; strip in strip/cdomain); the period-one and Pöschel conversion is carried by Part 1
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:prose-L262-L264
KIND: proof-region
SOURCE: blueprint-N/parts/p0-conventions.tex#prose@L261-L263
DISPOSITION: EXCLUDED
REASON: pointer to the Lean files of the D25 additions: provenance, no mathematical content
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

```text
ITEM: p0:prose-L268-L269
KIND: proof-region
SOURCE: blueprint-N/parts/p0-conventions.tex#prose@L267-L268
DISPOSITION: NODE bpN:p0:partial-sec#fast, bpN:p0:partial-sec#slow, bpN:p0:partial
REASON: notation of the partial phase space (fast/slow angles, positions and momenta); realized in the fast/slow anchor nodes and used by the statement of bpN:p0:partial
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p02
REVIEWER: -
```

## Source questions and limits

No frozen declaration defect found. The administrative totality paragraph at p0 L181–200 is not a mathematical result consumed by a root. The root dispatch attachments in Parts 2, 10 and 11c remain unchanged. D28 material appended after the four-root corpus scope is not added to this graph. The bulk remap mismatch is a graph locator defect, not a mathematical erratum.

## Checks

- Only this slice’s delta report was written. No packets, SPEC, frozen source, manifest or blueprint changes; no Lean run, repository lint/build, or state-changing git command.
- Read-only application check: `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_apply_review.py docs/graph/N/packets N-p02 docs/graph/N/reviews/N-p02-delta.md sol-delta-N-a --dry-run` returned `N-p02: 34 replaced, 0 added, 70 coverage items, 0 unresolved FAILs`. Helper PASS counts include duplicate IDs appearing in both node and coverage tables; the separate proposed-record tables above are authoritative.
- Static validation: PASS for exact proposed-record tables, minimally changed fields, DEPS/EDGE sets, source path/line bounds and frozen-field preservation. `git diff --check`: exit 0, no output. No global topology-ready or Lean closure claim is made.
