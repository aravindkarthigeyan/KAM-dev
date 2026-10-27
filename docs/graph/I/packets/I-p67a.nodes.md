NODE: bpI:p6:det-formula
KIND: lemma
TITLE: Determinant of the Kepler bordered matrix
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:det-formula@L13-L19
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:det-formula@L20-L35
CONTRACT_ID: bpI:p6:det-formula
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p6:expand, stepI:p6:eval
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p6:expand | blueprint-I/parts/p6-kepler.tex#bpI:p6:det-formula@L21-L21 | proof step of this result
EDGE: stepI:p6:eval | blueprint-I/parts/p6-kepler.tex#bpI:p6:det-formula@L29-L29 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p6:expand
KIND: step
TITLE: Expansion
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:expand@L21-L28
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:expand@L21-L28
CONTRACT_ID: stepI:p6:expand
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:keplerborder#keplerBorder
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:keplerborder#keplerBorder | blueprint-I/parts/p6-kepler.tex#stepI:p6:expand@L23-L23 | cited at this line (step; \ref{bpI:p0:keplerborder})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p6:eval
KIND: step
TITLE: Evaluation
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:eval@L29-L34
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:eval@L29-L34
CONTRACT_ID: stepI:p6:eval
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

NODE: bpI:p6:kepler
KIND: theorem
TITLE: I-KEPLER, proof
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:kepler@L37-L42
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:kepler@L43-L48
CONTRACT_ID: bpI:p6:kepler
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p6:k-value, stepI:p6:k-pos
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p6:k-value | blueprint-I/parts/p6-kepler.tex#bpI:p6:kepler@L44-L44 | proof step of this result
EDGE: stepI:p6:k-pos | blueprint-I/parts/p6-kepler.tex#bpI:p6:kepler@L46-L46 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpI:p0:kepler, which part p6 proves or sets up]

NODE: stepI:p6:k-value
KIND: step
TITLE: Value
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:k-value@L44-L44
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:k-value@L44-L44
CONTRACT_ID: stepI:p6:k-value
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:det-formula
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:det-formula | blueprint-I/parts/p6-kepler.tex#stepI:p6:k-value@L44-L44 | cited at this line (step; \ref{bpI:p6:det-formula})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p6:k-pos
KIND: step
TITLE: Positivity
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:k-pos@L46-L47
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:k-pos@L46-L47
CONTRACT_ID: stepI:p6:k-pos
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

NODE: bpI:p6:totality
KIND: claim
TITLE: Lean totality
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:totality@L50-L53
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:totality@L50-L53
CONTRACT_ID: bpI:p6:totality
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:kepler
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:kepler | blueprint-I/parts/p6-kepler.tex#bpI:p6:totality@L51-L51 | cited at this line (statement; \ref{bpI:p6:kepler})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p6:kep-ham
KIND: definition
TITLE: The Kepler--rotation Hamiltonian
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-ham@L58-L67
PROOF_SOURCE: -
CONTRACT_ID: bpI:p6:kep-ham
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

NODE: bpI:p6:kep-border
KIND: lemma
TITLE: Frequency map and bordered Hessian of $h_{\kappa,\Omega}$
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-border@L69-L87
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-border@L88-L108
CONTRACT_ID: bpI:p6:kep-border
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p6:kb-real, stepI:p6:kb-grad, stepI:p6:kb-hess, stepI:p6:kb-entries, stepI:p6:kb-det, bpI:p0:bordered#borderedHessian, bpI:p0:realham#frequencyMap, bpI:p0:keplerborder#keplerBorder
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p6:kb-real | blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-border@L89-L89 | proof step of this result
EDGE: stepI:p6:kb-grad | blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-border@L94-L94 | proof step of this result
EDGE: stepI:p6:kb-hess | blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-border@L98-L98 | proof step of this result
EDGE: stepI:p6:kb-entries | blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-border@L101-L101 | proof step of this result
EDGE: stepI:p6:kb-det | blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-border@L106-L106 | proof step of this result
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-border@L69-L69 | this result carries \frozen{KAM.Iso.borderedHessian} (a statement about it)
EDGE: bpI:p0:realham#frequencyMap | blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-border@L69-L69 | this result carries \frozen{KAM.frequencyMap} (a statement about it)
EDGE: bpI:p0:keplerborder#keplerBorder | blueprint-I/parts/p6-kepler.tex#bpI:p6:kep-border@L69-L69 | this result carries \frozen{KAM.Iso.keplerBorder} (a statement about it)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p6:kb-real
KIND: step
TITLE: Real part near a real point
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-real@L89-L92
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-real@L89-L92
CONTRACT_ID: stepI:p6:kb-real
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

NODE: stepI:p6:kb-grad
KIND: step
TITLE: Gradient
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-grad@L94-L96
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-grad@L94-L96
CONTRACT_ID: stepI:p6:kb-grad
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

NODE: stepI:p6:kb-hess
KIND: step
TITLE: Derivative of the frequency map
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L99
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L99
CONTRACT_ID: stepI:p6:kb-hess
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

NODE: stepI:p6:kb-entries
KIND: step
TITLE: Entries of the bordered matrix
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L104
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L104
CONTRACT_ID: stepI:p6:kb-entries
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:bordered#borderedHessian, bpI:p0:keplerborder#keplerBorder
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L101 | cited at this line (step; \ref{bpI:p0:bordered})
EDGE: bpI:p0:keplerborder#keplerBorder | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L103-L103 | cited at this line (step; \ref{bpI:p0:keplerborder})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p6:kb-det
KIND: step
TITLE: Determinant
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L107
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L107
CONTRACT_ID: stepI:p6:kb-det
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:det-formula
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:det-formula | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L107-L107 | cited at this line (step; \ref{bpI:p6:det-formula})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p6:conversion-map
KIND: definition
TITLE: Period-one conversion map
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion-map@L112-L117
PROOF_SOURCE: -
CONTRACT_ID: bpI:p6:conversion-map
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

NODE: bpI:p6:conversion
KIND: lemma
TITLE: Conversion
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L119-L141
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L142-L155
CONTRACT_ID: bpI:p6:conversion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p6:cv-sympl, stepI:p6:cv-ham, stepI:p6:cv-border
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p6:cv-sympl | blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L143-L143 | proof step of this result
EDGE: stepI:p6:cv-ham | blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L149-L149 | proof step of this result
EDGE: stepI:p6:cv-border | blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L151-L151 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p6:cv-sympl
KIND: step
TITLE: Symplectic
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:cv-sympl@L143-L147
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:cv-sympl@L143-L147
CONTRACT_ID: stepI:p6:cv-sympl
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

NODE: stepI:p6:cv-ham
KIND: step
TITLE: Hamiltonian
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:cv-ham@L149-L149
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:cv-ham@L149-L149
CONTRACT_ID: stepI:p6:cv-ham
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

NODE: stepI:p6:cv-border
KIND: step
TITLE: Frequencies and bordered Hessian
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:cv-border@L151-L154
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:cv-border@L151-L154
CONTRACT_ID: stepI:p6:cv-border
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:kep-border
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:kep-border | blueprint-I/parts/p6-kepler.tex#stepI:p6:cv-border@L151-L151 | cited at this line (step; \ref{bpI:p6:kep-border})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p6:nondeg
KIND: corollary
TITLE: Nondegeneracy in period-one variables
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:nondeg@L157-L159
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:nondeg@L160-L163
CONTRACT_ID: bpI:p6:nondeg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p6:nd-domain, stepI:p6:nd-concl, bpI:p0:head
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p6:nd-domain | blueprint-I/parts/p6-kepler.tex#bpI:p6:nondeg@L161-L161 | proof step of this result
EDGE: stepI:p6:nd-concl | blueprint-I/parts/p6-kepler.tex#bpI:p6:nondeg@L162-L162 | proof step of this result
EDGE: bpI:p0:head | blueprint-I/parts/p6-kepler.tex#bpI:p6:nondeg@L158-L158 | cited at this line (statement; \ref{bpI:p0:head})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p6:nd-domain
KIND: step
TITLE: Domain
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-domain@L161-L161
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-domain@L161-L161
CONTRACT_ID: stepI:p6:nd-domain
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

NODE: stepI:p6:nd-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162
CONTRACT_ID: stepI:p6:nd-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:conversion, bpI:p6:kep-border
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:conversion | blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162 | cited at this line (step; \ref{bpI:p6:conversion})
EDGE: bpI:p6:kep-border | blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162 | cited at this line (step; \ref{bpI:p6:kep-border})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p6:uses
KIND: claim
TITLE: What is used where
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:uses@L165-L168
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#bpI:p6:uses@L165-L168
CONTRACT_ID: bpI:p6:uses
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:kepler, bpI:p6:nondeg, bpI:p7:nondeg, bpI:p6:conversion
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:kepler | blueprint-I/parts/p6-kepler.tex#bpI:p6:uses@L166-L166 | cited at this line (statement; \ref{bpI:p6:kepler})
EDGE: bpI:p6:nondeg | blueprint-I/parts/p6-kepler.tex#bpI:p6:uses@L166-L166 | cited at this line (statement; \ref{bpI:p6:nondeg})
EDGE: bpI:p7:nondeg | blueprint-I/parts/p6-kepler.tex#bpI:p6:uses@L166-L166 | cited at this line (statement; \ref{bpI:p7:nondeg})
EDGE: bpI:p6:conversion | blueprint-I/parts/p6-kepler.tex#bpI:p6:uses@L166-L166 | cited at this line (statement; \ref{bpI:p6:conversion})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p7:x-hol
KIND: external
TITLE: Holomorphic functions of several variables
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-hol@L32-L34
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:x-hol
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
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:x-weier
KIND: external
TITLE: Weierstrass
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-weier@L35-L35
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:x-weier
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
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:x-param
KIND: external
TITLE: Parameter integrals
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-param@L36-L36
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:x-param
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
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:x-schwarz
KIND: external
TITLE: Schwarz lemma (maximum modulus)
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-schwarz@L37-L37
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:x-schwarz
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
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:x-ift
KIND: external
TITLE: Inverse function theorem (real-analytic)
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-ift@L38-L38
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:x-ift
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
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:x-forms
KIND: external
TITLE: Exterior calculus on open subsets of $\R^m$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-forms@L39-L40
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:x-forms
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
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:x-change
KIND: external
TITLE: Change of variables in $\R$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-change@L41-L41
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:x-change
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
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:x-banach
KIND: external
TITLE: Banach's fixed point theorem
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-banach@L42-L42
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:x-banach
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
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: external item that cites \Kref{bp:p1:ext-banach}, \Kref{bp:p1:ext-mvt}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpI:p7:ham-eq
KIND: lemma
TITLE: Hamilton's equations
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:ham-eq@L51-L57
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:ham-eq@L58-L70
CONTRACT_ID: bpI:p7:ham-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:he-smooth, stepI:p7:he-deriv, stepI:p7:he-sol, N:bpN:p3:newton-reduction, bpI:p0:restricted#restrictedHamiltonian, bpI:p0:restricted#restrictedVectorField, bpI:p0:restricted#IsRestrictedSolutionOn
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:he-smooth | blueprint-I/parts/p7-delaunay.tex#bpI:p7:ham-eq@L59-L59 | proof step of this result
EDGE: stepI:p7:he-deriv | blueprint-I/parts/p7-delaunay.tex#bpI:p7:ham-eq@L61-L61 | proof step of this result
EDGE: stepI:p7:he-sol | blueprint-I/parts/p7-delaunay.tex#bpI:p7:ham-eq@L69-L69 | proof step of this result
EDGE: N:bpN:p3:newton-reduction | blueprint-I/parts/p7-delaunay.tex#bpI:p7:ham-eq@L54-L54 | cited at this line (statement; \Nref{bpN:p3:newton-reduction})
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#bpI:p7:ham-eq@L51-L51 | this result carries \frozen{KAM.Iso.restrictedHamiltonian} (a statement about it)
EDGE: bpI:p0:restricted#restrictedVectorField | blueprint-I/parts/p7-delaunay.tex#bpI:p7:ham-eq@L51-L51 | this result carries \frozen{KAM.Iso.restrictedVectorField} (a statement about it)
EDGE: bpI:p0:restricted#IsRestrictedSolutionOn | blueprint-I/parts/p7-delaunay.tex#bpI:p7:ham-eq@L51-L51 | this result carries \frozen{KAM.Iso.IsRestrictedSolutionOn} (a statement about it)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:he-smooth
KIND: step
TITLE: Smoothness
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-smooth@L59-L59
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-smooth@L59-L59
CONTRACT_ID: stepI:p7:he-smooth
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

NODE: stepI:p7:he-deriv
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L67
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L67
CONTRACT_ID: stepI:p7:he-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:restricted#restrictedHamiltonian, bpI:p0:restricted#restrictedVectorField, bpI:p0:restricted#IsRestrictedSolutionOn
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L67-L67 | cited at this line (step; \ref{bpI:p0:restricted})
EDGE: bpI:p0:restricted#restrictedVectorField | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L67-L67 | cited at this line (step; \ref{bpI:p0:restricted})
EDGE: bpI:p0:restricted#IsRestrictedSolutionOn | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L67-L67 | cited at this line (step; \ref{bpI:p0:restricted})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:he-sol
KIND: step
TITLE: Solution predicates
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69
CONTRACT_ID: stepI:p7:he-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p3:newton-reduction
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p3:newton-reduction | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | cited at this line (step; \Nref{bpN:p3:newton-reduction})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:newton
KIND: lemma
TITLE: Newtonian meaning of $V_\mu$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:newton@L72-L80
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:newton@L81-L86
CONTRACT_ID: bpI:p7:newton
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:nw-rot, stepI:p7:nw-force
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:nw-rot | blueprint-I/parts/p7-delaunay.tex#bpI:p7:newton@L82-L82 | proof step of this result
EDGE: stepI:p7:nw-force | blueprint-I/parts/p7-delaunay.tex#bpI:p7:newton@L84-L84 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:nw-rot
KIND: step
TITLE: Rotation
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nw-rot@L82-L82
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nw-rot@L82-L82
CONTRACT_ID: stepI:p7:nw-rot
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

NODE: stepI:p7:nw-force
KIND: step
TITLE: Force
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nw-force@L84-L85
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nw-force@L84-L85
CONTRACT_ID: stepI:p7:nw-force
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

NODE: bpI:p7:kepler-eq
KIND: proposition
TITLE: Kepler's equation, analytic solution
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L91-L114
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L115-L135
CONTRACT_ID: bpI:p7:kepler-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:ke-const, stepI:p7:ke-trig, stepI:p7:ke-contr, stepI:p7:ke-hol, stepI:p7:ke-a, stepI:p7:ke-b, stepI:p7:ke-c
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:ke-const | blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L116-L116 | proof step of this result
EDGE: stepI:p7:ke-trig | blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L119-L119 | proof step of this result
EDGE: stepI:p7:ke-contr | blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L121-L121 | proof step of this result
EDGE: stepI:p7:ke-hol | blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L125-L125 | proof step of this result
EDGE: stepI:p7:ke-a | blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L129-L129 | proof step of this result
EDGE: stepI:p7:ke-b | blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L131-L131 | proof step of this result
EDGE: stepI:p7:ke-c | blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L133-L133 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:ke-const
KIND: step
TITLE: Constants
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-const@L116-L117
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-const@L116-L117
CONTRACT_ID: stepI:p7:ke-const
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

NODE: stepI:p7:ke-trig
KIND: step
TITLE: Trigonometric bounds
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-trig@L119-L119
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-trig@L119-L119
CONTRACT_ID: stepI:p7:ke-trig
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

NODE: stepI:p7:ke-contr
KIND: step
TITLE: A contraction
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-contr@L121-L123
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-contr@L121-L123
CONTRACT_ID: stepI:p7:ke-contr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:ke-const, bpI:p7:x-banach
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:ke-const | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-contr@L122-L122 | cited at this line (step; \ref{stepI:p7:ke-const})
EDGE: bpI:p7:x-banach | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-contr@L123-L123 | cited at this line (step; \ref{bpI:p7:x-banach})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:ke-hol
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-hol@L125-L127
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-hol@L125-L127
CONTRACT_ID: stepI:p7:ke-hol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:x-hol, bpI:p7:x-weier
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:x-hol | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-hol@L125-L125 | cited at this line (step; \ref{bpI:p7:x-hol})
EDGE: bpI:p7:x-weier | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-hol@L127-L127 | cited at this line (step; \ref{bpI:p7:x-weier})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:ke-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-a@L129-L129
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-a@L129-L129
CONTRACT_ID: stepI:p7:ke-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:ke-trig
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:ke-trig | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-a@L129-L129 | cited at this line (step; \ref{stepI:p7:ke-trig})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:ke-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-b@L131-L131
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-b@L131-L131
CONTRACT_ID: stepI:p7:ke-b
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

NODE: stepI:p7:ke-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L134
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L134
CONTRACT_ID: stepI:p7:ke-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:ke-contr, K:bp:p1:holomorphic-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:ke-contr | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L133 | cited at this line (step; \ref{stepI:p7:ke-contr})
EDGE: K:bp:p1:holomorphic-analytic | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L134-L134 | cited at this line (step; \Kref{bp:p1:holomorphic-analytic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:ke-ift
KIND: claim
TITLE: Alternative route
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:ke-ift@L137-L139
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:ke-ift@L137-L139
CONTRACT_ID: bpI:p7:ke-ift
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

NODE: bpI:p7:elements
KIND: definition
TITLE: Kepler region and elements
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:elements@L144-L156
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:elements
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

NODE: bpI:p7:orbit-maps
KIND: definition
TITLE: Orbit maps
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps@L158-L168
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:orbit-maps
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:kepler-eq
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps@L159-L159 | cited at this line (statement; \ref{bpI:p7:kepler-eq})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:orbit-maps-e
KIND: proposition
TITLE: Orbit maps near $e=0$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps-e@L170-L174
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps-e@L175-L179
CONTRACT_ID: bpI:p7:orbit-maps-e
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:om-hol, stepI:p7:om-per, bpI:p7:kepler-eq
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:om-hol | blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps-e@L176-L176 | proof step of this result
EDGE: stepI:p7:om-per | blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps-e@L178-L178 | proof step of this result
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps-e@L171-L171 | cited at this line (statement; \ref{bpI:p7:kepler-eq})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:om-hol
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:om-hol@L176-L176
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:om-hol@L176-L176
CONTRACT_ID: stepI:p7:om-hol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:kepler-eq, bpI:p7:x-hol
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:om-hol@L176-L176 | cited at this line (step; \ref{bpI:p7:kepler-eq})
EDGE: bpI:p7:x-hol | blueprint-I/parts/p7-delaunay.tex#stepI:p7:om-hol@L176-L176 | cited at this line (step; \ref{bpI:p7:x-hol})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:om-per
KIND: step
TITLE: Periodicity, reality
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:om-per@L178-L178
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:om-per@L178-L178
CONTRACT_ID: stepI:p7:om-per
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:kepler-eq
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:om-per@L178-L178 | cited at this line (step; \ref{bpI:p7:kepler-eq})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:orbit-identities
KIND: proposition
TITLE: Identities for the orbit maps
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L181-L190
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L191-L203
CONTRACT_ID: bpI:p7:orbit-identities
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:oi-r, stepI:p7:oi-gam, stepI:p7:oi-en, stepI:p7:oi-d, bpI:p7:elements
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:oi-r | blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L194-L194 | proof step of this result
EDGE: stepI:p7:oi-gam | blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L197-L197 | proof step of this result
EDGE: stepI:p7:oi-en | blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L200-L200 | proof step of this result
EDGE: stepI:p7:oi-d | blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L202-L202 | proof step of this result
EDGE: bpI:p7:elements | blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L186-L186 | cited at this line (statement; \ref{bpI:p7:elements})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:oi-r
KIND: step
TITLE: Radius
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-r@L194-L195
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-r@L194-L195
CONTRACT_ID: stepI:p7:oi-r
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

NODE: stepI:p7:oi-gam
KIND: step
TITLE: Angular momentum, radial momentum
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-gam@L197-L198
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-gam@L197-L198
CONTRACT_ID: stepI:p7:oi-gam
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

NODE: stepI:p7:oi-en
KIND: step
TITLE: Energy
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200
CONTRACT_ID: stepI:p7:oi-en
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

NODE: stepI:p7:oi-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202
CONTRACT_ID: stepI:p7:oi-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:oi-r
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:oi-r | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202 | cited at this line (step; \ref{stepI:p7:oi-r})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:symplectic
KIND: proposition
TITLE: The Delaunay map is symplectic
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L205-L215
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L216-L238
CONTRACT_ID: bpI:p7:symplectic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sy-g, stepI:p7:sy-coord, stepI:p7:sy-compare, stepI:p7:sy-ext, stepI:p7:sy-field
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sy-g | blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L217-L217 | proof step of this result
EDGE: stepI:p7:sy-coord | blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L220-L220 | proof step of this result
EDGE: stepI:p7:sy-compare | blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L232-L232 | proof step of this result
EDGE: stepI:p7:sy-ext | blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L234-L234 | proof step of this result
EDGE: stepI:p7:sy-field | blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L237-L237 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:sy-g
KIND: step
TITLE: Reduction of the angle $g$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-g@L217-L218
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-g@L217-L218
CONTRACT_ID: stepI:p7:sy-g
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-g@L218-L218 | cited at this line (step; \ref{bpI:p7:orbit-identities})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:sy-coord
KIND: step
TITLE: Coordinates $(u,L,e)$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-coord@L220-L230
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-coord@L220-L230
CONTRACT_ID: stepI:p7:sy-coord
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

NODE: stepI:p7:sy-compare
KIND: step
TITLE: Comparison with $L\,d\ell$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232
CONTRACT_ID: stepI:p7:sy-compare
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sy-g
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sy-g | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232 | cited at this line (step; \ref{stepI:p7:sy-g})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:sy-ext
KIND: step
TITLE: Exterior derivative
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L235
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L235
CONTRACT_ID: stepI:p7:sy-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:x-forms
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:x-forms | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L234 | cited at this line (step; \ref{bpI:p7:x-forms})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:sy-field
KIND: step
TITLE: Hamiltonian fields
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L237-L237
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L237-L237
CONTRACT_ID: stepI:p7:sy-field
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

NODE: bpI:p7:chart
KIND: theorem
TITLE: Delaunay chart
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L240-L244
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L245-L259
CONTRACT_ID: bpI:p7:chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:ch-reg, stepI:p7:ch-inj, stepI:p7:ch-surj1, stepI:p7:ch-surj2, stepI:p7:ch-surj3, stepI:p7:ch-diffeo, bpI:p7:symplectic, bpI:p7:h0
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:ch-reg | blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L246-L246 | proof step of this result
EDGE: stepI:p7:ch-inj | blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L248-L248 | proof step of this result
EDGE: stepI:p7:ch-surj1 | blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L250-L250 | proof step of this result
EDGE: stepI:p7:ch-surj2 | blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L254-L254 | proof step of this result
EDGE: stepI:p7:ch-surj3 | blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L256-L256 | proof step of this result
EDGE: stepI:p7:ch-diffeo | blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L258-L258 | proof step of this result
EDGE: bpI:p7:symplectic | blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L241-L241 | cited at this line (statement; \ref{bpI:p7:symplectic})
EDGE: bpI:p7:h0 | blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L242-L242 | cited at this line (statement; \ref{bpI:p7:h0})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:ch-reg
KIND: step
TITLE: Regularity
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246
CONTRACT_ID: stepI:p7:ch-reg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:kepler-eq, bpI:p7:symplectic, bpI:p7:orbit-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | cited at this line (step; \ref{bpI:p7:kepler-eq})
EDGE: bpI:p7:symplectic | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | cited at this line (step; \ref{bpI:p7:symplectic})
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | cited at this line (step; \ref{bpI:p7:orbit-identities})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:ch-inj
KIND: step
TITLE: Injectivity modulo $2\pi$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-inj@L248-L248
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-inj@L248-L248
CONTRACT_ID: stepI:p7:ch-inj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-inj@L248-L248 | cited at this line (step; \ref{bpI:p7:orbit-identities})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:ch-surj1
KIND: step
TITLE: Surjectivity: the elements
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-surj1@L250-L253
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-surj1@L250-L253
CONTRACT_ID: stepI:p7:ch-surj1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:elements
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:elements | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-surj1@L250-L250 | cited at this line (step; \ref{bpI:p7:elements})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:ch-surj2
KIND: step
TITLE: Surjectivity: the anomaly
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-surj2@L254-L254
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-surj2@L254-L254
CONTRACT_ID: stepI:p7:ch-surj2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:kepler-eq
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-surj2@L254-L254 | cited at this line (step; \ref{bpI:p7:kepler-eq})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:ch-surj3
KIND: step
TITLE: Surjectivity: the momentum
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-surj3@L256-L256
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-surj3@L256-L256
CONTRACT_ID: stepI:p7:ch-surj3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-surj3@L256-L256 | cited at this line (step; \ref{bpI:p7:orbit-identities})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:ch-diffeo
KIND: step
TITLE: Quotient diffeomorphism
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258
CONTRACT_ID: stepI:p7:ch-diffeo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:kepler-eq, bpI:p7:x-ift
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | cited at this line (step; \ref{bpI:p7:kepler-eq})
EDGE: bpI:p7:x-ift | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | cited at this line (step; \ref{bpI:p7:x-ift})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
