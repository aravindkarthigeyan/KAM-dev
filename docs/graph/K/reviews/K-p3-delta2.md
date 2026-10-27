# K-p3: delta2 topology review

Reviewer: `sol-review-d2` (d2). Verdict for the assigned records: **FAIL**.

Scope: exactly the d2 nodes in `delta2-assignments.json`. I wrote none of the packet records under review. Earlier delta findings were checked against the current packets and the raw pinned blueprint. Verdicts concern source topology, not proof closure or the entire slice.

Re-read source/conditional-input context: Part 3 L50-L140, L193-L268 and L279-L406; Part 2 L56-L65, L215-L258, L270-L355; Part 1 L80-L84, L193-L224, L392-L440. Each row also includes every original EDGE consumer span.

| Record ID | Verdict | Source spans re-read | Finding / repair check |
|---|---|---|---|
| `step:p3:torsion-holomorphy` | FAIL | `blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L248-L252`; `blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L249`; `blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L250-L251`; `blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L251` | The delta source-field/edge repair is retained, but the record explicitly assumes (S1)-(S3) or (S1)-(S4) without a direct dependency on bp:p3:standing. SPEC requires the local package edge; prerequisite theorems do not supply an assumed package transitively. |
| `step:p3:phase-fixed-point` | PASS | `blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L302-L312`; `blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L308-L310`; `blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L303-L306` | PASS: the added standing edge directly supplies B=(L^T L)^(-1) and invertibility at L303; realness supplies Phi:R^n->R^n. The source smallness and quantifiers are retained. |
| `step:p3:phase-contraction` | FAIL | `blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L322-L337`; `blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L328-L328`; `blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L332-L332`; `blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L330-L330`; `blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L325-L336` | The delta source-field/edge repair is retained, but the record explicitly assumes (S1)-(S3) or (S1)-(S4) without a direct dependency on bp:p3:standing. SPEC requires the local package edge; prerequisite theorems do not supply an assumed package transitively. |
| `step:p3:diff-regularity` | FAIL | `blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L376-L384`; `blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L382-L382`; `blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L384-L384`; `blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L378-L380`; `blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L380-L380` | The delta source-field/edge repair is retained, but the record explicitly assumes (S1)-(S3) or (S1)-(S4) without a direct dependency on bp:p3:standing. SPEC requires the local package edge; prerequisite theorems do not supply an assumed package transitively. |
| `step:p3:diff-triangular` | FAIL | `blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L393-L397`; `blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L395-L395`; `blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L394-L394` | The delta source-field/edge repair is retained, but the record explicitly assumes (S1)-(S3) or (S1)-(S4) without a direct dependency on bp:p3:standing. SPEC requires the local package edge; prerequisite theorems do not supply an assumed package transitively. |
| `step:p3:diff-bounds` | FAIL | `blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L399-L405`; `blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401`; `blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L402-L402`; `blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L403-L403`; `blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L405-L405`; `blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L400-L401` | The delta source-field/edge repair is retained, but the record explicitly assumes (S1)-(S3) or (S1)-(S4) without a direct dependency on bp:p3:standing. SPEC requires the local package edge; prerequisite theorems do not supply an assumed package transitively. |

Accounting: 6 assigned nodes; 5 FAIL; 1 PASS. No coverage items are assigned to d2. The corresponding inventory entries were checked for node disposition; this does not claim a review of unassigned coverage.

Package-edge criterion: SPEC says “A result that assumes a package depends on its node.” These FAILs preserve the repaired source premises and add their missing package edge; they do not add a mathematical assumption or replace a proved ingredient by a premise. The package source text and the applying conditional result were both re-read.

Complete proposed replacement blocks follow. They are review proposals only; packets are unchanged.

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
DEPS: bp:p3:reducibility, bp:p2:hamiltonian, bp:p1:holomorphic-regularity, bp:p3:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L249 | N holomorphic; T=BL^T X_N
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L250-L251 | (a) gives holomorphic X_h on the open domain; the derivative-regularity edge gives holomorphic DX_h
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L251 | derivatives of N and X_h are holomorphic on the relevant open domains
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L252 | S1-S3 supply the Part 2 Hamiltonian package and holomorphic K_1 with its image in the open ambient domain for composition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

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
DEPS: step:p3:phase-derivatives, step:p3:phase-fixed-point, bp:p3:matrix-norms, bp:p1:ext-integral, bp:p3:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:phase-derivatives | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L328-L328 | Lipschitz bounds on W and L
EDGE: step:p3:phase-fixed-point | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L332-L332 | definition of Phi
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L330-L330 | abs BL^Tabs <=C_P
EDGE: bp:p1:ext-integral | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L325-L336 | fundamental theorem of calculus along the real segment and norm-of-integral bounds for the segment integral and the averages
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L323-L337 | the inherited phase-lemma package fixes the reference frame and real tori used in the segment integral; the local phase-small bound is L281-L282
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

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
DEPS: bp:p3:reducibility, bp:p2:periodicity, bp:p2:hamiltonian, bp:p1:holomorphic-regularity, bp:p3:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L382-L382 | P^{-1} holomorphic, explicit formula
EDGE: bp:p2:periodicity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L384-L384 | L is 1-periodic
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L378-L380 | S1-S2 supply the Part 2 standing package; X_h is holomorphic on B and the ball inclusion puts the composed arguments there
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L380-L380 | DX_h is holomorphic because X_h is holomorphic on the open domain, so the remainder R is holomorphic
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L377-L384 | S3-S4 supply holomorphy and primarity of both tori, and S3 supplies the radius-mu ball in the ambient domain
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

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
DEPS: bp:p3:reducibility, step:p3:diff-linearized, step:p3:diff-regularity, bp:p3:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L395-L395 | triangular reduction identity
EDGE: step:p3:diff-linearized | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L394-L394 | linearized equation for Delta
EDGE: step:p3:diff-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L394-L394 | the established identity Delta=P xi permits substitution into the differential equation
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L394-L397 | S1-S3 are the local source package for the exact reducibility application; S4 is inherited from the difference-lemma data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

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
DEPS: bp:p3:matrix-norms, bp:p1:taylor, bp:p2:hamiltonian, step:p3:diff-regularity, bp:p1:holomorphic-regularity, bp:p3:reducibility, bp:p3:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401 | abs Pabs ,abs P^{-1}abs <=C_P
EDGE: bp:p1:taylor | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401 | second-order Taylor bound on R
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L402-L402 | (a): X_h holomorphic on B
EDGE: step:p3:diff-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L403-L403 | segment lies in B
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L405-L405 | abs D^2X_habs =abs D(DX_h)abs
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L400-L401 | P^{-1}=(BL^T;-L^T Omega_0), so the stacked-matrix bound of matrix-norms applies to P^{-1}
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L400-L405 | S1 supplies the bilinear second-derivative bound M in the Taylor application; S3 supplies the frame bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Validation: all five pinned corpus SHA-256 checks PASS. Assignment-row coverage, one complete replacement per FAIL, DEPS/EDGE equality, and locator bounds were mechanically checked. No Lean command, build, source lint, implementation/provider read, state-changing git command, packet edit, frozen edit or manifest edit was performed. The review brief confines this task to reports and forbids Lean execution.

Uncertainties / errata / deviations: no pinned paper was used as an authority beyond the blueprint corpus, and no new pinned-paper erratum is claimed. Findings are graph-record defects; existing SOURCE_GAP notes are preserved. No source mathematics or frozen statement was changed.

Reviewed packet SHA-256: `6b5d71f3b9ca2fdf17c3ce7fcd6e211b11c8cf5f1c0e5b08ed67b789ee93636d`.

Final check receipt: `K-p3: 6 rows, 5 complete FAIL replacements; DEPS/EDGE, targets, planning fields and locator bounds PASS`. Global accounting: `39/39 assigned node rows PASS accounting`. `sha256sum -c docs/graph/K/CORPUS.sha256`: Parts 0–4 each `OK`. All 64 fingerprinted inputs unchanged. `git diff --check -- <the five delta2 report paths>`: exit 0, no output. No Lean results were created, so `#print axioms` is not applicable.
