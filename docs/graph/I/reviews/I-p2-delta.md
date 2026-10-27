# I-p2 delta topology review

Reviewer: `sol-delta-I-b`, 2026-10-27. Marker: `delta-I-b`.
Independent of extractor `sonnet-extract-I-p2` and slice reviewer `sol-review-I-p2`.

**Verdict: FAIL. Of 44 proposed nodes, 34 PASS and 10 FAIL. All 79 proposed coverage items PASS.**

I read `DELTA-BRIEF.md` in full, the binding `REVIEW-BRIEF.md` and `SPEC.md` with its rulings, repository rules/decisions, both assigned slice reviews and packets, and the complete raw Parts 2 and 3. For every proposed record I checked the statement/proof fields, every EDGE at the consumer, package uses, local conditional premises, and the coverage disposition. Imported K results were checked in the owning raw blueprint, not inferred from Lean implementation. I read the relevant frozen I-G1/I-HEAD signatures and definitions and used only manifest identity fields. No providers, implementation modules, Lean proof bodies or proof-status fields were used.

The table locators below are relative to `blueprint-I/parts/`. A node row includes its EDGE spans within the listed units. The node and coverage tables are separate inventories: a coverage PASS does not override a node FAIL with the same ID. PASS is source/topology fidelity, not mathematical or Lean proof closure.

## Proposed nodes

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p2:standing#k-bridge | PASS | p2-iso-iteration.tex #bpI:p2:standing #k-bridge@L44-L48 | Source fields, direct uses, packages and locators agree. |
| bpI:p2:constants | PASS | p2-iso-iteration.tex #bpI:p2:constants@L67-L91 | Source fields, direct uses, packages and locators agree. |
| bpI:p2:admissible | PASS | p2-iso-iteration.tex #bpI:p2:admissible@L93-L112 | Source fields, direct uses, packages and locators agree. |
| bpI:p2:correction | PASS | p2-iso-iteration.tex #bpI:p2:correction@L132-L150; p2-iso-iteration.tex #bpI:p2:correction@L151-L166 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:co-xi0 | PASS | p2-iso-iteration.tex #stepI:p2:co-xi0@L154-L155 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:co-xi | PASS | p2-iso-iteration.tex #stepI:p2:co-xi@L156-L159 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:co-omega | PASS | p2-iso-iteration.tex #stepI:p2:co-omega@L160-L161 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:co-dk | PASS | p2-iso-iteration.tex #stepI:p2:co-dk@L162-L163 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:co-reg | PASS | p2-iso-iteration.tex #stepI:p2:co-reg@L164-L165 | Source fields, direct uses, packages and locators agree. |
| bpI:p2:newton-error | FAIL | p2-iso-iteration.tex #bpI:p2:newton-error@L168-L181; p2-iso-iteration.tex #bpI:p2:newton-error@L182-L193 | SOURCE_QUANTIFIERS reintroduces beta and d after the correction data; d is defined, not a new free parameter. The bridge application EDGE also needs the actual frame-identity use at L184. |
| stepI:p2:ne-invert | PASS | p2-iso-iteration.tex #stepI:p2:ne-invert@L183-L184 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:ne-expand | PASS | p2-iso-iteration.tex #stepI:p2:ne-expand@L185-L186 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:ne-reduce | PASS | p2-iso-iteration.tex #stepI:p2:ne-reduce@L187-L188 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:ne-est | PASS | p2-iso-iteration.tex #stepI:p2:ne-est@L189-L190 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:ne-energy | FAIL | p2-iso-iteration.tex #stepI:p2:ne-energy@L191-L192 | Missing direct geometry-noA5 input for the Omega_K estimate used at L192, and missing integral input for integrability/linearity and the averaged norm bound. |
| bpI:p2:torsion | FAIL | p2-iso-iteration.tex #bpI:p2:torsion@L205-L213; p2-iso-iteration.tex #bpI:p2:torsion@L214-L225 | SOURCE_HYPOTHESES and SOURCE_CONCLUSION conflate K C_DeltaT with the larger C_DeltaScriptT defined at L78; d is constructed. The correction and K-bridge EDGE locators also need actual uses rather than the lemma heading. |
| stepI:p2:to-frame | FAIL | p2-iso-iteration.tex #stepI:p2:to-frame@L215-L216 | The L216 citation to extended-basic at (Kbar,omegabar) lacks that lemma's Diophantine standing premise; no premise-discharge or scoped SOURCE_GAP is recorded. |
| stepI:p2:to-omega | PASS | p2-iso-iteration.tex #stepI:p2:to-omega@L217-L218 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:to-row | PASS | p2-iso-iteration.tex #stepI:p2:to-row@L219-L220 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:to-avg | FAIL | p2-iso-iteration.tex #stepI:p2:to-avg@L221-L222 | The final averaged bound/scope uses bare C_DeltaT, despite separately using C_DeltaT^K for the old block: the final bound must use C_DeltaScriptT. |
| stepI:p2:to-inv | FAIL | p2-iso-iteration.tex #stepI:p2:to-inv@L223-L224 | The conclusion correctly uses C_DeltaScriptT, but its constants EDGE still names C_DeltaT. Disambiguate the actual package constant used. |
| stepI:p2:st-small | FAIL | p2-iso-iteration.tex #stepI:p2:st-small@L243-L245 | The torsion smallness expression must use C_DeltaScriptT, not K C_DeltaT; the same distinction is missing in its constants EDGE. |
| stepI:p2:st-error | PASS | p2-iso-iteration.tex #stepI:p2:st-error@L246-L247 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:st-frame | PASS | p2-iso-iteration.tex #stepI:p2:st-frame@L248-L249 | Source fields, direct uses, packages and locators agree. |
| bpI:p2:error-decay | PASS | p2-iso-iteration.tex #bpI:p2:error-decay@L261-L263; p2-iso-iteration.tex #bpI:p2:error-decay@L264-L266 | Source fields, direct uses, packages and locators agree. |
| bpI:p2:iteration | FAIL | p2-iso-iteration.tex #bpI:p2:iteration@L268-L283; p2-iso-iteration.tex #bpI:p2:iteration@L284-L292 | The inverse-increment sum in conclusion (v) uses the extended constant C_DeltaScriptT; bare C_DeltaT names the smaller K constant in the owning package. |
| stepI:p2:it-sums | FAIL | p2-iso-iteration.tex #stepI:p2:it-sums@L285-L287 | The summed inverse-increment bound and constants EDGE use C_DeltaT instead of C_DeltaScriptT. |
| stepI:p2:it-stepsmall | PASS | p2-iso-iteration.tex #stepI:p2:it-stepsmall@L288-L289 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:it-step | FAIL | p2-iso-iteration.tex #stepI:p2:it-step@L290-L291 | The constants EDGE names K C_DeltaT although the inverse increment propagated here is controlled by C_DeltaScriptT. |
| bpI:p2:limit | PASS | p2-iso-iteration.tex #bpI:p2:limit@L294-L304; p2-iso-iteration.tex #bpI:p2:limit@L305-L314 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:lim-conv | PASS | p2-iso-iteration.tex #stepI:p2:lim-conv@L306-L307 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:lim-close | PASS | p2-iso-iteration.tex #stepI:p2:lim-close@L308-L309 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:lim-margins | PASS | p2-iso-iteration.tex #stepI:p2:lim-margins@L310-L311 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:lim-inv | PASS | p2-iso-iteration.tex #stepI:p2:lim-inv@L312-L313 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:el-unif | PASS | p2-iso-iteration.tex #stepI:p2:el-unif@L320-L321 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:el-int | PASS | p2-iso-iteration.tex #stepI:p2:el-int@L322-L323 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:g1-constants | PASS | p2-iso-iteration.tex #stepI:p2:g1-constants@L339-L340 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:g1-standing | PASS | p2-iso-iteration.tex #stepI:p2:g1-standing@L341-L342 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:g1-e | PASS | p2-iso-iteration.tex #stepI:p2:g1-e@L343-L344 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:g1-dict | PASS | p2-iso-iteration.tex #stepI:p2:g1-dict@L345-L346 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:g1-apply | PASS | p2-iso-iteration.tex #stepI:p2:g1-apply@L347-L348 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:g1-o | PASS | p2-iso-iteration.tex #stepI:p2:g1-o@L349-L350 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:g1-o2 | PASS | p2-iso-iteration.tex #stepI:p2:g1-o2@L351-L352 | Source fields, direct uses, packages and locators agree. |
| stepI:p2:g1-o3 | PASS | p2-iso-iteration.tex #stepI:p2:g1-o3@L353-L354 | Source fields, direct uses, packages and locators agree. |

## Proposed coverage records

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p2:constants | PASS | p2-iso-iteration.tex #bpI:p2:constants@L67-L91 | Correct mapping of the source claim to its node(s). |
| bpI:p2:admissible | PASS | p2-iso-iteration.tex #bpI:p2:admissible@L93-L112 | Correct mapping of the source claim to its node(s). |
| bpI:p2:geometry | PASS | p2-iso-iteration.tex #bpI:p2:geometry@L120-L123 | Administrative/pointer/provenance exclusion checked. |
| bpI:p2:perturbation | PASS | p2-iso-iteration.tex #bpI:p2:perturbation@L125-L127 | Administrative/pointer/provenance exclusion checked. |
| bpI:p2:correction | PASS | p2-iso-iteration.tex #bpI:p2:correction@L132-L150 | Correct mapping of the source claim to its node(s). |
| stepI:p2:co-xi0 | PASS | p2-iso-iteration.tex #stepI:p2:co-xi0@L154-L155 | Correct mapping of the source claim to its node(s). |
| stepI:p2:co-xi | PASS | p2-iso-iteration.tex #stepI:p2:co-xi@L156-L159 | Correct mapping of the source claim to its node(s). |
| stepI:p2:co-omega | PASS | p2-iso-iteration.tex #stepI:p2:co-omega@L160-L161 | Correct mapping of the source claim to its node(s). |
| stepI:p2:co-dk | PASS | p2-iso-iteration.tex #stepI:p2:co-dk@L162-L163 | Correct mapping of the source claim to its node(s). |
| stepI:p2:co-reg | PASS | p2-iso-iteration.tex #stepI:p2:co-reg@L164-L165 | Correct mapping of the source claim to its node(s). |
| bpI:p2:newton-error | PASS | p2-iso-iteration.tex #bpI:p2:newton-error@L168-L181 | Correct mapping of the source claim to its node(s). |
| stepI:p2:ne-invert | PASS | p2-iso-iteration.tex #stepI:p2:ne-invert@L183-L184 | Correct mapping of the source claim to its node(s). |
| stepI:p2:ne-expand | PASS | p2-iso-iteration.tex #stepI:p2:ne-expand@L185-L186 | Correct mapping of the source claim to its node(s). |
| stepI:p2:ne-reduce | PASS | p2-iso-iteration.tex #stepI:p2:ne-reduce@L187-L188 | Correct mapping of the source claim to its node(s). |
| stepI:p2:ne-est | PASS | p2-iso-iteration.tex #stepI:p2:ne-est@L189-L190 | Correct mapping of the source claim to its node(s). |
| stepI:p2:ne-energy | PASS | p2-iso-iteration.tex #stepI:p2:ne-energy@L191-L192 | Correct mapping of the source claim to its node(s). |
| bpI:p2:newton-open | PASS | p2-iso-iteration.tex #bpI:p2:newton-open@L195-L200 | Administrative/pointer/provenance exclusion checked. |
| bpI:p2:torsion | PASS | p2-iso-iteration.tex #bpI:p2:torsion@L205-L213 | Correct mapping of the source claim to its node(s). |
| stepI:p2:to-frame | PASS | p2-iso-iteration.tex #stepI:p2:to-frame@L215-L216 | Correct mapping of the source claim to its node(s). |
| stepI:p2:to-omega | PASS | p2-iso-iteration.tex #stepI:p2:to-omega@L217-L218 | Correct mapping of the source claim to its node(s). |
| stepI:p2:to-row | PASS | p2-iso-iteration.tex #stepI:p2:to-row@L219-L220 | Correct mapping of the source claim to its node(s). |
| stepI:p2:to-avg | PASS | p2-iso-iteration.tex #stepI:p2:to-avg@L221-L222 | Correct mapping of the source claim to its node(s). |
| stepI:p2:to-inv | PASS | p2-iso-iteration.tex #stepI:p2:to-inv@L223-L224 | Correct mapping of the source claim to its node(s). |
| stepI:p2:st-small | PASS | p2-iso-iteration.tex #stepI:p2:st-small@L243-L245 | Correct mapping of the source claim to its node(s). |
| stepI:p2:st-error | PASS | p2-iso-iteration.tex #stepI:p2:st-error@L246-L247 | Correct mapping of the source claim to its node(s). |
| stepI:p2:st-frame | PASS | p2-iso-iteration.tex #stepI:p2:st-frame@L248-L249 | Correct mapping of the source claim to its node(s). |
| bpI:p2:error-decay | PASS | p2-iso-iteration.tex #bpI:p2:error-decay@L261-L263 | Correct mapping of the source claim to its node(s). |
| bpI:p2:iteration | PASS | p2-iso-iteration.tex #bpI:p2:iteration@L268-L283 | Correct mapping of the source claim to its node(s). |
| stepI:p2:it-sums | PASS | p2-iso-iteration.tex #stepI:p2:it-sums@L285-L287 | Correct mapping of the source claim to its node(s). |
| stepI:p2:it-stepsmall | PASS | p2-iso-iteration.tex #stepI:p2:it-stepsmall@L288-L289 | Correct mapping of the source claim to its node(s). |
| stepI:p2:it-step | PASS | p2-iso-iteration.tex #stepI:p2:it-step@L290-L291 | Correct mapping of the source claim to its node(s). |
| bpI:p2:limit | PASS | p2-iso-iteration.tex #bpI:p2:limit@L294-L304 | Correct mapping of the source claim to its node(s). |
| stepI:p2:lim-conv | PASS | p2-iso-iteration.tex #stepI:p2:lim-conv@L306-L307 | Correct mapping of the source claim to its node(s). |
| stepI:p2:lim-close | PASS | p2-iso-iteration.tex #stepI:p2:lim-close@L308-L309 | Correct mapping of the source claim to its node(s). |
| stepI:p2:lim-margins | PASS | p2-iso-iteration.tex #stepI:p2:lim-margins@L310-L311 | Correct mapping of the source claim to its node(s). |
| stepI:p2:lim-inv | PASS | p2-iso-iteration.tex #stepI:p2:lim-inv@L312-L313 | Correct mapping of the source claim to its node(s). |
| stepI:p2:el-unif | PASS | p2-iso-iteration.tex #stepI:p2:el-unif@L320-L321 | Correct mapping of the source claim to its node(s). |
| stepI:p2:el-int | PASS | p2-iso-iteration.tex #stepI:p2:el-int@L322-L323 | Correct mapping of the source claim to its node(s). |
| stepI:p2:g1-constants | PASS | p2-iso-iteration.tex #stepI:p2:g1-constants@L339-L340 | Correct mapping of the source claim to its node(s). |
| stepI:p2:g1-standing | PASS | p2-iso-iteration.tex #stepI:p2:g1-standing@L341-L342 | Correct mapping of the source claim to its node(s). |
| stepI:p2:g1-e | PASS | p2-iso-iteration.tex #stepI:p2:g1-e@L343-L344 | Correct mapping of the source claim to its node(s). |
| stepI:p2:g1-dict | PASS | p2-iso-iteration.tex #stepI:p2:g1-dict@L345-L346 | Correct mapping of the source claim to its node(s). |
| stepI:p2:g1-apply | PASS | p2-iso-iteration.tex #stepI:p2:g1-apply@L347-L348 | Correct mapping of the source claim to its node(s). |
| stepI:p2:g1-o | PASS | p2-iso-iteration.tex #stepI:p2:g1-o@L349-L350 | Correct mapping of the source claim to its node(s). |
| stepI:p2:g1-o2 | PASS | p2-iso-iteration.tex #stepI:p2:g1-o2@L351-L352 | Correct mapping of the source claim to its node(s). |
| stepI:p2:g1-o3 | PASS | p2-iso-iteration.tex #stepI:p2:g1-o3@L353-L354 | Correct mapping of the source claim to its node(s). |
| bpI:p2:register | PASS | p2-iso-iteration.tex #bpI:p2:register@L357-L359 | Administrative/pointer/provenance exclusion checked. |
| bpI:p2:deviations | PASS | p2-iso-iteration.tex #bpI:p2:deviations@L361-L366 | Administrative/pointer/provenance exclusion checked. |
| bpI:p2:errata | PASS | p2-iso-iteration.tex #bpI:p2:errata@L368-L370 | Administrative/pointer/provenance exclusion checked. |
| heading:bpI:p2 | PASS | p2-iso-iteration.tex #bpI:p2@L2-L2 | Administrative/pointer/provenance exclusion checked. |
| heading:bpI:p2:sec-setting | PASS | p2-iso-iteration.tex #bpI:p2:sec-setting@L34-L34 | Administrative/pointer/provenance exclusion checked. |
| heading:bpI:p2:sec-geometry | PASS | p2-iso-iteration.tex #bpI:p2:sec-geometry@L118-L118 | Administrative/pointer/provenance exclusion checked. |
| heading:bpI:p2:sec-correction | PASS | p2-iso-iteration.tex #bpI:p2:sec-correction@L130-L130 | Administrative/pointer/provenance exclusion checked. |
| heading:bpI:p2:sec-step | PASS | p2-iso-iteration.tex #bpI:p2:sec-step@L203-L203 | Administrative/pointer/provenance exclusion checked. |
| heading:bpI:p2:sec-iteration | PASS | p2-iso-iteration.tex #bpI:p2:sec-iteration@L253-L253 | Administrative/pointer/provenance exclusion checked. |
| heading:bpI:p2:sec-proof | PASS | p2-iso-iteration.tex #bpI:p2:sec-proof@L327-L327 | Administrative/pointer/provenance exclusion checked. |
| p2:source-L58 | PASS | p2-iso-iteration.tex #source@L58-L58 | Administrative/pointer/provenance exclusion checked. |
| p2:source-L89 | PASS | p2-iso-iteration.tex #source@L89-L89 | Administrative/pointer/provenance exclusion checked. |
| p2:source-L149 | PASS | p2-iso-iteration.tex #source@L149-L149 | Administrative/pointer/provenance exclusion checked. |
| p2:source-L180 | PASS | p2-iso-iteration.tex #source@L180-L180 | Administrative/pointer/provenance exclusion checked. |
| p2:source-L212 | PASS | p2-iso-iteration.tex #source@L212-L212 | Administrative/pointer/provenance exclusion checked. |
| p2:source-L240 | PASS | p2-iso-iteration.tex #source@L240-L240 | Administrative/pointer/provenance exclusion checked. |
| p2:source-L258 | PASS | p2-iso-iteration.tex #source@L258-L258 | Administrative/pointer/provenance exclusion checked. |
| p2:source-L282 | PASS | p2-iso-iteration.tex #source@L282-L282 | Administrative/pointer/provenance exclusion checked. |
| p2:source-L303 | PASS | p2-iso-iteration.tex #source@L303-L303 | Administrative/pointer/provenance exclusion checked. |
| p2:source-L336 | PASS | p2-iso-iteration.tex #source@L336-L336 | Administrative/pointer/provenance exclusion checked. |
| p2:prose-L4-L9 | PASS | p2-iso-iteration.tex #prose@L4-L9 | Administrative/pointer/provenance exclusion checked. |
| p2:prose-L11-L31 | PASS | p2-iso-iteration.tex #prose@L11-L31 | Administrative/pointer/provenance exclusion checked. |
| p2:prose-L44-L48 | PASS | p2-iso-iteration.tex #prose@L44-L48 | Correct mapping of the source claim to its node(s). |
| p2:prose-L114-L115 | PASS | p2-iso-iteration.tex #prose@L114-L115 | Correct mapping of the source claim to its node(s). |
| bpI:p2:B1 | PASS | p2-iso-iteration.tex #bpI:p2:B1@L97-L97 | Correct mapping of the source claim to its node(s). |
| bpI:p2:B2 | PASS | p2-iso-iteration.tex #bpI:p2:B2@L98-L98 | Correct mapping of the source claim to its node(s). |
| bpI:p2:B3 | PASS | p2-iso-iteration.tex #bpI:p2:B3@L99-L99 | Correct mapping of the source claim to its node(s). |
| bpI:p2:B4 | PASS | p2-iso-iteration.tex #bpI:p2:B4@L100-L100 | Correct mapping of the source claim to its node(s). |
| bpI:p2:B5 | PASS | p2-iso-iteration.tex #bpI:p2:B5@L101-L101 | Correct mapping of the source claim to its node(s). |
| bpI:p2:B6 | PASS | p2-iso-iteration.tex #bpI:p2:B6@L102-L102 | Correct mapping of the source claim to its node(s). |
| bpI:p2:B7 | PASS | p2-iso-iteration.tex #bpI:p2:B7@L103-L103 | Correct mapping of the source claim to its node(s). |
| bpI:p2:freq | PASS | p2-iso-iteration.tex #bpI:p2:freq@L107-L109 | Correct mapping of the source claim to its node(s). |
| bpI:p2:newerr | PASS | p2-iso-iteration.tex #bpI:p2:newerr@L170-L172 | Correct mapping of the source claim to its node(s). |

## Findings and closure of the first review

The package-edge and source-premise repairs largely close the first review: B1–B7, the moving ray, local Gram and boundedness data, and scheduled losses are explicit. The bridge no longer treats K standing as an extra premise or asserts every K conditional theorem applies. No unbordered A5 is supplied or used. The plain DE bound at `co-dk` now comes from `geometry-noA5`; the ordinary Cauchy corollaries alone would not identify that estimate. All preceding proved bounds remain proof dependencies rather than new source hypotheses. The numerical decay proof directly applies K's scalar iteration statement with the new recurrence, and the induction applies I's step; the deleted K absorption/induction comparisons are not reinstated. The restored xi^N exponent and the full Neumann perturbation factor at `to-inv` are correct.

**The two torsion constants must remain distinct.** The repaired constant package explicitly defines K's `C_DeltaT` as an input at L68 and the new `C_DeltaScriptT = C_DeltaT + 8 n² m⁴ + 1 + C_Y` at L78. In raw TeX these are `C_{Delta T}` and `C_{Delta mathsf T}`. Thus the latter is strictly larger. At L206, L210, L222, L245, L279 and L287 the full matrix/frequency/energy-row control uses **C_DeltaScriptT**. A record using the old constant there weakens a smallness assumption or strengthens a conclusion relative to the source. The replacement fragments disambiguate this consistently, including EDGE rationales. In `to-avg`, `C_DeltaT^K` continues to mean the old block constant, not the new full-matrix constant. `to-frame`'s old-frequency block estimate likewise keeps K's constant. This is a graph transcription issue, not a proposed TeX correction.

**Constructed correction data.** In `newton-error` and `torsion`, beta was already fixed and `d = hatC_Delta eps/(gamma² delta^a)` is the correction's defined bound. The fields “as in ...; then beta,d” must not suggest that a new arbitrary d can replace it. The replacements explicitly retain the constructed d and its additional inequalities, without adding a premise or changing the conclusion.

**Energy estimate at L192.** `energy-approx(f)` gives a bound in terms of eta^N and Omega_K; it does not itself provide the required small Omega_K estimate. The displayed bound involving `C_Omega eps/(gamma delta^(kappa+1))` directly consumes `geometry-noA5`. The correction lemma supplies xi/DeltaK bounds, not that symplectic defect bound. Also, continuity on the compact real cube is used here for integrability, linearity and the averaged norm bound; the existing imported integral fact is its direct input. Both edges are added without changing source premises.

**New scoped citation gap at L216.** The source says “extended-basic, applied to Kbar on T_{r-3delta}” to identify the average at **omegabar**. Part 1 `extended-basic` L106–122 assumes its full setting, which includes a positive Diophantine constant for the same frequency. The torsion lemma L206 expressly says no Diophantine property of omegabar is used. Its hypotheses do not guarantee `sbar > 0`, much less the required Diophantine premise. The bridge pays only the old frequency. The printed holomorphy discussion and the next frequency-difference formula suggest a direct regularity argument; topology review must not silently replace the cited contract by that weaker theorem. The replacement marks the existing step's NOTE `SOURCE_GAP:` with precisely this limited citation obligation. The old-frequency frame perturbation application remains valid. This is analogous to the already exposed citation-only issue in I-p3; it is not a new premise for frozen I-G1 and not a claim that the underlying continuity fact is false.

**Anchor and constant order.** I-G1 still chooses C1,C2,C3 after its fixed outer data and before D,H,K,s,gamma,e,E0. The explicit Part 2 coefficients omit omega-star and sigma-omega, as the raw theorem states. The source-proving result has no reverse dependency on its frozen anchor. The induction keeps nu down to at least nu/2, checks smallness using inherited local data, and passes both errors to the limit. `g1-o3` explicitly supplies the limit setting, zero invariance error and energy-average equality before invoking Part 1 energy conservation. No Gram determinant for K-infinity is added. The zero-error case remains included.

**Coverage.** The B1–B7, frequency and new-error equation aliases now map to their correct enclosing nodes. The bridge prose is qualified and the I5–I12 prose maps to `g1-dict`. Moved-lemma remarks, the negative K newton-error mention, constants register and source/deviation/errata notes are valid pointer/provenance exclusions, not proof prerequisites. Their used mathematical content has actual result owners. No further missing labelled/substantive region was found in Part 2.

## Complete replacement blocks

```text
NODE: bpI:p2:newton-error
KIND: lemma
TITLE: The new errors
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L168-L181
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L182-L193
CONTRACT_ID: bpI:p2:newton-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of bpI:p2:correction (standing data; s>1; 0<delta<=1; 2delta<r; K admissible); d < beta; C_sym eps/(gamma delta^{kappa+1}) <= 1/2; Kbar := K+DeltaK on T_{r-2delta}, Kbar := K elsewhere
SOURCE_QUANTIFIERS: standing data and constants fixed; r,beta,s,delta,eps,K as in bpI:p2:correction; use its constructed xi,DeltaK,Deltaomega,omegabar and d := hatC_Delta eps/(gamma^2 delta^a), subject to the additional two inequalities; define Kbar and the new errors as displayed; no new independent beta or d
SOURCE_CONCLUSION: Kbar(T_{r-2delta}) in D; S := I - Omega_0 E_sym invertible with ¦S^{-1}¦<=2 on T_{r-2delta}; Ebar := E_{H,Kbar,omegabar} = P S^{-1} E_lin + Delta^2 X + xi^omega d_omega DeltaK with E_lin := E_red xi + Omega_0 E_sym d_omega xi - (0,Omega_K omega) xi^omega, Delta^2 X := X_H(Kbar)-X_H(K)-A DeltaK; Ebar^omega := Ebar_H(Kbar)-E_0 = E^omega_lin + avg(Delta^2 H), E^omega_lin = avg(D(H o K) xi^L), Delta^2 H := H(Kbar)-H(K)-DH(K)DeltaK; ¦Ebar¦ <= C_E eps^2/(gamma^4 delta^{2a}) on T_{r-2delta} and ¦Ebar^omega¦ <= C_E eps^2/(gamma^4 delta^{2a})
CONSTANT_SCOPE: Constants of Definition bpI:p2:constants: all depend only on (n,tau,M,sigma_K,sigma_B,sigma_T); hat-c_* also on (mu,nu); delta_0 on (rho,rho_infty); no dependence on K, s, e, gamma, omega*, sigma_omega
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:standing, bpI:p2:constants, bpI:p2:admissible, bpI:p2:standing#k-bridge, bpI:p2:correction, stepI:p2:ne-invert, stepI:p2:ne-expand, stepI:p2:ne-reduce, stepI:p2:ne-est, stepI:p2:ne-energy
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:standing | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L169-L169 | gamma, M, D, H
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L169-L169 | C_sym, C_E, kappa, a
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L169-L169 | K is (r,beta,eps,s)-admissible; B1-B7 and the frequency bound
EDGE: bpI:p2:standing#k-bridge | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L184-L184 | K frame identities applied under the Part 2 standing data
EDGE: bpI:p2:correction | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L169-L169 | setting of the lemma; DeltaK, Deltaomega, d, xi
EDGE: stepI:p2:ne-invert | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L183-L183 | proof step of this result
EDGE: stepI:p2:ne-expand | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L185-L185 | proof step of this result
EDGE: stepI:p2:ne-reduce | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L187-L187 | proof step of this result
EDGE: stepI:p2:ne-est | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L189-L189 | proof step of this result
EDGE: stepI:p2:ne-energy | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L191-L191 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p2+sol-review-I-p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p2:ne-energy
KIND: step
TITLE: The energy error
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L191-L192
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L191-L192
CONTRACT_ID: stepI:p2:ne-energy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The stated local context and premises of bpI:p2:newton-error, with its definitions and inherited packages. Bounds and conclusions of cited prerequisite nodes are derived in this proof, not additional hypotheses.
SOURCE_QUANTIFIERS: All data quantified in bpI:p2:newton-error, in the same order; the quantities constructed by earlier proof steps remain derived. All pointwise formulas are on the strip or real cube stated in this step.
SOURCE_CONCLUSION: Ebar^omega = E^omega + avg(DH(K)DeltaK) + avg(Delta^2 H); avg(DH(K)DeltaK) = -E^omega + E^omega_lin; ¦Delta^2 H¦ <= (M/2)¦DeltaK¦^2; ¦D(H o K)¦ <= n Theta(2n m + C_Omega) eps/(gamma delta^{kappa+1}) on R^n; the product with ¦xi^L¦ is <= C_E2 eps^2/(gamma^4 delta^{2a}); so ¦Ebar^omega¦ <= C_E eps^2/(gamma^4 delta^{2a})
CONSTANT_SCOPE: C_E2, C_E from the constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:energy-approx, bpI:p1:border-solve, K:bp:p1:taylor, bpI:p2:correction, stepI:p2:ne-invert, bpI:p2:standing#k-bridge, bpI:p2:standing, bpI:p2:constants, bpI:p2:admissible, bpI:p1:geometry-noA5, K:bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:energy-approx | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L192-L192 | (f): avg(DH(K)DeltaK) and the bound on D(H o K)
EDGE: bpI:p1:border-solve | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L192-L192 | third equation avg(Y xi^N) = eta^omega
EDGE: K:bp:p1:taylor | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L192-L192 | Taylor remainder ¦Delta^2 H¦ <= (M/2)¦DeltaK¦^2
EDGE: bpI:p2:correction | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L192-L192 | bounds on xi^L, eta^N, DeltaK
EDGE: stepI:p2:ne-invert | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L192-L192 | segment [K,Kbar] in D
EDGE: bpI:p2:standing#k-bridge | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L192-L192 | Part 1 energy lemma under the standing data
EDGE: bpI:p2:standing | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L192-L192 | M, omega, D^2 H bound
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L192-L192 | C_E2, C_E, C_Omega, Theta, m
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L192-L192 | gamma delta^{kappa+1} <= Theta
EDGE: bpI:p1:geometry-noA5 | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L192-L192 | the bound on Omega_K and the eta bounds supply the displayed estimate for D(H o K)
EDGE: K:bp:p1:ext-integral | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L192-L192 | continuous integrands on the compact real cube; linearity of the energy average and norm bounded by the unit-cube supremum
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p2+sol-review-I-p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p2:torsion
KIND: lemma
TITLE: The new averaged extended torsion
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L205-L213
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L214-L225
CONTRACT_ID: bpI:p2:torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing data; K (r,beta,eps,s)-admissible; 0<delta<=1, 4delta<r; Kbar, omegabar as in bpI:p2:newton-error; d<beta; 2 m C_DeltaScriptT d/delta^2 <= 1
SOURCE_QUANTIFIERS: standing data and constants fixed; r,beta,eps,s,delta,K as stated, with 4delta<r; use the correction/new-error constructions Kbar,omegabar and d := hatC_Delta eps/(gamma^2 delta^a); impose the stated smallness conditions on this d, not a new independent parameter
SOURCE_CONCLUSION: omegabar in R^n; T_H for (Kbar,omegabar) defined on T_{r-3delta}; Kbar holomorphic on T_{r-2delta}, primary, real on reals; det Gbar != 0 on T_{r-3delta} with ¦DKbar¦ <= 2m, ¦Bbar¦ <= 2m; B_{beta-d}(Kbar) in D on T_{r-2delta}; ¦DKbar-DK¦ <= nd/delta and ¦Bbar-B¦ <= C_B d/delta on T_{r-3delta}; avg Tbar := avg T_H(Kbar,omegabar) defined, invertible, ¦avg Tbar - avg T¦ <= C_DeltaScriptT d/delta^2, ¦avg Tbar^{-1} - avg T^{-1}¦ <= 2 m^2 C_DeltaScriptT d/delta^2
CONSTANT_SCOPE: Constants of Definition bpI:p2:constants: all depend only on (n,tau,M,sigma_K,sigma_B,sigma_T); hat-c_* also on (mu,nu); delta_0 on (rho,rho_infty); no dependence on K, s, e, gamma, omega*, sigma_omega
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:standing, bpI:p2:constants, bpI:p2:admissible, bpI:p2:standing#k-bridge, bpI:p2:newton-error, bpI:p2:correction, stepI:p2:to-frame, stepI:p2:to-omega, stepI:p2:to-row, stepI:p2:to-avg, stepI:p2:to-inv
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:standing | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L206-L206 | standing data
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L206-L206 | C_DeltaScriptT, C_B, m
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L206-L206 | K is (r,beta,eps,s)-admissible; B1-B7 and the frequency bound
EDGE: bpI:p2:standing#k-bridge | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L222-L222 | K averages/matrix lemmas applied to the displayed full-matrix difference
EDGE: bpI:p2:newton-error | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L206-L206 | Kbar, omegabar as in the new-error lemma
EDGE: bpI:p2:correction | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L216-L216 | the correction supplies norm(Kbar-K) <= d for the frame perturbation application
EDGE: stepI:p2:to-frame | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L215-L215 | proof step of this result
EDGE: stepI:p2:to-omega | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L217-L217 | proof step of this result
EDGE: stepI:p2:to-row | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L219-L219 | proof step of this result
EDGE: stepI:p2:to-avg | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L221-L221 | proof step of this result
EDGE: stepI:p2:to-inv | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L223-L223 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p2+sol-review-I-p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Preextract candidate edge to bpI:p2:iteration (parenthetical forward pointer to (iii),(iv)) dropped: forward pointer, would create a cycle.
```

```text
NODE: stepI:p2:to-frame
KIND: step
TITLE: Frame
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L215-L216
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L215-L216
CONTRACT_ID: stepI:p2:to-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The stated local context and premises of bpI:p2:torsion, with its definitions and inherited packages. Bounds and conclusions of cited prerequisite nodes are derived in this proof, not additional hypotheses.
SOURCE_QUANTIFIERS: All data quantified in bpI:p2:torsion, in the same order; the quantities constructed by earlier proof steps remain derived. All pointwise formulas are on the strip or real cube stated in this step.
SOURCE_CONCLUSION: ball B_{beta-d}(Kbar) in D, derivative and Gram-inverse bounds, ¦Nbar-N¦ <= C_DeltaN d/delta, ¦Nbar¦ <= 2m^2 on T_{r-3delta}, ¦Tbar_omega - T_omega¦ <= C_DeltaT d/delta^2 on T_{r-4delta}; Nbar, Tbar_omega holomorphic on T_{r-3delta} so T_H(Kbar,omegabar) is continuous on R^n and its average is defined
CONSTANT_SCOPE: C_DeltaN and the old K torsion constant C_DeltaT from bpI:p2:constants; the inherited smallness uses C_DeltaScriptT >= C_DeltaT
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:perturbation-noA5, bpI:p2:correction, bpI:p2:newton-error, bpI:p1:extended-basic, bpI:p2:standing#k-bridge, bpI:p2:constants, bpI:p2:admissible, bpI:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:perturbation-noA5 | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L216-L216 | perturbation lemma applied with Ktilde = Kbar
EDGE: bpI:p2:correction | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L216-L216 | ¦Kbar-K¦ <= d on T_{r-2delta}
EDGE: bpI:p2:newton-error | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L216-L216 | Kbar := K+DeltaK
EDGE: bpI:p1:extended-basic | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L216-L216 | average of T_H defined for Kbar
EDGE: bpI:p2:standing#k-bridge | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L216-L216 | Part 1 perturbation lemma under the standing data
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L216-L216 | C_DeltaT, C_DeltaN, m
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L216-L216 | B1-B4 hypotheses of the perturbation lemma
EDGE: bpI:p2:standing | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L216-L216 | Uses the standing H,D,omega*,gamma,sigmas and ray data.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p2+sol-review-I-p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: scoped to the final parenthetical application of bpI:p1:extended-basic at L216 with Kbar and omegabar. That lemma assumes bpI:p1:setting, including a positive Diophantine constant for this same frequency. The torsion lemma explicitly uses no Diophantine property of omegabar, and none is supplied here; the k-bridge concerns the old omega=s omega*. The frame perturbation application at the old omega is paid by the stated local data. The printed holomorphy/continuity discussion suggests a direct finite-frequency proof, but this record does not silently strengthen the cited Part 1 contract or add Diophantinity as a source hypothesis.
```

```text
NODE: stepI:p2:to-avg
KIND: step
TITLE: The average
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L221-L222
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L221-L222
CONTRACT_ID: stepI:p2:to-avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The stated local context and premises of bpI:p2:torsion, with its definitions and inherited packages. Bounds and conclusions of cited prerequisite nodes are derived in this proof, not additional hypotheses.
SOURCE_QUANTIFIERS: All data quantified in bpI:p2:torsion, in the same order; the quantities constructed by earlier proof steps remain derived. All pointwise formulas are on the strip or real cube stated in this step.
SOURCE_CONCLUSION: avg Tbar - avg T = avg of [[Tbar_{omegabar}-T_omega, Deltaomega],[Ybar-Y, 0]] on R^n in T_{r-4delta}; its norm <= max{C_DeltaT^K d/delta^2 + 8 n^2 m^4 d/delta + d, C_Y d/delta} <= C_DeltaScriptT d/delta^2
CONSTANT_SCOPE: C_DeltaScriptT from the constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:averages, K:bp:p2:matrix, bpI:p2:standing#k-bridge, stepI:p2:to-frame, stepI:p2:to-omega, stepI:p2:to-row, bpI:p2:correction, bpI:p1:extended-basic, bpI:p2:constants, bpI:p2:standing, bpI:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:averages | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L222-L222 | (a): average of the difference
EDGE: K:bp:p2:matrix | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L222-L222 | (c): norm of the block matrix
EDGE: bpI:p2:standing#k-bridge | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L222-L222 | K averages/matrix lemmas under the standing data
EDGE: stepI:p2:to-frame | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L222-L222 | bound on Tbar_omega - T_omega
EDGE: stepI:p2:to-omega | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L222-L222 | effect of the frequency on the torsion block
EDGE: stepI:p2:to-row | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L222-L222 | bound on Ybar - Y
EDGE: bpI:p2:correction | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L222-L222 | ¦Deltaomega¦ <= d
EDGE: bpI:p1:extended-basic | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L222-L222 | block structure of T_H and its average
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L222-L222 | C_DeltaScriptT
EDGE: bpI:p2:standing | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L222-L222 | Uses the standing H,D,omega*,gamma,sigmas and ray data.
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L222-L222 | Uses B-component premises or frequency bound in the inherited admissible context.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p2+sol-review-I-p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p2:to-inv
KIND: step
TITLE: Inverse (Lemma~A.1)
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-inv@L223-L224
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-inv@L223-L224
CONTRACT_ID: stepI:p2:to-inv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The stated local context and premises of bpI:p2:torsion, with its definitions and inherited packages. Bounds and conclusions of cited prerequisite nodes are derived in this proof, not additional hypotheses.
SOURCE_QUANTIFIERS: All data quantified in bpI:p2:torsion, in the same order; the quantities constructed by earlier proof steps remain derived. All pointwise formulas are on the strip or real cube stated in this step.
SOURCE_CONCLUSION: ¦avg T^{-1}¦ ¦avg Tbar-avg T¦<=1/2. Neumann gives invertibility and ¦avg Tbar^{-1}-avg T^{-1}¦<=2 sigma_T^2 ¦avg Tbar-avg T¦<=2m^2 C_DeltaScriptT d/delta^2, in the max-row-sum norm on C^{(n+1)x(n+1)}.
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:neumann, stepI:p2:to-avg, bpI:p2:admissible, bpI:p2:constants, bpI:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:neumann | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-inv@L224-L224 | Neumann series (HL19 Lemma A.1)
EDGE: stepI:p2:to-avg | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-inv@L224-L224 | difference bound for the averages
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-inv@L224-L224 | B5: ¦avg T^{-1}¦ <= sigma_T
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-inv@L224-L224 | sigma_T <= m, C_DeltaScriptT
EDGE: bpI:p2:standing | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-inv@L224-L224 | sigma_T
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p2+sol-review-I-p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p2:st-small
KIND: step
TITLE: Smallness
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-small@L243-L245
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-small@L243-L245
CONTRACT_ID: stepI:p2:st-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The stated local context and premises of bpI:p2:step, with its definitions and inherited packages. Bounds and conclusions of cited prerequisite nodes are derived in this proof, not additional hypotheses.
SOURCE_QUANTIFIERS: All data quantified in bpI:p2:step, in the same order; the quantities constructed by earlier proof steps remain derived. All pointwise formulas are on the strip or real cube stated in this step.
SOURCE_CONCLUSION: C_sym eps/(gamma delta^{kappa+1}) <= Theta^3 C_sym X <= 1/2; d <= Theta^2 C_Delta X <= beta/2; 2 m C_DeltaScriptT d/delta^2 <= 2 m Theta^2 C_DeltaScriptT C_Delta X <= 1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:admissible, bpI:p2:constants, bpI:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-small@L244-L244 | gamma <= Theta (bpI:p2:freq) and gamma^2 delta^{a-2} <= Theta^2
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-small@L244-L244 | c_step, C_sym, C_Delta, C_DeltaScriptT, Theta, m
EDGE: bpI:p2:standing | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-small@L244-L244 | gamma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p2+sol-review-I-p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p2:iteration
KIND: proposition
TITLE: The induction
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L268-L283
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L284-L292
CONTRACT_ID: bpI:p2:iteration
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p2:standing; K and s=s_0>1 satisfy (I5)-(I12) of I-G1 on T_rho with margin mu: B1; B_mu(K) in D; ¦DK¦<=sigma_K-mu; det G != 0, ¦B¦<=sigma_B-mu; det avg T_H != 0, ¦avg T_H^{-1}¦<=sigma_T-mu; ¦E_{H,K,s omega*}¦<=e, ¦Ebar_H(K)-E_0¦<=e; nu(s_0)>=nu; e<=1; c_* e/(gamma^4 delta_0^{2a}) <= 1
SOURCE_QUANTIFIERS: standing data, constants, schedule fixed; then K, s_0, e; then there are K_j, s_j (K_0 = K) for all j
SOURCE_CONCLUSION: with D_j := sum_{i<j} d_i, for every j: (i) K_j is (r_j,mu-D_j,eps_j,s_j)-admissible, eps_j<=e<=1; (ii) D_j<=mu/4, D_j<=nu/2, ¦K_j-K¦<=D_j on T_{r_j}, ¦s_j-s_0¦¦omega*¦<=D_j, nu(s_j)>=nu-D_j>=nu/2, 1<s_j<sigma_omega; (iii) ¦DK_j¦ <= sigma_K-mu+sum nd_i/delta_i <= sigma_K-mu/2; (iv) ¦B_j¦ <= sigma_B-mu+sum C_B d_i/delta_i <= sigma_B-mu/2; (v) ¦avg T_j^{-1}¦ <= sigma_T-mu+sum 2 m^2 C_DeltaScriptT d_i/delta_i^2 <= sigma_T-mu/2; (vi) ¦K_{j+1}-K_j¦<=d_j, ¦DK_{j+1}-DK_j¦<=nd_j/delta_j on T_{r_{j+1}}, ¦s_{j+1}-s_j¦¦omega*¦<=d_j
CONSTANT_SCOPE: Constants of Definition bpI:p2:constants: all depend only on (n,tau,M,sigma_K,sigma_B,sigma_T); hat-c_* also on (mu,nu); delta_0 on (rho,rho_infty); no dependence on K, s, e, gamma, omega*, sigma_omega
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:standing, bpI:p2:constants, bpI:p2:admissible, bpI:p2:schedule, bpI:p2:ray, stepI:p2:it-sums, stepI:p2:it-stepsmall, stepI:p2:it-step
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:standing | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L269-L269 | standing data
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L271-L271 | c_*, delta_0, a
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L269-L269 | admissibility of K_j
EDGE: bpI:p2:schedule | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L275-L275 | r_j, delta_j, eps_j, d_j
EDGE: bpI:p2:ray | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L276-L276 | nu(s_j) and 1<s_j<sigma_omega
EDGE: stepI:p2:it-sums | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L285-L285 | proof step of this result
EDGE: stepI:p2:it-stepsmall | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L288-L288 | proof step of this result
EDGE: stepI:p2:it-step | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L290-L290 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p2+sol-review-I-p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p2:it-sums
KIND: step
TITLE: Summed bounds
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-sums@L285-L287
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-sums@L285-L287
CONTRACT_ID: stepI:p2:it-sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The stated local context and premises of bpI:p2:iteration, with its definitions and inherited packages. Bounds and conclusions of cited prerequisite nodes are derived in this proof, not additional hypotheses.
SOURCE_QUANTIFIERS: All data quantified in bpI:p2:iteration, in the same order; the quantities constructed by earlier proof steps remain derived. For each j>=0.
SOURCE_CONCLUSION: gamma <= Theta; sum_i d_i/delta_i^k <= 2 Theta^2 C_Delta X for k=0,1,2; hence sum d_i <= min{mu/4,nu/2}, sum n d_i/delta_i <= mu/4, sum C_B d_i/delta_i <= mu/4, sum 2 m^2 C_DeltaScriptT d_i/delta_i^2 <= mu/2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:admissible, bpI:p2:error-decay, bpI:p2:schedule, bpI:p2:constants, bpI:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-sums@L286-L286 | gamma <= Theta from K admissible (bpI:p2:freq)
EDGE: bpI:p2:error-decay | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-sums@L286-L286 | eps_s/delta_s^j and sum bounds
EDGE: bpI:p2:schedule | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-sums@L286-L286 | d_i := C_Delta eps_i/(gamma^2 delta_i^a)
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-sums@L287-L287 | c_* >= 2^{2a}C_E, 2 c_sum/mu, 4 Theta^2 C_Delta/nu; C_B, C_DeltaScriptT
EDGE: bpI:p2:standing | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-sums@L286-L286 | gamma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p2+sol-review-I-p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p2:it-step
KIND: step
TITLE: Base and induction
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L290-L291
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L290-L291
CONTRACT_ID: stepI:p2:it-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The stated local context and premises of bpI:p2:iteration, with its definitions and inherited packages. For the induction transition assume (i)-(v) at j, as explicitly stated at L291. Bounds and conclusions of cited prerequisite nodes are derived in this proof, not additional hypotheses.
SOURCE_QUANTIFIERS: All data quantified in bpI:p2:iteration, in the same order; the quantities constructed by earlier proof steps remain derived. For each j>=0.
SOURCE_CONCLUSION: (i)-(vi) at j+1: Proposition step applies with (r_j,delta_j,mu-D_j,eps_j,s_j) and yields K_{j+1} := Kbar_j, s_{j+1} := sbar_j; 1<s_{j+1}<sigma_omega and nu(s_{j+1}) >= nu-D_{j+1}; B1-B7 for K_{j+1}; (iii)-(v) with the summed bounds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:step, stepI:p2:it-sums, stepI:p2:it-stepsmall, bpI:p2:ray, bpI:p2:admissible, bpI:p2:schedule, bpI:p2:constants, bpI:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:step | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | Proposition step applied at each j
EDGE: stepI:p2:it-sums | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | summed bounds D_{j+1} <= nu/2, mu/4
EDGE: stepI:p2:it-stepsmall | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | smallness hypothesis of the step
EDGE: bpI:p2:ray | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | (b): 1<sbar_j<sigma_omega, nu(sbar_j) >= nu(s_j)-d_j
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | admissibility at j and j+1; B3-B5
EDGE: bpI:p2:schedule | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | r_{j+1} = r_j-4 delta_j, d_j
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | c_*, C_B, C_DeltaScriptT
EDGE: bpI:p2:standing | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | standing data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p2+sol-review-I-p2
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Validation and limits

- Report validation: exactly 44 proposed-node rows and 79 proposed-coverage rows, each appearing once in its table. Review-parser dry run: 10 replacements, zero additions, zero unresolved FAILs. All replacement fields, DEPS/ROUTES-to-EDGE parity, unique edges, field separators, locator bounds and report whitespace pass. The in-memory replacement overlay is acyclic, resolves every dependency, and retains root reachability for every proposed node. Input packet hashes remained unchanged during the review.
- All files in the current `CORPUS.sha256` and `IMPORTS.sha256` pass `sha256sum -c`. The writer has now remapped/re-pinned K Part 1; the older slice reviews' import-drift warning is closed for this snapshot.
- All used K node IDs exist in the owning `docs/graph/K/DEPGRAPH.md`. Imported statements were checked at the current label locations, including K Part 1's remapped spans.
- No generic writer-filled `SOURCE_QUANTIFIERS: inherits the fixed data and quantifiers of the enclosing proof; no new binders` field occurs in either assigned slice. The actual inherited-parent fields were checked against their enclosing statements; an induction premise is retained only where the source explicitly assumes it.
- Only the two requested delta reports are written. No packets, SPEC, pins, source files, frozen files or Lean files are edited; no Lean/build commands or state-changing git commands are run.

No new pinned-paper erratum or frozen-statement defect is claimed. The new suspected blueprint defect is the citation-scope issue at L216, quoted and explained above. The existing HL19 errata notes are provenance, not re-audited paper claims in this task. Other slices and Lean implementation remain outside this delta's approval.

Packet hashes at review:

- `I-p2.nodes.md`: `2544349e27578e5e05384e0137c6cee853bcf5bec6ddd75f2666d803d4bd06fa`.
- `I-p2.coverage.md`: `3d82022ffb63571f1702420c22187685b477b27191b2ce81ef17641dfc68ee2c`.
