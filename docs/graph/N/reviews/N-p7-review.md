# N-p7 topology review

Reviewer: sol-review-N-d. Marker: rev-N-d.

Verdict: FAIL. Reviewed the entire raw part, all 63 packet nodes and all 96 coverage items under SPEC. This is a source-topology verdict; no Lean implementation, proof status, build or axiom audit was used. Frozen declarations and manifest identity fields were consulted only for the stated interfaces.

The source-span column names lines in `blueprint-N/parts/p7-stability.tex`; both statement and proof spans were re-read, including every EDGE use. Cross-part checks included Part 1 restriction/norm/Hessian/QC statements, Part 3 solution/exit/uniqueness/continuation/energy statements, Part 4 domains/norms/coefficients/Cauchy/projections, Part 5 bracket/flow/transform/canonical statements, and K Part 1 L75-L78, L227-L236, L1047-L1051 and L1073-L1079.

## Node audit

| Node ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| `bpN:p7:ext-banach` | PASS | L17-L17 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p7:ext-taylor` | PASS | L18-L18 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p7:ext-num` | FAIL | L19-L19 | SOURCE_QUANTIFIERS says none although Young and x exp(-x) are universally quantified inequalities. |
| `bpN:p7:ext-linalg` | PASS | L20-L20 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p7:setting` | PASS | L26-L32 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p7:real-system` | FAIL | L34-L37; L38-L42 | Missing direct dependencies: `bpN:p4:norm`, `bpN:p4:domains`, `bpN:p5:setting`. |
| `stepN:p7:rs-smooth` | FAIL | L39-L39 | Missing direct dependencies: `bpN:p4:domains`. |
| `stepN:p7:rs-field` | FAIL | L40-L40 | Missing direct dependencies: `bpN:p4:domains`. |
| `bpN:p7:theta-derivative` | FAIL | L44-L47; L48-L51 | Missing direct dependencies: `bpN:p4:domains`. |
| `stepN:p7:td-loss` | FAIL | L49-L49 | Missing direct dependencies: `bpN:p4:norm`, `bpN:p4:domains`, `bpN:p7:setting`. |
| `stepN:p7:td-lim` | FAIL | L50-L50 | Missing direct dependencies: `bpN:p4:norm`. |
| `bpN:p7:resonant-gradient` | PASS | L53-L56; L57-L60 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:rg-coef` | FAIL | L58-L58 | Missing direct dependencies: `bpN:p4:norm`, `bpN:p7:setting`. |
| `stepN:p7:rg-zero` | FAIL | L59-L59 | Missing direct dependencies: `bpN:p4:norm`, `bpN:p4:domains`. |
| `bpN:p7:conjugation` | FAIL | L64-L67; L68-L71 | Missing direct dependencies: `bpN:p4:norm`, `bpN:p4:domains`, `bpN:p5:setting`. |
| `stepN:p7:cj-real` | FAIL | L69-L69 | Missing direct dependencies: `bpN:p4:domains`, `bpN:p5:setting`. K real-restriction is stated only for maps on T_rho (K Part 1 L1047-L1051). Psi is defined on D_{r~,s~}; no full-strip domain is supplied. The real derivative assertion at L69 is covered by the already permitted Part-1 restriction-of-scalars external. Do not widen the imported statement. Missing direct dependencies: `bpN:p1:ext-restrict`. Remove inapplicable or hypothesis-check-only edges: `K:bp:p1:real-restriction`. |
| `stepN:p7:cj-chain` | PASS | L70-L70 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p7:preimage` | FAIL | L73-L76; L77-L83 | Missing direct dependencies: `bpN:p4:domains`. |
| `stepN:p7:pi-set` | PASS | L79-L79 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:pi-self` | PASS | L80-L80 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:pi-contr` | PASS | L81-L81 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:pi-fix` | PASS | L82-L82 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p7:preimage-nfl` | FAIL | L85-L87; L88-L90 | Missing direct dependencies: `bpN:p6:setting`, `bpN:p6#data`. |
| `stepN:p7:pn-apply` | PASS | L89-L89 | Local data and conditional premises are supplied by the existing edges. |
| `bpN:p7:transfer` | FAIL | L92-L102; L103-L108 | Missing direct dependencies: `bpN:p4:norm`, `bpN:p4:domains`. |
| `stepN:p7:tr-orbit` | PASS | L104-L104 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:tr-long` | PASS | L105-L105 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:tr-ident` | FAIL | L106-L106 | Missing direct dependencies: `bpN:p7:setting`. |
| `stepN:p7:tr-est` | PASS | L107-L107 | Local data and conditional premises are supplied by the existing edges. |
| `bpN:p7:stopped-extension` | FAIL | L110-L112; L113-L116 | Missing direct dependencies: `bpN:p4:norm`, `bpN:p5:setting`. |
| `stepN:p7:se-stop` | PASS | L114-L114 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:se-noexit` | PASS | L115-L115 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p7:exit-ball` | PASS | L118-L120; L121-L123 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:eb-exit` | PASS | L122-L122 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p7:nonresonant` | FAIL | L127-L138; L139-L147 | Missing direct dependencies: `bpN:p4:domains`. |
| `stepN:p7:nr-dataA` | FAIL | L141-L141 | Missing direct dependencies: `bpN:p4:domains`. |
| `stepN:p7:nr-t3` | PASS | L142-L144 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:nr-concA` | PASS | L145-L145 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:nr-caseB` | FAIL | L146-L146 | Missing direct dependencies: `bpN:p4:domains`, `bpN:p6#data`. |
| `bpN:p7:resonance-data` | FAIL | L155-L159 | The arbitrary-h definition does not instantiate qc-convert's analytic/QC/frequency-bound premises. The parenthetical equivalence is a logical reformulation of the definition, a pointer to the conversion lemma, rather than an application of that conditional theorem. Missing direct dependencies: `bpN:p7:ext-linalg`. Remove inapplicable or hypothesis-check-only edges: `bpN:p1:qc-convert`. |
| `bpN:p7:energy-core` | PASS | L161-L171; L172-L176 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:ec-energy` | PASS | L173-L173 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:ec-proj` | PASS | L174-L174 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:ec-taylor` | FAIL | L175-L175 | Missing direct dependencies: `bpN:p7:setting`, `bpN:p1:ext-norms`. |
| `bpN:p7:admissible` | PASS | L181-L183; L184-L187 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:ad-ball` | PASS | L185-L185 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:ad-close` | PASS | L186-L186 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p7:no-exit` | PASS | L189-L198; L199-L205 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:ne-core` | PASS | L201-L202 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:ne-terms` | FAIL | L203-L203 | Missing direct dependencies: `bpN:p4:norm`, `bpN:p7:setting`. |
| `stepN:p7:ne-contra` | PASS | L204-L204 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p7:resonant-lemma2` | PASS | L220-L226; L227-L233 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p7:l2-exit` | FAIL | L228-L228 | Missing direct dependencies: `bpN:p7:setting`. L228 constructs the first exit and names condition (i). It does not apply no-exit; the application with all three conditions is L232. SPEC excludes hypothesis-check-only edges. Remove inapplicable or hypothesis-check-only edges: `bpN:p7:no-exit`. |
| `stepN:p7:l2-iii` | FAIL | L229-L229 | Missing direct dependencies: `bpN:p7:setting`. |
| `stepN:p7:l2-cone` | FAIL | L230-L231 | Missing direct dependencies: `bpN:p7:setting`, `bpN:p7:resonance-data`, `bpN:p7:ext-linalg`, `bpN:p1:ext-norms`. |
| `stepN:p7:l2-conv` | FAIL | L232-L232 | Missing direct dependencies: `bpN:p7:s-energy#rs`, `bpN:p7:setting`. |
| `bpN:p7:resonant-prop2` | FAIL | L237-L252; L253-L262 | Missing direct dependencies: `bpN:p6:setting`, `bpN:p4:domains`. The extra sentence "no other dependence on h,f beyond (m,M,l,delta,eps)" is not stated and would suppress the frequency dependence through Omega if read as a uniformity claim. |
| `stepN:p7:p2-red` | FAIL | L254-L254 | Missing direct dependencies: `bpN:p7:setting`. |
| `stepN:p7:p2-cases` | FAIL | L255-L258 | Missing direct dependencies: `bpN:p7:setting`, `bpN:p4:domains`, `bpN:p4:norm#monotone`. The p2-red edge starts at L254, outside this consumer (L255-L258); use L255. The projections edge also needs the case-A g_0 estimate at L255, not just case C. |
| `stepN:p7:p2-t12` | PASS | L259-L259 | Local data and conditional premises are supplied by the existing edges. |
| `stepN:p7:p2-t3` | FAIL | L260-L260 | Missing direct dependencies: `bpN:p7:setting`, `bpN:p7:resonance-data`, `bpN:p6#data`, `bpN:p6:ext-numerics`. |
| `stepN:p7:p2-concl` | PASS | L261-L261 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p7:s-energy#rs` | FAIL | L178-L179 | Missing direct dependencies: `bpN:p4:domains`. |

## Coverage audit

| Coverage item | Verdict | Source | Reason |
|---|---|---|---|
| `p7:prose-L21-L22` | FAIL | Part 7 L21-L22 | The pointer disposition says every listed K result is linked at a real use, including real-restriction at cj-real and qc-convert at resonance-data. Those two conditional imports are not applicable there as stated; correct the explanatory mapping. |

All other coverage items PASS. A search over all blueprint-N parts confirms that Lemma 1 is mentioned by Lemma 2 only as a pointer to its exit argument; Lemma 2 reproduces that argument with exit-ball and no-exit. No root consumes the convex Lemma 1 result itself. Its exclusion and those of its two steps follow SPEC's ownership ruling. The RS paragraph is correctly inventoried as a package; the failures above concern missing direct edges to packages, not its coverage disposition.

## Replacement fragments

These are complete database blocks. Unchanged source fields are retained; additions record direct uses at the consumer and do not add source premises. Rewritten nodes require a different delta reviewer.

```text
NODE: bpN:p7:real-system
KIND: lemma
TITLE: Holomorphic real systems
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L34-L37
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L38-L42
CONTRACT_ID: bpN:p7:real-system
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G in O(r,s)^R; 0<rho<=r
SOURCE_QUANTIFIERS: G; rho
SOURCE_CONCLUSION: (a) G^R is C^infty on W_r and G^R(theta+k,I)=G^R(theta,I); (b) at x in W_r, G^R is differentiable and X_{G^R}(x)=X_G(x)=((∂_{I_i}G(x))_i,(-∂_{theta_i}G(x))_i) in R^{2n}; (c) X_{G^R} is C^1 on W_r and 1-periodic in theta; (d) Theorems ham-energy, gen-uniqueness, gen-maximal, Corollary gen-continuation-periodic and Lemma gen-exit apply to F=X_{G^R} on the open set W_rho; in particular G^R is constant along every G-orbit (energy conservation)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:rs-smooth, stepN:p7:rs-field, bpN:p7:setting, bpN:p3:ham-smooth, bpN:p3:ham-energy, bpN:p3:gen-uniqueness, bpN:p3:gen-maximal, bpN:p3:gen-continuation-periodic, bpN:p3:gen-exit, bpN:p4:norm, bpN:p4:domains, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:rs-smooth | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L39-L39 | proof step
EDGE: stepN:p7:rs-field | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L40-L40 | proof step
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L35-L35 | W_r, O(r,s)^R, G^R, G-orbits
EDGE: bpN:p3:ham-smooth | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L41-L41 | step (d): G^R is C^2 on the open set W_rho, hence the cited results apply
EDGE: bpN:p3:ham-energy | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L35-L35 | (d) energy conservation along orbits
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L35-L35 | (d) applicability of the uniqueness theorem
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L35-L35 | (d) applicability of the maximal-solution theorem
EDGE: bpN:p3:gen-continuation-periodic | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L35-L35 | (d) applicability of the periodic continuation corollary
EDGE: bpN:p3:gen-exit | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L35-L35 | (d) applicability of the exit lemma
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L35-L35 | the consumer uses O(r,s), Fourier coefficients or the weighted norm directly
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L39-L39 | the smoothness proof uses the open domain D_{r,s}
EDGE: bpN:p5:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:real-system@L35-L35 | the consumer uses X_G or the symplectic matrix J directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the unlabelled proofstep (d) at L41 has no node (SPEC); its references are attributed here. Dropped candidate edges: p1:holo-real (special case named in \source) and the K imports (used in the steps)
```

```text
NODE: stepN:p7:rs-smooth
KIND: step
TITLE: Smoothness
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rs-smooth@L39-L39
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rs-smooth@L39-L39
CONTRACT_ID: stepN:p7:rs-smooth
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G holomorphic on D_{r,s}; W_r=iota^{-1}(D_{r,s})
SOURCE_QUANTIFIERS: G
SOURCE_CONCLUSION: G^R in C^infty(W_r) (G^R=G∘iota, D^k G^R=D^k G∘iota on real vectors); periodicity inherited from O(r,s)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:holomorphic-regularity, bpN:p1:ext-restrict, bpN:p7:setting, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-smooth@L39-L39 | holomorphic implies C^infty in the real sense
EDGE: bpN:p1:ext-restrict | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-smooth@L39-L39 | real derivative of the restriction to R^{2n}
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-smooth@L39-L39 | W_r, G^R
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-smooth@L39-L39 | periodicity in the class O(r,s)
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-smooth@L39-L39 | the consumer uses V_rD, D_{r,s} or a strip directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:rs-field
KIND: step
TITLE: Field
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40
CONTRACT_ID: stepN:p7:rs-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G holomorphic on V=D_{r,s}, real at real points; rs-smooth
SOURCE_QUANTIFIERS: G
SOURCE_CONCLUSION: G^R agrees with Re G near each real point so X_{G^R}=X_G on W_r; the field is C^1 (ham-smooth) and periodic ((a) and ham-periodic)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:hamiltonian-real, bpN:p3:ham-smooth, bpN:p3:ham-periodic, stepN:p7:rs-smooth, bpN:p7:setting, bpN:p5:setting, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:hamiltonian-real | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40 | X_{G^R}=X_G from reality at real points of an open set
EDGE: bpN:p3:ham-smooth | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40 | C^1 regularity of the field
EDGE: bpN:p3:ham-periodic | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40 | periodicity of the field
EDGE: stepN:p7:rs-smooth | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40 | (a): smoothness and periodicity of G^R
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40 | W_r, G^R
EDGE: bpN:p5:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40 | X_G=J∇G
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#stepN:p7:rs-field@L40-L40 | the consumer uses V_rD, D_{r,s} or a strip directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p7:theta-derivative
KIND: lemma
TITLE: Derivative bound at real points
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:theta-derivative@L44-L47
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:theta-derivative@L48-L51
CONTRACT_ID: bpN:p7:theta-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u in O(rho,s) with finite norm
SOURCE_QUANTIFIERS: u; theta in R^n; I in U_rho D
SOURCE_CONCLUSION: sum_j |∂_{theta_j}u(theta,I)|<=|u|_{rho,s}/(e s), in particular ‖∂_theta u(theta,I)‖_2<=|u|_{rho,s}/(es); also |u(x)|<=|u|_{rho,s} on D_{rho,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:td-loss, stepN:p7:td-lim, bpN:p4:norm, bpN:p7:setting, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:td-loss | blueprint-N/parts/p7-stability.tex#bpN:p7:theta-derivative@L49-L49 | proof step
EDGE: stepN:p7:td-lim | blueprint-N/parts/p7-stability.tex#bpN:p7:theta-derivative@L50-L50 | proof step
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#bpN:p7:theta-derivative@L45-L45 | class O(rho,s) and norm
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:theta-derivative@L45-L45 | U_rho D
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#bpN:p7:theta-derivative@L45-L45 | the consumer uses V_rD, D_{r,s} or a strip directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:td-loss
KIND: step
TITLE: Strip loss
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49
CONTRACT_ID: stepN:p7:td-loss
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u in O(rho,s) finite norm; 0<s'<s; fixed I
SOURCE_QUANTIFIERS: s'
SOURCE_CONCLUSION: sum_j |∂_{theta_j}u|_{I,s'}<=|u|_{I,s}/(e(s-s')) and |v(theta,I)|<=|v|_{I,s'} for theta in T_{s'}⊃R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b3-a, bpN:p4:cauchy, stepN:p4:b1-a, bpN:p4:sup-weighted, bpN:p4:norm, bpN:p4:domains, bpN:p7:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b3-a | blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49 | Cauchy estimate in the angle strip (Cauchy lemma (a))
EDGE: bpN:p4:cauchy | blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49 | Lemma cauchy(a) pointwise in I
EDGE: stepN:p4:b1-a | blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49 | pointwise bound by the weighted norm
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49 | sup bound by the weighted norm
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49 | the consumer uses O(r,s), Fourier coefficients or the weighted norm directly
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49 | the consumer uses V_rD, D_{r,s} or a strip directly
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:td-loss@L49-L49 | the consumer uses W_r, U_rD, real Hamiltonians/orbits, omega or Q directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:td-lim
KIND: step
TITLE: Limit
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50
CONTRACT_ID: stepN:p7:td-lim
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: td-loss for every s'<s
SOURCE_QUANTIFIERS: s'↓0
SOURCE_CONCLUSION: letting s'↓0 gives the bound at real theta; ‖v‖_2<=sum_j|v_j|; the last claim |u(x)|<=|u|_{rho,s} is sup-weighted(a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:td-loss, bpN:p1:norm-compare, bpN:p4:sup-weighted, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:td-loss | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | the bound for each s'
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | ‖v‖_2<=sum_j¦v_j¦
EDGE: bpN:p4:sup-weighted | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | ¦u(x)¦<=¦u¦_{rho,s}
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#stepN:p7:td-lim@L50-L50 | the consumer uses O(r,s), Fourier coefficients or the weighted norm directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:rg-coef
KIND: step
TITLE: Coefficients
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rg-coef@L58-L58
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rg-coef@L58-L58
CONTRACT_ID: stepN:p7:rg-coef
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g with P_Lambda g=g; u=Pi^perp ∂_theta g
SOURCE_QUANTIFIERS: k in Z^n
SOURCE_CONCLUSION: the components of u are finite combinations of ∂_{theta_j}g in O(r,s) with coefficients uhat_k=2πi Pi^perp k ghat_k=0: for k in Lambda Pi^perp k=0, for k not in Lambda ghat_k=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, bpN:p4:projections, bpN:p4:norm, bpN:p7:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p7-stability.tex#stepN:p7:rg-coef@L58-L58 | (b) Fourier coefficients of the derivatives
EDGE: bpN:p4:projections | blueprint-N/parts/p7-stability.tex#stepN:p7:rg-coef@L58-L58 | ghat_k=0 for k not in Lambda when g=P_Lambda g
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#stepN:p7:rg-coef@L58-L58 | the consumer uses O(r,s), Fourier coefficients or the weighted norm directly
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:rg-coef@L58-L58 | the consumer uses W_r, U_rD, real Hamiltonians/orbits, omega or Q directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:rg-zero
KIND: step
TITLE: Vanishing
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rg-zero@L59-L59
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:rg-zero@L59-L59
CONTRACT_ID: stepN:p7:rg-zero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: uhat_k=0 for all k (rg-coef)
SOURCE_QUANTIFIERS: s'<s
SOURCE_CONCLUSION: u has finite norm at width s' (Cauchy), so u=sum uhat_k chi_k=0 on D_{r,s'}, in particular at real points
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:cauchy, bpN:p4:coefficients, stepN:p7:rg-coef, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:cauchy | blueprint-N/parts/p7-stability.tex#stepN:p7:rg-zero@L59-L59 | (a): derivatives have finite norm at a smaller width
EDGE: bpN:p4:coefficients | blueprint-N/parts/p7-stability.tex#stepN:p7:rg-zero@L59-L59 | (d): coefficients determine the function
EDGE: stepN:p7:rg-coef | blueprint-N/parts/p7-stability.tex#stepN:p7:rg-zero@L59-L59 | vanishing coefficients
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#stepN:p7:rg-zero@L59-L59 | the consumer uses O(r,s), Fourier coefficients or the weighted norm directly
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#stepN:p7:rg-zero@L59-L59 | the consumer uses V_rD, D_{r,s} or a strip directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p7:conjugation
KIND: lemma
TITLE: Conjugation of orbits
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:conjugation@L64-L67
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:conjugation@L68-L71
CONTRACT_ID: bpN:p7:conjugation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H in O(r,s)^R; H~ in O(r~,s~)^R; Psi:D_{r~,s~}->D_{r,s} holomorphic, real at real points, (DPsi)^T J DPsi=J, H~=H∘Psi; z~ an H~-orbit in W_r~ on J
SOURCE_QUANTIFIERS: H; H~; Psi; z~; J
SOURCE_CONCLUSION: z=Psi∘z~ is an H-orbit in W_r on J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:cj-real, stepN:p7:cj-chain, bpN:p7:setting, bpN:p4:norm, bpN:p4:domains, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:cj-real | blueprint-N/parts/p7-stability.tex#bpN:p7:conjugation@L69-L69 | proof step
EDGE: stepN:p7:cj-chain | blueprint-N/parts/p7-stability.tex#bpN:p7:conjugation@L70-L70 | proof step
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:conjugation@L65-L65 | orbits, O(r,s)^R, W_r
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#bpN:p7:conjugation@L65-L65 | the consumer uses O(r,s), Fourier coefficients or the weighted norm directly
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#bpN:p7:conjugation@L65-L65 | the consumer uses V_rD, D_{r,s} or a strip directly
EDGE: bpN:p5:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:conjugation@L65-L65 | the consumer uses X_G or the symplectic matrix J directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:cj-real
KIND: step
TITLE: Real points
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:cj-real@L69-L69
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:cj-real@L69-L69
CONTRACT_ID: stepN:p7:cj-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi real at real points, symplectic
SOURCE_QUANTIFIERS: x in W_r~
SOURCE_CONCLUSION: Psi maps W_r~=D_{r~,s~}∩R^{2n} into W_r; the real derivative Y=DPsi(x) is the real restriction of the complex one and Y^T J Y=J; hence det Y=±1 and Y J Y^T=J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:sy-conserve, bpN:p7:setting, bpN:p4:domains, bpN:p5:setting, bpN:p1:ext-restrict
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:sy-conserve | blueprint-N/parts/p7-stability.tex#stepN:p7:cj-real@L69-L69 | Y^T J Y=J implies Y J Y^T=J and det Y=±1
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:cj-real@L69-L69 | W_r~, W_r
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#stepN:p7:cj-real@L69-L69 | the consumer uses V_rD, D_{r,s} or a strip directly
EDGE: bpN:p5:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:cj-real@L69-L69 | the consumer uses X_G or the symplectic matrix J directly
EDGE: bpN:p1:ext-restrict | blueprint-N/parts/p7-stability.tex#stepN:p7:cj-real@L69-L69 | restriction of scalars and the inclusion chain rule apply on the open action-angle domain
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p7:preimage
KIND: lemma
TITLE: Real preimages of a near-identity map
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L73-L76
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L77-L83
CONTRACT_ID: bpN:p7:preimage
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D subset R^n; r~,s~>0; Psi:D_{r~,s~}->C^{2n} holomorphic, real at real points; G=Psi-id with |G_theta|<=d_theta, |G_I|<=d_I on D_{r~,s~}; 0<rho'<=r~, 0<sigma'<=2s~ with kappa_*=max(d_theta/sigma',d_I/rho')<=1/4
SOURCE_QUANTIFIERS: D; r~; s~; Psi; d_theta; d_I; rho'; sigma'; y
SOURCE_CONCLUSION: for every y=(theta_y,I_y) in R^n×D there is x=(theta_x,I_x) in W_r~ with Psi(x)=y, |theta_x-theta_y|<=d_theta, |I_x-I_y|<=d_I
CONSTANT_SCOPE: none beyond the stated bounds
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:pi-set, stepN:p7:pi-self, stepN:p7:pi-contr, stepN:p7:pi-fix, bpN:p7:setting, bpN:p5:setting, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:pi-set | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L79-L79 | proof step
EDGE: stepN:p7:pi-self | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L80-L80 | proof step
EDGE: stepN:p7:pi-contr | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L81-L81 | proof step
EDGE: stepN:p7:pi-fix | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L82-L82 | proof step
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L74-L74 | W_r~, real points
EDGE: bpN:p5:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L78-L78 | scaled norm nu(a,b)=max(¦a¦/sigma',¦b¦/rho') of Definition p5:setting
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage@L74-L74 | the consumer uses V_rD, D_{r,s} or a strip directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p7:preimage-nfl
KIND: corollary
TITLE: Preimages for the Normal Form Lemma
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:preimage-nfl@L85-L87
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:preimage-nfl@L88-L90
CONTRACT_ID: bpN:p7:preimage-nfl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Theorem normal-form with Lambda=-Lambda, h,f real on real points, kappa>=6; D subset R^n
SOURCE_QUANTIFIERS: as in normal-form
SOURCE_CONCLUSION: every y in R^n×D equals Psi(x) for some x in W_{r/2} with |I_x-I_y|<=qK eps/alpha (<=r/2^7)
CONSTANT_SCOPE: as in normal-form
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:pn-apply, bpN:p6:normal-form, bpN:p7:setting, bpN:p6:setting, bpN:p6#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:pn-apply | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage-nfl@L89-L89 | proof step
EDGE: bpN:p6:normal-form | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage-nfl@L86-L86 | hypotheses and the map Psi of the Normal Form Lemma
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage-nfl@L86-L86 | W_{r/2}, real points
EDGE: bpN:p6:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage-nfl@L86-L86 | the consumer assumes/uses the Part-6 resonant setting or nonresonance
EDGE: bpN:p6#data | blueprint-N/parts/p7-stability.tex#bpN:p7:preimage-nfl@L86-L86 | the consumer uses q, kappa or Z_K directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p7:transfer
KIND: lemma
TITLE: Transfer of an a priori confinement through a symplectic map
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L92-L102
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L103-L108
CONTRACT_ID: bpN:p7:transfer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D subset R^n; H in O(r,s)^R; H~ in O(r~,s~)^R; Psi:D_{r~,s~}->D_{r,s} as in conjugation; |.|_* a norm on R^n with |.|<=|.|_*; (T1) |Pi_I Psi(x)-I_x|_*<=d_* for x in W_r~; (T2) every y in R^n×D equals Psi(x) for some x in W_r~; (T3) rho>0 with d_*+rho<r~ and T:D->(0,inf] such that for every I_y in D, interval J~∋0 and H~-orbit z~ in W_r~ on J~ with |I~(0)-I_y|_*<=d_*: |I~(t)-I~(0)|_*<=rho for t in J~, |t|<=T(I_y)
SOURCE_QUANTIFIERS: D; H; H~; Psi; |.|_*; d_*; rho; T; then J, z, I_y
SOURCE_CONCLUSION: for every interval J∋0 and every H-orbit z in W_r on J with I_y:=I(0) in D: |I(t)-I(0)|_*<=rho+2d_* for t in J, |t|<=T(I_y)
CONSTANT_SCOPE: d_*, rho, T are data of the hypotheses (T1)-(T3); T may depend on I_y
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:tr-orbit, stepN:p7:tr-long, stepN:p7:tr-ident, stepN:p7:tr-est, bpN:p7:conjugation, bpN:p7:setting, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:tr-orbit | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L104-L104 | proof step
EDGE: stepN:p7:tr-long | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L105-L105 | proof step
EDGE: stepN:p7:tr-ident | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L106-L106 | proof step
EDGE: stepN:p7:tr-est | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L107-L107 | proof step
EDGE: bpN:p7:conjugation | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L93-L93 | Psi, H, H~ as in Lemma conjugation
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L93-L93 | orbits, W_r, O(r,s)^R
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L93-L93 | the consumer uses O(r,s), Fourier coefficients or the weighted norm directly
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#bpN:p7:transfer@L93-L93 | the consumer uses V_rD, D_{r,s} or a strip directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: dropped candidate edge: p3:confinement-glue (\source: "so that Part 10 can connect it with existence": a forward pointer)
```

```text
NODE: stepN:p7:tr-ident
KIND: step
TITLE: Identification
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:tr-ident@L106-L106
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:tr-ident@L106-L106
CONTRACT_ID: stepN:p7:tr-ident
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: tr-orbit; Lemma conjugation
SOURCE_QUANTIFIERS: z=Psi∘z~ on J∩(T_-,T_+)
SOURCE_CONCLUSION: Psi∘z~ is an H-orbit in W_r on (T_-,T_+) with value y at 0, as is z on J; uniqueness gives z=Psi∘z~ on J∩(T_-,T_+)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:conjugation, bpN:p3:gen-uniqueness, bpN:p7:real-system, stepN:p7:tr-orbit, bpN:p7:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:conjugation | blueprint-N/parts/p7-stability.tex#stepN:p7:tr-ident@L106-L106 | Psi∘z~ is an H-orbit
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p7-stability.tex#stepN:p7:tr-ident@L106-L106 | uniqueness with F=X_{H^R}, W=W_r
EDGE: bpN:p7:real-system | blueprint-N/parts/p7-stability.tex#stepN:p7:tr-ident@L106-L106 | (d) applicability of uniqueness
EDGE: stepN:p7:tr-orbit | blueprint-N/parts/p7-stability.tex#stepN:p7:tr-ident@L106-L106 | the orbit z~
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:tr-ident@L106-L106 | the consumer uses W_r, U_rD, real Hamiltonians/orbits, omega or Q directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p7:stopped-extension
KIND: corollary
TITLE: Stopped form for any extension of the field
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:stopped-extension@L110-L112
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:stopped-extension@L113-L116
CONTRACT_ID: bpN:p7:stopped-extension
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H in O(r,s)^R; |.|_*>=|.| a norm; 0<rho<r; T in (0,inf]; every H-orbit in W_r on every interval J∋0 with I(0) in D satisfies |I(t)-I(0)|_*<=rho for t in J, |t|<=T; F:R^{2n}->R^{2n} any function with F=X_{H^R} on W_r; z:R->R^{2n}, J∋0 an interval with HasDerivAt z (F(z t)) t for all t in J (two-sided, endpoints included) and z(0) in R^n×D
SOURCE_QUANTIFIERS: H; |.|_*; rho; T; F; z; J
SOURCE_CONCLUSION: |I(t)-I(0)|_*<=rho for t in J, |t|<=T; in particular z(t) in W_r there
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:se-stop, stepN:p7:se-noexit, bpN:p7:setting, bpN:p4:norm, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:se-stop | blueprint-N/parts/p7-stability.tex#bpN:p7:stopped-extension@L114-L114 | proof step
EDGE: stepN:p7:se-noexit | blueprint-N/parts/p7-stability.tex#bpN:p7:stopped-extension@L115-L115 | proof step
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:stopped-extension@L111-L111 | orbits, W_r, U_r D
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#bpN:p7:stopped-extension@L111-L111 | the consumer uses O(r,s), Fourier coefficients or the weighted norm directly
EDGE: bpN:p5:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:stopped-extension@L111-L111 | the consumer uses X_G or the symplectic matrix J directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p7:nonresonant
KIND: proposition
TITLE: Nonresonant stability estimate
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L127-L138
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L139-L147
CONTRACT_ID: bpN:p7:nonresonant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; D subset R^n; r,s,K,alpha>0; L>=0; p>1, q=p/(p-1), kappa=2πKs; h holomorphic on V_rD, real on U_rD; f in O(r,s)^R, eps=|f|_{r,s}<infinity; H=h+f; (i) |k·omega(I)|>=alpha for I in D, k in Z^n with 0<|k|_1<=K; (ii) the Lipschitz bound (N2) for omega with constant L, and KLr<=alpha/p; (iii) eps<=alpha r/(2^7 q K); T_nr=s r e^{kappa/6}/(5 eps) (=infinity if eps=0)
SOURCE_QUANTIFIERS: n; D; r; s; K; alpha; L; p; h; f
SOURCE_CONCLUSION: for every interval J∋0 and every H-orbit z in W_r on J with I(0) in D: |I(t)-I(0)|<=r/2 (<=r) for t in J, |t|<=T_nr
CONSTANT_SCOPE: no convexity is used; the constants depend only on (r,s,K,alpha,p) and on eps
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:nr-dataA, stepN:p7:nr-t3, stepN:p7:nr-concA, stepN:p7:nr-caseB, bpN:p7:setting, bpN:p6:setting, bpN:p6#data, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:nr-dataA | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L141-L141 | proof step
EDGE: stepN:p7:nr-t3 | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L142-L142 | proof step
EDGE: stepN:p7:nr-concA | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L145-L145 | proof step
EDGE: stepN:p7:nr-caseB | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L146-L146 | proof step
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L128-L128 | U_rD, W_r, O(r,s)^R, orbits
EDGE: bpN:p6:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L131-L131 | condition (N2) (cond-L) and (N1) with Lambda={0} in (i)
EDGE: bpN:p6#data | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L128-L128 | p, q, kappa, Z_K, omega
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L128-L128 | class O(r,s) and norm ¦f¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#bpN:p7:nonresonant@L128-L128 | the consumer uses V_rD, D_{r,s} or a strip directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: dropped candidate edges: Remark p7:factor-e (remark), p6:nonresonant-case at statement level (\source only; consumed in nr-caseB)
```

```text
NODE: stepN:p7:nr-dataA
KIND: step
TITLE: Case A, $\kappa\ge6$: data
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141
CONTRACT_ID: stepN:p7:nr-dataA
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: kappa>=6; hypotheses (i)-(iii)
SOURCE_QUANTIFIERS: Lambda={0}; Psi
SOURCE_CONCLUSION: Theorem normal-form with Lambda={0} applies ((N1)=(i), (N2) and KLr<=alpha/p=(ii), eps<=alpha r/(2^7 qK)=(iii)); Psi:D_{r/2,s/6}->D_{r,s} holomorphic symplectic real at real points, H∘Psi=h+g+f_*, g theta-independent, f_* in O(r/2,s/6)^R with eta<=e^{-kappa/6}eps, |Pi_IPsi-I|<=d=qK eps/alpha<=r/2^7; data r~=r/2, s~=s/6, rho=15r/32, d_*=d, |.|_*=|.|, T=T_nr; (T1) displacement, (T2) Corollary preimage-nfl; d_*+rho<=61r/128<r~
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:normal-form, bpN:p6:setting, bpN:p7:preimage-nfl, bpN:p7:setting, bpN:p6#data, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:normal-form | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141 | Theorem applied with Lambda={0}
EDGE: bpN:p6:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141 | (N1) is (i), (N2) and KLr<=alpha/p are (ii)
EDGE: bpN:p7:preimage-nfl | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141 | (T2)
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141 | real points, f_* in O(r/2,s/6)^R
EDGE: bpN:p6#data | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141 | q, kappa
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141 | eta=¦f_*¦_{r/2,s/6}
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-dataA@L141-L141 | the consumer uses V_rD, D_{r,s} or a strip directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:nr-caseB
KIND: step
TITLE: Case B, $\kappa<6$
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146
CONTRACT_ID: stepN:p7:nr-caseB
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: kappa<6
SOURCE_QUANTIFIERS: Psi=id on D_{r,s}
SOURCE_CONCLUSION: with Psi=id, H~=H, g=0, f_*=f (nonresonant-case), r~=r, s~=s, d_*=0, rho=r/2: (T1),(T2) trivial; (T3) as in nr-t3 with |İ~|<=eps/(e s) and |I~(t*)-I~(0)|<=(eps/(es))·(s r e^{kappa/6}/(5eps))<r/5<r/2 (e^{kappa/6}<e): contradiction; transfer gives |I(t)-I(0)|<=r/2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:nonresonant-case, stepN:p7:nr-t3, bpN:p7:exit-ball, bpN:p7:theta-derivative, bpN:p7:real-system, K:bp:p1:ext-mvt, bpN:p7:ext-num, bpN:p7:transfer, bpN:p7:setting, bpN:p4:domains, bpN:p6#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:nonresonant-case | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | Psi=id, g=0, f_*=f
EDGE: stepN:p7:nr-t3 | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | (T3) argument
EDGE: bpN:p7:exit-ball | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | first exit time
EDGE: bpN:p7:theta-derivative | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | ¦∂_theta f¦<=eps/(es)
EDGE: bpN:p7:real-system | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | (b) İ~=-∂_theta f
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | mean value inequality
EDGE: bpN:p7:ext-num | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | numerics e^{kappa/6}<e
EDGE: bpN:p7:transfer | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | conclusion
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | orbits in W_r, U_r D
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | the consumer uses V_rD, D_{r,s} or a strip directly
EDGE: bpN:p6#data | blueprint-N/parts/p7-stability.tex#stepN:p7:nr-caseB@L146-L146 | the consumer uses q, kappa or Z_K directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:ec-taylor
KIND: step
TITLE: Taylor and combination
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ec-taylor@L175-L175
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ec-taylor@L175-L175
CONTRACT_ID: stepN:p7:ec-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ec-energy (a); phi(s)=h_R(I_s) C^2
SOURCE_QUANTIFIERS: Delta I
SOURCE_CONCLUSION: (c) is Taylor with phi'(0)=<omega_0,Delta I>, phi''=Q(I_s)[Delta I,Delta I]; under the hypothesis of (d), (c) gives (m/2)‖Delta I‖^2<=h_R(I(t_1))-h_R(I_0)-<omega_0,Delta I>; insert (a) and <omega_0,Delta I>=<Pi omega_0,Delta I>+<omega_0,Pi^perp Delta I> with Cauchy-Schwarz
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:ext-taylor, bpN:p7:ext-linalg, stepN:p7:ec-energy, bpN:p7:setting, bpN:p1:ext-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:ext-taylor | blueprint-N/parts/p7-stability.tex#stepN:p7:ec-taylor@L175-L175 | Lagrange remainder for phi(s)=h_R(I_s)
EDGE: bpN:p7:ext-linalg | blueprint-N/parts/p7-stability.tex#stepN:p7:ec-taylor@L175-L175 | <omega_0,Delta I> split via the orthogonal projection
EDGE: stepN:p7:ec-energy | blueprint-N/parts/p7-stability.tex#stepN:p7:ec-taylor@L175-L175 | (a) inserted into the Taylor expansion
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:ec-taylor@L175-L175 | the consumer uses W_r, U_rD, real Hamiltonians/orbits, omega or Q directly
EDGE: bpN:p1:ext-norms | blueprint-N/parts/p7-stability.tex#stepN:p7:ec-taylor@L175-L175 | Cauchy-Schwarz is used with the orthogonal splitting
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:ne-terms
KIND: step
TITLE: Three terms
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203
CONTRACT_ID: stepN:p7:ne-terms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ne-core; (i), (iii)
SOURCE_QUANTIFIERS: A, B, C
SOURCE_CONCLUSION: A<=2zeta<=mr^2/16; B<=(5/4)delta Delta<=5delta^2/(2m)+mDelta^2/6 with 5delta^2/(2m)<=5mr^2/32 (admissible (b), Young); C<=‖omega_0‖|t_1|eta/(e s)<=mr^2/(12e)<0.0307 mr^2 by (iii)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:ne-core, bpN:p7:theta-derivative, bpN:p7:admissible, bpN:p7:energy-core, bpN:p7:ext-num, bpN:p7:s-energy#rs, bpN:p4:norm, bpN:p7:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:ne-core | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203 | uses A, B, C and Delta from the preceding core step
EDGE: bpN:p7:theta-derivative | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203 | ¦u¦<=¦u¦_{r,s} for A and ‖∂_theta f_*‖_2<=eta/(es) for C
EDGE: bpN:p7:admissible | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203 | (b) ‖Pi omega_0‖<=5delta/4
EDGE: bpN:p7:energy-core | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203 | (b) ‖Pi^perp Delta I‖<=¦t_1¦ sup‖∂_theta f_*‖
EDGE: bpN:p7:ext-num | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203 | Young, e>2.7
EDGE: bpN:p7:s-energy#rs | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203 | zeta<=mr^2/32, delta<=mr/4
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203 | the consumer uses O(r,s), Fourier coefficients or the weighted norm directly
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:ne-terms@L203-L203 | the consumer uses W_r, U_rD, real Hamiltonians/orbits, omega or Q directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:l2-exit
KIND: step
TITLE: Exit
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-exit@L228-L228
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-exit@L228-L228
CONTRACT_ID: stepN:p7:l2-exit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (RS); violation of the claim
SOURCE_QUANTIFIERS: t*
SOURCE_CONCLUSION: a violation yields t*, |t*|<=T_* with (i) of no-exit; Delta=r-rho>=15r/16; I_s in B-bar and ‖omega(I_s)‖<=Omega
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:exit-ball, bpN:p7:admissible, bpN:p7:s-energy#rs, bpN:p7:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:exit-ball | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-exit@L228-L228 | first exit time with ¦.¦_*=‖.‖_2
EDGE: bpN:p7:admissible | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-exit@L228-L228 | B-bar⊂U_rD convex, so I_s in B-bar
EDGE: bpN:p7:s-energy#rs | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-exit@L228-L228 | rho<=r/16
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-exit@L228-L228 | the consumer uses W_r, U_rD, real Hamiltonians/orbits, omega or Q directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:l2-iii
KIND: step
TITLE: (iii)
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-iii@L229-L229
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-iii@L229-L229
CONTRACT_ID: stepN:p7:l2-iii
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: l2-exit
SOURCE_QUANTIFIERS: t*
SOURCE_CONCLUSION: ‖omega(I_0)‖<=Omega, so |t*|‖omega(I_0)‖eta<=|t*|Omega eta<=s m r^2/12: (iii) of no-exit
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:l2-exit, bpN:p7:s-energy#rs, bpN:p7:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:l2-exit | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-iii@L229-L229 | t*, ¦t*¦<=T_*
EDGE: bpN:p7:s-energy#rs | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-iii@L229-L229 | eta
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-iii@L229-L229 | the consumer uses W_r, U_rD, real Hamiltonians/orbits, omega or Q directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:l2-cone
KIND: step
TITLE: The cone condition along the segment
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L231
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L231
CONTRACT_ID: stepN:p7:l2-cone
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: l2-exit, l2-iii; (R)
SOURCE_QUANTIFIERS: s' in [0,1]
SOURCE_CONCLUSION: |<omega(I_{s'}),Delta I>|<=‖Pi omega(I_{s'})‖Delta+‖omega(I_{s'})‖‖Pi^perp Delta I‖<(0.3453·2l+l/4)Delta<0.941 l‖Delta I‖_2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:admissible, bpN:p7:energy-core, bpN:p7:theta-derivative, stepN:p7:l2-iii, stepN:p7:l2-exit, bpN:p7:ext-num, bpN:p7:s-energy#rs, bpN:p7:setting, bpN:p7:resonance-data, bpN:p7:ext-linalg, bpN:p1:ext-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:admissible | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | (b) ‖Pi omega(I_{s'})‖<=5delta/4+Mr
EDGE: bpN:p7:energy-core | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | (b) ‖Pi^perp Delta I‖<=¦t*¦ sup‖∂_theta f_*‖
EDGE: bpN:p7:theta-derivative | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | ‖∂_theta f_*‖<=eta/(es)
EDGE: stepN:p7:l2-iii | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | ¦t*¦Omega eta<=s m r^2/12
EDGE: stepN:p7:l2-exit | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | Delta, I_{s'}, t*
EDGE: bpN:p7:ext-num | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | 1/(12e) numerics
EDGE: bpN:p7:s-energy#rs | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | delta<=mr/4
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | the consumer uses W_r, U_rD, real Hamiltonians/orbits, omega or Q directly
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | the projection/resonance or quasi-convexity definition is used directly
EDGE: bpN:p7:ext-linalg | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | self-adjoint orthogonal splitting of the inner product
EDGE: bpN:p1:ext-norms | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-cone@L230-L230 | Cauchy-Schwarz is used with the orthogonal splitting
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:l2-conv
KIND: step
TITLE: Convexity along the segment
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-conv@L232-L232
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:l2-conv@L232-L232
CONTRACT_ID: stepN:p7:l2-conv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: l2-cone
SOURCE_QUANTIFIERS: s'
SOURCE_CONCLUSION: since |<omega(I_{s'}),Delta I>|<=l‖Delta I‖_2 the first alternative of quasi-convexity fails, so Q(I_{s'})[Delta I,Delta I]>=m‖Delta I‖^2: (ii) of no-exit holds and no-exit gives the contradiction
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:l2-cone, bpN:p7:resonance-data, bpN:p7:no-exit, stepN:p7:l2-exit, stepN:p7:l2-iii, bpN:p7:s-energy#rs, bpN:p7:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:l2-cone | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-conv@L232-L232 | cone condition along the segment
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-conv@L232-L232 | definition of l,m-quasi-convexity
EDGE: bpN:p7:no-exit | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-conv@L232-L232 | (i)-(iii) cannot hold together
EDGE: stepN:p7:l2-exit | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-conv@L232-L232 | (i) and the segment I_{s'}
EDGE: stepN:p7:l2-iii | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-conv@L232-L232 | (iii)
EDGE: bpN:p7:s-energy#rs | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-conv@L232-L232 | the no-exit application uses RS, its admissibility and rho
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:l2-conv@L232-L232 | the consumer uses W_r, U_rD, real Hamiltonians/orbits, omega or Q directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p7:resonant-prop2
KIND: proposition
TITLE: Resonant Stability Lemma
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L237-L252
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L253-L262
CONTRACT_ID: bpN:p7:resonant-prop2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; D subset R^n; r,s,K,alpha>0; 1<p<=3/2, q=p/(p-1)>=3, kappa=2πKs; Lambda subset Z^n a subgroup; 0<m<=M; l,delta>0; h holomorphic on V_rD and real on U_rD with ‖∂_I^2 h(I)‖_{2->2}<=M for all I in V_rD (complex Hessian), h l,m-quasi-convex on U_rD; f in O(r,s)^R with eps=|f|_{r,s}<infinity; H=h+f; (a) |k·omega(I)|>=alpha for I in D, k in Z_K\Lambda, and D delta-close to exact Lambda-resonances; (b) eps<=(p/q)(m r^2/2^7) and delta<=mr/8; (c) r<=min(alpha/(p sqrt(n) M K), 4l/m) and (added) Mr<=l/2
SOURCE_QUANTIFIERS: n; D; r; s; K; alpha; p; Lambda; m; M; l; delta; h; f; then I_0, J, z
SOURCE_CONCLUSION: for every interval J∋0 and every H-orbit z in W_r on J with I_0=I(0) in D: ‖I(t)-I_0‖_2<=r/2 (so |I(t)-I_0|<=r) for t in J, |t|<=T(I_0)=s m r^2 e^{kappa/6}/(288 Omega(I_0) eps), Omega(I_0)=max{‖omega(I)‖_2:‖I-I_0‖_2<=r/2} (=infinity if Omega eps=0); and for Lambda=Z^n this holds for all t in J
CONSTANT_SCOPE: Omega(I_0) is the maximum of the Euclidean frequency norm on the closed radius-r/2 ball about I_0; T(I_0)=s m r^2 exp(kappa/6)/(288 Omega(I_0) eps), with the stated infinity convention. The source states no additional uniform dependence claim.
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p7:p2-red, stepN:p7:p2-cases, stepN:p7:p2-t12, stepN:p7:p2-t3, stepN:p7:p2-concl, bpN:p7:setting, bpN:p7:resonance-data, bpN:p6#data, bpN:p4:norm, bpN:p6:setting, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p7:p2-red | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L254-L254 | proof step
EDGE: stepN:p7:p2-cases | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L255-L255 | proof step
EDGE: stepN:p7:p2-t12 | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L259-L259 | proof step
EDGE: stepN:p7:p2-t3 | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L260-L260 | proof step
EDGE: stepN:p7:p2-concl | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L261-L261 | proof step
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L238-L240 | U_rD, W_r, O(r,s)^R, orbits
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L238-L242 | delta-closeness, l,m-quasi-convexity, Hessian bound M
EDGE: bpN:p6#data | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L238-L238 | p, q, kappa, Z_K
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L240-L240 | class O(r,s) and norm
EDGE: bpN:p6:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L242-L242 | the consumer assumes/uses the Part-6 resonant setting or nonresonance
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#bpN:p7:resonant-prop2@L239-L239 | the complex Hessian is bounded on V_rD
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: dropped candidate edge: Remark p7:errata (administrative); the added hypothesis Mr<=l/2 is part of (c)
```

```text
NODE: stepN:p7:p2-red
KIND: step
TITLE: Reductions
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-red@L254-L254
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-red@L254-L254
CONTRACT_ID: stepN:p7:p2-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: statement of prop2; (a)-(c)
SOURCE_QUANTIFIERS: delta'=mr/8; L=sqrt(n)M
SOURCE_CONCLUSION: delta'=mr/8>=delta, rho'=mr/(32M); eps<=mr^2/2^8 (p/q<=1/2); L:=sqrt(n)M satisfies KLr<=alpha/p and eps<=alpha r/(2^7 qK); the complex Hessian bound gives (N2) with L=sqrt(n)M (|Qv|_inf<=‖Qv‖_2<=M‖v‖_2<=sqrt(n)M|v|_inf); r~=r/2 with M r~<=l/4, r~<=2l/m, delta'=m r~/4
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:setting, bpN:p6:lipschitz, bpN:p1:norm-compare, bpN:p7:resonance-data, bpN:p6#data, bpN:p7:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-red@L254-L254 | (N2) cond-L with L=sqrt(n)M and KLr<=alpha/p
EDGE: bpN:p6:lipschitz | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-red@L254-L254 | Hessian operator-norm bound gives (N2)
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-red@L254-L254 | ¦x¦_inf<=‖x‖_2<=sqrt(n)¦x¦_inf
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-red@L254-L254 | delta-closeness (monotone in delta), Hessian bound M
EDGE: bpN:p6#data | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-red@L254-L254 | p, q, K
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-red@L254-L254 | the consumer uses W_r, U_rD, real Hamiltonians/orbits, omega or Q directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:p2-cases
KIND: step
TITLE: Three cases
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L258
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L258
CONTRACT_ID: stepN:p7:p2-cases
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: p2-red; (a)-(c)
SOURCE_QUANTIFIERS: three cases
SOURCE_CONCLUSION: (A) Lambda≠Z^n, kappa>=6: normal-form gives Psi, H∘Psi=h+g+f_*, P_Lambda g=g, eta<=e^{-kappa/6}eps, |g|_{r/2,s/6}+eta<=(5/4)eps+eps/e<2eps=:zeta; (B) Lambda≠Z^n, kappa<6: Psi=id on D_{r/2,s}, g=0, f_*=f, zeta=eps; (C) Lambda=Z^n: Psi=id, g=f, f_*=0, eta=0, zeta=eps; in all cases H~=h+g+f_* is in (RS) with (r,s)->(r~,s~), delta'=m r~/4, zeta<=2eps<=m r~^2/32
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:normal-form, bpN:p6:setting, stepN:p7:p2-red, bpN:p7:s-energy#rs, bpN:p4:projections, bpN:p6#data, bpN:p4:norm, bpN:p7:ext-num, bpN:p7:setting, bpN:p4:domains, bpN:p4:norm#monotone
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:normal-form | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L255 | Theorem applied in case A (conditions (N1), (N2), K>0, (i), (ii); reality)
EDGE: bpN:p6:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L255 | (N1), (N2), KLr<=alpha/p
EDGE: stepN:p7:p2-red | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L255 | L=sqrt(n)M, eps<=alpha r/(2^7 qK), r~, delta'
EDGE: bpN:p7:s-energy#rs | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L258-L258 | H~ is in (RS) with the new data
EDGE: bpN:p4:projections | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L257 | case A uses ¦g_0¦<=eps for g_0=P_Lambda T_K f; case C uses P_Lambda f=f
EDGE: bpN:p6#data | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L255 | kappa, q, c=2qK/(alpha r)
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L255 | norm bound for g and f_*
EDGE: bpN:p7:ext-num | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L255 | e>2: 5/4+1/e<2
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L255 | the consumer uses W_r, U_rD, real Hamiltonians/orbits, omega or Q directly
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L255-L255 | the consumer uses V_rD, D_{r,s} or a strip directly
EDGE: bpN:p4:norm#monotone | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-cases@L256-L257 | the original f is restricted to the half-radius domain in cases B/C
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p7:p2-t3
KIND: step
TITLE: (T3)
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260
PROOF_SOURCE: blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260
CONTRACT_ID: stepN:p7:p2-t3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: p2-cases, p2-t12; Lemma 2 at radius r~
SOURCE_QUANTIFIERS: z~ H~-orbit in W_r~, ‖I~(0)-I_y‖_2<=d_*<rho', I_y in D
SOURCE_CONCLUSION: I~(0) is admissible; Lemma 2 (R) at radius r~ gives ‖I~(t)-I~(0)‖_2<=rho=r~-rho' for |t|<=T~_*=(s~ m r~^2)/(12 Omega~ eta); the rho-ball lies in {‖I-I_y‖<=r/2} so Omega~<=Omega(I_y); case A: T~_*>=T(I_y); case B: T~_*>=T(I_y) since e^{kappa/6}<e<6; case C: T~_*=infinity
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:resonant-lemma2, bpN:p7:s-energy#rs, stepN:p7:p2-red, stepN:p7:p2-cases, stepN:p7:p2-t12, bpN:p7:ext-num, bpN:p7:setting, bpN:p7:resonance-data, bpN:p6#data, bpN:p6:ext-numerics
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:resonant-lemma2 | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | stability in normal-form coordinates
EDGE: bpN:p7:s-energy#rs | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | admissibility of I~(0) in (RS)
EDGE: stepN:p7:p2-red | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | rho', r~, (R) at radius r~
EDGE: stepN:p7:p2-cases | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | H~, eta, s~ in the three cases
EDGE: stepN:p7:p2-t12 | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | d_*, rho
EDGE: bpN:p7:ext-num | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | e<6
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | the consumer uses W_r, U_rD, real Hamiltonians/orbits, omega or Q directly
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | the projection/resonance or quasi-convexity definition is used directly
EDGE: bpN:p6#data | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | the consumer uses q, kappa or Z_K directly
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p7-stability.tex#stepN:p7:p2-t3@L260-L260 | the upper bound e<6 follows from the listed e^2<8; Part-7 numerics only gives a lower bound for e
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p7:s-energy#rs
KIND: definition
TITLE: The resonant setting (RS)
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:s-energy#rs@L178-L179
PROOF_SOURCE: -
CONTRACT_ID: bpN:p7:s-energy#rs
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; D subset R^n; r,s>0; Lambda subset Z^n; h holomorphic on V_rD and real on U_rD; 0<m<=M with ‖Q(I)‖_{2->2}<=M on U_rD; g,f_* in O(r,s)^R of finite norm with P_Lambda g=g; zeta>=|g|_{r,s}+|f_*|_{r,s}; eta=|f_*|_{r,s}; H=h+g+f_*; delta>0 with D delta-close to exact Lambda-resonances, delta<=mr/4, zeta<=mr^2/32; rho:=delta/(4M) (<=r/16)
SOURCE_QUANTIFIERS: n; D; r; s; Lambda; h; m; M; g; f_*; zeta; eta; delta
SOURCE_CONCLUSION: defines the resonant setting (RS) and rho=delta/(4M)<=r/16; an initial action I_0 is admissible if ‖I_0-J_0‖_2<rho for some J_0 in D
CONSTANT_SCOPE: m<=M, delta, zeta are data of (RS); rho is determined by (delta,M)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:setting, bpN:p7:resonance-data, bpN:p4:norm, bpN:p4:projections, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:s-energy#rs@L178-L178 | U_rD, W_r, O(r,s)^R, h_R, omega, Q
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p7-stability.tex#bpN:p7:s-energy#rs@L178-L178 | delta-closeness to exact Lambda-resonances, Hessian bound M
EDGE: bpN:p4:norm | blueprint-N/parts/p7-stability.tex#bpN:p7:s-energy#rs@L178-L178 | norms ¦g¦_{r,s}, ¦f_*¦_{r,s}
EDGE: bpN:p4:projections | blueprint-N/parts/p7-stability.tex#bpN:p7:s-energy#rs@L178-L178 | P_Lambda g=g
EDGE: bpN:p4:domains | blueprint-N/parts/p7-stability.tex#bpN:p7:s-energy#rs@L178-L178 | the consumer uses V_rD, D_{r,s} or a strip directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section-data node for coverage item p7:prose-L178-L179 (SPEC): a package for Lemmas admissible, no-exit and Lemma 2
```

```text
NODE: bpN:p7:resonance-data
KIND: definition
TITLE: Resonance data, convexity, quasi-convexity
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:resonance-data@L155-L159
PROOF_SOURCE: -
CONTRACT_ID: bpN:p7:resonance-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D subset R^n; Lambda subset Z^n; Pi=Pi_Lambda; R_Lambda={omega in R^n: k·omega=0 for all k in Lambda}=ker Pi; h as in the setting; U subset U_r D; M>=m with ‖Q(I)‖_{2->2}<=M on U_r D
SOURCE_QUANTIFIERS: D; Lambda; delta; h; U; m; l; M
SOURCE_CONCLUSION: defines: D is delta-close to exact Lambda-resonances if ‖Pi omega(I)‖_2=dist_2(omega(I),R_Lambda)<=delta for all I in D; h is m-convex on U if Q(I)[xi,xi]>=m‖xi‖_2^2 (I in U, xi in R^n); h is l,m-quasi-convex on U if for all I in U, xi: |<omega(I),xi>|>l‖xi‖_2 or Q(I)[xi,xi]>=m‖xi‖_2^2 (equivalently |<omega,xi>|<=l‖xi‖_2 => Q[xi,xi]>=m‖xi‖_2^2; never full positive definiteness); M>=m denotes a Hessian bound (always achievable by enlarging M)
CONSTANT_SCOPE: m<=M, l, delta positive reals as data of the use
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:resonant-gradient, bpN:p7:setting, bpN:p7:ext-linalg
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:resonant-gradient | blueprint-N/parts/p7-stability.tex#bpN:p7:resonance-data@L156-L156 | Pi=Pi_Lambda notation of Lemma resonant-gradient
EDGE: bpN:p7:setting | blueprint-N/parts/p7-stability.tex#bpN:p7:resonance-data@L157-L157 | h_R, omega, Q, U_r D
EDGE: bpN:p7:ext-linalg | blueprint-N/parts/p7-stability.tex#bpN:p7:resonance-data@L156-L156 | norm of the orthogonal projection equals distance to its kernel
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: package for the energy argument (SPEC: bpN:p7:resonance-data)
```

```text
NODE: bpN:p7:ext-num
KIND: external
TITLE: Numerics
STATEMENT_SOURCE: blueprint-N/parts/p7-stability.tex#bpN:p7:ext-num@L19-L19
PROOF_SOURCE: -
CONTRACT_ID: bpN:p7:ext-num
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none
SOURCE_QUANTIFIERS: a,b real and c>0 for Young; x>=0 for x exp(-x)<=exp(-1); the displayed numerical constants are fixed
SOURCE_CONCLUSION: e>2.7, so 1/(12e)<0.0307, 6/(5e)<0.442, 15e/192>1/5; Young: ab<=a^2/(2c)+c b^2/2 (c>0); x e^{-x}<=e^{-1} for x>=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: external (E3) of Part 7 (numerics)
```

```text
ITEM: p7:prose-L21-L22
KIND: proof-region
SOURCE: blueprint-N/parts/p7-stability.tex#prose@L21-L22
DISPOSITION: EXCLUDED
REASON: pointer list, not an input package; actual uses are linked at consumers. The real-derivative assertion at cj-real is covered by bpN:p1:ext-restrict; K:bp:p1:real-restriction has a full-strip domain and its citation at L69 is inapplicable as stated. The parenthetical qc-convert at L157 is a comparison of alternative formulations, not an instantiation of that conditional conversion theorem. Other listed results remain linked at their direct uses.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p7
REVIEWER: -
```

## Suspected blueprint defects

- Part 7 L69 cites K's real-restriction lemma, whose source statement (K Part 1 L1047-L1051) assumes a map on a full strip T_rho. Psi here is on D_{r~,s~}. The citation does not meet that domain premise. The required derivative-restriction fact is already an allowed external (N Part 1 L24-L26); the replacement records that fact without strengthening the K import.
- Part 7 L157 cites the conditional qc-convert(b) while defining quasi-convexity for arbitrary h. Its analytic/QC/frequency-lower-bound premises have not been supplied. The displayed equivalence is merely the logical alternative form of this definition. The replacement removes the conditional-application edge and retains the definition.
- Part 7 L255: “|g| + eta <= 5 eps/4 + eps/e < 2 eps”. The strict inequality fails when eps=0, which the proposition allows (it explicitly assigns infinite time in this case). This is faithfully transcribed in p2-cases; no stronger premise or silent correction is introduced. The non-strict bound needed for RS is a different assertion.
- Part 7 L260 writes equality of the case-B time with a denominator Omega although the actual denominator is tilde-Omega; the preceding line supplies only tilde-Omega <= Omega. Thus the comparison is justified as a lower bound, not the printed equality. The packet correctly records the needed time comparison.
- The Pos93 allegations and repairs listed at L266-L274 were read as blueprint provenance. No new claim about the pinned paper is made without inspecting its PDF.

## Checks and limits

Only the two requested review files were written. No state-changing git command, Lean command, build, provider inspection or manifest-state inspection was run. Source labels, statement/proof spans, package uses, conditional premises and ownership exclusions were checked against the raw blueprint. The review-application script is used with --dry-run only to check that every FAIL has a complete replacement. No claim of theorem closure or axioms is made by this topology review.

Validation command: `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_apply_review.py docs/graph/N/packets N-p7 docs/graph/N/reviews/N-p7-review.md sol-review-N-d --dry-run`.

Parser receipt: `N-p7: 31 replaced, 0 added, 1 coverage items, 0 unresolved FAILs, 32 PASS nodes`.
