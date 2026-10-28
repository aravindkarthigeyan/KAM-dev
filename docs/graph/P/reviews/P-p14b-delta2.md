# P-p14b second-round delta topology review

Reviewer: sol-delta2-P-a. Marker: delta2-P-a.

**Verdict: PASS.** Scope is exactly the one node still marked TOPOLOGY_STATUS: PROPOSED. There are no PROPOSED coverage records. Reviewed records serving as prerequisites were read for applicability only; their verdicts are not reopened.

## P-p14b

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepP:p14:sb-th-10 | PASS | blueprint-P/parts/p14b-secular-box.tex L302 (statement, proof and both EDGE locators); L300 (radii prerequisite); L103-L136, especially L124-L125 (N7b and N7c); L72-L86 and L280-L304 (inherited setting and use) | Resolves D1 in P-p14b-delta.md. The radii step already exports the sharper Jupiter upper bound and Saturn lower bound; N7b supplies their exact difference. Both remaining edges are direct, and the deleted chart, eccentricity and box edges are transitive. Source hypotheses, universal t,F quantifiers, physical-length conclusion and constant scope agree with the source. |

At L300, the prerequisite gives ¦q_0¦ <= 483/80 = (21/4)(23/20) and ¦q_1¦ >= (189/20)(17/20). Subtraction and N7b yield the stated 399/200 bound at L302. This step does not reapply the conditional chart lemma or unfold the input box or orbital definitions. No additional package edge, alternative route or premise is needed. The inherited setting refers to the safety theorem's hypotheses, not its conclusion, so it creates no backwards theorem dependency.

No replacement block is required. No new suspected blueprint defect was found within this scope.

Read DELTA-BRIEF.md in full, the REVIEW-BRIEF checks and SPEC rulings, and the preceding delta review. The applied replacement agrees with the prior delta block apart from writer EXTRACTOR metadata. Both remaining EDGE lines have the correct consumer locator and exactly match DEPS; no raw rationale pipes or route entries occur. The node is a non-anchor with no imported direct dependencies, so frozen-anchor and import-identity checks do not apply.

Read-only structural validation:

```text
P-p14b: 81 nodes, 455 edges, 122 coverage items, 0 problems, 0 TODO records (not counted: --structural)
```

Exact rational arithmetic independently confirms N7b and the 483/80 identification. These checks establish source topology only. No Lean commands or state-changing git commands were run; only this report was written.

Input SHA-256:

| File | SHA-256 |
|---|---|
| docs/graph/P/packets/P-p14b.nodes.md | `6620e6e466e79acbd71000c4875028bf0fc23785d971cdd02a8e6c3a49c39705` |
| docs/graph/P/packets/P-p14b.coverage.md | `1b41b14400561557cf66db5dc9b87a3ee3a5cb288997bc9aaac80041fb3160c2` |
| blueprint-P/parts/p14b-secular-box.tex | `f14536c948f27bc9ccb330b5df0b482846696aa7ea10283d42ee2569be2d0ae7` |
| docs/graph/P/reviews/P-p14b-delta.md | `75001676d84d97a02781360a672034876dde835cb27bd8210999f84b8df1972c` |

READY delta2-P-a
