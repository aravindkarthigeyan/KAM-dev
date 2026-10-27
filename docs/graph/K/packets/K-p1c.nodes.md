NODE: bp:p1:iteration
KIND: lemma
TITLE: Quadratic iteration on nested strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:iteration@L997-L1002
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1004-L1018
CONTRACT_ID: bp:p1:iteration
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:it-super, step:p1:it-linear
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:it-super | blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1005-L1005 | proof step of this result
EDGE: step:p1:it-linear | blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1012-L1012 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:it-super
KIND: step
TITLE: Super-exponential decay
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-super@L1005-L1010
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-super@L1005-L1010
CONTRACT_ID: step:p1:it-super
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

NODE: step:p1:it-linear
KIND: step
TITLE: The form linear in $y_0$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-linear@L1012-L1017
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-linear@L1012-L1017
CONTRACT_ID: step:p1:it-linear
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

NODE: bp:p1:real-restriction-consequences
KIND: claim
TITLE: Real restrictions of linear and primary maps
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1027-L1033
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1027-L1033
CONTRACT_ID: bp:p1:real-restriction-consequences
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

NODE: bp:p1:real-restriction
KIND: lemma
TITLE: Real restriction
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1035-L1039
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1041-L1059
CONTRACT_ID: bp:p1:real-restriction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:rr-analytic, step:p1:rr-derivative, step:p1:rr-consequences
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:rr-analytic | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1045-L1045 | proof step of this result
EDGE: step:p1:rr-derivative | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1049-L1049 | proof step of this result
EDGE: step:p1:rr-consequences | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1055-L1055 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:rr-analytic
KIND: step
TITLE: Analyticity
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1045-L1047
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1045-L1047
CONTRACT_ID: step:p1:rr-analytic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-analytic | blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1046-L1046 | cited at this line (step; \ref{bp:p1:holomorphic-analytic})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:rr-derivative
KIND: step
TITLE: The derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-derivative@L1049-L1053
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-derivative@L1049-L1053
CONTRACT_ID: step:p1:rr-derivative
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

NODE: step:p1:rr-consequences
KIND: step
TITLE: Norm and primarity
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1055-L1058
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1055-L1058
CONTRACT_ID: step:p1:rr-consequences
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:real-restriction-consequences
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:real-restriction-consequences | blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1057-L1057 | cited at this line (step; \ref{bp:p1:real-restriction-consequences})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:hamiltonian-real
KIND: lemma
TITLE: Real and complex Hamiltonian fields
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1061-L1067
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1069-L1096
CONTRACT_ID: bp:p1:hamiltonian-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hr-derivative, step:p1:hr-components, step:p1:hr-matrix, bp:p0:hamiltonian#hamiltonianVectorField, bp:p0:hamiltonian#hamiltonianVectorFieldC, bp:p0:hamiltonian#symplecticForm, bp:p0:hamiltonian#omegaZero
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:hr-derivative | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1073-L1073 | proof step of this result
EDGE: step:p1:hr-components | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1081-L1081 | proof step of this result
EDGE: step:p1:hr-matrix | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1089-L1089 | proof step of this result
EDGE: bp:p0:hamiltonian#hamiltonianVectorField | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1070-L1070 | cited at this line (proof; \ref{bp:p0:hamiltonian})
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1070-L1070 | cited at this line (proof; \ref{bp:p0:hamiltonian})
EDGE: bp:p0:hamiltonian#symplecticForm | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1070-L1070 | cited at this line (proof; \ref{bp:p0:hamiltonian})
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1070-L1070 | cited at this line (proof; \ref{bp:p0:hamiltonian})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hr-derivative
KIND: step
TITLE: The real derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-derivative@L1073-L1079
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-derivative@L1073-L1079
CONTRACT_ID: step:p1:hr-derivative
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

NODE: step:p1:hr-components
KIND: step
TITLE: Components
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1081-L1087
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1081-L1087
CONTRACT_ID: step:p1:hr-components
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

NODE: step:p1:hr-matrix
KIND: step
TITLE: Matrix form
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1089-L1095
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1089-L1095
CONTRACT_ID: step:p1:hr-matrix
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
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1094-L1094 | cited at this line (step; \ref{bp:p1:operator-norms})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:lip-image-product
KIND: claim
TITLE: Products
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1106-L1109
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1106-L1109
CONTRACT_ID: bp:p1:lip-image-product
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

NODE: bp:p1:lip-image
KIND: lemma
TITLE: Lipschitz images and preimages
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1111-L1116
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1118-L1153
CONTRACT_ID: bp:p1:lip-image
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:li-cubes, step:p1:li-image, step:p1:li-sum, step:p1:li-preimage, step:p1:li-product
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:li-cubes | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1122-L1122 | proof step of this result
EDGE: step:p1:li-image | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1131-L1131 | proof step of this result
EDGE: step:p1:li-sum | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1137-L1137 | proof step of this result
EDGE: step:p1:li-preimage | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1144-L1144 | proof step of this result
EDGE: step:p1:li-product | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1150-L1150 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:li-cubes
KIND: step
TITLE: Covers by cubes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1122-L1129
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1122-L1129
CONTRACT_ID: step:p1:li-cubes
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1124-L1124 | cited at this line (step; \ref{bp:p1:ext-lebesgue})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:li-image
KIND: step
TITLE: Image of one cube
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-image@L1131-L1135
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-image@L1131-L1135
CONTRACT_ID: step:p1:li-image
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

NODE: step:p1:li-sum
KIND: step
TITLE: Summation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1137-L1142
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1137-L1142
CONTRACT_ID: step:p1:li-sum
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

NODE: step:p1:li-preimage
KIND: step
TITLE: Preimages of null sets
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1144-L1148
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1144-L1148
CONTRACT_ID: step:p1:li-preimage
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

NODE: step:p1:li-product
KIND: step
TITLE: Products
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-product@L1150-L1152
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-product@L1150-L1152
CONTRACT_ID: step:p1:li-product
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:lip-image-product
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:lip-image-product | blueprint/parts/p1-analysis.tex#step:p1:li-product@L1151-L1151 | cited at this line (step; \ref{bp:p1:lip-image-product})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:mcshane
KIND: lemma
TITLE: McShane extension
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1155-L1158
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1160-L1181
CONTRACT_ID: bp:p1:mcshane
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:mc-component, step:p1:mc-components, step:p1:mc-clamp
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:mc-component | blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1164-L1164 | proof step of this result
EDGE: step:p1:mc-components | blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1172-L1172 | proof step of this result
EDGE: step:p1:mc-clamp | blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1177-L1177 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mc-component
KIND: step
TITLE: One component
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-component@L1164-L1170
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-component@L1164-L1170
CONTRACT_ID: step:p1:mc-component
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

NODE: step:p1:mc-components
KIND: step
TITLE: All components
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1172-L1175
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1172-L1175
CONTRACT_ID: step:p1:mc-components
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

NODE: step:p1:mc-clamp
KIND: step
TITLE: Clamping
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1177-L1180
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1177-L1180
CONTRACT_ID: step:p1:mc-clamp
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

NODE: bp:p1:lipeo-fixed
KIND: claim
TITLE: Bijections fixing a set
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo-fixed@L1183-L1188
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo-fixed@L1183-L1188
CONTRACT_ID: bp:p1:lipeo-fixed
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

NODE: bp:p1:lipeo
KIND: lemma
TITLE: Lipeomorphisms
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1190-L1194
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1196-L1212
CONTRACT_ID: bp:p1:lipeo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:lipeo-bounds, step:p1:lipeo-onto, step:p1:lipeo-zero
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:lipeo-bounds | blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1199-L1199 | proof step of this result
EDGE: step:p1:lipeo-onto | blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1204-L1204 | proof step of this result
EDGE: step:p1:lipeo-zero | blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1209-L1209 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:lipeo-bounds
KIND: step
TITLE: Bi-Lipschitz bounds
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-bounds@L1199-L1202
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-bounds@L1199-L1202
CONTRACT_ID: step:p1:lipeo-bounds
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

NODE: step:p1:lipeo-onto
KIND: step
TITLE: Surjectivity
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1204-L1207
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1204-L1207
CONTRACT_ID: step:p1:lipeo-onto
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-banach
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-banach | blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1206-L1206 | cited at this line (step; \ref{bp:p1:ext-banach})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:lipeo-zero
KIND: step
TITLE: The set where $G$ vanishes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1209-L1211
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1209-L1211
CONTRACT_ID: step:p1:lipeo-zero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:lipeo-fixed
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:lipeo-fixed | blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1210-L1210 | cited at this line (step; \ref{bp:p1:lipeo-fixed})
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
