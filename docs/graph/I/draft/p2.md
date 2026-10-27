NODE: bpI:p2:standing
KIND: definition
TITLE: Standing data of Part~\ref{bpI:p2}
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:standing@L36-L42
PROOF_SOURCE: -
CONTRACT_ID: bpI:p2:standing
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
NOTE: standing hypotheses of a part (a local hypothesis package, KIND definition; see SPEC) [pre-extract: dropped reference to bpI:p0:g1, which part p2 proves or sets up]

NODE: bpI:p2:ray
KIND: lemma
TITLE: Frequencies on the ray
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:ray@L50-L59
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:ray@L60-L65
CONTRACT_ID: bpI:p2:ray
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p2:ray-dio, stepI:p2:ray-margin
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p2:ray-dio | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:ray@L61-L61 | proof step of this result
EDGE: stepI:p2:ray-margin | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:ray@L63-L63 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:ray-dio
KIND: step
TITLE: Diophantine
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ray-dio@L61-L62
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ray-dio@L61-L62
CONTRACT_ID: stepI:p2:ray-dio
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:ray
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:ray | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ray-dio@L62-L62 | cited at this line (step; \ref{bpI:p1:ray})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:ray-margin
KIND: step
TITLE: Margins
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ray-margin@L63-L64
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ray-margin@L63-L64
CONTRACT_ID: stepI:p2:ray-margin
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

NODE: bpI:p2:constants
KIND: definition
TITLE: Constants
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:constants@L67-L91
PROOF_SOURCE: -
CONTRACT_ID: bpI:p2:constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:constants, bpI:p2:register, K:bp:p2:constants-register
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:constants@L69-L69 | cited at this line (statement; \Kref{bp:p2:constants})
EDGE: bpI:p2:register | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:constants@L88-L88 | cited at this line (statement; \ref{bpI:p2:register})
EDGE: K:bp:p2:constants-register | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:constants@L90-L90 | cited at this line (statement; \Kref{bp:p2:constants-register}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p2:admissible
KIND: definition
TITLE: Isoenergetic admissible parameterization
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:admissible@L93-L112
PROOF_SOURCE: -
CONTRACT_ID: bpI:p2:admissible
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:extended-basic, K:bp:p2:frequency, K:bp:p2:admissible, bpI:p2:ray, K:step:p2:cor-absorb
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:extended-basic | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:admissible@L101-L101 | cited at this line (statement; \ref{bpI:p1:extended-basic})
EDGE: K:bp:p2:frequency | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:admissible@L105-L105 | cited at this line (statement; \Kref{bp:p2:frequency})
EDGE: K:bp:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:admissible@L105-L105 | cited at this line (statement; \Kref{bp:p2:A3})
EDGE: bpI:p2:ray | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:admissible@L106-L106 | cited at this line (statement; \ref{bpI:p2:ray})
EDGE: K:step:p2:cor-absorb | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:admissible@L111-L111 | cited at this line (statement; \Kref{step:p2:cor-absorb})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p2:geometry
KIND: claim
TITLE: Geometry and frame perturbation: moved to Part~\ref{bpI:p1}
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:geometry@L120-L123
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:geometry@L120-L123
CONTRACT_ID: bpI:p2:geometry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:geometry-noA5, K:bp:p2:admissible, bpI:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:geometry-noA5 | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:geometry@L121-L121 | cited at this line (statement; \ref{bpI:p1:geometry-noA5})
EDGE: K:bp:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:geometry@L121-L121 | cited at this line (statement; \Kref{bp:p2:A5})
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:geometry@L122-L122 | cited at this line (statement; \ref{bpI:p2:B1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p2:perturbation
KIND: claim
TITLE: Frame perturbation: moved to Part~\ref{bpI:p1}
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:perturbation@L125-L127
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:perturbation@L125-L127
CONTRACT_ID: bpI:p2:perturbation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:perturbation-noA5, K:bp:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:perturbation-noA5 | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:perturbation@L126-L126 | cited at this line (statement; \ref{bpI:p1:perturbation-noA5})
EDGE: K:bp:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:perturbation@L126-L126 | cited at this line (statement; \Kref{bp:p2:A5})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p2:correction
KIND: lemma
TITLE: Size of the isoenergetic correction
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:correction@L132-L150
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:correction@L151-L166
CONTRACT_ID: bpI:p2:correction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p2:co-data, stepI:p2:co-xi0, stepI:p2:co-xi, stepI:p2:co-omega, stepI:p2:co-dk, stepI:p2:co-reg, bpI:p1:border-solve
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p2:co-data | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:correction@L152-L152 | proof step of this result
EDGE: stepI:p2:co-xi0 | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:correction@L154-L154 | proof step of this result
EDGE: stepI:p2:co-xi | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:correction@L156-L156 | proof step of this result
EDGE: stepI:p2:co-omega | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:correction@L160-L160 | proof step of this result
EDGE: stepI:p2:co-dk | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:correction@L162-L162 | proof step of this result
EDGE: stepI:p2:co-reg | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:correction@L164-L164 | proof step of this result
EDGE: bpI:p1:border-solve | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:correction@L133-L133 | cited at this line (statement; \ref{bpI:p1:border-solve})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:co-data
KIND: step
TITLE: Hypotheses of the border solve
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-data@L152-L153
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-data@L152-L153
CONTRACT_ID: stepI:p2:co-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:admissible, bpI:p1:geometry-noA5, bpI:p1:energy-approx, bpI:p1:extended-basic, K:bp:p2:periodicity, K:bp:p2:frame-basic
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-data@L153-L153 | cited at this line (step; \ref{bpI:p2:freq})
EDGE: bpI:p1:geometry-noA5 | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-data@L153-L153 | cited at this line (step; \ref{bpI:p1:geometry-noA5})
EDGE: bpI:p1:energy-approx | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-data@L153-L153 | cited at this line (step; \ref{bpI:p1:energy-approx})
EDGE: bpI:p1:extended-basic | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-data@L153-L153 | cited at this line (step; \ref{bpI:p1:extended-basic})
EDGE: K:bp:p2:periodicity | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-data@L153-L153 | cited at this line (step; \Kref{bp:p2:periodicity})
EDGE: K:bp:p2:frame-basic | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-data@L153-L153 | cited at this line (step; \Kref{bp:p2:frame-basic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:co-xi0
KIND: step
TITLE: The constants $\xi_0,\xi^\omega$
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-xi0@L154-L155
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-xi0@L154-L155
CONTRACT_ID: stepI:p2:co-xi0
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

NODE: stepI:p2:co-xi
KIND: step
TITLE: $\xi^N,g^L,\xi^L$
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-xi@L156-L159
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-xi@L156-L159
CONTRACT_ID: stepI:p2:co-xi
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:border-solve
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:border-solve | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-xi@L157-L157 | cited at this line (step; \ref{bpI:p1:border-solve})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:co-omega
KIND: step
TITLE: The frequency correction
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-omega@L160-L161
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-omega@L160-L161
CONTRACT_ID: stepI:p2:co-omega
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

NODE: stepI:p2:co-dk
KIND: step
TITLE: Derivative of the correction along $\omega$
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-dk@L162-L163
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-dk@L162-L163
CONTRACT_ID: stepI:p2:co-dk
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:frame-identities
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-dk@L163-L163 | cited at this line (step; \Kref{bp:p2:frame-identities})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:co-reg
KIND: step
TITLE: Regularity
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-reg@L164-L165
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-reg@L164-L165
CONTRACT_ID: stepI:p2:co-reg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:border-solve, K:bp:p2:periodicity
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:border-solve | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-reg@L165-L165 | cited at this line (step; \ref{bpI:p1:border-solve})
EDGE: K:bp:p2:periodicity | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:co-reg@L165-L165 | cited at this line (step; \Kref{bp:p2:periodicity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p2:newton-error
KIND: lemma
TITLE: The new errors
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L168-L181
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L182-L193
CONTRACT_ID: bpI:p2:newton-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p2:ne-invert, stepI:p2:ne-expand, stepI:p2:ne-reduce, stepI:p2:ne-est, stepI:p2:ne-energy, bpI:p2:correction
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p2:ne-invert | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L183-L183 | proof step of this result
EDGE: stepI:p2:ne-expand | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L185-L185 | proof step of this result
EDGE: stepI:p2:ne-reduce | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L187-L187 | proof step of this result
EDGE: stepI:p2:ne-est | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L189-L189 | proof step of this result
EDGE: stepI:p2:ne-energy | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L191-L191 | proof step of this result
EDGE: bpI:p2:correction | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-error@L169-L169 | cited at this line (statement; \ref{bpI:p2:correction})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:ne-invert
KIND: step
TITLE: Invertibility and domain
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-invert@L183-L184
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-invert@L183-L184
CONTRACT_ID: stepI:p2:ne-invert
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:geometry-noA5, K:step:p2:ne-invert, K:step:p2:ne-domain, K:bp:p1:neumann, K:bp:p2:frame-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:geometry-noA5 | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-invert@L184-L184 | cited at this line (step; \ref{bpI:p1:geometry-noA5})
EDGE: K:step:p2:ne-invert | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-invert@L184-L184 | cited at this line (step; \Kref{step:p2:ne-invert})
EDGE: K:step:p2:ne-domain | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-invert@L184-L184 | cited at this line (step; \Kref{step:p2:ne-domain})
EDGE: K:bp:p1:neumann | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-invert@L184-L184 | cited at this line (step; \Kref{bp:p1:neumann})
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-invert@L184-L184 | cited at this line (step; \Kref{bp:p2:frame-identities})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:ne-expand
KIND: step
TITLE: Expansion
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-expand@L185-L186
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-expand@L185-L186
CONTRACT_ID: stepI:p2:ne-expand
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

NODE: stepI:p2:ne-reduce
KIND: step
TITLE: Reduction by $Q$
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-reduce@L187-L188
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-reduce@L187-L188
CONTRACT_ID: stepI:p2:ne-reduce
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:reduced, bpI:p1:border-solve
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:reduced | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-reduce@L188-L188 | cited at this line (step; \ref{bpI:p1:reduced})
EDGE: bpI:p1:border-solve | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-reduce@L188-L188 | cited at this line (step; \ref{bpI:p1:border-solve})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:ne-est
KIND: step
TITLE: Estimates
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-est@L189-L190
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-est@L189-L190
CONTRACT_ID: stepI:p2:ne-est
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:geometry-noA5, bpI:p2:correction, K:bp:p2:hamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:geometry-noA5 | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-est@L190-L190 | cited at this line (step; \ref{bpI:p1:geometry-noA5})
EDGE: bpI:p2:correction | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-est@L190-L190 | cited at this line (step; \ref{bpI:p2:correction})
EDGE: K:bp:p2:hamiltonian | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-est@L190-L190 | cited at this line (step; \Kref{bp:p2:hamiltonian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:ne-energy
KIND: step
TITLE: The energy error
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L191-L192
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L191-L192
CONTRACT_ID: stepI:p2:ne-energy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:energy-approx, K:bp:p1:taylor
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:energy-approx | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L192-L192 | cited at this line (step; \ref{bpI:p1:energy-approx})
EDGE: K:bp:p1:taylor | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:ne-energy@L192-L192 | cited at this line (step; \Kref{bp:p1:taylor})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p2:newton-open
KIND: claim
TITLE: Why \Kref{bp:p2:newton-error} does not apply
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-open@L195-L200
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-open@L195-L200
CONTRACT_ID: bpI:p2:newton-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:newton-error, K:bp:p2:triangular, stepI:p2:ne-reduce
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:newton-error | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-open@L195-L195 | cited at this line (statement; \Kref{bp:p2:newton-error})
EDGE: K:bp:p2:triangular | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-open@L196-L196 | cited at this line (statement; \Kref{bp:p2:triangular})
EDGE: stepI:p2:ne-reduce | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:newton-open@L197-L197 | cited at this line (statement; \ref{stepI:p2:ne-reduce})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p2:torsion
KIND: lemma
TITLE: The new averaged extended torsion
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L205-L213
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L214-L225
CONTRACT_ID: bpI:p2:torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p2:to-frame, stepI:p2:to-omega, stepI:p2:to-row, stepI:p2:to-avg, stepI:p2:to-inv, bpI:p2:newton-error, bpI:p2:admissible, bpI:p2:iteration
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p2:to-frame | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L215-L215 | proof step of this result
EDGE: stepI:p2:to-omega | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L217-L217 | proof step of this result
EDGE: stepI:p2:to-row | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L219-L219 | proof step of this result
EDGE: stepI:p2:to-avg | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L221-L221 | proof step of this result
EDGE: stepI:p2:to-inv | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L223-L223 | proof step of this result
EDGE: bpI:p2:newton-error | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L206-L206 | cited at this line (statement; \ref{bpI:p2:newton-error})
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L206-L206 | cited at this line (statement; \ref{bpI:p2:B3})
EDGE: bpI:p2:iteration | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:torsion@L206-L206 | cited at this line (statement; \ref{bpI:p2:iteration})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:to-frame
KIND: step
TITLE: Frame
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L215-L216
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L215-L216
CONTRACT_ID: stepI:p2:to-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:perturbation-noA5, bpI:p2:correction, bpI:p1:extended-basic
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:perturbation-noA5 | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L216-L216 | cited at this line (step; \ref{bpI:p1:perturbation-noA5})
EDGE: bpI:p2:correction | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L216-L216 | cited at this line (step; \ref{bpI:p2:correction})
EDGE: bpI:p1:extended-basic | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-frame@L216-L216 | cited at this line (step; \ref{bpI:p1:extended-basic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:to-omega
KIND: step
TITLE: Effect of the frequency on the torsion block
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-omega@L217-L218
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-omega@L217-L218
CONTRACT_ID: stepI:p2:to-omega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:cauchy-corollaries
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:cauchy-corollaries | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-omega@L218-L218 | cited at this line (step; \Kref{bp:p1:cauchy-corollaries})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:to-row
KIND: step
TITLE: Effect on the energy row
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-row@L219-L220
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-row@L219-L220
CONTRACT_ID: stepI:p2:to-row
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:increments-open
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:increments-open | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-row@L220-L220 | cited at this line (step; \Kref{bp:p1:increments-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:to-avg
KIND: step
TITLE: The average
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L221-L222
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L221-L222
CONTRACT_ID: stepI:p2:to-avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:averages, K:bp:p2:matrix
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:averages | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L222-L222 | cited at this line (step; \Kref{bp:p2:averages})
EDGE: K:bp:p2:matrix | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-avg@L222-L222 | cited at this line (step; \Kref{bp:p2:matrix})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:to-inv
KIND: step
TITLE: Inverse (Lemma~A.1)
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-inv@L223-L224
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-inv@L223-L224
CONTRACT_ID: stepI:p2:to-inv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:neumann
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:neumann | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:to-inv@L224-L224 | cited at this line (step; \Kref{bp:p1:neumann})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p2:step
KIND: proposition
TITLE: The isoenergetic step
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L227-L241
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L242-L250
CONTRACT_ID: bpI:p2:step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p2:st-small, stepI:p2:st-error, stepI:p2:st-frame, bpI:p2:correction, bpI:p2:newton-error
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p2:st-small | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L243-L243 | proof step of this result
EDGE: stepI:p2:st-error | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L246-L246 | proof step of this result
EDGE: stepI:p2:st-frame | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L248-L248 | proof step of this result
EDGE: bpI:p2:correction | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L232-L232 | cited at this line (statement; \ref{bpI:p2:correction})
EDGE: bpI:p2:newton-error | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:step@L232-L232 | cited at this line (statement; \ref{bpI:p2:newton-error})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:st-small
KIND: step
TITLE: Smallness
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-small@L243-L245
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-small@L243-L245
CONTRACT_ID: stepI:p2:st-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-small@L244-L244 | cited at this line (step; \ref{bpI:p2:freq})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:st-error
KIND: step
TITLE: Correction and errors
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-error@L246-L247
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-error@L246-L247
CONTRACT_ID: stepI:p2:st-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:correction, bpI:p2:newton-error
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:correction | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-error@L247-L247 | cited at this line (step; \ref{bpI:p2:correction})
EDGE: bpI:p2:newton-error | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-error@L247-L247 | cited at this line (step; \ref{bpI:p2:newton-error})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:st-frame
KIND: step
TITLE: Ball, frame, torsion
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-frame@L248-L249
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-frame@L248-L249
CONTRACT_ID: stepI:p2:st-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:perturbation-noA5, bpI:p2:torsion
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:perturbation-noA5 | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-frame@L249-L249 | cited at this line (step; \ref{bpI:p1:perturbation-noA5})
EDGE: bpI:p2:torsion | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:st-frame@L249-L249 | cited at this line (step; \ref{bpI:p2:torsion})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p2:schedule
KIND: definition
TITLE: Schedule
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:schedule@L255-L259
PROOF_SOURCE: -
CONTRACT_ID: bpI:p2:schedule
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:schedule | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:schedule@L257-L257 | cited at this line (statement; \Kref{bp:p2:schedule})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p2:error-decay
KIND: lemma
TITLE: Decay
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:error-decay@L261-L263
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:error-decay@L264-L266
CONTRACT_ID: bpI:p2:error-decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:error-decay, K:bp:p1:iteration
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:error-decay | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:error-decay@L265-L265 | cited at this line (proof; \Kref{bp:p2:error-decay})
EDGE: K:bp:p1:iteration | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:error-decay@L265-L265 | cited at this line (proof; \Kref{bp:p1:iteration})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p2:iteration
KIND: proposition
TITLE: The induction
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L268-L283
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L284-L292
CONTRACT_ID: bpI:p2:iteration
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p2:it-sums, stepI:p2:it-stepsmall, stepI:p2:it-step, bpI:p2:admissible, bpI:p2:ray
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p2:it-sums | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L285-L285 | proof step of this result
EDGE: stepI:p2:it-stepsmall | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L288-L288 | proof step of this result
EDGE: stepI:p2:it-step | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L290-L290 | proof step of this result
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L269-L269 | cited at this line (statement; \ref{bpI:p2:B1})
EDGE: bpI:p2:ray | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:iteration@L276-L276 | cited at this line (statement; \ref{bpI:p2:ray})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpI:p0:g1, which part p2 proves or sets up]

NODE: stepI:p2:it-sums
KIND: step
TITLE: Summed bounds
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-sums@L285-L287
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-sums@L285-L287
CONTRACT_ID: stepI:p2:it-sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:admissible, bpI:p2:error-decay
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-sums@L286-L286 | cited at this line (step; \ref{bpI:p2:freq})
EDGE: bpI:p2:error-decay | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-sums@L286-L286 | cited at this line (step; \ref{bpI:p2:error-decay})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:it-stepsmall
KIND: step
TITLE: Step smallness
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-stepsmall@L288-L289
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-stepsmall@L288-L289
CONTRACT_ID: stepI:p2:it-stepsmall
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

NODE: stepI:p2:it-step
KIND: step
TITLE: Base and induction
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L290-L291
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L290-L291
CONTRACT_ID: stepI:p2:it-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:step, stepI:p2:it-sums, bpI:p2:ray, bpI:p2:admissible, K:step:p2:it-step
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:step | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | cited at this line (step; \ref{bpI:p2:step})
EDGE: stepI:p2:it-sums | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | cited at this line (step; \ref{stepI:p2:it-sums})
EDGE: bpI:p2:ray | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | cited at this line (step; \ref{bpI:p2:ray})
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | cited at this line (step; \ref{bpI:p2:B1})
EDGE: K:step:p2:it-step | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:it-step@L291-L291 | cited at this line (step; \Kref{step:p2:it-step})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p2:limit
KIND: proposition
TITLE: The limit
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:limit@L294-L304
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:limit@L305-L314
CONTRACT_ID: bpI:p2:limit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p2:lim-conv, stepI:p2:lim-close, stepI:p2:lim-margins, stepI:p2:lim-inv, bpI:p2:iteration
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p2:lim-conv | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:limit@L306-L306 | proof step of this result
EDGE: stepI:p2:lim-close | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:limit@L308-L308 | proof step of this result
EDGE: stepI:p2:lim-margins | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:limit@L310-L310 | proof step of this result
EDGE: stepI:p2:lim-inv | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:limit@L312-L312 | proof step of this result
EDGE: bpI:p2:iteration | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:limit@L295-L295 | cited at this line (statement; \ref{bpI:p2:iteration})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:lim-conv
KIND: step
TITLE: Convergence
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:lim-conv@L306-L307
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:lim-conv@L306-L307
CONTRACT_ID: stepI:p2:lim-conv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:error-decay, K:bp:p1:uniform-limits
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:error-decay | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:lim-conv@L307-L307 | cited at this line (step; \ref{bpI:p2:error-decay})
EDGE: K:bp:p1:uniform-limits | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:lim-conv@L307-L307 | cited at this line (step; \Kref{bp:p1:uniform-limits})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:lim-close
KIND: step
TITLE: Closeness and frequency
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:lim-close@L308-L309
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:lim-close@L308-L309
CONTRACT_ID: stepI:p2:lim-close
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p2:it-sums
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p2:it-sums | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:lim-close@L309-L309 | cited at this line (step; \ref{stepI:p2:it-sums})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:lim-margins
KIND: step
TITLE: Margins
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:lim-margins@L310-L311
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:lim-margins@L310-L311
CONTRACT_ID: stepI:p2:lim-margins
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

NODE: stepI:p2:lim-inv
KIND: step
TITLE: Invariance
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:lim-inv@L312-L313
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:lim-inv@L312-L313
CONTRACT_ID: stepI:p2:lim-inv
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

NODE: bpI:p2:energy-limit
KIND: lemma
TITLE: Passage of the energy average to the limit
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:energy-limit@L316-L318
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:energy-limit@L319-L324
CONTRACT_ID: bpI:p2:energy-limit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p2:el-unif, stepI:p2:el-int, bpI:p2:limit
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p2:el-unif | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:energy-limit@L320-L320 | proof step of this result
EDGE: stepI:p2:el-int | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:energy-limit@L322-L322 | proof step of this result
EDGE: bpI:p2:limit | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:energy-limit@L317-L317 | cited at this line (statement; \ref{bpI:p2:limit})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:el-unif
KIND: step
TITLE: Uniform convergence of $H\circ K_j$ on $\R^n$
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:el-unif@L320-L321
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:el-unif@L320-L321
CONTRACT_ID: stepI:p2:el-unif
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:increments-open
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:increments-open | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:el-unif@L321-L321 | cited at this line (step; \Kref{bp:p1:increments-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:el-int
KIND: step
TITLE: Integrals
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:el-int@L322-L323
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:el-int@L322-L323
CONTRACT_ID: stepI:p2:el-int
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-integral | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:el-int@L323-L323 | cited at this line (step; \Kref{bp:p1:ext-integral})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p2:g1
KIND: theorem
TITLE: I-G1 with explicit constants
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:g1@L329-L337
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:g1@L338-L355
CONTRACT_ID: bpI:p2:g1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p2:g1-constants, stepI:p2:g1-standing, stepI:p2:g1-e, stepI:p2:g1-dict, stepI:p2:g1-apply, stepI:p2:g1-o, stepI:p2:g1-o2, stepI:p2:g1-o3, bpI:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p2:g1-constants | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:g1@L339-L339 | proof step of this result
EDGE: stepI:p2:g1-standing | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:g1@L341-L341 | proof step of this result
EDGE: stepI:p2:g1-e | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:g1@L343-L343 | proof step of this result
EDGE: stepI:p2:g1-dict | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:g1@L345-L345 | proof step of this result
EDGE: stepI:p2:g1-apply | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:g1@L347-L347 | proof step of this result
EDGE: stepI:p2:g1-o | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:g1@L349-L349 | proof step of this result
EDGE: stepI:p2:g1-o2 | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:g1@L351-L351 | proof step of this result
EDGE: stepI:p2:g1-o3 | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:g1@L353-L353 | proof step of this result
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:g1@L330-L330 | cited at this line (statement; \ref{bpI:p2:constants})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpI:p0:g1, which part p2 proves or sets up]

NODE: stepI:p2:g1-constants
KIND: step
TITLE: The constants
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-constants@L339-L340
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-constants@L339-L340
CONTRACT_ID: stepI:p2:g1-constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:constants | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-constants@L340-L340 | cited at this line (step; \ref{bpI:p2:constants})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:g1-standing
KIND: step
TITLE: Standing data
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-standing@L341-L342
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-standing@L341-L342
CONTRACT_ID: stepI:p2:g1-standing
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:standing | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-standing@L342-L342 | cited at this line (step; \ref{bpI:p2:standing})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:g1-e
KIND: step
TITLE: Size of the errors
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-e@L343-L344
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-e@L343-L344
CONTRACT_ID: stepI:p2:g1-e
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

NODE: stepI:p2:g1-dict
KIND: step
TITLE: Dictionary for the hypotheses
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-dict@L345-L346
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-dict@L345-L346
CONTRACT_ID: stepI:p2:g1-dict
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:admissible, bpI:p0:totality, bpI:p1:extended-basic, bpI:p2:ray
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:admissible | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-dict@L346-L346 | cited at this line (step; \ref{bpI:p2:B1})
EDGE: bpI:p0:totality | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-dict@L346-L346 | cited at this line (step; \ref{bpI:p0:totality})
EDGE: bpI:p1:extended-basic | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-dict@L346-L346 | cited at this line (step; \ref{bpI:p1:extended-basic})
EDGE: bpI:p2:ray | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-dict@L346-L346 | cited at this line (step; \ref{bpI:p2:ray})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:g1-apply
KIND: step
TITLE: Iteration and limit
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-apply@L347-L348
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-apply@L347-L348
CONTRACT_ID: stepI:p2:g1-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:iteration, bpI:p2:limit
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:iteration | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-apply@L348-L348 | cited at this line (step; \ref{bpI:p2:iteration})
EDGE: bpI:p2:limit | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-apply@L348-L348 | cited at this line (step; \ref{bpI:p2:limit})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:g1-o
KIND: step
TITLE: (O1), (O4)--(O6)
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-o@L349-L350
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-o@L349-L350
CONTRACT_ID: stepI:p2:g1-o
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:limit
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:limit | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-o@L350-L350 | cited at this line (step; \ref{bpI:p2:limit})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:g1-o2
KIND: step
TITLE: (O2)
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-o2@L351-L352
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-o2@L351-L352
CONTRACT_ID: stepI:p2:g1-o2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:limit
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:limit | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-o2@L352-L352 | cited at this line (step; \ref{bpI:p2:limit})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p2:g1-o3
KIND: step
TITLE: (O3)
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-o3@L353-L354
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-o3@L353-L354
CONTRACT_ID: stepI:p2:g1-o3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:setting, bpI:p2:energy-limit, bpI:p1:energy-conservation, bpI:p1:o3
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:setting | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-o3@L354-L354 | cited at this line (step; \ref{bpI:p1:setting})
EDGE: bpI:p2:energy-limit | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-o3@L354-L354 | cited at this line (step; \ref{bpI:p2:energy-limit})
EDGE: bpI:p1:energy-conservation | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-o3@L354-L354 | cited at this line (step; \ref{bpI:p1:energy-conservation})
EDGE: bpI:p1:o3 | blueprint-I/parts/p2-iso-iteration.tex#stepI:p2:g1-o3@L354-L354 | cited at this line (step; \ref{bpI:p1:o3})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p2:register
KIND: claim
TITLE: Register of constants
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:register@L357-L359
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:register@L357-L359
CONTRACT_ID: bpI:p2:register
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p2:correction, bpI:p2:newton-error, bpI:p2:torsion, bpI:p2:step, bpI:p2:iteration, bpI:p2:g1
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p2:correction | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:register@L358-L358 | cited at this line (statement; \ref{bpI:p2:correction})
EDGE: bpI:p2:newton-error | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:register@L358-L358 | cited at this line (statement; \ref{bpI:p2:newton-error})
EDGE: bpI:p2:torsion | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:register@L358-L358 | cited at this line (statement; \ref{bpI:p2:torsion})
EDGE: bpI:p2:step | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:register@L358-L358 | cited at this line (statement; \ref{bpI:p2:step})
EDGE: bpI:p2:iteration | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:register@L358-L358 | cited at this line (statement; \ref{bpI:p2:iteration})
EDGE: bpI:p2:g1 | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:register@L358-L358 | cited at this line (statement; \ref{bpI:p2:g1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p2:deviations
KIND: claim
TITLE: Deviations from HL19 and from track~K
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:deviations@L361-L366
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:deviations@L361-L366
CONTRACT_ID: bpI:p2:deviations
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:frequency, bpI:p2:newton-open
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:frequency | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:deviations@L362-L362 | cited at this line (statement; \Kref{bp:p2:frequency})
EDGE: bpI:p2:newton-open | blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:deviations@L364-L364 | cited at this line (statement; \ref{bpI:p2:newton-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpI:p2:errata
KIND: claim
TITLE: Candidate errata and doubts
STATEMENT_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:errata@L368-L370
PROOF_SOURCE: blueprint-I/parts/p2-iso-iteration.tex#bpI:p2:errata@L368-L370
CONTRACT_ID: bpI:p2:errata
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
