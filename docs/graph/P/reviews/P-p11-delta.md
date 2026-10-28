# P-p11 delta topology review

**Verdict: FAIL.** Reviewer: `sol-delta-P-ae`. Marker: `delta-P-ae`.

Reviewed exactly 35 nodes still TOPOLOGY_STATUS: PROPOSED and 64 coverage items still COVERAGE_STATUS: PROPOSED (99 records). Prior reviewer: sol-review-P-v; extractor: sonnet-extract-P-p11, both distinct from this reviewer. Non-PROPOSED records were read only as prerequisite or local context.

Read DELTA-BRIEF.md, REVIEW-BRIEF.md, SPEC.md with the P-FIXED revision and latest writer rulings, and P-p11-review.md including its individual FAILs and direction/bridge checks. PFIXED-restored-review.md has no P-p11 record; this slice is a new P-FIXED corpus slice. P-FIXED is a current seventh root. Old deferral text does not exclude its dependencies.

Re-read Part 11 L1-L273, every proposed statement/proof and EDGE-use span, all proposed coverage dispositions, and the cited suppliers. In particular checked Part 11a exact KAM interface/budget/limit/displacement/evaluation statements; Part 2 averaging statements and replay steps; N Parts 4-6 weighted estimates, arbitrary-norm flow and Lie/iteration statements; K Part 1 holomorphic-analytic and mean-value statements; I Part 7 x-hol/x-weier; Part 9 rotation/lift/diagonalisation, Part 10 interface, and the cited Part 6/7/8/12 definitions and geometry. No Lean command, provider or implementation read, packet edit or state-changing git command was used.

## Remaining failures

**D1 — derivative supplier is too narrow.** pr-in SOURCE_QUANTIFIERS says only |alpha|<=mu-bar, but L208 gives general multi-index Cauchy bounds. The proof at L210 immediately uses alpha+1, up to mu-bar+1, and L211 uses derivatives of the frequency corrections through order mu-bar+1. The restricted record cannot supply those uses. Remove only that artificial order restriction and retain the inner-domain/Cauchy-disc guards.

**D2 — c_2 and c_3 are not the same constant.** pr-a writes c_2 eps^{nu_2+3/2} ell^{2tau_0+1} = eps_f(eps). L199 defines eps_f using c_3, while the bound inherited from slow averaging uses c_2. The prepared-system proof chooses a sufficiently large c_3; the justified relation is an inequality, not equality of the two constants. Change only that relation in SOURCE_CONCLUSION.

**D3 — missing positive physical data.** forward-tube is used with the fixed data of L42, but its hypotheses list only a_i>0 and the formula Lambda_i^*=m_i sqrt(kappa a_i). Positive G,m0,m_i (and kappa=Gm0) are needed for the positive interval (0,(1/4)min Lambda_i^*]. For instance a_i>0 with m_i=0 leaves that interval empty. Repeat the inherited physical premises in this independent geometric lemma. Do not add a dependency on the entire sec-A#data package, which itself uses forward-tube to choose delta_*; its physical inputs can be stated independently.

## Proposed nodes

All spans below are in blueprint-P/parts/p11-cp09-preparation.tex. Statement/proof and every EDGE-use span listed were re-read; out-of-slice supplier statements were checked at their packet locators.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p11:kam-input | PASS | L24-L38; L25-L25; L35-L35 | The missing c in the Euclidean unit sphere is restored; provider statements supply K1-K6 with the squared convention and fixed-data budget. |
| bpP:p11:holo-chart | PASS | L63-L73; L74-L84; L75-L75; L76-L76; L79-L79; L80-L80; L81-L81; L82-L82; L83-L83; L64-L64; L66-L66; L67-L67; L68-L68; L71-L71 | Complex rotation carrier, operator bounds, T_1 and O_c are restored; product-domain and coefficient packages are direct dependencies. |
| stepP:p11:hc-rot | PASS | L75-L75 | The exact unsupported real-to-complex extension/identity input is faithfully exposed as SOURCE_GAP; no new hypothesis or external is inserted. |
| stepP:p11:hc-strip | PASS | L79-L79 | The added principal inverse-square-root input matches I x-hol and its positive-real-part domain. |
| stepP:p11:hc-id | PASS | L81-L81 | Working h-tilde data and the product-domain definition are directly linked at the identity/chart use. |
| stepP:p11:hc-lat | PASS | L82-L82 | The added product-domain link matches the product-chart lattice and injectivity use. |
| stepP:p11:hc-mean | PASS | L83-L83 | Weighted-data and coefficient-package repairs match; the radial Schwarz bound is honestly exposed as SOURCE_GAP. |
| bpP:p11:avg-fast | PASS | L102-L108; L109-L114; L110-L110; L111-L111; L112-L112; L113-L113; L103-L103; L104-L104; L106-L106 | The three distinct quantitative displacement bounds are restored exactly, with the correct 2pi divisors and domains. |
| stepP:p11:af-o2 | PASS | L112-L112 | Logarithmic asymptotics is linked directly at the threshold argument, as required by the writer ruling. |
| stepP:p11:af-concl | PASS | L113-L113 | Weighted Fourier conventions are directly linked; the normal form, remainder and sup conversion agree with the source. |
| bpP:p11:aniso-bracket | PASS | L120-L124; L125-L128; L126-L126; L127-L127; L121-L121 | The finite holomorphic field input, rho_* and the componentwise scaled norm are restored without extra geometric premises. |
| stepP:p11:ab-der | PASS | L126-L126 | Fixed-parameter angular Cauchy and action Cauchy are used at the stated losses; the direct norm-data link is present. |
| stepP:p11:ab-prod | PASS | L127-L127 | The algebra and preceding derivative bounds are applied at fixed parameter; the norm-data edge is direct and no reverse edge remains. |
| stepP:p11:aa-same | PASS | L140-L140 | The replaced isotropic bracket/field edges are removed; the explicitly adapted proof replay retains its actual suppliers and norm data. |
| stepP:p11:aa-quad | PASS | L141-L141 | Both first-step cases and the quadratic bound are represented; weighted conventions are directly linked. |
| bpP:p11:polar-avg | PASS | L155-L163; L164-L168; L165-L165; L166-L166; L167-L167; L159-L159 | The dependency is the generic Theta^(1) formula, not the eps-specific shell; the parameter-independent average contract matches. |
| stepP:p11:pa-taylor | PASS | L165-L165 | K holomorphic-analytic(a) supplies the missing Taylor-coefficient estimate and summability on the smaller polydisc. |
| stepP:p11:pa-mono | PASS | L166-L166 | Generic polar formula and the authorized trigonometric-moment external give the stated even-exponent polynomial. |
| stepP:p11:pa-series | PASS | L167-L167 | Termwise integration and the holomorphic-limit input are directly linked; normal convergence and the vanishing-order bound match. |
| bpP:p11:avg-slow | PASS | L170-L179; L180-L185; L181-L181; L182-L182; L183-L183; L184-L184; L175-L175; L173-L173; L171-L171 | The J-derivative domain guard and all three distinct displacement powers are restored faithfully. |
| stepP:p11:as-osc | PASS | L181-L181 | Direct weighted/fast-domain data and higher Cauchy inputs match the oscillation and polar-average estimates. |
| stepP:p11:as-nr | PASS | L182-L182 | The fast-parameter and logarithmic-asymptotic links are direct; pure slow and mixed divisor cases retain the correct eps factors. |
| stepP:p11:as-b2 | PASS | L183-L183 | The threshold denominator and ratio are distinguished correctly; e4 supplies the smallness limit. |
| bpP:p11:prepared | PASS | L196-L204; L205-L212; L206-L206; L207-L207; L208-L208; L209-L209; L210-L210; L211-L211; L197-L197; L201-L201 | The real J/rho range is restored; derivative orders and the fixed-radius domains match. The c argument of g_2 is typed on the unit sphere by index-def. |
| stepP:p11:pr-basic | PASS | L206-L206 | The direct fast-domain link matches D_1 prime and s_1 in the chart/domain chain. |
| stepP:p11:pr-a | FAIL | L207-L207; L199 | D2: c_2 eps^{nu_2+3/2} ell^{2tau_0+1} is bounded by eps_f with constant c_3, not identically equal to it. |
| stepP:p11:pr-in | FAIL | L208-L208; L210-L211 | D1: remove the unsupported order cap; pr-c uses alpha+1 and pr-d needs higher derivatives of the frequency corrections. |
| stepP:p11:pr-b | PASS | L209-L209 | The extra fixed-radius rho Cauchy estimate and logarithmic smallness have direct suppliers. |
| stepP:p11:pr-d | PASS | L211-L211 | The M-bound, derivative inputs, rescaling factors, diagonal norm and e4 link match the all-order estimate actually used. |
| bpP:p11:forward-tube | FAIL | L42-L44; L230-L232; L233-L235; L234-L234; L231-L231 | D3: restore the inherited positive physical data; a_i>0 alone does not ensure Lambda_i^*>0 or a positive admissible delta_zeta. |
| stepP:p11:wr-nu | PASS | L248-L248 | e4 supplies the threshold limits; wr-tube is a list of future threshold requirements, not a reverse dependency. |
| stepP:p11:wr-tube | PASS | L253-L253 | The added fast-data/e4 links are direct; the chosen threshold and actual KAM/averaging displacements feed the tube argument. |
| bpP:p11:sec-A#data | PASS | L42-L44; L42-L42; L44-L44 | The unrelated two-planet physical package is removed; only its index notation was cited, and the general-n forward-tube supplier remains. |
| bpP:p11:e4 | PASS | L19-L19 | The authorized logarithmic external contract matches L19 and introduces no dependency or chosen constant. |
| bpP:p11:e5 | PASS | L20-L20 | The authorized termwise-integration and trigonometric-moment contract matches L20. |

## Proposed coverage items

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p11:kam-input | PASS | L24-L38 | Source unit maps to the named node(s); the disposition remains valid. |
| bpP:p11:holo-chart | PASS | L63-L73 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:hc-rot | PASS | L75-L75 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:hc-strip | PASS | L79-L79 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:hc-id | PASS | L81-L81 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:hc-lat | PASS | L82-L82 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:hc-mean | PASS | L83-L83 | Source unit maps to the named node(s); the disposition remains valid. |
| bpP:p11:avg-fast | PASS | L102-L108 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:af-o2 | PASS | L112-L112 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:af-concl | PASS | L113-L113 | Source unit maps to the named node(s); the disposition remains valid. |
| bpP:p11:aniso-bracket | PASS | L120-L124 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:ab-der | PASS | L126-L126 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:ab-prod | PASS | L127-L127 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:aa-same | PASS | L140-L140 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:aa-quad | PASS | L141-L141 | Source unit maps to the named node(s); the disposition remains valid. |
| bpP:p11:polar-avg | PASS | L155-L163 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:pa-taylor | PASS | L165-L165 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:pa-mono | PASS | L166-L166 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:pa-series | PASS | L167-L167 | Source unit maps to the named node(s); the disposition remains valid. |
| bpP:p11:avg-slow | PASS | L170-L179 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:as-osc | PASS | L181-L181 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:as-nr | PASS | L182-L182 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:as-b2 | PASS | L183-L183 | Source unit maps to the named node(s); the disposition remains valid. |
| bpP:p11:prepared | PASS | L196-L204 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:pr-basic | PASS | L206-L206 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:pr-a | PASS | L207-L207 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:pr-in | PASS | L208-L208 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:pr-b | PASS | L209-L209 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:pr-d | PASS | L211-L211 | Source unit maps to the named node(s); the disposition remains valid. |
| bpP:p11:r-cp-2 | PASS | L224-L226 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| bpP:p11:forward-tube | PASS | L230-L232 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:wr-nu | PASS | L248-L248 | Source unit maps to the named node(s); the disposition remains valid. |
| stepP:p11:wr-tube | PASS | L253-L253 | Source unit maps to the named node(s); the disposition remains valid. |
| bpP:p11:displacement | PASS | L256-L258 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| heading:bpP:p11 | PASS | L1-L1 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| heading:bpP:p11:sec-conv | PASS | L8-L8 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| heading:bpP:p11:sec-A | PASS | L40-L40 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| heading:bpP:p11:sec-C | PASS | L94-L94 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| heading:bpP:p11:sec-D | PASS | L116-L116 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| heading:bpP:p11:sec-E | PASS | L187-L187 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| heading:bpP:p11:sec-F | PASS | L228-L228 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| heading:bpP:p11:sec-notes | PASS | L260-L260 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| p11:sourcegap-L143 | PASS | L143-L143 | Source unit maps to the named node(s); the disposition remains valid. |
| p11:prose-L4-L4 | PASS | L4-L4 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| p11:prose-L6-L6 | PASS | L6-L6 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| p11:prose-L10-L12 | PASS | L10-L12 | Source unit maps to the named node(s); the disposition remains valid. |
| p11:prose-L14-L22 | PASS | L14-L22 | Source unit maps to the named node(s); the disposition remains valid. |
| p11:prose-L42-L44 | PASS | L42-L44 | Source unit maps to the named node(s); the disposition remains valid. |
| p11:prose-L61-L61 | PASS | L61-L61 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| p11:prose-L96-L100 | PASS | L96-L100 | Source unit maps to the named node(s); the disposition remains valid. |
| p11:prose-L118-L118 | PASS | L118-L118 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| p11:prose-L145-L153 | PASS | L145-L153 | Source unit maps to the named node(s); the disposition remains valid. |
| p11:prose-L189-L194 | PASS | L189-L194 | Source unit maps to the named node(s); the disposition remains valid. |
| p11:prose-L262-L262 | PASS | L262-L262 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| p11:prose-L264-L264 | PASS | L264-L264 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| p11:prose-L266-L266 | PASS | L266-L266 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| p11:prose-L268-L268 | PASS | L268-L268 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| p11:prose-L270-L270 | PASS | L270-L270 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| p11:prose-L272-L273 | PASS | L272-L273 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| bpP:p11:e1 | PASS | L16-L16 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| bpP:p11:e2 | PASS | L17-L17 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| bpP:p11:e3 | PASS | L18-L18 | The alias, heading, administrative, comparison or pointer exclusion matches the source and current scope. |
| bpP:p11:e4 | PASS | L19-L19 | Source unit maps to the named node(s); the disposition remains valid. |
| bpP:p11:e5 | PASS | L20-L20 | Source unit maps to the named node(s); the disposition remains valid. |

## Prior repairs and conditional applications

The new e4/e5 nodes and their nine consumer edges comply with the binding Part 11 external ruling. e1-e3 remain individually excluded aliases; no extra external is invented. e3 is the Heine-Cantor alias. e2 names a stronger all-order statement than N C.1, but the Taylor-coefficient uses at pa-taylor/as-osc/pr-in now have the actual K holomorphic-analytic(a) supplier. The used I/K/N imports were compared with their source statements and owning node IDs, not accepted by alias names alone.

The two SOURCE_GAP notes PASS. K holomorphic-analytic starts with a holomorphic map and provides power-series coefficients/restriction, not the real-to-complex extension and persistence of identities invoked at L75. Part 9 local-analytic supplies a real analytic rotation, not that extension. N general-cauchy is a first-derivative estimate, not the vanishing-fourth-order radial Schwarz bound used at L83. The current records preserve exactly the claimed source outputs and disclose these unpaid inputs. This is faithful source topology; no missing mathematics is supplied here.

The weighted-norm data links, product-domain and secular coefficient links, fast-averaging parameter links and generic polar formula links correctly resolve the recorded missing direct uses. The generic polar-average lemma does not assume an eps-dependent shell. The restored slow-averaging and prepared-system guards retain the actual J and polar-action domains, factorial Cauchy losses, eps^{3/2}/eps^{5/2}/eps^{1/2} displacement powers and period-one 2pi conversion.

aa-same explicitly replays the named proofs with R1-R3. The replaced isotropic bracket and field estimates are not dependencies; the flow/compose/transform/canonical and homological/iteration/telescope ingredients still are proof-replay inputs. Only flow is literally arbitrary-norm; oi-transfer supplies the named geometry adaptation. The fixed-parameter angular derivative sum is used at fixed I, consistent with N cauchy and its warning against summing global suprema. Both first-step cases and the quadratic g estimate are represented. No new source gap is inferred just from the rectangular domain.

The kam-input/provider direction, ab-der -> ab-prod direction and wr-nu/wr-tube direction are correct. The input is a cited theorem package, not an assumption replacing the wrapper. wr-nu specifies smallness requirements before applying KAM; wr-tube uses its threshold and the delivered torus/action bounds. No reversed dependency is reintroduced. No mechanical alternative-route EDGE or generic inherits-quantifiers insertion occurs among these proposed records.

All 64 proposed coverage items PASS, including the five individual external items and the updated external-list paragraph. The sourcegap L143 maps to the actual blueprint replay; administrative source/deviation/consumer paragraphs and the r-cp-2/displacement remarks are not extra prerequisites. Section-data paragraphs map to their existing data nodes. The three node-contract failures do not invalidate their coverage mappings.

## Suspected blueprint defects and limitations

The e1 alias direction mismatch and the missing admitted radial Schwarz input are already disclosed by the earlier review and preserved above. L270 still calls accepted corpus suppliers open dependencies; this is workflow wording, not a graph premise or proof-state assessment. Existing CP09 errata at L266 were checked as provenance, not independently re-audited against the paper. No new pinned-paper defect or mathematical repair is asserted.

## Complete replacements

Only one statement field changes in each block; all other lines, including dependencies and identity/status/author metadata, are kept verbatim.

### P-p11 — stepP:p11:pr-a

```text
NODE: stepP:p11:pr-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-a@L207-L207
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-a@L207-L207
CONTRACT_ID: stepP:p11:pr-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Proposition avg-slow (c): wn(f_3) <= eps^{nu_2} E_2
SOURCE_QUANTIFIERS: eps <= eps_3
SOURCE_CONCLUSION: sup¦P_eps¦ <= eps^{-1} sup¦f_3¦ <= eps^{nu_2 + 3/2} c_2 ell^{2 tau_0+1} <= eps_f(eps)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11:avg-slow, N:bpN:p4:sup-weighted, bpP:p11:sec-E#data, bpP:p11:sec-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11:avg-slow | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-a@L207-L207 | bound for f_3 and E_2
EDGE: N:bpN:p4:sup-weighted | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-a@L207-L207 | sup <= weighted norm (a)
EDGE: bpP:p11:sec-E#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-a@L207-L207 | P_eps = f_3 o A_eps/eps
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-a@L207-L207 | the weighted Fourier norm and its parameterwise convention are used explicitly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11+sol-review-P-v
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:pr-in

```text
NODE: stepP:p11:pr-in
KIND: step
TITLE: Derivative inputs
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208
CONTRACT_ID: stepP:p11:pr-in
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Proposition avg-slow (a),(c) bounds for Z hat, g_2; s_1, s_2 >= c ell^{-(tau_0+1)}
SOURCE_QUANTIFIERS: eps <= eps_3; arbitrary J-multi-indices alpha,beta and rho-multi-index gamma on the inner domains where the Cauchy discs in bpP:p11:sec-E#data fit
SOURCE_CONCLUSION: (i) ¦d_J^beta G hat_0¦ <= c M_F beta! (4/s_1)^¦beta¦; (ii) ¦d_J^alpha d_rho Z hat¦ <= c eps ell^{2 tau_0+1+(tau_0+1)¦alpha¦}; (iii) ¦d_J^alpha d_rho^gamma g_2¦ <= c alpha! gamma! eps^{3-¦gamma¦} ell^{5 tau_0+2+(tau_0+1)¦alpha¦}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11:as-osc, bpP:p11:avg-slow, N:bpN:p4:general-cauchy, bpP:p11:sec-C#data, bpP:p11:sec-D#data, bpP:p11:sec-E#data, K:bp:p1:holomorphic-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11:as-osc | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | the bound for Z hat and its derivatives
EDGE: bpP:p11:avg-slow | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | sup bound of g_2 on V_2/2 and (a)
EDGE: N:bpN:p4:general-cauchy | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | Cauchy estimates (e2) with radii s_2/4, eps/4
EDGE: bpP:p11:sec-C#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | s_1 from eq par1
EDGE: bpP:p11:sec-D#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | s_2 from eq par2
EDGE: bpP:p11:sec-E#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | the domain table (the Cauchy discs fit)
EDGE: K:bp:p1:holomorphic-analytic | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | part (a) supplies the polydisc Taylor-coefficient bound and hence the multi-index Cauchy bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11+sol-review-P-v
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — bpP:p11:forward-tube

```text
NODE: bpP:p11:forward-tube
KIND: lemma
TITLE: Forward tube for $n$ planets
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L230-L232
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L233-L235
CONTRACT_ID: bpP:p11:forward-tube
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed physical data n>=2, G,m0>0, kappa=G m0, m_i>0; a_i > 0, Lambda_i^* = m_i sqrt(kappa a_i), zeta > 0; n planets
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: there is delta_zeta in (0, (1/4) min Lambda_i^*], depending only on (G, m0, m, a, zeta), such that every w in R^{4n} with ¦Lambda_i - Lambda_i^*¦ <= delta_zeta and Gamma_i(w) <= delta_zeta lies in O_n and ¦Psi^(n)(w) - circ(lambda/2pi)¦ < zeta; in particular Psi^(n)(w) in U_zeta
CONSTANT_SCOPE: delta_zeta depends only on (G, m0, m, a, zeta)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p12:ft-cpt, stepP:p12:ft-uc, stepP:p12:ft-cmp, bpP:p7:tube, bpP:p7:product-chart, bpP:p12:f-unif, bpP:p0:circular#circularPoint, bpP:p0:circular#circularTube, bpP:p7:product-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p12:ft-cpt | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L234-L234 | Steps ft-cpt to ft-cmp of the 2-planet lemma, replayed with n planets (compact set Q_0)
EDGE: stepP:p12:ft-uc | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L234-L234 | replayed (uniform continuity)
EDGE: stepP:p12:ft-cmp | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L234-L234 | replayed (comparison)
EDGE: bpP:p7:tube | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L234-L234 | Psi^(n)(w_0) = circ(lambda/2pi)
EDGE: bpP:p7:product-chart | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L231-L231 | O_n and Psi^(n)
EDGE: bpP:p12:f-unif | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L234-L234 | (e3) uniform continuity of Psi^(n) on a compact set
EDGE: bpP:p0:circular#circularPoint | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L231-L231 | circ
EDGE: bpP:p0:circular#circularTube | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L231-L231 | U_zeta
EDGE: bpP:p7:product-def | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L231-L231 | the product chart Psi^(n) and its domain O_n
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11+sol-review-P-v
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the lemma bpP:p12:forward-tube is stated for two planets and replayed step by step (steps are the edges)
```

## Validation

Both CORPUS.sha256 and IMPORTS.sha256 verify successfully. The read-only structural check reports `P-p11: 65 nodes, 354 edges, 90 coverage items, 0 problems, 0 TODO records (not counted: --structural)`. Scoped verdicts: 32 node PASS, 3 node FAIL, 64 coverage PASS.

Reviewed snapshot SHA-256:

- `docs/graph/P/packets/P-p11.nodes.md`: `cec3420130161345e5c01b5ee04c55e19d89f1eef08cbed8750722bd718cb7a0`.
- `docs/graph/P/packets/P-p11.coverage.md`: `37ac4da87c3d743e31c644d99408dd81155ae38ecd3d04944e08f6fdcf3490a5`.
- `blueprint-P/parts/p11-cp09-preparation.tex`: `4c0e2dfefb50b1e06581e069a55846d25e0e4697a8826514ac699bbb83efb41f`.

Final read-only checks: all 35 proposed nodes and 64 proposed coverage items have exactly one verdict row in their respective tables. Each of the three complete replacements changes exactly its identified failing field; all other fields remain verbatim. Checked all 213 edges of proposed nodes for target existence, one-to-one DEPS/ROUTES correspondence, and valid source line spans; all 17 distinct I/K/N imports used by these nodes exist in the owning graph. All three snapshot hashes above remain unchanged.

The review-application dry-run reports `P-p11: 3 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 63 PASS nodes`. Its PASS count includes coverage rows whose IDs are node IDs; the scoped distinct node verdicts remain 32 PASS and 3 FAIL. No replacements were applied. `git diff --check -- docs/graph/P/reviews/P-p11-delta.md` exits 0.
