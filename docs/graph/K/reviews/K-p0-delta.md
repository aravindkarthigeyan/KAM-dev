# K-p0 delta topology review

Reviewer: sol-review-r3. Verdict for the assigned delta: **PASS**.

Reviewed all 5 assigned node records, independently of their replacement author (sol-review-r1). Compared each replacement with its first-review finding, re-read its raw statement/proof and every EDGE site, and checked source premises, quantifier order, conclusions, constant scope, direct-use topology and conditional applications. The current SPEC, including its explicit reachability rule, governs this review.

Spans below refer to `blueprint/parts/p0-conventions.tex` unless a different part or frozen declaration is named. A node's displayed proof range includes all its EDGE sites except separately named cross-part sites. Original enclosing hypotheses and referenced inputs were also read, as detailed after the table. These are source-topology verdicts, not Lean proof-status or root-closure certifications.

| Record ID | Verdict | Spans re-read | Delta result |
|---|---|---|---|
| `bp:p0:domains#complexStrip` | PASS | L19-L20 ; frozen ComplexStrip declaration | The locator now contains the strip definition at L19-L20; rho>0 is the explicit source convention. Frozen definition and identity fields agree. |
| `bp:p0:stripdata#dotC` | PASS | L91-L101 ; frozen DotC declaration | The carrier is now C^n x C^n, with the exact bilinear pairing of the frozen definition; no generalized C^m interface remains. |
| `bp:p0:stripdata#normalFrame` | PASS | L91-L101 ; frozen NormalFrame declaration | The extra invertibility premise is removed. The total inverse and the direct Gram/omegaZero definition uses agree with the frozen definition. |
| `bp:p0:headq` | PASS | L117-L122 ; proof L1268-L1303 ; Part 0 L105-L115; Part 4 L1268-L1303; frozen HEAD-Q declaration | HEAD is located at its actual application for B-prime, with source premises supplied at Part 4 L1278-L1282 and L1288-L1292. The cover edge now says K(kappa); quantifiers and the missing boundary condition agree with the frozen statement. |
| `bp:p0:g1` | PASS | L124-L140 ; proof L1109-L1142 ; Part 2 L1094-L1142; frozen G1 declaration | PROOF_SOURCE now covers the Part 2 proof, and the result edge locates its check of the seven G1 clauses. Uniform gamma bound, margins, quantifier order and constant scope agree with the frozen statement. |

The original failures are resolved: the complex-strip locator reaches its actual definition, the dot-product carrier is the frozen phase space, the normal-frame definition has no analytic or invertibility guard, and both theorem proof/application locators now reach the consumer arguments. Re-read Part 0 L10-L140 for conventions, defining formulas, the HEAD data inherited by HEAD-Q and all G1 clauses; Part 2 L1094-L1142 for the explicit-constant theorem and proof; and Part 4 L1268-L1303 for every HEAD-Q proof edge. The source's positive-width strip convention is not a claim that the total frozen definition is undefined outside that convention.

Checked the five assigned anchors against manifest identity fields (file, export, anchor ID, contract ID/version and ABI hash): 5/5 match. Read only their frozen definition bodies or theorem signatures, ending before theorem proof bodies. The G1 constant order retains mu and gamma-bar among the fixed data; the more restrictive C2 dependence of the particular Part 2 witness does not change the frozen anchor contract. No frozen-statement defect was found.

All assigned records PASS. No replacement blocks are required.

Checks: all five corpus hashes match `CORPUS.sha256`; all assigned node records have matching DEPS/EDGE sets, exactly three EDGE fields using the required separator, and a path to a frozen root in the assembled packet dependency relation. This static reachability check does not establish proof closure. No implementation/provider module was read; no Lean, build, lint or state-changing git command was run. Only this delta report was written for this slice. No mathematical deviation was introduced.
