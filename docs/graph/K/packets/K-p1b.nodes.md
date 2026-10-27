NODE: bp:p1:periodic-bounded
KIND: lemma
TITLE: Periodic functions are bounded on smaller strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L505-L507
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L509-L517
CONTRACT_ID: bp:p1:periodic-bounded
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:pb-compact
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:pb-compact | blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L510-L510 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:pb-compact
KIND: step
TITLE: A compact fundamental set
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pb-compact@L510-L516
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pb-compact@L510-L516
CONTRACT_ID: step:p1:pb-compact
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

NODE: bp:p1:strip-identity
KIND: lemma
TITLE: Identity theorem on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L519-L522
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L524-L534
CONTRACT_ID: bp:p1:strip-identity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:si-induction
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:si-induction | blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L525-L525 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:si-induction
KIND: step
TITLE: One coordinate at a time
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:si-induction@L525-L533
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:si-induction@L525-L533
CONTRACT_ID: step:p1:si-induction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-identity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-identity | blueprint/parts/p1-analysis.tex#step:p1:si-induction@L532-L532 | cited at this line (step; \ref{bp:p1:ext-identity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:increments
KIND: lemma
TITLE: Increments
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments@L539-L543
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments@L545-L554
CONTRACT_ID: bp:p1:increments
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:inc-mvt, step:p1:inc-cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:inc-mvt | blueprint/parts/p1-analysis.tex#bp:p1:increments@L546-L546 | proof step of this result
EDGE: step:p1:inc-cauchy | blueprint/parts/p1-analysis.tex#bp:p1:increments@L551-L551 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:inc-mvt
KIND: step
TITLE: Mean value inequality
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-mvt@L546-L549
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-mvt@L546-L549
CONTRACT_ID: step:p1:inc-mvt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:inc-mvt@L548-L548 | cited at this line (step; \ref{bp:p1:ext-mvt})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:inc-cauchy
KIND: step
TITLE: With the Cauchy estimate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-cauchy@L551-L553
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-cauchy@L551-L553
CONTRACT_ID: step:p1:inc-cauchy
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
EDGE: bp:p1:cauchy-strip | blueprint/parts/p1-analysis.tex#step:p1:inc-cauchy@L552-L552 | cited at this line (step; \ref{bp:p1:cauchy-strip})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cauchy-strip
KIND: lemma
TITLE: Cauchy estimate on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L556-L562
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L564-L585
CONTRACT_ID: bp:p1:cauchy-strip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cs-coordinate, step:p1:cs-full
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L567-L567 | proof step of this result
EDGE: step:p1:cs-full | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L577-L577 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:cs-coordinate
KIND: step
TITLE: One coordinate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-coordinate@L567-L575
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-coordinate@L567-L575
CONTRACT_ID: step:p1:cs-coordinate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:cs-coordinate@L572-L572 | cited at this line (step; \ref{bp:p1:ext-cauchy})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:cs-full
KIND: step
TITLE: The full derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-full@L577-L584
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-full@L577-L584
CONTRACT_ID: step:p1:cs-full
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:operator-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:cs-full@L583-L583 | cited at this line (step; \ref{bp:p1:operator-norms})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cauchy-strip-2
KIND: lemma
TITLE: Second-derivative Cauchy estimate on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip-2@L592-L594
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip-2@L596-L603
CONTRACT_ID: bp:p1:cauchy-strip-2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cs2-polydisc
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cs2-polydisc | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip-2@L597-L597 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:cs2-polydisc
KIND: step
TITLE: Polydiscs in the strip
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs2-polydisc@L597-L602
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs2-polydisc@L597-L602
CONTRACT_ID: step:p1:cs2-polydisc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-open
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-open | blueprint/parts/p1-analysis.tex#step:p1:cs2-polydisc@L600-L600 | cited at this line (step; \ref{bp:p1:cauchy-open})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cauchy-corollaries
KIND: lemma
TITLE: Cauchy corollaries
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L605-L609
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L611-L625
CONTRACT_ID: bp:p1:cauchy-corollaries
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cc-transpose, step:p1:cc-omega
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cc-transpose | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L614-L614 | proof step of this result
EDGE: step:p1:cc-omega | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L621-L621 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:cc-transpose
KIND: step
TITLE: Transposed derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-transpose@L614-L619
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-transpose@L614-L619
CONTRACT_ID: step:p1:cc-transpose
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cs-coordinate
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#step:p1:cc-transpose@L618-L618 | cited at this line (step; \ref{step:p1:cs-coordinate})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:cc-omega
KIND: step
TITLE: Derivative along $\omega$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-omega@L621-L624
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-omega@L621-L624
CONTRACT_ID: step:p1:cc-omega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cs-coordinate
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#step:p1:cc-omega@L622-L622 | cited at this line (step; \ref{step:p1:cs-coordinate})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:averages-real
KIND: lemma
TITLE: Averages of functions on the real torus
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L634-L637
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L639-L651
CONTRACT_ID: bp:p1:averages-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ar-one, step:p1:ar-fubini
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:ar-one | blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L640-L640 | proof step of this result
EDGE: step:p1:ar-fubini | blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L646-L646 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ar-one
KIND: step
TITLE: One variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-one@L640-L644
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-one@L640-L644
CONTRACT_ID: step:p1:ar-one
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:ar-one@L643-L643 | cited at this line (step; \ref{bp:p1:ext-integral})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ar-fubini
KIND: step
TITLE: Fubini
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L646-L650
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L646-L650
CONTRACT_ID: step:p1:ar-fubini
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L647-L647 | cited at this line (step; \ref{bp:p1:ext-integral})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:averages
KIND: lemma
TITLE: Averages
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages@L653-L657
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages@L659-L672
CONTRACT_ID: bp:p1:averages
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:av-derivatives, step:p1:av-bound
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:av-derivatives | blueprint/parts/p1-analysis.tex#bp:p1:averages@L660-L660 | proof step of this result
EDGE: step:p1:av-bound | blueprint/parts/p1-analysis.tex#bp:p1:averages@L667-L667 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:av-derivatives
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L660-L665
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L660-L665
CONTRACT_ID: step:p1:av-derivatives
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:averages-real
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L662-L662 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L664-L664 | cited at this line (step; \ref{bp:p1:averages-real})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:av-bound
KIND: step
TITLE: The bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-bound@L667-L671
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-bound@L667-L671
CONTRACT_ID: step:p1:av-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:av-bound@L668-L668 | cited at this line (step; \ref{bp:p1:ext-integral})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:averages-matrix
KIND: lemma
TITLE: Averages of matrix-valued functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L674-L677
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L679-L687
CONTRACT_ID: bp:p1:averages-matrix
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:am-bound, step:p1:am-derivative
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:am-bound | blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L680-L680 | proof step of this result
EDGE: step:p1:am-derivative | blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L684-L684 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:am-bound
KIND: step
TITLE: The bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-bound@L680-L682
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-bound@L680-L682
CONTRACT_ID: step:p1:am-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:am-bound@L681-L681 | cited at this line (step; \ref{bp:p1:ext-integral})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:am-derivative
KIND: step
TITLE: Derivative along $\omega$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-derivative@L684-L686
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-derivative@L684-L686
CONTRACT_ID: step:p1:am-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:averages-real
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:am-derivative@L686-L686 | cited at this line (step; \ref{bp:p1:averages-real})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:periodic-average
KIND: lemma
TITLE: Translation invariance of averages
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L689-L691
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L693-L705
CONTRACT_ID: bp:p1:periodic-average
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:pa-one, step:p1:pa-induction
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:pa-one | blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L694-L694 | proof step of this result
EDGE: step:p1:pa-induction | blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L699-L699 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:pa-one
KIND: step
TITLE: One variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-one@L694-L697
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-one@L694-L697
CONTRACT_ID: step:p1:pa-one
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:pa-one@L696-L696 | cited at this line (step; \ref{bp:p1:ext-integral})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:pa-induction
KIND: step
TITLE: One coordinate at a time
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L699-L704
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L699-L704
CONTRACT_ID: step:p1:pa-induction
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

NODE: bp:p1:exp-sums
KIND: lemma
TITLE: Exponential sums over $\Z^n$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L715-L722
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L724-L743
CONTRACT_ID: bp:p1:exp-sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:es-power, step:p1:es-product, step:p1:es-nonzero
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:es-power | blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L725-L725 | proof step of this result
EDGE: step:p1:es-product | blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L730-L730 | proof step of this result
EDGE: step:p1:es-nonzero | blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L735-L735 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:es-power
KIND: step
TITLE: The power times the exponential
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-power@L725-L728
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-power@L725-L728
CONTRACT_ID: step:p1:es-power
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

NODE: step:p1:es-product
KIND: step
TITLE: Product structure
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-product@L730-L733
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-product@L730-L733
CONTRACT_ID: step:p1:es-product
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

NODE: step:p1:es-nonzero
KIND: step
TITLE: Nonzero modes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L735-L742
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L735-L742
CONTRACT_ID: step:p1:es-nonzero
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

NODE: bp:p1:fourier-basic
KIND: lemma
TITLE: Fourier coefficients of periodic functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L745-L756
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L758-L772
CONTRACT_ID: bp:p1:fourier-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:fb-derivative, step:p1:fb-series, step:p1:fb-holomorphic
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:fb-derivative | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L759-L759 | proof step of this result
EDGE: step:p1:fb-series | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L766-L766 | proof step of this result
EDGE: step:p1:fb-holomorphic | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L769-L769 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:fb-derivative
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-derivative@L759-L764
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-derivative@L759-L764
CONTRACT_ID: step:p1:fb-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:averages-real
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:fb-derivative@L761-L761 | cited at this line (step; \ref{bp:p1:averages-real})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:fb-series
KIND: step
TITLE: Fourier series
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-series@L766-L767
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-series@L766-L767
CONTRACT_ID: step:p1:fb-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-fourier
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-fourier | blueprint/parts/p1-analysis.tex#step:p1:fb-series@L767-L767 | cited at this line (step; \ref{bp:p1:ext-fourier})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:fb-holomorphic
KIND: step
TITLE: Holomorphic functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L769-L771
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L769-L771
CONTRACT_ID: step:p1:fb-holomorphic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:strip-identity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:strip-identity | blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L771-L771 | cited at this line (step; \ref{bp:p1:strip-identity})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:decay
KIND: lemma
TITLE: Coefficient decay
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay@L774-L777
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay@L779-L807
CONTRACT_ID: bp:p1:decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:dec-shift, step:p1:dec-bound
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:dec-shift | blueprint/parts/p1-analysis.tex#bp:p1:decay@L788-L788 | proof step of this result
EDGE: step:p1:dec-bound | blueprint/parts/p1-analysis.tex#bp:p1:decay@L801-L801 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:dec-shift
KIND: step
TITLE: Shifting one variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L788-L799
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L788-L799
CONTRACT_ID: step:p1:dec-shift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-rectangle, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-rectangle | blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L794-L794 | cited at this line (step; \ref{bp:p1:ext-rectangle})
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L799-L799 | cited at this line (step; \ref{bp:p1:ext-integral})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:dec-bound
KIND: step
TITLE: The bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L801-L806
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L801-L806
CONTRACT_ID: step:p1:dec-bound
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

NODE: bp:p1:summation
KIND: lemma
TITLE: Summation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:summation@L812-L819
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:summation@L821-L863
CONTRACT_ID: bp:p1:summation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:sum-bound, step:p1:sum-holo, step:p1:sum-coeff, step:p1:sum-converse, step:p1:sum-representation, bp:p1:decay
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:sum-bound | blueprint/parts/p1-analysis.tex#bp:p1:summation@L824-L824 | proof step of this result
EDGE: step:p1:sum-holo | blueprint/parts/p1-analysis.tex#bp:p1:summation@L829-L829 | proof step of this result
EDGE: step:p1:sum-coeff | blueprint/parts/p1-analysis.tex#bp:p1:summation@L841-L841 | proof step of this result
EDGE: step:p1:sum-converse | blueprint/parts/p1-analysis.tex#bp:p1:summation@L849-L849 | proof step of this result
EDGE: step:p1:sum-representation | blueprint/parts/p1-analysis.tex#bp:p1:summation@L857-L857 | proof step of this result
EDGE: bp:p1:decay | blueprint/parts/p1-analysis.tex#bp:p1:summation@L816-L816 | cited at this line (statement; \ref{bp:p1:decay})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-bound
KIND: step
TITLE: Convergence and the bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-bound@L824-L827
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-bound@L824-L827
CONTRACT_ID: step:p1:sum-bound
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

NODE: step:p1:sum-holo
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L829-L839
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L829-L839
CONTRACT_ID: step:p1:sum-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:exp-sums, bp:p1:uniform-limits
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:exp-sums | blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L831-L831 | cited at this line (step; \ref{bp:p1:exp-sums})
EDGE: bp:p1:uniform-limits | blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L837-L837 | cited at this line (step; \ref{bp:p1:uniform-limits})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-coeff
KIND: step
TITLE: Coefficients
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L841-L847
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L841-L847
CONTRACT_ID: step:p1:sum-coeff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L842-L842 | cited at this line (step; \ref{bp:p1:ext-integral})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-converse
KIND: step
TITLE: The converse estimate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L849-L855
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L849-L855
CONTRACT_ID: step:p1:sum-converse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:decay, bp:p1:exp-sums
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:decay | blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L850-L850 | cited at this line (step; \ref{bp:p1:decay})
EDGE: bp:p1:exp-sums | blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L851-L851 | cited at this line (step; \ref{bp:p1:exp-sums})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-representation
KIND: step
TITLE: Fourier representation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L857-L862
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L857-L862
CONTRACT_ID: step:p1:sum-representation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:fourier-basic
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:fourier-basic | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L862-L862 | cited at this line (step; \ref{bp:p1:fourier-basic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cohomological
KIND: lemma
TITLE: Cohomological equation on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L875-L885
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L887-L957
CONTRACT_ID: bp:p1:cohomological
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coh-data, step:p1:coh-coefficients, step:p1:coh-weighted, step:p1:coh-existence, step:p1:coh-equation, step:p1:coh-unique, step:p1:coh-real, step:p1:coh-vector
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coh-data | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L894-L894 | proof step of this result
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L898-L898 | proof step of this result
EDGE: step:p1:coh-weighted | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L905-L905 | proof step of this result
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L922-L922 | proof step of this result
EDGE: step:p1:coh-equation | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L927-L927 | proof step of this result
EDGE: step:p1:coh-unique | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L934-L934 | proof step of this result
EDGE: step:p1:coh-real | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L943-L943 | proof step of this result
EDGE: step:p1:coh-vector | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L950-L950 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-data
KIND: step
TITLE: Coefficients of the datum
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-data@L894-L896
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-data@L894-L896
CONTRACT_ID: step:p1:coh-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:decay
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:decay | blueprint/parts/p1-analysis.tex#step:p1:coh-data@L895-L895 | cited at this line (step; \ref{bp:p1:decay})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-coefficients
KIND: step
TITLE: The coefficient solution
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L898-L903
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L898-L903
CONTRACT_ID: step:p1:coh-coefficients
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

NODE: step:p1:coh-weighted
KIND: step
TITLE: Weighted estimate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L905-L920
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L905-L920
CONTRACT_ID: step:p1:coh-weighted
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coh-data, bp:p1:exp-sums
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coh-data | blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L906-L906 | cited at this line (step; \ref{step:p1:coh-data})
EDGE: bp:p1:exp-sums | blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L906-L906 | cited at this line (step; \ref{bp:p1:exp-sums})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-existence
KIND: step
TITLE: Existence
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L922-L925
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L922-L925
CONTRACT_ID: step:p1:coh-existence
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:summation
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:summation | blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L923-L923 | cited at this line (step; \ref{bp:p1:summation})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-equation
KIND: step
TITLE: The equation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L927-L932
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L927-L932
CONTRACT_ID: step:p1:coh-equation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:fourier-basic
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L928-L928 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
EDGE: bp:p1:fourier-basic | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L930-L930 | cited at this line (step; \ref{bp:p1:fourier-basic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-unique
KIND: step
TITLE: Uniqueness
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L934-L941
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L934-L941
CONTRACT_ID: step:p1:coh-unique
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:fourier-basic
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:fourier-basic | blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L937-L937 | cited at this line (step; \ref{bp:p1:fourier-basic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-real@L943-L948
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-real@L943-L948
CONTRACT_ID: step:p1:coh-real
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

NODE: step:p1:coh-vector
KIND: step
TITLE: Vector- and matrix-valued data
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L950-L956
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L950-L956
CONTRACT_ID: step:p1:coh-vector
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological-operator
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological-operator | blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L956-L956 | cited at this line (step; \ref{bp:p1:cohomological-operator})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cohomological-operator
KIND: lemma
TITLE: Cohomological equation in operator norms, a-priori bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L959-L962
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L964-L992
CONTRACT_ID: bp:p1:cohomological-operator
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coo-entries, step:p1:coo-vectors, step:p1:coo-norm, step:p1:coo-apriori, bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L968-L968 | proof step of this result
EDGE: step:p1:coo-vectors | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L973-L973 | proof step of this result
EDGE: step:p1:coo-norm | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L980-L980 | proof step of this result
EDGE: step:p1:coo-apriori | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L985-L985 | proof step of this result
EDGE: bp:p1:cohomological | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L960-L960 | cited at this line (statement; \ref{bp:p1:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coo-entries
KIND: step
TITLE: The entrywise solution
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-entries@L968-L971
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-entries@L968-L971
CONTRACT_ID: step:p1:coo-entries
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological | blueprint/parts/p1-analysis.tex#step:p1:coo-entries@L969-L969 | cited at this line (step; \ref{bp:p1:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coo-vectors
KIND: step
TITLE: Testing against vectors
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L973-L978
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L973-L978
CONTRACT_ID: step:p1:coo-vectors
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:matrix-norms, bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L975-L975 | cited at this line (step; \ref{bp:p1:matrix-norms})
EDGE: bp:p1:cohomological | blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L977-L977 | cited at this line (step; \ref{bp:p1:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coo-norm
KIND: step
TITLE: Operator norm
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L980-L983
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L980-L983
CONTRACT_ID: step:p1:coo-norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:operator-norms, step:p1:coo-entries
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L981-L981 | cited at this line (step; \ref{bp:p1:operator-norms})
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L982-L982 | cited at this line (step; \ref{step:p1:coo-entries})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coo-apriori
KIND: step
TITLE: A-priori form
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L985-L991
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L985-L991
CONTRACT_ID: step:p1:coo-apriori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:averages-real, step:p1:coo-entries
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L988-L988 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L989-L989 | cited at this line (step; \ref{bp:p1:averages-real})
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L990-L990 | cited at this line (step; \ref{step:p1:coo-entries})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
