# P-p11a45 slice topology review

**Verdict: FAIL.** Tag: `sol-review-P-z`. Marker: `rev-P-z`.

Reviewed the 72 current nodes, 266 EDGE records, 131 current coverage items, and the full raw sources of Parts 11a-4 (266 lines) and 11a-5 (162 lines). This is a source topology review, not a Lean or proof-completion audit. Only this report is edited; no Lean or state-changing git command was run.

## Scope and checks

REVIEW-BRIEF.md and SPEC.md were read in full, including the P-FIXED revision and all writer rulings. The revision adds the seventh root P-FIXED and Parts 11/11a/13; the old deferred-P-FIXED exclusions do not govern this slice. The Z1-Z3 items are authorized track-P externals, and pi-c-uniq must remain a SOURCE_GAP. Current AGENTS.md, PLAN.md and DECISIONS.md were read earlier in this session and remain the working rules.

The source statements of all out-of-slice prerequisites were reread: Part 11a-1 index/sublevel/measure/power-law; Part 11a-2 domain/canonical-step; Part 11a-3 selection data, schedule and constants, finite divisor/measure/extension, initialization, admissibility, iteration, selection, exported sums and polynomial budgets; cited K and N source contracts at their imported locators; and the two frozen field/form definition files. Only manifest identity fields were consulted. No implementation modules, providers, frozen theorem proof bodies or manifest proof-state values were used.

HEAD observed during review: `4508821a8446130662b3efc449981289f66e839e`. Exact packet/source pins:

- `docs/graph/P/packets/P-p11a45.nodes.md`: `507635dafa9a2e3b8951ba939c98ed80c42b97418918bd0f6416d5dda33c2da2`.
- `docs/graph/P/packets/P-p11a45.coverage.md`: `311c3eb4b26c1ccfb0add854735b0dd59c6143b37ad523d102c510ec25415095`.
- `blueprint-P/parts/p11a4-limit-family.tex`: `c88030106491131ffde29078d1f0919ae092592bf37e1bbc68a87ab087369b2b`.
- `blueprint-P/parts/p11a5-quantitative-theorem.tex`: `f4ea938ec9baf0a280fded708fc7b2bbac4584a6347ad9d49da1291c73ad9b1d`.

```text
python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-p11a45 --structural
P-p11a45: 72 nodes, 266 edges, 131 coverage items, 0 problems, 0 TODO records (not counted: --structural)
```

`sha256sum -c docs/graph/P/CORPUS.sha256` and `sha256sum -c docs/graph/P/IMPORTS.sha256` both exit 0, with every listed file OK. Structural validity does not establish source fidelity or conditional applicability. Replacement-block checks in memory verified a one-to-one DEPS/EDGE match, valid source ranges, and a complete replacement for every failed node; the proposed reachable closure is acyclic and has no unknown prerequisite IDs. Packets were not changed to run those checks.

## Findings

- **Z1 — missing package and section-data edges.** Situation (S), schedule/parameter constants, the original-coordinate family and the theorem inputs are underlinked in individual steps. Shared compositions, the input-only A1-A4 package and the physical sets need independent definition records so their consumers can link them without theorem/proof cycles. The zero branch must use theorem inputs, not the strictly positive-radius situation.
- **Z2 — derived facts used as premises.** Step fields assume derivative/increment estimates, canonicity, convergence, good-set/Diophantine properties, Lipschitz estimates or uniqueness that the proof is supposed to obtain. Replace them by the enclosing source premises and legitimate branch conditions, keeping intermediate results in DEPS. Spell out A1-A4 for zero-case rather than leave an unresolved reference to a theorem it helps prove.
- **Z3 — direct-use and locator corrections.** Add the explicit composition/chain, segment mean-value and family-defect suppliers. Remove the N symplectic-flow edge used as a definition of a general canonical map and the whole-space lipeo comparison in a subset triangle-algebra proof. The qb-mono step uses a factorization directly readable from thresholds, not the beta<=1 conclusion of gamma-inverse on its larger beta<=M domain. lm-bounds uses z-uniform at L116, not L117.
- **Z4 — statement assertions dropped.** displacement-power L183 asserts simultaneous availability of the lower budget with the same fixed data; it is not provenance. Restore that conclusion and its supplier. K5 at 11a-5 L86 also identifies the general all-data budget, in addition to the beta-only estimate; retain it. The existing free-radius statement-level edges are correct and remain verbatim.
- **Z5 — preserve the honest uniqueness gap.** pi-c-uniq remains SOURCE_GAP. Its nearest N theorem is not an actual source-cited application; do not certify that edge. Explicit comparison intervals and the common initial time delimit what uniqueness means. ext-mvt supplies the cited local Lipschitz estimate only. No new external or missing uniqueness mathematics is supplied by this review.
- **Z6 — coverage.** Separately inventory the three labelled Z external items missed by pre-extraction; fix the mappings/reasons for the composition and original-coordinate section data and the canonical-map convention; inventory the two statement-data projections. All other dispositions, including the unused off-section normal-form SOURCE_GAP note, are valid.

## Node verdicts

Source spans are relative to `blueprint-P/parts/`; `11a4` means p11a4-limit-family.tex and `11a5` means p11a5-quantitative-theorem.tex. Every row includes both statement and proof spans when distinct. PASS is record-level source fidelity, not proof closure.

| Node ID | Verdict | Source spans reread | Reason |
|---|---|---|---|
| bpP:p11a:situation | FAIL | 11a4 L30-L32 | Z1: D_nu uses the domain definition inherited from File 11a-2 |
| bpP:p11a:z-chain | PASS | 11a4 L54-L54 | Fields, direct uses and locators match the source; writer external ruling respected where applicable. |
| bpP:p11a:z-compact | PASS | 11a4 L55-L55 | Fields, direct uses and locators match the source; writer external ruling respected where applicable. |
| bpP:p11a:z-uniform | PASS | 11a4 L56-L56 | Fields, direct uses and locators match the source; writer external ruling respected where applicable. |
| bpP:p11a:free-radius | PASS | 11a4 L35-L40; L41-L47 | Correct statement-level radius audit dependencies, source fields and locators; no reverse situation dependency. |
| stepP:p11a:fr-small | FAIL | 11a4 L42-L42 | Z2: retain the source data and radius definitions; facts proved by the radius audit are not premises; Z1: uses the selection-data package directly |
| stepP:p11a:fr-list | FAIL | 11a4 L44-L44 | Z2: retain the source data and radius definitions; facts proved by the radius audit are not premises; Z1: uses the selection-data package directly; Z1: uses the fixed T_0, t_0, lambda_max and admissible threshold |
| stepP:p11a:fr-other | FAIL | 11a4 L46-L46 | Z2: retain the source data and radius definitions; facts proved by the radius audit are not premises; Z1: uses the selection-data package directly; Z1: uses the fixed T_0, t_0, lambda_max and admissible threshold; Z1: the audit explicitly uses the statements (S1) and (S4) |
| bpP:p11a:composition | FAIL | 11a4 L66-L75; L76-L84 | Z1: uses the section definition of Phi^(nu) with the shared parameter |
| stepP:p11a:co-dom | FAIL | 11a4 L77-L77 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses the section definition of Phi^(nu) with the shared parameter; Z3: direct use of the composition/calculus rule or defining package at this proof step; Z1: uses the recurrence for r_nu, the strip losses and collar nesting |
| stepP:p11a:co-deriv | FAIL | 11a4 L79-L79 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses the section definition of Phi^(nu) with the shared parameter |
| stepP:p11a:co-disp | FAIL | 11a4 L81-L81 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses the section definition of Phi^(nu) with the shared parameter |
| stepP:p11a:co-inc | FAIL | 11a4 L83-L83 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses the section definition of Phi^(nu) with the shared parameter |
| bpP:p11a:param-lip-sum | PASS | 11a4 L86-L88; L89-L95 | Fields, direct uses and locators match the source; writer external ruling respected where applicable. |
| stepP:p11a:pl4-terms | FAIL | 11a4 L90-L92 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z3: direct use of the composition/calculus rule or defining package at this proof step |
| stepP:p11a:pl4-sum | FAIL | 11a4 L94-L94 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data |
| bpP:p11a:limit-map | FAIL | 11a4 L100-L108; L109-L117 | Z1: uses the section definition of Phi^(nu) with the shared parameter |
| stepP:p11a:lm-inc | FAIL | 11a4 L110-L110 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: uses the section definition of Phi^(nu) with the shared parameter |
| stepP:p11a:lm-der | FAIL | 11a4 L112-L112 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses the section definition of Phi^(nu) with the shared parameter |
| stepP:p11a:lm-hol | FAIL | 11a4 L114-L114 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses the section definition of Phi^(nu) with the shared parameter |
| stepP:p11a:lm-bounds | FAIL | 11a4 L116-L116 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses the section definition of Phi^(nu) with the shared parameter; Z3: the z-uniform use is on L116, not the end-of-proof line L117 |
| bpP:p11a:sec-limit#data | PASS | 11a4 L119-L121 | Fields, direct uses and locators match the source; writer external ruling respected where applicable. |
| bpP:p11a:limit-torus | PASS | 11a4 L123-L133; L134-L148 | Fields, direct uses and locators match the source; writer external ruling respected where applicable. |
| stepP:p11a:lt-field | FAIL | 11a4 L135-L135 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses K_b, the family K or its defect from the original-coordinate section data |
| stepP:p11a:lt-cov | FAIL | 11a4 L137-L139 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses the section definition of Phi^(nu) with the shared parameter; Z3: direct use of the composition/calculus rule or defining package at this proof step; Z3: the imported theorem proves symplecticity of a specified flow; this step uses the canonical identity already supplied by composition |
| stepP:p11a:lt-lim | FAIL | 11a4 L141-L141 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses the section definition of Phi^(nu) with the shared parameter; Z1: uses K_b, the family K or its defect from the original-coordinate section data |
| stepP:p11a:lt-lag | FAIL | 11a4 L143-L143 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses the section definition of Phi^(nu) with the shared parameter; Z1: uses K_b, the family K or its defect from the original-coordinate section data |
| stepP:p11a:lt-emb | FAIL | 11a4 L145-L145 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data |
| stepP:p11a:lt-dio | FAIL | 11a4 L147-L147 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data |
| bpP:p11a:displacement | PASS | 11a4 L157-L164; L165-L169 | Fields, direct uses and locators match the source; writer external ruling respected where applicable. |
| stepP:p11a:dp-tel | FAIL | 11a4 L166-L166 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses K_b, the family K or its defect from the original-coordinate section data |
| stepP:p11a:dp-size | FAIL | 11a4 L168-L168 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data |
| bpP:p11a:gamma-inverse | PASS | 11a4 L171-L175; L176-L178 | Fields, direct uses and locators match the source; writer external ruling respected where applicable. |
| stepP:p11a:gi-branches | FAIL | 11a4 L177-L177 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS |
| bpP:p11a:displacement-power | FAIL | 11a4 L180-L184; L185-L187 | Z1: uses K_b, the family K or its defect from the original-coordinate section data; Z4: restore the statement assertion that the lower budget is available with the same fixed data; Z4: the statement explicitly asserts the simultaneous lower budget from adm-budget-beta; Z4: the simultaneous-budget sentence is a source assertion, not a removable provenance remark |
| stepP:p11a:dpc-comb | FAIL | 11a4 L186-L186 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data |
| bpP:p11a:lipschitz-family | PASS | 11a4 L192-L197; L198-L206 | Fields, direct uses and locators match the source; writer external ruling respected where applicable. |
| stepP:p11a:lf-split | FAIL | 11a4 L199-L199 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses K_b, the family K or its defect from the original-coordinate section data |
| stepP:p11a:lf-tel | FAIL | 11a4 L201-L201 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses the section definition of Phi^(nu) with the shared parameter; Z1: uses K_b, the family K or its defect from the original-coordinate section data |
| stepP:p11a:lf-stage | FAIL | 11a4 L203-L203 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z3: direct use of the composition/calculus rule or defining package at this proof step |
| stepP:p11a:lf-sum | FAIL | 11a4 L205-L205 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses K_b, the family K or its defect from the original-coordinate section data |
| bpP:p11a:evaluation-bilipschitz | PASS | 11a4 L212-L223; L224-L232 | Fields, direct uses and locators match the source; writer external ruling respected where applicable. |
| stepP:p11a:eb-bounds | FAIL | 11a4 L225-L225 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z3: lipeo is a whole-space theorem; this subset estimate is proved directly by triangle algebra, with the comparison only explanatory |
| stepP:p11a:eb-ext | FAIL | 11a4 L227-L227 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data; Z1: uses K_b, the family K or its defect from the original-coordinate section data; Z3: direct use of the composition/calculus rule or defining package at this proof step |
| stepP:p11a:eb-meas | FAIL | 11a4 L229-L229 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data |
| stepP:p11a:eb-cpt | FAIL | 11a4 L231-L231 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z1: direct use of the standing situation (S), including the chosen iteration and its data |
| bpP:p11a:thresholds | PASS | 11a5 L23-L33 | Fields, direct uses and locators match the source; writer external ruling respected where applicable. |
| bpP:p11a:budget | PASS | 11a5 L37-L46; L47-L55 | Fields, direct uses and locators match the source; writer external ruling respected where applicable. |
| stepP:p11a:qb-comp | FAIL | 11a5 L48-L48 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions |
| stepP:p11a:qb-mono | FAIL | 11a5 L50-L50 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z3: only the explicit C_Dio factorization is used, available algebraically from thresholds; do not apply the beta<=1 bound to the larger threshold domain; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions |
| stepP:p11a:qb-poly | FAIL | 11a5 L52-L52 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions |
| stepP:p11a:qb-beta | FAIL | 11a5 L54-L54 | Z2: use the enclosing source premises; intermediate estimates, identities and conclusions belong in DEPS; Z3: direct use of the composition/calculus rule or defining package at this proof step; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions |
| bpP:p11a:zero-case | FAIL | 11a5 L61-L63; L64-L68 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: spell out the data and A1-A4 without assuming the later theorem or its conclusions |
| stepP:p11a:zc-set | FAIL | 11a5 L65-L65 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z2: the Diophantine bound and explicit field formula are proved here, not assumed |
| stepP:p11a:zc-tori | FAIL | 11a5 L67-L67 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z2: the Diophantine bound and explicit field formula are proved here, not assumed; Z1: uses the named gamma or monotone threshold and its numerical data directly |
| bpP:p11a:weak-kam-quantitative | FAIL | 11a5 L72-L91; L92-L110 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z4: retain the general polynomial-budget assertion in the K5 statement; Z4: the K5 statement identifies both the beta budget and the general all-data polynomial bound; Z4: keep source assertions separate from consumer-interface pointers |
| stepP:p11a:qt-order | FAIL | 11a5 L93-L93 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions |
| stepP:p11a:qt-reduce | FAIL | 11a5 L95-L95 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions |
| stepP:p11a:qt-zero | FAIL | 11a5 L97-L97 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z1: uses the named gamma or monotone threshold and its numerical data directly |
| stepP:p11a:qt-iter | FAIL | 11a5 L99-L99 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z1: uses the named gamma or monotone threshold and its numerical data directly |
| stepP:p11a:qt-k2 | FAIL | 11a5 L101-L101 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z3: supplies calH=H_infty, w_b and the positive-eps iteration to which this result is applied; Z1: applies the Part 11a-4 result in its standing situation (S), for eps_f>0; Z1: uses the constructed original-coordinate family and defect |
| stepP:p11a:qt-k3 | FAIL | 11a5 L103-L103 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z1: uses the named gamma or monotone threshold and its numerical data directly; Z3: supplies calH=H_infty, w_b and the positive-eps iteration to which this result is applied; Z1: applies the Part 11a-4 result in its standing situation (S), for eps_f>0; Z1: uses the constructed original-coordinate family and defect |
| stepP:p11a:qt-k4 | FAIL | 11a5 L105-L105 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z3: supplies calH=H_infty, w_b and the positive-eps iteration to which this result is applied; Z1: applies the Part 11a-4 result in its standing situation (S), for eps_f>0; Z1: uses the constructed original-coordinate family and defect |
| stepP:p11a:qt-k5 | FAIL | 11a5 L107-L107 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z1: uses the named gamma or monotone threshold and its numerical data directly |
| stepP:p11a:qt-k6 | FAIL | 11a5 L109-L109 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z1: uses the named gamma or monotone threshold and its numerical data directly; Z3: supplies calH=H_infty, w_b and the positive-eps iteration to which this result is applied; Z1: applies the Part 11a-4 result in its standing situation (S), for eps_f>0; Z1: uses the constructed original-coordinate family and defect; Z2: do not invoke positive-radius results with eps_f=0 |
| bpP:p11a:physical-interface | FAIL | 11a5 L116-L125; L126-L135 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z1: uses S, S~ and the chosen family as defined at the physical-interface statement |
| stepP:p11a:pi-zero | FAIL | 11a5 L127-L127 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z1: uses S, S~ and the chosen family as defined at the physical-interface statement |
| stepP:p11a:pi-a | FAIL | 11a5 L128-L128 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z1: uses S, S~ and the chosen family as defined at the physical-interface statement; Z1: uses the positive-eps Part 11a-4 situation in this source branch |
| stepP:p11a:pi-b | FAIL | 11a5 L130-L130 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z1: uses S, S~ and the chosen family as defined at the physical-interface statement |
| stepP:p11a:pi-c | FAIL | 11a5 L132-L132 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z1: uses S, S~ and the chosen family as defined at the physical-interface statement; Z1: uses the positive-eps Part 11a-4 situation in this source branch |
| stepP:p11a:pi-c-uniq | FAIL | 11a5 L132-L132 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z1: uses S, S~ and the chosen family as defined at the physical-interface statement; Z5: nearest supplier is not a cited application; keep the named Picard-Lindelof use as SOURCE_GAP; Z5: keep the exact local uniqueness obligation, without assuming uniqueness itself; Z5: make the comparison interval and common initial time explicit; Z5: uniqueness is equality on the comparison interval, not an unspecified all-time equality; Z5: retain the writer-mandated gap and distinguish candidate provenance from a used prerequisite |
| stepP:p11a:pi-d | FAIL | 11a5 L134-L134 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation; Z2: restore source inputs and branch conditions; invoked conclusions are dependency outputs, not extra assumptions; Z1: uses S, S~ and the chosen family as defined at the physical-interface statement |

## Coverage failures

| Coverage item | Verdict | Reason |
|---|---|---|
| bpP:p11a:z-chain | FAIL | Z6: separately inventory this labelled external item, authorized by the writer ruling |
| bpP:p11a:z-compact | FAIL | Z6: separately inventory this labelled external item, authorized by the writer ruling |
| bpP:p11a:z-uniform | FAIL | Z6: separately inventory this labelled external item, authorized by the writer ruling |
| p11a4:prose-L64-L64 | FAIL | Z1: the definition must be available to the composition proof without depending on its own result |
| p11a4:prose-L119-L121 | FAIL | Z1: a via-limit-map path is not a direct section-data edge |
| p11a4:prose-L28-L28 | FAIL | Z3: the N symplectic-flow theorem is not a generic definition of a canonical map |
| p11a5:statement-inputs-L73-L80 | FAIL | Z1: input-only section package for all theorem/zero-case consumers, with no conclusion assumptions |
| p11a5:statement-sets-L117-L117 | FAIL | Z1: reusable set definitions S and S~ before the physical-interface conclusions |

all other coverage items PASS

The three Z items and two statement-data items are additions to the inventory; the other three rows replace existing mappings/reasons. The single prose item for the Z list does not separately inventory its three labelled units. No exclusion is changed merely because P-FIXED was formerly deferred.

## Focused applicability and cycle checks

**Free radius.** L38 claims that admissibility, inductive-lemma, parameter-selection and exported-sums survive the new choice s_0=sqrt(2 eps/(N C_1)); its edges to these source statements are direct. fr-small proves s_0<=lambda_max/(N C_1), eps_0=2 eps and lambda_0<=lambda_max. fr-list supplies A1-A7 by the original proof, including initial domain guards. fr-other audits the remaining radius uses. None of the Part 11a-3 suppliers needs a backward free-radius/situation edge. Retaining these statement edges is necessary and does not form a cycle.

**Limit and family.** The tori use only the zero section. The derivative budget is the unscaled fixed max/operator norm (row sums), not the shrinking action-weighted norm. Composition domains provide the common angular strip; summable increments and Cauchy yield the derivative limit. The first action jet of R_nu tends to zero; no second-jet or off-section normal form is claimed. The local/distant parameter comparison uses the collar and a one-variable Cauchy estimate, not convexity of the Cantor set. The equal-parameter case in lf-stage is the trivial zero-difference case before normalizing the direction.

**Imported contracts.** ext-cauchy requires a closed contour in an open holomorphy domain; the source bounds follow by choosing smaller radii and taking the radius limit inside the available strips/collars. uniform-limits requires pointwise function convergence and uniform derivative convergence, both supplied by lm-inc/lm-der. McShane applies to the max-norm vector-valued defect on its actual subset; only after extending it does the whole-space lipeo theorem apply. The measure estimate uses dimension 2N and the inverse Lipschitz constant (1-lambda_*)^-1. Positive compact H and the half-open cell are retained; countable compact exhaustion gives Borelness.

**Thresholds and zero.** eps_adm in 11a-4 is the original eps_adm^(3); in 11a-5 it is the monotone minorant eps_adm^flat. qt-reduce uses the budget comparison for M_0^act<=M_0, with gamma unchanged; this supplies the positive-branch application. eps_f=0 has u=0, uses the unperturbed frequency power-law set with 2 gamma, and never invokes free-radius at zero. The explicit min displacement bound of K3/K6 and fixed-data independence from beta are preserved. Physical-interface step pi-c applies the positive-radius results only after pi-zero.

**Uniqueness.** The writer explicitly requires pi-c-uniq to stay a gap. The candidate N result requires a C^1 field on open W, two IsSolIn curves on intervals and a common initial value/time. It would prove equality on the comparison interval, not unspecified equality on all real times for any curve. The source names Picard-Lindelof, so the recorded gap passes as an honest obligation after removing the invented supplier-use claim.

**Reachability and exclusions.** The named quantitative theorem/budget/displacement/evaluation outputs feed the live P-FIXED route through Parts 11/13. The why-free, no-normal-form and r3-verdict remarks and the source/route/consumer paragraphs are explanatory or non-use statements; no proof consumes the excluded off-section normal form. Statement-only references to Part 11 kam-input are not edges back to that consumer. Zero-case uses the theorem inputs, which are separated as data below, not a reverse edge to weak-kam-quantitative.

## Replacement fragments for slice P-p11a45

Complete blocks follow. Unaffected lines of existing records are copied verbatim; only failing fields and their matching edges change. Newly extracted definitions assume source inputs only. These proposals require independent delta review after application.

### bpP:p11a:situation

```text
NODE: bpP:p11a:situation
KIND: definition
TITLE: The situation $(\mathrm S)$
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:situation@L30-L32
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11a:situation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: typing data of Part 11a-4: Assumption bpP:p11a:sel-data holds with gamma=gamma_*(eps*)/2; 0<eps<=eps_adm with ¦f¦<=eps on T_s x U; schedule of Definition schedule with T_0, t_0 of Definition adm-params and s_0=s_0(eps) of Lemma free-radius, eps_0=2 eps; the iteration of Proposition inductive-lemma (nested compact K_nu, B_nu=K_nu+t_nu, maps X_nu, remainders R_nu, frequencies omega_nu), K_infty=∩K_nu⊃H_infty and omega_* of Theorem parameter-selection
SOURCE_QUANTIFIERS: data, eps*, (gamma, eps_adm), then f with ¦f¦<=eps<=eps_adm; the iteration is an output; abbreviations D_nu:=D(r_nu,s_nu;B_nu), a_nu:=A_{1,nu}, alpha_nu:=A_{eta,nu}, m_nu:=2 kappa_nu+kappa_nu s_nu/sigma_nu
SOURCE_CONCLUSION: defines the standing situation (S) of Part 11a-4: all objects of Files 11a-1 to 11a-3 at the radius s_0(eps) with eps_0=2 eps; no conclusion (Diophantine property, tori, Lipschitz bound) is assumed; eps=0 is not treated
CONSTANT_SCOPE: s_0=s_0(eps) is chosen from eps and the data (Lemma free-radius), not a datum; eps_adm, gamma, T_0, t_0 depend on the data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:sel-data, bpP:p11a:schedule, bpP:p11a:adm-params, bpP:p11a:free-radius, bpP:p11a:inductive-lemma, bpP:p11a:parameter-selection, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:situation@L31-L31 | data of Assumption sel-data
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:situation@L31-L31 | the schedule with T_0, t_0, s_0, eps_0
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:situation@L31-L31 | eps_adm, T_0, t_0
EDGE: bpP:p11a:free-radius | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:situation@L31-L31 | radius s_0(eps) and eps_0=2 eps
EDGE: bpP:p11a:inductive-lemma | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:situation@L31-L31 | the iteration: K_nu, X_nu, R_nu, omega_nu and the quantities of (O3)
EDGE: bpP:p11a:parameter-selection | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:situation@L31-L31 | K_infty, H_infty, omega_*
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:situation@L31-L31 | Z1: D_nu uses the domain definition inherited from File 11a-2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Section data (conventions L28 and the situation (S), L30-L32); the conventions paragraph L28 is mapped to limit-torus and the lemmas that use X_phi, Omega_0, canonical maps.
```

### stepP:p11a:fr-small

```text
NODE: stepP:p11a:fr-small
KIND: step
TITLE: The radius is smaller
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-small@L42-L42
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-small@L42-L42
CONTRACT_ID: stepP:p11a:fr-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpP:p11a:sel-data; 0<eps<=eps_adm of bpP:p11a:adm-params; s_0:=(2 eps/(N C_1))^{1/2}; eps_0:=eps+(N/2)C_1 s_0^2 and lambda_0:=eps_0/s_0 (the source local definitions)
SOURCE_QUANTIFIERS: eps in (0,eps_adm]
SOURCE_CONCLUSION: s_0<=lambda_max/(N C_1) (equivalent to eps<=eps_adm), eps_0=2 eps and lambda_0=2 eps/s_0=(2 N C_1 eps)^{1/2}<=lambda_max
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:adm-params, bpP:p11a:sel-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-small@L42-L42 | lambda_max, eps_adm=lambda_max^2/(2 N C_1)
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-small@L42-L42 | Z1: uses the selection-data package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:fr-list

```text
NODE: stepP:p11a:fr-list
KIND: step
TITLE: The list (A1)--(A7)
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-list@L44-L44
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-list@L44-L44
CONTRACT_ID: stepP:p11a:fr-list
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpP:p11a:sel-data; 0<eps<=eps_adm of bpP:p11a:adm-params; s_0:=(2 eps/(N C_1))^{1/2}; eps_0:=eps+(N/2)C_1 s_0^2 and lambda_0:=eps_0/s_0 (the source local definitions)
SOURCE_QUANTIFIERS: eps in (0,eps_adm]
SOURCE_CONCLUSION: (A1)-(A7) hold for (T_0,t_0,s_0,eps_0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:adm-choice, stepP:p11a:ac-lam, stepP:p11a:ac-list, bpP:p11a:initial, stepP:p11a:fr-small, bpP:p11a:sel-data, bpP:p11a:adm-params
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:adm-choice | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-list@L44-L44 | Proposition adm-choice whose list is re-established
EDGE: stepP:p11a:ac-lam | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-list@L44-L44 | the step lambda_0<=lambda_max
EDGE: stepP:p11a:ac-list | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-list@L44-L44 | the step (A1)-(A7)
EDGE: bpP:p11a:initial | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-list@L44-L44 | (A7) is Lemma initial with hypotheses s_0<=vartheta, t_0<=vartheta
EDGE: stepP:p11a:fr-small | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-list@L44-L44 | s_0<=lambda_max/(N C_1) and lambda_0<=lambda_max
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-list@L44-L44 | Z1: uses the selection-data package directly
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-list@L44-L44 | Z1: uses the fixed T_0, t_0, lambda_max and admissible threshold
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:fr-other

```text
NODE: stepP:p11a:fr-other
KIND: step
TITLE: No other use of $s_0$
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-other@L46-L46
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-other@L46-L46
CONTRACT_ID: stepP:p11a:fr-other
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpP:p11a:sel-data; 0<eps<=eps_adm of bpP:p11a:adm-params; s_0:=(2 eps/(N C_1))^{1/2}; eps_0:=eps+(N/2)C_1 s_0^2 and lambda_0:=eps_0/s_0 (the source local definitions)
SOURCE_QUANTIFIERS: eps in (0,eps_adm]
SOURCE_CONCLUSION: no other use of s_0 than those covered by Step fr-list: the results of 11a-3 hold verbatim at the new radius
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:initial, stepP:p11a:fr-list, bpP:p11a:finite-divisor, bpP:p11a:finite-measure, bpP:p11a:adm-choice, bpP:p11a:schedule, bpP:p11a:exported-sums, bpP:p11a:finite-extension, bpP:p11a:sel-data, bpP:p11a:adm-params, bpP:p11a:schedule-props
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:initial | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-other@L46-L46 | Lemma initial uses s_0
EDGE: stepP:p11a:fr-list | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-other@L46-L46 | (A1)-(A7) cover these uses
EDGE: bpP:p11a:finite-divisor | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-other@L46-L46 | finite-stage lemma involves lambda_0 but not s_0
EDGE: bpP:p11a:finite-measure | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-other@L46-L46 | finite-stage lemma involves lambda_0 (through (S3), (A5)) but not s_0
EDGE: bpP:p11a:adm-choice | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-other@L46-L46 | (A5) involves lambda_0 only
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-other@L46-L46 | s_nu=s_0 q^nu and lambda_0=eps_0/s_0
EDGE: bpP:p11a:exported-sums | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-other@L46-L46 | (E2), (E3) use s_0 through s_0<=t_0 and s_nu/sigma_nu<=s_0/varsigma_0
EDGE: bpP:p11a:finite-extension | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-other@L46-L46 | chain extension involves lambda_0 but not s_0
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-other@L46-L46 | Z1: uses the selection-data package directly
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-other@L46-L46 | Z1: uses the fixed T_0, t_0, lambda_max and admissible threshold
EDGE: bpP:p11a:schedule-props | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:fr-other@L46-L46 | Z1: the audit explicitly uses the statements (S1) and (S4)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p11a:composition

```text
NODE: bpP:p11a:composition
KIND: lemma
TITLE: The compositions
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L66-L75
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L76-L84
CONTRACT_ID: bpP:p11a:composition
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); nu>=0
SOURCE_QUANTIFIERS: data, eps and the iteration fixed; for every nu>=0
SOURCE_CONCLUSION: with Phi^(0)=id, Phi^(nu+1)(.,b)=Phi^(nu)(.,b) o X_{nu,b}: (a) X_nu maps D_{nu+1} into D_nu, Phi^(nu) is holomorphic in (theta,eta,b) on D_nu with values in D_0, canonical, equivariant, real, and H_nu=H_0 o Phi^(nu); (b) ¦D Phi^(nu)-1¦_inf<=e^{sum_{j<nu} m_j}-1<=2^-11; (c) componentwise displacement ¦Phi^(nu)_theta-theta¦<=sum_{j<nu} a_j, ¦Phi^(nu)_eta-eta¦<=sum_{j<nu} alpha_j; (d) increment ¦Phi^(nu+1)-Phi^(nu)¦_inf<=(1+2^-11) max{a_nu,alpha_nu} on D_{nu+1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:co-dom, stepP:p11a:co-deriv, stepP:p11a:co-disp, stepP:p11a:co-inc, bpP:p11a:situation, bpP:p11a:sec-comp#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:co-dom | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L77-L77 | proof step
EDGE: stepP:p11a:co-deriv | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L79-L79 | proof step
EDGE: stepP:p11a:co-disp | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L81-L81 | proof step
EDGE: stepP:p11a:co-inc | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L83-L83 | proof step
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L67-L67 | situation (S): D_nu, a_nu, alpha_nu, m_nu, X_nu
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L66-L66 | Z1: uses the section definition of Phi^(nu) with the shared parameter
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: bpP:p11a:exported-sums is cited in the \source line (provenance); the proof consumes (E2) in co-deriv, where the edge is.
```

### stepP:p11a:co-dom

```text
NODE: stepP:p11a:co-dom
KIND: step
TITLE: Domains
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-dom@L77-L77
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-dom@L77-L77
CONTRACT_ID: stepP:p11a:co-dom
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); nu>=0
SOURCE_QUANTIFIERS: nu>=0 (induction)
SOURCE_CONCLUSION: Phi^(nu+1)=Phi^(nu) o X_nu is defined and holomorphic on D_{nu+1} with values in D_0; canonicity, equivariance, reality pass to compositions; H_nu=H_0 o Phi^(nu)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:inductive-lemma, bpP:p11a:situation, bpP:p11a:sec-comp#data, bpP:p11a:z-chain, bpP:p11a:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:inductive-lemma | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-dom@L77-L77 | (O3): domain, values, canonicity, equivariance, reality; (P_nu)(c): H_nu=H_0 o X_0 o...o X_{nu-1}
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-dom@L77-L77 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-dom@L77-L77 | Z1: uses the section definition of Phi^(nu) with the shared parameter
EDGE: bpP:p11a:z-chain | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-dom@L77-L77 | Z3: direct use of the composition/calculus rule or defining package at this proof step
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-dom@L77-L77 | Z1: uses the recurrence for r_nu, the strip losses and collar nesting
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:co-deriv

```text
NODE: stepP:p11a:co-deriv
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-deriv@L79-L79
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-deriv@L79-L79
CONTRACT_ID: stepP:p11a:co-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); nu>=0
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: 1+p_{nu+1}<=(1+p_nu)(1+m_nu), so p_nu<=e^{sum_{j<nu} m_j}-1<=2^-11 (e^x-1<=x e^x for x<=2^-12)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:inductive-lemma, bpP:p11a:canonical-step, bpP:p11a:exported-sums, bpP:p11a:z-chain, stepP:p11a:co-dom, bpP:p11a:situation, bpP:p11a:sec-comp#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:inductive-lemma | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-deriv@L79-L79 | (O3): unscaled derivative bound ¦D X_nu-1¦_inf<=m_nu
EDGE: bpP:p11a:canonical-step | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-deriv@L79-L79 | the bound is valid on D_+=D_{nu+1} by Proposition canonical-step
EDGE: bpP:p11a:exported-sums | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-deriv@L79-L79 | (E2): sum_j m_j<=2^-12
EDGE: bpP:p11a:z-chain | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-deriv@L79-L79 | chain rule, submultiplicativity of operator norms, 1+x<=e^x and e^x-1<=x e^x
EDGE: stepP:p11a:co-dom | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-deriv@L79-L79 | X_nu z in D_nu
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-deriv@L79-L79 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-deriv@L79-L79 | Z1: uses the section definition of Phi^(nu) with the shared parameter
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:co-disp

```text
NODE: stepP:p11a:co-disp
KIND: step
TITLE: (c) Displacement
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-disp@L81-L81
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-disp@L81-L81
CONTRACT_ID: stepP:p11a:co-disp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); nu>=0
SOURCE_QUANTIFIERS: nu>=0 (induction), (theta,eta,b) in D_{nu+1}
SOURCE_CONCLUSION: componentwise ¦Phi^(nu)_theta-theta¦<=sum_{j<nu} a_j and ¦Phi^(nu)_eta-eta¦<=sum_{j<nu} alpha_j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:inductive-lemma, stepP:p11a:co-dom, bpP:p11a:situation, bpP:p11a:sec-comp#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:inductive-lemma | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-disp@L81-L81 | (O3): displacement bounds A_{1,nu}, A_{eta,nu} of X_nu
EDGE: stepP:p11a:co-dom | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-disp@L81-L81 | w=X_nu(z) lies in D_nu
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-disp@L81-L81 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-disp@L81-L81 | Z1: uses the section definition of Phi^(nu) with the shared parameter
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:co-inc

```text
NODE: stepP:p11a:co-inc
KIND: step
TITLE: (d) Increment
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-inc@L83-L83
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-inc@L83-L83
CONTRACT_ID: stepP:p11a:co-inc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); nu>=0
SOURCE_QUANTIFIERS: (z,b) in D_{nu+1}
SOURCE_CONCLUSION: ¦Phi^(nu)(w,b)-Phi^(nu)(z,b)¦<=(1+2^-11) max{a_nu,alpha_nu}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-mvt, stepP:p11a:co-deriv, stepP:p11a:co-dom, bpP:p11a:inductive-lemma, bpP:p11a:situation, bpP:p11a:sec-comp#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-inc@L83-L83 | mean value inequality on the convex fibre
EDGE: stepP:p11a:co-deriv | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-inc@L83-L83 | ¦D Phi^(nu)-1¦<=2^-11 (part (b))
EDGE: stepP:p11a:co-dom | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-inc@L83-L83 | z, w in the fibre of D_nu
EDGE: bpP:p11a:inductive-lemma | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-inc@L83-L83 | ¦w-z¦<=max{a_nu,alpha_nu} from (O3)
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-inc@L83-L83 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:co-inc@L83-L83 | Z1: uses the section definition of Phi^(nu) with the shared parameter
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:pl4-terms

```text
NODE: stepP:p11a:pl4-terms
KIND: step
TITLE: The terms
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-terms@L90-L92
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-terms@L90-L92
CONTRACT_ID: stepP:p11a:pl4-terms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); S_b:=sum_{j>=0}(a_j+alpha_j)/t_{j+1}
SOURCE_QUANTIFIERS: j>=0
SOURCE_CONCLUSION: a_j/t_{j+1}<=(2 varsigma_0 Q_0 2^{tau+1}/(C_Q t_0)) g_4^j and alpha_j/t_{j+1}<=(s_0 Q_0 2^{tau+1}/(32 t_0))(2 q g_4)^j, since g_4=g_1 2^tau
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:exported-sums, bpP:p11a:schedule-consts, bpP:p11a:schedule, bpP:p11a:situation, bpP:p11a:schedule-props
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:exported-sums | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-terms@L90-L90 | (E1) bounds for a_j, alpha_j, Q_j
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-terms@L92-L92 | g_4=g_1 zeta Theta^{tau+1}=g_1 2^tau
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-terms@L90-L90 | sigma_j, s_j, t_{j+1}
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-terms@L90-L90 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:schedule-props | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-terms@L90-L90 | Z3: direct use of the composition/calculus rule or defining package at this proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:pl4-sum

```text
NODE: stepP:p11a:pl4-sum
KIND: step
TITLE: Summation
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-sum@L94-L94
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-sum@L94-L94
CONTRACT_ID: stepP:p11a:pl4-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); S_b:=sum_{j>=0}(a_j+alpha_j)/t_{j+1}
SOURCE_QUANTIFIERS: sum over j>=0
SOURCE_CONCLUSION: S_b<=(32/31) Q_0 Xi (2/C_Q+1/32)<=0.046*2^-10<=2^-10/16
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:pl4-terms, bpP:p11a:schedule-ratios, bpP:p11a:adm-choice, bpP:p11a:adm-params, bpP:p11a:schedule-consts, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:pl4-terms | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-sum@L94-L94 | termwise bounds being summed
EDGE: bpP:p11a:schedule-ratios | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-sum@L94-L94 | g_4<=2^-5 and 2q<=1
EDGE: bpP:p11a:adm-choice | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-sum@L94-L94 | (A3): s_0<=t_0; (A4): Q_0 Xi<=2^-10
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-sum@L94-L94 | Xi>=2^{tau+1} varsigma_0/t_0 and Xi>=2^{tau+1}
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-sum@L94-L94 | C_Q=18N(4N+5)>=162
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-sum@L94-L94 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p11a:limit-map

```text
NODE: bpP:p11a:limit-map
KIND: proposition
TITLE: Limit map; Rus01 Thm 15.5, zero section
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L100-L108
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L109-L117
CONTRACT_ID: bpP:p11a:limit-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); b in K_infty; Phi^(nu)_b(theta):=Phi^(nu)((theta,0),b) for theta in T_{s/4}
SOURCE_QUANTIFIERS: data, eps, iteration fixed; b in K_infty
SOURCE_CONCLUSION: (a) Phi^(nu)_b converges uniformly on T_{s/4} to a holomorphic K~_b real on R^N, with D Phi^(nu)_b->D K~_b uniformly and increments ¦delta_nu¦_inf<=(1+2^-11) max{a_nu,alpha_nu}; (b) K~_b(theta+k)=K~_b(theta)+(k,0), so the defect u_b=K~_b-(theta,0) is Z^N-periodic; (c) ¦u^theta_b¦<=sum a_j, ¦u^eta_b¦<=sum alpha_j and ¦D_theta u_b¦<=2^-11 on T_{s/4}; on R^N u_b is 2^-11-Lipschitz in the max norm
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:lm-inc, stepP:p11a:lm-der, stepP:p11a:lm-hol, stepP:p11a:lm-bounds, bpP:p11a:situation, bpP:p11a:composition, bpP:p11a:sec-comp#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:lm-inc | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L110-L110 | proof step
EDGE: stepP:p11a:lm-der | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L112-L112 | proof step
EDGE: stepP:p11a:lm-hol | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L114-L114 | proof step
EDGE: stepP:p11a:lm-bounds | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L116-L116 | proof step
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L101-L101 | situation (S) and K_infty
EDGE: bpP:p11a:composition | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L101-L101 | Phi^(nu) of Lemma composition
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L100-L100 | Z1: uses the section definition of Phi^(nu) with the shared parameter
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lm-inc

```text
NODE: stepP:p11a:lm-inc
KIND: step
TITLE: Increments
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-inc@L110-L110
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-inc@L110-L110
CONTRACT_ID: stepP:p11a:lm-inc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); b in K_infty; Phi^(nu)_b(theta):=Phi^(nu)((theta,0),b) for theta in T_{s/4}
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: Phi^(nu)_b is uniformly Cauchy on T_{s/4} and converges uniformly; ¦delta_nu¦<=(1+2^-11) max{a_nu,alpha_nu}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:strip-budget, bpP:p11a:composition, bpP:p11a:exported-sums, bpP:p11a:z-uniform, bpP:p11a:situation, bpP:p11a:sec-comp#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:strip-budget | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-inc@L110-L110 | r_{nu+1}>=s/2
EDGE: bpP:p11a:composition | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-inc@L110-L110 | (d) increment bound
EDGE: bpP:p11a:exported-sums | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-inc@L110-L110 | (E2): sum_nu(a_nu+alpha_nu)<infty
EDGE: bpP:p11a:z-uniform | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-inc@L110-L110 | a uniformly Cauchy sequence converges uniformly
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-inc@L110-L110 | b in K_infty subset B_{nu+1}, s_{nu+1}>0
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-inc@L110-L110 | Z1: uses the section definition of Phi^(nu) with the shared parameter
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lm-der

```text
NODE: stepP:p11a:lm-der
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-der@L112-L112
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-der@L112-L112
CONTRACT_ID: stepP:p11a:lm-der
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); b in K_infty; Phi^(nu)_b(theta):=Phi^(nu)((theta,0),b) for theta in T_{s/4}
SOURCE_QUANTIFIERS: nu>=0, theta in T_{s/4}
SOURCE_CONCLUSION: partial derivatives of delta_nu are bounded by 4(1+2^-11) max{a_nu,alpha_nu}/s (row sums by N times this), summable, so D_theta Phi^(nu)_b converges uniformly
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-cauchy, stepP:p11a:lm-inc, bpP:p11a:composition, bpP:p11a:strip-budget, bpP:p11a:exported-sums, bpP:p11a:situation, bpP:p11a:sec-comp#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-cauchy | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-der@L112-L112 | Cauchy estimate on the polydisc of radius s/4
EDGE: stepP:p11a:lm-inc | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-der@L112-L112 | bound on delta_nu and summability
EDGE: bpP:p11a:composition | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-der@L112-L112 | holomorphy of Phi^(nu) and the bound (d)
EDGE: bpP:p11a:strip-budget | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-der@L112-L112 | r_{nu+1}>=s/2
EDGE: bpP:p11a:exported-sums | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-der@L112-L112 | summability of max{a_nu,alpha_nu}
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-der@L112-L112 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-der@L112-L112 | Z1: uses the section definition of Phi^(nu) with the shared parameter
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lm-hol

```text
NODE: stepP:p11a:lm-hol
KIND: step
TITLE: Holomorphy of the limit
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-hol@L114-L114
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-hol@L114-L114
CONTRACT_ID: stepP:p11a:lm-hol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); b in K_infty; Phi^(nu)_b(theta):=Phi^(nu)((theta,0),b) for theta in T_{s/4}
SOURCE_QUANTIFIERS: b in K_infty
SOURCE_CONCLUSION: K~_b holomorphic on T_{s/4}, real on R^N, D K~_b=lim D_theta Phi^(nu)_b
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:uniform-limits, stepP:p11a:lm-inc, stepP:p11a:lm-der, bpP:p11a:situation, bpP:p11a:sec-comp#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:uniform-limits | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-hol@L114-L114 | uniform limits of holomorphic maps with convergent derivatives
EDGE: stepP:p11a:lm-inc | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-hol@L114-L114 | uniform convergence
EDGE: stepP:p11a:lm-der | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-hol@L114-L114 | uniform convergence of the derivatives
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-hol@L114-L114 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-hol@L114-L114 | Z1: uses the section definition of Phi^(nu) with the shared parameter
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lm-bounds

```text
NODE: stepP:p11a:lm-bounds
KIND: step
TITLE: Equivariance and bounds
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-bounds@L116-L116
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-bounds@L116-L116
CONTRACT_ID: stepP:p11a:lm-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); b in K_infty; Phi^(nu)_b(theta):=Phi^(nu)((theta,0),b) for theta in T_{s/4}
SOURCE_QUANTIFIERS: b in K_infty
SOURCE_CONCLUSION: (b) equivariance of K~_b; (c) ¦u^theta_b¦<=sum a_j, ¦u^eta_b¦<=sum alpha_j, ¦D_theta u_b¦<=2^-11 on T_{s/4}, and u_b is 2^-11-Lipschitz on R^N
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:composition, stepP:p11a:lm-hol, bpP:p11a:z-uniform, bpP:p11a:situation, bpP:p11a:sec-comp#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:composition | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-bounds@L116-L116 | (a) equivariance, (b) derivative bound, (c) displacement bounds
EDGE: stepP:p11a:lm-hol | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-bounds@L116-L116 | the limit K~_b and its derivative as the limit of D_theta Phi^(nu)_b
EDGE: bpP:p11a:z-uniform | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-bounds@L116-L116 | Lipschitz on a convex set from the derivative norm bound
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-bounds@L116-L116 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lm-bounds@L116-L116 | Z1: uses the section definition of Phi^(nu) with the shared parameter
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lt-field

```text
NODE: stepP:p11a:lt-field
KIND: step
TITLE: The field at the zero section
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135
CONTRACT_ID: stepP:p11a:lt-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); H(theta,I)=h(I)+f(theta,I) real on real points; X_H=(partial_I H,-partial_theta H); b in K_infty; Omega_0 as in the conventions
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: X_{H_nu}(z)=(omega_nu(b)+partial_eta R_nu(z),-partial_theta R_nu(z)) with ¦partial_eta R_nu(z)¦_inf<=eps_nu/s_nu=lambda_0 varrho^nu and ¦partial_theta R_nu(z)¦_inf<=2 eps_nu/s, both tending to 0, so ¦X_{H_nu}(z)-(omega_nu(b),0)¦_inf->0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:inductive-lemma, K:bp:p1:ext-cauchy, bpP:p11a:strip-budget, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p11a:schedule, bpP:p11a:situation, bpP:p11a:sec-limit#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:inductive-lemma | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135 | (P_nu)(b),(c): ¦R_nu¦<=eps_nu and H_nu=h_nu+omega_nu.eta+R_nu
EDGE: K:bp:p1:ext-cauchy | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135 | Cauchy estimates in eta (radius s_nu) and theta (radius r_nu>=s/2)
EDGE: bpP:p11a:strip-budget | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135 | r_nu>=s/2
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135 | X_{H_nu}
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135 | eps_nu, s_nu, eps_nu/s_nu=lambda_0 varrho^nu
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135 | Z1: uses K_b, the family K or its defect from the original-coordinate section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lt-cov

```text
NODE: stepP:p11a:lt-cov
KIND: step
TITLE: Covariance
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-cov@L137-L139
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-cov@L137-L139
CONTRACT_ID: stepP:p11a:lt-cov
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); H(theta,I)=h(I)+f(theta,I) real on real points; X_H=(partial_I H,-partial_theta H); b in K_infty; Omega_0 as in the conventions; for the auxiliary covariance calculation, G is a holomorphic Hamiltonian
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: X_{G o Phi}=D Phi^-1 (X_G o Phi); hence X_{H_0}(Phi^(nu)(z,b))=D Phi^(nu)(z,b) X_{H_nu}(z), with X_{H_0}(theta,eta)=X_H(theta,b+eta)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:composition, bpP:p11a:initial, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p11a:situation, bpP:p11a:sec-comp#data, bpP:p11a:z-chain
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:composition | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-cov@L137-L137 | Phi^(nu)(.,b) canonical and H_0 o Phi^(nu)=H_nu
EDGE: bpP:p11a:initial | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-cov@L137-L137 | formula for H_0
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-cov@L137-L137 | X_phi=J(D phi)^T
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-cov@L137-L137 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-cov@L137-L137 | Z1: uses the section definition of Phi^(nu) with the shared parameter
EDGE: bpP:p11a:z-chain | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-cov@L137-L137 | Z3: direct use of the composition/calculus rule or defining package at this proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lt-lim

```text
NODE: stepP:p11a:lt-lim
KIND: step
TITLE: Passage to the limit
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lim@L141-L141
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lim@L141-L141
CONTRACT_ID: stepP:p11a:lt-lim
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); H(theta,I)=h(I)+f(theta,I) real on real points; X_H=(partial_I H,-partial_theta H); b in K_infty; Omega_0 as in the conventions
SOURCE_QUANTIFIERS: theta in R^N
SOURCE_CONCLUSION: D_theta K~_b(theta) w_b=X_H(K_b(theta)); with D K_b=D K~_b this is (b); real analyticity and (a) are Proposition limit-map
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:limit-map, stepP:p11a:lt-field, stepP:p11a:lt-cov, bpP:p11a:parameter-selection, bpP:p11a:exported-sums, bpP:p11a:adm-choice, bpP:p11a:composition, bpP:p11a:initial, bpP:p11a:situation, bpP:p11a:sec-comp#data, bpP:p11a:sec-limit#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:limit-map | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lim@L141-L141 | convergence Phi^(nu)->K~_b, convergence of D_theta Phi^(nu)_b, periodicity, real analyticity
EDGE: stepP:p11a:lt-field | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lim@L141-L141 | X_{H_nu}(z)-(omega_nu(b),0)->0
EDGE: stepP:p11a:lt-cov | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lim@L141-L141 | X_{H_0}(Phi^(nu)(z,b))=D Phi^(nu) X_{H_nu}(z)
EDGE: bpP:p11a:parameter-selection | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lim@L141-L141 | (a): omega_nu(b)->omega_*(b)
EDGE: bpP:p11a:exported-sums | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lim@L141-L141 | (E2): sum alpha_j<=s_0 Q_0/16
EDGE: bpP:p11a:adm-choice | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lim@L141-L141 | (A4): Q_0<=varpi/2<=1
EDGE: bpP:p11a:composition | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lim@L141-L141 | ¦D Phi^(nu)¦<=1+2^-11 and domain
EDGE: bpP:p11a:initial | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lim@L141-L141 | H_0 and its domain D(s,s_0;B_0)
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lim@L141-L141 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lim@L141-L141 | Z1: uses the section definition of Phi^(nu) with the shared parameter
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lim@L141-L141 | Z1: uses K_b, the family K or its defect from the original-coordinate section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lt-lag

```text
NODE: stepP:p11a:lt-lag
KIND: step
TITLE: (c) Lagrangian
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lag@L143-L143
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lag@L143-L143
CONTRACT_ID: stepP:p11a:lt-lag
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); H(theta,I)=h(I)+f(theta,I) real on real points; X_H=(partial_I H,-partial_theta H); b in K_infty; Omega_0 as in the conventions
SOURCE_QUANTIFIERS: v, v' in R^N
SOURCE_CONCLUSION: Omega_0(D K~_b v, D K~_b v')=0, and the translation eta->b+eta does not change the derivative
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:composition, bpP:p11a:limit-map, bpP:p0:hamsymp#symplecticForm, bpP:p11a:situation, bpP:p11a:sec-comp#data, bpP:p11a:sec-limit#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:composition | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lag@L143-L143 | Phi^(nu)(.,b) canonical
EDGE: bpP:p11a:limit-map | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lag@L143-L143 | D_theta Phi^(nu)_b->D K~_b
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lag@L143-L143 | Omega_0 and its vanishing on (D iota v, D iota v')
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lag@L143-L143 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lag@L143-L143 | Z1: uses the section definition of Phi^(nu) with the shared parameter
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-lag@L143-L143 | Z1: uses K_b, the family K or its defect from the original-coordinate section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lt-emb

```text
NODE: stepP:p11a:lt-emb
KIND: step
TITLE: (d) Immersion and embedding
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-emb@L145-L145
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-emb@L145-L145
CONTRACT_ID: stepP:p11a:lt-emb
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); H(theta,I)=h(I)+f(theta,I) real on real points; X_H=(partial_I H,-partial_theta H); b in K_infty; Omega_0 as in the conventions
SOURCE_QUANTIFIERS: theta, theta' in R^N
SOURCE_CONCLUSION: ¦K_b(theta)-K_b(theta')¦_inf>=(1-2^-11)¦theta-theta'¦_inf; the same argument with D_theta u_b gives the immersion bound
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:limit-map, bpP:p11a:sec-limit#data, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:limit-map | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-emb@L145-L145 | (c): u_b is 2^-11-Lipschitz and ¦D_theta u_b¦<=2^-11
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-emb@L145-L145 | K_b=(id,b)+u_b
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-emb@L145-L145 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lt-dio

```text
NODE: stepP:p11a:lt-dio
KIND: step
TITLE: (e) Diophantine
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-dio@L147-L147
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-dio@L147-L147
CONTRACT_ID: stepP:p11a:lt-dio
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); H(theta,I)=h(I)+f(theta,I) real on real points; X_H=(partial_I H,-partial_theta H); b in K_infty; Omega_0 as in the conventions; b in H_infty (the additional source condition for part (e))
SOURCE_QUANTIFIERS: b in H_infty
SOURCE_CONCLUSION: ¦k.w_b¦>=gamma ¦k¦_1^{-tau} for all k!=0, with w_b=omega_*(b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:parameter-selection, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:parameter-selection | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-dio@L147-L147 | Theorem parameter-selection (c)
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-dio@L147-L147 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:dp-tel

```text
NODE: stepP:p11a:dp-tel
KIND: step
TITLE: Telescoping
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-tel@L166-L166
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-tel@L166-L166
CONTRACT_ID: stepP:p11a:dp-tel
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); b in K_infty (in particular every b in H_infty)
SOURCE_QUANTIFIERS: b in K_infty
SOURCE_CONCLUSION: ¦u^theta_b¦<=3 varsigma_0 Q_0/C_Q, ¦u^eta_b¦<=s_0 Q_0/16, so sup ¦u_b¦_inf<=Q_0 max{3 varsigma_0/C_Q, s_0/16}=Delta(eps)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:limit-map, bpP:p11a:exported-sums, bpP:p11a:situation, bpP:p11a:sec-limit#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:limit-map | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-tel@L166-L166 | (c): displacement of the limit map
EDGE: bpP:p11a:exported-sums | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-tel@L166-L166 | (E2): sum a_j, sum alpha_j
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-tel@L166-L166 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-tel@L166-L166 | Z1: uses K_b, the family K or its defect from the original-coordinate section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:dp-size

```text
NODE: stepP:p11a:dp-size
KIND: step
TITLE: Size
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-size@L168-L168
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-size@L168-L168
CONTRACT_ID: stepP:p11a:dp-size
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); b in K_infty (in particular every b in H_infty)
SOURCE_QUANTIFIERS: eps in (0,eps_adm]
SOURCE_CONCLUSION: Delta(eps)<=Q_0/128<=2^-18 and Delta(eps)<=c_Delta eps^{1/2}/gamma with c_Delta depending on (N,mu,tau,s,C_1) only
CONSTANT_SCOPE: c_Delta depends on (N,mu,tau,s,C_1) only (T_0, varsigma_0 depend on (N,mu,tau,s))
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:adm-choice, bpP:p11a:free-radius, bpP:p11a:schedule-props, bpP:p11a:schedule-consts, bpP:p11a:adm-params, stepP:p11a:dp-tel, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:adm-choice | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-size@L168-L168 | (A3): s_0<=t_0/(8N); (A4): Q_0 Xi<=2^-10
EDGE: bpP:p11a:free-radius | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-size@L168-L168 | s_0=(2 eps/(N C_1))^{1/2} and lambda_0=(2 N C_1 eps)^{1/2}
EDGE: bpP:p11a:schedule-props | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-size@L168-L168 | (S4): formula for Q_0
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-size@L168-L168 | C_Q and Xi>=2^{tau+1}
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-size@L168-L168 | T_0, varsigma_0 depend on (N,mu,tau,s) only; Xi
EDGE: stepP:p11a:dp-tel | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-size@L168-L168 | the bound Delta(eps) being estimated
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dp-size@L168-L168 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:gi-branches

```text
NODE: stepP:p11a:gi-branches
KIND: step
TITLE: The two branches
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:gi-branches@L177-L177
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:gi-branches@L177-L177
CONTRACT_ID: stepP:p11a:gi-branches
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption sel-data data; G_0=(mu+1)/rho; 0<beta<=min{1,M}
SOURCE_QUANTIFIERS: beta in (0,min{1,M}]
SOURCE_CONCLUSION: C_Dio=C^ beta^{-1-1/mu}, (C_Dio/eps*)^{mu/rho}=(C^/eps*)^{mu/rho} beta^{-G_0} and the first branch is <=2 sqrt N 4^{1/rho} beta^{-G_0}; hence gamma^-1<=c_gamma beta^{-G_0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:power-law, bpP:p11a:sublevel, bpP:p11a:sel-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:power-law | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:gi-branches@L177-L177 | gamma_*(eps*) and C_Dio of Corollary power-law
EDGE: bpP:p11a:sublevel | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:gi-branches@L177-L177 | C_sub of Theorem sublevel
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:gi-branches@L177-L177 | gamma=gamma_*(eps*)/2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p11a:displacement-power

```text
NODE: bpP:p11a:displacement-power
KIND: corollary
TITLE: The displacement power (K6) of Definition~\ref{bpP:p11:kam-input}
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L180-L184
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L185-L187
CONTRACT_ID: bpP:p11a:displacement-power
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu,rho,tau and all entries of Assumption sel-data except beta fixed (K,vartheta,s,eps*,M,M_0,C_1 fixed; d=diam_inf K); the situation (S) with beta in (0,min{1,M}], 0<eps<=eps_adm
SOURCE_QUANTIFIERS: fixed data; then c_D depending only on them; then beta in (0,min{1,M}], eps in (0,eps_adm]
SOURCE_CONCLUSION: sup_{b in K_infty,theta in R^N}¦u_b(theta)¦_inf<=c_D eps^{kappa_D} beta^{-a_D} with kappa_D=1/2, a_D=G_0=(mu+1)/rho (=(mu+1)/2 for rho=2), c_D=c_Delta c_gamma; the same fixed data also give eps_adm>=c_* beta^{B_0} of bpP:p11a:adm-budget-beta, so the displacement power and lower budget are available together
CONSTANT_SCOPE: c_D depends only on the fixed data and (N,mu,rho,tau), not on beta or eps
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:dpc-comb, bpP:p11a:sel-data, bpP:p11a:situation, bpP:p11a:displacement, bpP:p11a:gamma-inverse, bpP:p11a:sec-limit#data, bpP:p11a:adm-budget-beta
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:dpc-comb | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L186-L186 | proof step
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L181-L181 | the data held fixed
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L182-L182 | situation (S)
EDGE: bpP:p11a:displacement | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L183-L183 | c_Delta and the bound Delta(eps)<=c_Delta eps^{1/2}/gamma
EDGE: bpP:p11a:gamma-inverse | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L183-L183 | c_gamma and gamma^-1<=c_gamma beta^{-G_0}
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L180-L180 | Z1: uses K_b, the family K or its defect from the original-coordinate section data
EDGE: bpP:p11a:adm-budget-beta | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L183-L183 | Z4: the statement explicitly asserts the simultaneous lower budget from adm-budget-beta
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The kam-input title is a consumer-interface pointer, not an edge back to Part 11. The lower-budget assertion at L183 is retained in SOURCE_CONCLUSION with its direct supplier.
```

### stepP:p11a:dpc-comb

```text
NODE: stepP:p11a:dpc-comb
KIND: step
TITLE: Combine
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dpc-comb@L186-L186
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dpc-comb@L186-L186
CONTRACT_ID: stepP:p11a:dpc-comb
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu,rho,tau and all entries of Assumption sel-data except beta fixed (K,vartheta,s,eps*,M,M_0,C_1 fixed; d=diam_inf K); the situation (S) with beta in (0,min{1,M}], 0<eps<=eps_adm
SOURCE_QUANTIFIERS: beta, eps as above
SOURCE_CONCLUSION: Delta(eps)<=c_Delta c_gamma eps^{1/2} beta^{-G_0}; c_Delta depends on (N,mu,tau,s,C_1), c_gamma on the fixed data only
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:displacement, bpP:p11a:gamma-inverse, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:displacement | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dpc-comb@L186-L186 | Delta(eps)<=c_Delta eps^{1/2}/gamma
EDGE: bpP:p11a:gamma-inverse | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dpc-comb@L186-L186 | gamma^-1<=c_gamma beta^{-G_0}
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:dpc-comb@L186-L186 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lf-split

```text
NODE: stepP:p11a:lf-split
KIND: step
TITLE: Reduction to one angle or one parameter
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-split@L199-L199
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-split@L199-L199
CONTRACT_ID: stepP:p11a:lf-split
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); lambda_*:=2^-10; b,b' in K_infty, theta,theta' in R^N
SOURCE_QUANTIFIERS: b,b' in K_infty, theta,theta' real
SOURCE_CONCLUSION: ¦u(b,theta)-u(b,theta')¦<=2^-11¦theta-theta'¦_inf; it remains to bound ¦u(b,theta')-u(b',theta')¦ by 2^-11¦b-b'¦_inf for fixed real theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:limit-map, bpP:p11a:situation, bpP:p11a:sec-limit#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:limit-map | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-split@L199-L199 | (c): Lipschitz bound of u_b in theta
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-split@L199-L199 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-split@L199-L199 | Z1: uses K_b, the family K or its defect from the original-coordinate section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lf-tel

```text
NODE: stepP:p11a:lf-tel
KIND: step
TITLE: Telescoping in the parameter
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-tel@L201-L201
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-tel@L201-L201
CONTRACT_ID: stepP:p11a:lf-tel
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); lambda_*:=2^-10; b,b' in K_infty, theta,theta' in R^N
SOURCE_QUANTIFIERS: b in K_infty, theta real, j>=0
SOURCE_CONCLUSION: delta_j(.,theta) is holomorphic on B_{j+1} and bounded there by e_j:=(1+2^-11) max{a_j,alpha_j}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:limit-map, bpP:p11a:composition, bpP:p11a:situation, bpP:p11a:sec-comp#data, bpP:p11a:sec-limit#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:limit-map | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-tel@L201-L201 | (a): u(b,theta)=sum delta_j, delta_j=Phi^(j+1)-Phi^(j)
EDGE: bpP:p11a:composition | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-tel@L201-L201 | (a) joint holomorphy and (d) the bound e_j
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-tel@L201-L201 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-tel@L201-L201 | Z1: uses the section definition of Phi^(nu) with the shared parameter
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-tel@L201-L201 | Z1: uses K_b, the family K or its defect from the original-coordinate section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lf-stage

```text
NODE: stepP:p11a:lf-stage
KIND: step
TITLE: One stage
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-stage@L203-L203
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-stage@L203-L203
CONTRACT_ID: stepP:p11a:lf-stage
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); lambda_*:=2^-10; b,b' in K_infty, theta,theta' in R^N
SOURCE_QUANTIFIERS: j>=0, theta real
SOURCE_CONCLUSION: ¦delta_j(b,theta)-delta_j(b',theta)¦_inf<=4 e_j¦b-b'¦_inf/t_{j+1} (case ¦b-b'¦<t_{j+1}/2 by Cauchy on the segment, case ¦b-b'¦>=t_{j+1}/2 by 2 e_j)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-cauchy, stepP:p11a:lf-tel, bpP:p11a:schedule, bpP:p11a:situation, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-cauchy | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-stage@L203-L203 | Cauchy estimate in the variable zeta for g(zeta)=delta_j(c_lambda+zeta v/¦v¦_inf,theta)
EDGE: stepP:p11a:lf-tel | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-stage@L203-L203 | holomorphy and bound e_j of delta_j on B_{j+1}
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-stage@L203-L203 | collar t_{j+1}
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-stage@L203-L203 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-stage@L203-L203 | Z3: direct use of the composition/calculus rule or defining package at this proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:lf-sum

```text
NODE: stepP:p11a:lf-sum
KIND: step
TITLE: Summation
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-sum@L205-L205
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-sum@L205-L205
CONTRACT_ID: stepP:p11a:lf-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); lambda_*:=2^-10; b,b' in K_infty, theta,theta' in R^N
SOURCE_QUANTIFIERS: b,b' in K_infty, theta real
SOURCE_CONCLUSION: ¦u(b,theta)-u(b',theta)¦<=4(1+2^-11) S_b ¦b-b'¦<=2^-11¦b-b'¦_inf; adding the theta-term gives 2^-10 max
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:param-lip-sum, stepP:p11a:lf-stage, stepP:p11a:lf-tel, stepP:p11a:lf-split, bpP:p11a:situation, bpP:p11a:sec-limit#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:param-lip-sum | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-sum@L205-L205 | S_b<=2^-10/16
EDGE: stepP:p11a:lf-stage | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-sum@L205-L205 | one-stage Lipschitz bound 4 e_j/t_{j+1}
EDGE: stepP:p11a:lf-tel | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-sum@L205-L205 | u=sum delta_j with bounds e_j
EDGE: stepP:p11a:lf-split | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-sum@L205-L205 | reduction to one parameter and the theta-term 2^-11
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-sum@L205-L205 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lf-sum@L205-L205 | Z1: uses K_b, the family K or its defect from the original-coordinate section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:eb-bounds

```text
NODE: stepP:p11a:eb-bounds
KIND: step
TITLE: (a) Bounds
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-bounds@L225-L225
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-bounds@L225-L225
CONTRACT_ID: stepP:p11a:eb-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); K(b,theta)=K_b(theta)=(theta,b)+u(b,theta) on K_infty x R^N, x=(theta,b) with the max norm of the two blocks; lambda_*=2^-10; (c),(d) for H subset K_infty compact (e.g. H_infty)
SOURCE_QUANTIFIERS: points of K_infty x R^N
SOURCE_CONCLUSION: both inequalities (1-lambda_*)¦x-x'¦<=¦K-K'¦<=(1+lambda_*)¦x-x'¦ by the triangle inequality; the inverse bound is the lower inequality
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:lipschitz-family, bpP:p11a:sec-limit#data, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:lipschitz-family | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-bounds@L225-L225 | ¦u(b,theta)-u(b',theta')¦<=lambda_*¦x-x'¦_inf
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-bounds@L225-L225 | K=(theta,b)+u
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-bounds@L225-L225 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:eb-ext

```text
NODE: stepP:p11a:eb-ext
KIND: step
TITLE: (b) Equivariance, extension
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-ext@L227-L227
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-ext@L227-L227
CONTRACT_ID: stepP:p11a:eb-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); K(b,theta)=K_b(theta)=(theta,b)+u(b,theta) on K_infty x R^N, x=(theta,b) with the max norm of the two blocks; lambda_*=2^-10; (c),(d) for H subset K_infty compact (e.g. H_infty)
SOURCE_QUANTIFIERS: points of K_infty x R^N
SOURCE_CONCLUSION: K(b,theta+k)=K(b,theta)+(k,0); K continuous; u extends to a lambda_*-Lipschitz u~ on R^{2N} and id+u~ is a bi-Lipschitz bijection of R^{2N} with the same two-sided bounds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:limit-torus, K:bp:p1:mcshane, K:bp:p1:lipeo, stepP:p11a:eb-bounds, bpP:p11a:situation, bpP:p11a:sec-limit#data, bpP:p11a:lipschitz-family
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:limit-torus | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-ext@L227-L227 | (a) equivariance K_b(theta+k)=K_b(theta)+(k,0)
EDGE: K:bp:p1:mcshane | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-ext@L227-L227 | McShane extension of the lambda_*-Lipschitz u
EDGE: K:bp:p1:lipeo | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-ext@L227-L227 | lambda_*<1: id+u~ is a bi-Lipschitz bijection of R^{2N}
EDGE: stepP:p11a:eb-bounds | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-ext@L227-L227 | two-sided bounds and continuity (Lipschitz)
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-ext@L227-L227 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-ext@L227-L227 | Z1: uses K_b, the family K or its defect from the original-coordinate section data
EDGE: bpP:p11a:lipschitz-family | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-ext@L227-L227 | Z3: direct use of the composition/calculus rule or defining package at this proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:eb-meas

```text
NODE: stepP:p11a:eb-meas
KIND: step
TITLE: (c) Measure
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229
CONTRACT_ID: stepP:p11a:eb-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); K(b,theta)=K_b(theta)=(theta,b)+u(b,theta) on K_infty x R^N, x=(theta,b) with the max norm of the two blocks; lambda_*=2^-10; (c),(d) for H subset K_infty compact (e.g. H_infty)
SOURCE_QUANTIFIERS: H subset K_infty compact
SOURCE_CONCLUSION: B=K(A) is a countable union of compact sets (Borel); (1-lambda_*)^{2N} meas H<=meas B<=(1+lambda_*)^{2N} meas H, and (1-2^-10)^{2N}>=2^{-2N}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-measure, K:bp:p1:lip-image, bpP:p11a:z-compact, stepP:p11a:eb-bounds, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-measure | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229 | meas A=meas H for A=[0,1)^N x H
EDGE: K:bp:p1:lip-image | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229 | measure of Lipschitz images in R^{2N}
EDGE: bpP:p11a:z-compact | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229 | continuous image of a countable union of compact sets is such a union (Borel)
EDGE: stepP:p11a:eb-bounds | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229 | bi-Lipschitz bounds of K restricted to A and its inverse
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:eb-cpt

```text
NODE: stepP:p11a:eb-cpt
KIND: step
TITLE: (d) Compactness
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-cpt@L231-L231
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-cpt@L231-L231
CONTRACT_ID: stepP:p11a:eb-cpt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); K(b,theta)=K_b(theta)=(theta,b)+u(b,theta) on K_infty x R^N, x=(theta,b) with the max norm of the two blocks; lambda_*=2^-10; (c),(d) for H subset K_infty compact (e.g. H_infty)
SOURCE_QUANTIFIERS: H subset K_infty compact
SOURCE_CONCLUSION: K(H x [0,1]^N) compact, K(H x R^N)=∪_k(K(H x [0,1]^N)+(k,0)), and its image in (R^N/Z^N) x R^N is compact (continuous image of a compact set)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:z-compact, stepP:p11a:eb-ext, stepP:p11a:eb-bounds, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:z-compact | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-cpt@L231-L231 | continuous image of a compact set is compact
EDGE: stepP:p11a:eb-ext | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-cpt@L231-L231 | equivariance and continuity of K
EDGE: stepP:p11a:eb-bounds | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-cpt@L231-L231 | K is Lipschitz, hence continuous
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-cpt@L231-L231 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:qb-comp

```text
NODE: stepP:p11a:qb-comp
KIND: step
TITLE: Comparison with File 11a-3
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-comp@L48-L48
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-comp@L48-L48
CONTRACT_ID: stepP:p11a:qb-comp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: M_0'<=M_0
SOURCE_CONCLUSION: T_0<=T-bar, t_flat<=t_0<=1, C_1 t_0/8>=t_flat/8, Xi<=Xi-bar, T_0^tau<=T-bar^tau, theta_max(M_0)<=theta_max(M_0'), t_flat^mu<=t_0^mu; so each term of lambda_flat is at most the corresponding term of lambda_max, lambda_flat<=lambda_max and eps_adm^flat<=eps_adm^(3)(frakd'); positivity of all ingredients
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:adm-params, bpP:p11a:thresholds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-comp@L48-L48 | T_0, t_0, Xi, lambda_max, theta_max for frakd'
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-comp@L48-L48 | T-bar, t_flat, Xi-bar, lambda_flat, eps_adm^flat
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:qb-mono

```text
NODE: stepP:p11a:qb-mono
KIND: step
TITLE: Monotonicity
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-mono@L50-L50
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-mono@L50-L50
CONTRACT_ID: stepP:p11a:qb-mono
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: data entries varied one at a time, others fixed
SOURCE_CONCLUSION: gamma_*, gamma, gamma T-bar^{-tau-1}, t_flat are nondecreasing in beta,vartheta,eps*,s and nonincreasing in M,d (t_flat nonincreasing in C_1); Xi-bar and the three terms of lambda_flat move accordingly, so lambda_flat and eps_adm^flat have the stated monotonicity (eps_adm^flat nonincreasing in M_0 and C_1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:thresholds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-mono@L50-L50 | definitions of gamma, T-bar, t_flat, Xi-bar, theta_max, lambda_flat
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:qb-poly

```text
NODE: stepP:p11a:qb-poly
KIND: step
TITLE: Polynomial bound, all data
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52
CONTRACT_ID: stepP:p11a:qb-poly
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: u in (0,1], constants depending on (N,mu,rho,tau,c) and a_s
SOURCE_CONCLUSION: gamma>=c_2 u^G, T-bar<=C u^{-L}, gamma T-bar^{-tau-1}>=c_3 u^{G+(tau+1)L}, t_flat>=c_4 u^J, Xi-bar<=C u^{-X}, lambda_flat>=c_11 u^H, hence eps_adm^flat>=c' u^{2H+a_C}
CONSTANT_SCOPE: c' with the same dependence as in Proposition adm-budget
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:adm-budget, stepP:p11a:ab-gamma, stepP:p11a:ab-T0, stepP:p11a:ab-t0, stepP:p11a:ab-lam, bpP:p11a:thresholds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:adm-budget | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | hypotheses, exponents and the structure of the proof
EDGE: stepP:p11a:ab-gamma | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | gamma>=c_2 u^G
EDGE: stepP:p11a:ab-T0 | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | T_0-type bound
EDGE: stepP:p11a:ab-t0 | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | collar and Xi bound
EDGE: stepP:p11a:ab-lam | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | three terms of lambda_max bounded below
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | T-bar, t_flat, Xi-bar, lambda_flat
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:qb-beta

```text
NODE: stepP:p11a:qb-beta
KIND: step
TITLE: The form (K5)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-beta@L54-L54
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-beta@L54-L54
CONTRACT_ID: stepP:p11a:qb-beta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: beta in (0,min{1,M}]
SOURCE_CONCLUSION: eps_adm^flat>=c_* beta^{B_0}, B_0=2 max{2 G_0,1+mu G_0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:abb-spec, stepP:p11a:qb-poly, bpP:p11a:thresholds
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:abb-spec | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-beta@L54-L54 | the specialisation of Corollary adm-budget-beta
EDGE: stepP:p11a:qb-poly | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-beta@L54-L54 | part (c) being specialised
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-beta@L54-L54 | Z3: direct use of the composition/calculus rule or defining package at this proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p11a:zero-case

```text
NODE: bpP:p11a:zero-case
KIND: lemma
TITLE: $f\equiv0$
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:zero-case@L61-L63
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:zero-case@L64-L68
CONTRACT_ID: bpP:p11a:zero-case
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; f=0; H_0 and K_b(theta)=(theta,b) defined as in L62
SOURCE_QUANTIFIERS: frakd and h fixed (f=0); b in H_0
SOURCE_CONCLUSION: H_0 is compact with meas H_0>=meas K-eps*; for b in H_0: K_b is real analytic, primary, an embedded Lagrangian torus map, d_t K_b(theta+t w_b)=X_H(K_b(theta+t w_b)) with w_b=omega(b) (gamma,tau)-Diophantine, u_b=0; (b,theta)->K_b(theta) is injective on H_0 x [0,1)^N with image [0,1)^N x H_0 (position, action order) of measure meas H_0
CONSTANT_SCOPE: gamma=gamma(frakd)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:zc-set, stepP:p11a:zc-tori, bpP:p11a:thresholds, bpP:p11a:sec-q-thm#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:zc-set | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:zero-case@L65-L65 | proof step
EDGE: stepP:p11a:zc-tori | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:zero-case@L67-L67 | proof step
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:zero-case@L62-L62 | gamma=gamma(frakd)
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:zero-case@L61-L61 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: CYCLE BREAK: the draft edge zero-case -> weak-kam-quantitative (L62: the lemma takes the hypotheses (A1)-(A4) and the data of the theorem) names the hypotheses only; weak-kam-quantitative -> zero-case (qt-zero) is the use. The hypothesis package (A1)-(A4) belongs to the theorem statement (no separate node), so the lemma depends on the thresholds only.
```

### stepP:p11a:zc-set

```text
NODE: stepP:p11a:zc-set
KIND: step
TITLE: The good set
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-set@L65-L65
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-set@L65-L65
CONTRACT_ID: stepP:p11a:zc-set
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; f=0; H_0 and K_b(theta)=(theta,b) as defined in L62
SOURCE_QUANTIFIERS: frakd fixed
SOURCE_CONCLUSION: H_0 is compact with meas H_0>=meas K-eps* (2 gamma=gamma_*<=gamma_*)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:power-law, bpP:p11a:diophantine-measure, bpP:p11a:thresholds, bpP:p11a:sec-q-thm#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:power-law | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-set@L65-L65 | Corollary power-law with 2 gamma, m=N
EDGE: bpP:p11a:diophantine-measure | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-set@L65-L65 | hypothesis D3 trivial for omega~_k=omega (D1, D2 from (A2), (A3))
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-set@L65-L65 | gamma_*=2 gamma and (sqrt N gamma_*)^rho<=2^-rho beta/4
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-set@L65-L65 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:zc-tori

```text
NODE: stepP:p11a:zc-tori
KIND: step
TITLE: The tori
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-tori@L67-L67
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-tori@L67-L67
CONTRACT_ID: stepP:p11a:zc-tori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; f=0; H_0 and K_b(theta)=(theta,b) as defined in L62
SOURCE_QUANTIFIERS: b in H_0
SOURCE_CONCLUSION: d_t(theta+t omega(b),b)=X_H(theta+t omega(b),b); D K_b injective with zero symplectic pullback; K_b(theta+k)=K_b(theta)+(k,0); K_b(theta)=K_b(theta') iff theta=theta'; evaluation map is the swap isometry, injective, image [0,1)^N x H_0 Borel of measure meas H_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:zc-set, K:bp:p1:ext-measure, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p0:hamsymp#symplecticForm, bpP:p11a:sec-q-thm#data, bpP:p11a:thresholds
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:zc-set | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-tori@L67-L67 | Diophantine bound on H_0
EDGE: K:bp:p1:ext-measure | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-tori@L67-L67 | measure of [0,1)^N x H_0
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-tori@L67-L67 | X_H=(partial_I H,-partial_theta H)
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-tori@L67-L67 | Omega_0 vanishing on (v,0),(v',0)
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-tori@L67-L67 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:zc-tori@L67-L67 | Z1: uses the named gamma or monotone threshold and its numerical data directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p11a:weak-kam-quantitative

```text
NODE: bpP:p11a:weak-kam-quantitative
KIND: theorem
TITLE: Quantitative maximal-case analytic KAM theorem under weak non-degeneracy
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L72-L91
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L92-L110
CONTRACT_ID: bpP:p11a:weak-kam-quantitative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta
SOURCE_QUANTIFIERS: N,mu,rho,tau,K,vartheta,s,C_1,M,M_0,beta,eps* (the data frakd) first; then gamma and eps_adm determined by frakd only; then (h,f) and eps_f; then the conclusions (K1)-(K6) with c_*, c_D chosen after the fixed entries
SOURCE_CONCLUSION: (K1) compact calH subset K with meas calH>=meas K-eps*; (K2) for b in calH a real analytic K_b:R^N->R^N x R^N with K_b(theta+k)=K_b(theta)+(k,0), D K_b injective, K_b^* Omega_0=0, K_b(theta)=K_b(theta') only if theta'-theta in Z^N, and w_b in R^N with ¦k.w_b¦>=gamma ¦k¦_1^{-tau} for all k!=0 and d_t K_b(theta+t w_b)=X_H(K_b(theta+t w_b)); (K3) sup ¦u_b¦_inf<=Delta(eps_f;frakd):=min{2^-18,c_Delta eps_f^{1/2}/gamma}, c_Delta=c_Delta(N,mu,tau,s,C_1) of Theorem displacement; (K4) ¦K_b(theta)-K_b'(theta')¦_inf>=(1-2^-10) max{¦theta-theta'¦_inf,¦b-b'¦_inf}, K (1+2^-10)-Lipschitz, K injective on calH x [0,1)^N with Borel image calB, meas calB>=2^{-2N} meas calH, K(calH x [0,1]^N) compact; (K5) eps_adm nondecreasing in beta,vartheta,s,eps*, nonincreasing in M,M_0,C_1,d and, with all entries but beta fixed, eps_adm>=c_* beta^{B_0} for beta in (0,min{1,M}], B_0=2 max{2 G_0,1+mu G_0}, G_0=(mu+1)/rho; (K6) with the same entries fixed, sup¦u_b¦<=Delta<=c_D eps_f^{kappa_D} beta^{-a_D}, kappa_D=1/2, a_D=G_0; (K5) also identifies the general all-data polynomial lower bound as budget(c), with the hypotheses, exponent and constant dependence of adm-budget
CONSTANT_SCOPE: gamma and eps_adm depend on frakd and on nothing else; c_Delta=c_Delta(N,mu,tau,s,C_1); c_*, c_D depend only on the entries of frakd other than beta; the radius s_0 of the iteration is chosen inside the proof, not a datum
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:qt-order, stepP:p11a:qt-reduce, stepP:p11a:qt-zero, stepP:p11a:qt-iter, stepP:p11a:qt-k2, stepP:p11a:qt-k3, stepP:p11a:qt-k4, stepP:p11a:qt-k5, stepP:p11a:qt-k6, bpP:p11a:thresholds, bpP:p11a:index-def, bpP:p11a:displacement, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p0:hamsymp#symplecticForm, bpP:p11a:sec-q-thm#data, bpP:p11a:budget
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:qt-order | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L93-L93 | proof step
EDGE: stepP:p11a:qt-reduce | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L95-L95 | proof step
EDGE: stepP:p11a:qt-zero | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L97-L97 | proof step
EDGE: stepP:p11a:qt-iter | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L99-L99 | proof step
EDGE: stepP:p11a:qt-k2 | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L101-L101 | proof step
EDGE: stepP:p11a:qt-k3 | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L103-L103 | proof step
EDGE: stepP:p11a:qt-k4 | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L105-L105 | proof step
EDGE: stepP:p11a:qt-k5 | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L107-L107 | proof step
EDGE: stepP:p11a:qt-k6 | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L109-L109 | proof step
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L73-L73 | gamma(frakd), eps_adm=eps_adm^flat(frakd)
EDGE: bpP:p11a:index-def | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L76-L76 | beta_{rho,mu}(omega,K) of Definition index-def
EDGE: bpP:p11a:displacement | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L84-L84 | c_Delta of Theorem displacement
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L80-L80 | X_H=(partial_I H,-partial_theta H)
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L80-L80 | Omega_0=dI wedge dtheta
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L72-L72 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:budget | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L86-L86 | Z4: the K5 statement identifies both the beta budget and the general all-data polynomial bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The input-only package sec-q-thm#data breaks the zero-case statement-reference cycle. No edge back to kam-input is added. The explicit K5 budget assertions and their direct budget supplier are retained.
```

### stepP:p11a:qt-order

```text
NODE: stepP:p11a:qt-order
KIND: step
TITLE: Totality and quantifier order
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-order@L93-L93
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-order@L93-L93
CONTRACT_ID: stepP:p11a:qt-order
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta
SOURCE_QUANTIFIERS: data fixed
SOURCE_CONCLUSION: gamma, eps_adm are explicit positive numbers of frakd; meas K>0, d>0; nothing in (A1)-(A4) or eps_f<=eps_adm mentions a conclusion; K_vartheta subset V (Euclidean distance<=vartheta implies max-distance<=vartheta<2 vartheta)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:thresholds, bpP:p11a:sec-q-thm#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-order@L93-L93 | gamma and eps_adm explicit positive numbers of the data
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-order@L93-L93 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:qt-reduce

```text
NODE: stepP:p11a:qt-reduce
KIND: step
TITLE: Reduction to the standing data of File 11a-3
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-reduce@L95-L95
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-reduce@L95-L95
CONTRACT_ID: stepP:p11a:qt-reduce
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta
SOURCE_QUANTIFIERS: (h,f), eps_f fixed
SOURCE_CONCLUSION: (A1)-(A4) are Assumption sel-data(c),(d) for (frakd',h,f) with eps any positive number with sup¦f¦<=eps; gamma(frakd')=gamma(frakd); eps_adm^flat(frakd)<=eps_adm^(3)(frakd')
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:sel-data, bpP:p11a:budget, bpP:p11a:thresholds, bpP:p11a:sec-q-thm#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-reduce@L95-L95 | (A1)-(A4) are Assumption sel-data(c),(d) for frakd'
EDGE: bpP:p11a:budget | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-reduce@L95-L95 | (a) minorant eps_adm^flat(frakd)<=eps_adm^(3)(frakd')
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-reduce@L95-L95 | gamma does not depend on M_0
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-reduce@L95-L95 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:qt-zero

```text
NODE: stepP:p11a:qt-zero
KIND: step
TITLE: The case $\varepsilon_f=0$
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-zero@L97-L97
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-zero@L97-L97
CONTRACT_ID: stepP:p11a:qt-zero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; eps_f=0 (the zero-case branch)
SOURCE_QUANTIFIERS: eps_f=0
SOURCE_CONCLUSION: Lemma zero-case gives (K1), (K2) with calH=H_0, (K3) with u_b=0, (K4) (evaluation map is the swap, lambda=0, meas calB=meas calH) and (K6) trivially
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:zero-case, bpP:p11a:sec-q-thm#data, bpP:p11a:thresholds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:zero-case | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-zero@L97-L97 | Lemma zero-case
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-zero@L97-L97 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-zero@L97-L97 | Z1: uses the named gamma or monotone threshold and its numerical data directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:qt-iter

```text
NODE: stepP:p11a:qt-iter
KIND: step
TITLE: The iteration
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-iter@L99-L99
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-iter@L99-L99
CONTRACT_ID: stepP:p11a:qt-iter
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: eps_f in (0,eps_adm]
SOURCE_CONCLUSION: Theorem parameter-selection gives compact H_infty subset K_infty subset K with meas H_infty>=meas K-eps* and omega_*(b) (gamma,tau)-Diophantine on H_infty; put calH=H_infty, w_b=omega_*(b): this is (K1)
CONSTANT_SCOPE: the radius s_0=s_0(eps) is chosen here from eps and the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:situation, bpP:p11a:schedule, bpP:p11a:free-radius, bpP:p11a:parameter-selection, stepP:p11a:qt-reduce, bpP:p11a:sec-q-thm#data, bpP:p11a:thresholds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-iter@L99-L99 | the situation (S) for frakd'
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-iter@L99-L99 | the schedule of Definition schedule
EDGE: bpP:p11a:free-radius | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-iter@L99-L99 | radius s_0(eps) chosen from eps and the data
EDGE: bpP:p11a:parameter-selection | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-iter@L99-L99 | K_infty, H_infty, omega_*, measure bound
EDGE: stepP:p11a:qt-reduce | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-iter@L99-L99 | eps<=eps_adm^(3)(frakd') and gamma(frakd')=gamma(frakd)
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-iter@L99-L99 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-iter@L99-L99 | Z1: uses the named gamma or monotone threshold and its numerical data directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:qt-k2

```text
NODE: stepP:p11a:qt-k2
KIND: step
TITLE: (K2)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k2@L101-L101
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k2@L101-L101
CONTRACT_ID: stepP:p11a:qt-k2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: b in calH
SOURCE_CONCLUSION: (K2): K_b real analytic, primary, D K_b w_b=X_H(K_b), Lagrangian, D K_b injective, K_b(theta)=K_b(theta') only if theta=theta', and the Diophantine bound for b in H_infty
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:limit-torus, bpP:p11a:sec-q-thm#data, stepP:p11a:qt-iter, bpP:p11a:situation, bpP:p11a:sec-limit#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:limit-torus | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k2@L101-L101 | Theorem limit-torus (a)-(e)
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k2@L101-L101 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: stepP:p11a:qt-iter | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k2@L101-L101 | Z3: supplies calH=H_infty, w_b and the positive-eps iteration to which this result is applied
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k2@L101-L101 | Z1: applies the Part 11a-4 result in its standing situation (S), for eps_f>0
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k2@L101-L101 | Z1: uses the constructed original-coordinate family and defect
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:qt-k3

```text
NODE: stepP:p11a:qt-k3
KIND: step
TITLE: (K3)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k3@L103-L103
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k3@L103-L103
CONTRACT_ID: stepP:p11a:qt-k3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: b in calH
SOURCE_CONCLUSION: (K3): sup¦u_b¦<=Delta(eps)<=min{2^-18,c_Delta eps^{1/2}/gamma}
CONSTANT_SCOPE: c_Delta depends on (N,mu,tau,s,C_1)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:displacement, bpP:p11a:sec-q-thm#data, bpP:p11a:thresholds, stepP:p11a:qt-iter, bpP:p11a:situation, bpP:p11a:sec-limit#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:displacement | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k3@L103-L103 | Theorem displacement
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k3@L103-L103 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k3@L103-L103 | Z1: uses the named gamma or monotone threshold and its numerical data directly
EDGE: stepP:p11a:qt-iter | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k3@L103-L103 | Z3: supplies calH=H_infty, w_b and the positive-eps iteration to which this result is applied
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k3@L103-L103 | Z1: applies the Part 11a-4 result in its standing situation (S), for eps_f>0
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k3@L103-L103 | Z1: uses the constructed original-coordinate family and defect
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:qt-k4

```text
NODE: stepP:p11a:qt-k4
KIND: step
TITLE: (K4)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k4@L105-L105
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k4@L105-L105
CONTRACT_ID: stepP:p11a:qt-k4
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: b,b' in calH
SOURCE_CONCLUSION: (K4): bi-Lipschitz bounds in the pair (theta,b), injectivity, Borel image with meas calB>=(1-2^-10)^{2N} meas calH>=2^{-2N} meas calH, compactness
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:evaluation-bilipschitz, bpP:p11a:sec-q-thm#data, stepP:p11a:qt-iter, bpP:p11a:situation, bpP:p11a:sec-limit#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:evaluation-bilipschitz | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k4@L105-L105 | Theorem evaluation-bilipschitz (a),(c),(d)
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k4@L105-L105 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: stepP:p11a:qt-iter | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k4@L105-L105 | Z3: supplies calH=H_infty, w_b and the positive-eps iteration to which this result is applied
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k4@L105-L105 | Z1: applies the Part 11a-4 result in its standing situation (S), for eps_f>0
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k4@L105-L105 | Z1: uses the constructed original-coordinate family and defect
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:qt-k5

```text
NODE: stepP:p11a:qt-k5
KIND: step
TITLE: (K5)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k5@L107-L107
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k5@L107-L107
CONTRACT_ID: stepP:p11a:qt-k5
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta
SOURCE_QUANTIFIERS: data fixed
SOURCE_CONCLUSION: (K5): monotonicity of eps_adm and eps_adm>=c_* beta^{B_0}
CONSTANT_SCOPE: c_* depends on the fixed entries only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:budget, bpP:p11a:sec-q-thm#data, bpP:p11a:thresholds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:budget | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k5@L107-L107 | Proposition budget (b) monotonicity and (d) the form (K5)
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k5@L107-L107 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k5@L107-L107 | Z1: uses the named gamma or monotone threshold and its numerical data directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:qt-k6

```text
NODE: stepP:p11a:qt-k6
KIND: step
TITLE: (K6)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k6@L109-L109
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k6@L109-L109
CONTRACT_ID: stepP:p11a:qt-k6
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: beta in (0,min{1,M}], 0<eps_f<=eps_adm in this branch; the eps_f=0 conclusion is supplied by qt-zero
SOURCE_CONCLUSION: (K6): sup¦u_b¦<=Delta<=c_Delta c_gamma eps_f^{1/2} beta^{-G_0}, c_D=c_Delta c_gamma depending on the fixed entries only
CONSTANT_SCOPE: c_D depends on the fixed entries only (c_Delta also on C_1, s)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:displacement-power, stepP:p11a:qt-k3, bpP:p11a:gamma-inverse, stepP:p11a:qt-reduce, bpP:p11a:sec-q-thm#data, bpP:p11a:thresholds, stepP:p11a:qt-iter, bpP:p11a:situation, bpP:p11a:sec-limit#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:displacement-power | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k6@L109-L109 | Corollary displacement-power
EDGE: stepP:p11a:qt-k3 | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k6@L109-L109 | Delta<=c_Delta sqrt(eps_f)/gamma
EDGE: bpP:p11a:gamma-inverse | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k6@L109-L109 | gamma^-1<=c_gamma beta^{-G_0}
EDGE: stepP:p11a:qt-reduce | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k6@L109-L109 | eps_adm^flat<=eps_adm^(3), so displacement-power applies at eps_f
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k6@L109-L109 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k6@L109-L109 | Z1: uses the named gamma or monotone threshold and its numerical data directly
EDGE: stepP:p11a:qt-iter | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k6@L109-L109 | Z3: supplies calH=H_infty, w_b and the positive-eps iteration to which this result is applied
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k6@L109-L109 | Z1: applies the Part 11a-4 result in its standing situation (S), for eps_f>0
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qt-k6@L109-L109 | Z1: uses the constructed original-coordinate family and defect
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p11a:physical-interface

```text
NODE: bpP:p11a:physical-interface
KIND: corollary
TITLE: Physical interface
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L116-L125
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L126-L135
CONTRACT_ID: bpP:p11a:physical-interface
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation of Theorem weak-kam-quantitative; S:=K(calH x [0,1)^N), S~:=K(calH x R^N)=S+(Z^N x {0})
SOURCE_QUANTIFIERS: data frakd, (h,f), eps_f as in the theorem; then calH, w_b from the theorem
SOURCE_CONCLUSION: (a) S is Borel and 0<2^{-2N}(meas K-eps*)<=2^{-2N} meas calH<=meas S<=(1+2^-10)^{2N} meas calH<infty; (b) every point of S is within max-distance Delta<=2^-18 of (theta,b), b in calH, theta in [0,1)^N, so its action lies in {dist_inf(I,calH)<=Delta} subset K+2^-18; (c) S~ is invariant under the flow of X_H: the integral curve through z=K_b(theta) exists for all t and equals t->K_b(theta+t w_b) in S~, and S~/(Z^N x {0}) is compact; (d) S~=⊔_{b in calH} K_b(R^N), and q(S~)=⊔_b q(K_b(R^N)) is a disjoint union of embedded compact Lagrangian tori with Diophantine frequency w_b (q the quotient to (R^N/Z^N) x R^N)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:pi-zero, stepP:p11a:pi-a, stepP:p11a:pi-b, stepP:p11a:pi-c, stepP:p11a:pi-d, bpP:p11a:weak-kam-quantitative, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:pi-zero | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L127-L127 | proof step
EDGE: stepP:p11a:pi-a | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L128-L128 | proof step
EDGE: stepP:p11a:pi-b | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L130-L130 | proof step
EDGE: stepP:p11a:pi-c | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L132-L132 | proof step
EDGE: stepP:p11a:pi-d | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L134-L134 | proof step
EDGE: bpP:p11a:weak-kam-quantitative | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L117-L117 | the situation of the theorem: calH, K_b, w_b, Delta
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L116-L116 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L116-L116 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:pi-zero

```text
NODE: stepP:p11a:pi-zero
KIND: step
TITLE: The case $\varepsilon_f=0$
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-zero@L127-L127
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-zero@L127-L127
CONTRACT_ID: stepP:p11a:pi-zero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; use the outputs calH, K_b and w_b of weak-kam-quantitative and the definitions S,S~ of sec-q-phys#data; eps_f=0 (the zero-case branch)
SOURCE_QUANTIFIERS: eps_f=0
SOURCE_CONCLUSION: assertions (a)-(d) follow from the explicit description
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:zero-case, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:zero-case | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-zero@L127-L127 | explicit description of the tori and of S
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-zero@L127-L127 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-zero@L127-L127 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:pi-a

```text
NODE: stepP:p11a:pi-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128
CONTRACT_ID: stepP:p11a:pi-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; use the outputs calH, K_b and w_b of weak-kam-quantitative and the definitions S,S~ of sec-q-phys#data; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: eps_f>0
SOURCE_CONCLUSION: (a): S Borel, 2^{-2N}(meas K-eps*)<=2^{-2N} meas calH<=meas S<=(1+2^-10)^{2N} meas calH<infty
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:evaluation-bilipschitz, bpP:p11a:weak-kam-quantitative, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:evaluation-bilipschitz | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128 | (c): lower and upper measure bounds
EDGE: bpP:p11a:weak-kam-quantitative | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128 | (K1): meas calH>=meas K-eps*
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128 | Z1: uses the positive-eps Part 11a-4 situation in this source branch
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:pi-b

```text
NODE: stepP:p11a:pi-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-b@L130-L130
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-b@L130-L130
CONTRACT_ID: stepP:p11a:pi-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; use the outputs calH, K_b and w_b of weak-kam-quantitative and the definitions S,S~ of sec-q-phys#data; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: eps_f>0
SOURCE_CONCLUSION: (b): every point of S is within Delta<=2^-18 of (theta,b); action coordinate in {dist_inf(I,calH)<=Delta} subset K+2^-18
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:weak-kam-quantitative, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:weak-kam-quantitative | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-b@L130-L130 | (K3): ¦u_b¦<=Delta<=2^-18
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-b@L130-L130 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-b@L130-L130 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:pi-c

```text
NODE: stepP:p11a:pi-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132
CONTRACT_ID: stepP:p11a:pi-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; use the outputs calH, K_b and w_b of weak-kam-quantitative and the definitions S,S~ of sec-q-phys#data; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: eps_f>0, z=K_b(theta) in S~
SOURCE_CONCLUSION: (c): the integral curve of X_H through z exists for all t and equals t->K_b(theta+t w_b) in S~; S~/(Z^N x {0}) is compact
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:weak-kam-quantitative, bpP:p11a:displacement, bpP:p11a:free-radius, bpP:p11a:limit-torus, bpP:p11a:evaluation-bilipschitz, stepP:p11a:pi-c-uniq, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:weak-kam-quantitative | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | (K2): the curve K_b(theta+t w_b) is an integral curve of X_H
EDGE: bpP:p11a:displacement | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | action coordinates within Delta of b, so in the domain of H
EDGE: bpP:p11a:free-radius | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | s_0<=vartheta so the curve lies in the domain of H
EDGE: bpP:p11a:limit-torus | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | (b): as used there, the curve lies in the domain of H
EDGE: bpP:p11a:evaluation-bilipschitz | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | (d): compactness of the quotient
EDGE: stepP:p11a:pi-c-uniq | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | uniqueness of the integral curve (Picard-Lindelof) for the locally Lipschitz field X_H
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | Z1: uses the positive-eps Part 11a-4 situation in this source branch
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p11a:pi-c-uniq

```text
NODE: stepP:p11a:pi-c-uniq
KIND: step
TITLE: Picard-Lindelof uniqueness for the locally Lipschitz field X_H
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c-uniq@L132-L132
PROOF_SOURCE: -
CONTRACT_ID: stepP:p11a:pi-c-uniq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X_H real analytic, hence locally Lipschitz on the open real part W of T_s x U; z in S~; t -> K_b(theta+t w_b) an integral curve defined on R through z at t=0
SOURCE_QUANTIFIERS: z in S~; a comparison integral curve on an interval J containing 0, taking the value z at 0
SOURCE_CONCLUSION: the comparison integral curve agrees with t -> K_b(theta+t w_b) on J (uniqueness through the initial point for the locally Lipschitz field)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-mvt, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c-uniq@L132-L132 | Lipschitz bound of the field from the mean value inequality
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c-uniq@L132-L132 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c-uniq@L132-L132 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: Picard-Lindelof uniqueness is named at L132 and listed at L157, without an authorized labelled external or a literal application of a cited import. The writer ruling explicitly retains this gap. N:bpN:p3:gen-uniqueness is only a nearest candidate: it requires a C^1 field on an open W, IsSolIn for both curves on intervals, and a common initial time. Supplying those translations would be additional work; no supplier edge or new external is certified here. The ext-mvt edge is the source-cited local Lipschitz estimate only.
```

### stepP:p11a:pi-d

```text
NODE: stepP:p11a:pi-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-d@L134-L134
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-d@L134-L134
CONTRACT_ID: stepP:p11a:pi-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; use the outputs calH, K_b and w_b of weak-kam-quantitative and the definitions S,S~ of sec-q-phys#data; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: eps_f>0
SOURCE_CONCLUSION: (d): S~=⊔_b K_b(R^N); if K_b(theta)=K_b'(theta')+(k,0) then b=b' by (K4), so the images q(K_b(R^N)) are pairwise disjoint, each an embedded compact Lagrangian torus with Diophantine frequency w_b by (K2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:weak-kam-quantitative, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:weak-kam-quantitative | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-d@L134-L134 | (K4) injectivity and (K2) equivariance, embeddedness, Lagrangian, Diophantine frequency
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-d@L134-L134 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-d@L134-L134 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### Add bpP:p11a:sec-comp#data

```text
NODE: bpP:p11a:sec-comp#data
KIND: definition
TITLE: Compositions with a shared parameter
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:sec-comp#data@L64-L64
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11a:sec-comp#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S), with maps X_nu supplied by the iteration
SOURCE_QUANTIFIERS: nu>=0; parameter b shared by all factors
SOURCE_CONCLUSION: defines Phi^(0)=id and Phi^(nu+1)(.,b)=Phi^(nu)(.,b) o X_{nu,b}; equivalently Phi^(nu)=X_0 o ... o X_{nu-1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:sec-comp#data@L64-L64 | source data or objects used by this definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Source definition extracted from the reused prose before composition; it does not assume the theorem about the compositions.
```

### Add bpP:p11a:sec-q-thm#data

```text
NODE: bpP:p11a:sec-q-thm#data
KIND: definition
TITLE: Input data and A1-A4 of the quantitative theorem
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:sec-q-thm#data@L73-L80
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11a:sec-q-thm#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta
SOURCE_QUANTIFIERS: N,mu,rho,tau,K,vartheta,s,C_1,M,M_0,beta,eps* (the data frakd) first; then gamma and eps_adm determined by frakd only; then (h,f) and eps_f
SOURCE_CONCLUSION: fixes the numerical data, U, H, index and derivative bounds (A1)-(A4), and the perturbation upper bound eps_f, including eps_f=0; it assumes none of (K1)-(K6)
CONSTANT_SCOPE: gamma and eps_adm are determined by the numerical data before (h,f); no torus, good set, bi-Lipschitz family or displacement is assumed
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:thresholds, bpP:p11a:index-def, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p0:hamsymp#symplecticForm
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:sec-q-thm#data@L73-L80 | source data or objects used by this definition
EDGE: bpP:p11a:index-def | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:sec-q-thm#data@L73-L80 | source data or objects used by this definition
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:sec-q-thm#data@L73-L80 | source data or objects used by this definition
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:sec-q-thm#data@L73-L80 | source data or objects used by this definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Input-only projection of the theorem statement, allowing zero-case and its proof to refer to the actual premises without a cycle to the theorem they help prove.
```

### Add bpP:p11a:sec-q-phys#data

```text
NODE: bpP:p11a:sec-q-phys#data
KIND: definition
TITLE: Physical-interface sets and chosen theorem outputs
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:sec-q-phys#data@L117-L117
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11a:sec-q-phys#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the input data of sec-q-thm#data; choose calH, K_b, w_b and Delta as supplied by weak-kam-quantitative
SOURCE_QUANTIFIERS: data; (h,f); eps_f; the chosen outputs; then b and theta
SOURCE_CONCLUSION: defines S=K(calH x [0,1)^N), S~=K(calH x R^N); equivariance gives S~=S+(Z^N x {0})
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:sec-q-thm#data, bpP:p11a:weak-kam-quantitative
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:sec-q-phys#data@L117-L117 | source data or objects used by this definition
EDGE: bpP:p11a:weak-kam-quantitative | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:sec-q-phys#data@L117-L117 | source data or objects used by this definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: This package defines the sets, without assuming the physical-interface conclusions. It covers both eps_f=0 and eps_f>0; the positive-radius situation is not imposed at zero.
```

### Coverage bpP:p11a:z-chain

```text
ITEM: bpP:p11a:z-chain
KIND: external
SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:z-chain@L54-L54
DISPOSITION: NODE bpP:p11a:z-chain
REASON: Z6: separately inventory this labelled external item, authorized by the writer ruling
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

### Coverage bpP:p11a:z-compact

```text
ITEM: bpP:p11a:z-compact
KIND: external
SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:z-compact@L55-L55
DISPOSITION: NODE bpP:p11a:z-compact
REASON: Z6: separately inventory this labelled external item, authorized by the writer ruling
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

### Coverage bpP:p11a:z-uniform

```text
ITEM: bpP:p11a:z-uniform
KIND: external
SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:z-uniform@L56-L56
DISPOSITION: NODE bpP:p11a:z-uniform
REASON: Z6: separately inventory this labelled external item, authorized by the writer ruling
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

### Coverage p11a4:prose-L64-L64

```text
ITEM: p11a4:prose-L64-L64
KIND: proof-region
SOURCE: blueprint-P/parts/p11a4-limit-family.tex#prose@L64-L64
DISPOSITION: NODE bpP:p11a:sec-comp#data
REASON: Z1: substantive shared-parameter composition definition, now isolated as sec-comp#data and linked directly from its consumers
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

### Coverage p11a4:prose-L119-L121

```text
ITEM: p11a4:prose-L119-L121
KIND: proof-region
SOURCE: blueprint-P/parts/p11a4-limit-family.tex#prose@L119-L121
DISPOSITION: NODE bpP:p11a:sec-limit#data
REASON: section data K_b, K(b,theta), u(b,theta) map to sec-limit#data; direct links are required from each consumer, including lt-lim, lt-lag, dp-tel and lf-split (the proposed blocks add the missing links)
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

### Coverage p11a4:prose-L28-L28

```text
ITEM: p11a4:prose-L28-L28
KIND: proof-region
SOURCE: blueprint-P/parts/p11a4-limit-family.tex#prose@L28-L28
DISPOSITION: NODE bpP:p11a:limit-torus, stepP:p11a:lt-field, stepP:p11a:lt-cov, stepP:p11a:lt-lag
REASON: field and form conventions map to the listed consumers and their frozen definition edges. The canonical identity is supplied by the compositions; the N symplectic-flow reference is explanatory notation, not an application to an arbitrary canonical map. Periods and norms are retained in source fields
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

### Coverage p11a5:statement-inputs-L73-L80

```text
ITEM: p11a5:statement-inputs-L73-L80
KIND: proof-region
SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:sec-q-thm#data@L73-L80
DISPOSITION: NODE bpP:p11a:sec-q-thm#data
REASON: Z1: input-only section package for all theorem/zero-case consumers, with no conclusion assumptions
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

### Coverage p11a5:statement-sets-L117-L117

```text
ITEM: p11a5:statement-sets-L117-L117
KIND: proof-region
SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:sec-q-phys#data@L117-L117
DISPOSITION: NODE bpP:p11a:sec-q-phys#data
REASON: Z1: reusable set definitions S and S~ before the physical-interface conclusions
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

## Suspected blueprint defects and limits

1. **Uniqueness citation is unbound:** p11a5-quantitative-theorem.tex L132 says `by uniqueness (Picard--Lindel\"of, \Kref{bp:p1:ext-mvt} for the Lipschitz bound)`. Mean value controls local Lipschitz constants, not ODE uniqueness. L157 lists that named fact, but no authorized labelled uniqueness external is provided. This is the already mandated pi-c-uniq SOURCE_GAP, preserved here; the nearest imported theorem is not silently substituted.
2. **Inconsistent intermediate block order in the measure proof:** p11a4-limit-family.tex L229 defines `A:=\{(\theta,b):\theta\in[0,1)^N,\ b\in H\}`, then writes `A=\bigcup_{m\ge2}H\times[0,1-\frac1m]^N`. In the stated (position,action) order, the factors of that exhaustion should be reversed. The block swap is an isometry and measure-preserving, so the intended measure/Borel argument is transparent, but the displayed equality is not literally correct as written. The replacement source fields retain A in the declared (theta,b) order; this is reported, not a source edit.
3. **Unqualified normal-form promise remains outside scope:** the 11a-4 L151 sourcegap records a hypothetical off-section normal form the source explicitly does not use. Its EXCLUDED disposition is correct; it is not a proof gap in a claimed torus statement.

No source PDF erratum is asserted from these checks. The review certifies neither Lean implementation nor mathematical closure of the exposed uniqueness obligation.

READY rev-P-z
