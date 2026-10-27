# K-p1a: independent source-topology review

Reviewer: sol-review-r1. Verdict: **FAIL**.

Scope: the assigned raw source in SPEC, every packet node and coverage disposition, and the source statements reached by its edges. This is a topology review, not a Lean proof-status determination. No Lean command, source lint, build, or state-changing git command was run. The review brief expressly prohibits Lean and permits edits only to these review files.

All five corpus SHA-256 values were independently checked against CORPUS.sha256 and match. The 25 track-K anchor file/export/id/contract/version/ABI identity fields match the manifest; frozen statement signatures and definition bodies were read only as the approved source interface. No frozen defect was identified.

Source-premise policy: a step inherits the original mathematical data of its enclosing argument. Estimates and theorems proved or invoked in that argument belong in DEPS; they do not become additional source hypotheses. Definitions and names for already constructed objects are typing data. The replacements below preserve the existing proof edges unless an edge correction is stated.

| Node | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| `bp:p1:ext-cauchy` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-cauchy@L54-L64 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:ext-rectangle` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-rectangle@L65-L68 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:ext-identity` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-identity@L69-L72 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:ext-mvt` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-mvt@L73-L76 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:ext-schwarz` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-schwarz@L77-L79 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:ext-integral` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-integral@L80-L84 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:ext-fourier` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-fourier@L85-L89 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:ext-lebesgue` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-lebesgue@L90-L92 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:ext-banach` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-banach@L93-L94 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:ext-cramer` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:ext-cramer@L95-L97 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:operator-norms` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L107-L111 ; blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L113-L134 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:opn-rowsum` | PASS | blueprint/parts/p1-analysis.tex#step:p1:opn-rowsum@L114-L121 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:opn-blocks` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:opn-blocks@L123-L126 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:opn-omega` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L128-L133 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `bp:p1:matrix-norms` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L136-L141 ; blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L143-L163 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:mn-products` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:mn-products@L144-L148 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:mn-transpose` | PASS | blueprint/parts/p1-analysis.tex#step:p1:mn-transpose@L150-L153 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:mn-signed` | PASS | blueprint/parts/p1-analysis.tex#step:p1:mn-signed@L155-L162 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:neumann` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L165-L169 ; blueprint/parts/p1-analysis.tex#bp:p1:neumann@L171-L191 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:neu-series` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:neu-series@L172-L177 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:neu-inverse` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L179-L181 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:neu-difference` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L183-L185 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:neu-pointwise` | PASS | blueprint/parts/p1-analysis.tex#step:p1:neu-pointwise@L187-L190 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:real-inverse` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:real-inverse@L193-L196 ; blueprint/parts/p1-analysis.tex#bp:p1:real-inverse@L198-L204 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:ri-adjugate` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:ri-adjugate@L199-L203 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `bp:p1:holomorphic-regularity` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L215-L224 ; blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L226-L282 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:hreg-line` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:hreg-line@L227-L233 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:hreg-integral` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:hreg-integral@L235-L242 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:hreg-differentiate` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L244-L260 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:hreg-full` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:hreg-full@L262-L267 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:hreg-orders` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:hreg-orders@L269-L276 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:hreg-symmetry` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L278-L281 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `bp:p1:holomorphic-analytic` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L284-L300 ; blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L302-L350 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:han-margin` | PASS | blueprint/parts/p1-analysis.tex#step:p1:han-margin@L303-L305 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:han-cauchy` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L307-L319 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:han-series` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:han-series@L321-L331 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:han-bounds` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L333-L338 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:han-real` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:han-real@L340-L349 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `bp:p1:uniform-limits` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L352-L356 ; blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L358-L390 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:ul-differences` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:ul-differences@L362-L367 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:ul-limit` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:ul-limit@L369-L374 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:ul-derivative` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:ul-derivative@L376-L382 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:ul-primary` | PASS | blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L384-L389 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:holomorphic-inverse` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L392-L395 ; blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L397-L411 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:hi-holomorphic` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:hi-holomorphic@L400-L404 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:hi-derivative` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:hi-derivative@L406-L410 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `bp:p1:increments-open` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:increments-open@L413-L416 ; blueprint/parts/p1-analysis.tex#bp:p1:increments-open@L418-L422 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:io-mvt` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:io-mvt@L419-L421 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `bp:p1:taylor` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:taylor@L424-L427 ; blueprint/parts/p1-analysis.tex#bp:p1:taylor@L429-L440 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:tay-lipschitz` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L430-L433 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:tay-integrate` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L435-L439 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `bp:p1:cauchy-open` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L462-L467 ; blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L469-L496 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:co-first` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:co-first@L472-L476 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:co-second` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:co-second@L478-L485 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:co-third` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:co-third@L487-L492 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `step:p1:co-constants` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:co-constants@L494-L495 | SOURCE_HYPOTHESES substitutes a proved ingredient/external theorem for inherited source data, or omits that data. Keep the ingredient in the existing dependency edges. |
| `bp:p1:mixed-difference` (missing) | FAIL | blueprint/parts/p1-analysis.tex L442-L460; blueprint/parts/p4-measure.tex L800-L818 | Required labelled lemma/proof step excluded from the packet. |
| `step:p1:md-inner` (missing) | FAIL | blueprint/parts/p1-analysis.tex L442-L460; blueprint/parts/p4-measure.tex L800-L818 | Required labelled lemma/proof step excluded from the packet. |
| `step:p1:md-outer` (missing) | FAIL | blueprint/parts/p1-analysis.tex L442-L460; blueprint/parts/p4-measure.tex L800-L818 | Required labelled lemma/proof step excluded from the packet. |

Coverage failures:

| Coverage item | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| `bp:p1:mixed-difference` | FAIL | blueprint/parts/p1-analysis.tex L442-L445; Part 4 L800-L818 | SPEC requires every labelled result and proofstep. Root non-consumption is not an authorized exclusion; Part 4 also explicitly reuses this argument. |
| `step:p1:md-inner` | FAIL | blueprint/parts/p1-analysis.tex L450-L453; Part 4 L800-L818 | SPEC requires every labelled result and proofstep. Root non-consumption is not an authorized exclusion; Part 4 also explicitly reuses this argument. |
| `step:p1:md-outer` | FAIL | blueprint/parts/p1-analysis.tex L455-L459; Part 4 L800-L818 | SPEC requires every labelled result and proofstep. Root non-consumption is not an authorized exclusion; Part 4 also explicitly reuses this argument. |

All other coverage items PASS.

The ext-* leaves match exactly E1-E10. The input constants and norm conventions were checked against Part 0 L10-L27. Local Cauchy applications supply a closed-disc margin and bound; mean-value applications supply a convex segment and derivative bounds; the inverse arguments supply determinant nonvanishing. No new external leaf is proposed.

The parenthetical Lean/Mathlib implementation suggestions (including the restriction-of-scalars suggestion at L347-L349) do not form additional mathematical proof routes. The actual proof in this slice is single-route; its child obligations are conjunctive.

Replacement fragments follow. Each complete NODE block replaces the named packet block only; identity metadata is unchanged. Missing-node fragments are additions. Only the orchestrator may set reviewed statuses.

## Replacement: step:p1:opn-blocks

```text
NODE: step:p1:opn-blocks
KIND: step
TITLE: Blocks
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-blocks@L123-L126
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-blocks@L123-L126
CONTRACT_ID: step:p1:opn-blocks
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block matrix (A B; C D) of compatible sizes; induced operator norms for max norms
SOURCE_QUANTIFIERS: rows of the upper and lower block rows
SOURCE_CONCLUSION: upper block-row sums <= |A|+|B|, lower <= |C|+|D|, so block norm <= max{|A|+|B|,|C|+|D|}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:opn-rowsum
EDGE: step:p1:opn-rowsum | blueprint/parts/p1-analysis.tex#step:p1:opn-blocks@L124-L124 | norm as largest row sum
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:opn-omega

```text
NODE: step:p1:opn-omega
KIND: step
TITLE: The matrix $\Omega_0$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L128-L133
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L128-L133
CONTRACT_ID: step:p1:opn-omega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Omega_0(a,b)=(-b,a) as defined in Part 0; induced operator norm for max norms
SOURCE_QUANTIFIERS: a,b in C^n
SOURCE_CONCLUSION: Omega_0^2=-I, Omega_0^T=-Omega_0, every row has one nonzero entry +-1, so |Omega_0|=1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#omegaZero, step:p1:opn-rowsum
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L129-L129 | Omega_0(a,b)=(-b,a) definition
EDGE: step:p1:opn-rowsum | blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L133-L133 | norm equals largest row sum
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:mn-products

```text
NODE: step:p1:mn-products
KIND: step
TITLE: Products
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-products@L144-L148
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-products@L144-L148
CONTRACT_ID: step:p1:mn-products
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: matrices M,N and vector v of compatible sizes; induced operator norms for max norms
SOURCE_QUANTIFIERS: all compatible M,N,v
SOURCE_CONCLUSION: |Mv|<=|M||v| and |MN|<=|M||N|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:operator-norms
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:mn-products@L145-L145 | cited at this line (step; \ref{bp:p1:operator-norms})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:neu-series

```text
NODE: step:p1:neu-series
KIND: step
TITLE: The Neumann series
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-series@L172-L177
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-series@L172-L177
CONTRACT_ID: step:p1:neu-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A invertible square matrix; Delta of the same size; |A^{-1}| |Delta|<=1/2; max-norm operator norms; X denotes A^{-1}Delta
SOURCE_QUANTIFIERS: square matrices
SOURCE_CONCLUSION: |X^j|<=2^-j, S=sum_j (-X)^j converges absolutely, |S|<=2, S(I+X)=(I+X)S=I
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:matrix-norms, bp:p1:operator-norms
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-series@L173-L173 | cited at this line (step; \ref{bp:p1:matrix-norms})
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-series@L176-L176 | cited at this line (step; \ref{bp:p1:operator-norms})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:neu-inverse

```text
NODE: step:p1:neu-inverse
KIND: step
TITLE: The inverse of $A+\Delta$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L179-L181
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L179-L181
CONTRACT_ID: step:p1:neu-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A invertible square matrix; Delta of the same size; |A^{-1}| |Delta|<=1/2; max-norm operator norms; X=A^{-1}Delta; S=sum_{j>=0}(-X)^j
SOURCE_QUANTIFIERS: A,Delta as in lemma
SOURCE_CONCLUSION: A+Delta invertible with inverse S A^-1 and |(A+Delta)^-1|<=2|A^-1|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:neu-series, bp:p1:matrix-norms
EDGE: step:p1:neu-series | blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L180-L180 | S is the inverse of I+X with norm at most 2
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L181-L181 | submultiplicativity
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:neu-difference

```text
NODE: step:p1:neu-difference
KIND: step
TITLE: The difference
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L183-L185
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L183-L185
CONTRACT_ID: step:p1:neu-difference
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A invertible square matrix; Delta of the same size; |A^{-1}| |Delta|<=1/2; max-norm operator norms
SOURCE_QUANTIFIERS: as in lemma
SOURCE_CONCLUSION: (A+Delta)^-1-A^-1=-(A+Delta)^-1 Delta A^-1 and |.|<=2|A^-1|^2|Delta|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:neu-inverse, bp:p1:matrix-norms
EDGE: step:p1:neu-inverse | blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L184-L184 | inverse and its bound
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L185-L185 | submultiplicativity
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:ri-adjugate

```text
NODE: step:p1:ri-adjugate
KIND: step
TITLE: Adjugate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ri-adjugate@L199-L203
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ri-adjugate@L199-L203
CONTRACT_ID: step:p1:ri-adjugate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A real invertible square matrix; for the pointwise clause A(theta) real at real theta and invertible
SOURCE_QUANTIFIERS: A real invertible
SOURCE_CONCLUSION: A^-1=(det A)^-1 adj A is real; the pointwise claim is the same at each real theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cramer
EDGE: bp:p1:ext-cramer | blueprint/parts/p1-analysis.tex#step:p1:ri-adjugate@L202-L202 | cited at this line (step; \ref{bp:p1:ext-cramer})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:hreg-line

```text
NODE: step:p1:hreg-line
KIND: step
TITLE: Cauchy's estimate along lines
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-line@L227-L233
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-line@L227-L233
CONTRACT_ID: step:p1:hreg-line
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; x in U; r>0; closed P(x,r) subset U; |F|<=A there; |v|=1
SOURCE_QUANTIFIERS: x,r,A,v arbitrary with those properties
SOURCE_CONCLUSION: |DF(x)v|<=A/r for |v|=1 and hence |DF(x)|<=A/r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cauchy
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:hreg-line@L231-L231 | cited at this line (step; \ref{bp:p1:ext-cauchy})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:hreg-integral

```text
NODE: step:p1:hreg-integral
KIND: step
TITLE: A Cauchy integral for the derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-integral@L235-L242
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-integral@L235-L242
CONTRACT_ID: step:p1:hreg-integral
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; z_0 in U; r>0 with closed P(z_0,3r) subset U; A=max there; |v|=1; x in P(z_0,r)
SOURCE_QUANTIFIERS: z_0,r,A fixed; v, x then arbitrary
SOURCE_CONCLUSION: DF(x)v=(2 pi i)^-1 oint_{|zeta|=r} F(x+zeta v)/zeta^2 dzeta for x in P(z_0,r)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cauchy
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:hreg-integral@L239-L239 | cited at this line (step; \ref{bp:p1:ext-cauchy})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:hreg-differentiate

```text
NODE: step:p1:hreg-differentiate
KIND: step
TITLE: Differentiation under the integral
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L244-L260
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L244-L260
CONTRACT_ID: step:p1:hreg-differentiate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; z_0 in U; r>0 with closed P(z_0,3r) subset U; A=max there; |v|=1; x in P(z_0,r); |h|<r-|x-z_0|
SOURCE_QUANTIFIERS: z_0,r,A,v fixed; x; then h
SOURCE_CONCLUSION: x->DF(x)v is complex differentiable at x in P(z_0,r) with derivative h->(2 pi i)^-1 oint DF(x+zeta v)h zeta^-2 dzeta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-line, step:p1:hreg-integral, bp:p1:ext-mvt, bp:p1:ext-integral
EDGE: step:p1:hreg-line | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L246-L246 | line-estimate bound on DF(y)
EDGE: step:p1:hreg-integral | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L257-L257 | Cauchy integral for DF(x)v
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L251-L251 | bound on R(h,zeta)
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L253-L253 | dominated convergence
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:hreg-full

```text
NODE: step:p1:hreg-full
KIND: step
TITLE: The full derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-full@L262-L267
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-full@L262-L267
CONTRACT_ID: step:p1:hreg-full
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; z_0 in U; r>0 with closed P(z_0,3r) subset U
SOURCE_QUANTIFIERS: z_0 in U arbitrary
SOURCE_CONCLUSION: DF is holomorphic on P(z_0,r), hence on U
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-differentiate
EDGE: step:p1:hreg-differentiate | blueprint/parts/p1-analysis.tex#step:p1:hreg-full@L263-L263 | cited at this line (step; \ref{step:p1:hreg-differentiate})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:hreg-orders

```text
NODE: step:p1:hreg-orders
KIND: step
TITLE: All orders
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-orders@L269-L276
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-orders@L269-L276
CONTRACT_ID: step:p1:hreg-orders
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic
SOURCE_QUANTIFIERS: j>=1; F, DF as the maps
SOURCE_CONCLUSION: every D^jF exists and is holomorphic, F is C^infty, and the norm identities |D^{j+1}F|=|D^j(DF)|=|D(D^jF)|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-full
EDGE: step:p1:hreg-full | blueprint/parts/p1-analysis.tex#step:p1:hreg-orders@L272-L272 | DF holomorphic, applied inductively to D^jF
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:hreg-symmetry

```text
NODE: step:p1:hreg-symmetry
KIND: step
TITLE: Symmetry
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L278-L281
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L278-L281
CONTRACT_ID: step:p1:hreg-symmetry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic
SOURCE_QUANTIFIERS: z in U; v,w
SOURCE_CONCLUSION: D^2F(z) symmetric; d_i d_j F=d_j d_i F
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-full, bp:p1:ext-schwarz
EDGE: step:p1:hreg-full | blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L279-L279 | DF differentiable
EDGE: bp:p1:ext-schwarz | blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L280-L280 | symmetry of D^2F(z)
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:han-cauchy

```text
NODE: step:p1:han-cauchy
KIND: step
TITLE: Iterated Cauchy formula
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L307-L319
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L307-L319
CONTRACT_ID: step:p1:han-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; z_0 in U; r>0 with closed P(z_0,r) subset U; A=max there; r_1 is the larger radius constructed in the margin step; w in P(z_0,r); C_j the coordinate circles of radius r
SOURCE_QUANTIFIERS: w in P(z_0,r); circles C_j around z_{0,j}
SOURCE_CONCLUSION: F(w)=(2 pi i)^-m oint_{C_1}...oint_{C_m} F(zeta)/prod(zeta_j-w_j) dzeta, as an integral over the torus C_1x...xC_m
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-margin, bp:p1:ext-cauchy, bp:p1:ext-integral
EDGE: step:p1:han-margin | blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L311-L311 | r_1>r so integrand holomorphic on larger disc
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L312-L312 | first Cauchy formula in each variable
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L319-L319 | Fubini
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:han-series

```text
NODE: step:p1:han-series
KIND: step
TITLE: Geometric expansion
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-series@L321-L331
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-series@L321-L331
CONTRACT_ID: step:p1:han-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; z_0 in U; r>0 with closed P(z_0,r) subset U; A=max there; w in P(z_0,r); t=|w-z_0|/r; c_alpha denotes the displayed contour integral
SOURCE_QUANTIFIERS: w in P(z_0,r); zeta on the torus
SOURCE_CONCLUSION: F(w)=sum_alpha c_alpha (w-z_0)^alpha with c_alpha=(2 pi i)^-m oint...oint F(zeta)/prod(zeta_j-z_{0,j})^{alpha_j+1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-cauchy, bp:p1:ext-integral
EDGE: step:p1:han-cauchy | blueprint/parts/p1-analysis.tex#step:p1:han-series@L322-L322 | iterated Cauchy formula expanded
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:han-series@L326-L326 | term-by-term integration
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:han-bounds

```text
NODE: step:p1:han-bounds
KIND: step
TITLE: Coefficient bounds
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L333-L338
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L333-L338
CONTRACT_ID: step:p1:han-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; z_0 in U; r>0 with closed P(z_0,r) subset U; A=max there; c_alpha denotes the contour integral constructed in the previous step; w in P(z_0,r)
SOURCE_QUANTIFIERS: alpha in N^m; w in P(z_0,r)
SOURCE_CONCLUSION: |c_alpha|<=A r^-|alpha|; sum |c_alpha||(w-z_0)^alpha|<=A(1-t)^-m; part (a) holds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-series, bp:p1:ext-integral
EDGE: step:p1:han-series | blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L334-L334 | coefficient formula
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L334-L334 | integral estimate by length times sup
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:han-real

```text
NODE: step:p1:han-real
KIND: step
TITLE: Real points
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-real@L340-L349
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-real@L340-L349
CONTRACT_ID: step:p1:han-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; x_0 in U cap R^m; r>0 with closed P(x_0,r) subset U; additionally W=C^p and F real on U cap R^m for the real-coefficient clause
SOURCE_QUANTIFIERS: real x with |x-x_0|<r; W=C^p with F real on U_R for the second clause
SOURCE_CONCLUSION: F|U_R is a real power series in x-x_0, absolutely convergent near x_0; with real F, F(x)=sum (Re c_alpha)(x-x_0)^alpha, |Re c_alpha|<=|c_alpha|; this is (b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-bounds
EDGE: step:p1:han-bounds | blueprint/parts/p1-analysis.tex#step:p1:han-real@L341-L341 | part (a) established
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:ul-differences

```text
NODE: step:p1:ul-differences
KIND: step
TITLE: Linearization error of the differences
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-differences@L362-L367
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-differences@L362-L367
CONTRACT_ID: step:p1:ul-differences
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V subset C^m open; W finite-dimensional complex normed; K_s:V->W holomorphic; K_s->K pointwise; DK_s->Lambda uniformly on V; eta_s=sup_V |DK_s-Lambda| for sufficiently large s; x in V; P(x,r) subset V
SOURCE_QUANTIFIERS: x,r fixed; indices s,t; y in P(x,r)
SOURCE_CONCLUSION: |phi_st(y)-phi_st(x)|<=2(eta_s+eta_t)|y-x| for phi_st(y)=K_s(y)-K_t(y)-(DK_s(x)-DK_t(x))(y-x)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-mvt
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:ul-differences@L366-L366 | cited at this line (step; \ref{bp:p1:ext-mvt})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:ul-limit

```text
NODE: step:p1:ul-limit
KIND: step
TITLE: Passage to the limit
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-limit@L369-L374
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-limit@L369-L374
CONTRACT_ID: step:p1:ul-limit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V subset C^m open; W finite-dimensional complex normed; K_s:V->W holomorphic; K_s->K pointwise; DK_s->Lambda uniformly on V; eta_s=sup_V |DK_s-Lambda| for sufficiently large s; x in V; P(x,r) subset V
SOURCE_QUANTIFIERS: x,r,s fixed; y in P(x,r); t->infinity
SOURCE_CONCLUSION: |K_s(y)-K(y)-(K_s(x)-K(x))-(DK_s(x)-Lambda(x))(y-x)|<=2 eta_s|y-x|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ul-differences
EDGE: step:p1:ul-differences | blueprint/parts/p1-analysis.tex#step:p1:ul-limit@L370-L370 | difference estimate passed to limit
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:ul-derivative

```text
NODE: step:p1:ul-derivative
KIND: step
TITLE: Differentiability of the limit
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-derivative@L376-L382
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-derivative@L376-L382
CONTRACT_ID: step:p1:ul-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V subset C^m open; W finite-dimensional complex normed; K_s:V->W holomorphic; K_s->K pointwise; DK_s->Lambda uniformly on V; eta_s=sup_V |DK_s-Lambda| for sufficiently large s; x in V; P(x,r) subset V; epsilon>0
SOURCE_QUANTIFIERS: eps>0, then s, then r'<=r
SOURCE_CONCLUSION: |K(y)-K(x)-Lambda(x)(y-x)|<=eps|y-x| for |y-x|<r'; Lambda(x) complex linear; K complex differentiable at x with DK(x)=Lambda(x)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ul-limit
EDGE: step:p1:ul-limit | blueprint/parts/p1-analysis.tex#step:p1:ul-derivative@L379-L379 | cited at this line (step; \ref{step:p1:ul-limit})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:hi-holomorphic

```text
NODE: step:p1:hi-holomorphic
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-holomorphic@L400-L404
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-holomorphic@L400-L404
CONTRACT_ID: step:p1:hi-holomorphic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V open; A:V->C^{p x p} holomorphic; det A nonzero on V
SOURCE_QUANTIFIERS: on V
SOURCE_CONCLUSION: A^-1=(det A)^-1 adj A is holomorphic on V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cramer
EDGE: bp:p1:ext-cramer | blueprint/parts/p1-analysis.tex#step:p1:hi-holomorphic@L401-L401 | cited at this line (step; \ref{bp:p1:ext-cramer})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:hi-derivative

```text
NODE: step:p1:hi-derivative
KIND: step
TITLE: Derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-derivative@L406-L410
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-derivative@L406-L410
CONTRACT_ID: step:p1:hi-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V open; A:V->C^{p x p} holomorphic; det A nonzero on V
SOURCE_QUANTIFIERS: z in V; direction v
SOURCE_CONCLUSION: D(A^-1)(z)v=-A(z)^-1 (DA(z)v) A(z)^-1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hi-holomorphic
EDGE: step:p1:hi-holomorphic | blueprint/parts/p1-analysis.tex#step:p1:hi-derivative@L407-L407 | A^-1 differentiable so product rule applies
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:io-mvt

```text
NODE: step:p1:io-mvt
KIND: step
TITLE: Mean value inequality
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:io-mvt@L419-L421
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:io-mvt@L419-L421
CONTRACT_ID: step:p1:io-mvt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; F:U->W holomorphic; |DF|<=A on U; [z,z+w] subset U
SOURCE_QUANTIFIERS: z,w
SOURCE_CONCLUSION: |F(z+w)-F(z)|<=A|w|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-mvt
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:io-mvt@L421-L421 | cited at this line (step; \ref{bp:p1:ext-mvt})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:tay-lipschitz

```text
NODE: step:p1:tay-lipschitz
KIND: step
TITLE: The derivative along the segment
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L430-L433
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L430-L433
CONTRACT_ID: step:p1:tay-lipschitz
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; |D^2F|<=A on U; [z,z+w] subset U
SOURCE_QUANTIFIERS: t in [0,1]
SOURCE_CONCLUSION: |DF(z+tw)-DF(z)|<=A t|w|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:increments-open
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L431-L431 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
EDGE: bp:p1:increments-open | blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L432-L432 | cited at this line (step; \ref{bp:p1:increments-open})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:tay-integrate

```text
NODE: step:p1:tay-integrate
KIND: step
TITLE: Integration
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L435-L439
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L435-L439
CONTRACT_ID: step:p1:tay-integrate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; |D^2F|<=A on U; [z,z+w] subset U; g(t)=F(z+tw)-F(z)-t DF(z)w
SOURCE_QUANTIFIERS: z,w fixed; t in [0,1]
SOURCE_CONCLUSION: |g(1)|<=int_0^1 A t|w|^2 dt = (A/2)|w|^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:tay-lipschitz, bp:p1:holomorphic-regularity, bp:p1:ext-integral
EDGE: step:p1:tay-lipschitz | blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L438-L438 | bound on g'
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L437-L437 | DF continuous so g is C^1
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L438-L438 | fundamental theorem of calculus and norm of an integral
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:co-first

```text
NODE: step:p1:co-first
KIND: step
TITLE: First derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-first@L472-L476
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-first@L472-L476
CONTRACT_ID: step:p1:co-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; f:U->W holomorphic; delta>0; closed P(z,delta) subset U; |f|<=A on closed P(z,delta)
SOURCE_QUANTIFIERS: l
SOURCE_CONCLUSION: |Df(z)|<=A/delta and |d_l f(z)|<=A/delta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-line
EDGE: step:p1:hreg-line | blueprint/parts/p1-analysis.tex#step:p1:co-first@L473-L473 | line estimate with x=z, r=delta
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:co-second

```text
NODE: step:p1:co-second
KIND: step
TITLE: Second derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-second@L478-L485
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-second@L478-L485
CONTRACT_ID: step:p1:co-second
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; f:U->W holomorphic; delta>0; closed P(z,delta) subset U; |f|<=A on closed P(z,delta)
SOURCE_QUANTIFIERS: y in P-bar(z,delta/2)
SOURCE_CONCLUSION: |Df(y)|<=2A/delta on P-bar(z,delta/2) and |D^2f(z)|<=4A/delta^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-first, bp:p1:holomorphic-regularity
EDGE: step:p1:co-first | blueprint/parts/p1-analysis.tex#step:p1:co-second@L481-L481 | cited at this line (step; \ref{step:p1:co-first})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:co-second@L482-L482 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:co-third

```text
NODE: step:p1:co-third
KIND: step
TITLE: Third derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-third@L487-L492
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-third@L487-L492
CONTRACT_ID: step:p1:co-third
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; f:U->W holomorphic; delta>0; closed P(z,delta) subset U; |f|<=A on closed P(z,delta)
SOURCE_QUANTIFIERS: z, radius delta/2
SOURCE_CONCLUSION: |D^2(Df)(z)|<=32A/delta^3 and |D^3f(z)|<=32A/delta^3
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-second, bp:p1:holomorphic-regularity
EDGE: step:p1:co-second | blueprint/parts/p1-analysis.tex#step:p1:co-third@L488-L488 | cited at this line (step; \ref{step:p1:co-second})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:co-third@L491-L491 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:co-constants

```text
NODE: step:p1:co-constants
KIND: step
TITLE: Constants
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-constants@L494-L495
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-constants@L494-L495
CONTRACT_ID: step:p1:co-constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; f:U->W holomorphic; delta>0; closed P(z,delta) subset U; |f|<=A on closed P(z,delta)
SOURCE_QUANTIFIERS: j=1,2,3
SOURCE_CONCLUSION: the lemma holds with c(m,1)=1, c(m,2)=4, c(m,3)=32, independent of m
CONSTANT_SCOPE: constants are absolute (independent of m)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-first, step:p1:co-second, step:p1:co-third
EDGE: step:p1:co-first | blueprint/parts/p1-analysis.tex#step:p1:co-constants@L495-L495 | c(m,1)=1
EDGE: step:p1:co-second | blueprint/parts/p1-analysis.tex#step:p1:co-constants@L495-L495 | c(m,2)=4
EDGE: step:p1:co-third | blueprint/parts/p1-analysis.tex#step:p1:co-constants@L495-L495 | c(m,3)=32
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Add missing node: bp:p1:mixed-difference

```text
NODE: bp:p1:mixed-difference
KIND: lemma
TITLE: Mixed second differences
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:mixed-difference@L442-L445
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:mixed-difference@L447-L460
CONTRACT_ID: bp:p1:mixed-difference
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F holomorphic on convex open U; |D^2F|<=A on U; z,z+v,z+w,z+v+w in U; finite-dimensional W with its norm
SOURCE_QUANTIFIERS: for all U,F,A,z,v,w satisfying these premises
SOURCE_CONCLUSION: |F(z+v+w)-F(z+v)-F(z+w)+F(z)|<=A |v| |w|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:md-inner, step:p1:md-outer
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:md-inner | blueprint/parts/p1-analysis.tex#step:p1:md-inner@L451-L453 | bound the derivative across the parallelogram
EDGE: step:p1:md-outer | blueprint/parts/p1-analysis.tex#step:p1:md-outer@L456-L459 | mean value inequality for the outer difference
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-r1-proposed-fragment
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Add missing node: step:p1:md-inner

```text
NODE: step:p1:md-inner
KIND: step
TITLE: The derivative across
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:md-inner@L450-L453
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:md-inner@L450-L453
CONTRACT_ID: step:p1:md-inner
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F holomorphic on convex open U; |D^2F|<=A on U; z,z+v,z+w,z+v+w in U; finite-dimensional W with its norm
SOURCE_QUANTIFIERS: for all s in [0,1]
SOURCE_CONCLUSION: |DF(z+sv+w)-DF(z+sv)|<=A |w|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:increments-open
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:md-inner@L451-L451 | DF is holomorphic and |D(DF)|=|D^2F|
EDGE: bp:p1:increments-open | blueprint/parts/p1-analysis.tex#step:p1:md-inner@L452-L453 | apply to DF on a segment contained in convex U
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-r1-proposed-fragment
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Add missing node: step:p1:md-outer

```text
NODE: step:p1:md-outer
KIND: step
TITLE: The difference along
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:md-outer@L455-L459
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:md-outer@L455-L459
CONTRACT_ID: step:p1:md-outer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F holomorphic on convex open U; |D^2F|<=A on U; z,z+v,z+w,z+v+w in U; finite-dimensional W with its norm; psi(s)=F(z+sv+w)-F(z+sv)
SOURCE_QUANTIFIERS: s in [0,1]
SOURCE_CONCLUSION: |psi(1)-psi(0)|<=A |v| |w|, which is the mixed second difference
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:md-inner, bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:md-inner | blueprint/parts/p1-analysis.tex#step:p1:md-outer@L457-L458 | bound psi-prime
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:md-outer@L458-L459 | apply on the convex interval [0,1]
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-r1-proposed-fragment
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replace the three coverage exclusions

```text
ITEM: bp:p1:mixed-difference
KIND: lemma
SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:mixed-difference@L442-L445
DISPOSITION: NODE bp:p1:mixed-difference
REASON: required labelled result or proofstep under SPEC; the argument is also reused in Part 4 L810-L817
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -

ITEM: step:p1:md-inner
KIND: proof-region
SOURCE: blueprint/parts/p1-analysis.tex#step:p1:md-inner@L450-L453
DISPOSITION: NODE step:p1:md-inner
REASON: required labelled result or proofstep under SPEC; the argument is also reused in Part 4 L810-L817
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -

ITEM: step:p1:md-outer
KIND: proof-region
SOURCE: blueprint/parts/p1-analysis.tex#step:p1:md-outer@L455-L459
DISPOSITION: NODE step:p1:md-outer
REASON: required labelled result or proofstep under SPEC; the argument is also reused in Part 4 L810-L817
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -

```

Checks: corpus hashes PASS (5/5); anchor identity comparisons PASS (25/25); every supplied node has one review-table row; every supplied coverage item was read and its mapping/exclusion checked. Source implementation files and providers were not consulted. #print axioms is inapplicable because this task forbids Lean execution.

Uncertainties: these fragments require orchestrator adjudication and assembly; no graph patch is applied here. Pinned-paper errata: none identified in the permitted corpus review. Deviations introduced: none; only review reports were written.
