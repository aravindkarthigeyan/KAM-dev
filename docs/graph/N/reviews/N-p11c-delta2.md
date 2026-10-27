# N-p11c second delta topology review

Reviewer: sol-delta2-N-g  
Marker: delta2-N-g  
Verdict: **FAIL** — 24 proposed nodes PASS; 1 proposed node FAILS.

Reviewed only the 25 nodes still marked `TOPOLOGY_STATUS: PROPOSED` in the current packet. There are no records still marked `COVERAGE_STATUS: PROPOSED`; no coverage disposition is reopened. The preceding rewrite author is `sol-delta-N-g` (`N-p11c-delta.md`), distinct from this reviewer. The original slice reviewer was `sol-review-N-f`.

Applied DELTA-BRIEF, REVIEW-BRIEF (including the Convergence rule), and SPEC with its rulings. Read the raw Part 11c statements, proofs and every pending node's EDGE span, together with the cited statements in Parts 0, 1, 3, 4, 6, 7, 8, 11a and 11b and the owning K statements for mean value and integration (`blueprint/parts/p1-analysis.tex` L75–L78, L82–L86). Checked standing packages, conditional applications, source quantifiers, constant scope, normalization, and direct versus hypothesis-check/provenance edges. Previously reviewed nodes were read only as dependency context. This is a topology verdict, not a proof-closure verdict.

## Proposed nodes

Source spans below refer to `blueprint-N/parts/p11c-partial-stability.tex`; they include the statement, proof and EDGE locators of each pending record.

| ID | Verdict | Spans re-read | Finding |
|---|---|---|---|
| bpN:p11:conj | PASS | L20–L22; L23–L25; L24–L24; L21–L22; L21–L21 | The repaired locators point to the actual extended-class and real-orbit uses; the chain-rule step proves the stated conjugation. |
| bpN:p11:preimage | PASS | L27–L29; L30–L32; L31–L31; L28–L28 | The repaired statement locators include the real tube and base set. The scaled-norm contraction argument uses C.1, its extended instance, mean value and Banach directly. |
| stepN:p11:ct-data | PASS | L39–L39 | The added compactness input supplies the compact product before the Lipschitz lemma. Periodicity transfers the uniform data to every angle translate. |
| bpN:p11:transfer | PASS | L43–L52; L53–L61; L55–L55; L56–L56; L57–L57; L58–L58; L59–L59; L60–L60; L44–L44; L54–L54 | The repaired locators identify the inherited conjugation data and real package. T3 remains an explicit conditional helper, discharged by the stability consumers; the slow premise is confined to the stopped prefix. |
| stepN:p11:tr-closed | PASS | L59–L59 | The added compactness input supplies the compact transverse product. The strict action and slow margins put that product inside U before continuation is applied. |
| bpN:p11:nonresonant | PASS | L65–L68; L69–L74; L70–L70; L71–L71; L72–L72; L73–L73; L66–L66; L65–L66; L66–L67 | The repaired locators reach the stated nonresonance, real orbit and starting-radius data. The normal-form, preimage, confinement and transfer steps discharge the conditional application. |
| stepN:p11:ef-tube | PASS | L87–L87 | The added max-versus-Euclidean comparison justifies membership in the smaller max-norm tube; the given slow margin and real angles supply the other components. |
| stepN:p11:ef-adm | PASS | L88–L88 | The repaired resonance-data locator is the projection bound itself. Mean value uses the Hessian bound on the indicated convex ball; no new premise is added. |
| stepN:p11:ef-id | PASS | L90–L91; L90–L90 | The removed resonance-data edge was unnecessary: this identity uses the bracket, chain rule, real field and action-only h, without a resonance projection. |
| stepN:p11:ef-C | PASS | L92–L96; L92–L94; L92–L93; L94–L94; L92–L92; L94–L95 | The added norm input converts the angular component sum into a Euclidean bound. The bracket losses satisfy SL on the smaller tube; 1/e<0.368 already gives the displayed final bound. The decimal defect is recorded below. |
| bpN:p11:resonant | PASS | L100–L103; L104–L110; L105–L105; L106–L106; L107–L107; L108–L108; L109–L109; L101–L101; L101–L102; L100–L102 | The repaired locators reach the stated subgroup, convexity, nonresonance, real-orbit and starting-radius data. The source smallness bound is preserved in this parent record. |
| stepN:p11:rs-red | FAIL | L100–L103; L105–L105 | The earlier removal of the normal-form edge correctly separates hypothesis checking from construction. However, SOURCE_HYPOTHESES omits the premise eps<=m r^2/2^14 stated at L101, while SOURCE_CONCLUSION asserts it at L105. The listed inequalities do not constrain eps. Restore the enclosing source hypotheses and explicitly retain that bound; no dependency change is needed. |
| stepN:p11:rs-nf | PASS | L106–L106 | The added projection, extended-instance and restriction edges supply the bound on g_0 on the smaller domain. Normal form is actually consumed here; rs-red supplies its numerical hypothesis check. |
| stepN:p11:rs-t12 | PASS | L107–L107 | The added norm comparison supplies sqrt(n) in the Euclidean displacement bound. The reused preimage argument supplies T2 with the source radii and widths. |
| bpN:p11:hessian | PASS | L114–L116; L117–L119; L118–L118; L114–L115; L115–L115 | The repaired constants locator is the scaling statement. The Euclidean operator bound is M_C, and the arbitrary-tube real-Hessian identification remains explicitly exposed by the existing SOURCE_GAP bridge. |
| stepN:p11:hs-op | PASS | L118–L118 | The added norm comparison applies to the bilinear operator bound, not an entrywise Hessian bound. Nonempty G supplies the point needed for m<=M_C; the existing bridge supplies the real identification. |
| bpN:p11:block-setting | PASS | L121–L123; L121–L122; L122–L122; L122–L123 | The repaired real-package locator is the definition itself. Removing the Hessian-result edge is correct: this node defines the signed perturbation pair and scaled sets; estimates are used in domain. |
| bpN:p11:domain | PASS | L125–L127; L128–L132; L129–L129; L130–L130; L131–L131; L126–L126 | The repaired block-setting locator is the actual premise at L126. The complex-point, weighted-norm and field steps retain the source widths, normalization and local field domain. |
| bpN:p11:block-data | PASS | L134–L137; L138–L142; L139–L139; L140–L140; L141–L141; L134–L135; L135–L135; L136–L136 | The repaired lattice and setting locators identify the construction and cond-L conclusion. The covering parameters meet its conditional premise; the zero-lattice projection clause is valid separately. |
| stepN:p11:bd-cover | PASS | L139–L139 | The added norm comparison supplies the contradiction between the Euclidean frequency upper bound and max-norm lower bound in the full-rank case. |
| stepN:p11:bd-24 | PASS | L140–L140 | The added norm comparison gives L=sqrt(n)M_1 from the Euclidean Hessian bound. Cutoff inclusion uses K_a=K/sqrt(n), and sign transport preserves the required absolute quantities. |
| bpN:p11:block | PASS | L144–L147; L148–L155; L150–L150; L151–L151; L152–L152; L153–L153; L154–L154; L144–L145; L145–L146; L145–L145 | The repaired inner-core locator is the stopped slow premise. The added norm comparison transfers the resonant Euclidean estimate to the max-norm block conclusion; both case applications have their hypotheses supplied. |
| stepN:p11:bl-block | PASS | L150–L150 | The added block package supplies the chosen lattice block data. The fixed starting-radius scaling is set once for this block. |
| stepN:p11:final-mu | PASS | L162–L162 | The removed block-setting and block-result edges were hypothesis checks. The retained constants, exponents, fixed data and time comparison supply a positive threshold chosen before the universally quantified orbit data. |
| stepN:p11:final-sign | PASS | L166–L166 | The restored qualifier places the negative-sign field equality only on W(I_0,r_0). The reversed curve satisfies its own equation on [-C,0]; the slow margin needed by block is only on [-t,0]. |

## Replacement

Change only `SOURCE_HYPOTHESES` of `stepN:p11:rs-red`. The premise comes from the enclosing proposition at L101, not from a previously proved conclusion. Preserve the earlier deletion of the normal-form dependency: L105 checks hypotheses, while L106 consumes the normal-form output. Every other line below is verbatim from the current packet.

```text
NODE: stepN:p11:rs-red
KIND: step
TITLE: Reductions
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-red@L105-L105
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-red@L105-L105
CONTRACT_ID: stepN:p11:rs-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:resonant, in particular 0<eps<=m r^2/2^14; K_a L r<=alpha/p, L=sqrt(n)M, m<=M, q/p=8
SOURCE_QUANTIFIERS: eps
SOURCE_CONCLUSION: eps<=m r^2/2^14<=alpha r/(2^7 q K_a) (as alpha r/(2^7 q K_a)>=p sqrt(n)M r^2/(2^7 q)>=M r^2/2^10), so Theorem nf applies (Lambda=-Lambda)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:s-nf#data
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-red@L105-L105 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-delta-N-g
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Source defects retained as context

- Part 11c L115 says `Q(I)=D^2h_R(I)=Q_C(I)` and cites `bpN:p1:holo-real`. That cited lemma has a centred-ball contract, whereas this use is on the arbitrary tube `G'_rho`. The existing `bpN:p11:hessian#real-hessian` SOURCE_GAP bridge already exposes this mismatch; its consumer passes as topology. This review supplies no missing mathematics.
- Part 11c L94 prints `1/e<0.3679`, but the listed numerical external at Part 11a L40 supplies `1/e<0.368`. The repaired edge states the weaker bound faithfully. It suffices: `5/4096+(5/64+1/4)*0.368 = 0.121970703125 < 0.1220`. No new external or stronger premise is needed.

These are blueprint observations; no pinned PDF erratum is newly asserted and no mathematical deviation is introduced.

## Validation

- Source pins: `sha256sum -c docs/graph/N/CORPUS.sha256` — all 15 entries OK; `sha256sum -c docs/graph/N/IMPORTS.sha256` — all 4 entries OK.
- Pending inventory: exactly 25 proposed nodes and 0 proposed coverage items; each proposed node has exactly one verdict row.
- Structural checks: 25 unique verdict rows; one complete replacement; only `SOURCE_HYPOTHESES` differs from its current block; all 210 pending-node EDGE targets match DEPS and exist; all 259 statement/proof/EDGE locator ranges are in bounds.
- Review application dry run: `N-p11c: 1 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 24 PASS nodes`.
- Only this review file was written. No packets, source, SPEC, frozen files or manifest were edited; no Lean or builds were run.
