# P-p3 round-3 delta topology review

Reviewer: `sol-delta3-P-a`. Marker: `delta3-P-a`. Date: 2026-10-28.

**Verdict: PASS — 2 PASS, 0 FAIL.** Reviewed only the two current `TOPOLOGY_STATUS: PROPOSED` nodes rewritten by `sol-delta2-P-c` in `P-p3-delta2.md`. There are no `COVERAGE_STATUS: PROPOSED` records. This reviewer did not extract, originally review or write the preceding delta replacements for P-p3. Accepted records were read only as prerequisite context.

Applied DELTA-BRIEF, REVIEW-BRIEF and the current SPEC, including the convergence rule. Re-read the assigned raw statements, proofs and every EDGE use-site, with the prerequisite statements and local settings needed to check their applications. Both current blocks match the preceding delta's replacement blocks except for EXTRACTOR attribution. Neither requires another change.

`3a` = `blueprint-P/parts/p3a-two-scale-iteration.tex`; `3b` = `blueprint-P/parts/p3b-two-scale-limit.tex`; `K p1` = `blueprint/parts/p1-analysis.tex`.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepP:p3:inv-conj | PASS | 3b L20–29, L99–100, L126–134; 3a L11–34, L59–66, L242–253 | P3D2-01 resolved: limit-actions(ii) directly supplies I_* in (D_j)_{rho_j/2}, hence in the finite map domain W_j used at L134. Iterative supplies Phi_j, symplecticity and H_j=H composed with Phi_j; conv#data fixes the action-first form/signs, and tori#data fixes the curves' action. The general conjugation bridge remains explicitly exposed as SOURCE_GAP rather than attributed to an inapplicable single-flow theorem. |
| stepP:p3:inv-lim | PASS | 3b L3–4, L43, L77–85, L99–112, L126–143; 3a L11–34, L42–55, L59–66, L236–240; K p1 L75–78, L474–479 | P3D2-02 resolved: estimates directly supplies the action of gamma(t) in Re(D_r). The constants and smallness bound give r<=rho/4; uniform convergence then places the nearby real segment in D_{rho/2} times T_{sbar/2}. Cauchy and mean value inputs apply on that local convex segment. The real C^1 limit passage remains explicitly exposed as SOURCE_GAP. The trailing reminder to inv-conj is correctly absent from DEPS. |

## Conditional premises, fields and gaps

For inv-conj the added finite-domain edge is a direct evaluation premise, distinct from the unresolved conjugation bridge. It neither assumes the desired invariance conclusion nor points back to its consumer. The formula at L134 retains the correct action-first vector (partial_theta f_j, omega-omega_j(I_*)-partial_I f_j). The enclosing omega, vartheta and t quantifiers and the finite-stage j agree with the source.

For inv-lim, limit-phi and inv-err supply uniform curve convergence and the derivative-error convergence. The added location input is needed separately: convergence relative to I_* alone does not place the image relative to D. The constants, initial sequence values, rescaling, conventions and tori data are used at L143; no package edge is added merely because it lies earlier in the proof. The Cauchy supplier applies to second derivatives of f on a smaller complex neighborhood, and the mean value supplier applies to the nearby real segment. The statement is scoped to sufficiently large j. B_0's dependence agrees with the source. Neither a global convexity assumption on D nor a general global Lipschitz claim is introduced.

The two SOURCE_GAP notes are retained as faithful topology disclosures. PASS here does not certify those bridges or mathematical/Lean proof closure. No new external or imported result is needed to represent the source's assertions. Neither assigned record has alternative routes or the mechanically supplied inherited-quantifier text.

## Coverage, replacements and source observations

There are zero proposed coverage items, so no coverage verdict rows are required. Previously accepted coverage records are outside this round. Both preceding failures are resolved; no replacement block is supplied. No new blueprint defect or pinned-source erratum is asserted. The existing general symplectic-conjugation and real C^1 limit gaps remain explicit.

## Validation

- Structural checker: `P-p3: 96 nodes, 428 edges, 131 coverage items, 0 problems, 0 TODO records (not counted: --structural)`.
- All current CORPUS and IMPORTS hash entries pass.
- Both assigned records have existing DEPS/ROUTES targets, exactly one correctly separated EDGE per target, and valid source-locator bounds. The two K suppliers were checked at their owning-blueprint statements.
- Read-only traversal finds both assigned nodes reachable from a declared root, with no directed cycle containing either node.
- The report has one verdict row per proposed record. No frozen anchor is assigned. No packet, source, manifest, SPEC or other review was edited; no Lean, build or state-changing git command was run.

Input packet SHA-256 values:

| Input | SHA-256 |
|---|---|
| docs/graph/P/packets/P-p3.nodes.md | `9cc1900ff5192066f2fcfaa6698c3614161623c595d14edd871ddf8d97df71c3` |
| docs/graph/P/packets/P-p3.coverage.md | `916104c5d46489ba72512a5b1429d25bc54b7be2ca95421d68ae62c5c5a0393a` |
