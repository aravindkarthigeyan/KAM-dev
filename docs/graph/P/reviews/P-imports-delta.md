# P-imports final delta topology review

Reviewer: **sol-delta-P-bd**. Marker: `delta-P-bd`. Date: 2026-10-28.

**Verdict: FAIL — 53 selected nodes PASS; 7 selected unused nodes FAIL. All 60 selected coverage items PASS.** The retained source-contract and published-ownership repairs are correct. The seven previously requested node removals have not been applied: the current packet still contains 88 imports with only 81 referenced. Instructions for those seven records appear in their table rows only, as requested.

## Scope and method

Read DELTA-BRIEF.md in full; applied REVIEW-BRIEF.md and current SPEC, including its publication/ownership, P-FIXED and own-anchor rulings. Used the build-proof-dependency-graph source-only workflow. This reviewer is independent of `sol-review-P-imports` and the writer/extractor `claude-suborch-INP`.

Reviewed **only** the records still PROPOSED: 60 NODE records and their 60 ITEM records. The user’s “60 records” corresponds to 60 IDs; each currently has both a PROPOSED topology record and a PROPOSED coverage record, so both receive individual rows below. The other 28 nodes/items are not assigned fresh verdicts. The latest prior review is `P-imports-review.md` (IMP-1/2/3). Its 53 retained-node replacement blocks and seven coverage replacement blocks are present verbatim apart from EXTRACTOR metadata; its seven requested node removals remain outstanding.

For each selected node, checked the unprefixed ID against its **published** owner `docs/graph/K/DEPGRAPH.md`, `docs/graph/I/DEPGRAPH.md` or `docs/graph/N/DEPGRAPH.md`, using `scripts/proof_depgraph.py` parsing and effective amendment application. K has 44 amendments; comparing only its original NODE blocks would miss the six repaired contracts. I/N have no amendments in these snapshots. Their graph headers name global reviewers and their round-3 global-review reports explicitly PASS the source models. Publication is not a claim of Lean proof completion, and no implementation, provider, Lean proof-status ledger or manifest state field was used.

All 60 selected records have exact equality with the effective owner for `STATEMENT_SOURCE`, `SOURCE_HYPOTHESES`, `SOURCE_QUANTIFIERS`, `SOURCE_CONCLUSION`, and `CONSTANT_SCOPE`. Their NOTE correctly identifies the owning node KIND and contract ID/version. Retained I/N notes now confirm published ownership. The stale note on the unused ham-periodic record is subsumed by that record’s unused-node finding.

Re-read every selected raw blueprint statement span, rather than trusting the owner match alone: I Part 7; K Parts 0/1 (including the standing strip conventions L37–39); N Parts 0/3/4/5/6. The table names both the native source span and owner graph NODE location. For K’s amended fields, the effective amendment is also checked. Full owner paths are `docs/graph/<track>/DEPGRAPH.md`; source paths are the current `STATEMENT_SOURCE` values copied below.

## Node verdicts

Every listed source contract matches its published owner. FAIL reasons concern the remaining P import boundary, not owner membership or a proposed change to the owning graph. No bare NODE deletion block is supplied.

| ID | Verdict | Native source and owner spans re-read | Reason / prior repair |
|---|---|---|---|
| I:bpI:p7:chart | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L242-L246`; I DEPGRAPH L9586 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p7:ke-chart (P-p7.nodes.md). |
| I:bpI:p7:elements | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:elements@L144-L156`; I DEPGRAPH L9127 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p7:ke-chart (P-p7.nodes.md). |
| I:bpI:p7:kepler-eq | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L91-L114`; I DEPGRAPH L8891 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by bpP:p7:kepler (P-p7.nodes.md). |
| I:bpI:p7:orbit-identities | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L181-L190`; I DEPGRAPH L9267 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p7:ke-b (P-p7.nodes.md). |
| I:bpI:p7:orbit-maps | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps@L158-L168`; I DEPGRAPH L9153 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by bpP:p7:kepler-data (P-p7.nodes.md). |
| I:bpI:p7:symplectic | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L205-L217`; I DEPGRAPH L9411 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p7:ke-form (P-p7.nodes.md). |
| I:bpI:p7:x-forms | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-forms@L39-L40`; I DEPGRAPH L8736 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p7:ke-form (P-p7.nodes.md). |
| I:bpI:p7:x-hol | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-hol@L32-L34`; I DEPGRAPH L8606 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p7:rk-hol (P-p7.nodes.md). |
| I:bpI:p7:x-weier | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-weier@L35-L35`; I DEPGRAPH L8632 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p7:rk-hol (P-p7.nodes.md). |
| I:stepI:p7:ke-trig | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-trig@L119-L119`; I DEPGRAPH L8950 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p7:rk-contr (P-p7.nodes.md). |
| K:bp:p1:decay | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:decay@L786-L789`; K DEPGRAPH L3217; effective hypothesis amendment | IMP-1 fixed: exact effective owner contract, including the amended hypothesis field. Referenced by stepP:p11a:fc-decay (P-p11a12.nodes.md). |
| K:bp:p1:real-restriction | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1047-L1051`; K DEPGRAPH L4025; effective hypothesis amendment | IMP-1 fixed: exact effective owner contract, including the amended hypothesis field. Referenced by stepP:p7:ho-hol (P-p7.nodes.md). |
| N:bpN:p0:partial | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L319-L335`; N DEPGRAPH L882 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p14:st-thr (P-p14a2.nodes.md). |
| N:bpN:p0:partial-exponents#partialDriftExponent | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317`; N DEPGRAPH L856 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p14:st-thr (P-p14a2.nodes.md). |
| N:bpN:p0:partial-exponents#partialTimeExponent | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317`; N DEPGRAPH L830 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p14:st-thr (P-p14a2.nodes.md). |
| N:bpN:p3:gen-continuation | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L270-L277`; N DEPGRAPH L4576 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11b:fl-bd (P-p11b.nodes.md). |
| N:bpN:p3:gen-continuation-compact | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L289-L292`; N DEPGRAPH L4699 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p14:sb-sl-5 (P-p14b.nodes.md). |
| N:bpN:p3:gen-exit | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L328-L341`; N DEPGRAPH L4850 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p14:amd-fwd (P-p14a1.nodes.md). |
| N:bpN:p3:gen-lip | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-lip@L116-L120`; N DEPGRAPH L3653 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p14:ud-cell (P-p14a2.nodes.md). |
| N:bpN:p3:gen-maximal | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L251-L258`; N DEPGRAPH L4456 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p14:sb-sl-2 (P-p14b.nodes.md). |
| N:bpN:p3:gen-sol | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L88-L93`; N DEPGRAPH L3543 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by bpP:p14:sb-pred (P-p14b.nodes.md). |
| N:bpN:p3:gen-symmetry | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L101-L110`; N DEPGRAPH L3597 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p14:mo-eq (P-p14a1.nodes.md). |
| N:bpN:p3:gen-uniqueness | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L217-L224`; N DEPGRAPH L4249 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11b:fl-an (P-p11b.nodes.md). |
| N:bpN:p3:ham-periodic | FAIL | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L402-L407`; N DEPGRAPH L5194 | Delete this complete unused NODE record from P-imports.nodes.md. IMP-3 remains: no DEPS or ROUTES entry in any other P node packet references it; its ITEM already correctly records EXCLUDED. Do not create an edge to retain it. Its obsolete IMP-2 pending-publication note is resolved by the same removal. |
| N:bpN:p3:ham-smooth | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L377-L381`; N DEPGRAPH L4996 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p14:sb-pr-1 (P-p14b.nodes.md). |
| N:bpN:p4:algebra | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L108-L112`; N DEPGRAPH L6201 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11:ab-prod (P-p11.nodes.md). |
| N:bpN:p4:cauchy | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L125-L133`; N DEPGRAPH L6320 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11:ab-der (P-p11.nodes.md). |
| N:bpN:p4:coefficients | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L60-L70`; N DEPGRAPH L5951 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11:hc-mean (P-p11.nodes.md). |
| N:bpN:p4:domains | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L34-L39`; N DEPGRAPH L5785 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by bpP:p2:conv#data (P-p1p2.nodes.md). |
| N:bpN:p4:norm | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm@L47-L54`; N DEPGRAPH L5868 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by bpN:p6:iterative-special (P-xown.nodes.md). |
| N:bpN:p4:projections | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L184-L190`; N DEPGRAPH L6618 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by bpN:p6:iterative-special (P-xown.nodes.md). |
| N:bpN:p4:sup-weighted | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L88-L96`; N DEPGRAPH L6109 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by bpP:p5:consts (P-p5.nodes.md). |
| N:bpN:p5:adjoint | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:adjoint@L141-L145`; N DEPGRAPH L7421 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p2:oi-transfer (P-p1p2.nodes.md). |
| N:bpN:p5:canonical | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical@L90-L98`; N DEPGRAPH L7130 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11b:lm-prop (P-p11b.nodes.md). |
| N:bpN:p5:canonical-map | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L215-L225`; N DEPGRAPH L7967 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11:aa-same (P-p11.nodes.md). |
| N:bpN:p5:composition | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition@L157-L168`; N DEPGRAPH L7544 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11:aa-same (P-p11.nodes.md). |
| N:bpN:p5:composition-integral | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition-integral@L203-L206`; N DEPGRAPH L7871 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p2:oi-ratio (P-p1p2.nodes.md). |
| N:bpN:p5:flow | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L44-L54`; N DEPGRAPH L6826 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by bpP:p11a:affine-flow (P-p11a12.nodes.md). |
| N:bpN:p5:lie-derivative | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L110-L114`; N DEPGRAPH L7247 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11b:li-tay (P-p11b.nodes.md). |
| N:bpN:p5:setting | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:setting@L19-L26`; N DEPGRAPH L6706 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by bpP:p11a:c2-conv#bracket (P-p11a12.nodes.md). |
| N:bpN:p5:symplectic | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:symplectic@L76-L81`; N DEPGRAPH L7014 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11b:lm-prop (P-p11b.nodes.md). |
| N:bpN:p5:taylor | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L121-L132`; N DEPGRAPH L7334 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11b:li-tay (P-p11b.nodes.md). |
| N:bpN:p5:transform | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L183-L190`; N DEPGRAPH L7708 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11:aa-same (P-p11.nodes.md). |
| N:bpN:p5:vf-bound | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:vf-bound@L29-L34`; N DEPGRAPH L6735 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p2:sp-field (P-p1p2.nodes.md). |
| N:bpN:p6:divisor | PASS | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:divisor@L50-L53`; N DEPGRAPH L8264 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p2:dr-use (P-p1p2.nodes.md). |
| N:bpN:p6:ext-numerics | PASS | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:ext-numerics@L22-L22`; N DEPGRAPH L8126 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p2:nfb-N (P-p1p2.nodes.md). |
| N:bpN:p6:homological | PASS | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:homological@L60-L70`; N DEPGRAPH L8322 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11:aa-same (P-p11.nodes.md). |
| N:bpN:p6:iterative | PASS | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L93-L108`; N DEPGRAPH L8578 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by bpN:p6:iterative-special (P-xown.nodes.md). |
| N:bpN:p6:setting | PASS | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:setting@L29-L40`; N DEPGRAPH L8178 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by bpN:p6:iterative-special (P-xown.nodes.md). |
| N:bpN:p6:telescope | PASS | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:telescope@L148-L150`; N DEPGRAPH L8950 | IMP-2 fixed: exact owner contract and confirmed published ownership. Referenced by stepP:p11:aa-same (P-p11.nodes.md). |
| N:bpN:p0:partial-sec#degenerateHamiltonian | FAIL | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L324-L324`; N DEPGRAPH L930 | Delete this complete unused NODE record from P-imports.nodes.md. IMP-3 remains: no DEPS or ROUTES entry in any other P node packet references it; its ITEM already correctly records EXCLUDED. Do not create an edge to retain it. |
| N:bpN:p0:partial-sec#fast | FAIL | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L265-L266`; N DEPGRAPH L609 | Delete this complete unused NODE record from P-imports.nodes.md. IMP-3 remains: no DEPS or ROUTES entry in any other P node packet references it; its ITEM already correctly records EXCLUDED. Do not create an edge to retain it. |
| K:bp:p0:domains#actionNbhd | FAIL | `blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45`; K DEPGRAPH L71 | Delete this complete unused NODE record from P-imports.nodes.md. IMP-3 remains: no DEPS or ROUTES entry in any other P node packet references it; its ITEM already correctly records EXCLUDED. Do not create an edge to retain it. |
| K:bp:p0:domains#fundamentalDomain | FAIL | `blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45`; K DEPGRAPH L97 | Delete this complete unused NODE record from P-imports.nodes.md. IMP-3 remains: no DEPS or ROUTES entry in any other P node packet references it; its ITEM already correctly records EXCLUDED. Do not create an edge to retain it. |
| K:bp:p1:cauchy-strip | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L568-L574`; K DEPGRAPH L2497; effective hypothesis amendment | IMP-1 fixed: exact effective owner contract, including the amended hypothesis field. Referenced by stepP:p11a:af-field (P-p11a12.nodes.md). |
| K:bp:p1:fourier-basic | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L757-L768`; K DEPGRAPH L3105; effective hypothesis amendment | IMP-1 fixed: exact effective owner contract, including the amended hypothesis field. Referenced by stepP:p11a:hm-coeff (P-p11a12.nodes.md). |
| K:bp:p1:iteration | FAIL | `blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1009-L1014`; K DEPGRAPH L3916 | Delete this complete unused NODE record from P-imports.nodes.md. IMP-3 remains: no DEPS or ROUTES entry in any other P node packet references it; its ITEM already correctly records EXCLUDED. Do not create an edge to retain it. |
| K:bp:p1:summation | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:summation@L824-L831`; K DEPGRAPH L3302; effective hypothesis amendment | IMP-1 fixed: exact effective owner contract, including the amended hypothesis field. Referenced by stepP:p11a:fc-decay (P-p11a12.nodes.md). |
| K:bp:p1:uniform-limits | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L364-L368`; K DEPGRAPH L1776; effective hypothesis amendment | IMP-1 fixed: exact effective owner contract, including the amended hypothesis field. Referenced by stepP:p11a:lm-hol (P-p11a45.nodes.md). |
| N:bpN:p4:bracket | FAIL | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L149-L153`; N DEPGRAPH L6439 | Delete this complete unused NODE record from P-imports.nodes.md. IMP-3 remains: no DEPS or ROUTES entry in any other P node packet references it; its ITEM already correctly records EXCLUDED. Do not create an edge to retain it. |

## Coverage verdicts

All 60 selected items have exact source-locator agreement with their corresponding import/owner statement. The 53 retained imports have NODE dispositions naming the exact import ID; the seven unused imports have EXCLUDED dispositions with the confirmed no-consumer reason. The latter coverage repair is correct even though the corresponding stale node has not yet been removed.

| ID | Verdict | Native source span re-read | Reason |
|---|---|---|---|
| I:bpI:p7:chart | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L242-L246` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| I:bpI:p7:elements | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:elements@L144-L156` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| I:bpI:p7:kepler-eq | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L91-L114` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| I:bpI:p7:orbit-identities | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L181-L190` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| I:bpI:p7:orbit-maps | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps@L158-L168` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| I:bpI:p7:symplectic | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L205-L217` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| I:bpI:p7:x-forms | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-forms@L39-L40` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| I:bpI:p7:x-hol | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-hol@L32-L34` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| I:bpI:p7:x-weier | PASS | `blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-weier@L35-L35` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| I:stepI:p7:ke-trig | PASS | `blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-trig@L119-L119` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| K:bp:p1:decay | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:decay@L786-L789` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| K:bp:p1:real-restriction | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1047-L1051` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p0:partial | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L319-L335` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p0:partial-exponents#partialDriftExponent | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p0:partial-exponents#partialTimeExponent | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p3:gen-continuation | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L270-L277` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p3:gen-continuation-compact | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L289-L292` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p3:gen-exit | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L328-L341` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p3:gen-lip | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-lip@L116-L120` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p3:gen-maximal | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L251-L258` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p3:gen-sol | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L88-L93` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p3:gen-symmetry | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L101-L110` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p3:gen-uniqueness | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L217-L224` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p3:ham-periodic | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L402-L407` | IMP-3 coverage repair is correct: no P dependency/route reference; source remains owned by the published graph. The outstanding node finding is listed separately above. |
| N:bpN:p3:ham-smooth | PASS | `blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L377-L381` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p4:algebra | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L108-L112` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p4:cauchy | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L125-L133` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p4:coefficients | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L60-L70` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p4:domains | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L34-L39` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p4:norm | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm@L47-L54` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p4:projections | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L184-L190` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p4:sup-weighted | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L88-L96` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p5:adjoint | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:adjoint@L141-L145` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p5:canonical | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical@L90-L98` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p5:canonical-map | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L215-L225` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p5:composition | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition@L157-L168` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p5:composition-integral | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition-integral@L203-L206` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p5:flow | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L44-L54` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p5:lie-derivative | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L110-L114` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p5:setting | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:setting@L19-L26` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p5:symplectic | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:symplectic@L76-L81` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p5:taylor | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L121-L132` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p5:transform | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L183-L190` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p5:vf-bound | PASS | `blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:vf-bound@L29-L34` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p6:divisor | PASS | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:divisor@L50-L53` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p6:ext-numerics | PASS | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:ext-numerics@L22-L22` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p6:homological | PASS | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:homological@L60-L70` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p6:iterative | PASS | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L93-L108` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p6:setting | PASS | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:setting@L29-L40` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p6:telescope | PASS | `blueprint-N/parts/p6-normal-form.tex#bpN:p6:telescope@L148-L150` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p0:partial-sec#degenerateHamiltonian | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L324-L324` | IMP-3 coverage repair is correct: no P dependency/route reference; source remains owned by the published graph. The outstanding node finding is listed separately above. |
| N:bpN:p0:partial-sec#fast | PASS | `blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-sec@L265-L266` | IMP-3 coverage repair is correct: no P dependency/route reference; source remains owned by the published graph. The outstanding node finding is listed separately above. |
| K:bp:p0:domains#actionNbhd | PASS | `blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45` | IMP-3 coverage repair is correct: no P dependency/route reference; source remains owned by the published graph. The outstanding node finding is listed separately above. |
| K:bp:p0:domains#fundamentalDomain | PASS | `blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45` | IMP-3 coverage repair is correct: no P dependency/route reference; source remains owned by the published graph. The outstanding node finding is listed separately above. |
| K:bp:p1:cauchy-strip | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L568-L574` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| K:bp:p1:fourier-basic | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L757-L768` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| K:bp:p1:iteration | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1009-L1014` | IMP-3 coverage repair is correct: no P dependency/route reference; source remains owned by the published graph. The outstanding node finding is listed separately above. |
| K:bp:p1:summation | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:summation@L824-L831` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| K:bp:p1:uniform-limits | PASS | `blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L364-L368` | Correct NODE mapping to the retained, owner-verified import ID; no KIND prefix or unsupported exclusion. |
| N:bpN:p4:bracket | PASS | `blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L149-L153` | IMP-3 coverage repair is correct: no P dependency/route reference; source remains owned by the published graph. The outstanding node finding is listed separately above. |

## Substantive counterchecks

**K effective contracts (IMP-1).** The six selected repaired hypotheses are decay, real-restriction, cauchy-strip, fourier-basic, summation and uniform-limits. They exactly incorporate the effective owner amendments, not a new P-only restriction. Raw K Part 1 L37–39 supplies positive strip widths and n≥1 wherever a strip occurs. Summation retains the forward positive-width premise; uniform-limits restricts those standing strip conventions to its strip-specific clauses; real-restriction retains the primary target dimension when that clause is used. No other source field is changed by these repairs. Their 1-periodic Fourier factors remain 2π, and geometric strip widths are preserved.

**Published I contracts (IMP-2).** The ten selected I nodes remain owned by the published graph; no P-xown conversion is needed. Kepler-eq includes the analytic tube through e=0 and the real solution for |e|<1, while elements/chart deliberately exclude the circular/singular Delaunay loci. The orbit formulas, symplectic form, source/target open domains and canonical transfer statements are unchanged. The publication notes do not turn the owner’s external inputs into proved Lean results.

**Published N contracts (IMP-2).** N-PARTIAL-CONVEX retains its exact fixed-data → threshold → perturbation/trajectory → tested-time quantifier order, both signs through the definite-fast-part predicate, closed max-norm erosion, the slow condition only on [0,t], and planet/fast-action-count exponents. The ODE imports keep two-sided endpoint derivatives, uniqueness on the stated interval and maximal-solution agreement only where claimed. The weighted norm keeps e^(2π|k|₁s), pointwise angular derivative sums rather than an unsupported sum of global suprema, and the declared finite-norm hypotheses. The flow’s scaled norm is a complex norm; its inverse/derivative statements use the smaller domain. The Iterative Lemma retains its nonresonance, Lipschitz, smallness, domain and reality premises and exact remainder constants.

**Import shell.** All 60 selected imports use KIND external, PROOF_SOURCE -, DEPS -, ROUTES -, ROUTE_FOR -, and no EDGE records. Their four FROZEN identity fields are all -, as required: these imports are not P anchors. No route edge or generic writer quantifier filler was introduced. Owner KIND/contract/version annotations agree for all 60. Seven selected owner nodes themselves bind frozen declarations; their manifest identity fields (path/export/anchor ID/ABI/contract identity where present) agree. No anchor identity or theorem body was changed or inferred from publication.

**Unused boundary (IMP-3).** Independently scanned every other current P `*.nodes.md` packet’s DEPS and ROUTES fields. Exactly the same seven IDs remain unreferenced as in the prior review and in the imports tool’s report. This is not a request to manufacture consumers or to move the nodes to P-xown. The owning graphs retain them; the mismatch is the current P graph retaining imports outside its dependency closure. All corresponding coverage exclusions are already accurate. The P-FIXED revision is included in the scan, so none of these findings rests on its old deferral.

## Verification receipts

Commands were run in read-only report mode, without `--add`, `--prune` or any packet edits.

```text
python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_imports.py docs/graph/P/packets --slice P-imports --self-track P
P-imports: 88 imported nodes present, 81 referenced, 0 missing, 7 unreferenced
  UNREFERENCED K:bp:p0:domains#actionNbhd
  UNREFERENCED K:bp:p0:domains#fundamentalDomain
  UNREFERENCED K:bp:p1:iteration
  UNREFERENCED N:bpN:p0:partial-sec#degenerateHamiltonian
  UNREFERENCED N:bpN:p0:partial-sec#fast
  UNREFERENCED N:bpN:p3:ham-periodic
  UNREFERENCED N:bpN:p4:bracket

python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-imports --structural
P-imports: 88 nodes, 0 edges, 88 coverage items, 0 problems, 0 TODO records (not counted: --structural)

sha256sum -c docs/graph/P/IMPORTS.sha256
All nine listed source files: OK
```

Each command exits 0. Structural validity does not establish root reachability or override the seven material boundary findings. Independent checks give 60/60 owner memberships, 60/60 exact effective five-field comparisons (locator plus four source fields), 60/60 matching owner KIND/contract/version notes, 53/53 matching retained replacement blocks, 7/7 matching coverage replacement blocks and the exact 7-ID unused set. Every selected coverage item has its own row. No mathematical source gap was filled.

Only `docs/graph/P/reviews/P-imports-delta.md` is authored. No Lean, build, source lint or state-changing git command is run. Unrelated concurrent reports are left untouched. Final validation checks table completeness, whitespace and unchanged input hashes.

## Snapshot and source observations

HEAD observed during review: `59beecd5ddea6c4e26c9bd6fabb272d3f6ea1920`. Content hashes bind the inspected inputs independently of concurrent history movement.

| Input | SHA-256 |
|---|---|
| `docs/graph/P/packets/P-imports.nodes.md` | `e64e73761b17d41abe6bae72e6093f64bffbc3dbe033356bc3dd57ab6df5142e` |
| `docs/graph/P/packets/P-imports.coverage.md` | `131a88aa74ac304b2eb22966ff5d76fe31a5d3cb2784b7326f401925cef6404e` |
| `docs/graph/P/reviews/P-imports-review.md` | `b1c427c48c1195385aedea5c4d717ed29672d9fa2c61a994df1207aef463dc8f` |
| `docs/graph/P/SPEC.md` | `46c1cf323866edc519123794aae8b00a0c479619e3041fe9dec3d1de777b53bf` |
| `docs/graph/P/DELTA-BRIEF.md` | `af81282f3d2ab67fe709018af8200c900330629894b7df16ff5bf252c8e6f04b` |
| `docs/graph/P/REVIEW-BRIEF.md` | `85a08dd77f773f2fb7ca26559b1f01816cf8aa3d721068be0b4eacdd3b68c207` |
| `docs/graph/K/DEPGRAPH.md` | `bf82bf0146405c6c0c2c9a5cf2f87fbaa1afa120dc502d103a4806698415e574` |
| `docs/graph/I/DEPGRAPH.md` | `1ef3cc4e6a297b1922212ff1d5ddf6a94e2efb3b2a7350dab784842b5383151e` |
| `docs/graph/N/DEPGRAPH.md` | `015a24ad288b8edf39ece8ae103cbf36ab791e19523545a6b7016f279062ddaf` |
| `docs/graph/P/IMPORTS.sha256` | `cdf492cd04ed8a276d6b2ebda09565cc71ff03783c8aa44981fef8e8544a4e09` |

No new blueprint defect is established in the selected statements. Historical I/N pending-publication prose in SPEC is superseded by the user’s published-owner instruction and current publication receipts; it is not permission to alter an effective owner statement. Acceptance here concerns source contracts and dependency boundaries, not Lean proof closure or every conditional application in the consuming P slices.
