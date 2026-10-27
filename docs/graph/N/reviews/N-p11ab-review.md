# N-p11ab topology review

Reviewer: sol-review-N-f. Verdict: FAIL.

Reviewed every one of the 51 nodes and 70 coverage items against the raw source; package edges are required directly even where a transitive path exists. This is a source-topology verdict, not a theorem or Lean proof-status verdict.

| Node | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| `bpN:p11:ext-num` | PASS | blueprint-N/parts/p11a-partial-route.tex#bpN:p11:ext-num@L40-L40 | Source fields, direct uses and source applicability agree. |
| `bpN:p11:ext-rpow` | PASS | blueprint-N/parts/p11a-partial-route.tex#bpN:p11:ext-rpow@L41-L41 | Source fields, direct uses and source applicability agree. |
| `bpN:p11:ext-chain` | PASS | blueprint-N/parts/p11a-partial-route.tex#bpN:p11:ext-chain@L42-L42 | Source fields, direct uses and source applicability agree. |
| `bpN:p11:wfield` | PASS | blueprint-N/parts/p11a-partial-route.tex#bpN:p11:wfield@L48-L56 | Source fields, direct uses and source applicability agree. |
| `bpN:p11:orbit` | PASS | blueprint-N/parts/p11a-partial-route.tex#bpN:p11:orbit@L58-L61 ; blueprint-N/parts/p11a-partial-route.tex#bpN:p11:orbit@L62-L65 | Source fields, direct uses and source applicability agree. |
| `stepN:p11:or-chain` | PASS | blueprint-N/parts/p11a-partial-route.tex#stepN:p11:or-chain@L63-L63 ; blueprint-N/parts/p11a-partial-route.tex#stepN:p11:or-chain@L63-L63 | Source fields, direct uses and source applicability agree. |
| `stepN:p11:or-eq` | PASS | blueprint-N/parts/p11a-partial-route.tex#stepN:p11:or-eq@L64-L64 ; blueprint-N/parts/p11a-partial-route.tex#stepN:p11:or-eq@L64-L64 | Source fields, direct uses and source applicability agree. |
| `bpN:p11:exponents` | PASS | blueprint-N/parts/p11a-partial-route.tex#bpN:p11:exponents@L67-L69 ; blueprint-N/parts/p11a-partial-route.tex#bpN:p11:exponents@L70-L73 | Source fields, direct uses and source applicability agree. |
| `stepN:p11:ex-den` | PASS | blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-den@L71-L71 ; blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-den@L71-L71 | Source fields, direct uses and source applicability agree. |
| `stepN:p11:ex-cmp` | FAIL | blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-cmp@L72-L72 ; blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-cmp@L72-L72 | source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local |
| `bpN:p11:constants` | PASS | blueprint-N/parts/p11a-partial-route.tex#bpN:p11:constants@L77-L84 | Source fields, direct uses and source applicability agree. |
| `bpN:p11:ext-class` | PASS | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:ext-class@L8-L14 | Source fields, direct uses and source applicability agree. |
| `bpN:p11:ext-part4` | PASS | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:ext-part4@L16-L18 ; blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:ext-part4@L16-L18 | Source fields, direct uses and source applicability agree. |
| `bpN:p11:bracket` | PASS | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket@L20-L24 ; blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket@L25-L29 | Source fields, direct uses and source applicability agree. |
| `stepN:p11:br-fast` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-fast@L26-L26 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-fast@L26-L26 | missing direct uses: bpN:p4:norm, bpN:p11:ext-class, bpN:p11:wfield |
| `stepN:p11:br-slow` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27 | missing direct uses: bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p11:wfield |
| `stepN:p11:br-dom` | PASS | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-dom@L28-L28 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-dom@L28-L28 | Source fields, direct uses and source applicability agree. |
| `bpN:p11:bracket-g` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L31-L33 ; blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L34-L36 | missing direct uses: bpN:p4:norm, bpN:p4:domains |
| `bpN:p11:scaled` | PASS | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:scaled@L40-L42 | Source fields, direct uses and source applicability agree. |
| `bpN:p11:vf` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L44-L46 ; blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L47-L49 | missing direct uses: bpN:p4:domains, bpN:p11:wfield |
| `bpN:p11:flow` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:flow@L51-L53 ; blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:flow@L54-L56 | missing direct uses: bpN:p4:domains |
| `bpN:p11:symplectic` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L58-L60 ; blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L61-L63 | missing direct uses: bpN:p11:s-ext-class#data |
| `bpN:p11:adjoint` | PASS | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:adjoint@L65-L68 ; blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:adjoint@L69-L73 | Source fields, direct uses and source applicability agree. |
| `stepN:p11:ad-setup` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-setup@L70-L70 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-setup@L70-L70 | missing direct uses: bpN:p4:norm, bpN:p11:wfield, bpN:p4:domains |
| `stepN:p11:ad-step` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-step@L71-L71 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-step@L71-L71 | missing direct uses: bpN:p4:norm, bpN:p11:s-ext-class#data, bpN:p11:ext-class; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local |
| `stepN:p11:ad-prod` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-prod@L72-L72 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-prod@L72-L72 | missing direct uses: bpN:p4:norm, bpN:p11:ext-class, bpN:p11:wfield; unsupported citation removed: bpN:p11:ext-num; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local; unsupported input must be exposed as SOURCE_GAP |
| `bpN:p11:composition` | PASS | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:composition@L75-L80 ; blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:composition@L81-L85 | Source fields, direct uses and source applicability agree. |
| `stepN:p11:co-field` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-field@L82-L82 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-field@L82-L82 | missing direct uses: bpN:p4:norm, bpN:p4:domains, bpN:p11:wfield |
| `stepN:p11:co-series` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | missing direct uses: bpN:p4:domains, bpN:p11:ext-class, bpN:p6:ext-numerics; unsupported citation removed: bpN:p11:ext-num; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local; unsupported input must be exposed as SOURCE_GAP |
| `stepN:p11:co-remainder` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | missing direct uses: bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p6:ext-numerics, stepN:p11:co-field; unsupported citation removed: bpN:p11:ext-num; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local; unsupported input must be exposed as SOURCE_GAP |
| `bpN:p11:transform` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L87-L89 ; blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L90-L93 | missing direct uses: bpN:p4:domains |
| `stepN:p11:tr-taylor` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | missing direct uses: bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p6:ext-numerics, bpN:p11:wfield; unsupported citation removed: bpN:p11:ext-num; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local |
| `stepN:p11:tr-int` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | missing direct uses: bpN:p4:norm, bpN:p11:ext-class, K:bp:p1:ext-integral |
| `bpN:p11:canonical-map` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L95-L97 ; blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L98-L100 | missing direct uses: bpN:p11:wfield |
| `bpN:p11:hom` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L106-L108 ; blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L109-L111 | missing direct uses: bpN:p4:domains |
| `bpN:p11:iterative` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L113-L120 ; blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L121-L126 | missing direct uses: bpN:p4:domains |
| `stepN:p11:it-gen` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-gen@L122-L122 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-gen@L122-L122 | missing direct uses: bpN:p4:norm, bpN:p11:s-nf#data; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local |
| `stepN:p11:it-map` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-map@L123-L123 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-map@L123-L123 | source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local |
| `stepN:p11:it-taylor` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | missing direct uses: bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p11:wfield, bpN:p11:s-ext-class#data, bpN:p11:s-nf#data; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local |
| `stepN:p11:it-est` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | missing direct uses: bpN:p4:norm, bpN:p11:wfield, bpN:p11:s-nf#data, bpN:p6:setting, bpN:p11:ext-class, bpN:p11:ext-part4; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local |
| `bpN:p11:nf` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L128-L134 ; blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L135-L147 | missing direct uses: bpN:p4:domains, bpN:p11:wfield |
| `stepN:p11:nf-sl` | PASS | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-sl@L137-L137 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-sl@L137-L137 | Source fields, direct uses and source applicability agree. |
| `stepN:p11:nf-first` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-first@L138-L138 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-first@L138-L138 | missing direct uses: bpN:p11:s-nf#data; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local |
| `stepN:p11:nf-case` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L141 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L141 | missing direct uses: bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p11:s-nf#data, stepN:p11:nf-sl, bpN:p6:divisor; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local |
| `stepN:p11:nf-N` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-N@L142-L142 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-N@L142-L142 | missing direct uses: bpN:p4:norm, bpN:p11:s-nf#data; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local |
| `stepN:p11:nf-induct` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143 | missing direct uses: bpN:p4:domains, bpN:p11:s-nf#data, bpN:p4:norm, bpN:p11:ext-class; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local |
| `stepN:p11:nf-concl` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | missing direct uses: bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p11:wfield, bpN:p11:s-nf#data; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local; unsupported input must be exposed as SOURCE_GAP |
| `stepN:p11:nf-disp` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145 | missing direct uses: bpN:p11:s-nf#data; source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local; unsupported input must be exposed as SOURCE_GAP |
| `stepN:p11:nf-real` | FAIL | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-real@L146-L146 ; blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-real@L146-L146 | source premises omitted or replaced by derived proof-state assertions; restore enclosing hypotheses and keep branch assumptions local |
| `bpN:p11:s-ext-class#data` | PASS | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:s-ext-class#data@L4-L6 | Source fields, direct uses and source applicability agree. |
| `bpN:p11:s-nf#data` | PASS | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:s-nf#data@L104-L104 | Source fields, direct uses and source applicability agree. |

Coverage failures:

| Coverage item | Verdict | Reason |
|---|---|---|
| `p11a:sourcegap-L23` | FAIL | the unconditional claim that the gap is filled conceals the unsupported inputs |

All other coverage items PASS. Labelled conclusions/steps are mapped, section-data paragraphs are retained, and administrative remarks, aliases and provenance-only citations are correctly excluded.

Suspected blueprint defects:

- Part 11b L72: “using $(2h)!\ge(2h/e)^{2h}$ (ext-num)”. Part 11a L40 does not state a factorial/Stirling bound. The existing ad-prod step must expose this unsupported input as SOURCE_GAP; merely noting suspicion does not do so.
- Part 11b L83–84 uses “$e^2/8<0.93$” and “$e^2/9<0.83$”. Neither the cited Part 11 numerical external nor Part 6’s weaker $e^2<8$ supplies these sharpenings. The step records preserve the printed estimates and expose the missing numerical attachment.
- Part 11b L144–145 invokes Part 6 telescoping for the extended dimension and constant matrix Omega_c. Part 6 L148–150 states the canonical J version only. The proof is a plausible template, but the asserted change of symplectic form needs an explicit bridge; the existing proof steps expose it as SOURCE_GAP rather than assuming its conclusion.

Replacement fragments (writer applies these; packets remain unchanged):

```text
NODE: stepN:p11:ex-cmp
KIND: step
TITLE: Comparison
STATEMENT_SOURCE: blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-cmp@L72-L72
PROOF_SOURCE: blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-cmp@L72-L72
CONTRACT_ID: stepN:p11:ex-cmp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:exponents; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: n
SOURCE_CONCLUSION: 2 b_n<1/(2n) iff 6n^2-15n+14>0 (true); hence a_n<b_n<2b_n<1/(2n)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:ex-den, bpN:p0:partial-exponents#partialDriftExponent
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:ex-den | blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-cmp@L72-L72 | q_n>0 and a_n<b_n
EDGE: bpN:p0:partial-exponents#partialDriftExponent | blueprint-N/parts/p11a-partial-route.tex#stepN:p11:ex-cmp@L72-L72 | b_n
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:br-slow
KIND: step
TITLE: Slow part
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27
CONTRACT_ID: stepN:p11:br-slow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: I-hat in V_{R-rho}D-hat, t=s-sigma; u,v as in Lemma bracket
SOURCE_QUANTIFIERS: u,v; I-hat
SOURCE_CONCLUSION: the slow part: each of the 2k products d_{q_j}u d_{p_j}v, d_{p_j}u d_{q_j}v has norm <=¦u¦_{R_0,s_0}¦v¦_{R,s}/((R_0-R+rho)rho); times c and summed, 2kc/((R_0-R+rho)rho)¦u¦¦v¦
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:algebra, bpN:p4:cauchy, bpN:p11:ext-part4, bpN:p11:s-ext-class#data, bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p11:wfield
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:algebra | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27 | pointwise product estimate (Lemma algebra)
EDGE: bpN:p4:cauchy | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27 | Lemma cauchy(b) for the I-hat derivatives
EDGE: bpN:p11:ext-part4 | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27 | algebra and cauchy(b) for the extended class
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-slow@L27-L27 | the weight c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p11:bracket-g
KIND: lemma
TITLE: Bracket with a decomposed $g$
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L31-L33
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L34-L36
CONTRACT_ID: bpN:p11:bracket-g
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation of Lemma bpN:p6:bracket-g for O^e (phi in O(R,s)^e, g=sum_j g_j as in Definition p6:setting with extended norms), 0<rho<R, 0<sigma<s, (SL)_{rho,sigma}
SOURCE_QUANTIFIERS: phi; g=sum g_j; rho,sigma
SOURCE_CONCLUSION: ¦{g,phi}_c¦_{R-rho,s-sigma}<=(1/(rho sigma))¦g¦_* ¦phi¦_{R,s} (¦g¦_* as in Definition p6:setting for the extended norms)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:bracket, bpN:p6:setting, bpN:p11:ext-class, bpN:p11:wfield, bpN:p4:norm, bpN:p4:domains
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L34-L36 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L34-L36 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:bracket | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L35-L35 | Lemma bracket applied to each g_j
EDGE: bpN:p6:setting | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L32-L32 | decomposition g=sum g_j and the weighted sum ¦g¦_*
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L32-L32 | O^e and (SL)_{rho,sigma}
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:bracket-g@L32-L32 | the bracket {g,phi}_c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: dropped candidate edge: bpN:p6:bracket-g (only "the situation" is cited, i.e. its hypotheses; the estimate is re-derived from Lemma bracket in the proof)
```

```text
NODE: bpN:p11:vf
KIND: lemma
TITLE: Size of the field
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L44-L46
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L47-L49
CONTRACT_ID: bpN:p11:vf
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi in O(R,s)^e of finite norm; 0<rho<R, 0<sigma<s; (SL)_{rho,sigma}
SOURCE_QUANTIFIERS: phi; rho,sigma
SOURCE_CONCLUSION: on D^e_{R-rho,s-sigma}: ¦d_{I_i}phi¦<=¦phi¦/rho, ¦d_{theta_i}phi¦<=¦phi¦/(e sigma), ¦d_{x-tilde_j}phi¦<=¦phi¦/rho and nu_{rho,sigma}(X^c_phi)<=¦phi¦_{R,s}/(rho sigma); moreover c¦phi¦/rho<=¦phi¦/(16 k sigma)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:ext-part4, bpN:p4:cauchy, bpN:p4:sup-weighted, bpN:p5:vf-bound, bpN:p11:ext-class, bpN:p11:scaled, bpN:p4:norm, bpN:p11:s-ext-class#data, bpN:p4:domains, bpN:p11:wfield
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L47-L49 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L47-L49 | direct use of bpN:p11:wfield in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:ext-part4 | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L48-L48 | B.3 and B.1(a) for the extended class (Lemma ext-part4)
EDGE: bpN:p4:cauchy | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L48-L48 | B.3 (Cauchy estimates)
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L48-L48 | B.1(a)
EDGE: bpN:p5:vf-bound | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L48-L48 | the fast components as in Lemma vf-bound
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L45-L48 | (SL)_{rho,sigma}: c<=rho/(16 k sigma) gives the slow bounds
EDGE: bpN:p11:scaled | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L45-L45 | nu_{rho,sigma} and X^c_phi
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L45-L45 | weighted norm
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:vf@L48-L48 | the weight c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p11:flow
KIND: lemma
TITLE: Flow package
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:flow@L51-L53
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:flow@L54-L56
CONTRACT_ID: bpN:p11:flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Omega=D^e_{R',s'} open; F holomorphic on Omega with nu(F)<=eps<=1/2; (d) tau=(l,0,0), l in Z^n; (e) F real on Omega cap R^{2n+2k}
SOURCE_QUANTIFIERS: F; eps; R',s'
SOURCE_CONCLUSION: Lemma bpN:p5:flow applies verbatim to N=2n+2k, the norm nu_{rho,sigma}, Omega=D^e_{R',s'}: (a)-(e), with (d) translations by (l,0,0) and (e) reality (the proof is the conjugation symmetry and does not use N=2n)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:flow, bpN:p11:scaled, bpN:p11:ext-class, bpN:p4:domains
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:flow@L54-L56 | direct use of bpN:p4:domains in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:flow | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:flow@L52-L52 | Lemma flow applied verbatim (its conclusions (a)-(e)) to N=2n+2k
EDGE: bpN:p11:scaled | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:flow@L52-L52 | the norm nu_{rho,sigma}
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:flow@L52-L52 | Omega=D^e_{R',s'}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p11:symplectic
KIND: lemma
TITLE: Symplectic flow; canonical maps
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L58-L60
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L61-L63
CONTRACT_ID: bpN:p11:symplectic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the flow of Lemma flow with F=X^c_phi (phi holomorphic on Omega); Phi=X^t; u,v,H holomorphic near Phi(z)
SOURCE_QUANTIFIERS: phi; t; z; u,v,H
SOURCE_CONCLUSION: Y=DX^t(z) satisfies Y^T Omega_c^{-1} Y=Omega_c^{-1}, Y Omega_c Y^T=Omega_c, det Y=+-1; (a) {u o Phi, v o Phi}_c={u,v}_c o Phi; (b) DPhi X^c_{H o Phi}=X^c_H o Phi; (c) if y'=X^c_{H o Phi}(y) then x=Phi o y satisfies x'=X^c_H(x)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:flow, bpN:p5:flow, K:bp:p1:ext-schwarz, bpN:p11:wfield, bpN:p11:ext-chain, bpN:p11:s-ext-class#data
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L61-L63 | direct use of bpN:p11:s-ext-class#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:flow | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L59-L59 | the flow package of the hypothesis
EDGE: bpN:p5:flow | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L62-L62 | Y'=DF Y, Y(0)=1 is Lemma flow(b)
EDGE: K:bp:p1:ext-schwarz | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L62-L62 | DF=Omega_c S with S the symmetric Hessian
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L62-L62 | Omega_c, X^c, {u,v}_c=grad u^T Omega_c grad v
EDGE: bpN:p11:ext-chain | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:symplectic@L62-L62 | chain rule for grad(u o Phi) and (b), (c)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:ad-setup
KIND: step
TITLE: Setup
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-setup@L70-L70
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-setup@L70-L70
CONTRACT_ID: stepN:p11:ad-setup
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi,u,rho,sigma,h as in Lemma adjoint
SOURCE_QUANTIFIERS: h
SOURCE_CONCLUSION: with kappa=rho/h, lambda_h=sigma/h, R_i=R-i kappa, s_i=s-i lambda_h: (SL)_{kappa,lambda_h} holds (same ratio) and ad^i_phi u in O(R_i,s_i)^e by induction
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:ext-class, bpN:p4:norm, bpN:p11:wfield, bpN:p4:domains
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-setup@L70-L70 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-setup@L70-L70 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-setup@L70-L70 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-setup@L70-L70 | (SL)_{rho,sigma} depends only on the ratio sigma/rho
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:ad-step
KIND: step
TITLE: One step
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-step@L71-L71
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-step@L71-L71
CONTRACT_ID: stepN:p11:ad-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:adjoint; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: i
SOURCE_CONCLUSION: ¦ad^i_phi u¦_{R_i,s_i}<=(1/2)(2/((h+i)kappa lambda_h))¦phi¦¦ad^{i-1}_phi u¦_{R_{i-1},s_{i-1}}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:bracket, bpN:p11:wfield, stepN:p11:ad-setup, bpN:p4:norm, bpN:p11:s-ext-class#data, bpN:p11:ext-class
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-step@L71-L71 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-step@L71-L71 | direct use of bpN:p11:s-ext-class#data in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-step@L71-L71 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:bracket | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-step@L71-L71 | Lemma bracket with u:=phi (radius R', width s'), v:=ad^{i-1}_phi u and losses kappa, lambda_h
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-step@L71-L71 | {a,b}_c=-{b,a}_c
EDGE: stepN:p11:ad-setup | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-step@L71-L71 | the radii R_i, s_i and (SL)_{kappa,lambda_h}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:ad-prod
KIND: step
TITLE: Product
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-prod@L72-L72
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-prod@L72-L72
CONTRACT_ID: stepN:p11:ad-prod
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:adjoint; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: h
SOURCE_CONCLUSION: prod_{i=1}^h (h+i)=(2h)!/h! and kappa lambda_h=rho sigma/h^2 give (1/h!)¦ad^h_phi u¦<=((eta h^2/2)^h/(2h)!)¦u¦<=(e^2 eta/8)^h ¦u¦, using (2h)!>=(2h/e)^{2h}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:ad-step, bpN:p4:norm, bpN:p11:ext-class, bpN:p11:wfield
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-prod@L72-L72 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-prod@L72-L72 | direct package or input used by this proof step
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-prod@L72-L72 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:ad-step | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:ad-prod@L72-L72 | the recursive bound being iterated
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: Part 11b L72 needs (2h)! >= (2h/e)^{2h} for h>=1. The cited ext-num at Part 11a L40 does not state it, and no proof or other permitted input supplies it. Preserve the claimed estimate; do not add the factorial bound as a hypothesis.
```

```text
NODE: stepN:p11:co-field
KIND: step
TITLE: Field and domain
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-field@L82-L82
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-field@L82-L82
CONTRACT_ID: stepN:p11:co-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi, eta, (SL)_{rho,sigma} as in Theorem composition
SOURCE_QUANTIFIERS: z
SOURCE_CONCLUSION: nu(X^c_phi)<=eta/2=:eps<=1/4 on Omega; for z in D^e_{R-rho,s-sigma}: B-bar_nu(z,1/2) subset D^e_{R-rho/2,s-sigma/2} subset D^e_{R,s} subset Omega so z in Omega^{1/2}, and X^t(z) in B-bar_nu(z,eps) subset D^e_{R-(1-eps)rho,s-(1-eps)sigma}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:vf, bpN:p11:scaled, bpN:p11:flow, bpN:p11:ext-class, bpN:p4:norm, bpN:p4:domains, bpN:p11:wfield
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-field@L82-L82 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-field@L82-L82 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-field@L82-L82 | direct use of bpN:p11:wfield in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:vf | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-field@L82-L82 | Lemma vf with losses rho, sigma gives nu(X^c_phi)<=¦phi¦/(rho sigma)
EDGE: bpN:p11:scaled | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-field@L82-L82 | the nu-ball inclusion of Definition scaled
EDGE: bpN:p11:flow | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-field@L82-L82 | Lemma flow(a): X^t(z) in B-bar_nu(z,eps)
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-field@L82-L82 | D^e_{R,s} and its monotone family
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:co-series
KIND: step
TITLE: Series
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83
CONTRACT_ID: stepN:p11:co-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:composition; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: u
SOURCE_CONCLUSION: (1/h!)ad^h_phi u in O(R-rho,s-sigma)^e has norm <=(e^2 eta/8)^h¦u¦, sum<=(1-e^2 eta/8)^{-1}<=(1-eta)^{-1} (e^2/8<0.93); partial sums converge uniformly (B.1(a)), the limit S is holomorphic and periodic, its Fourier coefficients are the sums of the coefficients (termwise integration), and the norm bound follows by the triangle inequality
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:adjoint, bpN:p4:sup-weighted, bpN:p11:ext-part4, bpN:p4:ext-weier, bpN:p4:ext-series, bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p6:ext-numerics
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | direct use of bpN:p6:ext-numerics in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:adjoint | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | the term bounds (e^2 eta/8)^h
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | B.1(a): uniform convergence
EDGE: bpN:p11:ext-part4 | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | B.1(a) for the extended class
EDGE: bpN:p4:ext-weier | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | limit holomorphic and periodic
EDGE: bpN:p4:ext-series | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | termwise integration of the Fourier coefficients
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-series@L83-L83 | Fourier coefficients and norm of the limit
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: the source additionally uses e^2/8<0.93, which is not supplied by Part 11 ext-num or the weaker Part 6 e^2<8. The printed sharpening is preserved as an unsupported numerical input, not silently included in an external contract.
```

```text
NODE: stepN:p11:co-remainder
KIND: step
TITLE: Remainder
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84
CONTRACT_ID: stepN:p11:co-remainder
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:composition; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: N; z
SOURCE_CONCLUSION: ¦ad^N_phi u¦_{R-hat-rho,s-hat-sigma}<=N!(e^2 hat-eta/8)^N¦u¦ with e^2 hat-eta/8<0.83; Taylor with integral remainder gives ¦R_N(z)¦<=(e^2 hat-eta/8)^N¦u¦->0 so u(X^1 z)=S(z); (iii) is (ii) for t phi; (iv) by Lemma flow(e)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:adjoint, bpN:p5:taylor, bpN:p11:symplectic, bpN:p11:flow, bpN:p11:wfield, bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p6:ext-numerics, stepN:p11:co-field
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | direct use of bpN:p6:ext-numerics in the statement or proof at this span
EDGE: stepN:p11:co-field | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:adjoint | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | Lemma adjoint with (hat-rho,hat-sigma)
EDGE: bpN:p5:taylor | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | Taylor formula with integral remainder (one real variable)
EDGE: bpN:p11:symplectic | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | derivatives g^(j)=ad^j_phi u o X^t
EDGE: bpN:p11:flow | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | (iv) by Lemma flow(e); trajectory in D^e
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:co-remainder@L84-L84 | d/dt v(X^t z)=Dv.X^c_phi={v,phi}_c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: the source additionally uses e^2/9<0.83, which is not supplied by Part 11 ext-num or the weaker Part 6 e^2<8. The printed sharpening is preserved as an unsupported numerical input, not silently included in an external contract.
```

```text
NODE: bpN:p11:transform
KIND: proposition
TITLE: Lie transform with first-order remainder; integral remainders
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L87-L89
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L90-L93
CONTRACT_ID: bpN:p11:transform
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the setting of Theorem composition; h in O(R,s)^e (norm possibly infinite) with w={h,phi}_c in O(R,s)^e of finite norm; f_0 in O(R,s)^e of finite norm; v_t in O(R,s)^e (0<=t<=1) with sup_t ¦v_t¦=V<infinity and (t,z)->v_t(z),Dv_t(z) continuous
SOURCE_QUANTIFIERS: R,s,rho,sigma; phi; h; f_0; (v_t)
SOURCE_CONCLUSION: on D^e_{R-rho,s-sigma}: (h+f_0) o X^1=h+w+f_0+R with R=int_0^1{(1-t)w+f_0,phi}_c o X^t dt and ¦R¦_{R-rho,s-sigma}<=eta/(1-eta)((1/2)¦w¦+¦f_0¦); G=int_0^1 v_t o X^t dt in O(R-rho,s-sigma)^e with ¦G¦<=(1-eta)^{-1}V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:tr-taylor, stepN:p11:tr-int, bpN:p11:composition, bpN:p11:ext-class, bpN:p11:wfield, bpN:p4:norm, bpN:p11:s-ext-class#data, bpN:p4:domains
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L90-L93 | direct use of bpN:p4:domains in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:tr-taylor | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L91-L91 | proof step (Taylor)
EDGE: stepN:p11:tr-int | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L92-L92 | proof step (integral remainder)
EDGE: bpN:p11:composition | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L87-L87 | setting and the flow bounds
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L87-L88 | O^e
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L88-L88 | w={h,phi}_c
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L88-L88 | finite norm
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:transform@L88-L88 | weight c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:tr-taylor
KIND: step
TITLE: Taylor
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91
CONTRACT_ID: stepN:p11:tr-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:transform; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: z
SOURCE_CONCLUSION: the Taylor identity (h+f_0)(X^1 z)=h+w+f_0+R pointwise; series form: h o X^1=h+sum_{i>=0}(1/(i+1)!)ad^i_phi w, f_0 o X^1=sum(1/j!)ad^j_phi f_0, hence R=sum_{j>=1}(...) and the bound sum_{j>=1}(e^2 eta/8)^j(¦w¦/(j+1)+¦f_0¦)<=eta/(1-eta)((1/2)¦w¦+¦f_0¦)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:taylor, bpN:p11:composition, bpN:p11:adjoint, bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p6:ext-numerics, bpN:p11:wfield
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | direct use of bpN:p6:ext-numerics in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:taylor | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | Taylor formula of order 2 for h, order 1 for f_0
EDGE: bpN:p11:composition | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | trajectory stays in D^e_{R,s} (i)
EDGE: bpN:p11:adjoint | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-taylor@L91-L91 | bounds (e^2 hat-eta/8)^{N-1} for ad^{N-1}_phi w and the series terms
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:tr-int
KIND: step
TITLE: Integral remainder
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92
CONTRACT_ID: stepN:p11:tr-int
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v_t as in the statement
SOURCE_QUANTIFIERS: t,z
SOURCE_CONCLUSION: g_t=v_t o X^t in O(R-rho,s-sigma)^e with ¦g_t¦<=(1-eta)^{-1}V; (t,z)->g_t(z) and D_z g_t=Dv_t(X^t z)D_z X^t(z) are continuous; G holomorphic (parameter integral) and ¦G¦_{I,s-sigma}<=int_0^1¦g_t¦_{I,s-sigma}dt by Fubini and Tonelli
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:composition, bpN:p4:ext-param, bpN:p4:ext-series, bpN:p4:norm, bpN:p11:ext-class, K:bp:p1:ext-integral
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: K:bp:p1:ext-integral | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | direct use of K:bp:p1:ext-integral in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:composition | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | (iii): ¦g_t¦<=(1-eta)^{-1}V
EDGE: bpN:p4:ext-param | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | holomorphy of G (holomorphic parameter integral)
EDGE: bpN:p4:ext-series | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:tr-int@L92-L92 | Fubini and Tonelli for the Fourier-coefficient integrals
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p11:canonical-map
KIND: proposition
TITLE: Canonical map package
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L95-L97
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L98-L100
CONTRACT_ID: bpN:p11:canonical-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi in O(R,s)^e of finite norm; 0<rho<R/2, 0<sigma<s/2; (SL)_{rho,sigma}; eps:=¦phi¦/(rho sigma)<=1/2; Omega=D^e_{R-rho,s-sigma}; Phi=X^1_phi, Psi=X^{-1}_phi
SOURCE_QUANTIFIERS: R,s,rho,sigma; phi
SOURCE_CONCLUSION: (a) Phi,Psi holomorphic on D^e_{R-3rho/2,s-3sigma/2} with values in Omega, nu(Phi-id)<=eps, ¦Phi_theta-theta¦<=¦phi¦/rho, ¦Phi_I-I¦<=¦phi¦/(e sigma), ¦Phi_{x-tilde}-x-tilde¦<=c¦phi¦/rho<=(1/(16k))¦phi¦/sigma; (b) Phi(theta+l,I,x-tilde)=Phi+(l,0,0), real points to real points if phi real; (c) ¦DPhi-1¦_nu<=2 eps on D^e_{R-2rho,s-2sigma}; (d) DPhi Omega_c DPhi^T=Omega_c; (e) Psi o Phi=id=Phi o Psi on D^e_{R-2rho,s-2sigma} and Phi maps it into D^e_{R-3rho/2,s-3sigma/2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:canonical-map, bpN:p11:vf, bpN:p11:scaled, bpN:p11:flow, bpN:p11:symplectic, K:bp:p1:ext-mvt, bpN:p11:ext-class, bpN:p4:norm, bpN:p4:domains, bpN:p11:s-ext-class#data, bpN:p11:wfield
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L98-L100 | direct use of bpN:p11:wfield in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:canonical-map | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L99-L99 | as Proposition p5:canonical-map, step by step (same conclusions (a)-(e) for the extended class)
EDGE: bpN:p11:vf | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L99-L99 | nu(X^c_phi)<=eps on Omega
EDGE: bpN:p11:scaled | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L99-L99 | nu-ball inclusions
EDGE: bpN:p11:flow | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L99-L99 | Lemma flow(a)-(e) give (a),(b),(c),(e)
EDGE: bpN:p11:symplectic | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L99-L99 | (d)
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L99-L99 | componentwise displacements: mean value inequality along the trajectory
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L95-L96 | O^e, (SL)_{rho,sigma}, D^e
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L95-L95 | finite norm
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L96-L96 | D^e_{R-rho,s-sigma}
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:canonical-map@L96-L96 | weight c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the edge to bpN:p5:canonical-map is the "as ..., step by step" template whose conclusions (a)-(e) are reproved here from the extended flow, vf and symplectic lemmas
```

```text
NODE: bpN:p11:hom
KIND: proposition
TITLE: Homological equation with parameters
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L106-L108
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L109-L111
CONTRACT_ID: bpN:p11:hom
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f in O(R,s)^e, delta=¦f¦_{R,s}<infinity; Lambda subset Z^n; K_a>=0; (N-dir): ¦k.omega(I)¦>=alpha/q on V_R(I_c) for k in Z_{K_a}\Lambda; xi=P_Lambda T_{K_a}f; phi=sum_{k in Z_{K_a}\Lambda} f-hat_k(I,x-tilde)/(2 pi i k.omega(I)) chi_k(theta); for the reality clause Lambda=-Lambda, f real on real points and omega(I) real for every real I in V_R(I_c)
SOURCE_QUANTIFIERS: R,s; Lambda; K_a; alpha; q; h; f
SOURCE_CONCLUSION: xi,phi in O(R,s)^e, {phi,h}_c+xi=T_{K_a}f, ¦xi¦,¦T_{K_a}f¦<=delta, ¦phi¦<=q delta/abar, P_Lambda phi=0; under the reality hypotheses xi,phi are real on real points (false without real omega: h=iI, f=a cos 2 pi theta, Lambda={0})
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:homological, bpN:p6:iterative-direct, stepN:p6:hom-real, bpN:p11:ext-part4, bpN:p4:projections, bpN:p11:ext-class, bpN:p11:wfield, bpN:p11:s-nf#data, bpN:p6#data, bpN:p4:norm, bpN:p11:s-ext-class#data, bpN:p4:domains
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L109-L111 | direct use of bpN:p4:domains in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:homological | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L110-L110 | identical to Proposition homological (Fourier coefficients at fixed I-hat; same formulas and the norm bounds q delta/abar)
EDGE: bpN:p6:iterative-direct | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L110-L110 | with Corollary iterative-direct: (N-dir) replaces (N1),(N2),K L r<=alpha/p
EDGE: stepN:p6:hom-real | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L110-L110 | reality as Step hom-real
EDGE: bpN:p11:ext-part4 | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L110-L110 | statement about Fourier coefficients in theta at fixed I-hat (Lemma ext-part4)
EDGE: bpN:p4:projections | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L107-L107 | P_Lambda, T_{K_a}
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L106-L106 | O^e, W^e real points
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L110-L110 | {phi,h}_c=d_theta phi.omega since h depends on neither theta nor x-tilde
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L104-L107 | dictionary: K_a, q, abar, omega=d_I h, h on V_R(I_c)
EDGE: bpN:p6#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L106-L107 | Z_{K_a}, q, abar
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L106-L106 | weighted norm and Fourier coefficients
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:hom@L106-L106 | I-hat=(I,x-tilde)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: dropped template: bpN:p6:setting (N1),(N2) are replaced by (N-dir) here
```

```text
NODE: bpN:p11:iterative
KIND: theorem
TITLE: Iterative Lemma$^e$
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L113-L120
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L121-L126
CONTRACT_ID: bpN:p11:iterative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (N-dir); s,rho,sigma>0, 2 rho<R, 2 sigma<s, (SL)_{rho,sigma}; H=h+g+f on D^e_{R,s}; g=sum_{j in J} g_j as in Definition p6:setting (extended norms); f in O(R,s)^e, delta=¦f¦_{R,s}<=abar rho sigma/(4q); phi that of Proposition hom; Phi=X^{1,c}_phi
SOURCE_QUANTIFIERS: R,s,rho,sigma; h,g,f; phi
SOURCE_CONCLUSION: (a) Phi holomorphic on D^e_{R-3rho/2,s-3sigma/2} with values in D^e_{R-rho,s-sigma}, theta-translation equivariant, symplectic (DPhi Omega_c DPhi^T=Omega_c), injective on D^e_{R-2rho,s-2sigma} (left inverse X^{-1}_phi); (b) ¦Phi_theta-theta¦<=q delta/(abar rho), ¦Phi_I-I¦<=q delta/(e abar sigma), ¦Phi_{x-tilde}-x-tilde¦<=(e/(16k))q delta/(e abar sigma); (c) H o Phi=h+g_+ +f_+ on D^e_{R-2rho,s-2sigma}, g_+=g+P_Lambda T_{K_a}f, ¦g_+-g¦<=delta; (d) ¦f_+¦_{R-2rho,s-2sigma}<=(1-2q delta/(abar rho sigma))^{-1}(q/(abar rho sigma)(¦g¦_*+delta)+e^{-2 pi K_a sigma})delta; (e) if Lambda=-Lambda and h,g,f real on real points, so are phi,g_+,f_+ and Phi preserves real points
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:it-gen, stepN:p11:it-map, stepN:p11:it-taylor, stepN:p11:it-est, bpN:p6:setting, bpN:p11:hom, bpN:p11:s-nf#data, bpN:p11:ext-class, bpN:p11:wfield, bpN:p4:norm, bpN:p11:s-ext-class#data, bpN:p4:domains
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L121-L126 | direct use of bpN:p4:domains in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:it-gen | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L122-L122 | proof step (generating function)
EDGE: stepN:p11:it-map | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L123-L123 | proof step ((a),(b))
EDGE: stepN:p11:it-taylor | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L124-L124 | proof step (Taylor identity)
EDGE: stepN:p11:it-est | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L125-L125 | proof step (estimates; (d),(e))
EDGE: bpN:p6:setting | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L114-L114 | g=sum g_j and ¦g¦_* of Definition p6:setting
EDGE: bpN:p11:hom | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L114-L114 | phi of Proposition hom
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L113-L114 | h on V_R(I_c), omega, K_a, q, abar
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L113-L114 | O^e, (SL)_{rho,sigma}
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L114-L114 | Phi=X^{1,c}_phi
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L114-L114 | weighted norm
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:iterative@L113-L113 | weight c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:it-gen
KIND: step
TITLE: Generating function
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-gen@L122-L122
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-gen@L122-L122
CONTRACT_ID: stepN:p11:it-gen
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:iterative; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: f
SOURCE_CONCLUSION: ¦phi¦<=q delta/abar and eta:=2¦phi¦/(rho sigma)<=2 q delta/(abar rho sigma)<=1/2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:hom, bpN:p4:norm, bpN:p11:s-nf#data
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-gen@L122-L122 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-gen@L122-L122 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:hom | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-gen@L122-L122 | ¦phi¦<=q delta/abar
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:it-map
KIND: step
TITLE: (a), (b)
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-map@L123-L123
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-map@L123-L123
CONTRACT_ID: stepN:p11:it-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:iterative; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: phi
SOURCE_CONCLUSION: (a),(b): eps=¦phi¦/(rho sigma)<=eta/2<=1/4 and rho<R/2, sigma<s/2 so Proposition canonical-map gives the map properties and displacement bounds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:canonical-map, stepN:p11:it-gen
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:canonical-map | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-map@L123-L123 | Proposition canonical-map applies (rho<R/2, sigma<s/2, eps<=1/4)
EDGE: stepN:p11:it-gen | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-map@L123-L123 | eta<=1/2 and ¦phi¦<=q delta/abar
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:it-taylor
KIND: step
TITLE: Taylor identity
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124
CONTRACT_ID: stepN:p11:it-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:iterative; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: phi
SOURCE_CONCLUSION: on D^e_{R-2rho,s-2sigma}: (h+f_0) o Phi=h+g+xi+R=h+g_+ +R, R=int_0^1{g+f_t,phi}_c o X^t dt, f_t=(1-t)xi+t T_{K_a}f; hence H o Phi=h+g_+ +f_+ with f_+=R+(f-T_{K_a}f) o Phi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:transform, bpN:p11:hom, stepN:p11:it-gen, bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p11:wfield, bpN:p11:s-ext-class#data, bpN:p11:s-nf#data
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | direct use of bpN:p11:s-ext-class#data in the statement or proof at this span
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:transform | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | Proposition transform with data (R-rho,s-sigma;R,s)
EDGE: bpN:p11:hom | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | w={h,phi}_c=xi-T_{K_a}f and xi=P_Lambda T_{K_a}f
EDGE: stepN:p11:it-gen | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-taylor@L124-L124 | eta<=1/2, the hypotheses of the transform
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:it-est
KIND: step
TITLE: Estimates
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125
CONTRACT_ID: stepN:p11:it-est
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:iterative; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: t
SOURCE_CONCLUSION: ¦v_t¦_{R-rho,s-sigma}<=(1/(rho sigma))(¦g¦_*+delta)q delta/abar=V; ¦R¦<=(1-eta)^{-1}V; ¦f-T_{K_a}f¦_{R,s-sigma}<=e^{-2 pi K_a sigma}delta and ¦(f-T_{K_a}f) o Phi¦<=(1-eta)^{-1}e^{-2 pi K_a sigma}delta; this is (d); (e) as Step it-real
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:bracket-g, bpN:p11:transform, bpN:p4:projections, bpN:p11:composition, stepN:p6:it-real, stepN:p11:it-taylor, stepN:p11:it-gen, bpN:p4:norm, bpN:p11:wfield, bpN:p11:s-nf#data, bpN:p6:setting, bpN:p11:ext-class, bpN:p11:ext-part4
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
EDGE: bpN:p6:setting | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | direct use of bpN:p6:setting in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | direct package or input used by this proof step
EDGE: bpN:p11:ext-part4 | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:bracket-g | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | decomposition g_j plus the term f_t with weight 1
EDGE: bpN:p11:transform | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | ¦R¦<=(1-eta)^{-1}V
EDGE: bpN:p4:projections | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | ¦f-T_{K_a}f¦_{R,s-sigma}<=e^{-2 pi K_a sigma}delta
EDGE: bpN:p11:composition | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | (ii) for (f-T_{K_a}f) o Phi
EDGE: stepN:p6:it-real | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | (e) as Step it-real
EDGE: stepN:p11:it-taylor | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | the identity for f_+ and f_t
EDGE: stepN:p11:it-gen | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:it-est@L125-L125 | ¦phi¦<=q delta/abar and eta
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the reality clause (e) is delegated to the Part 6 step it-real by "as"; modelled as an edge to that step
```

```text
NODE: bpN:p11:nf
KIND: theorem
TITLE: Normal Form Lemma$^e$
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L128-L134
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L135-L147
CONTRACT_ID: bpN:p11:nf
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_a>0; Lambda=-Lambda subset Z^n; h holomorphic on V_R(I_c) and real on real points; ({I_c},R,K_a,alpha,L,Lambda,h) satisfy (N1),(N2) (cond-nr, cond-L) and K_a L R<=alpha/p (so (N-dir), Lemma divisor); R=r_B; s>0; (SL): c<=R/(32 k s); f in O(R,s)^{e,R} (real on real points) with ¦f¦_{R,s}<=eps for a number eps>0; H=h+f; (i) eps<=alpha R/(2^7 q K_a), (ii) kappa=2 pi K_a s>=6
SOURCE_QUANTIFIERS: R,s; K_a,alpha,L,Lambda,p; h; f; eps
SOURCE_CONCLUSION: with R_*=R/2, s_*=s/6, c_1=2 q K_a/(alpha R), g_0=P_Lambda T_{K_a}f: there are a holomorphic injective Psi: D^e_{R_*,s_*}->D^e_{R,s} with DPsi Omega_c DPsi^T=Omega_c, Psi(theta+l,I,x-tilde)=Psi+(l,0,0), real at real points, and g,f_* in O(R_*,s_*)^{e,R}, g a trigonometric polynomial in theta with frequencies in Lambda cap Z_{K_a}, with H o Psi=h+g+f_* and (a) ¦g-g_0¦<=16 c_1 eps^2; (b) ¦f_*¦<=e^{-kappa/6}eps; (c) ¦Pi_I Psi-I¦<=q K_a eps/alpha<=R/2^7, ¦Pi_theta Psi-theta¦<=10 q eps/(2 pi alpha R), ¦Pi_{x-tilde}Psi-x-tilde¦<=(1/8)q K_a eps/alpha<=R/2^10 (physical slow displacement <=w/2^10)
CONSTANT_SCOPE: q=p/(p-1); R_*=R/2, s_*=s/6, c_1=2qK_a/(alpha R); the constants in (a)-(c) are absolute (as in Theorem p6:normal-form)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:nf-sl, stepN:p11:nf-first, stepN:p11:nf-case, stepN:p11:nf-N, stepN:p11:nf-induct, stepN:p11:nf-concl, stepN:p11:nf-disp, stepN:p11:nf-real, bpN:p6:setting, bpN:p6:divisor, bpN:p6:normal-form, bpN:p11:iterative, bpN:p11:s-nf#data, bpN:p11:s-ext-class#data, bpN:p11:ext-class, bpN:p4:projections, bpN:p6#data, bpN:p4:norm, bpN:p4:domains, bpN:p11:wfield
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L135-L147 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L135-L147 | direct use of bpN:p11:wfield in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:nf-sl | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L137-L137 | proof step ((SL) at every step)
EDGE: stepN:p11:nf-first | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L138-L138 | proof step (step 0 hypotheses)
EDGE: stepN:p11:nf-case | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L139-L141 | proof step (step 0, two cases)
EDGE: stepN:p11:nf-N | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L142-L142 | proof step (number of steps)
EDGE: stepN:p11:nf-induct | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L143-L143 | proof step (induction)
EDGE: stepN:p11:nf-concl | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L144-L144 | proof step (conclusion)
EDGE: stepN:p11:nf-disp | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L145-L145 | proof step (displacement)
EDGE: stepN:p11:nf-real | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L146-L146 | proof step (reality)
EDGE: bpN:p6:setting | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L129-L129 | hypotheses (N1),(N2) (cond-nr, cond-L) and the decomposition norm
EDGE: bpN:p6:divisor | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L129-L129 | K_a L R<=alpha/p gives (N-dir) by Lemma divisor
EDGE: bpN:p6:normal-form | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L136-L136 | indexing and step structure of Theorem normal-form (as there)
EDGE: bpN:p11:iterative | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L136-L136 | step i is Theorem iterative
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L129-L129 | dictionary: K_a, q, abar, kappa, omega, h on V_R(I_c)
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L129-L129 | R=r_B, c, lambda, x-tilde
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L129-L132 | O^e, (SL), D^e, Omega_c
EDGE: bpN:p4:projections | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L131-L131 | g_0=P_Lambda T_{K_a}f
EDGE: bpN:p6#data | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L130-L130 | kappa=2 pi K_a s, Z_{K_a}
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#bpN:p11:nf@L129-L129 | weighted norm
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: source: Pos93 pp.192-196 and Theorem p6:normal-form; the slow displacement (c) is new. The edge to bpN:p6:normal-form is the structural "indexing as in" template (the proof re-derives every estimate; only the theta-displacement is taken from Part 6, see nf-disp)
```

```text
NODE: stepN:p11:nf-first
KIND: step
TITLE: Step 0: hypotheses
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-first@L138-L138
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-first@L138-L138
CONTRACT_ID: stepN:p11:nf-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:nf; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: eps
SOURCE_CONCLUSION: eps<=alpha R/(2^7 q K_a)<=abar rho_0 sigma_0/(16 q) so y_0:=q eps/(abar rho_0 sigma_0)<=1/16 and the hypothesis delta<=abar rho sigma/(4q) of Theorem iterative holds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:iterative, bpN:p11:s-nf#data
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-first@L138-L138 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:iterative | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-first@L138-L138 | hypothesis delta<=abar rho sigma/(4q) to be verified
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:nf-case
KIND: step
TITLE: Step 0: two cases
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L141
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L141
CONTRACT_ID: stepN:p11:nf-case
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:nf; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: eps
SOURCE_CONCLUSION: Theorem iterative(d) with g=0: ¦f_1¦<=(1-2y_0)^{-1}(y_0+e^{-kappa/6})eps; Case A (e^{-kappa/6}<=y_0): eps_1<=(16/7)y_0 eps<=eps/kappa<=eps/4 (6.1); Case B: repeat with losses (R/4,s/3): ¦f_1¦_{R/2,s/3}<0.64 e^{-kappa/6}eps; stop with Psi=Phi_0', g=g_0, f_*=f_1 so (a),(b) hold
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:iterative, stepN:p11:nf-first, bpN:p6:ext-numerics, bpN:p11:ext-num, bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p11:s-nf#data, stepN:p11:nf-sl, bpN:p6:divisor
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L141 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L141 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L141 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L141 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
EDGE: stepN:p11:nf-sl | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L141 | direct use of stepN:p11:nf-sl in the statement or proof at this span
EDGE: bpN:p6:divisor | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L141 | direct use of bpN:p6:divisor in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:iterative | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L139 | Theorem iterative(d) with g=0
EDGE: stepN:p11:nf-first | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L139 | y_0<=1/16 and the hypotheses of step 0
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L139-L139 | (1-2y_0)^{-1}<=8/7 etc. (numerics of Part 6)
EDGE: bpN:p11:ext-num | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-case@L141-L141 | e>2.718 so 1/e<0.368
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: forward pointer to Step nf-disp dropped. This step is where the extended bracket constant 1 (instead of 2/e) is checked (Remark deviations)
```

```text
NODE: stepN:p11:nf-N
KIND: step
TITLE: Number of steps
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-N@L142-L142
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-N@L142-L142
CONTRACT_ID: stepN:p11:nf-N
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:nf; inside Case A, splitting N=0 and N>=1; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: N
SOURCE_CONCLUSION: N=floor(kappa/(12 ln 2)), kappa>8N; N=0: Psi=Phi_0, g=g_0, f_*=f_1, ¦f_*¦<=eps/4<=e^{-kappa/6}eps; N>=1: rho=R/(8N), sigma=s/(4N), R_i=3R/4-2(i-1)rho, s_i=2s/3-2(i-1)sigma, R_{N+1}=R_*, s_{N+1}=s_*, e^{-2 pi K_a sigma}<=1/8, rho sigma=Rs/(32N^2), eps<=abar R s/(2^10 q N), hence by (6.1) eps_1<=abar rho sigma/(2^8 q) (6.2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:nf-case, bpN:p6:ext-numerics, bpN:p4:norm, bpN:p11:s-nf#data
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-N@L142-L142 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-N@L142-L142 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:nf-case | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-N@L142-L142 | (6.1) eps_1<=eps/4 and eps_1<=2^7 q eps^2/(abar R s)
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-N@L142-L142 | 12 ln 2>8, ln 2>2/3, e^{-3 ln 2}=1/8
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:nf-induct
KIND: step
TITLE: Induction
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143
CONTRACT_ID: stepN:p11:nf-induct
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:nf; inside Case A with N>=1, using the usual induction hypothesis at step i; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: i in 1..N
SOURCE_CONCLUSION: step i is admissible and eps_{i+1}<=eps_i/4 (<0.1930 eps_i), so eps_i<=4^{1-i}eps_1; ¦g_{i-1}¦_*<=abar rho sigma/(2^4 q) with weights <=1/2 for g_j-g_{j-1} on V_j (j>=1) and <=1/N for g_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:iterative, stepN:p11:nf-N, stepN:p11:nf-case, stepN:p11:nf-sl, bpN:p6:setting, bpN:p6:ext-numerics, bpN:p4:domains, bpN:p11:s-nf#data, bpN:p4:norm, bpN:p11:ext-class
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143 | direct package or input used by this proof step
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:iterative | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143 | Theorem iterative(d) at step i
EDGE: stepN:p11:nf-N | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143 | the radii R_i,s_i, (6.2), e^{-2 pi K_a sigma}<=1/8
EDGE: stepN:p11:nf-case | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143 | eps_1 bound and eps<=...
EDGE: stepN:p11:nf-sl | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143 | (SL)_{rho,sigma} at every step
EDGE: bpN:p6:setting | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143 | ¦g_{i-1}¦_* computed from the decomposition with its weights
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-induct@L143-L143 | (1-2^{-7})^{-1}=128/127 and 4^{1-i} sums
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:nf-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144
CONTRACT_ID: stepN:p11:nf-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:nf; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: N
SOURCE_CONCLUSION: H o Psi=h+g+f_*, holomorphy, symplecticity (D Phi_i Omega_c D Phi_i^T=Omega_c), periodicity, injectivity from the telescoping lemma; (b) eps_{N+1}<=4^{-N-1}eps<=e^{-kappa/6}eps; (a) ¦g-g_0¦<=(4/3)eps_1<=16 c_1 eps^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:telescope, bpN:p11:iterative, stepN:p11:nf-induct, stepN:p11:nf-N, stepN:p11:nf-case, bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p11:wfield, bpN:p11:s-nf#data
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:telescope | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | Lemma telescope for subsets of C^{2n+2k} and maps with D Phi_i Omega_c D Phi_i^T=Omega_c
EDGE: bpN:p11:iterative | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | H_{i+1}=H_i o Phi_i and the properties of each Phi_i from Theorem iterative
EDGE: stepN:p11:nf-induct | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | eps_i<=4^{1-i}eps_1
EDGE: stepN:p11:nf-N | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | N, kappa>8, N+1>kappa/(12 ln 2)
EDGE: stepN:p11:nf-case | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-concl@L144-L144 | eps_1<=2^7 q eps^2/(abar R s)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: Part 11b L144-L145 asserts the extended telescoping application. Part 6 telescope is stated on C^{2n} with (DPhi)^T J DPhi=J, not for the arbitrary constant form Omega_c in the extended space. Its proof is a template; the required extension (and, at L144, translation equivariance under composition) is not stated there. No additional symplectic premise is imposed on nf.
```

```text
NODE: stepN:p11:nf-disp
KIND: step
TITLE: Displacement
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145
CONTRACT_ID: stepN:p11:nf-disp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:nf; handle Case A and Case B separately (not their conjunction); prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: i
SOURCE_CONCLUSION: by telescoping with the seminorms Pi_I, Pi_theta, Pi_{x-tilde}: Case A ¦Pi_I Psi-I¦<=1.17 q K_a eps/(e alpha)<=q K_a eps/alpha, ¦Pi_theta Psi-theta¦<=10 q eps/(abar R), ¦Pi_{x-tilde}Psi-x-tilde¦<=(e/16)1.17 q K_a eps/(e alpha)<(1/8)q K_a eps/alpha<=R/2^10 (by (i)); Case B: half of these
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:telescope, bpN:p11:iterative, stepN:p11:nf-case, stepN:p11:nf-N, stepN:p11:nf-induct, stepN:p6:nf-disp, bpN:p11:ext-num, bpN:p6:ext-numerics, bpN:p11:s-nf#data
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:telescope | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145 | Lemma telescope with the seminorms
EDGE: bpN:p11:iterative | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145 | Theorem iterative(b) per step
EDGE: stepN:p11:nf-case | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145 | Case A/B parameters, eps_1<=eps/4
EDGE: stepN:p11:nf-N | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145 | sigma=s/(4N), N, kappa
EDGE: stepN:p11:nf-induct | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145 | eps_i<=4^{1-i}eps_1
EDGE: stepN:p6:nf-disp | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145 | theta-displacement bound as in Part 6
EDGE: bpN:p11:ext-num | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145 | e>2.718 for the constants 1.17 and (e/16)
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-disp@L145-L145 | 12 ln 2>8
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: Part 11b L144-L145 asserts the extended telescoping application. Part 6 telescope is stated on C^{2n} with (DPhi)^T J DPhi=J, not for the arbitrary constant form Omega_c in the extended space. Its proof is a template; the required extension (and, at L144, translation equivariance under composition) is not stated there. No additional symplectic premise is imposed on nf.
```

```text
NODE: stepN:p11:nf-real
KIND: step
TITLE: Reality
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-real@L146-L146
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-real@L146-L146
CONTRACT_ID: stepN:p11:nf-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:nf; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: i
SOURCE_CONCLUSION: Psi is real at real points and g,f_* real
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:iterative
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:iterative | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:nf-real@L146-L146 | Theorem iterative(e) at each step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:br-fast
KIND: step
TITLE: Fast part
STATEMENT_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-fast@L26-L26
PROOF_SOURCE: blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-fast@L26-L26
CONTRACT_ID: stepN:p11:br-fast
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u,v as in Lemma bracket
SOURCE_QUANTIFIERS: u,v; rho,sigma
SOURCE_CONCLUSION: the fast part of {u,v}_c is bounded by (1/e)(1/((R_0-R+rho)sigma)+1/((s_0-s+sigma)rho))¦u¦¦v¦
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:bracket, bpN:p4:algebra, bpN:p4:cauchy, bpN:p11:ext-part4, bpN:p4:norm, bpN:p11:ext-class, bpN:p11:wfield
EDGE: bpN:p4:norm | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-fast@L26-L26 | direct package or input used by this proof step
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-fast@L26-L26 | direct package or input used by this proof step
EDGE: bpN:p11:wfield | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-fast@L26-L26 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:bracket | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-fast@L26-L26 | the fast estimate is that of Lemma bracket (B.4), re-run for O^e
EDGE: bpN:p4:algebra | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-fast@L26-L26 | its proof uses algebra
EDGE: bpN:p4:cauchy | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-fast@L26-L26 | its proof uses cauchy
EDGE: bpN:p11:ext-part4 | blueprint-N/parts/p11b-partial-nf.tex#stepN:p11:br-fast@L26-L26 | algebra and cauchy hold for O^e with the same constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the conclusion of p4:bracket is for m=n, so it is consumed through its proof (algebra, cauchy) applied to the extended class by ext-part4
```

```text
ITEM: p11a:sourcegap-L23
KIND: proof-region
SOURCE: blueprint-N/parts/p11a-partial-route.tex#sourcegap@L23-L23
DISPOSITION: NODE bpN:p11:nf
REASON: the chosen route (ii) asserts its normal-form bridge at bpN:p11:nf; topology mapping only. The unsupported factorial and extended-telescoping inputs are exposed as SOURCE_GAP in its proof steps; this disposition makes no proof-closure claim.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11ab
REVIEWER: -
```

Validation: source and imports SHA-256 pins verified; original slice structure checked; replacement/parser checks recorded below. No Lean or state-changing git command was run.

Final validation: every current node has exactly one verdict; proposed Part 11 records have matching DEPS/EDGE targets, existing targets and in-bounds locators; the in-memory combined graph has no cycles. Review application dry run has no unresolved FAILs.
