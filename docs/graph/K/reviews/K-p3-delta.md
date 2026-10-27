# K-p3: delta topology review

Reviewer: sol-review-r1. Verdict: **FAIL**.

Every r1-assigned record was checked against the pinned blueprint source and the first review by sol-review-r3. I did not write the replacements under review. Original topology repairs and the resulting complete records were checked separately.

The edge additions/removals generally resolve the first-round topology findings. Remaining FAILs below concern a missing direct use or source hypotheses that substitute proved facts for original source premises. REVIEW-BRIEF places proof ingredients in DEPS. Replacement fields retain the inherited source data without adding a mathematical premise.

Source and cross-edge context re-read: Part 3 L50-L140, L193-L268, L279-L406, L513-L524; Part 2 L56-L65, L215-L258, L270-L345; Part 1 L80-L84, L215-L224, L424-L440, L875-L882; Part 0 L32-L38, L91-L101. Each row lists its statement/proof and every consumer EDGE span.

| Record | Verdict | Source spans re-read | Finding / first-round repair check |
|---|---|---|---|
| `bp:p3:standing` | PASS | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L55-L93; blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L63-L63; blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L64-L64; blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L68-L68; blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L66-L66; blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L85-L85; blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L87-L87; blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L74-L77; blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L77-L88 | Extended span includes setting/notation; Part 2 package/objects edges are direct at L74-L88. S1-S4 and parameter order match. |
| `step:p3:torsion-holomorphy` | FAIL | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L248-L252; blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L249; blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L251-L251; blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L251 | The derivative-regularity edge resolves the original finding. SOURCE_HYPOTHESES still substitutes proved holomorphy of N and DX_h for (S1)-(S3), and omits holomorphy of K_1 needed for composition. Hamiltonian(a) supplies holomorphic X_h; the derivative-regularity edge supplies holomorphic DX_h. |
| `step:p3:phase-fixed-point` | FAIL | blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L302-L312; blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L308-L310 | The realness edge resolves the original finding. BL^T L=I directly uses the definition and invertibility of B at L303, still without an edge. SOURCE_HYPOTHESES also substitutes that derived identity for the inherited phase-lemma data. |
| `step:p3:phase-contraction` | FAIL | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L322-L337; blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L328-L328; blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L332-L332; blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L330-L330; blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L325-L336 | Replacing the misplaced realness edge by E6 resolves the original integral finding. SOURCE_HYPOTHESES still assumes the proved derivative/frame estimates instead of the phase-lemma data and its stated smallness. |
| `bp:p3:difference-equation` | PASS | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L350-L373; blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L375-L406; blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L360-L360; blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L371-L371; blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L376-L376; blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L386-L386; blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L393-L393; blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L399-L399 | Extended span includes the real-phase Delta construction at L350-L353. Equations, regularity, bounds and constant scope match. |
| `step:p3:diff-regularity` | FAIL | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L376-L384; blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L382-L382; blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L384-L384; blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L378-L380; blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L380-L380 | The added holomorphy edges resolve the original finding. SOURCE_HYPOTHESES omits the real phase psi, essential at L377, and the Hamiltonian package while assuming the proved inverse formula. Restore the actual difference-lemma premises. |
| `step:p3:diff-triangular` | FAIL | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L393-L397; blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L395-L395; blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L394-L394 | The diff-regularity edge correctly pays Delta=P xi. SOURCE_HYPOTHESES still consists of earlier differential/reducibility conclusions instead of the difference-lemma source data; retain those identities in DEPS. |
| `step:p3:diff-bounds` | FAIL | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L399-L405; blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401; blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L402-L402; blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L403-L403; blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L405-L405; blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L400-L401 | The added reducibility edge correctly identifies the inverse frame. SOURCE_HYPOTHESES still assumes proved frame bounds and segment inclusion, already supplied by dependencies, instead of the difference-lemma source data. |
| `bp:p3:standing#constants` | PASS | blueprint/parts/p3-uniqueness.tex#bp:p3:standing#constants@L95-L117; blueprint/parts/p3-uniqueness.tex#bp:p3:standing#constants@L104-L104 | The erroneous S1-S4/data premise is removed. Constants precede data and depend on neither gamma nor mu. The cohomological-constant edge is direct; role descriptions stay forward pointers. |
| `p3:setting-notation` | PASS | blueprint/parts/p3-uniqueness.tex#p3:setting-notation@L74-L93 | Previously missing display/setting item is present, with the correct source range and enclosing-node disposition. |
| `eq:p3:Cquad` | PASS | blueprint/parts/p3-uniqueness.tex#eq:p3:Cquad@L105-L112 | Previously missing display/setting item is present, with the correct source range and enclosing-node disposition. |
| `eq:p3:phase-small` | PASS | blueprint/parts/p3-uniqueness.tex#eq:p3:phase-small@L281-L283 | Previously missing display/setting item is present, with the correct source range and enclosing-node disposition. |
| `eq:p3:Delta` | PASS | blueprint/parts/p3-uniqueness.tex#eq:p3:Delta@L350-L353 | Previously missing display/setting item is present, with the correct source range and enclosing-node disposition. |
| `eq:p3:c` | PASS | blueprint/parts/p3-uniqueness.tex#eq:p3:c@L515-L518 | Previously missing display/setting item is present, with the correct source range and enclosing-node disposition. |

Assignment accounting: 9 nodes and 5 coverage items reviewed; 6 node FAILs. All assigned coverage items PASS.

Conditional premises: local standing-package edges are explicit; admissibility supplies torus conditions. The uniform-limits application now has holomorphic K_s, pointwise convergence and uniform derivative convergence. Part 3 L74-L77 supplies Part 2 data, with S3 supplying torus hypotheses. The perturbation-average application remains an exposed gap rather than a certified use.

Reachability exclusions and average-derivative alternative routes belong to other delta assignments. None of the r1 coverage items excludes mixed-difference, cauchy-strip-2 or normalized-unique. V1-V9 were checked under the specified KIND adjudication.

Complete replacement blocks follow. Only the named graph records are replaced; no source theorem is changed. Existing metadata and planning fields are retained. These are proposals for orchestrator adjudication, not packet edits.

## step:p3:torsion-holomorphy

The derivative-regularity edge resolves the original finding. SOURCE_HYPOTHESES still substitutes proved holomorphy of N and DX_h for (S1)-(S3), and omits holomorphy of K_1 needed for composition. Hamiltonian(a) supplies holomorphic X_h; the derivative-regularity edge supplies holomorphic DX_h.

```text
NODE: step:p3:torsion-holomorphy
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L248-L252
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L248-L252
CONTRACT_ID: step:p3:torsion-holomorphy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed parameters of Part 3 at L50; hypotheses (S1)-(S3) of bp:p3:standing; the frame and torsion objects at K_1 have the definitions at L81-L88
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: X_N and T=BL^T X_N are holomorphic, hence continuous on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, bp:p2:hamiltonian, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L249 | N holomorphic; T=BL^T X_N
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L250-L251 | (a) gives holomorphic X_h on the open domain; the derivative-regularity edge gives holomorphic DX_h
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L251 | derivatives of N and X_h are holomorphic on the relevant open domains
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## step:p3:phase-fixed-point

The realness edge resolves the original finding. BL^T L=I directly uses the definition and invertibility of B at L303, still without an edge. SOURCE_HYPOTHESES also substitutes that derived identity for the inherited phase-lemma data.

```text
NODE: step:p3:phase-fixed-point
KIND: step
TITLE: Fixed-point form
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L302-L312
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L302-L312
CONTRACT_ID: step:p3:phase-fixed-point
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed parameters of Part 3 at L50; hypotheses (S1)-(S4) of bp:p3:standing; eta=sup_{T_rho}|K_2-K_1|; eta<=rho/(4n C_P(1+2 C_P sigma_K)); W=K_2-K_1; frame objects have their source definitions
SOURCE_QUANTIFIERS: theta,psi in R^n
SOURCE_CONCLUSION: normalization holds iff Phi(psi)=psi for Phi(psi)=-avg(BL^T(W(.+psi)+K_1(.+psi)-K_1-L psi))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:phase-real, bp:p3:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:phase-real | blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L308-L310 | the two averaged integrands are real, so Phi is a map R^n to R^n
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L303-L306 | B=(L^T L)^{-1} at L85 and invertibility in S3 give BL^T L=I for the fixed-point identity
```

## step:p3:phase-contraction

Replacing the misplaced realness edge by E6 resolves the original integral finding. SOURCE_HYPOTHESES still assumes the proved derivative/frame estimates instead of the phase-lemma data and its stated smallness.

```text
NODE: step:p3:phase-contraction
KIND: step
TITLE: Contraction
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L322-L337
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L322-L337
CONTRACT_ID: step:p3:phase-contraction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed parameters of Part 3 at L50; hypotheses (S1)-(S4) of bp:p3:standing; eta=sup_{T_rho}|K_2-K_1|; eta<=rho/(4n C_P(1+2 C_P sigma_K)); W=K_2-K_1; frame objects have their source definitions; Phi is defined at L308-L310; Y={psi in R^n: |psi|<=2 C_P eta}
SOURCE_QUANTIFIERS: psi,psi' in Y
SOURCE_CONCLUSION: Phi maps Y into Y and is a contraction with constant 1/2
CONSTANT_SCOPE: C_P as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:phase-derivatives, step:p3:phase-fixed-point, bp:p3:matrix-norms, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:phase-derivatives | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L328-L328 | Lipschitz bounds on W and L
EDGE: step:p3:phase-fixed-point | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L332-L332 | definition of Phi
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L330-L330 | abs BL^Tabs <=C_P
EDGE: bp:p1:ext-integral | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L325-L336 | fundamental theorem of calculus along the real segment and norm-of-integral bounds for the segment integral and the averages
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## step:p3:diff-regularity

The added holomorphy edges resolve the original finding. SOURCE_HYPOTHESES omits the real phase psi, essential at L377, and the Hamiltonian package while assuming the proved inverse formula. Restore the actual difference-lemma premises.

```text
NODE: step:p3:diff-regularity
KIND: step
TITLE: Regularity and periodicity
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L376-L384
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L376-L384
CONTRACT_ID: step:p3:diff-regularity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed parameters of Part 3 at L50; hypotheses (S1)-(S4) of bp:p3:standing; psi in R^n; Delta(theta)=K_2(theta+psi)-K_1(theta) on T_rho; ||Delta||_rho<mu; R=X_h(K_1+Delta)-X_h(K_1)-DX_h(K_1)Delta, xi=P^{-1}Delta and q=P^{-1}R are the constructions at L363-L367
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: Delta,xi,q holomorphic; Delta,xi 1-periodic; Delta=P xi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, bp:p2:periodicity, bp:p2:hamiltonian, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L382-L382 | P^{-1} holomorphic, explicit formula
EDGE: bp:p2:periodicity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L384-L384 | L is 1-periodic
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L378-L380 | S1-S2 supply the Part 2 standing package; X_h is holomorphic on B and the ball inclusion puts the composed arguments there
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L380-L380 | DX_h is holomorphic because X_h is holomorphic on the open domain, so the remainder R is holomorphic
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## step:p3:diff-triangular

The diff-regularity edge correctly pays Delta=P xi. SOURCE_HYPOTHESES still consists of earlier differential/reducibility conclusions instead of the difference-lemma source data; retain those identities in DEPS.

```text
NODE: step:p3:diff-triangular
KIND: step
TITLE: Triangular system
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L393-L397
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L393-L397
CONTRACT_ID: step:p3:diff-triangular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed parameters of Part 3 at L50; hypotheses (S1)-(S4) of bp:p3:standing; psi in R^n; Delta(theta)=K_2(theta+psi)-K_1(theta) on T_rho; ||Delta||_rho<mu; R=X_h(K_1+Delta)-X_h(K_1)-DX_h(K_1)Delta, xi=P^{-1}Delta and q=P^{-1}R are the constructions at L363-L367
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: d_omega xi=Lambda xi+q, i.e. part (b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, step:p3:diff-linearized, step:p3:diff-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L395-L395 | triangular reduction identity
EDGE: step:p3:diff-linearized | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L394-L394 | linearized equation for Delta
EDGE: step:p3:diff-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L394-L394 | the established identity Delta=P xi permits substitution into the differential equation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## step:p3:diff-bounds

The added reducibility edge correctly identifies the inverse frame. SOURCE_HYPOTHESES still assumes proved frame bounds and segment inclusion, already supplied by dependencies, instead of the difference-lemma source data.

```text
NODE: step:p3:diff-bounds
KIND: step
TITLE: Bounds
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L399-L405
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L399-L405
CONTRACT_ID: step:p3:diff-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed parameters of Part 3 at L50; hypotheses (S1)-(S4) of bp:p3:standing; psi in R^n; Delta(theta)=K_2(theta+psi)-K_1(theta) on T_rho; ||Delta||_rho<mu; R=X_h(K_1+Delta)-X_h(K_1)-DX_h(K_1)Delta, xi=P^{-1}Delta and q=P^{-1}R are the constructions at L363-L367
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: |xi|<=C_P|Delta|, |Delta|<=C_P|xi|, |R|<=(1/2)M|Delta|^2, |q|<=(1/2)C_P M|Delta|^2
CONSTANT_SCOPE: C_P as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:matrix-norms, bp:p1:taylor, bp:p2:hamiltonian, step:p3:diff-regularity, bp:p1:holomorphic-regularity, bp:p3:reducibility
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401 | abs Pabs ,abs P^{-1}abs <=C_P
EDGE: bp:p1:taylor | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401 | second-order Taylor bound on R
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L402-L402 | (a): X_h holomorphic on B
EDGE: step:p3:diff-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L403-L403 | segment lies in B
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L405-L405 | abs D^2X_habs =abs D(DX_h)abs
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L400-L401 | P^{-1}=(BL^T;-L^T Omega_0), so the stacked-matrix bound of matrix-norms applies to P^{-1}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Checks: all five pinned corpus hashes PASS; one row per assigned record; every FAIL has a complete replacement block; nonanchor FROZEN_* and dependency/EDGE separators checked. No Lean, providers, builds, source lint, packet edits or state-changing git commands were used.

Uncertainties/errata: this is source topology review, not Lean proof-status validation. The existing average-applicability gap is preserved. No new pinned-paper erratum was identified, and no mathematical source or frozen declaration was changed.
