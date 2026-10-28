# P-p4 slice topology review

**Verdict: FAIL.** Reviewer: `sol-review-P-f`. Marker: `rev-P-f`.

Reviewed all **35 retained nodes** and **68 coverage items** against the pinned source and binding REVIEW-BRIEF/SPEC. Node verdicts: **23 PASS, 12 FAIL**. Coverage verdicts: **68 PASS, 0 FAIL**. Topology status is separate from mathematical or Lean proof status.

Read all 233 lines of `blueprint-P/parts/p4-pg-measure.tex`, including the excluded units, all assigned node/coverage fields, every EDGE span, and the raw prerequisite statements in P Parts 0/1/3 and K Parts 1/4. Read Part 5 L7, L236 and L278–301 and searched all corpus parts for the excluded labels and product steps. No implementation/provider Lean was inspected; the frozen P-G declaration's data binders were consulted only to resolve that “connected” is IsConnected and includes nonemptiness. No anchor identity/state or proof status was changed or used as evidence of proof closure.

## Exclusions and the retained product step

The exclusions of **domain-collar, budget and cell-budget PASS**, including their unused proof steps. Part 5 L7/L236/L278 explicitly replaces the D_t-domain budgets with its own check-D-domain budget. Its L287 proof redoes the collar/difference estimate, including the extra D_t minus check-D piece and its positive-volume normalization. The “as in” dc-diff reference is a comparison with that reproduced argument; it does not require restoring the unused D_t-specific theorem. The Part 3 reference at p3b L215 likewise identifies a consumer of its measure output, rather than consuming the Part 4 budget.

**Keep dc-prod.** It is not unreachable: its sole graph consumer is `stepP:p5:bu-collar`, on a path to P-G. Its raw L162 text explicitly states the general product-neighbourhood fact before specializing to D_t. Part 5 L287 invokes that fact for check D. The current conclusion already includes that general fact in its parenthetical, so the Part 5 use is supported by that clause, not by instantiating the D_t-specific collar estimate. F5 removes the proof argument from the hypothesis field; it preserves the existing conclusion and does not reinstate the excluded parent. The shell-data node is reached through this specialization and stays too.

Every retained slice node is reachable from at least one of the six roots in the current packet graph. The coverage inventory includes all labelled results, proof steps, externals, headings and source/prose regions. **all other coverage items PASS**. There are no failed coverage items or coverage replacement blocks.

## Findings

**F1 — consumer use-site locators.** Prerequisite edges in lc-local, dm-A, dm-sum, dc-prod, dm-jac, dm-cell and dm-shell point to preceding text or a heading that does not contain the asserted use. Move only those locations to the actual argument lines. Parent-to-proof-step edges at the child's labelled heading remain valid ownership locators and are preserved.

**F2 — missing direct inputs.** li-cont L57 applies the continuous-image-of-compact fact expressly admitted by p1 ext-borel L24. The main Diophantine proposition L109 directly uses the lattice constants S_1, S_2, C_T defined by lattice-tail. dm-sum L140 uses the S4 data in its normalization. dc-prod L162 uses the definition of N_s from conv#data. dm-shell L185 uses dm-jac's measure multiplier, as well as dm-cell's denominator volume. Add these direct edges; reaching them through another proof step does not replace the direct use.

**F3 — missing dimension relation.** The source fixes n=a+b at L7, with a,b>=1 from P-G. The lattice-tail record instead lists independent positive n and b, and lt-a records only tau>n. Those hypotheses do not imply tau>b-1, needed to apply K's lattice-sum in dimension b. For example n=1, b=4, tau=2 would make the asserted b-dimensional sum divergent. Restore the inherited dimension relation in those two hypothesis fields; no result or constant is changed.

**F4 — dropped tail prefactor.** lt-b's SOURCE_CONCLUSION chains the full lattice tail to (m/2)^(1-p)/(p-1), losing 2*3^(n-1). At source L101 that integral bounds the one-dimensional series; the lattice-count prefactor still multiplies it. Preserve the prefactor through the final bound.

**F5 — proof argument in the hypothesis field.** dc-prod lists the product-distance formula as an additional SOURCE_HYPOTHESES ingredient even though L162 gives it as the argument for the product-neighbourhood conclusion. Remove that ingredient, retaining the max-norm convention. Its existing parenthetical general neighbourhood clause is exactly the one Part 5 uses. The conclusion, quantifiers, specialized data, collar dependency and statement/proof locators stay.

**F6 — null sets and local constants.** dm-shell's exact image-set equality omits the zero-oscillator null set already excluded in dm-cell. State the equality up to that inherited null set; the measure bound is unchanged. lc-local's M_* is the supremum over a chosen closed delta-neighbourhood inside O; “depends on (f,theta*,x*) only” incorrectly omits that neighbourhood choice. Record its local scope without asserting a uniform dependence list absent from the source.

## Node verdicts

`p4` denotes `blueprint-P/parts/p4-pg-measure.tex`. Spans include the statement, proof and all current EDGE locations; prerequisite contracts were checked at the raw locations above.

| ID | Verdict | Spans re-read | Reason for FAIL |
|---|---|---|---|
| bpP:p4:ext-tonelli | PASS | p4 L11–11 | — |
| bpP:p4:ext-deriv | PASS | p4 L13–13 | — |
| bpP:p4:ext-conn | PASS | p4 L14–14 | — |
| bpP:p4:collar | PASS | p4 L22–37 | — |
| stepP:p4:co-compact | PASS | p4 L31–32 | — |
| stepP:p4:co-meas | PASS | p4 L33–34 | — |
| stepP:p4:co-nbhd | PASS | p4 L35–36 | — |
| bpP:p4:lip-compact | PASS | p4 L41–49 | — |
| stepP:p4:lc-contra | PASS | p4 L45–46 | — |
| stepP:p4:lc-local | FAIL | p4 L45–48 | F1: the lc-contra edge is outside the actual consumer argument; M_* also depends on the chosen neighbourhood. |
| bpP:p4:lip-inverse | PASS | p4 L51–60 | — |
| stepP:p4:li-cont | FAIL | p4 L56–57 | F2: missing direct continuous-image-of-compact input (p1 ext-borel). |
| stepP:p4:li-lip | PASS | p4 L58–59 | — |
| bpP:p4:beta-inverse | PASS | p4 L62–67 | — |
| bpP:p4:freq | PASS | p4 L72–76 | — |
| bpP:p4:data | PASS | p4 L78–86 | — |
| bpP:p4:affine-slab | PASS | p4 L88–93 | — |
| bpP:p4:lattice-tail | FAIL | p4 L95–102 | F3: b is not independent of n; the omitted n=a+b relation is needed for the b-dimensional lattice sum. |
| stepP:p4:lt-a | FAIL | p4 L100–100 | F3: the second imported lattice-sum application needs the inherited b<=n relation. |
| stepP:p4:lt-b | FAIL | p4 L101–101 | F4: the final bound drops the multiplicative factor 2*3^(n-1). |
| bpP:p4:two-scale-diophantine-measure | FAIL | p4 L104–141 | F2: S_1, S_2 and C_T are direct statement uses of lattice-tail, missing from DEPS. |
| stepP:p4:dm-slow | PASS | p4 L118–119 | — |
| stepP:p4:dm-y | PASS | p4 L121–123 | — |
| stepP:p4:dm-A | FAIL | p4 L125–128 | F1: dm-y and data edges point only at the heading L125; their uses are L126-128. |
| stepP:p4:dm-Bstruct | PASS | p4 L130–131 | — |
| stepP:p4:dm-B | PASS | p4 L133–138 | — |
| stepP:p4:dm-sum | FAIL | p4 L139–140 | F1/F2: use sites are L140, and the standing data used in the normalization have no direct edge. |
| stepP:p4:dc-prod | FAIL | p4 L161–162 | F5/F1/F2: assumes its product-distance argument as a premise, misses N_s data, and has heading-only locators; its existing generic conclusion supports Part 5. |
| bpP:p4:disc-measure | PASS | p4 L173–186 | — |
| stepP:p4:dm-jac | FAIL | p4 L180–181 | F1: chart edge points only at the L180 heading, rather than L181. |
| stepP:p4:dm-cell | FAIL | p4 L182–183 | F1: four definition edges point only at heading L182; the use is L183. |
| stepP:p4:dm-shell | FAIL | p4 L184–185 | F1/F2/F6: chart locator is heading-only; the chart-volume multiplier is missing; the set equality needs the inherited null-set qualification. |
| bpP:p4:conv#data | PASS | p4 L19–20 | — |
| bpP:p4:conv#shell | PASS | p4 L153–154 | — |
| bpP:p4:s-disc#chart | PASS | p4 L169–171 | — |

## Complete replacement blocks

Changed fields: `stepP:p4:lc-local`: CONSTANT_SCOPE, EDGE.

```text
NODE: stepP:p4:lc-local
KIND: step
TITLE: Local bound
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lc-local@L47-L48
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lc-local@L47-L48
CONTRACT_ID: stepP:p4:lc-local
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the sequences of stepP:p4:lc-contra; O open; D_x f jointly continuous
SOURCE_QUANTIFIERS: delta > 0 with closed polydisc around (theta*, x*) in O; M_* := sup of ¦D_x f¦ over it; m large
SOURCE_CONCLUSION: for large m the segment [x_m, x_m'] lies in B_delta(x*), so the mean value inequality gives ¦f(theta_m,x_m) - f(theta_m,x_m')¦ <= M_* ¦x_m - x_m'¦, contradicting the choice for m > M_*
CONSTANT_SCOPE: M_* is local to the chosen closed delta-neighbourhood in O; no uniform dependence beyond that choice is asserted
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:lc-contra, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:lc-contra | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lc-local@L48-L48 | sequences and limit point (theta*, x*) produced by the contradiction step
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lc-local@L48-L48 | mean value inequality on a convex ball (replaces the alias item bpP:p4:ext-mvt)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Changed fields: `stepP:p4:li-cont`: DEPS, EDGE.

```text
NODE: stepP:p4:li-cont
KIND: step
TITLE: Continuity and compactness
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:li-cont@L56-L57
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:li-cont@L56-L57
CONTRACT_ID: stepP:p4:li-cont
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: HasFastDiffeo clauses (i) H_0 analytic on W and (ii) omega_{H_0}(W) open; closure of V compact
SOURCE_QUANTIFIERS: H_0, W, V given
SOURCE_CONCLUSION: omega_{H_0} is analytic, hence continuous, on W; Y_0 is compact and lies in the open set omega_{H_0}(W)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:ext-deriv, bpP:p0:fastdiffeo#HasFastDiffeomorphism, bpP:p0:fastfreq#fastFrequency, bpP:p1:ext-borel
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:ext-deriv | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:li-cont@L57-L57 | the derivative of a real analytic function is real analytic
EDGE: bpP:p0:fastdiffeo#HasFastDiffeomorphism | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:li-cont@L57-L57 | clauses (i) and (ii)
EDGE: bpP:p0:fastfreq#fastFrequency | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:li-cont@L57-L57 | omega_{H_0} is the derivative of H_0
EDGE: bpP:p1:ext-borel | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:li-cont@L57-L57 | the continuous image Y_0 of the compact closure of V is compact
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Changed fields: `bpP:p4:lattice-tail`: SOURCE_HYPOTHESES.

```text
NODE: bpP:p4:lattice-tail
KIND: lemma
TITLE: Lattice sums
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lattice-tail@L95-L98
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lattice-tail@L99-L102
CONTRACT_ID: bpP:p4:lattice-tail
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a, b >= 1 integers and n = a + b (Part 4 conventions); tau > n (so tau - 1 > n - 1 and tau > b - 1); (b) real m >= 1
SOURCE_QUANTIFIERS: n, b, tau fixed; (b) then m
SOURCE_CONCLUSION: (a) sum over k in Z^n minus 0 of ¦k¦_1^{-tau} <= S_1 := 2 3^{n-1} (tau+1-n)/(tau-n); sum over k_2 in Z^b minus 0 of ¦k_2¦_1^{-tau-1} <= S_2 := 2 3^{b-1} (tau+2-b)/(tau+1-b); (b) sum over ¦k¦_1 > m of ¦k¦_1^{-tau-1} <= C_T (2/m)^{tau+1-n}, C_T := 2 3^{n-1}/(tau+1-n)
CONSTANT_SCOPE: S_1, S_2, C_T depend on (n, b, tau) only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:lt-a, stepP:p4:lt-b
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:lt-a | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lattice-tail@L100-L100 | proof step (a)
EDGE: stepP:p4:lt-b | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:lattice-tail@L101-L101 | proof step (b)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Changed fields: `stepP:p4:lt-a`: SOURCE_HYPOTHESES.

```text
NODE: stepP:p4:lt-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lt-a@L100-L100
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lt-a@L100-L100
CONTRACT_ID: stepP:p4:lt-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a, b >= 1 and n = a + b; tau > n; K lattice sum with (n, tau - 1) (valid as tau - 1 > n - 1) and with (b, tau) (valid as tau > b - 1)
SOURCE_QUANTIFIERS: n, b, tau fixed
SOURCE_CONCLUSION: sums S_1 and S_2 bounds of part (a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:lattice-sum
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:lattice-sum | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lt-a@L100-L100 | Z^n sum with exponent tau-1 and Z^b sum with exponent tau
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Changed fields: `stepP:p4:lt-b`: SOURCE_CONCLUSION.

```text
NODE: stepP:p4:lt-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lt-b@L101-L101
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lt-b@L101-L101
CONTRACT_ID: stepP:p4:lt-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: tau > n; m >= 1 real; lattice count of {¦k¦_1 = l}
SOURCE_QUANTIFIERS: m >= 1 given; l ranges over integers > m
SOURCE_CONCLUSION: the tail sum is <= 2 3^{n-1} sum_{l > m} l^{-p} (p = tau + 2 - n > 1) <= 2 3^{n-1} (m/2)^{1-p}/(p-1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:lattice-count
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:lattice-count | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:lt-b@L101-L101 | number of lattice points with ¦k¦_1 = l is at most 2 3^{n-1} l^{n-1}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Changed fields: `bpP:p4:two-scale-diophantine-measure`: DEPS, EDGE.

```text
NODE: bpP:p4:two-scale-diophantine-measure
KIND: proposition
TITLE: Two-scale Diophantine measure
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L104-L112
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L113-L141
CONTRACT_ID: bpP:p4:two-scale-diophantine-measure
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (S4) of bpP:p4:data; 0 < lambda <= lambda_0; Q subset (-lambda, lambda)^b Borel; mu in (0, mu_1]; alpha_1, alpha_2 > 0; omega_mu the frequency map of bpP:p4:freq; D_{alpha_1,alpha_2,tau} the two-scale set of bpP:p1:two-scale; R := {(I,xi) in D x Q: omega_mu(I,xi) not in D_{alpha_1,alpha_2,tau}}, gamma := alpha_2/mu
SOURCE_QUANTIFIERS: the data of (S4) (a, b, tau, H_0, V, W, D, lambda_0, mu_1, Lambda_N, L_beta) fixed first; then lambda, Q, mu, alpha_1, alpha_2; c_1, c_2 defined from the data
SOURCE_CONCLUSION: meas R <= [c_1 alpha_1 (1 + mu^{tau-n}/lambda) + c_2 gamma/lambda] meas(D) (2 lambda)^b, with c_1 := (Lambda_g^n/meas D) max{4 (2R_y)^{a-1} S_1, 4 b^2 L_beta (2R_y)^a C_T (4 Lambda_N Lambda_g)^{tau+1-n}} and c_2 := b L_beta S_2
CONSTANT_SCOPE: c_1, c_2 depend on (a, b, tau, H_0, V, W, Lambda_N, L_beta, D) only, not on mu, lambda, Q, alpha_i
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:data, bpP:p4:freq, bpP:p1:two-scale, bpP:p4:lip-inverse, stepP:p4:dm-slow, stepP:p4:dm-y, stepP:p4:dm-A, stepP:p4:dm-Bstruct, stepP:p4:dm-B, stepP:p4:dm-sum, bpP:p4:lattice-tail
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:data | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L105-L105 | standing data (S4), (N1) to (N3), mu_1, Lambda_N, L_beta
EDGE: bpP:p4:freq | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L106-L106 | omega_mu and G_mu, omega^s_mu in F_k
EDGE: bpP:p1:two-scale | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L106-L106 | the set D_{alpha_1,alpha_2,tau} and the thresholds alpha_k
EDGE: bpP:p4:lip-inverse | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L114-L114 | F_k is continuous by (N1), (N2) and the Lipschitz inverse g, so R_k is Borel
EDGE: stepP:p4:dm-slow | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L118-L118 | proof step: case k_1 = 0
EDGE: stepP:p4:dm-y | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L121-L121 | proof step: change to frequency coordinates
EDGE: stepP:p4:dm-A | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L125-L125 | proof step: case K_A
EDGE: stepP:p4:dm-Bstruct | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L130-L130 | proof step: structure of K_B
EDGE: stepP:p4:dm-B | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L133-L133 | proof step: case K_B
EDGE: stepP:p4:dm-sum | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L139-L139 | proof step: sum
EDGE: bpP:p4:lattice-tail | blueprint-P/parts/p4-pg-measure.tex#bpP:p4:two-scale-diophantine-measure@L109-L109 | S_1, S_2 and C_T in the displayed definitions of c_1 and c_2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Changed fields: `stepP:p4:dm-A`: EDGE.

```text
NODE: stepP:p4:dm-A
KIND: step
TITLE: Case $\mathcal K_A$ (slicing in $y_j$)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-A@L125-L128
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-A@L125-L128
CONTRACT_ID: stepP:p4:dm-A
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: k in K_A := {k_1 != 0: mu Lambda_N Lambda_g ¦k¦_1 <= ¦k_1¦_inf/2}; j with ¦k_{1,j}¦ = ¦k_1¦_inf >= 1; R_k' of dm-y; alpha_k = alpha_1 ¦k¦_1^{-tau}
SOURCE_QUANTIFIERS: k in K_A, j <= a
SOURCE_CONCLUSION: every y_j-section of R_k' has diameter <= 4 alpha_k; meas R_k' <= 4 alpha_1 ¦k¦_1^{-tau} (2R_y)^{a-1} (2 lambda)^b; meas R^{(A)} <= Lambda_g^n 4 S_1 (2R_y)^{a-1} alpha_1 (2 lambda)^b
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:dm-y, bpP:p4:ext-tonelli, bpP:p4:lattice-tail, bpP:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:dm-y | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-A@L126-L128 | coordinates y, F_k = k_1.y + mu G_k and the Lipschitz bound of G_k
EDGE: bpP:p4:ext-tonelli | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-A@L127-L127 | short sections plus projection in [-R_y,R_y]^{a-1} x [-lambda,lambda]^b
EDGE: bpP:p4:lattice-tail | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-A@L127-L127 | sum of ¦k¦_1^{-tau} bounded by S_1
EDGE: bpP:p4:data | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-A@L126-L127 | Lambda_N, Lambda_g in the definition of K_A
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Changed fields: `stepP:p4:dm-sum`: DEPS, EDGE.

```text
NODE: stepP:p4:dm-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-sum@L139-L140
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-sum@L139-L140
CONTRACT_ID: stepP:p4:dm-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the three bounds of the cases k_1 = 0, K_A, K_B and R = R^{(0)} union R^{(A)} union R^{(B)}
SOURCE_QUANTIFIERS: as in the proposition
SOURCE_CONCLUSION: adding them, each Lambda_g^n-term is <= c_1 meas D alpha_1 (2 lambda)^b times 1 resp. mu^{tau-n}/lambda, which is the claimed bound
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:dm-slow, stepP:p4:dm-A, stepP:p4:dm-B, K:bp:p1:ext-lebesgue, bpP:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:dm-slow | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-sum@L140-L140 | bound for R^{(0)}
EDGE: stepP:p4:dm-A | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-sum@L140-L140 | bound for R^{(A)}
EDGE: stepP:p4:dm-B | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-sum@L140-L140 | bound for R^{(B)}
EDGE: K:bp:p1:ext-lebesgue | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-sum@L140-L140 | subadditivity of meas over the union
EDGE: bpP:p4:data | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-sum@L140-L140 | standing D and Lambda_g in the scalar assembly and normalization by meas D
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Changed fields: `stepP:p4:dc-prod`: SOURCE_HYPOTHESES, DEPS, EDGE.

```text
NODE: stepP:p4:dc-prod
KIND: step
TITLE: Product structure
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dc-prod@L161-L162
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dc-prod@L161-L162
CONTRACT_ID: stepP:p4:dc-prod
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < t < d; 0 < r_K < min{t, lambda_1}; D = D_t x A_sh of bpP:p4:conv#shell; max norm
SOURCE_QUANTIFIERS: t, r_K, lambda_1, lambda_2 fixed
SOURCE_CONCLUSION: Re(D_{r_K}) = N_{r_K}(D_t) x (lambda_1 - r_K, lambda_2 + r_K)^b subset V x (0, infinity)^b (the real neighbourhood of a product is the product of real neighbourhoods; N_{r_K}(D_t) subset V by the collar lemma (c))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:collar, bpP:p4:conv#shell, bpP:p3:conv#data, bpP:p4:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:collar | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dc-prod@L162-L162 | N_{r_K}(D_t) subset V, Lemma collar (c)
EDGE: bpP:p4:conv#shell | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dc-prod@L162-L162 | D = D_t x A_sh
EDGE: bpP:p3:conv#data | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dc-prod@L162-L162 | Re(D_r) is the real neighbourhood of Part 3 conventions
EDGE: bpP:p4:conv#data | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dc-prod@L162-L162 | the definitions of N_s and D_t used in the specialized inclusion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: step of Lemma bpP:p4:domain-collar, whose statement and the other step are excluded (outside every root closure: bpP:p5:use5-fix says Part 5 does not use the lemma as a black box); this step alone is cited by bpP:p5:bu-collar.
```

Changed fields: `stepP:p4:dm-jac`: EDGE.

```text
NODE: stepP:p4:dm-jac
KIND: step
TITLE: Jacobian
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-jac@L180-L181
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-jac@L180-L181
CONTRACT_ID: stepP:p4:dm-jac
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: one oscillator (xi,psi) -> (q,p) = sqrt(2 xi)(sin psi, cos psi); Pi is the identity on (I, phi) up to permuting coordinates; theta -> 2 pi theta
SOURCE_QUANTIFIERS: xi > 0, psi in [0, 2pi)
SOURCE_CONCLUSION: ¦det D Pi¦ = 1; the oscillator map is a bijection of (0,inf) x [0,2pi) onto R^2 minus 0; Pi is measure preserving on injectivity sets and E multiplies measure by (2pi)^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:s-disc#chart, bpP:p1:typical, bpP:p1:liouville, bpP:p1:ext-area
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:s-disc#chart | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-jac@L181-L181 | Pi and E
EDGE: bpP:p1:typical | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-jac@L181-L181 | dp ^ dq = d xi ^ d psi, Remark typical (1)
EDGE: bpP:p1:liouville | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-jac@L181-L181 | charts scale Lebesgue measure on injectivity sets
EDGE: bpP:p1:ext-area | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-jac@L181-L181 | area formula
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Changed fields: `stepP:p4:dm-cell`: EDGE.

```text
NODE: stepP:p4:dm-cell
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-cell@L182-L183
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-cell@L182-L183
CONTRACT_ID: stepP:p4:dm-cell
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: z in F(V,r) with (p_j, q_j) != 0 for all j (the excluded set lies in finitely many codimension-2 subspaces, null); xi_j = (p_j^2 + q_j^2)/2 < r^2/2 on the cylinder; dm-jac
SOURCE_QUANTIFIERS: z in F(V,r)
SOURCE_CONCLUSION: z = E(I,xi,theta) with xi_j in (0, r^2/2), theta in [0,1)^n, I in V, up to a null set (the converse inclusion is the same computation); hence meas F(V,r) = (2pi)^n meas V (r^2/2)^b
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p4:dm-jac, bpP:p0:cylinder#cylinderCell, bpP:p0:cylinder#cylinder, bpP:p0:oscaction#oscillatorAction, bpP:p4:s-disc#chart
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p4:dm-jac | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-cell@L183-L183 | meas E(X) = (2pi)^n meas X
EDGE: bpP:p0:cylinder#cylinderCell | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-cell@L183-L183 | F(V,r) fundamental cell
EDGE: bpP:p0:cylinder#cylinder | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-cell@L183-L183 | the discs (p_j^2 + q_j^2)/2 < r^2/2 of the cylinder
EDGE: bpP:p0:oscaction#oscillatorAction | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-cell@L183-L183 | xi_j = R_j = (p_j^2 + q_j^2)/2
EDGE: bpP:p4:s-disc#chart | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-cell@L183-L183 | z = E(I,xi,theta)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Changed fields: `stepP:p4:dm-shell`: SOURCE_CONCLUSION, DEPS, EDGE.

```text
NODE: stepP:p4:dm-shell
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-shell@L184-L185
PROOF_SOURCE: blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-shell@L184-L185
CONTRACT_ID: stepP:p4:dm-shell
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: lambda_1 < lambda_2 = r^2/2; F = E(V x (0,lambda_2)^b x [0,1)^n) up to a null set; dm-cell
SOURCE_QUANTIFIERS: 0 < lambda_1 < lambda_2
SOURCE_CONCLUSION: up to the null set of part (b), the set {z in F(V,r): xi_j <= lambda_1 some j} is E(V x {xi: exists j, xi_j <= lambda_1} x [0,1)^n) with the xi-set of measure <= b lambda_1 lambda_2^{b-1}; dividing by (b) gives <= b (lambda_1/lambda_2) meas F
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p4:s-disc#chart, stepP:p4:dm-cell, stepP:p4:dm-jac
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p4:s-disc#chart | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-shell@L185-L185 | chart E
EDGE: stepP:p4:dm-cell | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-shell@L185-L185 | meas F(V,r) of part (b)
EDGE: stepP:p4:dm-jac | blueprint-P/parts/p4-pg-measure.tex#stepP:p4:dm-shell@L185-L185 | the chart measure multiplier (2pi)^n converts the action-shell volume to physical measure
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Suspected blueprint defects and interpretation limits

No new pinned-paper erratum is asserted. The CP10 errata at p4 L224–230 are provenance, not proof inputs, and were not re-audited against the paper.

Two source precision issues are kept separate from topology. At p4 L162, “dist(x,X x Y)=max(dist(x_1,X),dist(x_2,Y))” needs nonempty factors if formalized using Lean's real infDist (empty-set infDist is zero). The existential neighbourhood identity actually consumed is valid even for empty factors; the replacement exports that identity and does not assume the unguarded real-distance formula. At L185, “the set is E(...)” suppresses the zero-oscillator null set from L183; for b=1 the centre belongs to the singular shell but is outside the positive-action chart. The measure conclusion remains correct; F6 carries the needed qualification into the node.

The frequency definition's gradient identities at L73–75 are read on the standing P-G data region, with H_0 analytic and beta symmetric (p0 H3/H6, L344–347), not as new claims for arbitrary nondifferentiable H_0 or nonsymmetric beta. The frequency formula, S4 hypotheses, inverse bounds and period dictionary were checked in that source context. IsConnected supplies V nonempty; no extra nonemptiness hypothesis or root-as-premise edge is introduced. Basic compactness, finite-dimensional topology and routine algebra in the inline proofs are not promoted to new mathematical assumptions.

## Validation and scope

`inp_depgraph_slice_check.py docs/graph/P/packets P-p4 --structural` reports: `35 nodes, 96 edges, 68 coverage items, 0 problems, 0 TODO records`. All 16 CORPUS pins and nine IMPORTS pins match. Direct DEPS/EDGE correspondence, prerequisite existence, locator bounds, root reachability and replacement-field preservation were checked. The review applier dry run recognizes 12 replacements, 23 PASS nodes and no unresolved FAILs. No checker result substitutes for the manual source checks.

Input hashes (rechecked unchanged after writing):

| Input | SHA-256 |
|---|---|
| docs/graph/P/packets/P-p4.nodes.md | 370f0aea82720ea649b59f140ea19ff7b8e7effe011599fb3645e1e321dec1ed |
| docs/graph/P/packets/P-p4.coverage.md | 478a9e384e26f2e9fb3b7971bf09e11ef7aea57edc6b9f56812434246e2c7a81 |

Only `docs/graph/P/reviews/P-p4-review.md` was written. No packet, source, SPEC, manifest, other report or git state was edited. No Lean, build or implementation inspection was run.
