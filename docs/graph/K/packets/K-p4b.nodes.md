NODE: bp:p4:phase-average
KIND: definition
TITLE: Angle displacement and phase average
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:phase-average@L677-L684
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:phase-average
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

NODE: bp:p4:shift
KIND: lemma
TITLE: Phase shifts
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:shift@L686-L701
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:shift@L703-L718
CONTRACT_ID: bp:p4:shift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:shift-translation, step:p4:shift-phase
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:shift-translation | blueprint/parts/p4-measure.tex#bp:p4:shift@L704-L704 | proof step of this result
EDGE: step:p4:shift-phase | blueprint/parts/p4-measure.tex#bp:p4:shift@L711-L711 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:shift-translation
KIND: step
TITLE: Translation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:shift-translation@L704-L709
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:shift-translation@L704-L709
CONTRACT_ID: step:p4:shift-translation
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

NODE: step:p4:shift-phase
KIND: step
TITLE: Phase average
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:shift-phase@L711-L717
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:shift-phase@L711-L717
CONTRACT_ID: step:p4:shift-phase
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:periodic-average
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:periodic-average | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L714-L714 | cited at this line (step; \ref{bp:p1:periodic-average})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:normalized-torus
KIND: definition
TITLE: The normalized torus $K_\omega$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L720-L726
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:normalized-torus
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:apply
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:apply | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L722-L722 | cited at this line (statement; \ref{bp:p4:apply})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:normalize
KIND: lemma
TITLE: Properties of $K_\omega$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:normalize@L728-L734
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:normalize@L736-L742
CONTRACT_ID: bp:p4:normalize
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:normalize-proof
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:normalize-proof | blueprint/parts/p4-measure.tex#bp:p4:normalize@L737-L737 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:normalize-proof
KIND: step
TITLE: Shift of the G1 output
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L737-L741
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L737-L741
CONTRACT_ID: step:p4:normalize-proof
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:apply, bp:p4:shift
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:apply | blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L738-L738 | cited at this line (step; \ref{bp:p4:apply})
EDGE: bp:p4:shift | blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L738-L738 | cited at this line (step; \ref{bp:p4:shift})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:normalized-unique
KIND: corollary
TITLE: Uniqueness of the normalized torus
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:normalized-unique@L744-L749
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:normalized-unique@L751-L774
CONTRACT_ID: bp:p4:normalized-unique
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:nu-g2, step:p4:nu-phase, bp:p4:normalized-torus
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:nu-g2 | blueprint/parts/p4-measure.tex#bp:p4:normalized-unique@L752-L752 | proof step of this result
EDGE: step:p4:nu-phase | blueprint/parts/p4-measure.tex#bp:p4:normalized-unique@L769-L769 | proof step of this result
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#bp:p4:normalized-unique@L748-L748 | cited at this line (statement; \ref{bp:p4:normalized-torus})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:nu-g2
KIND: step
TITLE: Application of G2
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:nu-g2@L752-L767
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:nu-g2@L752-L767
CONTRACT_ID: step:p4:nu-g2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:g2, bp:p4:parameters, bp:p4:h1, bp:p4:stab, bp:p4:normalize, bp:p4:unperturbed
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g2 | blueprint/parts/p4-measure.tex#step:p4:nu-g2@L753-L753 | cited at this line (step; \ref{bp:p0:g2})
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:nu-g2@L753-L753 | cited at this line (step; \ref{bp:p4:parameters})
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:nu-g2@L756-L756 | cited at this line (step; \ref{bp:p4:h1})
EDGE: bp:p4:stab | blueprint/parts/p4-measure.tex#step:p4:nu-g2@L757-L757 | cited at this line (step; \ref{bp:p4:stab})
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:nu-g2@L759-L759 | cited at this line (step; \ref{bp:p4:normalize})
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:nu-g2@L763-L763 | cited at this line (step; \ref{bp:p4:unperturbed})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:nu-phase
KIND: step
TITLE: The phase vanishes
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:nu-phase@L769-L773
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:nu-phase@L769-L773
CONTRACT_ID: step:p4:nu-phase
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:shift, bp:p1:strip-identity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:shift | blueprint/parts/p4-measure.tex#step:p4:nu-phase@L771-L771 | cited at this line (step; \ref{bp:p4:shift})
EDGE: bp:p1:strip-identity | blueprint/parts/p4-measure.tex#step:p4:nu-phase@L772-L772 | cited at this line (step; \ref{bp:p1:strip-identity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:mixed-difference
KIND: corollary
TITLE: Mixed second differences
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:mixed-difference@L800-L806
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:mixed-difference@L808-L818
CONTRACT_ID: bp:p4:mixed-difference
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:mixed-proof
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:mixed-proof | blueprint/parts/p4-measure.tex#bp:p4:mixed-difference@L809-L809 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mixed-proof
KIND: step
TITLE: Two mean value inequalities
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mixed-proof@L809-L817
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mixed-proof@L809-L817
CONTRACT_ID: step:p4:mixed-proof
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:mixed-difference, bp:p1:ext-mvt, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:mixed-difference | blueprint/parts/p4-measure.tex#step:p4:mixed-proof@L810-L810 | cited at this line (step; \ref{bp:p1:mixed-difference})
EDGE: bp:p1:ext-mvt | blueprint/parts/p4-measure.tex#step:p4:mixed-proof@L811-L811 | cited at this line (step; \ref{bp:p1:ext-mvt})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:mixed-proof@L812-L812 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:lip-error
KIND: lemma
TITLE: The error of the shifted torus
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lip-error@L820-L829
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lip-error@L831-L874
CONTRACT_ID: bp:p4:lip-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:le-basic, step:p4:le-split, step:p4:le-h, step:p4:le-f, step:p4:le-transport, step:p4:le-sum
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:le-basic | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L832-L832 | proof step of this result
EDGE: step:p4:le-split | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L838-L838 | proof step of this result
EDGE: step:p4:le-h | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L853-L853 | proof step of this result
EDGE: step:p4:le-f | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L860-L860 | proof step of this result
EDGE: step:p4:le-transport | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L867-L867 | proof step of this result
EDGE: step:p4:le-sum | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L871-L871 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:le-basic
KIND: step
TITLE: Elementary properties
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-basic@L832-L836
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-basic@L832-L836
CONTRACT_ID: step:p4:le-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:inverse-freq
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:le-basic@L834-L834 | cited at this line (step; \ref{bp:p4:inverse-freq})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:le-split
KIND: step
TITLE: Splitting the error
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-split@L838-L851
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-split@L838-L851
CONTRACT_ID: step:p4:le-split
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:normalize, bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:le-split@L839-L839 | cited at this line (step; \ref{bp:p4:normalize})
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#step:p4:le-split@L843-L843 | cited at this line (step; \ref{bp:p4:freq-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:le-h
KIND: step
TITLE: The integrable part: a mixed difference
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-h@L853-L858
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-h@L853-L858
CONTRACT_ID: step:p4:le-h
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:derivative-bounds, bp:p4:mixed-difference
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#step:p4:le-h@L857-L857 | cited at this line (step; \ref{bp:p4:derivative-bounds})
EDGE: bp:p4:mixed-difference | blueprint/parts/p4-measure.tex#step:p4:le-h@L857-L857 | cited at this line (step; \ref{bp:p4:mixed-difference})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:le-f
KIND: step
TITLE: The perturbation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-f@L860-L865
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-f@L860-L865
CONTRACT_ID: step:p4:le-f
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:unperturbed, bp:p1:increments-open
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:le-f@L863-L863 | cited at this line (step; \ref{bp:p4:unperturbed})
EDGE: bp:p1:increments-open | blueprint/parts/p4-measure.tex#step:p4:le-f@L864-L864 | cited at this line (step; \ref{bp:p1:increments-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:le-transport
KIND: step
TITLE: The transport term
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-transport@L867-L869
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-transport@L867-L869
CONTRACT_ID: step:p4:le-transport
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-strip
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-strip | blueprint/parts/p4-measure.tex#step:p4:le-transport@L868-L868 | cited at this line (step; \ref{bp:p1:cauchy-strip})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:le-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-sum@L871-L873
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-sum@L871-L873
CONTRACT_ID: step:p4:le-sum
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

NODE: bp:p4:lip
KIND: theorem
TITLE: LIP
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lip@L876-L882
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lip@L884-L946
CONTRACT_ID: bp:p4:lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:lip-far, step:p4:lip-g1, step:p4:lip-g2, step:p4:lip-phase, step:p4:lip-close
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:lip-far | blueprint/parts/p4-measure.tex#bp:p4:lip@L885-L885 | proof step of this result
EDGE: step:p4:lip-g1 | blueprint/parts/p4-measure.tex#bp:p4:lip@L892-L892 | proof step of this result
EDGE: step:p4:lip-g2 | blueprint/parts/p4-measure.tex#bp:p4:lip@L913-L913 | proof step of this result
EDGE: step:p4:lip-phase | blueprint/parts/p4-measure.tex#bp:p4:lip@L929-L929 | proof step of this result
EDGE: step:p4:lip-close | blueprint/parts/p4-measure.tex#bp:p4:lip@L936-L936 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:lip-far
KIND: step
TITLE: Far pairs
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-far@L885-L890
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-far@L885-L890
CONTRACT_ID: step:p4:lip-far
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:normalize, bp:p4:lip-error
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:lip-far@L886-L886 | cited at this line (step; \ref{bp:p4:normalize})
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-far@L889-L889 | cited at this line (step; \ref{bp:p4:lip-error})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:lip-g1
KIND: step
TITLE: Re-application of G1 at $\omega'$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-g1@L892-L911
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-g1@L892-L911
CONTRACT_ID: step:p4:lip-g1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:g1, bp:p4:parameters, bp:p4:h1, bp:p4:stab, bp:p4:lip-error
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g1 | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L893-L893 | cited at this line (step; \ref{bp:p0:g1})
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L893-L893 | cited at this line (step; \ref{bp:p4:parameters})
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L897-L897 | cited at this line (step; \ref{bp:p4:h1})
EDGE: bp:p4:stab | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L898-L898 | cited at this line (step; \ref{bp:p4:stab})
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L901-L901 | cited at this line (step; \ref{bp:p4:lip-error})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:lip-g2
KIND: step
TITLE: Local uniqueness at $\omega'$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-g2@L913-L927
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-g2@L913-L927
CONTRACT_ID: step:p4:lip-g2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:g2, bp:p4:parameters, bp:p4:h1, bp:p4:stab, bp:p4:normalize
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g2 | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L914-L914 | cited at this line (step; \ref{bp:p0:g2})
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L914-L914 | cited at this line (step; \ref{bp:p4:parameters})
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L917-L917 | cited at this line (step; \ref{bp:p4:h1})
EDGE: bp:p4:stab | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L918-L918 | cited at this line (step; \ref{bp:p4:stab})
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L920-L920 | cited at this line (step; \ref{bp:p4:normalize})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:lip-phase
KIND: step
TITLE: The phase is controlled by normalization
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-phase@L929-L934
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-phase@L929-L934
CONTRACT_ID: step:p4:lip-phase
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:periodic-average
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:periodic-average | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L931-L931 | cited at this line (step; \ref{bp:p1:periodic-average})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:lip-close
KIND: step
TITLE: Conclusion for close pairs
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-close@L936-L945
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-close@L936-L945
CONTRACT_ID: step:p4:lip-close
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:increments
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:increments | blueprint/parts/p4-measure.tex#step:p4:lip-close@L942-L942 | cited at this line (step; \ref{bp:p1:increments})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:lagrangian
KIND: lemma
TITLE: Invariant tori with nonresonant frequency are Lagrangian
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lagrangian@L961-L966
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lagrangian@L973-L1007
CONTRACT_ID: bp:p4:lagrangian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:lag-regular, step:p4:lag-exact, step:p4:lag-transport, step:p4:lag-unique
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:lag-regular | blueprint/parts/p4-measure.tex#bp:p4:lagrangian@L974-L974 | proof step of this result
EDGE: step:p4:lag-exact | blueprint/parts/p4-measure.tex#bp:p4:lagrangian@L980-L980 | proof step of this result
EDGE: step:p4:lag-transport | blueprint/parts/p4-measure.tex#bp:p4:lagrangian@L990-L990 | proof step of this result
EDGE: step:p4:lag-unique | blueprint/parts/p4-measure.tex#bp:p4:lagrangian@L1001-L1001 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:lag-regular
KIND: step
TITLE: Regularity and periodicity
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-regular@L974-L978
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-regular@L974-L978
CONTRACT_ID: step:p4:lag-regular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:periodic-bounded
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:lag-regular@L977-L977 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
EDGE: bp:p1:periodic-bounded | blueprint/parts/p4-measure.tex#step:p4:lag-regular@L978-L978 | cited at this line (step; \ref{bp:p1:periodic-bounded})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:lag-exact
KIND: step
TITLE: $\Lambda$ is a sum of derivatives
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-exact@L980-L988
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-exact@L980-L988
CONTRACT_ID: step:p4:lag-exact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:matrix-norms, bp:p1:averages
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:lag-exact@L981-L981 | cited at this line (step; \ref{bp:p4:matrix-norms})
EDGE: bp:p1:averages | blueprint/parts/p4-measure.tex#step:p4:lag-exact@L988-L988 | cited at this line (step; \ref{bp:p1:averages})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:lag-transport
KIND: step
TITLE: $\Lambda$ is constant along $\omega$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-transport@L990-L999
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-transport@L990-L999
CONTRACT_ID: step:p4:lag-transport
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, step:p4:db-vectorfield, bp:p4:matrix-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:lag-transport@L992-L992 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
EDGE: step:p4:db-vectorfield | blueprint/parts/p4-measure.tex#step:p4:lag-transport@L993-L993 | cited at this line (step; \ref{step:p4:db-vectorfield})
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:lag-transport@L995-L995 | cited at this line (step; \ref{bp:p4:matrix-norms})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:lag-unique
KIND: step
TITLE: Uniqueness for the cohomological equation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1001-L1006
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1001-L1006
CONTRACT_ID: step:p4:lag-unique
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological, step:p4:lag-exact, step:p4:lag-transport, bp:p1:strip-identity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1002-L1002 | cited at this line (step; \ref{bp:p1:cohomological})
EDGE: step:p4:lag-exact | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1004-L1004 | cited at this line (step; \ref{step:p4:lag-exact})
EDGE: step:p4:lag-transport | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1005-L1005 | cited at this line (step; \ref{step:p4:lag-transport})
EDGE: bp:p1:strip-identity | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1006-L1006 | cited at this line (step; \ref{bp:p1:strip-identity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:real-torus
KIND: theorem
TITLE: The real tori are KAM tori
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1009-L1021
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1023-L1069
CONTRACT_ID: bp:p4:real-torus
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:rt-analytic, step:p4:rt-small, step:p4:rt-immersion, step:p4:rt-embedding, step:p4:rt-lagrangian, step:p4:rt-ode, step:p4:rt-cover, bp:p1:real-restriction, bp:p0:torus#IsInvariantLagrangianTorus
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:rt-analytic | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1024-L1024 | proof step of this result
EDGE: step:p4:rt-small | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1028-L1028 | proof step of this result
EDGE: step:p4:rt-immersion | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1035-L1035 | proof step of this result
EDGE: step:p4:rt-embedding | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1039-L1039 | proof step of this result
EDGE: step:p4:rt-lagrangian | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1045-L1045 | proof step of this result
EDGE: step:p4:rt-ode | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1052-L1052 | proof step of this result
EDGE: step:p4:rt-cover | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1063-L1063 | proof step of this result
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1011-L1011 | cited at this line (statement; \ref{bp:p1:real-restriction})
EDGE: bp:p0:torus#IsInvariantLagrangianTorus | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1014-L1014 | cited at this line (statement; \ref{bp:p0:torus})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:rt-analytic
KIND: step
TITLE: Analyticity and primarity
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1024-L1026
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1024-L1026
CONTRACT_ID: step:p4:rt-analytic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:real-restriction, bp:p1:holomorphic-analytic, bp:p4:normalize
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1025-L1025 | cited at this line (step; \ref{bp:p1:real-restriction})
EDGE: bp:p1:holomorphic-analytic | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1025-L1025 | cited at this line (step; \ref{bp:p1:holomorphic-analytic})
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1026-L1026 | cited at this line (step; \ref{bp:p4:normalize})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:rt-small
KIND: step
TITLE: Small angle displacement
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-small@L1028-L1033
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-small@L1028-L1033
CONTRACT_ID: step:p4:rt-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-strip, bp:p1:real-restriction
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-strip | blueprint/parts/p4-measure.tex#step:p4:rt-small@L1030-L1030 | cited at this line (step; \ref{bp:p1:cauchy-strip})
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-small@L1032-L1032 | cited at this line (step; \ref{bp:p1:real-restriction})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:rt-immersion
KIND: step
TITLE: Immersion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-immersion@L1035-L1037
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-immersion@L1035-L1037
CONTRACT_ID: step:p4:rt-immersion
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

NODE: step:p4:rt-embedding
KIND: step
TITLE: Embedding modulo $\Z^n$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-embedding@L1039-L1043
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-embedding@L1039-L1043
CONTRACT_ID: step:p4:rt-embedding
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

NODE: step:p4:rt-lagrangian
KIND: step
TITLE: Lagrangian
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1045-L1050
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1045-L1050
CONTRACT_ID: step:p4:rt-lagrangian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:lagrangian, bp:p4:normalize, bp:p4:matrix-norms, bp:p1:real-restriction
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:lagrangian | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1046-L1046 | cited at this line (step; \ref{bp:p4:lagrangian})
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1047-L1047 | cited at this line (step; \ref{bp:p4:normalize})
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1049-L1049 | cited at this line (step; \ref{bp:p4:matrix-norms})
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1049-L1049 | cited at this line (step; \ref{bp:p1:real-restriction})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:rt-ode
KIND: step
TITLE: Hamilton's equations
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1052-L1061
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1052-L1061
CONTRACT_ID: step:p4:rt-ode
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:hamiltonian-real, bp:p4:h1, bp:p0:nearlyintegrable#realHamiltonian, bp:p0:nearlyintegrable#frequencyMap, bp:p1:real-restriction, bp:p0:torus#IsInvariantLagrangianTorus
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:hamiltonian-real | blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1054-L1054 | cited at this line (step; \ref{bp:p1:hamiltonian-real})
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1055-L1055 | cited at this line (step; \ref{bp:p4:h1})
EDGE: bp:p0:nearlyintegrable#realHamiltonian | blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1057-L1057 | cited at this line (step; \ref{bp:p0:nearlyintegrable})
EDGE: bp:p0:nearlyintegrable#frequencyMap | blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1057-L1057 | cited at this line (step; \ref{bp:p0:nearlyintegrable})
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1058-L1058 | cited at this line (step; \ref{bp:p1:real-restriction})
EDGE: bp:p0:torus#IsInvariantLagrangianTorus | blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1061-L1061 | cited at this line (step; \ref{bp:p0:torus})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:rt-cover
KIND: step
TITLE: Cover clauses
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1063-L1068
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1063-L1068
CONTRACT_ID: step:p4:rt-cover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:normalize, bp:p4:inverse-freq, bp:p0:cover#kamCover
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1064-L1064 | cited at this line (step; \ref{bp:p4:normalize})
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1066-L1066 | cited at this line (step; \ref{bp:p4:inverse-freq})
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1067-L1067 | cited at this line (step; \ref{bp:p0:cover})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:preimage-measure
KIND: lemma
TITLE: Actions with non-Diophantine frequency
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:preimage-measure@L1087-L1093
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:preimage-measure@L1095-L1100
CONTRACT_ID: bp:p4:preimage-measure
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:pm-proof, bp:p0:g3, bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:pm-proof | blueprint/parts/p4-measure.tex#bp:p4:preimage-measure@L1096-L1096 | proof step of this result
EDGE: bp:p0:g3 | blueprint/parts/p4-measure.tex#bp:p4:preimage-measure@L1088-L1088 | cited at this line (statement; \ref{bp:p0:g3})
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#bp:p4:preimage-measure@L1089-L1089 | cited at this line (statement; \ref{bp:p4:freq-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:pm-proof
KIND: step
TITLE: Image under the inverse frequency map
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1096-L1099
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1096-L1099
CONTRACT_ID: step:p4:pm-proof
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:inverse-freq, bp:p1:lip-image, bp:p0:g3
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1098-L1098 | cited at this line (step; \ref{bp:p4:inverse-freq})
EDGE: bp:p1:lip-image | blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1099-L1099 | cited at this line (step; \ref{bp:p1:lip-image})
EDGE: bp:p0:g3 | blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1099-L1099 | cited at this line (step; \ref{bp:p0:g3})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:good-actions
KIND: definition
TITLE: Good actions and the displacement
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1102-L1111
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:good-actions
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:inverse-freq
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1109-L1109 | cited at this line (statement; \ref{bp:p4:inverse-freq})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:map-lipschitz
KIND: lemma
TITLE: The displacement is small and $\tfrac12$-Lipschitz
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1113-L1116
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1118-L1138
CONTRACT_ID: bp:p4:map-lipschitz
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:ml-size, step:p4:ml-good, step:p4:ml-mixed
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:ml-size | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1119-L1119 | proof step of this result
EDGE: step:p4:ml-good | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1123-L1123 | proof step of this result
EDGE: step:p4:ml-mixed | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1133-L1133 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:ml-size
KIND: step
TITLE: Disjointness and size
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-size@L1119-L1121
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-size@L1119-L1121
CONTRACT_ID: step:p4:ml-size
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:normalize
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:ml-size@L1121-L1121 | cited at this line (step; \ref{bp:p4:normalize})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:ml-good
KIND: step
TITLE: Two good actions
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-good@L1123-L1131
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-good@L1123-L1131
CONTRACT_ID: step:p4:ml-good
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:rt-small, bp:p4:lip, bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:rt-small | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1124-L1124 | cited at this line (step; \ref{step:p4:rt-small})
EDGE: bp:p4:lip | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1126-L1126 | cited at this line (step; \ref{bp:p4:lip})
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1126-L1126 | cited at this line (step; \ref{bp:p4:freq-map})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:ml-mixed
KIND: step
TITLE: A good action and a boundary action
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1137
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1137
CONTRACT_ID: step:p4:ml-mixed
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

NODE: bp:p4:main-measure
KIND: theorem
TITLE: Measure of the complement at a given $\gamma$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1140-L1147
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1149-L1184
CONTRACT_ID: bp:p4:main-measure
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:mm-extension, step:p4:mm-tori, step:p4:mm-complement, step:p4:mm-bad, step:p4:mm-count
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1150-L1150 | proof step of this result
EDGE: step:p4:mm-tori | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1158-L1158 | proof step of this result
EDGE: step:p4:mm-complement | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1162-L1162 | proof step of this result
EDGE: step:p4:mm-bad | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1171-L1171 | proof step of this result
EDGE: step:p4:mm-count | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1177-L1177 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mm-extension
KIND: step
TITLE: Extension and lipeomorphism
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1150-L1156
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1150-L1156
CONTRACT_ID: step:p4:mm-extension
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:map-lipschitz, bp:p1:mcshane, bp:p1:lipeo, bp:p1:lip-image-product
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:map-lipschitz | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1151-L1151 | cited at this line (step; \ref{bp:p4:map-lipschitz})
EDGE: bp:p1:mcshane | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1151-L1151 | cited at this line (step; \ref{bp:p1:mcshane})
EDGE: bp:p1:lipeo | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1155-L1155 | cited at this line (step; \ref{bp:p1:lipeo})
EDGE: bp:p1:lip-image-product | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1155-L1155 | cited at this line (step; \ref{bp:p1:lip-image-product})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mm-tori
KIND: step
TITLE: Good actions lie on tori
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-tori@L1158-L1160
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-tori@L1158-L1160
CONTRACT_ID: step:p4:mm-tori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:real-torus
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:real-torus | blueprint/parts/p4-measure.tex#step:p4:mm-tori@L1160-L1160 | cited at this line (step; \ref{bp:p4:real-torus})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mm-complement
KIND: step
TITLE: The complement is the image of bad actions
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-complement@L1162-L1169
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-complement@L1162-L1169
CONTRACT_ID: step:p4:mm-complement
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:mm-tori
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:mm-tori | blueprint/parts/p4-measure.tex#step:p4:mm-complement@L1165-L1165 | cited at this line (step; \ref{step:p4:mm-tori})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mm-bad
KIND: step
TITLE: Bad actions
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1171-L1175
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1171-L1175
CONTRACT_ID: step:p4:mm-bad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:preimage-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:preimage-measure | blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1175-L1175 | cited at this line (step; \ref{bp:p4:preimage-measure})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mm-count
KIND: step
TITLE: Measure count
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-count@L1177-L1183
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-count@L1177-L1183
CONTRACT_ID: step:p4:mm-count
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:lip-image
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:lip-image | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1179-L1179 | cited at this line (step; \ref{bp:p1:lip-image})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:cover-mono
KIND: lemma
TITLE: Monotonicity of the cover
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:cover-mono@L1186-L1189
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:cover-mono@L1191-L1198
CONTRACT_ID: bp:p4:cover-mono
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:cm-proof
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:cm-proof | blueprint/parts/p4-measure.tex#bp:p4:cover-mono@L1192-L1192 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:cm-proof
KIND: step
TITLE: Same witnesses
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:cm-proof@L1192-L1197
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:cm-proof@L1192-L1197
CONTRACT_ID: step:p4:cm-proof
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:cover#kamCover
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#step:p4:cm-proof@L1193-L1193 | cited at this line (step; \ref{bp:p0:cover})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:head-empty
KIND: step
TITLE: Empty action domain
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-empty@L1201-L1202
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-empty@L1201-L1202
CONTRACT_ID: step:p4:head-empty
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

NODE: step:p4:head-constants
KIND: step
TITLE: Constants
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-constants@L1204-L1212
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-constants@L1204-L1212
CONTRACT_ID: step:p4:head-constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:parameters, bp:p4:main-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:head-constants@L1205-L1205 | cited at this line (step; \ref{bp:p4:parameters})
EDGE: bp:p4:main-measure | blueprint/parts/p4-measure.tex#step:p4:head-constants@L1206-L1206 | cited at this line (step; \ref{bp:p4:main-measure})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:head-negative
KIND: step
TITLE: Negative $\varepsilon$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-negative@L1214-L1216
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-negative@L1214-L1216
CONTRACT_ID: step:p4:head-negative
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

NODE: step:p4:head-positive
KIND: step
TITLE: Positive $\varepsilon$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-positive@L1218-L1224
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-positive@L1218-L1224
CONTRACT_ID: step:p4:head-positive
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:cover-mono, bp:p4:main-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:cover-mono | blueprint/parts/p4-measure.tex#step:p4:head-positive@L1221-L1221 | cited at this line (step; \ref{bp:p4:cover-mono})
EDGE: bp:p4:main-measure | blueprint/parts/p4-measure.tex#step:p4:head-positive@L1221-L1221 | cited at this line (step; \ref{bp:p4:main-measure})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:head-zero
KIND: step
TITLE: Vanishing perturbation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-zero@L1226-L1229
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-zero@L1226-L1229
CONTRACT_ID: step:p4:head-zero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:main-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:main-measure | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1228-L1228 | cited at this line (step; \ref{bp:p4:main-measure})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:dyadic-approx
KIND: lemma
TITLE: Inner dyadic approximation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1239-L1243
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1245-L1266
CONTRACT_ID: bp:p4:dyadic-approx
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:dy-exhaust, step:p4:dy-open, step:p4:dy-layer
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:dy-exhaust | blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1246-L1246 | proof step of this result
EDGE: step:p4:dy-open | blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1254-L1254 | proof step of this result
EDGE: step:p4:dy-layer | blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1259-L1259 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:dy-exhaust
KIND: step
TITLE: Dyadic exhaustion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-exhaust@L1246-L1252
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-exhaust@L1246-L1252
CONTRACT_ID: step:p4:dy-exhaust
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

NODE: step:p4:dy-open
KIND: step
TITLE: The open set
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-open@L1254-L1257
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-open@L1254-L1257
CONTRACT_ID: step:p4:dy-open
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

NODE: step:p4:dy-layer
KIND: step
TITLE: Boundary layer
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-layer@L1259-L1265
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-layer@L1259-L1265
CONTRACT_ID: step:p4:dy-layer
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

NODE: step:p4:hq-trivial
KIND: step
TITLE: Trivial cases
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1269-L1272
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1269-L1272
CONTRACT_ID: step:p4:hq-trivial
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

NODE: step:p4:hq-approx
KIND: step
TITLE: Inner approximation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1274-L1275
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1274-L1275
CONTRACT_ID: step:p4:hq-approx
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:dyadic-approx
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:dyadic-approx | blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1275-L1275 | cited at this line (step; \ref{bp:p4:dyadic-approx})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hq-head
KIND: step
TITLE: HEAD for $B'$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-head@L1277-L1285
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-head@L1277-L1285
CONTRACT_ID: step:p4:hq-head
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:head
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:head | blueprint/parts/p4-measure.tex#step:p4:hq-head@L1278-L1278 | cited at this line (step; \ref{bp:p0:head})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hq-transfer
KIND: step
TITLE: Transfer of the perturbation hypotheses
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1287-L1293
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1287-L1293
CONTRACT_ID: step:p4:hq-transfer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:head-negative
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:head-negative | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1291-L1291 | cited at this line (step; \ref{step:p4:head-negative})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hq-cover
KIND: step
TITLE: Comparison of covers
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1295-L1302
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1295-L1302
CONTRACT_ID: step:p4:hq-cover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:cover-mono
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:cover-mono | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1297-L1297 | cited at this line (step; \ref{bp:p4:cover-mono})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:deviations
KIND: claim
TITLE: Deviations from the sources
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:deviations@L1320-L1341
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:deviations@L1320-L1341
CONTRACT_ID: bp:p4:deviations
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:good-actions, bp:p4:omega-gamma, bp:p4:stab, step:p4:lip-phase, bp:p4:lagrangian
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#bp:p4:deviations@L1326-L1326 | cited at this line (statement; \ref{bp:p4:good-actions})
EDGE: bp:p4:omega-gamma | blueprint/parts/p4-measure.tex#bp:p4:deviations@L1331-L1331 | cited at this line (statement; \ref{bp:p4:omega-gamma})
EDGE: bp:p4:stab | blueprint/parts/p4-measure.tex#bp:p4:deviations@L1335-L1335 | cited at this line (statement; \ref{bp:p4:stab})
EDGE: step:p4:lip-phase | blueprint/parts/p4-measure.tex#bp:p4:deviations@L1336-L1336 | cited at this line (statement; \ref{step:p4:lip-phase})
EDGE: bp:p4:lagrangian | blueprint/parts/p4-measure.tex#bp:p4:deviations@L1338-L1338 | cited at this line (statement; \ref{bp:p4:lagrangian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)
