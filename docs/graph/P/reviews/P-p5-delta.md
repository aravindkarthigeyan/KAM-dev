# P-p5 delta topology review

Reviewer: **sol-delta-P-g**. Marker: **delta-P-g**. Date: 2026-10-28.

Verdict: **FAIL** — one missing direct dependency. Reviewed only the 53 nodes and 77 coverage items still marked PROPOSED. Node results: 52 PASS, 1 FAIL. Coverage results: 77 PASS. The initial reviewer was sol-review-P-g; the extractor was sonnet-extract-P-p5.

The review follows DELTA-BRIEF.md, REVIEW-BRIEF.md and SPEC.md, including the Convergence rule. All spans below refer to `blueprint-P/parts/p5-pg-assembly.tex`; statement, proof and every EDGE consumer span were re-read. Supplier statements were checked in Parts 0–4 and the cited K/N blueprints. Already REVIEWED records were consulted as suppliers, without reopening their verdicts. No Lean implementation or provider was consulted.

## Findings

**P5DG-01 — missing numerical-choice edge at L206.** `stepP:p5:kh-f` ends with
`C_R coth(sigma_av/4)^n/(2 pi) <= C_1`. This directly uses both the definition of C_R and the maximum defining C_1 at L201, now represented by `bpP:p5:kam-hyp#C1`. Neither `consts` nor `params` states that maximum. The existing path through `params` is transitive and does not replace this direct use. Add only the dependency and its EDGE; keep every other field verbatim. The coverage disposition for this step remains correct.

The previous review's constant-order repair passes: `#C1`, `#scales`, `#Cgamma`, `budget#constant` and `lower#constant` extract numerical choices without depending on the later radius-restricted estimates. In particular, Part 4 L109 has c_1 proportional to 1/meas(Dbar), while c_2 is independent of Dbar. Replacing the denominator by meas(V)/2 gives the stated uniform upper coefficient. The sum of the two displayed coefficients at L286–287 is a permissible C_b; L291 then defines C_* before the final threshold is shrunk. No averaging-map or torus-union estimate is assumed as an extra premise of these numerical nodes.

The SOURCE_GAP notes correctly expose the unregistered classical inputs identified in P5G-02; topology PASS does not discharge those inputs. The complex Cramer input is supplied by K's carrier-neutral adjugate identity, rather than the real-vector conclusion of Part 4's beta-inverse. Added package/section-data edges resolve P5G-03, subject to the one additional direct-use finding above. The main theorem's witnesses and strictness's deleted family are conclusions/choices rather than added hypotheses, resolving P5G-04. No route nodes or mechanically filled generic step quantifiers occur among the proposed records.

## Node decisions

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepP:p5:ext-loc | PASS | L33-L33 | Faithful source contract; unregistered input explicitly exposed as SOURCE_GAP. |
| stepP:p5:ext-glue | PASS | L34-L34 | Faithful source contract; unregistered input explicitly exposed as SOURCE_GAP. |
| stepP:p5:be-coef | PASS | L58-L58 | Faithful source contract; unregistered input explicitly exposed as SOURCE_GAP. |
| stepP:p5:be-an | PASS | L59-L59 | Faithful source contract; unregistered input explicitly exposed as SOURCE_GAP. |
| stepP:p5:be-jet | PASS | L60-L60 | Faithful source contract; unregistered input explicitly exposed as SOURCE_GAP. |
| stepP:p5:ur-schwarz | PASS | L73-L73 | Faithful source contract; unregistered input explicitly exposed as SOURCE_GAP. |
| stepP:p5:bl-real | PASS | L92-L92 | Faithful source contract; unregistered input explicitly exposed as SOURCE_GAP. |
| stepP:p5:bl-comp | PASS | L93-L93 | Faithful source contract; unregistered input explicitly exposed as SOURCE_GAP. |
| stepP:p5:fd-bd | PASS | L110-L110 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:fd-beta | PASS | L112-L112 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:fi-blk | PASS | L128-L128 | Faithful source contract; unregistered input explicitly exposed as SOURCE_GAP. |
| stepP:p5:fi-inv | PASS | L129-L129 | Faithful source contract; unregistered input explicitly exposed as SOURCE_GAP. |
| bpP:p5:params | PASS | L137-L145 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:rstar | PASS | L147-L156 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:param-facts | PASS | L158-L163; L164-L166 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:av-R2 | PASS | L178-L178 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:av-id | PASS | L179-L179 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:phi-chart | PASS | L188-L191; L192-L196 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:pc-img | PASS | L193-L193 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:kam-hyp | PASS | L198-L202; L203-L208 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:kh-dom | PASS | L204-L204 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:kh-f | FAIL | L206-L206 | P5DG-01: missing direct edge to bpP:p5:kam-hyp#C1 for the last inequality and C_R. |
| stepP:p5:kh-norm | PASS | L207-L207 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:kam-cond | PASS | L212-L222; L223-L226 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:kc-small | PASS | L225-L225 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:rK | PASS | L228-L231; L232-L234 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:location | PASS | L241-L243; L244-L248 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:lo-act | PASS | L246-L246 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:torus-conv | PASS | L256-L258; L259-L264 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:tc-chart | PASS | L260-L260 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:tc-LT | PASS | L261-L261 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:tc-freq | PASS | L263-L263 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:cell-transfer | PASS | L266-L268; L269-L275 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:ct-dec | PASS | L271-L271 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:ct-disj | PASS | L272-L272 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:ct-count | PASS | L273-L273 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:ct-liou | PASS | L274-L274 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:budget | PASS | L280-L283; L284-L288 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:bu-dio | PASS | L286-L286 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:bu-collar | PASS | L287-L287 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:lower | PASS | L290-L293; L294-L298 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:lo-setup | PASS | L295-L295 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:lo-lost | PASS | L297-L297 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:strictness | PASS | L302-L307; L308-L313 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:st-add | PASS | L309-L309 | Source fields, direct uses and locators agree; prior repair passes. |
| stepP:p5:st-ivt | PASS | L311-L311 | Faithful source contract; unregistered input explicitly exposed as SOURCE_GAP. |
| stepP:p5:st-conc | PASS | L312-L312 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:main | PASS | L317-L320; L321-L326 | Source fields, direct uses and locators agree; prior repair passes. |
| bpP:p5:kam-hyp#C1 | PASS | L200-L201 | Numerical choice is directly sourced and independent of later estimates. |
| bpP:p5:kam-cond#scales | PASS | L213-L217 | Numerical choice is directly sourced and independent of later estimates. |
| bpP:p5:rstar#Cgamma | PASS | L152-L152 | Numerical choice is directly sourced and independent of later estimates. |
| bpP:p5:budget#constant | PASS | L286-L287 | Numerical choice is directly sourced and independent of later estimates. |
| bpP:p5:lower#constant | PASS | L291-L291 | Numerical choice is directly sourced and independent of later estimates. |

## Coverage decisions

Each row decides the coverage record, separately from the corresponding node.

| ID | Verdict | Span re-read | Reason |
|---|---|---|---|
| stepP:p5:ext-loc | PASS | L33-L33 | Correct mapping to the named node. |
| stepP:p5:ext-glue | PASS | L34-L34 | Correct mapping to the named node. |
| stepP:p5:be-coef | PASS | L58-L58 | Correct mapping to the named node. |
| stepP:p5:be-an | PASS | L59-L59 | Correct mapping to the named node. |
| stepP:p5:be-jet | PASS | L60-L60 | Correct mapping to the named node. |
| stepP:p5:ur-schwarz | PASS | L73-L73 | Correct mapping to the named node. |
| stepP:p5:bl-real | PASS | L92-L92 | Correct mapping to the named node. |
| stepP:p5:bl-comp | PASS | L93-L93 | Correct mapping to the named node. |
| stepP:p5:fd-bd | PASS | L110-L110 | Correct mapping to the named node. |
| stepP:p5:fd-beta | PASS | L112-L112 | Correct mapping to the named node. |
| stepP:p5:fi-blk | PASS | L128-L128 | Correct mapping to the named node. |
| stepP:p5:fi-inv | PASS | L129-L129 | Correct mapping to the named node. |
| bpP:p5:freq-inj-rem | PASS | L131-L133 | Valid administrative/provenance/pointer exclusion; no additional consumed claim. |
| bpP:p5:params | PASS | L137-L145 | Correct mapping to the named node. |
| bpP:p5:rstar | PASS | L147-L156 | Maps the labelled unit and its separately consumed numerical choice. |
| bpP:p5:param-facts | PASS | L158-L163 | Correct mapping to the named node. |
| stepP:p5:av-R2 | PASS | L178-L178 | Correct mapping to the named node. |
| stepP:p5:av-id | PASS | L179-L179 | Correct mapping to the named node. |
| bpP:p5:phi-chart | PASS | L188-L191 | Correct mapping to the named node. |
| stepP:p5:pc-img | PASS | L193-L193 | Correct mapping to the named node. |
| bpP:p5:kam-hyp | PASS | L198-L202 | Maps the labelled unit and its separately consumed numerical choice. |
| stepP:p5:kh-dom | PASS | L204-L204 | Correct mapping to the named node. |
| stepP:p5:kh-f | PASS | L206-L206 | Correct mapping to the named node. |
| stepP:p5:kh-norm | PASS | L207-L207 | Correct mapping to the named node. |
| bpP:p5:kam-cond | PASS | L212-L222 | Maps the labelled unit and its separately consumed numerical choice. |
| stepP:p5:kc-small | PASS | L225-L225 | Correct mapping to the named node. |
| bpP:p5:rK | PASS | L228-L231 | Correct mapping to the named node. |
| bpP:p5:use5-fix | PASS | L235-L237 | Valid administrative/provenance/pointer exclusion; no additional consumed claim. |
| bpP:p5:location | PASS | L241-L243 | Correct mapping to the named node. |
| stepP:p5:lo-act | PASS | L246-L246 | Correct mapping to the named node. |
| bpP:p5:torus-conv | PASS | L256-L258 | Correct mapping to the named node. |
| stepP:p5:tc-chart | PASS | L260-L260 | Correct mapping to the named node. |
| stepP:p5:tc-LT | PASS | L261-L261 | Correct mapping to the named node. |
| stepP:p5:tc-freq | PASS | L263-L263 | Correct mapping to the named node. |
| bpP:p5:cell-transfer | PASS | L266-L268 | Correct mapping to the named node. |
| stepP:p5:ct-dec | PASS | L271-L271 | Correct mapping to the named node. |
| stepP:p5:ct-disj | PASS | L272-L272 | Correct mapping to the named node. |
| stepP:p5:ct-count | PASS | L273-L273 | Correct mapping to the named node. |
| stepP:p5:ct-liou | PASS | L274-L274 | Correct mapping to the named node. |
| bpP:p5:budget | PASS | L280-L283 | Maps the labelled unit and its separately consumed numerical choice. |
| stepP:p5:bu-dio | PASS | L286-L286 | Correct mapping to the named node. |
| stepP:p5:bu-collar | PASS | L287-L287 | Correct mapping to the named node. |
| bpP:p5:lower | PASS | L290-L293 | Maps the labelled unit and its separately consumed numerical choice. |
| stepP:p5:lo-setup | PASS | L295-L295 | Correct mapping to the named node. |
| stepP:p5:lo-lost | PASS | L297-L297 | Correct mapping to the named node. |
| bpP:p5:strictness | PASS | L302-L307 | Correct mapping to the named node. |
| stepP:p5:st-add | PASS | L309-L309 | Correct mapping to the named node. |
| stepP:p5:st-ivt | PASS | L311-L311 | Correct mapping to the named node. |
| stepP:p5:st-conc | PASS | L312-L312 | Correct mapping to the named node. |
| bpP:p5:main | PASS | L317-L320 | Correct mapping to the named node. |
| bpP:p5:quant | PASS | L328-L330 | Valid administrative/provenance/pointer exclusion; no additional consumed claim. |
| heading:bpP:p5 | PASS | L1-L1 | Valid heading exclusion; no additional consumed claim. |
| heading:bpP:p5:conv | PASS | L9-L9 | Valid heading exclusion; no additional consumed claim. |
| heading:bpP:p5:unif | PASS | L25-L25 | Valid heading exclusion; no additional consumed claim. |
| heading:bpP:p5:domain-reduction | PASS | L76-L76 | Valid heading exclusion; no additional consumed claim. |
| heading:bpP:p5:parameters | PASS | L135-L135 | Valid heading exclusion; no additional consumed claim. |
| heading:bpP:p5:kam-application | PASS | L168-L168 | Valid heading exclusion; no additional consumed claim. |
| heading:bpP:p5:kam-ham | PASS | L182-L182 | Valid heading exclusion; no additional consumed claim. |
| heading:bpP:p5:scales | PASS | L210-L210 | Valid heading exclusion; no additional consumed claim. |
| heading:bpP:p5:tori | PASS | L239-L239 | Valid heading exclusion; no additional consumed claim. |
| heading:bpP:p5:measure | PASS | L278-L278 | Valid heading exclusion; no additional consumed claim. |
| heading:bpP:p5:strict | PASS | L300-L300 | Valid heading exclusion; no additional consumed claim. |
| heading:bpP:p5:proof | PASS | L315-L315 | Valid heading exclusion; no additional consumed claim. |
| heading:bpP:p5:notes | PASS | L332-L332 | Valid heading exclusion; no additional consumed claim. |
| p5:sourcegap-L69 | PASS | L69-L69 | Maps the bridge/conventions to the named supplying units. |
| p5:sourcegap-L306 | PASS | L306-L306 | Maps the bridge/conventions to the named supplying units. |
| p5:source-L68 | PASS | L68-L68 | Valid administrative/provenance/pointer exclusion; no additional consumed claim. |
| p5:source-L85 | PASS | L85-L85 | Valid administrative/provenance/pointer exclusion; no additional consumed claim. |
| p5:source-L101 | PASS | L101-L101 | Valid administrative/provenance/pointer exclusion; no additional consumed claim. |
| p5:source-L292 | PASS | L292-L292 | Valid administrative/provenance/pointer exclusion; no additional consumed claim. |
| p5:source-L305 | PASS | L305-L305 | Valid administrative/provenance/pointer exclusion; no additional consumed claim. |
| p5:prose-L5-L5 | PASS | L5-L5 | Valid administrative/provenance/pointer exclusion; no additional consumed claim. |
| p5:prose-L7-L7 | PASS | L7-L7 | Valid administrative/provenance/pointer exclusion; no additional consumed claim. |
| p5:prose-L11-L11 | PASS | L11-L11 | Maps the bridge/conventions to the named supplying units. |
| p5:prose-L27-L27 | PASS | L27-L27 | Valid administrative/provenance/pointer exclusion; no additional consumed claim. |
| p5:prose-L78-L78 | PASS | L78-L78 | Correct mapping to the named node. |
| p5:prose-L334-L339 | PASS | L334-L339 | Valid administrative/provenance/pointer exclusion; no additional consumed claim. |

## Replacement

### P-p5 — stepP:p5:kh-f

Only DEPS and the additional EDGE change.

```text
NODE: stepP:p5:kh-f
KIND: step
TITLE: $f$
STATEMENT_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206
PROOF_SOURCE: blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206
CONTRACT_ID: stepP:p5:kh-f
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: on the polar image ¦x¦ < 2r <= r_1; sup bounds of mu Q (uniform remainder) and P~_rem (N-norm bound of avg); sup-to-weighted conversion with loss sigma_av/2
SOURCE_QUANTIFIERS: (r,mu) admissible
SOURCE_CONCLUSION: sup of ¦f_mu¦ <= C_R mu r^5 on the strip sigma_av, hence the N-norm of f_3 at (rho, sigma_tot) is <= C_R coth(sigma_av/4)^n mu r^5/2 pi <= C_1 mu r^5 = E
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p5:uniform-remainder, bpP:p5:avg, bpP:p5:consts, N:bpN:p4:sup-weighted, stepP:p5:kh-dom, bpP:p5:phi-chart, bpP:p5:rstar, bpP:p5:params, bpP:p5:kam-hyp#C1
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p5:uniform-remainder | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | ¦Q¦ <= C_Q ¦x¦^5
EDGE: bpP:p5:avg | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | N-norm of P~_rem <= 2 Lambda_P mu r^5
EDGE: bpP:p5:consts | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | sup-to-weighted conversion and Lambda_P
EDGE: N:bpN:p4:sup-weighted | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | sup <= weighted norm and weighted <= coth . sup
EDGE: stepP:p5:kh-dom | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | polar image inside W
EDGE: bpP:p5:phi-chart | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | f_mu = (mu Q + P~_rem) o Pol
EDGE: bpP:p5:rstar | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | 2r <= r_1 from r_* <= r_1/2
EDGE: bpP:p5:params | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | uses the parameter definitions (widths, scales, domain or shell) directly
EDGE: bpP:p5:kam-hyp#C1 | blueprint-P/parts/p5-pg-assembly.tex#stepP:p5:kh-f@L206-L206 | C_R := 2^5 C_Q + 2 Lambda_P and the defining maximum give C_R coth(sigma_av/4)^n/(2 pi) <= C_1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p5+sol-review-P-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Validation and limits

- `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-p5 --structural`: `90 nodes, 528 edges, 114 coverage items, 0 problems, 0 TODO records (not counted: --structural)`.
- `sha256sum -c docs/graph/P/CORPUS.sha256` and `sha256sum -c docs/graph/P/IMPORTS.sha256`: all entries OK.
- Review-parser dry run: `1 replaced, 0 added, 0 coverage items, 0 unresolved FAILs`. Its PASS counter conflates node and coverage rows with shared IDs; the independently checked counts are 52 passing nodes and 77 passing coverage items.
- Independent checks: tables match exactly the 53/77 PROPOSED record sets; the replacement changes only DEPS and EDGE; all 53 proposed nodes are reachable from P-G assembly, with no cycle in its prerequisite closure after the replacement.
- `git diff --check`: clean; report whitespace checked separately (the report is untracked).
- Corpus search confirms that freq-inj-rem, use5-fix and quant have no substantive consumers; their exclusions pass. The local administrative reference to use5-fix at L337 is a pointer.
- Checked the P-G frozen declaration's binder/conclusion order against main; A,d are witnesses of the boundary premise. No anchor identity field is changed.

No new suspected pinned-paper erratum is asserted by this topology review. Existing source-gap/erratum disclosures remain in place. This review does not certify mathematical proof closure. Only this report is written; packets, SPEC, Lean and manifest remain untouched.
