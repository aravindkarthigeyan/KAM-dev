# P-p11b delta topology review

Reviewer: **sol-delta-P-m**. Marker: **delta-P-m**. Date: 2026-10-28.

**Verdict: FAIL — two remaining direct-package omissions.** Of the 17 proposed node records, 15 PASS and 2 FAIL. All 45 proposed coverage records PASS. The three newly exposed N-application gaps are faithfully represented and pass as topology. The `patch → bpP:p10:interface` edge is a genuine source use; its supplier remains an explicitly deferred assembly target, as specified in this task. This report does not reopen the other 46 node records or other 42 coverage records.

Independence: original reviewer/rewrite author **sol-review-P-m**, extractor **sonnet-extract-P-p11b**; this reviewer uses the distinct tag above. Followed DELTA-BRIEF and REVIEW-BRIEF in full and the current SPEC, including its direct-package, conditional-premise, source-gap, alias and P-FIXED-deferral rulings. Applied the build-proof-dependency-graph source-only review discipline. No Lean implementation/provider, proof body or proof-status evidence was consulted.

## Snapshot and materials

HEAD at snapshot: `9415aec0ff2ff12402d6556302a5ce5406aeb353`.

| Artifact | SHA256 |
|---|---|
| `docs/graph/P/packets/P-p11b.nodes.md` | `f38661af42728eff6090b7724f616b438e58b3a879c9bd98b1eb6d390c900575` |
| `docs/graph/P/packets/P-p11b.coverage.md` | `dbee7c61c6f0510862b3131f13b921b650439b14bb0d2fee897c0768363aad5d` |
| `blueprint-P/parts/p11b-planar-torsion.tex` | `f8ce70a3460c855e1e04ea1a8d39c7a32a550f38b8097ca993a6a17efe012bf1` |

Read the original `P-p11b-review.md`, including its owning-slice P-p10 handoff and caveats; all proposed node/coverage blocks; all statement/proof/EDGE spans listed below; and the relevant supplier statements. Source abbreviations: **11b** = `blueprint-P/parts/p11b-planar-torsion.tex`, **P9** = `blueprint-P/parts/p9-secular-spectrum.tex`, **P10** = `blueprint-P/parts/p10-nondegeneracy.tex`.

Supplier/context spans: 11b L14-L24 (data, bracket and approved externals), L28-L56 (orbit and Laplace reduction), L64-L98 (pair jet and exact extraction), L100-L124 (quartic coefficients and normal-form setting), L126-L176 (character, homological, flow, Lie and full-space-map contracts), L180-L222 (projection, torsion definition, average and Birkhoff assembly), L230-L265 (asymptotic inputs, torsion and patch), and the proposed administrative/coverage spans through L297. P8 L27-L28, L58-L66, L110-L123 supply the integral/Taylor, symmetry and Laplace contracts; P9 L117-L120, L164-L183 supply the lift, nonresonance/scaling definition and good-set contract; P10 L32-L34 and L235-L248 supply genericity and the additional-function clause of the deferred interface. The frozen Birkhoff predicate's already reviewed P0 transcription was checked against the theorem's claimed oscillator-disc and constant order; this slice has no proposed frozen anchor or identity change.

For all five N imports occurring in the proposed records, checked their P-imports locators against the raw owning statements: N Part 3 L270-L277 (`gen-continuation`); N Part 5 L44-L54 (inherited `flow` setting), L76-L81 (`symplectic`), L90-L98 (`canonical`), L110-L114 (`lie-derivative`), L121-L132 (`taylor`). No N proof is used as a substitute for a supplying contract.

## Proposed nodes — slice P-p11b

Each row's spans include its statement and proof; every EDGE locator was read at the consumer. Added package suppliers were independently read at 11b L14-L16 / L120-L124 and P9 L164-L169.

| ID | Verdict | Spans re-read | Reason / disposition |
|---|---|---|---|
| stepP:p11b:pj-bin | PASS | 11b L94-L94 | The new sec-set edge matches the X_i/zeta complex notation; formal truncation and Laurent coefficients agree with L94. |
| stepP:p11b:pj-avg | PASS | 11b L95-L95 | The new sec-set edge matches the angle/complex convention; the averaging rule uses the circular denominator and the separate Laplace exponent s as in the raw source. |
| stepP:p11b:pj-red | PASS | 11b L96-L96 | The new sec-set edge supplies beta_0,beta_1 and zeta_i. Reduction, symmetry and exact coefficient extraction are direct uses; numerical tests remain provenance. |
| stepP:p11b:pj-cons | PASS | 11b L97-L97 | The repaired hypotheses name the available rational formulas and reduction, not the identities being proved. The quadratic comparison and multipole test are correctly treated as consistency checks. |
| bpP:p11b:char | PASS | 11b L126-L128; L129-L132 | The added sec-set edge supplies the bracket sign. Character support, reality, covariance, finite sum and bracket formula match. |
| bpP:p11b:homological | PASS | 11b L134-L138; L139-L142 | The added sec-set edge supplies the bracket convention; sec-bnf supplies the displayed nonresonance premise and N_0. |
| stepP:p11b:ho-eq | PASS | 11b L141-L141 | Both added packages are directly used in the bracket computation; ho-def/char provide the finite nonzero-denominator calculation. |
| stepP:p11b:fl-bd | PASS | 11b L148-L148 | The new note exposes the missing initial/maximal-solution and uniform-data reduction for N continuation. The printed differential inequality is retained; existence is not inserted as a new premise. |
| stepP:p11b:li-tay | PASS | 11b L161-L161 | The source-gap note correctly exposes the missing complex-domain/small-field bridge for the two N imports. The real Taylor assertion remains the recorded conclusion. |
| stepP:p11b:li-ord | PASS | 11b L162-L162 | The added packages directly supply the slow bracket, N_0 and quartic degrees. The order estimates and actual flow-bound input match L162. |
| stepP:p11b:li-sum | FAIL | 11b L163-L163 | The sec-bnf edge is valid, but L163 also directly uses R_1,R_2, defined at L16 in sec-set#data. sec-bnf only refers to these actions in N_0; its transitive edge does not meet the direct package rule. Add the missing sec-set edge. |
| stepP:p11b:lm-prop | PASS | 11b L175-L175 | The note exposes the complex hypotheses missing from the full-space symplectic-flow application, including the action derivative in the fast-angle component. Its supplying flow/lift edges are genuine. |
| stepP:p11b:bf-gram | PASS | 11b L199-L201 | The new beta-def edge supplies delta_pi, and sec-set supplies R_j and slow-variable notation. Projection and quartic inputs are direct. |
| bpP:p11b:birkhoff-form | PASS | 11b L205-L215; L216-L222 | The added sec-bnf edge is used in the homological/normal-form assembly. The contract preserves the open O-prime, compact parameter set, radii, coupling independence and oscillator-disc guards. |
| stepP:p11b:bt-nf | FAIL | 11b L219-L219 | The beta-def edge correctly supplies beta-hat. L219 also directly consumes the physical Phi_4/sigma/Omega=2 sigma section data and the scaling equivalence of p9:good L169 to discharge NR_4(Omega), rather than assuming it from the conditional normal-form setting. Add these two missing direct inputs. |
| stepP:p11b:as-ent | PASS | 11b L246-L246 | The added sec-beta edge supplies pi_11 pi_22=pi_12^2 and the rank-one projection identities. beta-def and the two asymptotic steps are direct inputs. |
| bpP:p11b:patch | PASS | 11b L260-L262; L263-L265 | The repaired hypotheses no longer assume birkhoff-form. Its final clause genuinely uses P10 interface and the torsion nonzero analytic function. PASS for this source record; supplier restoration waits for the specified P-FIXED SPEC revision. |

## Proposed coverage — slice P-p11b

These are coverage dispositions, separately judged from the underlying node's edge corrections. All 45 are accurate.

| ID | Verdict | Span re-read | Reason / disposition |
|---|---|---|---|
| bpP:p11b:e-id | PASS | 11b L21-L21 | Alias of P9 e-id; the separate finite-genericity consequence is supplied by P10 generic. |
| bpP:p11b:e-jet | PASS | 11b L22-L22 | Taylor/vanishing-jet alias; actual consumers use P8 e-taylor. |
| stepP:p11b:pj-bin | PASS | 11b L94-L94 | The source unit maps to its owning node. |
| stepP:p11b:pj-avg | PASS | 11b L95-L95 | The source unit maps to its owning node. |
| stepP:p11b:pj-red | PASS | 11b L96-L96 | The source unit maps to its owning node. |
| stepP:p11b:pj-cons | PASS | 11b L97-L97 | The source unit maps to its owning node. |
| bpP:p11b:char | PASS | 11b L126-L128 | The source unit maps to its owning node. |
| bpP:p11b:homological | PASS | 11b L134-L138 | The source unit maps to its owning node. |
| stepP:p11b:ho-eq | PASS | 11b L141-L141 | The source unit maps to its owning node. |
| stepP:p11b:fl-bd | PASS | 11b L148-L148 | The source unit maps to its owning node. |
| stepP:p11b:li-tay | PASS | 11b L161-L161 | The source unit maps to its owning node. |
| stepP:p11b:li-ord | PASS | 11b L162-L162 | The source unit maps to its owning node. |
| stepP:p11b:li-sum | PASS | 11b L163-L163 | The source unit maps to its owning node. |
| stepP:p11b:lm-prop | PASS | 11b L175-L175 | The source unit maps to its owning node. |
| stepP:p11b:bf-gram | PASS | 11b L199-L201 | The source unit maps to its owning node. |
| bpP:p11b:birkhoff-form | PASS | 11b L205-L215 | The source unit maps to its owning node. |
| stepP:p11b:bt-nf | PASS | 11b L219-L219 | The source unit maps to its owning node. |
| stepP:p11b:as-ent | PASS | 11b L246-L246 | The source unit maps to its owning node. |
| bpP:p11b:patch | PASS | 11b L260-L262 | The source unit maps to its owning node. |
| heading:bpP:p11b | PASS | 11b L1-L1 | Valid administrative, provenance, heading or alias exclusion. |
| heading:bpP:p11b:sec-set | PASS | 11b L12-L12 | Valid administrative, provenance, heading or alias exclusion. |
| heading:bpP:p11b:sec-quartic | PASS | 11b L26-L26 | Valid administrative, provenance, heading or alias exclusion. |
| heading:bpP:p11b:sec-bnf | PASS | 11b L118-L118 | Valid administrative, provenance, heading or alias exclusion. |
| heading:bpP:p11b:sec-beta | PASS | 11b L178-L178 | Valid administrative, provenance, heading or alias exclusion. |
| heading:bpP:p11b:sec-det | PASS | 11b L228-L228 | Valid administrative, provenance, heading or alias exclusion. |
| heading:bpP:p11b:sec-num | PASS | 11b L267-L267 | Valid administrative, provenance, heading or alias exclusion. |
| heading:bpP:p11b:notes | PASS | 11b L282-L282 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:source-L90 | PASS | 11b L90-L90 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:source-L158 | PASS | 11b L158-L158 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:source-L237 | PASS | 11b L237-L237 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:source-L252 | PASS | 11b L252-L252 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:prose-L4-L10 | PASS | 11b L4-L10 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:prose-L14-L16 | PASS | 11b L14-L16 | Correct section-data node mapping; the content is retained, not excluded. |
| p11b:prose-L18-L19 | PASS | 11b L18-L19 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:prose-L120-L124 | PASS | 11b L120-L124 | Correct section-data node mapping; the content is retained, not excluded. |
| p11b:prose-L180-L182 | PASS | 11b L180-L182 | Correct section-data node mapping; the content is retained, not excluded. |
| p11b:prose-L269-L269 | PASS | 11b L269-L269 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:prose-L271-L280 | PASS | 11b L271-L280 | The section explicitly calls the numerical checks supplementary and excludes them as proof inputs. |
| p11b:prose-L284-L284 | PASS | 11b L284-L284 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:prose-L286-L286 | PASS | 11b L286-L286 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:prose-L288-L288 | PASS | 11b L288-L288 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:prose-L290-L290 | PASS | 11b L290-L290 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:prose-L292-L292 | PASS | 11b L292-L292 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:prose-L294-L294 | PASS | 11b L294-L294 | Valid administrative, provenance, heading or alias exclusion. |
| p11b:prose-L296-L297 | PASS | 11b L296-L297 | Valid administrative, provenance, heading or alias exclusion. |

## Repair verification and assembly boundary

The original review's 17 failures were traced individually to the current blocks. Its repairs to the bracket signs, local notation packages, projection identities and beta normalization are accurate. For the three N applications, a missing proof bridge remains mathematical work; the notes now make it visible without strengthening the source hypotheses. A faithfully disclosed SOURCE_GAP passes topology and does not certify the bridge.

Recomputed the sign/degree checks: the rotation action is exp(−i theta), but the character covariance is exp(+i k.phi), giving `{F_k,N_0}=i(k.Omega)F_k`. Thus chi has `{chi,N_0}=F−<F>` and `{N_0,chi}=−(F−<F>)`. The successive slow brackets have degrees 6 and at least 6 in the integral remainder. Gram normalization uses r_j=2R_j and delta_pi=pi_11−pi_22, and the final average is `(1/2) sum beta-hat_ij R_i R_j`. The asymptotic entry estimates use exactly the projection identities named by the new edge. No extra conjugacy, eigenframe or theorem output was added as a source hypothesis by these replacements.

The remaining two failures are direct-use omissions, not requests to expand mathematical proofs. `li-sum` explicitly changes from squared Euclidean amplitudes to the named actions R_j. `bt-nf` must discharge, rather than assume, the conditional normal-form nonresonance premise: P9 good-set gives NR_4(sigma) from Phi_4!=0; P9 good L169 gives its equivalent scaling to 2 sigma, while the physical section fixes what sigma and Omega mean. The new beta-def edge does not supply these data.

**Deferred target:** P10 interface is currently absent from the packets. Its raw final sentence allows additional analytic functions that are not identically zero; 11b torsion supplies det(beta-hat) with precisely those properties. Therefore patch's edge is mathematically direct and its full conclusion should remain recorded. Under the user's explicit instruction that restoration waits for the P-FIXED SPEC revision, this delta does not ask to restore the target or to alter SPEC. Nor does it delete the edge, invent an external or erase the final clause. The assembled graph cannot pass while that target is absent; that known assembly boundary is separate from the record-level PASS here.

The current read-only structural check reports:

```text
P-p11b: 63 nodes, 271 edges, 87 coverage items, 1 problems, 0 TODO records (not counted: --structural)
  bpP:p11b:patch: dependency bpP:p10:interface is not a node in any slice
```

A separate check of the proposed subset found 17 nodes and 88 EDGE lines, exactly one per DEPS/ROUTES entry, with exactly two field separators on each EDGE. No proposed block contains the writer's mechanical route rationale or the generic no-new-binders quantifier fill; the actual source quantifiers were checked. There is no nontrivial ROUTES field to audit in this subset. No new pinned-source erratum is alleged. Only this report was written; no Lean run, packet/source edit or state-changing git operation was performed.

## Replacement blocks — slice P-p11b

Only DEPS and the new corresponding EDGE lines change. Every other field of each existing block is preserved verbatim. Rewritten records remain PROPOSED for another reviewer.

### P-p11b — stepP:p11b:li-sum

The sec-bnf edge is valid, but L163 also directly uses R_1,R_2, defined at L16 in sec-set#data. sec-bnf only refers to these actions in N_0; its transitive edge does not meet the direct package rule. Add the missing sec-set edge.

```text
NODE: stepP:p11b:li-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163
CONTRACT_ID: stepP:p11b:li-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K o Y=K+{K,chi}+int...; {K,chi}=-(F-<F>)+O(¦z¦^6); {{K,chi},chi} o phi^t=O(¦z¦^6)
SOURCE_QUANTIFIERS: Lambda in K, ¦z¦<r_2
SOURCE_CONCLUSION: K o Y=C+N_0+F+R-(F-<F>)+O(¦z¦^6)=C+N_0+<F>+O(¦z¦^6); <F> is T_theta-invariant hence a polynomial in ¦z_1¦^2, ¦z_2¦^2 of degree 2 in (R_1,R_2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:li-tay, stepP:p11b:li-ord, bpP:p11b:char, bpP:p11b:sec-bnf#data, bpP:p11b:sec-set#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:li-tay | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163 | the formula for K o Y
EDGE: stepP:p11b:li-ord | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163 | the order bounds
EDGE: bpP:p11b:char | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163 | <F> is the T^2-average, T-invariant
EDGE: bpP:p11b:sec-bnf#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163 | Uses T_theta invariance and R_1,R_2 in identifying the averaged polynomial.
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163 | R_j=(x_j^2+y_j^2)/2 is defined in the section setting; L163 identifies the averaged quartic as a degree-two polynomial in R_1,R_2.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b+sol-review-P-m
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11b — stepP:p11b:bt-nf

The beta-def edge correctly supplies beta-hat. L219 also directly consumes the physical Phi_4/sigma/Omega=2 sigma section data and the scaling equivalence of p9:good L169 to discharge NR_4(Omega), rather than assuming it from the conditional normal-form setting. Add these two missing direct inputs.

```text
NODE: stepP:p11b:bt-nf
KIND: step
TITLE: Normal form
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219
CONTRACT_ID: stepP:p11b:bt-nf
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F=Q_4-tilde is a quartic family (coefficients analytic in Lambda through c_nu and rho); Phi_4!=0 on O; K=C_0+N_0+Q_4-tilde+R
SOURCE_QUANTIFIERS: Lambda in K
SOURCE_CONCLUSION: NR_4(Omega) holds on O since Phi_4!=0 (NR_4(sigma) iff NR_4(2 sigma)); Proposition lie gives K o Y=C_0+N_0+<Q_4-tilde>+O(¦z¦^6), and <Q_4-tilde>=(1/2) sum beta-hat_ij R_i R_j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:good-set, bpP:p11b:lie, bpP:p11b:beta-formula, stepP:p11b:bt-K, bpP:p11b:quartic-explicit, stepP:p11b:bt-rot, bpP:p11b:sec-bnf#data, bpP:p11b:beta-def, bpP:p11b:sec-set#data, bpP:p9:good
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:good-set | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | Phi_4!=0 iff NR_4(sigma) (part (b))
EDGE: bpP:p11b:lie | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | K o Y=C_0+N_0+<Q_4-tilde>+O(¦z¦^6)
EDGE: bpP:p11b:beta-formula | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | <Q_4-tilde>=(1/2) sum beta-hat_ij R_i R_j
EDGE: stepP:p11b:bt-K | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | K=C_0+N_0+Q_4-tilde+R
EDGE: bpP:p11b:quartic-explicit | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | coefficients c_nu analytic
EDGE: stepP:p11b:bt-rot | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | rho analytic
EDGE: bpP:p11b:sec-bnf#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | NR_4(Omega), quartic family
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | Uses beta-hat_ij in the normal-form polynomial explicitly.
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | The physical Phi_4, ordered secular eigenvalues sigma, and frequency convention Omega=2 sigma are the fixed section data used in this application.
EDGE: bpP:p9:good | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | Definition good supplies Phi_4 and explicitly states NR_4(sigma) iff NR_4(2 sigma), used to verify the homological/normal-form premise.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b+sol-review-P-m
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

READY delta-P-m
