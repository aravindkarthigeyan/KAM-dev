NODE: bpN:p4:ext-param
KIND: external
TITLE: Holomorphic dependence on a parameter
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-param@L23-L25
PROOF_SOURCE: -
CONTRACT_ID: bpN:p4:ext-param
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Q ⊂ ℝ^p compact box; U ⊂ ℂ^q open; G: Q×U → ℂ^d continuous, holomorphic in I ∈ U for each x ∈ Q, with D_I G continuous on Q×U
SOURCE_QUANTIFIERS: p, q, d; Q; U; G
SOURCE_CONCLUSION: g(I) = ∫_Q G(x,I) dx is holomorphic on U and Dg(I) = ∫_Q D_I G(x,I) dx
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
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: external item (E1) of Part 4's list (the Mathlib hint in the text is not a source premise)

NODE: bpN:p4:ext-weier
KIND: claim
TITLE: Uniform limits
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-weier@L26-L27
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-weier@L26-L27
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
NOTE: Modelled as a claim, not a pure external, per SPEC ruling: 'Exists in this form modulo that lemma' (L27) and L177 'This also gives ext-weier's derivative statement: apply it to K_j−K_l on the ball of radius η' (coverage item p4:prose-L177 is mapped here); PROOF_SOURCE is the item, the L177 sentence is the derivative argument

NODE: bpN:p4:ext-series
KIND: external
TITLE: Series and integrals
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-series@L28-L29
PROOF_SOURCE: -
CONTRACT_ID: bpN:p4:ext-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (i) nonnegative double series, resp. nonnegative integrands; (ii) two absolutely convergent series; (iii) a uniformly convergent series of functions on a box
SOURCE_QUANTIFIERS: series and integrals as quantified in each of the three standard facts
SOURCE_CONCLUSION: Tonelli for nonnegative double series and for integrals of nonnegative functions; the Cauchy product of two absolutely convergent series is absolutely convergent (sum of the products); termwise integration of a uniformly convergent series over a box
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
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: stays an external per SPEC; the \Kref to K:bp:p1:ext-integral is a pointer to the related termwise-integration statement, not a restatement

NODE: bpN:p4:domains
KIND: definition
TITLE: Domains
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L34-L39
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L40-L45
CONTRACT_ID: bpN:p4:domains
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m, n ≥ 0; D ⊂ ℂ^m any subset; r, s > 0
SOURCE_QUANTIFIERS: m, n; D; r, s; then z = (θ,I); a, b ≥ 0; r' ≤ r, s' ≤ s (resp. 0<r'<r, 0<s'<s)
SOURCE_CONCLUSION: defines V_rD = {I ∈ ℂ^m : ∃ I' ∈ D, ¦I−I'¦_∞ < r}, 𝒟_{r,s} = T_s × V_rD ⊂ ℂⁿ×ℂ^m, P̄(z;a,b) = {(θ',I') : ¦θ'−θ¦_∞ ≤ a, ¦I'−I¦_∞ ≤ b}; (a) V_rD and 𝒟_{r,s} are open and 𝒟_{r',s'} ⊂ 𝒟_{r,s} for r' ≤ r, s' ≤ s; (b) if 0<r'<r, 0<s'<s and z ∈ 𝒟_{r',s'} then P̄(z;s−s',r−r') ⊂ 𝒟_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:dom-open, stepN:p4:dom-poly, bpN:p0:strip#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:dom-open | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L41-L41 | proof step of this result (a)
EDGE: stepN:p4:dom-poly | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L43-L43 | proof step of this result (b)
EDGE: bpN:p0:strip#complexStrip | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L36-L36 | T_s = {θ ∈ ℂⁿ : ¦Im θ¦_∞ < s} is the frozen strip (Kref bp:p0:domains; Part 4 Normalisation L13)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Max norms throughout (Part 4 convention paragraph L10, Normalisation L12-L17: period 1, geometric strip width s); this definition is the package bpN:p4:domains (SPEC)

NODE: stepN:p4:dom-open
KIND: step
TITLE: Openness and monotonicity
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-open@L41-L41
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-open@L41-L41
CONTRACT_ID: stepN:p4:dom-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V_rD = ⋃_{I'∈D} P(I',r) (union of open polydiscs); T_s open
SOURCE_QUANTIFIERS: m, n; D; r, s; r' ≤ r, s' ≤ s
SOURCE_CONCLUSION: V_rD and 𝒟_{r,s} are open; 𝒟_{r',s'} ⊂ 𝒟_{r,s} (monotonicity, 'clear')
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

NODE: stepN:p4:dom-poly
KIND: step
TITLE: Polydisc
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-poly@L43-L44
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-poly@L43-L44
CONTRACT_ID: stepN:p4:dom-poly
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ¦θ'−θ¦_∞ ≤ s−s', ¦I'−I¦_∞ ≤ r−r'; z = (θ,I) ∈ 𝒟_{r',s'}
SOURCE_QUANTIFIERS: r' < r, s' < s; z; (θ',I'); I_0 ∈ D with ¦I−I_0¦ < r'
SOURCE_CONCLUSION: ¦Im θ'_j¦ ≤ ¦Im θ_j¦ + s − s' < s and ¦I'−I_0¦ < r, hence P̄(z;s−s',r−r') ⊂ 𝒟_{r,s}
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

NODE: bpN:p4:norm
KIND: definition
TITLE: The class $\Os rs$ and the weighted norm
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm@L47-L54
PROOF_SOURCE: -
CONTRACT_ID: bpN:p4:norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m, n ≥ 0; D ⊂ ℂ^m; r, s > 0 (the domains of Definition bpN:p4:domains); u: 𝒟_{r,s} → ℂ
SOURCE_QUANTIFIERS: m, n; D; r, s; u; k ∈ ℤⁿ; I ∈ V_rD
SOURCE_CONCLUSION: defines 𝒪(r,s) = {u: 𝒟_{r,s} → ℂ holomorphic and 1-periodic in each θ_j}; û_k(I) = ∫_{[0,1]ⁿ} u(x,I) e^{−2πik·x} dx; ¦u¦_{I,s} = Σ_k ¦û_k(I)¦ e^{2π¦k¦₁ s}; ¦u¦_{r,s} = sup_{I∈V_rD} ¦u¦_{I,s} ∈ [0,∞]; for vector/matrix u the coefficients are componentwise with ¦û_k¦_∞ = max_a ¦û_{a,k}¦ in ¦u¦_{I,s}; 'finite norm' means ¦u¦_{r,s} < ∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm@L47-L50 | 𝒟_{r,s}, V_rD in the definition of 𝒪(r,s) and ¦·¦_{r,s}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: This definition is the package bpN:p4:norm (SPEC): 𝒪(r,s), û_k(I), ¦u¦_{I,s}, ¦u¦_{r,s}, finite norm; convention paragraph L12-L17 (max norms, geometric width s, weight e^{2π¦k¦₁s}) recorded here

NODE: bpN:p4:norm#monotone
KIND: claim
TITLE: Monotonicity of the weighted norm and vector norms
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm#monotone@L55-L55
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm#monotone@L55-L55
CONTRACT_ID: bpN:p4:norm#monotone
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s); r' ≤ r, s' ≤ s (r',s' > 0); for vectors u = (u_a)_a with components in 𝒪(r,s)
SOURCE_QUANTIFIERS: D, m, n; u; r, s; r', s'
SOURCE_CONCLUSION: ¦u¦_{r',s'} ≤ ¦u¦_{r,s} (restriction to 𝒟_{r',s'}; the coefficients at I ∈ V_{r'}D are unchanged); for a vector, max_a ¦u_a¦_{r,s} ≤ ¦u¦_{r,s} ≤ Σ_a ¦u_a¦_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm#monotone@L55-L55 | definition of ¦·¦_{r,s}, û_k(I)
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm#monotone@L55-L55 | restriction to 𝒟_{r',s'} ⊂ 𝒟_{r,s} (Definition domains(a))
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section-data claim created from coverage item p4:prose-L55-L55 (SPEC); consumed by stepN:p4:b4-four, stepN:p4:b4-prod, stepN:p5:vf-deriv, bpN:p4:bracket (proof preamble L152) and later parts

NODE: bpN:p4:coefficients
KIND: lemma
TITLE: Coefficients, derivatives, series
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L57-L67
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L68-L81
CONTRACT_ID: bpN:p4:coefficients
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s) on 𝒟_{r,s}, D ⊂ ℂ^m (Definitions domains, norm); (c) a_k: V_rD → ℂ (k ∈ ℤⁿ) holomorphic with S := sup_I Σ_k ¦a_k(I)¦ e^{2π¦k¦₁s} < ∞; (d) ¦u¦_{r,s} < ∞
SOURCE_QUANTIFIERS: D, m, n; r, s; u; (a_k)_k; S; s' < s
SOURCE_CONCLUSION: (a) each û_k is holomorphic on V_rD; (b) ∂_{θ_j}u, ∂_{I_i}u ∈ 𝒪(r,s), (∂_{θ_j}u)^_k = 2πik_j û_k, (∂_{I_i}u)^_k = ∂_{I_i}û_k; (c) v = Σ a_k χ_k converges absolutely and uniformly on 𝒟_{r,s'} for each s' < s, v ∈ 𝒪(r,s), v̂_k = a_k and ¦v¦_{r,s} = S; (d) u(θ,I) = Σ_k û_k(I) χ_k(θ) on 𝒟_{r,s} and ¦û_k(I)¦ e^{2π¦k¦₁s} ≤ ¦u¦_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:co-holo, stepN:p4:co-deriv, stepN:p4:co-series, stepN:p4:co-repr, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:co-holo | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L69-L70 | proof step (a)
EDGE: stepN:p4:co-deriv | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L72-L73 | proof step (b)
EDGE: stepN:p4:co-series | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L75-L77 | proof step (c)
EDGE: stepN:p4:co-repr | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L79-L80 | proof step (d)
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L58-L58 | class 𝒪(r,s), û_k, ¦·¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L58-L58 | 𝒟_{r,s}, V_rD
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the one-variable ingredients cited in \source (K:fourier-basic, K:summation) are used by the steps and linked there

NODE: stepN:p4:co-holo
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-holo@L69-L70
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-holo@L69-L70
CONTRACT_ID: stepN:p4:co-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s); I_0 ∈ V_rD, η > 0 with P̄(I_0,η) ⊂ V_rD; k ∈ ℤⁿ
SOURCE_QUANTIFIERS: u; k; I_0; η
SOURCE_CONCLUSION: û_k is holomorphic near I_0 (integrand u(x,I)e^{−2πik·x} continuous on [0,1]ⁿ×P(I_0,η), holomorphic in I, D_I continuous)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:ext-param, K:bp:p1:holomorphic-regularity, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:ext-param | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-holo@L70-L70 | holomorphy of the parameter integral û_k
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-holo@L70-L70 | Du holomorphic hence continuous
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-holo@L69-L69 | û_k(I) definition, 𝒪(r,s)
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-holo@L69-L69 | V_rD open (so P̄(I_0,η) ⊂ V_rD)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:co-deriv
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L73
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L73
CONTRACT_ID: stepN:p4:co-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s); u(θ+e_j,I) = u(θ,I)
SOURCE_QUANTIFIERS: u; i, j
SOURCE_CONCLUSION: ∂_{θ_j}u, ∂_{I_i}u ∈ 𝒪(r,s) (holomorphic, periodic); (∂_{θ_j}u)^_k = 2πik_j û_k; (∂_{I_i}u)^_k = ∂_{I_i}û_k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:holomorphic-regularity, K:bp:p1:fourier-basic, bpN:p4:ext-param, stepN:p4:co-holo, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L72 | derivatives of holomorphic u are holomorphic
EDGE: K:bp:p1:fourier-basic | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L72 | derivative formula (a) at fixed I
EDGE: bpN:p4:ext-param | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L73-L73 | derivative formula for I_i
EDGE: stepN:p4:co-holo | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L73-L73 | 'as in Step co-holo': hypotheses of the parameter integral
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L72 | 𝒪(r,s), û_k
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:co-series
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L75-L77
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L75-L77
CONTRACT_ID: stepN:p4:co-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a_k holomorphic on V_rD with S < ∞; s' < s
SOURCE_QUANTIFIERS: a_k; S; s'
SOURCE_CONCLUSION: v = Σ a_kχ_k converges uniformly on 𝒟_{r,s'}, is holomorphic and periodic on 𝒟_{r,s}, v̂_k = a_k, and ¦v¦_{r,s} = S
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:exp-sums, bpN:p4:ext-weier, bpN:p4:ext-series, K:bp:p1:summation, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L76-L76 | summability of S e^{−2π¦k¦₁(s−s')}
EDGE: bpN:p4:ext-weier | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L76-L76 | uniform limit of holomorphic partial sums is holomorphic
EDGE: bpN:p4:ext-series | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L77-L77 | termwise integration against χ_{−k}
EDGE: K:bp:p1:summation | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L77-L77 | 'as in the coefficient step of K summation'
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L77-L77 | norm identity is the definition
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-series@L76-L76 | 𝒟_{r,s'} ⊂ 𝒟_{r,s}; holomorphy on 𝒟_{r,s} as s' arbitrary
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:co-repr
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L80
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L80
CONTRACT_ID: stepN:p4:co-repr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ¦u¦_{r,s} < ∞; I ∈ V_rD
SOURCE_QUANTIFIERS: u; I
SOURCE_CONCLUSION: ¦û_k(I)¦e^{2π¦k¦₁s} ≤ ¦u¦_{r,s}; u(·,I) = Σ_k û_k(I)χ_k on T_s
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:summation, K:bp:p1:fourier-basic, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:summation | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L79 | Σ û_k(I)χ_k holomorphic periodic with these coefficients
EDGE: K:bp:p1:fourier-basic | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L80-L80 | (c): holomorphic periodic function with all coefficients zero vanishes
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L79 | single term of ¦u¦_{I,s} ≤ ¦u¦_{r,s}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p4:sup-weighted
KIND: lemma
TITLE: B.1
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L85-L93
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L94-L101
CONTRACT_ID: bpN:p4:sup-weighted
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s) (scalar, vector or matrix valued; sup¦u¦ is the sup of the max norm of the values); (b) σ > 0 and ¦u¦ ≤ M on 𝒟_{r,s+σ}
SOURCE_QUANTIFIERS: D, m, n; r, s; u; σ; M
SOURCE_CONCLUSION: (a) sup_{𝒟_{r,s}} ¦u¦ ≤ ¦u¦_{r,s}; (b) ¦u¦_{r,s} ≤ coth(πσ)ⁿ M
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b1-a, stepN:p4:b1-b, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b1-a | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L95-L96 | proof step (a)
EDGE: stepN:p4:b1-b | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L98-L100 | proof step (b)
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L86-L86 | 𝒪(r,s), ¦·¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L86-L86 | 𝒟_{r,s}, 𝒟_{r,s+σ}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: candidate edges to bpN:p4:dictionary and bpN:p1:norm-convert dropped: 'In Pöschel's form … see Remark' and \source ('this is Lemma norm-convert with the I-dependence made explicit') are provenance/comparison

NODE: stepN:p4:b1-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L96
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L96
CONTRACT_ID: stepN:p4:b1-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ¦u¦_{r,s} < ∞ (else nothing to prove); (θ,I) ∈ 𝒟_{r,s}
SOURCE_QUANTIFIERS: u; (θ,I)
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

NODE: stepN:p4:b1-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L100
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L100
CONTRACT_ID: stepN:p4:b1-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u(·,I) holomorphic, periodic, ¦u¦ ≤ M on T_{s+σ}; I ∈ V_rD
SOURCE_QUANTIFIERS: I; σ; M
SOURCE_CONCLUSION: ¦û_k(I)¦_∞ ≤ e^{−2π¦k¦₁(s+σ)}M and ¦u¦_{I,s} ≤ M Σ_k e^{−2π¦k¦₁σ} = coth(πσ)ⁿ M; take sup over I
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:decay, K:bp:p1:exp-sums, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:decay | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L98 | Cauchy-type decay of Fourier coefficients (limit ρ' ↑ s+σ)
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L99-L99 | (b) with x = 2πσ: Σ_k e^{−2π¦k¦₁σ} = coth(πσ)ⁿ
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L98 | û_k(I), ¦u¦_{I,s}, ¦u¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-b@L98-L98 | T_{s+σ}, V_rD
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p4:algebra
KIND: lemma
TITLE: B.2
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L105-L109
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L110-L118
CONTRACT_ID: bpN:p4:algebra
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u, v ∈ 𝒪(r,s) scalar with finite norms
SOURCE_QUANTIFIERS: D, m, n; r, s; u, v; I ∈ V_rD; j ≥ 1
SOURCE_CONCLUSION: uv ∈ 𝒪(r,s); (uv)^_k(I) = Σ_l û_{k−l}(I) v̂_l(I) (absolutely convergent); ¦uv¦_{I,s} ≤ ¦u¦_{I,s}¦v¦_{I,s} for every I ∈ V_rD; hence ¦uv¦_{r,s} ≤ ¦u¦_{r,s}¦v¦_{r,s} and ¦u^j¦_{r,s} ≤ ¦u¦_{r,s}^j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b2-class, stepN:p4:b2-coeff, stepN:p4:b2-norm, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b2-class | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L111-L111 | proof step
EDGE: stepN:p4:b2-coeff | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L113-L114 | proof step
EDGE: stepN:p4:b2-norm | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L116-L117 | proof step
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L106-L106 | 𝒪(r,s), ¦·¦_{I,s}, ¦·¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L106-L106 | V_rD, 𝒟_{r,s}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the \source remark about a Lean-proved coefficient-level inequality is provenance; the identification with the product of functions is steps b2-class/b2-coeff

NODE: stepN:p4:b2-class
KIND: step
TITLE: Product is in the class
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-class@L111-L111
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-class@L111-L111
CONTRACT_ID: stepN:p4:b2-class
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u, v holomorphic and 1-periodic on 𝒟_{r,s}
SOURCE_QUANTIFIERS: u, v
SOURCE_CONCLUSION: uv is holomorphic and 1-periodic on 𝒟_{r,s}, i.e. uv ∈ 𝒪(r,s)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-class@L111-L111 | membership in the class 𝒪(r,s)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:b2-coeff
KIND: step
TITLE: Coefficients
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L114
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L114
CONTRACT_ID: stepN:p4:b2-coeff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: finite norms; I ∈ V_rD fixed; real x
SOURCE_QUANTIFIERS: I; x ∈ ℝⁿ; k
SOURCE_CONCLUSION: u(x,I)v(x,I) = Σ_k c_kχ_k(x) with c_k = Σ_l û_{k−l}v̂_l, Σ_k ¦c_k¦ ≤ ¦u¦_{I,0}¦v¦_{I,0} < ∞, uniform in x, and (uv)^_k(I) = c_k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, bpN:p4:ext-series, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L113 | (d): u(x,I) = Σ û_kχ_k(x), absolutely convergent
EDGE: bpN:p4:ext-series | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L114 | Cauchy product of absolutely convergent series; termwise integration
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L114-L114 | ¦u¦_{I,0}, û_k(I)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:b2-norm
KIND: step
TITLE: Norm
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117
CONTRACT_ID: stepN:p4:b2-norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: c_k = Σ_l û_{k−l}v̂_l (previous step); ¦k¦₁ ≤ ¦k−l¦₁ + ¦l¦₁
SOURCE_QUANTIFIERS: I; s
SOURCE_CONCLUSION: ¦uv¦_{I,s} ≤ ¦u¦_{I,s}¦v¦_{I,s} (Tonelli with (k,l) ↦ (k−l,l)); sup over I; induction gives ¦u^j¦_{r,s} ≤ ¦u¦_{r,s}^j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b2-coeff, bpN:p4:ext-series, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b2-coeff | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117 | the coefficient formula (uv)^_k = c_k
EDGE: bpN:p4:ext-series | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L117-L117 | Tonelli for nonnegative double series
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117 | ¦·¦_{I,s}, ¦·¦_{r,s}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p4:cauchy
KIND: lemma
TITLE: B.3
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L122-L130
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L131-L140
CONTRACT_ID: bpN:p4:cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r_0,s_0) with finite norm; 0 < r < r_0, 0 < s < s_0; (vector/matrix u componentwise)
SOURCE_QUANTIFIERS: D, m, n; r_0, s_0; u; r, s (then ρ, σ with r_0 = r+ρ, s_0 = s+σ)
SOURCE_CONCLUSION: (a) for every I ∈ V_{r_0}D: Σ_j ¦∂_{θ_j}u¦_{I,s} ≤ ¦u¦_{I,s_0}/(e(s_0−s)), hence sup_I Σ_j ¦∂_{θ_j}u¦_{I,s} ≤ ¦u¦_{r_0,s_0}/(e(s_0−s)) and for each single j ¦∂_{θ_j}u¦_{r_0,s} ≤ ¦u¦_{r_0,s_0}/(e(s_0−s)); (b) max_i ¦∂_{I_i}u¦_{r,s_0} ≤ ¦u¦_{r_0,s_0}/(r_0−r); in particular Σ-pointwise form with (e σ)^{−1}, ρ^{−1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:b3-a, stepN:p4:b3-b, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b3-a | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L132-L133 | proof step (a)
EDGE: stepN:p4:b3-b | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L135-L139 | proof step (b)
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L123-L123 | 𝒪(r_0,s_0), ¦·¦_{I,s}, ¦·¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L123-L123 | V_{r_0}D
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Cycle bpN:p4:cauchy <-> bpN:p4:sharp resolved: the candidate edge cauchy -> sharp is the parenthetical remark at L125 ('with the norm ♯ of Lemma sharp it is bounded'), a forward pointer/comparison, not a use; sharp uses cauchy (it is a variant statement). No edge cauchy -> sharp. The edge to bpN:p4:dictionary (Pöschel comparison in \source) is provenance and dropped

NODE: stepN:p4:b3-a
KIND: step
TITLE: (a): coefficients
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133
CONTRACT_ID: stepN:p4:b3-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: I ∈ V_{r_0}D; u ∈ 𝒪(r_0,s_0) finite norm
SOURCE_QUANTIFIERS: I; s < s_0
SOURCE_CONCLUSION: Σ_j ¦∂_{θ_j}u¦_{I,s} = Σ_k 2π¦k¦₁ e^{−2π¦k¦₁(s_0−s)} ¦û_k¦e^{2π¦k¦₁s_0} ≤ ¦u¦_{I,s_0}/(e(s_0−s)); global consequences by sup over I and ¦u¦_{I,s_0} ≤ ¦u¦_{r_0,s_0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, K:bp:p1:exp-sums, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L132 | (b): (∂_{θ_j}u)^_k = 2πik_jû_k
EDGE: K:bp:p1:exp-sums | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L133-L133 | (a) with τ = 1, a = 2π(s_0−s): x e^{−ax} ≤ 1/(ea)
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133 | ¦·¦_{I,s}, ¦·¦_{r_0,s_0}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:b3-b
KIND: step
TITLE: (b): Cauchy integral
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L135-L139
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L135-L139
CONTRACT_ID: stepN:p4:b3-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: I ∈ V_rD; i; ρ' = r_0 − r; ¦ζ¦ ≤ ρ'
SOURCE_QUANTIFIERS: I; i; ζ
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

NODE: bpN:p4:s-b4#data
KIND: definition
TITLE: The Poisson bracket for m = n (Lemma B.4 data)
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:s-b4#data@L144-L144
PROOF_SOURCE: -
CONTRACT_ID: bpN:p4:s-b4#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: m = n; u, v holomorphic on an open subset of ℂⁿ×ℂⁿ)
SOURCE_QUANTIFIERS: n; u, v
SOURCE_CONCLUSION: defines, for m = n, the Poisson bracket {u,v} = Σ_i (∂_{θ_i}u ∂_{I_i}v − ∂_{I_i}u ∂_{θ_i}v) = Du·X_v with the frozen field X_v = (∂_Iv, −∂_θv), as in Definition bpN:p5:setting
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:setting | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:s-b4#data@L144-L144 | the bracket and X_v are Definition p5:setting
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section-data node created from coverage item p4:prose-L144-L144 (SPEC option); notation only, but Lemma bracket and its proof use the bracket by symbol

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
DEPS: stepN:p4:b4-four, stepN:p4:b4-prod, bpN:p4:s-b4#data, bpN:p4:norm, bpN:p4:domains, bpN:p4:norm#monotone, bpN:p4:coefficients
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:b4-four | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L154-L157 | proof step: pointwise product estimate
EDGE: stepN:p4:b4-prod | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L159-L163 | proof step: the four derivative bounds
EDGE: bpN:p4:s-b4#data | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L146-L147 | the bracket {u,v} of the statement
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L147-L148 | 𝒪, ¦·¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L152-L152 | 𝒟_{r−ρ,s−σ} ⊂ 𝒟_{r_0,s_0} ∩ 𝒟_{r,s}
EDGE: bpN:p4:norm#monotone | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L152-L152 | restriction of the terms to 𝒟_{r−ρ,s−σ} (monotonicity)
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L152-L152 | {u,v} ∈ 𝒪(r−ρ,s−σ): derivatives of 𝒪-functions are in the class (b) and products by algebra
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:b4-four
KIND: step
TITLE: Pointwise product estimate
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L157
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L157
CONTRACT_ID: stepN:p4:b4-four
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: I ∈ V_{r−ρ}D; t = s−σ; the algebra property pointwise in I; triangle inequality for ¦·¦_{I,t}
SOURCE_QUANTIFIERS: I; t
SOURCE_CONCLUSION: ¦{u,v}¦_{I,t} ≤ (Σ_i ¦∂_{θ_i}u¦_{I,t}) max_i ¦∂_{I_i}v¦_{I,t} + max_i ¦∂_{I_i}u¦_{I,t} (Σ_i ¦∂_{θ_i}v¦_{I,t}), angular sums kept pointwise in I
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:algebra, bpN:p4:s-b4#data, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:algebra | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L154 | pointwise-in-I product estimate ¦uv¦_{I,t} ≤ ¦u¦_{I,t}¦v¦_{I,t}
EDGE: bpN:p4:s-b4#data | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L152-L152 | expression of {u,v} as two sums of products
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L154 | ¦·¦_{I,t}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:b4-prod
KIND: step
TITLE: Four derivative bounds
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L163
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L163
CONTRACT_ID: stepN:p4:b4-prod
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lemma cauchy (a) pointwise, (b) global; monotonicity in both widths; I ∈ V_{r−ρ}D ⊂ V_{r_0}D
SOURCE_QUANTIFIERS: I; t
SOURCE_CONCLUSION: Σ_i¦∂_{θ_i}u¦_{I,t} ≤ ¦u¦_{r_0,s_0}/(e(s_0−s+σ)); max_i¦∂_{I_i}u¦_{I,t} ≤ ¦u¦_{r_0,s_0}/(r_0−r+ρ); Σ_i¦∂_{θ_i}v¦_{I,t} ≤ ¦v¦_{r,s}/(eσ); max_i¦∂_{I_i}v¦_{I,t} ≤ ¦v¦_{r,s}/ρ; inserting and taking sup over I last gives the claim
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:cauchy, bpN:p4:norm#monotone, stepN:p4:b4-four, bpN:p4:domains, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:cauchy | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L160-L162 | (a) pointwise and (b) global bounds of the four derivative factors
EDGE: bpN:p4:norm#monotone | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L159 | monotonicity of the norm in both widths
EDGE: stepN:p4:b4-four | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L163-L163 | the display into which the four bounds are inserted
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L160-L160 | I ∈ V_{r_0}D since r−ρ < r_0
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L160-L162 | ¦·¦_{I,s}, ¦·¦_{r,s}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p4:general-cauchy
KIND: lemma
TITLE: C.1
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:general-cauchy@L168-L171
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:general-cauchy@L172-L176
CONTRACT_ID: bpN:p4:general-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A, B finite-dimensional complex normed spaces; v ∈ A; R > 0; G: P_A(v,R) = {a : ¦a−v¦_A < R} → B holomorphic with ¦G¦_B ≤ M on this ball
SOURCE_QUANTIFIERS: A, B; v; R; G; M
SOURCE_CONCLUSION: the operator norm satisfies ¦DG(v)¦_{B,A} ≤ M/R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:c1-line, stepN:p4:c1-cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:c1-line | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:general-cauchy@L173-L173 | proof step: reduction to one variable
EDGE: stepN:p4:c1-cauchy | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:general-cauchy@L175-L175 | proof step: one-variable Cauchy estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:c1-line
KIND: step
TITLE: Reduction to one variable
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-line@L173-L173
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-line@L173-L173
CONTRACT_ID: stepN:p4:c1-line
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ A, u ≠ 0
SOURCE_QUANTIFIERS: u
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

NODE: stepN:p4:c1-cauchy
KIND: step
TITLE: Cauchy
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-cauchy@L175-L175
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-cauchy@L175-L175
CONTRACT_ID: stepN:p4:c1-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f as in the previous step; ϱ < R/¦u¦_A
SOURCE_QUANTIFIERS: u; ϱ
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

NODE: bpN:p4:projections
KIND: lemma
TITLE: $P_S$, $T_K$, averages
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L181-L187
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L188-L192
CONTRACT_ID: bpN:p4:projections
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s) with finite norm; S ⊂ ℤⁿ; K ≥ 0; 0 < σ < s; Λ ⊂ ℤⁿ any set (Λ-normal form u = P_Λu); vector-valued u componentwise
SOURCE_QUANTIFIERS: D, m, n; r, s; u; S; K; σ; Λ
SOURCE_CONCLUSION: P_Su = Σ_{k∈S}û_kχ_k ∈ 𝒪(r,s), (P_Su)^_k = û_k for k ∈ S and 0 otherwise, ¦P_Su¦_{r,s} ≤ ¦u¦_{r,s}; for T_Ku = P_{¦k¦₁≤K}u and ⟨u⟩(I) = û_0(I): ¦T_Ku¦_{r,s}, ¦⟨u⟩¦_{r,s} ≤ ¦u¦_{r,s}; u − T_Ku = P_{¦k¦₁>K}u and ¦u−T_Ku¦_{r,s−σ} ≤ e^{−2πKσ}¦u¦_{r,s}; P_Λu, u−P_Λu in the class with norms ≤ ¦u¦_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p4:pr-class, stepN:p4:pr-tail, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p4:pr-class | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L189-L189 | proof step: class and coefficients
EDGE: stepN:p4:pr-tail | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L191-L191 | proof step: tail estimate
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L182-L184 | 𝒪(r,s), û_k, ¦·¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L182-L182 | 𝒟_{r,s}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:pr-class
KIND: step
TITLE: Class and coefficients
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189
CONTRACT_ID: stepN:p4:pr-class
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a_k = û_k 1_S(k) holomorphic (Lemma coefficients(a)) with sup_IΣ_k¦a_k¦e^{2π¦k¦₁s} ≤ ¦u¦_{r,s} < ∞
SOURCE_QUANTIFIERS: S
SOURCE_CONCLUSION: P_Su ∈ 𝒪(r,s) with coefficients û_k1_S(k) and ¦P_Su¦_{r,s} ≤ ¦u¦_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189 | (a) holomorphy of a_k and (c) series lemma
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189 | ¦·¦_{r,s}, 𝒪(r,s)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p4:pr-tail
KIND: step
TITLE: Tail
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191
CONTRACT_ID: stepN:p4:pr-tail
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ¦k¦₁ > K; 0 < σ < s
SOURCE_QUANTIFIERS: K; σ
SOURCE_CONCLUSION: e^{2π¦k¦₁(s−σ)} ≤ e^{−2πKσ}e^{2π¦k¦₁s} for ¦k¦₁ > K, so ¦u−T_Ku¦_{r,s−σ} ≤ e^{−2πKσ}¦u¦_{r,s}; and u − T_Ku = P_{¦k¦₁>K}u from u = Σû_kχ_k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191 | (d): u = Σ_k û_kχ_k
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191 | ¦·¦_{r,s−σ} as sup of the weighted sum
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
