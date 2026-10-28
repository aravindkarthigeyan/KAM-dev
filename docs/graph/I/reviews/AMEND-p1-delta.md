# Track I amendment: delta topology review

Reviewer: `sol-delta-I-amend`. Marker: `delta-I-amend`.

**Verdict: FAIL.** Of 14 PROPOSED nodes, 6 PASS and 8 require minimal graph corrections. All 14 PROPOSED coverage items PASS. The current source arguments address G01–G03; the remaining failures concern the dependency records and source-premise fields, not a return of those mathematical premise gaps.

Read DELTA-BRIEF.md and applied REVIEW-BRIEF/SPEC, especially the rule against proof ingredients in SOURCE_HYPOTHESES and the mandatory per-consumer setting/package edges. Reviewed current source after blueprint commit `376ce2c` and graph amendment `8c84d5f`. The extractor is `sonnet-amend-I-p1`; this review is independent. Only the assigned proposed records/coverage are certified; other nodes are prerequisite context. No Lean invocation or implementation/proof-status inspection was used.

## PROPOSED nodes

Part 1 locators below refer to `blueprint-I/parts/p1-iso-linear.tex`; Part 7 locators refer to `blueprint-I/parts/p7-delaunay.tex`.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpI:p1:ext-neumann | PASS | L101–105 | The radius-one hypothesis, finite-dimensional carrier and invertibility-only conclusion match the labelled external input. No inverse bound or half-radius premise is imported. |
| stepI:p1:eb-holo | PASS | L130–146 | The direct regularity proof and five child obligations replace the old fb-holo application. The setting is retained and no uniform torus margin or frame bound is assumed. |
| stepI:p1:eb-holo-frame | FAIL | L133–134 | Missing direct ext-chain edge for the sums/products used to obtain holomorphy of G=L^T L. The regularity import pays holomorphy of DK, not this closure operation. |
| stepI:p1:eb-holo-inverse | FAIL | L136–137 | SOURCE_HYPOTHESES adds “G holomorphic (frame step)” as a premise. This is proved by eb-holo-frame, already correctly recorded as a dependency; remove only that added premise. |
| stepI:p1:eb-holo-field | PASS | L139–140 | The bridge is required: the expressly used K Hamiltonian lemma assumes K standing data. Part 1 supplies those data via the existing bridge. The derivative/composition inputs need no A2–A4 or A5 premise. |
| stepI:p1:eb-holo-torsion | FAIL | L142–143 | SOURCE_HYPOTHESES adds holomorphy of N,A from earlier substeps as source premises. Those facts are paid by the existing inverse/field dependencies, not new assumptions of this proof. Also missing the direct extendedTorsion definition edge for the block-entry assertion at L143. |
| stepI:p1:eb-holo-conclude | FAIL | L145–146 | SOURCE_HYPOTHESES assumes “earlier substeps”; remove that proof ingredient. Also missing the mandatory direct setting edge for this Part 1 result, its local objects and strip/real-slice conclusion. |
| stepI:p1:rd-consequence | PASS | L516–521 | The radius-one external is applied with X=Omega_0 E_sym and norm(X)=norm(E_sym)<1. The old Neumann import is a comparison only; residual identities and conditional equivalence are preserved. |
| stepI:p1:geo-de | PASS | L535–548 | The parent supplies A2–A4, the error bound, holomorphy and 0<delta<r. Frame-basic(a), Cauchy-strip and the p=2n transpose corollary give both displayed bounds without A5. |
| stepI:p1:geo-red | FAIL | L549–559 | The two children supply the estimates, but the parent record dropped its direct setting and constants-package edges despite using the local objects, m and C_red. SPEC requires those package edges at each consumer. |
| stepI:p1:geo-red-domega | FAIL | L552–556 | SOURCE_HYPOTHESES adds the derived DE and transpose bounds as premises. Remove that addition; the existing geo-de edge supplies them. The imported identities/frame bounds and the arithmetic are otherwise correct. |
| stepI:p1:geo-red-ered | FAIL | L558–559 | SOURCE_HYPOTHESES adds the derived DE and transpose bounds as premises. Remove that addition; the existing geo-de edge supplies them. Both block-row estimates are bounded by C_red using m>=1. |
| bpI:p7:symplectic | PASS | Part 7 L205–240 | The statement correctly distinguishes the open target U from the source W=D_R cap Q^{-1}(U). It retains the one-form and symplectic identities, invertibility and the C1-curve equivalence on W. |
| stepI:p7:sy-field | FAIL | Part 7 L239; sy-ext L236–237 | SOURCE_HYPOTHESES adds DQ J DQ^T=J, a conclusion proved by sy-ext. Keep the valid domain and C1 hypotheses and the existing sy-ext edge, but remove the proof ingredient from source premises. |

The six premise-field corrections do not dispute that the earlier facts are proved. Their existing DEPS are retained precisely to supply those facts; the brief requires source premises and proof ingredients to remain distinct. No theorem premise, conclusion, locator, quantifier field, constant scope or unrelated attribution is changed by these replacements.

## PROPOSED coverage

| ID | Verdict | Source span | Check |
|---|---|---|---|
| bpI:p1:ext-neumann | PASS | blueprint-I/parts/p1-iso-linear.tex#bpI:p1:ext-neumann@L101-L105 | Correct NODE disposition and complete labelled-unit span. |
| stepI:p1:eb-holo | PASS | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo@L130-L146 | Correct NODE disposition and complete labelled-unit span. |
| stepI:p1:eb-holo-frame | PASS | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-frame@L133-L134 | Correct NODE disposition and complete labelled-unit span. |
| stepI:p1:eb-holo-inverse | PASS | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-inverse@L136-L137 | Correct NODE disposition and complete labelled-unit span. |
| stepI:p1:eb-holo-field | PASS | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-field@L139-L140 | Correct NODE disposition and complete labelled-unit span. |
| stepI:p1:eb-holo-torsion | PASS | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-torsion@L142-L143 | Correct NODE disposition and complete labelled-unit span. |
| stepI:p1:eb-holo-conclude | PASS | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-conclude@L145-L146 | Correct NODE disposition and complete labelled-unit span. |
| stepI:p1:rd-consequence | PASS | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:rd-consequence@L516-L521 | Correct NODE disposition and complete labelled-unit span. |
| stepI:p1:geo-de | PASS | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-de@L547-L548 | Correct NODE disposition and complete labelled-unit span. |
| stepI:p1:geo-red | PASS | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L549-L559 | Correct NODE disposition and complete labelled-unit span. |
| stepI:p1:geo-red-domega | PASS | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-domega@L552-L556 | Correct NODE disposition and complete labelled-unit span. |
| stepI:p1:geo-red-ered | PASS | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-ered@L558-L559 | Correct NODE disposition and complete labelled-unit span. |
| bpI:p7:symplectic | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L205-L217 | Correct NODE disposition and complete labelled-unit span. |
| stepI:p7:sy-field | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L239-L239 | Correct NODE disposition and complete labelled-unit span. |

All other coverage items PASS within this proposed inventory; previously reviewed coverage is outside this verdict. Correct inventory mappings remain valid when the corresponding node needs a field/edge correction. No new ITEM block is needed.

## Conditional inputs and import pruning

Re-read the K sources, not just their names: `p2-aposteriori.tex` L56–69 (standing context and the explicitly permitted tau>=0 range), L78–108 (constants), L122–139 (matrix norms), L214–230 (Hamiltonian), L306–317 (admissibility), L382–398 (frame-basic), L441–463 (frame identities), L549–580 (the former geometry-step comparison); `p1-analysis.tex` L148–153, L177–181, L227–236, L404–407, L568–574 and L617–621.

The k-bridge edge on eb-holo-field is correct. The K Hamiltonian lemma explicitly assumes K's standing package; the I setting supplies its common analytic/periodicity/reality/field-bound data. Its use here does not require any K torus admissibility bound. Holomorphic-regularity is applied on open D or T_r to maps already holomorphic there, and the inverse lemma has exactly holomorphic G plus det(G)!=0 as premises. No uniform beta, DK bound, inverse bound, or torsion condition is needed for that direct regularity chain.

The geometry source supplies the positive ball margin and DK/Gram-inverse bounds required by frame-basic(a),(b). Frame-identities has only pointwise inclusion and Gram invertibility beyond the common standing data. Thus no ordinary torsion inverse is assumed. The recomputed derivative bound is (2n m+2n^2 m) eps/delta. The two E_red block-row bounds are 2n^2 m^2 eps/delta and (2n^2 m+2n m^2) eps/delta, each at most 2n(n+1)m^2 eps/delta since m>=1.

The former `K:step:p2:fb-holo`, `K:step:p2:geo-domegak` and `K:step:p2:geo-ered` are absent as nodes and dependency/route targets in the current I packets. The amended raw source explicitly says “compared with, not used” at Part 1 L131/L550. Those three import/coverage removals are justified. The same distinction justifies removing the half-radius K Neumann edge from rd-consequence while retaining that import for genuine half-radius applications elsewhere.

The new ext-neumann is a labelled item of the current Part 1 external-facts list, with an explicit finite-dimensional argument at L102–103. Its external-node treatment follows SPEC's general external-list policy. The SPEC's explicit item enumeration/count predates this addition and should be refreshed by the writer; no new unlisted mathematical input is being invented by the extraction. The proof supplies only invertibility at radius one, not the inverse norm bounds of K's half-radius lemma.

Part 7's target/source clarification now pays the chain-rule carrier requirement explicitly. Its domain/curve claims are correct; the sy-field failure is only the separately recorded symplectic identity being listed as a source premise although sy-ext proves it.

## Minimal complete replacements

Only the failing SOURCE_HYPOTHESES or DEPS fields, plus the required new EDGE lines, change. Every other existing field and EDGE line is preserved verbatim. Rewritten records need a different reviewer after application.

```text
NODE: stepI:p1:eb-holo-frame
KIND: step
TITLE: Frame and Gram matrix
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-frame@L133-L134
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-frame@L133-L134
CONTRACT_ID: stepI:p1:eb-holo-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; K holomorphic on T_r with K(T_r) subset D open; det G_K != 0 on T_r
SOURCE_QUANTIFIERS: K, H on T_r
SOURCE_CONCLUSION: L = DK and the entries of G = L^T L are holomorphic on T_r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:setting, K:bp:p1:holomorphic-regularity, bpI:p1:ext-chain
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-frame@L134-L134 | K holomorphic on T_r
EDGE: K:bp:p1:holomorphic-regularity | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-frame@L134-L134 | DK holomorphic on T_r
EDGE: bpI:p1:ext-chain | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-frame@L134-L134 | entries of G are finite sums of products of holomorphic entries of L
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-amend-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:eb-holo-inverse
KIND: step
TITLE: The inverse
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-inverse@L136-L137
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-inverse@L136-L137
CONTRACT_ID: stepI:p1:eb-holo-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; K holomorphic on T_r with K(T_r) subset D open; det G_K != 0 on T_r
SOURCE_QUANTIFIERS: K, H on T_r
SOURCE_CONCLUSION: B = G^{-1}, N = Omega_0 L B and P = (L N) are holomorphic on T_r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:setting, stepI:p1:eb-holo-frame, K:bp:p1:holomorphic-inverse, bpI:p1:ext-chain
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-inverse@L137-L137 | det G_K != 0 on T_r
EDGE: stepI:p1:eb-holo-frame | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-inverse@L137-L137 | G holomorphic matrix function
EDGE: K:bp:p1:holomorphic-inverse | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-inverse@L137-L137 | G holomorphic with det != 0 on open T_r gives G^{-1} holomorphic
EDGE: bpI:p1:ext-chain | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-inverse@L137-L137 | products of holomorphic matrices with constant Omega_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-amend-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:eb-holo-torsion
KIND: step
TITLE: Derivative along omega, torsion
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-torsion@L142-L143
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-torsion@L142-L143
CONTRACT_ID: stepI:p1:eb-holo-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; K holomorphic on T_r with K(T_r) subset D open; det G_K != 0 on T_r
SOURCE_QUANTIFIERS: K, H on T_r
SOURCE_CONCLUSION: X_N, T, E_sym, Q, eta, Y = DH(K) N are holomorphic on T_r; entries of T_H are T, the constant block omega, entries of Y and 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:setting, stepI:p1:eb-holo-inverse, stepI:p1:eb-holo-field, K:bp:p1:holomorphic-regularity, bpI:p1:ext-chain, bpI:p0:extended#extendedTorsion
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-torsion@L142-L143 | frequency vector omega is constant
EDGE: stepI:p1:eb-holo-inverse | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-torsion@L142-L143 | N holomorphic
EDGE: stepI:p1:eb-holo-field | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-torsion@L142-L143 | A and DH o K holomorphic
EDGE: K:bp:p1:holomorphic-regularity | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-torsion@L142-L142 | DN holomorphic, regularity applied to N
EDGE: bpI:p1:ext-chain | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-torsion@L142-L143 | products and sums of holomorphic functions
EDGE: bpI:p0:extended#extendedTorsion | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-torsion@L143-L143 | the stated entries of T_H are the blocks of the frozen extended-torsion definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-amend-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:eb-holo-conclude
KIND: step
TITLE: Conclusion of the step
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-conclude@L145-L146
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-conclude@L145-L146
CONTRACT_ID: stepI:p1:eb-holo-conclude
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting; K holomorphic on T_r with K(T_r) subset D open; det G_K != 0 on T_r
SOURCE_QUANTIFIERS: K, H on T_r
SOURCE_CONCLUSION: N, T, Y and every entry of T_H are holomorphic on T_r, hence continuous on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:eb-holo-frame, stepI:p1:eb-holo-inverse, stepI:p1:eb-holo-torsion, bpI:p0:extended#extendedTorsion, bpI:p1:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:eb-holo-frame | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-conclude@L146-L146 | frame holomorphic
EDGE: stepI:p1:eb-holo-inverse | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-conclude@L146-L146 | N holomorphic
EDGE: stepI:p1:eb-holo-torsion | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-conclude@L146-L146 | T, Y holomorphic
EDGE: bpI:p0:extended#extendedTorsion | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-conclude@L146-L146 | entries of the frozen T_H
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:eb-holo-conclude@L146-L146 | local H,K,omega,r and the real slice R^n subset T_r used in the conclusion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-amend-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:geo-red
KIND: step
TITLE: $\partial_\omega\Omega_K$ and $E_{\mathrm{red}}$
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L549-L559
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L549-L559
CONTRACT_ID: stepI:p1:geo-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of geometry-noA5 (no torsion condition, no A5)
SOURCE_QUANTIFIERS: delta
SOURCE_CONCLUSION: ¦d_omega Omega_K¦ <= (2n m + 2n^2 m) eps/delta and ¦E_red¦ <= C_red eps/delta on T_{r-delta}
CONSTANT_SCOPE: inherited constants m and C_red of K:bp:p2:constants, depending only on (n,tau,M,sigma_K,sigma_B,sigma_T); no new constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:geo-red-domega, stepI:p1:geo-red-ered, bpI:p1:setting, K:bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:geo-red-domega | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L552-L556 | substep: bound on d_omega Omega_K
EDGE: stepI:p1:geo-red-ered | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L558-L559 | substep: bound on E_red
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L550-L550 | the local frame data and geometry-noA5 setting inherited by this result
EDGE: K:bp:p2:constants | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L550-L559 | m and C_red are the named constants in the two estimates and their declared scope
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1+sol-global-I+sonnet-amend-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: K:step:p2:geo-domegak and K:step:p2:geo-ered are only compared with (stated under A5); the former SOURCE_GAP is closed by the direct substeps.
```

```text
NODE: stepI:p1:geo-red-domega
KIND: step
TITLE: Bound on $\partial_\omega\Omega_K$
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-domega@L552-L556
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-domega@L552-L556
CONTRACT_ID: stepI:p1:geo-red-domega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of geometry-noA5 (no torsion condition, no A5)
SOURCE_QUANTIFIERS: delta
SOURCE_CONCLUSION: ¦d_omega Omega_K¦ <= (2n m + 2n^2 m) eps/delta = 2n(n+1) m eps/delta on T_{r-delta}
CONSTANT_SCOPE: inherited constant m of K:bp:p2:constants; no new constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:setting, bpI:p1:setting#k-bridge, K:bp:p2:frame-identities, K:bp:p2:matrix, K:bp:p2:frame-basic, stepI:p1:geo-de, K:bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-domega@L553-L553 | local H, K, omega data
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-domega@L553-L553 | supplies the K standing data of frame-identities and frame-basic
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-domega@L553-L553 | (d): d_omega Omega_K = -(DE)^T Omega_0 L - L^T Omega_0 DE
EDGE: K:bp:p2:matrix | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-domega@L553-L553 | (b), (d): norm of products, ¦Omega_0¦ = 1
EDGE: K:bp:p2:frame-basic | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-domega@L553-L553 | (b): ¦L¦ <= m, ¦L^T¦ <= 2n m
EDGE: stepI:p1:geo-de | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-domega@L553-L553 | ¦DE¦ and ¦(DE)^T¦ bounds
EDGE: K:bp:p2:constants | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-domega@L553-L555 | definition of m
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-amend-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:geo-red-ered
KIND: step
TITLE: Bound on $E_{\mathrm{red}}$
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-ered@L558-L559
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-ered@L558-L559
CONTRACT_ID: stepI:p1:geo-red-ered
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of geometry-noA5 (no torsion condition, no A5)
SOURCE_QUANTIFIERS: delta
SOURCE_CONCLUSION: ¦E_red¦ <= C_red eps/delta = 2n(n+1) m^2 eps/delta on T_{r-delta}
CONSTANT_SCOPE: inherited constants m and C_red of K:bp:p2:constants; no new constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:setting, bpI:p1:setting#k-bridge, K:bp:p2:frame-identities, K:bp:p2:matrix, K:bp:p2:frame-basic, stepI:p1:geo-de, K:bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-ered@L559-L559 | local H, K, omega data
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-ered@L559-L559 | supplies the K standing data of frame-identities and frame-basic
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-ered@L559-L559 | (e): block form of E_red
EDGE: K:bp:p2:matrix | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-ered@L559-L559 | (c): block-row norm bound
EDGE: K:bp:p2:frame-basic | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-ered@L559-L559 | (b): ¦N¦ <= m^2, ¦N^T¦ <= 2n m^2, ¦L^T¦ <= 2n m
EDGE: stepI:p1:geo-de | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-ered@L559-L559 | ¦DE¦ and ¦(DE)^T¦ bounds
EDGE: K:bp:p2:constants | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red-ered@L559-L559 | definition of C_red and m >= 1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-amend-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:sy-field
KIND: step
TITLE: Hamiltonian fields
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L239-L239
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L239-L239
CONTRACT_ID: stepI:p7:sy-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Q is the Delaunay map on D_R; U subset R^4 open, H: U -> R of class C^1; W = {w in D_R : Q(w) in U} open; Q(w) lies in the open domain U of H for every w in W, so the chain rule applies at every point of W
SOURCE_QUANTIFIERS: for every open U and C^1 H: U -> R, every w in W; then for every C^1 curve w in W
SOURCE_CONCLUSION: on W: D Q X_{H o Q} = X_H o Q; for C^1 curves w in W: w' = X_{H o Q}(w) iff d/dt Q(w) = X_H(Q(w))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sy-ext, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sy-ext | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L239-L239 | D Q J D Q^T = J
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L239-L239 | the calculation uses the Delaunay orbit map or its element formulas
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-delta-I-c+sonnet-amend-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Snapshots and checks

- `docs/graph/I/packets/I-p1.nodes.md`: `6c4e6cabd77436074ca57a158176da807963d57c3411e837028180c4d1acd781`.
- `docs/graph/I/packets/I-p1.coverage.md`: `1d0477819094217b818685924bad2f82bc42bdbaf12964c5011ce797d34a4fbb`.
- `docs/graph/I/packets/I-p67a.nodes.md`: `55fd29066e48c09a614e6ae577c309483a0c02aba9ab6f186d59767179cb930c`.
- `docs/graph/I/packets/I-p67a.coverage.md`: `6b3db30997be113385ce671f84316d7aabd03b0cf8db485ae45ede1e8b85381f`.

All 9 CORPUS pins and 7 IMPORTS pins match current files. The source-only import checker reports 56 present/referenced imports, 0 missing and 0 unreferenced; only the two P imports remain OWNER-PENDING. No absent pruned import is retained by a DEPS target. Proposed node/coverage inventory and locator bounds were checked. Review-applier dry runs and minimal-field preservation checks are completed below. Only this report is written; no packet, SPEC, source, frozen file, manifest or state-changing git action is used. No new pinned-paper erratum or frozen-statement defect is asserted.

Slice-filtered review-applier dry runs (piped through stdin; no scratch-file or packet writes):

- `I-p1: 7 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 5 PASS nodes`.
- `I-p67a: 1 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 1 PASS nodes`.

Independent checks PASS: exact 14-node/14-coverage proposed inventory; all 8 FAILs have complete replacements; only the failing fields listed in the report change; every pre-existing EDGE line is preserved verbatim; new DEPS/EDGE pairs match; all four packet snapshots are unchanged; report whitespace is clean.
