NODE: bpN:p11:real-system
KIND: lemma
TITLE: Real extended systems
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:real-system@L7-L13
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:real-system@L14-L18
CONTRACT_ID: bpN:p11:real-system
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:rs-a, stepN:p11:rs-b, stepN:p11:rs-cd
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:rs-a | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:real-system@L15-L15 | proof step of this result
EDGE: stepN:p11:rs-b | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:real-system@L16-L16 | proof step of this result
EDGE: stepN:p11:rs-cd | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:real-system@L17-L17 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:rs-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-a@L15-L15
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-a@L15-L15
CONTRACT_ID: stepN:p11:rs-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:real-system, K:bp:p1:hamiltonian-real
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:real-system | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-a@L15-L15 | cited at this line (step; \ref{bpN:p7:real-system})
EDGE: K:bp:p1:hamiltonian-real | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-a@L15-L15 | cited at this line (step; \Kref{bp:p1:hamiltonian-real})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:rs-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-b@L16-L16
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-b@L16-L16
CONTRACT_ID: stepN:p11:rs-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-b@L16-L16 | cited at this line (step; \Kref{bp:p1:ext-mvt})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:rs-cd
KIND: step
TITLE: (c),(d)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-cd@L17-L17
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-cd@L17-L17
CONTRACT_ID: stepN:p11:rs-cd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:theta-derivative, bpN:p7:resonant-gradient, bpN:p11:ext-part4
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:theta-derivative | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-cd@L17-L17 | cited at this line (step; \ref{bpN:p7:theta-derivative})
EDGE: bpN:p7:resonant-gradient | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-cd@L17-L17 | cited at this line (step; \ref{bpN:p7:resonant-gradient})
EDGE: bpN:p11:ext-part4 | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-cd@L17-L17 | cited at this line (step; \ref{bpN:p11:ext-part4})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p11:conj
KIND: lemma
TITLE: Conjugation
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:conj@L20-L22
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:conj@L23-L25
CONTRACT_ID: bpN:p11:conj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:cj
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:cj | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:conj@L24-L24 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:cj
KIND: step
TITLE: Chain rule
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:cj@L24-L24
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:cj@L24-L24
CONTRACT_ID: stepN:p11:cj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:conjugation
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:conjugation | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:cj@L24-L24 | cited at this line (step; \ref{bpN:p7:conjugation})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p11:preimage
KIND: lemma
TITLE: Real preimages of a near-identity map
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L27-L29
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L30-L32
CONTRACT_ID: bpN:p11:preimage
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:preimage, bpN:p4:general-cauchy, bpN:p7:ext-banach
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:preimage | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L31-L31 | cited at this line (proof; \ref{bpN:p7:preimage})
EDGE: bpN:p4:general-cauchy | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L31-L31 | cited at this line (proof; \ref{bpN:p4:general-cauchy})
EDGE: bpN:p7:ext-banach | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L31-L31 | cited at this line (proof; \ref{bpN:p7:ext-banach})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p11:continuation
KIND: lemma
TITLE: Continuation with independent periodic and transverse coordinates
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:continuation@L35-L37
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:continuation@L38-L41
CONTRACT_ID: bpN:p11:continuation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:ct-data, stepN:p11:ct-concl, bpN:p3:gen-maximal
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:ct-data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:continuation@L39-L39 | proof step of this result
EDGE: stepN:p11:ct-concl | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:continuation@L40-L40 | proof step of this result
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:continuation@L36-L36 | cited at this line (statement; \ref{bpN:p3:gen-maximal})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:ct-data
KIND: step
TITLE: Uniform data
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ct-data@L39-L39
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ct-data@L39-L39
CONTRACT_ID: stepN:p11:ct-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:uc-delta, bpN:p3:gen-lip
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:uc-delta | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ct-data@L39-L39 | cited at this line (step; \ref{stepN:p3:uc-delta})
EDGE: bpN:p3:gen-lip | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ct-data@L39-L39 | cited at this line (step; \ref{bpN:p3:gen-lip})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:ct-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ct-concl@L40-L40
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ct-concl@L40-L40
CONTRACT_ID: stepN:p11:ct-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-continuation
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-continuation | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ct-concl@L40-L40 | cited at this line (step; \ref{bpN:p3:gen-continuation})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p11:transfer
KIND: lemma
TITLE: Stopped transfer through a symplectic map
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L43-L52
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L53-L61
CONTRACT_ID: bpN:p11:transfer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:tr-orbit, stepN:p11:tr-E, stepN:p11:tr-bounds, stepN:p11:tr-open, stepN:p11:tr-closed, stepN:p11:tr-concl, bpN:p11:conj, bpN:p7:transfer, bpN:p7:stopped-extension
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:tr-orbit | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L55-L55 | proof step of this result
EDGE: stepN:p11:tr-E | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L56-L56 | proof step of this result
EDGE: stepN:p11:tr-bounds | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L57-L57 | proof step of this result
EDGE: stepN:p11:tr-open | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L58-L58 | proof step of this result
EDGE: stepN:p11:tr-closed | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L59-L59 | proof step of this result
EDGE: stepN:p11:tr-concl | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L60-L60 | proof step of this result
EDGE: bpN:p11:conj | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L44-L44 | cited at this line (statement; \ref{bpN:p11:conj})
EDGE: bpN:p7:transfer | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L51-L51 | cited at this line (statement; \ref{bpN:p7:transfer}; in \source: provenance unless consumed)
EDGE: bpN:p7:stopped-extension | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L51-L51 | cited at this line (statement; \ref{bpN:p7:stopped-extension}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:tr-orbit
KIND: step
TITLE: A normal-form orbit
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-orbit@L55-L55
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-orbit@L55-L55
CONTRACT_ID: stepN:p11:tr-orbit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:real-system, bpN:p3:gen-maximal
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:real-system | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-orbit@L55-L55 | cited at this line (step; \ref{bpN:p11:real-system})
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-orbit@L55-L55 | cited at this line (step; \ref{bpN:p3:gen-maximal})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:tr-E
KIND: step
TITLE: The good set
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-E@L56-L56
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-E@L56-L56
CONTRACT_ID: stepN:p11:tr-E
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:tr-bounds
KIND: step
TITLE: Bounds on every prefix
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-bounds@L57-L57
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-bounds@L57-L57
CONTRACT_ID: stepN:p11:tr-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:tr-open
KIND: step
TITLE: $E$ is open in $[0,t_1]$
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-open@L58-L58
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-open@L58-L58
CONTRACT_ID: stepN:p11:tr-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:conj, bpN:p3:gen-uniqueness
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:conj | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-open@L58-L58 | cited at this line (step; \ref{bpN:p11:conj})
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-open@L58-L58 | cited at this line (step; \ref{bpN:p3:gen-uniqueness})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:tr-closed
KIND: step
TITLE: $E$ is closed
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59
CONTRACT_ID: stepN:p11:tr-closed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:tr-bounds, bpN:p11:continuation
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:tr-bounds | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59 | cited at this line (step; \ref{stepN:p11:tr-bounds})
EDGE: bpN:p11:continuation | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59 | cited at this line (step; \ref{bpN:p11:continuation})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:tr-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-concl@L60-L60
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-concl@L60-L60
CONTRACT_ID: stepN:p11:tr-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:tr-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:tr-bounds | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-concl@L60-L60 | cited at this line (step; \ref{stepN:p11:tr-bounds})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p11:nonresonant
KIND: proposition
TITLE: Nonresonant stability in the extended phase space
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L65-L68
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L69-L74
CONTRACT_ID: bpN:p11:nonresonant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:nr-nf, stepN:p11:nr-t12, stepN:p11:nr-t3, stepN:p11:nr-concl, bpN:p6:setting, bpN:p7:nonresonant
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:nr-nf | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L70-L70 | proof step of this result
EDGE: stepN:p11:nr-t12 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L71-L71 | proof step of this result
EDGE: stepN:p11:nr-t3 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L72-L72 | proof step of this result
EDGE: stepN:p11:nr-concl | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L73-L73 | proof step of this result
EDGE: bpN:p6:setting | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L66-L66 | cited at this line (statement; \ref{bpN:p6:cond-nr})
EDGE: bpN:p7:nonresonant | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L67-L67 | cited at this line (statement; \ref{bpN:p7:nonresonant}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:nr-nf
KIND: step
TITLE: Normal form
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:nr-nf@L70-L70
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:nr-nf@L70-L70
CONTRACT_ID: stepN:p11:nr-nf
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:nf
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:nf | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:nr-nf@L70-L70 | cited at this line (step; \ref{bpN:p11:nf})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:nr-t12
KIND: step
TITLE: (T1), (T2)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:nr-t12@L71-L71
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:nr-t12@L71-L71
CONTRACT_ID: stepN:p11:nr-t12
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:preimage
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:preimage | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:nr-t12@L71-L71 | cited at this line (step; \ref{bpN:p11:preimage})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:nr-t3
KIND: step
TITLE: (T3)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:nr-t3@L72-L72
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:nr-t3@L72-L72
CONTRACT_ID: stepN:p11:nr-t3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:exit-ball, bpN:p11:real-system
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:exit-ball | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:nr-t3@L72-L72 | cited at this line (step; \ref{bpN:p7:exit-ball})
EDGE: bpN:p11:real-system | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:nr-t3@L72-L72 | cited at this line (step; \ref{bpN:p11:real-system})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:nr-concl
KIND: step
TITLE: Transfer
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:nr-concl@L73-L73
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:nr-concl@L73-L73
CONTRACT_ID: stepN:p11:nr-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:transfer
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:transfer | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:nr-concl@L73-L73 | cited at this line (step; \ref{bpN:p11:transfer})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p11:energy-free
KIND: lemma
TITLE: Energy confinement near a resonance, convex case, no bound on $\omega$
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:energy-free@L78-L84
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:energy-free@L85-L98
CONTRACT_ID: bpN:p11:energy-free
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:ef-tube, stepN:p11:ef-adm, stepN:p11:ef-en, stepN:p11:ef-id, stepN:p11:ef-C, stepN:p11:ef-contra, bpN:p7:no-exit, bpN:p7:exit-ball
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:ef-tube | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:energy-free@L87-L87 | proof step of this result
EDGE: stepN:p11:ef-adm | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:energy-free@L88-L88 | proof step of this result
EDGE: stepN:p11:ef-en | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:energy-free@L89-L89 | proof step of this result
EDGE: stepN:p11:ef-id | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:energy-free@L90-L90 | proof step of this result
EDGE: stepN:p11:ef-C | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:energy-free@L92-L92 | proof step of this result
EDGE: stepN:p11:ef-contra | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:energy-free@L97-L97 | proof step of this result
EDGE: bpN:p7:no-exit | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:energy-free@L83-L83 | cited at this line (statement; \ref{bpN:p7:no-exit}; in \source: provenance unless consumed)
EDGE: bpN:p7:exit-ball | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:energy-free@L86-L86 | cited at this line (proof; \ref{bpN:p7:exit-ball})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:ef-tube
KIND: step
TITLE: The orbit stretch lies in the small tube
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-tube@L87-L87
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-tube@L87-L87
CONTRACT_ID: stepN:p11:ef-tube
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:ef-adm
KIND: step
TITLE: Admissibility
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-adm@L88-L88
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-adm@L88-L88
CONTRACT_ID: stepN:p11:ef-adm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:ef-en
KIND: step
TITLE: Energy inequality
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89
CONTRACT_ID: stepN:p11:ef-en
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:energy-core, bpN:p11:real-system
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:energy-core | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | cited at this line (step; \ref{bpN:p7:energy-core})
EDGE: bpN:p11:real-system | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | cited at this line (step; \ref{bpN:p11:real-system})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:ef-id
KIND: step
TITLE: The identity
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-id@L90-L91
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-id@L90-L91
CONTRACT_ID: stepN:p11:ef-id
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:ef-C
KIND: step
TITLE: Estimate of $C$
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L96
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L96
CONTRACT_ID: stepN:p11:ef-C
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:real-system, stepN:p11:ef-id, bpN:p11:bracket, stepN:p11:ef-tube
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:real-system | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L92 | cited at this line (step; \ref{bpN:p11:real-system})
EDGE: stepN:p11:ef-id | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L92 | cited at this line (step; \ref{bpN:p11:eq:lie})
EDGE: bpN:p11:bracket | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L94-L94 | cited at this line (step; \ref{bpN:p11:bracket})
EDGE: stepN:p11:ef-tube | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L94-L94 | cited at this line (step; \ref{stepN:p11:ef-tube})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:ef-contra
KIND: step
TITLE: Contradiction
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-contra@L97-L97
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-contra@L97-L97
CONTRACT_ID: stepN:p11:ef-contra
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p11:resonant
KIND: proposition
TITLE: Resonant stability in the extended phase space, convex case
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L100-L103
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L104-L110
CONTRACT_ID: bpN:p11:resonant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:rs-red, stepN:p11:rs-nf, stepN:p11:rs-t12, stepN:p11:rs-t3, stepN:p11:rs-concl, bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:rs-red | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L105-L105 | proof step of this result
EDGE: stepN:p11:rs-nf | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L106-L106 | proof step of this result
EDGE: stepN:p11:rs-t12 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L107-L107 | proof step of this result
EDGE: stepN:p11:rs-t3 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L108-L108 | proof step of this result
EDGE: stepN:p11:rs-concl | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L109-L109 | proof step of this result
EDGE: bpN:p6:setting | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L101-L101 | cited at this line (statement; \ref{bpN:p6:cond-L})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:rs-red
KIND: step
TITLE: Reductions
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-red@L105-L105
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-red@L105-L105
CONTRACT_ID: stepN:p11:rs-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:nf
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:nf | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-red@L105-L105 | cited at this line (step; \ref{bpN:p11:nf})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:rs-nf
KIND: step
TITLE: Normal form
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-nf@L106-L106
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-nf@L106-L106
CONTRACT_ID: stepN:p11:rs-nf
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:rs-t12
KIND: step
TITLE: (T1), (T2) in $\abs\cdot_*=\norm\cdot_2$
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t12@L107-L107
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t12@L107-L107
CONTRACT_ID: stepN:p11:rs-t12
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:preimage, stepN:p11:nr-t12
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:preimage | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t12@L107-L107 | cited at this line (step; \ref{bpN:p11:preimage})
EDGE: stepN:p11:nr-t12 | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t12@L107-L107 | cited at this line (step; \ref{stepN:p11:nr-t12})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:rs-t3
KIND: step
TITLE: (T3)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t3@L108-L108
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t3@L108-L108
CONTRACT_ID: stepN:p11:rs-t3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:energy-free
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:energy-free | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t3@L108-L108 | cited at this line (step; \ref{bpN:p11:energy-free})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:rs-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-concl@L109-L109
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-concl@L109-L109
CONTRACT_ID: stepN:p11:rs-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:transfer
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:transfer | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-concl@L109-L109 | cited at this line (step; \ref{bpN:p11:transfer})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p11:hessian
KIND: lemma
TITLE: Hessian and sizes (nonempty $G$)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:hessian@L114-L116
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:hessian@L117-L119
CONTRACT_ID: bpN:p11:hessian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:hs-op, bpN:p1:holo-real
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:hs-op | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:hessian@L118-L118 | proof step of this result
EDGE: bpN:p1:holo-real | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:hessian@L115-L115 | cited at this line (statement; \ref{bpN:p1:holo-real})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpN:p0:partial, which part p11c proves or sets up]

NODE: stepN:p11:hs-op
KIND: step
TITLE: Operator norm
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:hs-op@L118-L118
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:hs-op@L118-L118
CONTRACT_ID: stepN:p11:hs-op
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p11:block-setting
KIND: definition
TITLE: Sets and the extended system for the block theorem
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-setting@L121-L123
PROOF_SOURCE: -
CONTRACT_ID: bpN:p11:block-setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:constants | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-setting@L122-L122 | cited at this line (statement; \ref{bpN:p11:constants})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p11:domain
KIND: lemma
TITLE: Analyticity, norm and field on the block domain
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L125-L127
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L128-L132
CONTRACT_ID: bpN:p11:domain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:dm-pts, stepN:p11:dm-norm, stepN:p11:dm-field, bpN:p11:block-setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:dm-pts | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L129-L129 | proof step of this result
EDGE: stepN:p11:dm-norm | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L130-L130 | proof step of this result
EDGE: stepN:p11:dm-field | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L131-L131 | proof step of this result
EDGE: bpN:p11:block-setting | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L126-L126 | cited at this line (statement; \ref{bpN:p11:block-setting})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:dm-pts
KIND: step
TITLE: Complex points
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:dm-pts@L129-L129
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:dm-pts@L129-L129
CONTRACT_ID: stepN:p11:dm-pts
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:hessian
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:hessian | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:dm-pts@L129-L129 | cited at this line (step; \ref{bpN:p11:hessian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:dm-norm
KIND: step
TITLE: Norm
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:dm-norm@L130-L130
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:dm-norm@L130-L130
CONTRACT_ID: stepN:p11:dm-norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:ext-part4
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:ext-part4 | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:dm-norm@L130-L130 | cited at this line (step; \ref{bpN:p11:ext-part4})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:dm-field
KIND: step
TITLE: Field
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:dm-field@L131-L131
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:dm-field@L131-L131
CONTRACT_ID: stepN:p11:dm-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:real-system, bpN:p11:ext-class
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:real-system | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:dm-field@L131-L131 | cited at this line (step; \ref{bpN:p11:real-system})
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:dm-field@L131-L131 | cited at this line (step; \ref{bpN:p11:ext-class})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p11:block-data
KIND: lemma
TITLE: Block data from the covering lemma
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L134-L137
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L138-L142
CONTRACT_ID: bpN:p11:block-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:bd-cover, stepN:p11:bd-24, stepN:p11:bd-5, bpN:p11:block-setting, bpN:p8:covering, bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:bd-cover | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L139-L139 | proof step of this result
EDGE: stepN:p11:bd-24 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L140-L140 | proof step of this result
EDGE: stepN:p11:bd-5 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L141-L141 | proof step of this result
EDGE: bpN:p11:block-setting | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L135-L135 | cited at this line (statement; \ref{bpN:p11:block-setting})
EDGE: bpN:p8:covering | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L135-L135 | cited at this line (statement; \ref{bpN:p8:covering})
EDGE: bpN:p6:setting | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L136-L136 | cited at this line (statement; \ref{bpN:p6:cond-L})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:bd-cover
KIND: step
TITLE: Covering
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139
CONTRACT_ID: stepN:p11:bd-cover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:covering, bpN:p11:hessian
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:covering | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139 | cited at this line (step; \ref{bpN:p8:covering})
EDGE: bpN:p11:hessian | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139 | cited at this line (step; \ref{bpN:p11:hessian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:bd-24
KIND: step
TITLE: (2)--(4)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140
CONTRACT_ID: stepN:p11:bd-24
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:cutoffs, bpN:p6:lipschitz, bpN:p11:hom
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:cutoffs | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140 | cited at this line (step; \ref{bpN:p8:cutoffs})
EDGE: bpN:p6:lipschitz | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140 | cited at this line (step; \ref{bpN:p6:lipschitz})
EDGE: bpN:p11:hom | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140 | cited at this line (step; \ref{bpN:p11:hom})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:bd-5
KIND: step
TITLE: (5)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-5@L141-L141
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-5@L141-L141
CONTRACT_ID: stepN:p11:bd-5
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p11:block
KIND: theorem
TITLE: Stopped block stability (Pos93 Theorem 1 with slow parameters)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L144-L147
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L148-L155
CONTRACT_ID: bpN:p11:block
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:bl-block, stepN:p11:bl-sl, stepN:p11:bl-ext, stepN:p11:bl-theta, stepN:p11:bl-res, bpN:p11:block-setting, bpN:p11:b-change
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:bl-block | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L150-L150 | proof step of this result
EDGE: stepN:p11:bl-sl | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L151-L151 | proof step of this result
EDGE: stepN:p11:bl-ext | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L152-L152 | proof step of this result
EDGE: stepN:p11:bl-theta | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L153-L153 | proof step of this result
EDGE: stepN:p11:bl-res | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L154-L154 | proof step of this result
EDGE: bpN:p11:block-setting | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L145-L145 | cited at this line (statement; \ref{bpN:p11:block-setting})
EDGE: bpN:p11:b-change | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L146-L146 | cited at this line (statement; \ref{bpN:p11:b-change}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:bl-block
KIND: step
TITLE: Block
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-block@L150-L150
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-block@L150-L150
CONTRACT_ID: stepN:p11:bl-block
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:block-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:block-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-block@L150-L150 | cited at this line (step; \ref{bpN:p11:block-data})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:bl-sl
KIND: step
TITLE: (SL)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-sl@L151-L151
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-sl@L151-L151
CONTRACT_ID: stepN:p11:bl-sl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:bl-ext
KIND: step
TITLE: Extended system
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-ext@L152-L152
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-ext@L152-L152
CONTRACT_ID: stepN:p11:bl-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:domain
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:domain | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-ext@L152-L152 | cited at this line (step; \ref{bpN:p11:domain})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:bl-theta
KIND: step
TITLE: Case $\Lambda=\Theta$
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-theta@L153-L153
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-theta@L153-L153
CONTRACT_ID: stepN:p11:bl-theta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:nonresonant, bpN:p11:block-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:nonresonant | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-theta@L153-L153 | cited at this line (step; \ref{bpN:p11:nonresonant})
EDGE: bpN:p11:block-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-theta@L153-L153 | cited at this line (step; \ref{bpN:p11:block-data})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:bl-res
KIND: step
TITLE: Case $\Lambda\ne\Theta,\Z^n$
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-res@L154-L154
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-res@L154-L154
CONTRACT_ID: stepN:p11:bl-res
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:resonant, bpN:p11:block-data, bpN:p11:domain
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:resonant | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-res@L154-L154 | cited at this line (step; \ref{bpN:p11:resonant})
EDGE: bpN:p11:block-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-res@L154-L154 | cited at this line (step; \ref{bpN:p11:block-data})
EDGE: bpN:p11:domain | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-res@L154-L154 | cited at this line (step; \ref{bpN:p11:domain})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:final-empty
KIND: step
TITLE: Empty $G$
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-empty@L160-L160
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-empty@L160-L160
CONTRACT_ID: stepN:p11:final-empty
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:hessian
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:hessian | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-empty@L160-L160 | cited at this line (step; \ref{bpN:p11:hessian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:final-data
KIND: step
TITLE: Data and constants
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-data@L161-L161
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-data@L161-L161
CONTRACT_ID: stepN:p11:final-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:constants | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-data@L161-L161 | cited at this line (step; \ref{bpN:p11:constants})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:final-mu
KIND: step
TITLE: The threshold
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-mu@L162-L162
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-mu@L162-L162
CONTRACT_ID: stepN:p11:final-mu
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:exponents, stepN:p11:final-time
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:exponents | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-mu@L162-L162 | cited at this line (step; \ref{bpN:p11:exponents})
EDGE: stepN:p11:final-time | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-mu@L162-L162 | cited at this line (step; \ref{stepN:p11:final-time})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:final-time
KIND: step
TITLE: Time
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-time@L163-L163
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-time@L163-L163
CONTRACT_ID: stepN:p11:final-time
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:ext-rpow
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:ext-rpow | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-time@L163-L163 | cited at this line (step; \ref{bpN:p11:ext-rpow})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:final-given
KIND: step
TITLE: Given $\mu,P,C,z,t$
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-given@L164-L164
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-given@L164-L164
CONTRACT_ID: stepN:p11:final-given
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:final-orbit
KIND: step
TITLE: The orbit
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-orbit@L165-L165
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-orbit@L165-L165
CONTRACT_ID: stepN:p11:final-orbit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:orbit, bpN:p11:domain
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:orbit | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-orbit@L165-L165 | cited at this line (step; \ref{bpN:p11:orbit})
EDGE: bpN:p11:domain | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-orbit@L165-L165 | cited at this line (step; \ref{bpN:p11:domain})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:final-sign
KIND: step
TITLE: Sign
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-sign@L166-L166
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-sign@L166-L166
CONTRACT_ID: stepN:p11:final-sign
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:block
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:block | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-sign@L166-L166 | cited at this line (step; \ref{bpN:p11:block})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:final-drift
KIND: step
TITLE: Drift
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-drift@L167-L167
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-drift@L167-L167
CONTRACT_ID: stepN:p11:final-drift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepN:p11:final-order
KIND: step
TITLE: Quantifier order
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-order@L168-L168
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-order@L168-L168
CONTRACT_ID: stepN:p11:final-order
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpN:p11:b-change
KIND: claim
TITLE: Change of the covering parameter
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:b-change@L173-L175
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:b-change@L173-L175
CONTRACT_ID: bpN:p11:b-change
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:energy-free, bpN:p8:covering, bpN:p11:block-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:energy-free | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:b-change@L174-L174 | cited at this line (statement; \ref{bpN:p11:energy-free})
EDGE: bpN:p8:covering | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:b-change@L174-L174 | cited at this line (statement; \ref{bpN:p8:covering})
EDGE: bpN:p11:block-data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:b-change@L174-L174 | cited at this line (statement; \ref{bpN:p11:block-data})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpN:p11:deviations
KIND: claim
TITLE: What is proved; exponents; deviations
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:deviations@L177-L182
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:deviations@L177-L182
CONTRACT_ID: bpN:p11:deviations
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:final-time, stepN:p11:final-drift, stepN:p11:nf-case, stepN:p11:nf-induct, bpN:p11:energy-free
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:final-time | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:deviations@L178-L178 | cited at this line (statement; \ref{stepN:p11:final-time})
EDGE: stepN:p11:final-drift | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:deviations@L178-L178 | cited at this line (statement; \ref{stepN:p11:final-drift})
EDGE: stepN:p11:nf-case | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:deviations@L179-L179 | cited at this line (statement; \ref{stepN:p11:nf-case})
EDGE: stepN:p11:nf-induct | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:deviations@L179-L179 | cited at this line (statement; \ref{stepN:p11:nf-induct})
EDGE: bpN:p11:energy-free | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:deviations@L180-L180 | cited at this line (statement; \ref{bpN:p11:energy-free})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpN:p11:errata
KIND: claim
TITLE: Suspected defects in the sources; doubts
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:errata@L184-L186
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:errata@L184-L186
CONTRACT_ID: bpN:p11:errata
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpN:p11:status
KIND: claim
TITLE: Status and remaining obligations
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:status@L188-L190
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:status@L188-L190
CONTRACT_ID: bpN:p11:status
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:energy-free, bpN:p11:transfer, bpN:p11:ext-part4, bpN:p11:nf, bpN:p11:continuation, bpN:p11:block
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:energy-free | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:status@L189-L189 | cited at this line (statement; \ref{bpN:p11:energy-free})
EDGE: bpN:p11:transfer | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:status@L189-L189 | cited at this line (statement; \ref{bpN:p11:transfer})
EDGE: bpN:p11:ext-part4 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:status@L189-L189 | cited at this line (statement; \ref{bpN:p11:ext-part4})
EDGE: bpN:p11:nf | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:status@L189-L189 | cited at this line (statement; \ref{bpN:p11:nf})
EDGE: bpN:p11:continuation | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:status@L189-L189 | cited at this line (statement; \ref{bpN:p11:continuation})
EDGE: bpN:p11:block | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:status@L189-L189 | cited at this line (statement; \ref{bpN:p11:block})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
