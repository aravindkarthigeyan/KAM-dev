# N-p4: independent topology review

Reviewer: `sol-review-N-b`  
Marker: `rev-N-b`  
**Verdict: FAIL**

Reviewed every node and coverage item against the entire assigned source file. PASS below means the source record and local topology pass this slice review; it makes no claim about Lean proofs or global root closure. Replacement records remain PROPOSED for independent delta review.

## Findings

Missing direct domain/setting edges violate SPEC’s package rule. Some proof-step hypotheses contain the result being established or an invoked theorem instead of the enclosing source premises. The ext-weier proof range also omits L177. Domain proof steps use the displayed definitions locally; adding a back edge to the domains node would create a cycle.

## Node inventory

| Node ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| `bpN:p4:ext-param` | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-param@L23-L25; - | Source statement, direct uses and local premise discharge match. |
| `bpN:p4:ext-weier` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-weier@L26-L27; blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-weier@L26-L27 | PROOF_SOURCE omits the derivative argument at L177 required by SPEC. |
| `bpN:p4:ext-series` | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-series@L28-L29; - | Source statement, direct uses and local premise discharge match. |
| `bpN:p4:domains` | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L34-L39; blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L40-L45 | Source statement, direct uses and local premise discharge match. |
| `stepN:p4:dom-open` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-open@L41-L41; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-open@L41-L41 | Missing direct edge to bpN:p0:strip#complexStrip. Source hypotheses omit enclosing premises or assume an ingredient established in the proof; retain source premises and typing data only. |
| `stepN:p4:dom-poly` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-poly@L43-L44; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-poly@L43-L44 | Missing direct edge to bpN:p0:strip#complexStrip. |
| `bpN:p4:norm` | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm@L47-L54; - | Source statement, direct uses and local premise discharge match. |
| `bpN:p4:norm#monotone` | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm#monotone@L55-L55; blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm#monotone@L55-L55 | Source statement, direct uses and local premise discharge match. |
| `bpN:p4:coefficients` | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L57-L67; blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L68-L81 | Source statement, direct uses and local premise discharge match. |
| `stepN:p4:co-holo` | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-holo@L69-L70; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-holo@L69-L70 | Source statement, direct uses and local premise discharge match. |
| `stepN:p4:co-deriv` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L73; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L73 | Missing direct edge to bpN:p4:domains. |
| `stepN:p4:co-series` | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L75-L77; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L75-L77 | Source statement, direct uses and local premise discharge match. |
| `stepN:p4:co-repr` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L80; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L80 | Missing direct edge to bpN:p4:domains. Source hypotheses omit enclosing premises or assume an ingredient established in the proof; retain source premises and typing data only. |
| `bpN:p4:sup-weighted` | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L85-L93; blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L94-L101 | Source statement, direct uses and local premise discharge match. |
| `stepN:p4:b1-a` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L96; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L96 | Source hypotheses omit enclosing premises or assume an ingredient established in the proof; retain source premises and typing data only. |
| `stepN:p4:b1-b` | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L100; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L100 | Source statement, direct uses and local premise discharge match. |
| `bpN:p4:algebra` | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L105-L109; blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L110-L118 | Source statement, direct uses and local premise discharge match. |
| `stepN:p4:b2-class` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-class@L111-L111; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-class@L111-L111 | Missing direct edge to bpN:p4:domains. |
| `stepN:p4:b2-coeff` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L114; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L114 | Missing direct edge to bpN:p4:domains. Source hypotheses omit enclosing premises or assume an ingredient established in the proof; retain source premises and typing data only. |
| `stepN:p4:b2-norm` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117 | Missing direct edge to bpN:p4:domains. Source hypotheses omit enclosing premises or assume an ingredient established in the proof; retain source premises and typing data only. |
| `bpN:p4:cauchy` | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L122-L130; blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L131-L140 | Source statement, direct uses and local premise discharge match. |
| `stepN:p4:b3-a` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133 | Missing direct edge to bpN:p4:domains. |
| `stepN:p4:b3-b` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L135-L139; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L135-L139 | Source hypotheses omit enclosing premises or assume an ingredient established in the proof; retain source premises and typing data only. |
| `bpN:p4:s-b4#data` | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:s-b4#data@L144-L144; - | Source statement, direct uses and local premise discharge match. |
| `bpN:p4:bracket` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L146-L150; blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L151-L164 | Missing direct edge to bpN:p5:setting. |
| `stepN:p4:b4-four` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L157; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L157 | Missing direct edge to bpN:p4:domains. Missing direct edge to bpN:p5:setting. EDGE locator for bpN:p4:s-b4#data misses its use. Source hypotheses omit enclosing premises or assume an ingredient established in the proof; retain source premises and typing data only. |
| `stepN:p4:b4-prod` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L163; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L163 | Missing direct edge to bpN:p5:setting. Source hypotheses omit enclosing premises or assume an ingredient established in the proof; retain source premises and typing data only. |
| `bpN:p4:general-cauchy` | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:general-cauchy@L168-L171; blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:general-cauchy@L172-L176 | Source statement, direct uses and local premise discharge match. |
| `stepN:p4:c1-line` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-line@L173-L173; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-line@L173-L173 | Source hypotheses omit enclosing premises or assume an ingredient established in the proof; retain source premises and typing data only. |
| `stepN:p4:c1-cauchy` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-cauchy@L175-L175; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-cauchy@L175-L175 | Source hypotheses omit enclosing premises or assume an ingredient established in the proof; retain source premises and typing data only. |
| `bpN:p4:projections` | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L181-L187; blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L188-L192 | Source statement, direct uses and local premise discharge match. |
| `stepN:p4:pr-class` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189 | Missing direct edge to bpN:p4:domains. Source hypotheses omit enclosing premises or assume an ingredient established in the proof; retain source premises and typing data only. Projection definitions must be attached locally without a parent/child cycle. |
| `stepN:p4:pr-tail` | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191; blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191 | Missing direct edge to bpN:p4:domains. Source hypotheses omit enclosing premises or assume an ingredient established in the proof; retain source premises and typing data only. Projection definitions must be attached locally without a parent/child cycle. |

## Coverage

No failing coverage dispositions were found.

All other coverage items PASS. The ♯-norm results are outside track-N root closure: searches over Parts 0–3 and 6–11 find no mathematical consumer. The dictionary and route references are comparisons/provenance; Part 6 L16 explicitly redoes the arithmetic without either dictionary. The prose at p5 L27 and L106 is re-established at its actual uses, so its exclusions do not hide an assumed leaf.

## Replacement fragments

Each fenced block is a full replacement database record. The writer should apply these only to the assigned packet; new bridge nodes require independent delta review.

```text
NODE: stepN:p4:dom-open
KIND: step
TITLE: Openness and monotonicity
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-open@L41-L41
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-open@L41-L41
CONTRACT_ID: stepN:p4:dom-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m,n ≥ 0; D ⊂ ℂ^m; r,s > 0; 0 < r′ ≤ r and 0 < s′ ≤ s; V_rD and 𝒟_{r,s} are the displayed definitions at L35–36 (expanded locally to avoid a definition/proof cycle)
SOURCE_QUANTIFIERS: m,n≥0; D; r,s>0; then positive r′≤r, s′≤s; for dom-poly, z∈𝒟_{r′,s′} and a point of its closed polydisc
SOURCE_CONCLUSION: V_rD and 𝒟_{r,s} are open; 𝒟_{r',s'} ⊂ 𝒟_{r,s} (monotonicity, 'clear')
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:strip#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:strip#complexStrip | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-open@L41-L41 | T_s is the max-norm complex strip, used in the domain proof
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p4:dom-poly
KIND: step
TITLE: Polydisc
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-poly@L43-L44
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-poly@L43-L44
CONTRACT_ID: stepN:p4:dom-poly
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ¦θ'−θ¦_∞ ≤ s−s', ¦I'−I¦_∞ ≤ r−r'; z = (θ,I) ∈ 𝒟_{r',s'}
SOURCE_QUANTIFIERS: m,n≥0; D; r,s>0; then positive r′≤r, s′≤s; for dom-poly, z∈𝒟_{r′,s′} and a point of its closed polydisc
SOURCE_CONCLUSION: ¦Im θ'_j¦ ≤ ¦Im θ_j¦ + s − s' < s and ¦I'−I_0¦ < r, hence P̄(z;s−s',r−r') ⊂ 𝒟_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:strip#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:strip#complexStrip | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-poly@L43-L43 | T_s is the max-norm complex strip, used in the domain proof
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p4:ext-weier
KIND: claim
TITLE: Uniform limits
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-weier@L26-L27
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-weier@L26-L177
CONTRACT_ID: bpN:p4:ext-weier
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_j holomorphic on an open U ⊂ ℂ^q (j ∈ ℕ); K_j → K uniformly on U
SOURCE_QUANTIFIERS: q; U; (K_j)_j; K; η > 0
SOURCE_CONCLUSION: K is holomorphic on U, and DK_j → DK uniformly on {z : P̄(z,η) ⊂ U} for each η > 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:general-cauchy, K:bp:p1:uniform-limits
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:general-cauchy | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-weier@L26-L27 | derivative part: Lemma general-cauchy applied to K_j−K_l (text: 'the derivatives by Lemma general-cauchy'; also L177)
EDGE: K:bp:p1:uniform-limits | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-weier@L27-L27 | holomorphy of the uniform limit
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Modelled as a claim, not a pure external, per SPEC ruling: 'Exists in this form modulo that lemma' (L27) and L177 'This also gives ext-weier's derivative statement: apply it to K_j−K_l on the ball of radius η' (coverage item p4:prose-L177 is mapped here); PROOF_SOURCE spans the inline proof at L26–27 and the derivative argument at L177; the intervening results are not additional proof ingredients
```

```text
NODE: stepN:p4:co-deriv
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L73
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L73
CONTRACT_ID: stepN:p4:co-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s); u(θ+e_j,I) = u(θ,I)
SOURCE_QUANTIFIERS: D,m,n; positive widths; the function(s) with the SOURCE_HYPOTHESES; then local data in source order: u; i, j
SOURCE_CONCLUSION: ∂_{θ_j}u, ∂_{I_i}u ∈ 𝒪(r,s) (holomorphic, periodic); (∂_{θ_j}u)^_k = 2πik_j û_k; (∂_{I_i}u)^_k = ∂_{I_i}û_k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:holomorphic-regularity, K:bp:p1:fourier-basic, bpN:p4:ext-param, stepN:p4:co-holo, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L72 | derivatives of holomorphic u are holomorphic
EDGE: K:bp:p1:fourier-basic | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L72 | derivative formula (a) at fixed I
EDGE: bpN:p4:ext-param | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L73-L73 | derivative formula for I_i
EDGE: stepN:p4:co-holo | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L73-L73 | 'as in Step co-holo': hypotheses of the parameter integral
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L72 | 𝒪(r,s), û_k
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L72 | Uses the action neighbourhood or the domain of the function class directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p4:co-repr
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L80
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L80
CONTRACT_ID: stepN:p4:co-repr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s) with finite norm; I ∈ V_rD
SOURCE_QUANTIFIERS: D,m,n; positive widths; the function(s) with the SOURCE_HYPOTHESES; then local data in source order: u; I
SOURCE_CONCLUSION: ¦û_k(I)¦e^{2π¦k¦₁s} ≤ ¦u¦_{r,s}; u(·,I) = Σ_k û_k(I)χ_k on T_s
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:summation, K:bp:p1:fourier-basic, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:summation | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L79 | Σ û_k(I)χ_k holomorphic periodic with these coefficients
EDGE: K:bp:p1:fourier-basic | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L80-L80 | (c): holomorphic periodic function with all coefficients zero vanishes
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L79 | single term of ¦u¦_{I,s} ≤ ¦u¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L79 | Uses the action neighbourhood or the domain of the function class directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p4:b2-class
KIND: step
TITLE: Product is in the class
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-class@L111-L111
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-class@L111-L111
CONTRACT_ID: stepN:p4:b2-class
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u, v holomorphic and 1-periodic on 𝒟_{r,s}
SOURCE_QUANTIFIERS: D,m,n; positive widths; the function(s) with the SOURCE_HYPOTHESES; then local data in source order: u, v
SOURCE_CONCLUSION: uv is holomorphic and 1-periodic on 𝒟_{r,s}, i.e. uv ∈ 𝒪(r,s)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-class@L111-L111 | membership in the class 𝒪(r,s)
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-class@L111-L111 | Uses the action neighbourhood or the domain of the function class directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p4:b2-coeff
KIND: step
TITLE: Coefficients
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L114
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L114
CONTRACT_ID: stepN:p4:b2-coeff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u,v ∈ 𝒪(r,s) scalar with finite norms; I ∈ V_rD; x ∈ ℝⁿ
SOURCE_QUANTIFIERS: D,m,n; positive widths; the function(s) with the SOURCE_HYPOTHESES; then local data in source order: I; x ∈ ℝⁿ; k
SOURCE_CONCLUSION: u(x,I)v(x,I) = Σ_k c_kχ_k(x) with c_k = Σ_l û_{k−l}v̂_l, Σ_k ¦c_k¦ ≤ ¦u¦_{I,0}¦v¦_{I,0} < ∞, uniform in x, and (uv)^_k(I) = c_k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, bpN:p4:ext-series, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L113 | (d): u(x,I) = Σ û_kχ_k(x), absolutely convergent
EDGE: bpN:p4:ext-series | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L114 | Cauchy product of absolutely convergent series; termwise integration
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L114-L114 | ¦u¦_{I,0}, û_k(I)
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L113 | Uses the action neighbourhood or the domain of the function class directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p4:b2-norm
KIND: step
TITLE: Norm
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117
CONTRACT_ID: stepN:p4:b2-norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u,v ∈ 𝒪(r,s) scalar with finite norms; I ∈ V_rD; c_k denotes Σ_l û_{k−l}v̂_l (its identification as the product coefficient is proved by the dependency)
SOURCE_QUANTIFIERS: D,m,n; positive widths; the function(s) with the SOURCE_HYPOTHESES; then local data in source order: I; s
SOURCE_CONCLUSION: ¦uv¦_{I,s} ≤ ¦u¦_{I,s}¦v¦_{I,s} (Tonelli with (k,l) ↦ (k−l,l)); sup over I; induction gives ¦u^j¦_{r,s} ≤ ¦u¦_{r,s}^j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b2-coeff, bpN:p4:ext-series, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b2-coeff | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117 | the coefficient formula (uv)^_k = c_k
EDGE: bpN:p4:ext-series | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L117-L117 | Tonelli for nonnegative double series
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117 | ¦·¦_{I,s}, ¦·¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L117-L117 | Uses the action neighbourhood or the domain of the function class directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p4:b3-a
KIND: step
TITLE: (a): coefficients
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133
CONTRACT_ID: stepN:p4:b3-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: I ∈ V_{r_0}D; u ∈ 𝒪(r_0,s_0) finite norm
SOURCE_QUANTIFIERS: D,m,n; r₀,s₀; u; r,s with 0<r<r₀, 0<s<s₀; then I and coordinate indices
SOURCE_CONCLUSION: Σ_j ¦∂_{θ_j}u¦_{I,s} = Σ_k 2π¦k¦₁ e^{−2π¦k¦₁(s_0−s)} ¦û_k¦e^{2π¦k¦₁s_0} ≤ ¦u¦_{I,s_0}/(e(s_0−s)); global consequences by sup over I and ¦u¦_{I,s_0} ≤ ¦u¦_{r_0,s_0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, K:bp:p1:exp-sums, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L132 | (b): (∂_{θ_j}u)^_k = 2πik_jû_k
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L133-L133 | (a) with τ = 1, a = 2π(s_0−s): x e^{−ax} ≤ 1/(ea)
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133 | ¦·¦_{I,s}, ¦·¦_{r_0,s_0}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L132 | Uses the action neighbourhood or the domain of the function class directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p4:b4-four
KIND: step
TITLE: Pointwise product estimate
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L157
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L157
CONTRACT_ID: stepN:p4:b4-four
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m=n; u ∈ 𝒪(r₀,s₀), v ∈ 𝒪(r,s), both of finite norm; 0<ρ<r, 0<σ<s, r−ρ<r₀, s−σ<s₀; I ∈ V_{r−ρ}D; t := s−σ
SOURCE_QUANTIFIERS: D,n; r₀,s₀,r,s; u,v; ρ,σ subject to the bracket hypotheses; then I∈V_{r−ρ}D; t:=s−σ
SOURCE_CONCLUSION: ¦{u,v}¦_{I,t} ≤ (Σ_i ¦∂_{θ_i}u¦_{I,t}) max_i ¦∂_{I_i}v¦_{I,t} + max_i ¦∂_{I_i}u¦_{I,t} (Σ_i ¦∂_{θ_i}v¦_{I,t}), angular sums kept pointwise in I
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:algebra, bpN:p4:s-b4#data, bpN:p4:norm, bpN:p4:domains, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:algebra | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L154 | pointwise-in-I product estimate ¦uv¦_{I,t} ≤ ¦u¦_{I,t}¦v¦_{I,t}
EDGE: bpN:p4:s-b4#data | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L154 | The bracket in the pointwise product estimate is the two-sum bracket defined at L144
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L154 | ¦·¦_{I,t}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L154 | Uses the action neighbourhood or the domain of the function class directly
EDGE: bpN:p5:setting | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L154 | Uses the Hamiltonian Poisson bracket fixed in Part 5; SPEC requires its package edge
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p4:pr-class
KIND: step
TITLE: Class and coefficients
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189
CONTRACT_ID: stepN:p4:pr-class
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s) with finite norm; S ⊂ ℤⁿ; a_k := û_k 1_S(k) (holomorphy and the summability bound are established here, not assumed)
SOURCE_QUANTIFIERS: D,m,n; r,s>0; u; S⊂ℤⁿ; K≥0; 0<σ<s; then I and k
SOURCE_CONCLUSION: P_Su ∈ 𝒪(r,s) with coefficients û_k1_S(k) and ¦P_Su¦_{r,s} ≤ ¦u¦_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189 | (a) holomorphy of a_k and (c) series lemma
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189 | ¦·¦_{r,s}, 𝒪(r,s)
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189 | Uses the action neighbourhood or the domain of the function class directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: P_Su := Σ_{k∈S} û_kχ_k; T_K := P_{¦k¦₁≤K}. These are local definitions from L182–184; no edge to the parent projections lemma (which depends on this step).
```

```text
NODE: stepN:p4:pr-tail
KIND: step
TITLE: Tail
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191
CONTRACT_ID: stepN:p4:pr-tail
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s) with finite norm; K≥0; 0<σ<s; for the coefficient estimate fix k with ¦k¦₁>K
SOURCE_QUANTIFIERS: D,m,n; r,s>0; u; S⊂ℤⁿ; K≥0; 0<σ<s; then I and k
SOURCE_CONCLUSION: e^{2π¦k¦₁(s−σ)} ≤ e^{−2πKσ}e^{2π¦k¦₁s} for ¦k¦₁ > K, so ¦u−T_Ku¦_{r,s−σ} ≤ e^{−2πKσ}¦u¦_{r,s}; and u − T_Ku = P_{¦k¦₁>K}u from u = Σû_kχ_k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191 | (d): u = Σ_k û_kχ_k
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191 | ¦·¦_{r,s−σ} as sup of the weighted sum
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191 | Uses the action neighbourhood or the domain of the function class directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: P_Su := Σ_{k∈S} û_kχ_k; T_K := P_{¦k¦₁≤K}. These are local definitions from L182–184; no edge to the parent projections lemma (which depends on this step).
```

```text
NODE: bpN:p4:bracket
KIND: lemma
TITLE: B.4
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L146-L150
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L151-L164
CONTRACT_ID: bpN:p4:bracket
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m = n; u ∈ 𝒪(r_0,s_0), v ∈ 𝒪(r,s) with finite norms; 0<ρ<r, 0<σ<s, r−ρ<r_0, s−σ<s_0; {u,v} the bracket of s-b4#data
SOURCE_QUANTIFIERS: D, n; r_0, s_0, r, s; u, v; ρ, σ
SOURCE_CONCLUSION: {u,v} ∈ 𝒪(r−ρ,s−σ) and ¦{u,v}¦_{r−ρ,s−σ} ≤ (1/e)(1/((r_0−r+ρ)σ) + 1/((s_0−s+σ)ρ)) ¦u¦_{r_0,s_0}¦v¦_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b4-four, stepN:p4:b4-prod, bpN:p4:s-b4#data, bpN:p4:norm, bpN:p4:domains, bpN:p4:norm#monotone, bpN:p4:coefficients, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b4-four | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L154-L157 | proof step: pointwise product estimate
EDGE: stepN:p4:b4-prod | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L159-L163 | proof step: the four derivative bounds
EDGE: bpN:p4:s-b4#data | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L146-L147 | the bracket {u,v} of the statement
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L147-L148 | 𝒪, ¦·¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L152-L152 | 𝒟_{r−ρ,s−σ} ⊂ 𝒟_{r_0,s_0} ∩ 𝒟_{r,s}
EDGE: bpN:p4:norm#monotone | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L152-L152 | restriction of the terms to 𝒟_{r−ρ,s−σ} (monotonicity)
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L152-L152 | {u,v} ∈ 𝒪(r−ρ,s−σ): derivatives of 𝒪-functions are in the class (b) and products by algebra
EDGE: bpN:p5:setting | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L147-L147 | Uses the Hamiltonian Poisson bracket fixed in Part 5; SPEC requires its package edge
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p4:b4-prod
KIND: step
TITLE: Four derivative bounds
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L163
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L163
CONTRACT_ID: stepN:p4:b4-prod
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m=n; u ∈ 𝒪(r₀,s₀), v ∈ 𝒪(r,s), both of finite norm; 0<ρ<r, 0<σ<s, r−ρ<r₀, s−σ<s₀; I ∈ V_{r−ρ}D; t := s−σ
SOURCE_QUANTIFIERS: D,n; r₀,s₀,r,s; u,v; ρ,σ subject to the bracket hypotheses; then I∈V_{r−ρ}D; t:=s−σ
SOURCE_CONCLUSION: Σ_i¦∂_{θ_i}u¦_{I,t} ≤ ¦u¦_{r_0,s_0}/(e(s_0−s+σ)); max_i¦∂_{I_i}u¦_{I,t} ≤ ¦u¦_{r_0,s_0}/(r_0−r+ρ); Σ_i¦∂_{θ_i}v¦_{I,t} ≤ ¦v¦_{r,s}/(eσ); max_i¦∂_{I_i}v¦_{I,t} ≤ ¦v¦_{r,s}/ρ; inserting and taking sup over I last gives the claim
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:cauchy, bpN:p4:norm#monotone, stepN:p4:b4-four, bpN:p4:domains, bpN:p4:norm, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:cauchy | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L160-L162 | (a) pointwise and (b) global bounds of the four derivative factors
EDGE: bpN:p4:norm#monotone | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L159 | monotonicity of the norm in both widths
EDGE: stepN:p4:b4-four | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L163-L163 | the display into which the four bounds are inserted
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L160-L160 | I ∈ V_{r_0}D since r−ρ < r_0
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L160-L162 | ¦·¦_{I,s}, ¦·¦_{r,s}
EDGE: bpN:p5:setting | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L160-L160 | Uses the Hamiltonian Poisson bracket fixed in Part 5; SPEC requires its package edge
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p4:b1-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L96
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L96
CONTRACT_ID: stepN:p4:b1-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s), scalar/vector/matrix with the max coefficient norm; (θ,I) ∈ 𝒟_{r,s}; the finite-norm branch (the infinite branch is immediate)
SOURCE_QUANTIFIERS: D,m,n; positive widths; the function(s) with the SOURCE_HYPOTHESES; then local data in source order: u; (θ,I)
SOURCE_CONCLUSION: ¦u(θ,I)¦ ≤ Σ_k ¦û_k(I)¦ ¦χ_k(θ)¦ ≤ Σ_k ¦û_k(I)¦ e^{2π¦k¦₁s} ≤ ¦u¦_{r,s}, using ¦χ_k(θ)¦ ≤ e^{2π¦k¦₁¦Im θ¦_∞}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, bpN:p0:strip#complexStrip, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L95 | (d): Fourier representation of u
EDGE: bpN:p0:strip#complexStrip | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L96-L96 | bound ¦χ_k(θ)¦ ≤ e^{2π¦k¦₁¦Im θ¦_∞} on T_s (Kref bp:p0:domains)
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L95 | ¦û_k(I)¦e^{2π¦k¦₁s} sum is ¦u¦_{I,s} ≤ ¦u¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L95 | (θ,I) ∈ 𝒟_{r,s}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p4:b3-b
KIND: step
TITLE: (b): Cauchy integral
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L135-L139
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L135-L139
CONTRACT_ID: stepN:p4:b3-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r₀,s₀) with finite norm; 0 < r < r₀; I ∈ V_rD; coordinate i; ρ′ := r₀−r; ¦ζ¦ ≤ ρ′
SOURCE_QUANTIFIERS: D,m,n; r₀,s₀; u; r,s with 0<r<r₀, 0<s<s₀; then I and coordinate indices
SOURCE_CONCLUSION: I+ζe_i ∈ V_{r_0}D; ¦∂_{I_i}u¦_{I,s_0} ≤ (1/2π)∮ρ'^{−2}¦u¦_{I+ζe_i,s_0}¦dζ¦ ≤ ρ'^{−1}¦u¦_{r_0,s_0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, K:bp:p1:ext-cauchy, bpN:p4:ext-series, bpN:p4:domains, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L136-L136 | (a),(b): û_k holomorphic and ∂_{I_i}û_k the coefficient of ∂_{I_i}u
EDGE: K:bp:p1:ext-cauchy | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L136-L136 | Cauchy integral formula for ∂_{I_i}û_k
EDGE: bpN:p4:ext-series | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L137-L137 | Tonelli for the sum over k
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L135-L135 | I+ζe_i ∈ V_{r_0}D
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L137-L138 | ¦·¦_{I,s_0}, ¦·¦_{r_0,s_0}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p4:c1-line
KIND: step
TITLE: Reduction to one variable
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-line@L173-L173
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-line@L173-L173
CONTRACT_ID: stepN:p4:c1-line
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A,B finite-dimensional complex normed spaces; v ∈ A; R>0; G holomorphic on P_A(v,R), ¦G¦_B ≤ M there; u ∈ A, u ≠ 0
SOURCE_QUANTIFIERS: A,B; v; R>0; G; M; then u≠0; for c1-cauchy, 0<ϱ<R/¦u¦_A
SOURCE_CONCLUSION: f(ζ) = G(v+ζu) is holomorphic on ¦ζ¦ < R/¦u¦_A with ¦f¦ ≤ M and f'(0) = DG(v)u
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p4:c1-cauchy
KIND: step
TITLE: Cauchy
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-cauchy@L175-L175
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-cauchy@L175-L175
CONTRACT_ID: stepN:p4:c1-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A,B finite-dimensional complex normed spaces; v ∈ A; R>0; G holomorphic on P_A(v,R), ¦G¦_B ≤ M there; u ∈ A, u ≠ 0; f(ζ) := G(v+ζu); 0<ϱ<R/¦u¦_A
SOURCE_QUANTIFIERS: A,B; v; R>0; G; M; then u≠0; for c1-cauchy, 0<ϱ<R/¦u¦_A
SOURCE_CONCLUSION: ¦f'(0)¦ ≤ M/ϱ for every ϱ < R/¦u¦_A; letting ϱ ↑ R/¦u¦_A, ¦DG(v)u¦_B ≤ M¦u¦_A/R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-cauchy, stepN:p4:c1-line
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-cauchy | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-cauchy@L175-L175 | one-variable Cauchy estimate ¦f'(0)¦ ≤ M/ϱ
EDGE: stepN:p4:c1-line | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-cauchy@L175-L175 | the function f and f'(0) = DG(v)u
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Suspected blueprint defects

No mathematical counterexample found in Part 4. Two source-contract details deserve writer attention: (i) the imported exponential-sum lemma at K Part 1 L727 assumes n≥1, while Part 4 allows n=0; the zero-dimensional empty-sum/product case is routine but should be handled explicitly at applications; (ii) ext-weier must first obtain a derivative limit on local interior balls before applying K uniform-limits, whose premise is uniform derivative convergence, not uniform function convergence alone. The existing general-cauchy dependency and L177 model that obligation; neither observation justifies weakening a source statement.

## Checks and scope

- Read-only application check: `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_apply_review.py docs/graph/N/packets N-p4 docs/graph/N/reviews/N-p4-review.md sol-review-N-b --dry-run`; final receipt: `N-p4: 18 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 15 PASS nodes`.
- `git diff --check`: exit 0, no output. Concurrent changes to other slices and track-I review files were observed and left untouched.
- Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the complete review brief and SPEC; re-read the whole Part 4 source, both packets and their inventories, N-imports, all consumed K statements at their source locators, and the relevant Part 3 general ODE statements. Checked the relevant frozen strip/vector-field definitions and their manifest identity fields only. No implementation Lean or provider files were inspected.
- Hash check: the assigned p4/p5 source hashes and the consumed K source hash match the pins. Full pin inventory currently reports drift in `blueprint-N/parts/p0-conventions.tex` and `blueprint-P/parts/p0-conventions.tex`; this review does not certify those changed files or global anchor/root identity.
- No Lean command, build, axiom query, repository lint script or state-changing git command was run, as the review brief explicitly prohibits Lean runs and edits outside these reports. Axioms: not assessed in a topology review.
- Deviations introduced: none to sources, frozen files, packet records or graph databases; only proposed replacement records in this report. The source defects above are for the orchestrator’s errata ledger, which this reviewer does not edit.
