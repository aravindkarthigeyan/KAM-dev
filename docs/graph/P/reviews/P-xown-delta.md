# P-xown delta topology review

Reviewer: **sol-delta-P-p**. Marker: **delta-P-p**. Date: 2026-10-28.

Verdict: **FAIL** — 8 proposed nodes PASS, 1 FAIL; all 9 proposed coverage items PASS. Only the remaining PROPOSED records were reviewed. The already REVIEWED `bpN:p6:iterative-special` node and coverage item were not reopened. This reviewer is distinct from sol-review-P-p and the extractors.

Applied DELTA-BRIEF.md, REVIEW-BRIEF.md and SPEC.md, including the Convergence rule, cross-graph ownership and writer rulings. Source spans below are in `blueprint-I/parts/p7-delaunay.tex` unless otherwise stated. The three imported supplier contracts were checked against their raw statements: kepler-eq L91–114, orbit-maps L158–168, orbit-identities L181–190 (and the computations L192–203). No Lean implementation, provider or proof-status information was used.

## Finding

**PX-D1: missing direct energy-identity supplier in sc-flow, L321.** The proof ends with
`E_k=k^2 E_1=-k^2/(2a)=-k/(2a_k)`. The existing sc-alg edge supplies the first equality; means supplies the two averaged quantities, but its conclusion at L290–296 contains no pointwise energy formula. The additional input `E_1=-1/(2a)` is orbit-identities(c), L186, with a=L^2. A transitive path through means/mv-int does not represent this direct use. Add that existing import as a dependency and give its consumer locator at L321. No premise, conclusion or other field changes.

The preceding review's F1–F3 repairs otherwise pass: x-change is P-owned with its unprefixed ID, means and circular link the orbit-map definition directly, all five labelled proof steps have nodes and coverage, and circular explicitly quantifies both ell and g. No route or generic inherited-quantifier additions occur in these proposed records.

## Node decisions

| ID | Verdict | Spans re-read | Assessment |
|---|---|---|---|
| bpI:p7:scaling | PASS | L311-L318; L319-L322 | Statement/mass dictionary and added proof-step edges agree with the source. |
| bpI:p7:means | PASS | L290-L296; L297-L301 | Direct x-change/orbit-map inputs and both labelled proof steps now present. |
| bpI:p7:circular | PASS | L303-L306; L307-L309 | Independent eccentricity and real g retained; only scalar endpoint identities and means extended. |
| bpI:p7:x-change | PASS | L41-L41 | Faithful P-owned external; omitted integrand regularity is explicitly disclosed rather than silently strengthened. |
| stepI:p7:mv-cv | PASS | L298-L298 | Increasing anomaly, endpoints, derivative and continuous integrand meet the change-of-variable use. |
| stepI:p7:mv-int | PASS | L300-L300 | Radius/energy identities and substitution supply all three normalized integrals. |
| stepI:p7:ci-alg | PASS | L308-L308 | Source explicitly reuses algebra valid at e=0; no noncircular-region or chart claim is imported at that endpoint. |
| stepI:p7:sc-alg | PASS | L320-L320 | Local energy substitution and diagonal symplectic calculation; no specialized conversion theorem is applied. |
| stepI:p7:sc-flow | FAIL | L321-L321 | PX-D1: the final pointwise energy calculation lacks its direct orbit-identities(c) edge. |

## Coverage decisions

| ID | Verdict | Span re-read | Assessment |
|---|---|---|---|
| bpI:p7:scaling | PASS | L311-L318 | Correct locator and disposition to the P-owned node. |
| bpI:p7:means | PASS | L290-L296 | Correct locator and disposition to the P-owned node. |
| bpI:p7:circular | PASS | L303-L306 | Correct locator and disposition to the P-owned node. |
| bpI:p7:x-change | PASS | L41-L41 | Correct locator and disposition to the P-owned node. |
| stepI:p7:mv-cv | PASS | L298-L298 | Correct locator and disposition to the P-owned node. |
| stepI:p7:mv-int | PASS | L300-L300 | Correct locator and disposition to the P-owned node. |
| stepI:p7:ci-alg | PASS | L308-L308 | Correct locator and disposition to the P-owned node. |
| stepI:p7:sc-alg | PASS | L320-L320 | Correct locator and disposition to the P-owned node. |
| stepI:p7:sc-flow | PASS | L321-L321 | Correct locator and disposition to the P-owned node. |

## Applicability and convergence checks

- The circular proof expressly repeats oi-r through oi-en and mv-cv through mv-int using D>=1-e>0, k^2=1-e^2 and G=Lk. These edges record that source-explicit reuse of computations, not application of the strictly noncircular membership/chart conclusions at e=0. The notes make this distinction accurately; no rewrite is needed.
- The “as in” references at L320–321 remain proof patterns. I Part 6 conversion(a), L119–139, concerns its particular period-conversion matrix; I Part 7 sy-field, L239, concerns the Delaunay map. The local S_k calculation supplies the required matrix and chain-rule identities. Neither specialized citation needs an import edge here.
- The x-change source at L41 omits an integrand regularity class. Its record faithfully discloses that omission, while mv-cv explicitly uses continuous phi. This known underspecification is preserved as a source-interface limitation; it is not a new topology FAIL or a silent strengthening.
- All quantities use the physical Euclidean norm where the source does. The k^2 time change, a_k=a/k, velocity p/m and mass-weighted actions are retained. No extra frequency-period conversion is introduced.

## Replacement

### P-xown — stepI:p7:sc-flow

Only DEPS and the new EDGE change; all other fields remain verbatim.

```text
NODE: stepI:p7:sc-flow
KIND: step
TITLE: Flow and averages
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-flow@L321-L321
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-flow@L321-L321
CONTRACT_ID: stepI:p7:sc-flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: k>0; E_k and S_k as in scaling; for the flow assertion (Q,P)(tau) solves Hamilton equations of E_1 on the collision-free domain; for the averages a is the semi-major axis of the bound Kepler orbit, with mean-anomaly averages as in means
SOURCE_QUANTIFIERS: k>0; an E_1 solution on its time interval; for the averages a bound Kepler orbit
SOURCE_CONCLUSION: DS_k X_{E_k o S_k}=X_{E_k} o S_k and k^2 DS_k X_{E_1}=X_{E_k} o S_k; t -> S_k(Q,P)(k^2 t) solves E_k; a_k=a/k, <1/¦q¦_2>=1/a_k, <¦p¦_2^2>=k/a_k, E_k=-k/(2a_k)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sc-alg, bpI:p7:means, I:bpI:p7:orbit-identities
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sc-alg | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-flow@L321-L321 | energy rescaling and the symplectic matrix identity supply the local field calculation
EDGE: bpI:p7:means | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-flow@L321-L321 | unit-strength mean values give the scaled averages
EDGE: I:bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-flow@L321-L321 | part (c) supplies E_1=-1/(2a), a=L^2, used in the final scaled-energy identity
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-p
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The sy-field citation is an as-in pointer: the source repeats naturality and the curve chain rule for the linear S_k. It does not apply the Q-specific Delaunay-field theorem.
```

## Validation and limitations

`inp_depgraph_slice_check.py docs/graph/P/packets P-xown --structural` reports `10 nodes, 32 edges, 10 coverage items, 0 problems, 0 TODO records (not counted: --structural)`. All entries in CORPUS.sha256 and IMPORTS.sha256 match. Syntax success does not establish direct-use completeness. The nine proposed node records and nine proposed coverage records are inventoried separately above; no frozen anchor belongs to this slice.

Only this report is written. No packet, SPEC, manifest, Lean file or other review is changed; no state-changing git or Lean command is run. No new suspected pinned-source erratum is asserted. The known integrand-regularity omission at I p7:41 remains disclosed. This is a topology review, not proof closure.

Final validation: exact PROPOSED-set comparison confirms 9 node rows and 9 coverage rows; the sole replacement changes only DEPS/EDGE, has one EDGE per dependency, and adds an existing import without a cycle. Review-parser dry run: `1 replaced, 0 added, 0 coverage items, 0 unresolved FAILs`. Its PASS count includes shared node/coverage IDs; the separate counts above are authoritative. `git diff --check` is clean; report trailing whitespace was checked separately.
