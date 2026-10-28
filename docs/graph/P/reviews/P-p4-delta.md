# P-p4 delta topology review

**Verdict: PASS.** Reviewer: `sol-delta-P-f`. Marker: `delta-P-f`.

Reviewed exactly the **12 nodes** still marked `TOPOLOGY_STATUS: PROPOSED` and **48 coverage items** still marked `COVERAGE_STATUS: PROPOSED`. All 60 records PASS. The other records were consulted only as prerequisites or coverage context. The reviewer is distinct from `sol-review-P-f` and `sonnet-extract-P-p4`.

Applied DELTA-BRIEF, REVIEW-BRIEF and SPEC, including the Convergence rule, against the current packets and the fixes in `P-p4-review.md`. Source snapshot: `80b3da9fe0467f3cd18537c057bab0971bb1aac8`; both source-pin lists verify. This is a source-topology verdict, not mathematical proof closure or Lean verification.

## P-p4: node checks

`p4` denotes `blueprint-P/parts/p4-pg-measure.tex`. Each span includes the statement/proof and every EDGE location of that record. All dependencies resolve, and all 12 proposed nodes are reachable from the six declared roots. No proposed node has alternative routes or the mechanically filled “inherits ... no new binders” quantifier text.

| ID | Verdict | Spans re-read | Result |
|---|---|---|---|
| stepP:p4:lc-local | PASS | p4 L47–48 | F1/F6 closed: both uses are at L48; the bound is local to the chosen closed neighborhood. |
| stepP:p4:li-cont | PASS | p4 L56–57 | F2 closed: ext-borel supplies compactness of the continuous image; derivative and frozen-definition inputs are direct. |
| bpP:p4:lattice-tail | PASS | p4 L95–98; p4 L99–102 | F3 closed: a,b >= 1 and n=a+b restore the inherited dimensional restriction; both proof steps are linked. |
| stepP:p4:lt-a | PASS | p4 L100 | F3 closed: the two imported lattice-sum instances have their required exponent and dimension bounds. |
| stepP:p4:lt-b | PASS | p4 L101 | F4 closed: 2*3^(n-1) multiplies both bounds, including the final integral estimate. |
| bpP:p4:two-scale-diophantine-measure | PASS | p4 L104–112; p4 L113–141 | F2 closed: lattice-tail is linked directly at the definitions of S_1, S_2, C_T in c_1,c_2; S4, frequency and proof-step edges agree with the source. |
| stepP:p4:dm-A | PASS | p4 L125–128 | F1 closed: coordinate and data edges locate their uses at L126–128; Tonelli and lattice summation are direct inputs. |
| stepP:p4:dm-sum | PASS | p4 L139–140 | F1/F2 closed: all uses are located at L140; the S4 normalization data have a direct edge. |
| stepP:p4:dc-prod | PASS | p4 L161–162 | F1/F2/F5 closed: the product formula is a conclusion, not an assumed ingredient; both section-data dependencies are direct at L162. |
| stepP:p4:dm-jac | PASS | p4 L180–181 | F1 closed: chart use is at L181, with the stated polar, area-formula and measure inputs. |
| stepP:p4:dm-cell | PASS | p4 L182–183 | F1 closed: definitions are used at L183; the chart, oscillator actions, cylinder and cell match the raw statement. |
| stepP:p4:dm-shell | PASS | p4 L184–185 | F1/F2/F6 closed: equality is qualified by the inherited null set; the Jacobian multiplier is linked directly at L185. |

The prerequisite contracts were checked in raw P Part 0 L91–106, L112–121 and L137–144 (actions, frequency, cylinder/cell and fast diffeomorphism); P Part 1 L23–24, L119–121, L155–161 and L191–193 (area/Borel inputs, polar chart, two-scale set and measure scaling); P Part 3a L18–22 (norm and neighborhood data); and P Part 4 L11–14, L19–37, L45–46, L51–60, L72–86, L118–123, L130–138, L153–154 and L169–177. Imported prerequisites were checked at their P-imports statement locators in K Part 1 L75–78, L92–94 and L1124–1129, and K Part 4 L53–55 and L66–71. These are statement checks, not an audit of the imported packets.

In particular, the lt-a field describing the K lattice-sum instances records the explicit imported argument used on L100; the dependency is present and no additional conditional assumption is needed. The restored n=a+b restriction makes both applications valid. In lt-b, p−1=tau+1−n, so the retained prefactor gives exactly C_T(2/m)^(tau+1−n).

## P-p4: coverage checks

Each row below is a proposed coverage record, separately from any node with the same ID.

| ID | Verdict | Spans re-read | Disposition check |
|---|---|---|---|
| bpP:p4:ext-mvt | PASS | p4 L12 | Alias of the three named prerequisite facts; consumers link to their actual owners. |
| stepP:p4:lc-local | PASS | p4 L47–48 | Maps to stepP:p4:lc-local. |
| stepP:p4:li-cont | PASS | p4 L56–57 | Maps to stepP:p4:li-cont. |
| bpP:p4:lattice-tail | PASS | p4 L95–98 | Maps to bpP:p4:lattice-tail. |
| stepP:p4:lt-a | PASS | p4 L100 | Maps to stepP:p4:lt-a. |
| stepP:p4:lt-b | PASS | p4 L101 | Maps to stepP:p4:lt-b. |
| bpP:p4:two-scale-diophantine-measure | PASS | p4 L104–112 | Maps to bpP:p4:two-scale-diophantine-measure. |
| stepP:p4:dm-A | PASS | p4 L125–128 | Maps to stepP:p4:dm-A. |
| stepP:p4:dm-sum | PASS | p4 L139–140 | Maps to stepP:p4:dm-sum. |
| bpP:p4:lemma-3-1 | PASS | p4 L143–145 | Comparison/provenance; no corpus proof consumes the remark. |
| bpP:p4:tau | PASS | p4 L147–149 | No corpus consumer; Part 5 selects tau=n+1 independently. |
| bpP:p4:domain-collar | PASS | p4 L156–159 | Part 5 re-derives its domain-specific estimate; the separately consumed dc-prod stays. |
| stepP:p4:dc-prod | PASS | p4 L161–162 | Maps to stepP:p4:dc-prod. |
| stepP:p4:dc-diff | PASS | p4 L163–164 | Part 5 re-derives its domain-specific estimate; the separately consumed dc-prod stays. |
| stepP:p4:dm-jac | PASS | p4 L180–181 | Maps to stepP:p4:dm-jac. |
| stepP:p4:dm-cell | PASS | p4 L182–183 | Maps to stepP:p4:dm-cell. |
| stepP:p4:dm-shell | PASS | p4 L184–185 | Maps to stepP:p4:dm-shell. |
| bpP:p4:budget | PASS | p4 L190–195 | Unused D_t-budget or its proof step; Part 5 supplies its own budget and lower bound. |
| stepP:p4:bu-read | PASS | p4 L197–198 | Unused D_t-budget or its proof step; Part 5 supplies its own budget and lower bound. |
| stepP:p4:bu-dio | PASS | p4 L199–200 | Unused D_t-budget or its proof step; Part 5 supplies its own budget and lower bound. |
| stepP:p4:bu-collar | PASS | p4 L201–202 | Unused D_t-budget or its proof step; Part 5 supplies its own budget and lower bound. |
| bpP:p4:cell-budget | PASS | p4 L205–208 | Unused D_t-budget or its proof step; Part 5 supplies its own budget and lower bound. |
| stepP:p4:cb-dec | PASS | p4 L210–211 | Unused D_t-budget or its proof step; Part 5 supplies its own budget and lower bound. |
| stepP:p4:cb-bad | PASS | p4 L212–214 | Unused D_t-budget or its proof step; Part 5 supplies its own budget and lower bound. |
| stepP:p4:cb-lost | PASS | p4 L215–216 | Unused D_t-budget or its proof step; Part 5 supplies its own budget and lower bound. |
| bpP:p4:use5 | PASS | p4 L219–221 | Administrative interface pointer superseded by Part 5. |
| heading:bpP:p4 | PASS | p4 L1 | Heading only; substantive units are inventoried separately. |
| heading:bpP:p4:ext | PASS | p4 L9 | Heading only; substantive units are inventoried separately. |
| heading:bpP:p4:s-collar | PASS | p4 L17 | Heading only; substantive units are inventoried separately. |
| heading:bpP:p4:s-lip | PASS | p4 L39 | Heading only; substantive units are inventoried separately. |
| heading:bpP:p4:s-dio | PASS | p4 L70 | Heading only; substantive units are inventoried separately. |
| heading:bpP:p4:s-domain | PASS | p4 L151 | Heading only; substantive units are inventoried separately. |
| heading:bpP:p4:s-disc | PASS | p4 L167 | Heading only; substantive units are inventoried separately. |
| heading:bpP:p4:s-budget | PASS | p4 L188 | Heading only; substantive units are inventoried separately. |
| heading:bpP:p4:errata | PASS | p4 L223 | Heading only; substantive units are inventoried separately. |
| heading:bpP:p4:forward | PASS | p4 L232 | Heading only; substantive units are inventoried separately. |
| p4:source-L28 | PASS | p4 L28 | Provenance for the separately proved result; no unrepresented input. |
| p4:source-L53 | PASS | p4 L53 | Provenance for the separately proved result; no unrepresented input. |
| p4:source-L111 | PASS | p4 L111 | Provenance for the separately proved result; no unrepresented input. |
| p4:prose-L3-L3 | PASS | p4 L3 | Introductory outline and pointers. |
| p4:prose-L5-L5 | PASS | p4 L5 | Route motivation and comparison; substantive estimates are represented. |
| p4:prose-L7-L7 | PASS | p4 L7 | Maps to bpP:p4:two-scale-diophantine-measure, bpP:p4:disc-measure. |
| p4:prose-L19-L20 | PASS | p4 L19–20 | Maps to bpP:p4:conv#data. |
| p4:prose-L68-L68 | PASS | p4 L68 | Forward pointer; Part 5 supplies the uniform bounds. |
| p4:prose-L153-L154 | PASS | p4 L153–154 | Maps to bpP:p4:conv#shell. |
| p4:prose-L169-L171 | PASS | p4 L169–171 | Maps to bpP:p4:s-disc#chart. |
| p4:prose-L224-L230 | PASS | p4 L224–230 | Source-errata discussion, not a proof input. |
| p4:prose-L233-L233 | PASS | p4 L233 | References, forward pointers and formalization notes. |

The excluded labels and proof-step labels were searched across the blueprint parts. Their in-scope mentions are confined to Part 4, the Part 5 replacement/comparison passages, and the Part 3b L215 pointer naming the consumer of its measure output. Part 5 L7, L236 and L278–297 confirms the replacements: its L287 consumes the general product-neighborhood assertion in dc-prod, but reproduces the difference/measure argument for check D with the extra D_t minus check D term. Thus neither the excluded D_t-specific domain-collar theorem nor dc-diff needs restoration. The retained dc-prod statement includes the general product-neighborhood assertion used there; its specialized collar conclusion and section-data edges remain faithful.

The convention paragraph at L7 maps to its consumers; the actual standing data, shell and polar chart paragraphs at L19–20, L153–154 and L169–171 map to their explicit definition nodes. Their generic inventory reason text does not invalidate these correct mappings.

## P-p4: replacements

None. Findings F1–F6 are resolved by the proposed node rewrites, and no proposed coverage disposition requires a change. No packet or other repository file was edited by this review.

## Checks and limitations

- `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-p4 --structural`: `35 nodes, 101 edges, 68 coverage items, 0 problems, 0 TODO records (not counted: --structural)`.
- `sha256sum -c docs/graph/P/CORPUS.sha256`: every listed source OK.
- `sha256sum -c docs/graph/P/IMPORTS.sha256`: every listed source OK.
- Read-only traversal of current packet DEPS/ROUTES from the six SPEC roots: all 12 proposed P-p4 nodes reachable.
- Report inventory checked against the current PROPOSED sets: 12 node rows and 48 coverage rows, no omissions or extra records.

No new suspected blueprint or pinned-source defect was identified in this delta topology check. The existing Part 4 source-errata discussion remains provenance; this review does not independently re-audit CP10. No Lean implementation, provider or proof-status evidence was used, and no Lean build was run.
