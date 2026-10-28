NODE: bpP:p11b:e-ode
KIND: external
TITLE: Analytic ODE
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:e-ode@L20-L20
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11b:e-ode
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
NOTE: external item that cites \Nref{bpN:p3:local-exist}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpP:p11b:e-id
KIND: external
TITLE: Identity theorem
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:e-id@L21-L21
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11b:e-id
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
NOTE: external item that cites \ref{bpP:p9:e-id}, \ref{bpP:p10:f-id}, \ref{bpP:p10:generic}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpP:p11b:e-jet
KIND: external
TITLE: bpP:p11b:e-jet
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:e-jet@L22-L22
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11b:e-jet
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
NOTE: external item that cites \ref{bpP:p8:e-taylor}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpP:p11b:e-ca
KIND: external
TITLE: Finite exact computation
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:e-ca@L23-L23
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11b:e-ca
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
NOTE: external item that cites \ref{bpP:p11b:orbit}, \ref{bpP:p11b:pair-jet}, \ref{bpP:p11b:quartic-explicit}, \ref{bpP:p11b:sec-num}: if it only restates the cited external, exclude it as an alias and point its consumers at the cited node (SPEC)

NODE: bpP:p11b:orbit
KIND: lemma
TITLE: Kepler expansion to order four
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:orbit@L28-L36
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:orbit@L37-L41
CONTRACT_ID: bpP:p11b:orbit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:or-kep, stepP:p11b:or-pos, stepP:p11b:or-an, bpP:p7:poincare-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:or-kep | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:orbit@L38-L38 | proof step of this result
EDGE: stepP:p11b:or-pos | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:orbit@L39-L39 | proof step of this result
EDGE: stepP:p11b:or-an | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:orbit@L40-L40 | proof step of this result
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:orbit@L29-L29 | cited at this line (statement; \ref{bpP:p7:poincare-def})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:or-kep
KIND: step
TITLE: Kepler's equation
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:or-kep@L38-L38
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:or-kep@L38-L38
CONTRACT_ID: stepP:p11b:or-kep
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:regular-kepler, bpP:p11b:e-ca
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:or-kep@L38-L38 | cited at this line (step; \ref{bpP:p7:regular-kepler})
EDGE: bpP:p11b:e-ca | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:or-kep@L38-L38 | cited at this line (step; \ref{bpP:p11b:e-ca})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:or-pos
KIND: step
TITLE: Position
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:or-pos@L39-L39
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:or-pos@L39-L39
CONTRACT_ID: stepP:p11b:or-pos
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:quartic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:quartic | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:or-pos@L39-L39 | cited at this line (step; \ref{bpP:p8:quartic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:or-an
KIND: step
TITLE: Analyticity
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:or-an@L40-L40
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:or-an@L40-L40
CONTRACT_ID: stepP:p11b:or-an
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:regular-kepler
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:or-an@L40-L40 | cited at this line (step; \ref{bpP:p7:regular-kepler})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p11b:laplace-red
KIND: lemma
TITLE: Laplace coefficients: relations and reduction to two functions
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:laplace-red@L43-L56
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:laplace-red@L57-L62
CONTRACT_ID: bpP:p11b:laplace-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:lr-1, stepP:p11b:lr-2, stepP:p11b:lr-3, stepP:p11b:lr-red, bpP:p8:laplace-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:lr-1 | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:laplace-red@L58-L58 | proof step of this result
EDGE: stepP:p11b:lr-2 | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:laplace-red@L59-L59 | proof step of this result
EDGE: stepP:p11b:lr-3 | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:laplace-red@L60-L60 | proof step of this result
EDGE: stepP:p11b:lr-red | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:laplace-red@L61-L61 | proof step of this result
EDGE: bpP:p8:laplace-def | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:laplace-red@L44-L44 | cited at this line (statement; \ref{bpP:p8:laplace-def})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:lr-1
KIND: step
TITLE: (R1)
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lr-1@L58-L58
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lr-1@L58-L58
CONTRACT_ID: stepP:p11b:lr-1
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

NODE: stepP:p11b:lr-2
KIND: step
TITLE: (R2)
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lr-2@L59-L59
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lr-2@L59-L59
CONTRACT_ID: stepP:p11b:lr-2
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

NODE: stepP:p11b:lr-3
KIND: step
TITLE: (R3)
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lr-3@L60-L60
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lr-3@L60-L60
CONTRACT_ID: stepP:p11b:lr-3
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

NODE: stepP:p11b:lr-red
KIND: step
TITLE: Reduction
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lr-red@L61-L61
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lr-red@L61-L61
CONTRACT_ID: stepP:p11b:lr-red
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

NODE: bpP:p11b:pair-jet
KIND: proposition
TITLE: The jet of $\mathcal W$ to order four, by Fourier averaging
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:pair-jet@L64-L91
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:pair-jet@L92-L98
CONTRACT_ID: bpP:p11b:pair-jet
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:pj-formal, stepP:p11b:pj-bin, stepP:p11b:pj-avg, stepP:p11b:pj-red, stepP:p11b:pj-cons, bpP:p8:quartic, bpP:p8:laplace, bpP:p8:quadratic-form
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:pj-formal | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:pair-jet@L93-L93 | proof step of this result
EDGE: stepP:p11b:pj-bin | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:pair-jet@L94-L94 | proof step of this result
EDGE: stepP:p11b:pj-avg | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:pair-jet@L95-L95 | proof step of this result
EDGE: stepP:p11b:pj-red | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:pair-jet@L96-L96 | proof step of this result
EDGE: stepP:p11b:pj-cons | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:pair-jet@L97-L97 | proof step of this result
EDGE: bpP:p8:quartic | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:pair-jet@L65-L65 | cited at this line (statement; \ref{bpP:p8:quartic})
EDGE: bpP:p8:laplace | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:pair-jet@L81-L81 | cited at this line (statement; \ref{bpP:p8:laplace})
EDGE: bpP:p8:quadratic-form | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:pair-jet@L90-L90 | cited at this line (statement; \ref{bpP:p8:quadratic-form}; in \source: provenance unless consumed)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:pj-formal
KIND: step
TITLE: Reduction to a formal series
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-formal@L93-L93
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-formal@L93-L93
CONTRACT_ID: stepP:p11b:pj-formal
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:perturbation-analytic, bpP:p8:e-diff, bpP:p11b:orbit
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-formal@L93-L93 | cited at this line (step; \ref{bpP:p8:perturbation-analytic})
EDGE: bpP:p8:e-diff | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-formal@L93-L93 | cited at this line (step; \ref{bpP:p8:e-diff})
EDGE: bpP:p11b:orbit | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-formal@L93-L93 | cited at this line (step; \ref{bpP:p11b:orbit})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:pj-bin
KIND: step
TITLE: Binomial expansion
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-bin@L94-L94
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-bin@L94-L94
CONTRACT_ID: stepP:p11b:pj-bin
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

NODE: stepP:p11b:pj-avg
KIND: step
TITLE: Averaging rule
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-avg@L95-L95
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-avg@L95-L95
CONTRACT_ID: stepP:p11b:pj-avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:laplace-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:laplace-def | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-avg@L95-L95 | cited at this line (step; \ref{bpP:p8:laplace-def})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:pj-red
KIND: step
TITLE: Reduction and extraction
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96
CONTRACT_ID: stepP:p11b:pj-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:laplace-red, bpP:p8:symmetries, bpP:p11b:e-ca, bpP:p8:laplace
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:laplace-red | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96 | cited at this line (step; \ref{bpP:p11b:laplace-red})
EDGE: bpP:p8:symmetries | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96 | cited at this line (step; \ref{bpP:p8:symmetries})
EDGE: bpP:p11b:e-ca | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96 | cited at this line (step; \ref{bpP:p11b:e-ca})
EDGE: bpP:p8:laplace | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96 | cited at this line (step; \ref{bpP:p8:laplace})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:pj-cons
KIND: step
TITLE: Consistency with Part 8
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-cons@L97-L97
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-cons@L97-L97
CONTRACT_ID: stepP:p11b:pj-cons
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:quadratic-form, bpP:p11b:e-ca
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:quadratic-form | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-cons@L97-L97 | cited at this line (step; \ref{bpP:p8:quadratic-form})
EDGE: bpP:p11b:e-ca | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-cons@L97-L97 | cited at this line (step; \ref{bpP:p11b:e-ca})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p11b:quartic-explicit
KIND: theorem
TITLE: The six quartic coefficients
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:quartic-explicit@L100-L109
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:quartic-explicit@L110-L116
CONTRACT_ID: bpP:p11b:quartic-explicit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:qe-conv, stepP:p11b:qe-an, stepP:p11b:qe-c12, bpP:p11b:pair-jet, bpP:p8:quartic
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:qe-conv | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:quartic-explicit@L111-L111 | proof step of this result
EDGE: stepP:p11b:qe-an | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:quartic-explicit@L114-L114 | proof step of this result
EDGE: stepP:p11b:qe-c12 | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:quartic-explicit@L115-L115 | proof step of this result
EDGE: bpP:p11b:pair-jet | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:quartic-explicit@L106-L106 | cited at this line (statement; \ref{bpP:p11b:pair-jet})
EDGE: bpP:p8:quartic | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:quartic-explicit@L108-L108 | cited at this line (statement; \ref{bpP:p8:quartic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:qe-conv
KIND: step
TITLE: Exact conversion
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:qe-conv@L111-L113
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:qe-conv@L111-L113
CONTRACT_ID: stepP:p11b:qe-conv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:pair-jet
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:pair-jet | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:qe-conv@L111-L111 | cited at this line (step; \ref{bpP:p11b:pair-jet})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:qe-an
KIND: step
TITLE: Analyticity and the jet
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:qe-an@L114-L114
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:qe-an@L114-L114
CONTRACT_ID: stepP:p11b:qe-an
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:laplace, bpP:p8:quartic, bpP:p8:same-jets, stepP:p8:qf-pair
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:laplace | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:qe-an@L114-L114 | cited at this line (step; \ref{bpP:p8:laplace})
EDGE: bpP:p8:quartic | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:qe-an@L114-L114 | cited at this line (step; \ref{bpP:p8:quartic})
EDGE: bpP:p8:same-jets | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:qe-an@L114-L114 | cited at this line (step; \ref{bpP:p8:same-jets})
EDGE: stepP:p8:qf-pair | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:qe-an@L114-L114 | cited at this line (step; \ref{stepP:p8:qf-pair})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:qe-c12
KIND: step
TITLE: $c_1,c_2$
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:qe-c12@L115-L115
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:qe-c12@L115-L115
CONTRACT_ID: stepP:p11b:qe-c12
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:qf-diag, bpP:p8:quartic
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:qf-diag | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:qe-c12@L115-L115 | cited at this line (step; \ref{stepP:p8:qf-diag})
EDGE: bpP:p8:quartic | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:qe-c12@L115-L115 | cited at this line (step; \ref{bpP:p8:quartic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p11b:char
KIND: lemma
TITLE: Character decomposition
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:char@L126-L128
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:char@L129-L132
CONTRACT_ID: bpP:p11b:char
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:ch-mon, stepP:p11b:ch-bra
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:ch-mon | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:char@L130-L130 | proof step of this result
EDGE: stepP:p11b:ch-bra | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:char@L131-L131 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:ch-mon
KIND: step
TITLE: Monomials
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ch-mon@L130-L130
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ch-mon@L130-L130
CONTRACT_ID: stepP:p11b:ch-mon
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

NODE: stepP:p11b:ch-bra
KIND: step
TITLE: Reality and bracket
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ch-bra@L131-L131
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ch-bra@L131-L131
CONTRACT_ID: stepP:p11b:ch-bra
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

NODE: bpP:p11b:homological
KIND: lemma
TITLE: Homological equation
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:homological@L134-L138
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:homological@L139-L142
CONTRACT_ID: bpP:p11b:homological
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:ho-def, stepP:p11b:ho-eq
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:ho-def | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:homological@L140-L140 | proof step of this result
EDGE: stepP:p11b:ho-eq | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:homological@L141-L141 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:ho-def
KIND: step
TITLE: Well defined, real
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ho-def@L140-L140
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ho-def@L140-L140
CONTRACT_ID: stepP:p11b:ho-def
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

NODE: stepP:p11b:ho-eq
KIND: step
TITLE: Equation
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ho-eq@L141-L141
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ho-eq@L141-L141
CONTRACT_ID: stepP:p11b:ho-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:char
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:char | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ho-eq@L141-L141 | cited at this line (step; \ref{bpP:p11b:char})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p11b:flow
KIND: lemma
TITLE: Time-one map of a quartic Hamiltonian
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:flow@L144-L146
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:flow@L147-L150
CONTRACT_ID: bpP:p11b:flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:fl-bd, stepP:p11b:fl-an
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:fl-bd | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:flow@L148-L148 | proof step of this result
EDGE: stepP:p11b:fl-an | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:flow@L149-L149 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:fl-bd
KIND: step
TITLE: Bound
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:fl-bd@L148-L148
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:fl-bd@L148-L148
CONTRACT_ID: stepP:p11b:fl-bd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p3:gen-continuation
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p3:gen-continuation | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:fl-bd@L148-L148 | cited at this line (step; \Nref{bpN:p3:gen-continuation})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:fl-an
KIND: step
TITLE: Analyticity, expansion
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:fl-an@L149-L149
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:fl-an@L149-L149
CONTRACT_ID: stepP:p11b:fl-an
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:e-ode, N:bpN:p3:gen-uniqueness
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:e-ode | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:fl-an@L149-L149 | cited at this line (step; \ref{bpP:p11b:e-ode})
EDGE: N:bpN:p3:gen-uniqueness | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:fl-an@L149-L149 | cited at this line (step; \Nref{bpN:p3:gen-uniqueness})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p11b:lie
KIND: proposition
TITLE: Birkhoff normal form of order four
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lie@L152-L159
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lie@L160-L164
CONTRACT_ID: bpP:p11b:lie
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:li-tay, stepP:p11b:li-ord, stepP:p11b:li-sum, bpP:p11b:e-jet, bpP:p11b:homological, bpP:p11b:char
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:li-tay | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lie@L161-L161 | proof step of this result
EDGE: stepP:p11b:li-ord | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lie@L162-L162 | proof step of this result
EDGE: stepP:p11b:li-sum | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lie@L163-L163 | proof step of this result
EDGE: bpP:p11b:e-jet | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lie@L155-L155 | cited at this line (statement; \ref{bpP:p11b:e-jet})
EDGE: bpP:p11b:homological | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lie@L155-L155 | cited at this line (statement; \ref{bpP:p11b:homological})
EDGE: bpP:p11b:char | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lie@L157-L157 | cited at this line (statement; \ref{bpP:p11b:char})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:li-tay
KIND: step
TITLE: Taylor along the flow
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-tay@L161-L161
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-tay@L161-L161
CONTRACT_ID: stepP:p11b:li-tay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p5:lie-derivative, N:bpN:p5:taylor
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p5:lie-derivative | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-tay@L161-L161 | cited at this line (step; \Nref{bpN:p5:lie-derivative})
EDGE: N:bpN:p5:taylor | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-tay@L161-L161 | cited at this line (step; \Nref{bpN:p5:taylor})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:li-ord
KIND: step
TITLE: Orders
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-ord@L162-L162
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-ord@L162-L162
CONTRACT_ID: stepP:p11b:li-ord
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:homological, bpP:p11b:e-jet, bpP:p11b:flow
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:homological | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-ord@L162-L162 | cited at this line (step; \ref{bpP:p11b:homological})
EDGE: bpP:p11b:e-jet | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-ord@L162-L162 | cited at this line (step; \ref{bpP:p11b:e-jet})
EDGE: bpP:p11b:flow | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-ord@L162-L162 | cited at this line (step; \ref{bpP:p11b:flow})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:li-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163
CONTRACT_ID: stepP:p11b:li-sum
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

NODE: bpP:p11b:lift-map
KIND: proposition
TITLE: The Birkhoff map on the full phase space
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lift-map@L166-L172
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lift-map@L173-L176
CONTRACT_ID: bpP:p11b:lift-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:lm-ham, stepP:p11b:lm-prop, bpP:p11b:flow, bpP:p9:lift
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:lm-ham | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lift-map@L174-L174 | proof step of this result
EDGE: stepP:p11b:lm-prop | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lift-map@L175-L175 | proof step of this result
EDGE: bpP:p11b:flow | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lift-map@L167-L167 | cited at this line (statement; \ref{bpP:p11b:flow})
EDGE: bpP:p9:lift | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:lift-map@L169-L169 | cited at this line (statement; \ref{bpP:p9:lift})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:lm-ham
KIND: step
TITLE: Hamilton's equations
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-ham@L174-L174
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-ham@L174-L174
CONTRACT_ID: stepP:p11b:lm-ham
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

NODE: stepP:p11b:lm-prop
KIND: step
TITLE: Properties
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175
CONTRACT_ID: stepP:p11b:lm-prop
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:flow, bpP:p11b:e-ode, bpP:p9:lift, N:bpN:p5:symplectic, N:bpN:p5:canonical
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:flow | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175 | cited at this line (step; \ref{bpP:p11b:flow})
EDGE: bpP:p11b:e-ode | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175 | cited at this line (step; \ref{bpP:p11b:e-ode})
EDGE: bpP:p9:lift | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175 | cited at this line (step; \ref{bpP:p9:lift})
EDGE: N:bpN:p5:symplectic | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175 | cited at this line (step; \Nref{bpN:p5:symplectic})
EDGE: N:bpN:p5:canonical | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175 | cited at this line (step; \Nref{bpN:p5:canonical})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p11b:beta-def
KIND: definition
TITLE: Torsion $\hat\beta$
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:beta-def@L184-L192
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11b:beta-def
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:quartic-explicit, bpP:p9:n2, bpP:p8:same-jets
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:quartic-explicit | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:beta-def@L185-L185 | cited at this line (statement; \ref{bpP:p11b:quartic-explicit})
EDGE: bpP:p9:n2 | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:beta-def@L191-L191 | cited at this line (statement; \ref{bpP:p9:n2})
EDGE: bpP:p8:same-jets | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:beta-def@L191-L191 | cited at this line (statement; \ref{bpP:p8:same-jets})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p11b:beta-formula
KIND: proposition
TITLE: $\hat\beta$ is the torus average of the rotated quartic
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:beta-formula@L194-L197
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:beta-formula@L198-L203
CONTRACT_ID: bpP:p11b:beta-formula
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:bf-gram, stepP:p11b:bf-avg, bpP:p11b:quartic-explicit, bpP:p11b:char
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:bf-gram | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:beta-formula@L199-L199 | proof step of this result
EDGE: stepP:p11b:bf-avg | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:beta-formula@L202-L202 | proof step of this result
EDGE: bpP:p11b:quartic-explicit | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:beta-formula@L195-L195 | cited at this line (statement; \ref{bpP:p11b:quartic-explicit})
EDGE: bpP:p11b:char | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:beta-formula@L195-L195 | cited at this line (statement; \ref{bpP:p11b:char})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:bf-gram
KIND: step
TITLE: Gram variables
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bf-gram@L199-L201
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bf-gram@L199-L201
CONTRACT_ID: stepP:p11b:bf-gram
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

NODE: stepP:p11b:bf-avg
KIND: step
TITLE: Averaging
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bf-avg@L202-L202
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bf-avg@L202-L202
CONTRACT_ID: stepP:p11b:bf-avg
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

NODE: bpP:p11b:birkhoff-form
KIND: theorem
TITLE: Secular Birkhoff form, planar
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L205-L215
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L216-L222
CONTRACT_ID: bpP:p11b:birkhoff-form
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:bt-rot, stepP:p11b:bt-K, stepP:p11b:bt-nf, stepP:p11b:bt-avg, stepP:p11b:bt-frozen, bpP:p11b:homological, bpP:p11b:lift-map, bpP:p11b:flow, bpP:p11b:lie, bpP:p8:perturbation-analytic, bpP:p0:birkhoff#HasSecularBirkhoffForm
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:bt-rot | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L217-L217 | proof step of this result
EDGE: stepP:p11b:bt-K | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L218-L218 | proof step of this result
EDGE: stepP:p11b:bt-nf | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L219-L219 | proof step of this result
EDGE: stepP:p11b:bt-avg | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L220-L220 | proof step of this result
EDGE: stepP:p11b:bt-frozen | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L221-L221 | proof step of this result
EDGE: bpP:p11b:homological | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L206-L206 | cited at this line (statement; \ref{bpP:p11b:homological})
EDGE: bpP:p11b:lift-map | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L206-L206 | cited at this line (statement; \ref{bpP:p11b:lift-map})
EDGE: bpP:p11b:flow | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L206-L206 | cited at this line (statement; \ref{bpP:p11b:flow})
EDGE: bpP:p11b:lie | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L206-L206 | cited at this line (statement; \ref{bpP:p11b:lie})
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L206-L206 | cited at this line (statement; \ref{bpP:p8:perturbation-analytic})
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L212-L212 | cited at this line (statement; \ref{bpP:p0:birkhoff})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:bt-rot
KIND: step
TITLE: Rotation
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-rot@L217-L217
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-rot@L217-L217
CONTRACT_ID: stepP:p11b:bt-rot
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:local-analytic, bpP:p9:diagonalize
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:local-analytic | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-rot@L217-L217 | cited at this line (step; \ref{bpP:p9:local-analytic})
EDGE: bpP:p9:diagonalize | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-rot@L217-L217 | cited at this line (step; \ref{bpP:p9:diagonalize})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:bt-K
KIND: step
TITLE: The function $K$
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-K@L218-L218
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-K@L218-L218
CONTRACT_ID: stepP:p11b:bt-K
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:quadratic-form, bpP:p8:evenness, bpP:p11b:quartic-explicit, bpP:p9:diagonalize, bpP:p8:perturbation-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:quadratic-form | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-K@L218-L218 | cited at this line (step; \ref{bpP:p8:quadratic-form})
EDGE: bpP:p8:evenness | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-K@L218-L218 | cited at this line (step; \ref{bpP:p8:evenness})
EDGE: bpP:p11b:quartic-explicit | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-K@L218-L218 | cited at this line (step; \ref{bpP:p11b:quartic-explicit})
EDGE: bpP:p9:diagonalize | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-K@L218-L218 | cited at this line (step; \ref{bpP:p9:diagonalize})
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-K@L218-L218 | cited at this line (step; \ref{bpP:p8:perturbation-analytic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:bt-nf
KIND: step
TITLE: Normal form
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219
CONTRACT_ID: stepP:p11b:bt-nf
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:good-set, bpP:p11b:lie, bpP:p11b:beta-formula
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:good-set | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | cited at this line (step; \ref{bpP:p9:good-set})
EDGE: bpP:p11b:lie | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | cited at this line (step; \ref{bpP:p11b:lie})
EDGE: bpP:p11b:beta-formula | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | cited at this line (step; \ref{bpP:p11b:beta-formula})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:bt-avg
KIND: step
TITLE: Average of $P$
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-avg@L220-L220
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-avg@L220-L220
CONTRACT_ID: stepP:p11b:bt-avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:lift-map, bpP:p8:perturbation-analytic, bpP:p8:e-diff, bpP:p11b:lie, bpP:p8:identification
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:lift-map | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-avg@L220-L220 | cited at this line (step; \ref{bpP:p11b:lift-map})
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-avg@L220-L220 | cited at this line (step; \ref{bpP:p8:perturbation-analytic})
EDGE: bpP:p8:e-diff | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-avg@L220-L220 | cited at this line (step; \ref{bpP:p8:e-diff})
EDGE: bpP:p11b:lie | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-avg@L220-L220 | cited at this line (step; \ref{bpP:p11b:lie})
EDGE: bpP:p8:identification | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-avg@L220-L220 | cited at this line (step; \ref{bpP:p8:identification})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:bt-frozen
KIND: step
TITLE: The frozen clauses
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-frozen@L221-L221
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-frozen@L221-L221
CONTRACT_ID: stepP:p11b:bt-frozen
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:birkhoff#HasSecularBirkhoffForm
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-frozen@L221-L221 | cited at this line (step; \ref{bpP:p0:birkhoff})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p11b:remain
KIND: claim
TITLE: Two clauses of P-G that remain for Part 12
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:remain@L224-L226
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:remain@L224-L226
CONTRACT_ID: bpP:p11b:remain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:patch, bpP:p8:same-jets
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:patch | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:remain@L225-L225 | cited at this line (statement; \ref{bpP:p11b:patch})
EDGE: bpP:p8:same-jets | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:remain@L225-L225 | cited at this line (statement; \ref{bpP:p8:same-jets})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bpP:p11b:asymptotics
KIND: proposition
TITLE: Hierarchical asymptotics of $\hat\beta$
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:asymptotics@L230-L238
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:asymptotics@L239-L248
CONTRACT_ID: bpP:p11b:asymptotics
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:as-in, stepP:p11b:as-pi, stepP:p11b:as-c, stepP:p11b:as-ent, stepP:p11b:as-det
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:as-in | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:asymptotics@L240-L240 | proof step of this result
EDGE: stepP:p11b:as-pi | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:asymptotics@L243-L243 | proof step of this result
EDGE: stepP:p11b:as-c | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:asymptotics@L244-L244 | proof step of this result
EDGE: stepP:p11b:as-ent | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:asymptotics@L246-L246 | proof step of this result
EDGE: stepP:p11b:as-det | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:asymptotics@L247-L247 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:as-in
KIND: step
TITLE: Inputs
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-in@L240-L242
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-in@L240-L242
CONTRACT_ID: stepP:p11b:as-in
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:laplace
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:laplace | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-in@L240-L240 | cited at this line (step; \ref{bpP:p8:laplace})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:as-pi
KIND: step
TITLE: Projection
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-pi@L243-L243
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-pi@L243-L243
CONTRACT_ID: stepP:p11b:as-pi
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

NODE: stepP:p11b:as-c
KIND: step
TITLE: Sizes of $c_\nu$
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-c@L244-L245
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-c@L244-L245
CONTRACT_ID: stepP:p11b:as-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:pair-jet
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:pair-jet | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-c@L244-L244 | cited at this line (step; \ref{bpP:p11b:eq:series})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:as-ent
KIND: step
TITLE: The entries
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-ent@L246-L246
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-ent@L246-L246
CONTRACT_ID: stepP:p11b:as-ent
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:beta-def, stepP:p11b:as-pi
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-ent@L246-L246 | cited at this line (step; \ref{bpP:p11b:beta-def})
EDGE: stepP:p11b:as-pi | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-ent@L246-L246 | cited at this line (step; \ref{stepP:p11b:as-pi})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:as-det
KIND: step
TITLE: Determinant
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-det@L247-L247
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-det@L247-L247
CONTRACT_ID: stepP:p11b:as-det
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

NODE: bpP:p11b:torsion
KIND: theorem
TITLE: $\det\hat\beta\not\equiv0$ and the torsion theorem
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:torsion@L250-L253
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:torsion@L254-L258
CONTRACT_ID: bpP:p11b:torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:to-an, stepP:p11b:to-pt, stepP:p11b:to-id
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:to-an | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:torsion@L255-L255 | proof step of this result
EDGE: stepP:p11b:to-pt | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:torsion@L256-L256 | proof step of this result
EDGE: stepP:p11b:to-id | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:torsion@L257-L257 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:to-an
KIND: step
TITLE: Analyticity
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:to-an@L255-L255
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:to-an@L255-L255
CONTRACT_ID: stepP:p11b:to-an
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:beta-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:to-an@L255-L255 | cited at this line (step; \ref{bpP:p11b:beta-def})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:to-pt
KIND: step
TITLE: A point
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:to-pt@L256-L256
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:to-pt@L256-L256
CONTRACT_ID: stepP:p11b:to-pt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:asymptotics
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:asymptotics | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:to-pt@L256-L256 | cited at this line (step; \ref{bpP:p11b:asymptotics})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepP:p11b:to-id
KIND: step
TITLE: Identity theorem
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:to-id@L257-L257
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:to-id@L257-L257
CONTRACT_ID: stepP:p11b:to-id
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:e-id, bpP:p9:e-id, bpP:p10:good-point, bpP:p10:generic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:e-id | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:to-id@L257-L257 | cited at this line (step; \ref{bpP:p11b:e-id})
EDGE: bpP:p9:e-id | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:to-id@L257-L257 | cited at this line (step; \ref{bpP:p9:e-id})
EDGE: bpP:p10:good-point | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:to-id@L257-L257 | cited at this line (step; \ref{bpP:p10:good-point})
EDGE: bpP:p10:generic | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:to-id@L257-L257 | cited at this line (step; \ref{bpP:p10:generic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpP:p11b:patch
KIND: corollary
TITLE: Patches near every axis vector
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L260-L262
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L263-L265
CONTRACT_ID: bpP:p11b:patch
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:birkhoff-form, bpP:p10:interface, bpP:p11b:torsion
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:birkhoff-form | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L261-L261 | cited at this line (statement; \ref{bpP:p11b:birkhoff-form})
EDGE: bpP:p10:interface | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L261-L261 | cited at this line (statement; \ref{bpP:p10:interface})
EDGE: bpP:p11b:torsion | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L264-L264 | cited at this line (proof; \ref{bpP:p11b:torsion})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
