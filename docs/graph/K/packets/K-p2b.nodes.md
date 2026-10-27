NODE: bp:p2:triangular
KIND: lemma
TITLE: The triangular system
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L616-L644
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L646-L668
CONTRACT_ID: bp:p2:triangular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:tri-first, step:p2:tri-xi0, step:p2:tri-second, step:p2:tri-form, step:p2:tri-real, bp:p2:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:tri-first | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L647-L647 | proof step of this result
EDGE: step:p2:tri-xi0 | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L652-L652 | proof step of this result
EDGE: step:p2:tri-second | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L657-L657 | proof step of this result
EDGE: step:p2:tri-form | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L662-L662 | proof step of this result
EDGE: step:p2:tri-real | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L665-L665 | proof step of this result
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L628-L628 | cited at this line (statement; \ref{bp:p2:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-first
KIND: step
TITLE: First cohomological equation
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-first@L647-L650
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-first@L647-L650
CONTRACT_ID: step:p2:tri-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:tri-first@L648-L648 | cited at this line (step; \ref{bp:p2:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-xi0
KIND: step
TITLE: The torsion average fixes $\xi^N_0$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-xi0@L652-L655
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-xi0@L652-L655
CONTRACT_ID: step:p2:tri-xi0
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:averages
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:tri-xi0@L654-L654 | cited at this line (step; \ref{bp:p2:averages})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-second
KIND: step
TITLE: Second cohomological equation
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-second@L657-L660
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-second@L657-L660
CONTRACT_ID: step:p2:tri-second
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:tri-second@L659-L659 | cited at this line (step; \ref{bp:p2:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-form
KIND: step
TITLE: Triangular form
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-form@L662-L663
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-form@L662-L663
CONTRACT_ID: step:p2:tri-form
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

NODE: step:p2:tri-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-real@L665-L667
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-real@L665-L667
CONTRACT_ID: step:p2:tri-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:tri-real@L667-L667 | cited at this line (step; \ref{bp:p2:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:correction
KIND: lemma
TITLE: Size of the correction
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L670-L682
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L684-L721
CONTRACT_ID: bp:p2:correction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:cor-data, step:p2:cor-absorb, step:p2:cor-xin, step:p2:cor-xi, step:p2:cor-dxi, step:p2:cor-reg, bp:p2:triangular
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:cor-data | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L685-L685 | proof step of this result
EDGE: step:p2:cor-absorb | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L691-L691 | proof step of this result
EDGE: step:p2:cor-xin | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L696-L696 | proof step of this result
EDGE: step:p2:cor-xi | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L704-L704 | proof step of this result
EDGE: step:p2:cor-dxi | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L711-L711 | proof step of this result
EDGE: step:p2:cor-reg | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L718-L718 | proof step of this result
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L672-L672 | cited at this line (statement; \ref{bp:p2:triangular})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-data
KIND: step
TITLE: The data of the triangular system
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L685-L689
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L685-L689
CONTRACT_ID: step:p2:cor-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency, bp:p2:periodicity, bp:p2:frame-basic, bp:p2:exactness, bp:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L686-L686 | cited at this line (step; \ref{bp:p2:frequency})
EDGE: bp:p2:periodicity | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L687-L687 | cited at this line (step; \ref{bp:p2:periodicity})
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L687-L687 | cited at this line (step; \ref{bp:p2:frame-basic})
EDGE: bp:p2:exactness | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L687-L687 | cited at this line (step; \ref{bp:p2:exactness})
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L689-L689 | cited at this line (step; \ref{bp:p2:A5})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-absorb
KIND: step
TITLE: Absorbing powers of $\gamma\delta$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-absorb@L691-L694
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-absorb@L691-L694
CONTRACT_ID: step:p2:cor-absorb
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

NODE: step:p2:cor-xin
KIND: step
TITLE: Bounds on $\xi^N$ and $g^L$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L696-L702
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L696-L702
CONTRACT_ID: step:p2:cor-xin
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:triangular
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L697-L697 | cited at this line (step; \ref{bp:p2:triangular})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-xi
KIND: step
TITLE: Bounds on $\xi$ and $\Delta K$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L704-L709
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L704-L709
CONTRACT_ID: step:p2:cor-xi
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

NODE: step:p2:cor-dxi
KIND: step
TITLE: Bound on $\partial_\omega\xi$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L711-L716
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L711-L716
CONTRACT_ID: step:p2:cor-dxi
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:triangular
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L712-L712 | cited at this line (step; \ref{bp:p2:triangular})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-reg
KIND: step
TITLE: Regularity of the correction
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L718-L720
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L718-L720
CONTRACT_ID: step:p2:cor-reg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:periodicity, bp:p2:frame-basic, bp:p2:triangular
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:periodicity | blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L719-L719 | cited at this line (step; \ref{bp:p2:periodicity})
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L720-L720 | cited at this line (step; \ref{bp:p2:frame-basic})
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L720-L720 | cited at this line (step; \ref{bp:p2:triangular})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:newton-error
KIND: lemma
TITLE: The new invariance error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L723-L740
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L742-L785
CONTRACT_ID: bp:p2:newton-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:ne-invert, step:p2:ne-domain, step:p2:ne-expand, step:p2:ne-reduce, step:p2:ne-lin, step:p2:ne-quad, step:p2:ne-total, bp:p2:correction
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ne-invert | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L743-L743 | proof step of this result
EDGE: step:p2:ne-domain | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L749-L749 | proof step of this result
EDGE: step:p2:ne-expand | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L754-L754 | proof step of this result
EDGE: step:p2:ne-reduce | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L759-L759 | proof step of this result
EDGE: step:p2:ne-lin | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L765-L765 | proof step of this result
EDGE: step:p2:ne-quad | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L772-L772 | proof step of this result
EDGE: step:p2:ne-total | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L776-L776 | proof step of this result
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L724-L724 | cited at this line (statement; \ref{bp:p2:correction})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-invert
KIND: step
TITLE: Invertibility of $S$ and of $Q$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L743-L747
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L743-L747
CONTRACT_ID: step:p2:ne-invert
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:geometry, bp:p1:neumann, bp:p2:frame-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:geometry | blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L744-L744 | cited at this line (step; \ref{bp:p2:geometry})
EDGE: bp:p1:neumann | blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L745-L745 | cited at this line (step; \ref{bp:p1:neumann})
EDGE: bp:p2:frame-identities | blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L746-L746 | cited at this line (step; \ref{bp:p2:frame-identities})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-domain
KIND: step
TITLE: The corrected torus stays in the domain
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-domain@L749-L752
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-domain@L749-L752
CONTRACT_ID: step:p2:ne-domain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:ne-domain@L751-L751 | cited at this line (step; \ref{bp:p2:A2})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-expand
KIND: step
TITLE: Expansion of the new error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L754-L757
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L754-L757
CONTRACT_ID: step:p2:ne-expand
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

NODE: step:p2:ne-reduce
KIND: step
TITLE: Reduction by $Q$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L759-L763
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L759-L763
CONTRACT_ID: step:p2:ne-reduce
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities, bp:p2:triangular
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L760-L760 | cited at this line (step; \ref{bp:p2:frame-identities})
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L763-L763 | cited at this line (step; \ref{bp:p2:triangular})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-lin
KIND: step
TITLE: Estimate of the linear part
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-lin@L765-L770
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-lin@L765-L770
CONTRACT_ID: step:p2:ne-lin
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:geometry, bp:p2:correction
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:geometry | blueprint/parts/p2-aposteriori.tex#step:p2:ne-lin@L766-L766 | cited at this line (step; \ref{bp:p2:geometry})
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#step:p2:ne-lin@L766-L766 | cited at this line (step; \ref{bp:p2:correction})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-quad
KIND: step
TITLE: Estimate of the quadratic part
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-quad@L772-L774
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-quad@L772-L774
CONTRACT_ID: step:p2:ne-quad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:ne-quad@L773-L773 | cited at this line (step; \ref{bp:p2:hamiltonian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-total
KIND: step
TITLE: The quadratic estimate
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L776-L784
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L776-L784
CONTRACT_ID: step:p2:ne-total
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L783-L783 | cited at this line (step; \ref{bp:p2:frequency})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:perturbation
KIND: lemma
TITLE: Perturbation of the frame and the torsion
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L798-L820
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L822-L878
CONTRACT_ID: bp:p2:perturbation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:pt-small, step:p2:pt-domain, step:p2:pt-dl, step:p2:pt-gram, step:p2:pt-binv, step:p2:pt-n, step:p2:pt-xn, step:p2:pt-torsion, step:p2:pt-twist
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:pt-small | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L823-L823 | proof step of this result
EDGE: step:p2:pt-domain | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L834-L834 | proof step of this result
EDGE: step:p2:pt-dl | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L839-L839 | proof step of this result
EDGE: step:p2:pt-gram | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L844-L844 | proof step of this result
EDGE: step:p2:pt-binv | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L848-L848 | proof step of this result
EDGE: step:p2:pt-n | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L853-L853 | proof step of this result
EDGE: step:p2:pt-xn | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L859-L859 | proof step of this result
EDGE: step:p2:pt-torsion | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L866-L866 | proof step of this result
EDGE: step:p2:pt-twist | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L873-L873 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-small
KIND: step
TITLE: Consequences of the smallness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-small@L823-L832
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-small@L823-L832
CONTRACT_ID: step:p2:pt-small
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

NODE: step:p2:pt-domain
KIND: step
TITLE: Domain
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-domain@L834-L837
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-domain@L834-L837
CONTRACT_ID: step:p2:pt-domain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:pt-domain@L837-L837 | cited at this line (step; \ref{bp:p2:hamiltonian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-dl
KIND: step
TITLE: Tangent frame
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L839-L842
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L839-L842
CONTRACT_ID: step:p2:pt-dl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-strip, bp:p1:cauchy-corollaries
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-strip | blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L840-L840 | cited at this line (step; \ref{bp:p1:cauchy-strip})
EDGE: bp:p1:cauchy-corollaries | blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L840-L840 | cited at this line (step; \ref{bp:p1:cauchy-corollaries})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-gram
KIND: step
TITLE: Gram matrix
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-gram@L844-L846
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-gram@L844-L846
CONTRACT_ID: step:p2:pt-gram
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

NODE: step:p2:pt-binv
KIND: step
TITLE: Gram inverse (invertibility before use)
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-binv@L848-L851
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-binv@L848-L851
CONTRACT_ID: step:p2:pt-binv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:neumann
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:neumann | blueprint/parts/p2-aposteriori.tex#step:p2:pt-binv@L850-L850 | cited at this line (step; \ref{bp:p1:neumann})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-n
KIND: step
TITLE: Normal frame
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L853-L857
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L853-L857
CONTRACT_ID: step:p2:pt-n
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

NODE: step:p2:pt-xn
KIND: step
TITLE: Displacement of the normal frame
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L859-L864
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L859-L864
CONTRACT_ID: step:p2:pt-xn
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-corollaries
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-corollaries | blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L862-L862 | cited at this line (step; \ref{bp:p1:cauchy-corollaries})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-torsion
KIND: step
TITLE: Torsion
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L866-L871
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L866-L871
CONTRACT_ID: step:p2:pt-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-basic
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L868-L868 | cited at this line (step; \ref{bp:p2:frame-basic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-twist
KIND: step
TITLE: Twist (integrability and invertibility before use)
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L873-L877
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L873-L877
CONTRACT_ID: step:p2:pt-twist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:averages, bp:p1:neumann
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L875 | cited at this line (step; \ref{bp:p2:averages})
EDGE: bp:p1:neumann | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L877-L877 | cited at this line (step; \ref{bp:p1:neumann})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:step
KIND: proposition
TITLE: The KAM step
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:step@L883-L903
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:step@L905-L929
CONTRACT_ID: bp:p2:step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:st-small, step:p2:st-error, step:p2:st-ball, step:p2:st-perturb, bp:p2:newton-error
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:st-small | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L906-L906 | proof step of this result
EDGE: step:p2:st-error | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L915-L915 | proof step of this result
EDGE: step:p2:st-ball | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L921-L921 | proof step of this result
EDGE: step:p2:st-perturb | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L924-L924 | proof step of this result
EDGE: bp:p2:newton-error | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L889-L889 | cited at this line (statement; \ref{bp:p2:newton-error})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:st-small
KIND: step
TITLE: The smallness conditions used
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-small@L906-L913
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-small@L906-L913
CONTRACT_ID: step:p2:st-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:st-small@L907-L907 | cited at this line (step; \ref{bp:p2:frequency})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:st-error
KIND: step
TITLE: Correction and new error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L915-L919
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L915-L919
CONTRACT_ID: step:p2:st-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:correction, bp:p2:newton-error
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L916-L916 | cited at this line (step; \ref{bp:p2:correction})
EDGE: bp:p2:newton-error | blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L916-L916 | cited at this line (step; \ref{bp:p2:newton-error})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:st-ball
KIND: step
TITLE: Ball margin
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L921-L922
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L921-L922
CONTRACT_ID: step:p2:st-ball
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L922-L922 | cited at this line (step; \ref{bp:p2:A2})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:st-perturb
KIND: step
TITLE: Perturbation on the strip $T_{r-2\delta}$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L924-L928
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L924-L928
CONTRACT_ID: step:p2:st-perturb
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:perturbation, bp:p2:admissible, bp:p2:frequency
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:perturbation | blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L925-L925 | cited at this line (step; \ref{bp:p2:perturbation})
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L926-L926 | cited at this line (step; \ref{bp:p2:A2})
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L926-L926 | cited at this line (step; \ref{bp:p2:frequency})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:schedule
KIND: definition
TITLE: Schedule of the iteration
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:schedule@L934-L946
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:schedule
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:schedule@L936-L936 | cited at this line (statement; \ref{bp:p2:constants})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:error-decay
KIND: lemma
TITLE: Decay of the errors
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L951-L956
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L958-L968
CONTRACT_ID: bp:p2:error-decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:ed-errors, step:p2:ed-sums
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ed-errors | blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L959-L959 | proof step of this result
EDGE: step:p2:ed-sums | blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L965-L965 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ed-errors
KIND: step
TITLE: The errors of the schedule
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ed-errors@L959-L963
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ed-errors@L959-L963
CONTRACT_ID: step:p2:ed-errors
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:schedule, bp:p1:iteration
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:ed-errors@L960-L960 | cited at this line (step; \ref{bp:p2:schedule})
EDGE: bp:p1:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:ed-errors@L962-L962 | cited at this line (step; \ref{bp:p1:iteration})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ed-sums
KIND: step
TITLE: Sums
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ed-sums@L965-L967
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ed-sums@L965-L967
CONTRACT_ID: step:p2:ed-sums
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

NODE: bp:p2:iteration
KIND: proposition
TITLE: The induction
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L970-L990
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L992-L1029
CONTRACT_ID: bp:p2:iteration
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:it-sums, step:p2:it-stepsmall, step:p2:it-base, step:p2:it-step
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:it-sums | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L993-L993 | proof step of this result
EDGE: step:p2:it-stepsmall | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1008-L1008 | proof step of this result
EDGE: step:p2:it-base | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1016-L1016 | proof step of this result
EDGE: step:p2:it-step | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1020-L1020 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE:  [pre-extract: dropped reference to bp:p0:g1, which this part proves]

NODE: step:p2:it-sums
KIND: step
TITLE: Summed bounds
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L993-L1006
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L993-L1006
CONTRACT_ID: step:p2:it-sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency, bp:p2:error-decay
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L994-L994 | cited at this line (step; \ref{bp:p2:frequency})
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L996-L996 | cited at this line (step; \ref{bp:p2:error-decay})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:it-stepsmall
KIND: step
TITLE: Step smallness at every stage
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1008-L1014
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1008-L1014
CONTRACT_ID: step:p2:it-stepsmall
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:error-decay, bp:p2:step
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1009 | cited at this line (step; \ref{bp:p2:error-decay})
EDGE: bp:p2:step | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1013-L1013 | cited at this line (step; \ref{bp:p2:step})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:it-base
KIND: step
TITLE: Base case
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-base@L1016-L1018
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-base@L1016-L1018
CONTRACT_ID: step:p2:it-base
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

NODE: step:p2:it-step
KIND: step
TITLE: Inductive step
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1020-L1028
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1020-L1028
CONTRACT_ID: step:p2:it-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:step, bp:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:step | blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1021-L1021 | cited at this line (step; \ref{bp:p2:step})
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1023-L1023 | cited at this line (step; \ref{bp:p2:A1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:limit
KIND: proposition
TITLE: The limit torus
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1031-L1051
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1053-L1089
CONTRACT_ID: bp:p2:limit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:lim-k, step:p2:lim-dk, step:p2:lim-holo, step:p2:lim-primary, step:p2:lim-close, step:p2:lim-margins, step:p2:lim-invariance, bp:p2:iteration
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1054-L1054 | proof step of this result
EDGE: step:p2:lim-dk | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1060-L1060 | proof step of this result
EDGE: step:p2:lim-holo | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1064-L1064 | proof step of this result
EDGE: step:p2:lim-primary | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1070-L1070 | proof step of this result
EDGE: step:p2:lim-close | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1074-L1074 | proof step of this result
EDGE: step:p2:lim-margins | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1079-L1079 | proof step of this result
EDGE: step:p2:lim-invariance | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1084-L1084 | proof step of this result
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1032-L1032 | cited at this line (statement; \ref{bp:p2:iteration})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-k
KIND: step
TITLE: Uniform convergence of $K_s$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1054-L1058
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1054-L1058
CONTRACT_ID: step:p2:lim-k
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:schedule, bp:p2:iteration, bp:p2:error-decay
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1055-L1055 | cited at this line (step; \ref{bp:p2:schedule})
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1056-L1056 | cited at this line (step; \ref{bp:p2:iteration})
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1057-L1057 | cited at this line (step; \ref{bp:p2:error-decay})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-dk
KIND: step
TITLE: Uniform convergence of $DK_s$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1060-L1062
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1060-L1062
CONTRACT_ID: step:p2:lim-dk
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

NODE: step:p2:lim-holo
KIND: step
TITLE: Holomorphy of the limit
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1064-L1068
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1064-L1068
CONTRACT_ID: step:p2:lim-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:uniform-limits
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:uniform-limits | blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1066-L1066 | cited at this line (step; \ref{bp:p1:uniform-limits})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-primary
KIND: step
TITLE: Primary and real
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1070-L1072
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1070-L1072
CONTRACT_ID: step:p2:lim-primary
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p1:uniform-limits
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072 | cited at this line (step; \ref{bp:p2:iteration})
EDGE: bp:p1:uniform-limits | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072 | cited at this line (step; \ref{bp:p1:uniform-limits})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-close
KIND: step
TITLE: Closeness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1074-L1077
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1074-L1077
CONTRACT_ID: step:p2:lim-close
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1076-L1076 | cited at this line (step; \ref{bp:p2:iteration})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-margins
KIND: step
TITLE: Margins
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-margins@L1079-L1082
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-margins@L1079-L1082
CONTRACT_ID: step:p2:lim-margins
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-margins@L1082-L1082 | cited at this line (step; \ref{bp:p2:iteration})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-invariance
KIND: step
TITLE: Invariance
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1084-L1088
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1084-L1088
CONTRACT_ID: step:p2:lim-invariance
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p2:error-decay
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1087-L1087 | cited at this line (step; \ref{bp:p2:iteration})
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1088-L1088 | cited at this line (step; \ref{bp:p2:error-decay})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:g1
KIND: theorem
TITLE: G1 with explicit constants
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1094-L1107
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1109-L1142
CONTRACT_ID: bp:p2:g1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:g1-constants, step:p2:g1-standing, step:p2:g1-e, step:p2:g1-apply, step:p2:g1-check, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:g1-constants | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1110-L1110 | proof step of this result
EDGE: step:p2:g1-standing | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1115-L1115 | proof step of this result
EDGE: step:p2:g1-e | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1121-L1121 | proof step of this result
EDGE: step:p2:g1-apply | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1126-L1126 | proof step of this result
EDGE: step:p2:g1-check | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1131-L1131 | proof step of this result
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1096-L1096 | cited at this line (statement; \ref{bp:p2:constants})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE:  [pre-extract: dropped reference to bp:p0:g1, which this part proves]

NODE: step:p2:g1-constants
KIND: step
TITLE: The constants
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-constants@L1110-L1113
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-constants@L1110-L1113
CONTRACT_ID: step:p2:g1-constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:constants, bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:g1-constants@L1111-L1111 | cited at this line (step; \ref{bp:p2:constants})
EDGE: bp:p1:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:g1-constants@L1113-L1113 | cited at this line (step; \ref{bp:p1:cohomological})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:g1-standing
KIND: step
TITLE: The standing assumptions
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-standing@L1115-L1119
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-standing@L1115-L1119
CONTRACT_ID: step:p2:g1-standing
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:standing, bp:p2:frozen-agreement
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:g1-standing@L1118-L1118 | cited at this line (step; \ref{bp:p2:standing})
EDGE: bp:p2:frozen-agreement | blueprint/parts/p2-aposteriori.tex#step:p2:g1-standing@L1119-L1119 | cited at this line (step; \ref{bp:p2:frozen-agreement})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE:  [pre-extract: dropped reference to bp:p0:g1, which this part proves]

NODE: step:p2:g1-e
KIND: step
TITLE: Size of the error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-e@L1121-L1124
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-e@L1121-L1124
CONTRACT_ID: step:p2:g1-e
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

NODE: step:p2:g1-apply
KIND: step
TITLE: Iteration and limit
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1126-L1129
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1126-L1129
CONTRACT_ID: step:p2:g1-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p2:limit
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1127-L1127 | cited at this line (step; \ref{bp:p2:iteration})
EDGE: bp:p2:limit | blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1129-L1129 | cited at this line (step; \ref{bp:p2:limit})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE:  [pre-extract: dropped reference to bp:p0:g1, which this part proves]

NODE: step:p2:g1-check
KIND: step
TITLE: Checking the conclusion
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1131-L1141
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1131-L1141
CONTRACT_ID: step:p2:g1-check
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:limit, bp:p2:frozen-agreement
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:limit | blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1132-L1132 | cited at this line (step; \ref{bp:p2:limit})
EDGE: bp:p2:frozen-agreement | blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1141-L1141 | cited at this line (step; \ref{bp:p2:frozen-agreement})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE:  [pre-extract: dropped reference to bp:p0:g1, which this part proves]

NODE: bp:p2:constants-register
KIND: claim
TITLE: Constants and their counterparts in HL19
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:constants-register@L1144-L1171
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:constants-register@L1144-L1171
CONTRACT_ID: bp:p2:constants-register
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:constants, bp:p2:frequency, bp:p2:frame-basic, bp:p2:geometry, bp:p2:correction, bp:p2:newton-error, bp:p2:perturbation, bp:p2:step, bp:p2:iteration, bp:p2:g1
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:constants-register@L1145-L1145 | cited at this line (statement; \ref{bp:p2:constants})
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#bp:p2:constants-register@L1149-L1149 | cited at this line (statement; \ref{bp:p2:frequency})
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#bp:p2:constants-register@L1150-L1150 | cited at this line (statement; \ref{bp:p2:frame-basic})
EDGE: bp:p2:geometry | blueprint/parts/p2-aposteriori.tex#bp:p2:constants-register@L1151-L1151 | cited at this line (statement; \ref{bp:p2:geometry})
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#bp:p2:constants-register@L1154-L1154 | cited at this line (statement; \ref{bp:p2:correction})
EDGE: bp:p2:newton-error | blueprint/parts/p2-aposteriori.tex#bp:p2:constants-register@L1157-L1157 | cited at this line (statement; \ref{bp:p2:newton-error})
EDGE: bp:p2:perturbation | blueprint/parts/p2-aposteriori.tex#bp:p2:constants-register@L1159-L1159 | cited at this line (statement; \ref{bp:p2:perturbation})
EDGE: bp:p2:step | blueprint/parts/p2-aposteriori.tex#bp:p2:constants-register@L1163-L1163 | cited at this line (statement; \ref{bp:p2:step})
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#bp:p2:constants-register@L1164-L1164 | cited at this line (statement; \ref{bp:p2:iteration})
EDGE: bp:p2:g1 | blueprint/parts/p2-aposteriori.tex#bp:p2:constants-register@L1166-L1166 | cited at this line (statement; \ref{bp:p2:g1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim)

NODE: bp:p2:deviations
KIND: claim
TITLE: Deviations from the sources
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:deviations@L1173-L1211
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:deviations@L1173-L1211
CONTRACT_ID: bp:p2:deviations
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:exactness, bp:p2:frame-identities, bp:p2:frequency, bp:p2:torsion-route, bp:p2:perturbation, bp:p2:transposes, bp:p2:periodicity, bp:p2:triangular, bp:p2:correction, bp:p2:g1
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:exactness | blueprint/parts/p2-aposteriori.tex#bp:p2:deviations@L1177-L1177 | cited at this line (statement; \ref{bp:p2:exactness})
EDGE: bp:p2:frame-identities | blueprint/parts/p2-aposteriori.tex#bp:p2:deviations@L1182-L1182 | cited at this line (statement; \ref{bp:p2:frame-identities})
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#bp:p2:deviations@L1190-L1190 | cited at this line (statement; \ref{bp:p2:frequency})
EDGE: bp:p2:torsion-route | blueprint/parts/p2-aposteriori.tex#bp:p2:deviations@L1191-L1191 | cited at this line (statement; \ref{bp:p2:torsion-route})
EDGE: bp:p2:perturbation | blueprint/parts/p2-aposteriori.tex#bp:p2:deviations@L1193-L1193 | cited at this line (statement; \ref{bp:p2:perturbation})
EDGE: bp:p2:transposes | blueprint/parts/p2-aposteriori.tex#bp:p2:deviations@L1199-L1199 | cited at this line (statement; \ref{bp:p2:transposes})
EDGE: bp:p2:periodicity | blueprint/parts/p2-aposteriori.tex#bp:p2:deviations@L1206-L1206 | cited at this line (statement; \ref{bp:p2:periodicity})
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#bp:p2:deviations@L1206-L1206 | cited at this line (statement; \ref{bp:p2:triangular})
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#bp:p2:deviations@L1206-L1206 | cited at this line (statement; \ref{bp:p2:correction})
EDGE: bp:p2:g1 | blueprint/parts/p2-aposteriori.tex#bp:p2:deviations@L1210-L1210 | cited at this line (statement; \ref{bp:p2:g1})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark: its justification is inline (confirm, or exclude if not a mathematical claim) [pre-extract: dropped reference to bp:p0:g1, which this part proves]
