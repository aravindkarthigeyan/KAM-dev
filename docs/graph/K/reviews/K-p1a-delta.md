# K-p1a delta topology review

Reviewer: sol-review-r3. Verdict for the assigned delta: **PASS**.

Reviewed all 29 assigned node records and 3 assigned coverage records, independently of their replacement author (sol-review-r1). Compared each replacement with its first-review finding, re-read its raw statement/proof and every EDGE site, and checked source premises, quantifier order, conclusions, constant scope, direct-use topology and conditional applications. The current SPEC, including its explicit reachability rule, governs this review.

Spans below refer to `blueprint/parts/p1-analysis.tex` unless a different part or frozen declaration is named. A node's displayed proof range includes all its EDGE sites except separately named cross-part sites. Original enclosing hypotheses and referenced inputs were also read, as detailed after the table. These are source-topology verdicts, not Lean proof-status or root-closure certifications.

| Record ID | Verdict | Spans re-read | Delta result |
|---|---|---|---|
| `step:p1:opn-blocks` | PASS | L123-L126 | Compatible block matrices and the norm convention replace the proved row-sum characterization as source premises; the characterization remains a direct dependency. |
| `step:p1:opn-omega` | PASS | L128-L133 | The source definition of Omega_0 is typing data, while the row-sum norm is retained as an edge. Signs, square and norm conclusions match. |
| `step:p1:mn-products` | PASS | L144-L148 | The inherited matrix/vector data replace the invoked operator-norm theorem as hypotheses; the theorem remains a direct use at L145. |
| `step:p1:neu-series` | PASS | L172-L177 | Invertibility and the original perturbation smallness are restored. Matrix norm and identity norm inputs are correctly located; convergence and telescoping conclusions are unchanged. |
| `step:p1:neu-inverse` | PASS | L179-L181 | The hypotheses are the original A/Delta/smallness data; the constructed S is named, and its inverse property and bound come through neu-series. |
| `step:p1:neu-difference` | PASS | L183-L185 | Original perturbation premises are retained; inverse existence and bound come from neu-inverse, followed by the direct matrix-norm estimate. |
| `step:p1:ri-adjugate` | PASS | L199-L203 | Real invertible A replaces the Cramer ingredient as a premise; E10 supplies the adjugate identity and reality argument directly. |
| `step:p1:hreg-line` | PASS | L227-L233 | Open-domain holomorphy, the closed-polydisc bound, positive radius and unit direction supply all premises of E1 on the complex line. |
| `step:p1:hreg-integral` | PASS | L235-L242 | The original holomorphic map and chosen polydisc are restored; A is a named constructed maximum. E1 applies at each x in the smaller polydisc. |
| `step:p1:hreg-differentiate` | PASS | L244-L260 | The inherited holomorphic map and local radius data replace the earlier results as premises. The local derivative bound, integral formula, mean-value bound and dominated convergence all have direct edges. |
| `step:p1:hreg-full` | PASS | L262-L267 | The open-domain source data are retained; the component derivative conclusion is supplied by hreg-differentiate at the coordinate vectors, rather than assumed. |
| `step:p1:hreg-orders` | PASS | L269-L276 | Holomorphy of F is the source premise. Repeated application of hreg-full to finite-dimensional spaces of multilinear maps supplies all derivatives and the stated norm identities. |
| `step:p1:hreg-symmetry` | PASS | L278-L281 | The original open-domain holomorphy is restored. hreg-full supplies differentiability of DF before applying E5; symmetry is not assumed. |
| `step:p1:han-cauchy` | PASS | L307-L319 | The inherited map/polydisc data and named larger radius supply each one-variable Cauchy application. The larger-margin and Fubini edges locate the direct uses. |
| `step:p1:han-series` | PASS | L321-L331 | The original map and local geometry remain source premises; the contour coefficients are named constructions. The Cauchy formula and termwise integration remain proof edges. |
| `step:p1:han-bounds` | PASS | L333-L338 | The map and polydisc data replace a previously proved estimate as premises. The coefficient formula and integral estimate supply the bound and absolute convergence. |
| `step:p1:han-real` | PASS | L340-L349 | The source data include real x_0, with reality of F only for the real-coefficient clause. No extra reality hypothesis is imposed on the general W-valued analytic restriction. |
| `step:p1:ul-differences` | PASS | L362-L367 | The original holomorphic sequence and pointwise/uniform convergence premises are restored. The convex polydisc and displayed derivative estimate supply E4. |
| `step:p1:ul-limit` | PASS | L369-L374 | Pointwise K_s convergence and uniform derivative convergence are original premises; ul-differences supplies the inequality passed to the limit. |
| `step:p1:ul-derivative` | PASS | L376-L382 | The original convergence data are retained. The epsilon/s/radius order and the use of ul-limit match the source; the derivative conclusion is not assumed. |
| `step:p1:hi-holomorphic` | PASS | L400-L404 | Holomorphic A on an open domain and determinant nonvanishing are the source premises; E10 remains the direct proof input. |
| `step:p1:hi-derivative` | PASS | L406-L410 | The original invertible holomorphic matrix premises are restored. hi-holomorphic supplies differentiability of the inverse before the product rule. |
| `step:p1:io-mvt` | PASS | L419-L421 | The original open-domain map, derivative bound and segment inclusion supply the conditional E4 application; the estimate is the source conclusion. |
| `step:p1:tay-lipschitz` | PASS | L430-L433 | Original holomorphy, second-derivative bound and segment inclusion are restored; regularity identifies the derivative norm and increments-open is applied to DF. |
| `step:p1:tay-integrate` | PASS | L435-L439 | The original Taylor data and named g are retained. The preceding derivative estimate, continuity from regularity and E6 supply the integration step. |
| `step:p1:co-first` | PASS | L472-L476 | The closed-polydisc source bound and positive radius supply hreg-line. The proof explicitly states at L470 that only this local bound is used. |
| `step:p1:co-second` | PASS | L478-L485 | The local bound and positive radius supply both co-first applications; regularity supplies holomorphy of Df and the second-derivative norm identification. |
| `step:p1:co-third` | PASS | L487-L492 | The same original map/polydisc data are retained. co-second supplies both the bound for Df on the half-radius ball and the second-order estimate applied to Df; regularity identifies D^3f. |
| `step:p1:co-constants` | PASS | L494-L495 | Original Cauchy premises replace the previously proved estimates as hypotheses. The three explicit constants are assembled from the corresponding three steps, independently of m. |
| `bp:p1:mixed-difference` (coverage) | PASS | L442-L445 ; Part 4 L800-L818 | EXCLUDED is valid under the current reachability rule. Part 4 L810 compares the argument, then L811-L817 proves its own result from E4 and holomorphic regularity; it does not apply this lemma or step. No genuine root consumer was found. |
| `step:p1:md-inner` (coverage) | PASS | L450-L453 ; Part 4 L800-L818 | EXCLUDED is valid under the current reachability rule. Part 4 L810 compares the argument, then L811-L817 proves its own result from E4 and holomorphic regularity; it does not apply this lemma or step. No genuine root consumer was found. |
| `step:p1:md-outer` (coverage) | PASS | L455-L459 ; Part 4 L800-L818 | EXCLUDED is valid under the current reachability rule. Part 4 L810 compares the argument, then L811-L817 proves its own result from E4 and holomorphic regularity; it does not apply this lemma or step. No genuine root consumer was found. |

The 29 original node failures concern source-premise fields. The merged replacements restore the original map, matrix, domain, smallness or convergence data, while named local constructions remain typing information and theorems/estimates remain dependency edges. No new conclusion-shaped theorem premise was found. In the Cauchy steps, the local closed-polydisc bounds are explicitly authorized by the proof at L470 and the stronger local statement at L479-L480.

Re-read Part 1 L24-L47 (finite-dimensional W, holomorphy, polydiscs and norms), E1-E10 at L50-L98, matrix results and proofs L107-L204, holomorphic regularity and analyticity L215-L350, uniform limits/inverses/increments/Taylor L352-L440, and Cauchy estimates L462-L496. All conditional Cauchy uses have a positive radius, a holomorphic map and the required closed-disc margin and bound. The mean-value and Taylor uses supply the indicated segments and derivative bounds; inverse uses supply determinant nonvanishing. Part 0 L47-L55 supplies the Omega_0 definition.

The three coverage adjudications replace the first review's objection with the now-binding reachability rule. Re-read the excluded statement/proofs at L442-L460 and searched all five corpus files for their labels. The only outside reference is Part 4 L810. Its full proof at L808-L818 re-establishes the parallelogram estimate under its own hypotheses and has no direct application of the excluded result. The exclusions therefore pass; no reinstatement block is appropriate.

All assigned records PASS. No replacement blocks are required.

Checks: all five corpus hashes match `CORPUS.sha256`; all assigned node records have matching DEPS/EDGE sets, exactly three EDGE fields using the required separator, and a path to a frozen root in the assembled packet dependency relation. This static reachability check does not establish proof closure. No implementation/provider module was read; no Lean, build, lint or state-changing git command was run. Only this delta report was written for this slice. No mathematical deviation was introduced.
