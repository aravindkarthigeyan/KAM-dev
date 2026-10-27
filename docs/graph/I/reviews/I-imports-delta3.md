# I-imports third-pass topology review

Reviewer: `sol-delta-I-e`. Marker: `delta-I-e`.

**Verdict: PASS for all 11 assigned PROPOSED nodes and all 11 assigned PROPOSED coverage items.**

Applied DELTA-BRIEF and the user's convergence rule. Only records still PROPOSED in this snapshot are reviewed; earlier REVIEWED records are context and are not re-certified. Read the latest named review, its recorded FAILs, the current replacements, the raw enclosing source and every applicable EDGE use, under SPEC and its final ownership ruling. This reviewer did not write the replacements in either assigned slice. No wording-only changes are proposed.

## Proposed nodes

| ID | Verdict | Spans re-read | Check against the earlier FAIL |
|---|---|---|---|
| K:bp:p1:real-restriction | PASS | blueprint/parts/p1-analysis.tex L37-39, L1047-1051 | Positive rho and n>=1 are now recorded; the primary clause has its correct p=2n carrier. The real derivative, norm inequality and integer-shift conclusion match the source. |
| K:bp:p1:uniform-limits | PASS | blueprint/parts/p1-analysis.tex L37-39, L364-368 | The general open-set assertion remains general; n>=1 and r>0 guard only the strip clauses, resolving the previous failure without adding a general strip premise. |
| K:bp:p2:constants | PASS | blueprint/parts/p2-aposteriori.tex L56-108 | Every named constant now has its displayed defining formula, including c_*, delta_0 and their distinct dependence lists/order. The standing-data scope is retained. |
| K:bp:p2:frame-identities | PASS | blueprint/parts/p2-aposteriori.tex L441-463 | All six identities match, including the four blocks of E_red and the signs in the two error identities. The omitted defining matrix is restored. |
| K:bp:p2:matrix | PASS | blueprint/parts/p2-aposteriori.tex L122-139 | Both block inequalities and the diagonal equality are explicit; transpose, product and canonical-matrix formulas agree with the source. |
| K:bp:p4:data | PASS | blueprint/parts/p4-measure.tex L138-163 | C_B^+=max(C_B,0), the j=1,2,3 range of cbar and the fixed-data-before-f,epsilon order are restored. Domains, torus and constant scope match. |
| K:step:p2:fb-holo | PASS | blueprint/parts/p2-aposteriori.tex L306-317, L382-406 | The object list is explicit; parent premises are inherited, with r>0 and no primary/reality assumption. The additional directional derivative mentioned in the proof is holomorphic as recorded. |
| K:step:p2:geo-domegak | PASS | blueprint/parts/p2-aposteriori.tex L56-108, L306-317, L549-574 | Source premises now come from the enclosing geometry lemma, rather than proved frame/error bounds. The estimate and fixed constant dependence match. |
| K:step:p2:geo-ered | PASS | blueprint/parts/p2-aposteriori.tex L56-108, L306-317, L549-580 | The actual enclosing admissibility and strip-loss premises replace proof ingredients; C_red=2n(n+1)m^2 and the estimate match. |
| K:step:p4:db-cauchy | PASS | blueprint/parts/p4-measure.tex L138-170, L183-208 | Polydisc containment and boundedness are no longer added premises. The three actual derivative estimates, j range, carriers and fixed-data dependence are explicit. |
| N:bpN:p3:gen-symmetry | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex L15-24, L88-115 | C^1 of -F is now only a conditional conclusion. Time/space transformations retain their true source premises; J is an arbitrary set and derivatives remain two-sided. |

## Proposed coverage items

| ID | Verdict | Source re-read | Disposition check |
|---|---|---|---|
| K:bp:p1:real-restriction | PASS | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1047-L1051 | Maps exactly to K:bp:p1:real-restriction; source span and ownership agree. |
| K:bp:p1:uniform-limits | PASS | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L364-L368 | Maps exactly to K:bp:p1:uniform-limits; source span and ownership agree. |
| K:bp:p2:constants | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:constants@L78-L108 | Maps exactly to K:bp:p2:constants; source span and ownership agree. |
| K:bp:p2:frame-identities | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L441-L463 | Maps exactly to K:bp:p2:frame-identities; source span and ownership agree. |
| K:bp:p2:matrix | PASS | blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L122-L139 | Maps exactly to K:bp:p2:matrix; source span and ownership agree. |
| K:bp:p4:data | PASS | blueprint/parts/p4-measure.tex#bp:p4:data@L138-L163 | Maps exactly to K:bp:p4:data; source span and ownership agree. |
| K:step:p2:fb-holo | PASS | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406 | Maps exactly to K:step:p2:fb-holo; source span and ownership agree. |
| K:step:p2:geo-domegak | PASS | blueprint/parts/p2-aposteriori.tex#step:p2:geo-domegak@L571-L574 | Maps exactly to K:step:p2:geo-domegak; source span and ownership agree. |
| K:step:p2:geo-ered | PASS | blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L576-L580 | Maps exactly to K:step:p2:geo-ered; source span and ownership agree. |
| K:step:p4:db-cauchy | PASS | blueprint/parts/p4-measure.tex#step:p4:db-cauchy@L204-L208 | Maps exactly to K:step:p4:db-cauchy; source span and ownership agree. |
| N:bpN:p3:gen-symmetry | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L101-L110 | Maps exactly to N:bpN:p3:gen-symmetry; source span and ownership agree. |

All assigned coverage items PASS. No failing record remains, so no replacement blocks are needed. All packets are left verbatim.

## Ownership and source boundary

The ten proposed K imports are retained by their owning IDs in `docs/graph/K/DEPGRAPH.md`. The proposed N symmetry node is retained in the current N packets; N's assembled DEPGRAPH is still absent, so final N owning-graph retention remains an assembly check. Every assigned import is a leaf with KIND external, LEAN_STATUS EXTERNAL, PROOF_SOURCE -, DEPS -, ROUTES - and ROUTE_FOR -. Every assigned import is referenced by an I consumer. Its source fields were checked against the raw blueprint, not accepted merely because K's graph has matching prose.

The latest SPEC ruling's gen-invariant/gen-barrier/newton-reduction nodes remain ordinary I-nown nodes, outside this proposed-import inventory. Existing P-import ownership reservations and the earlier source-scope observations concern records not assigned in this pass; they are not reopened or silently certified. No new source defect was established in these eleven replacements.

The named `inp_depgraph_imports.py` is absent from the repository scripts. A read-only inline ownership/reference check was used: all ten proposed K owning IDs exist; the proposed N ID exists in N packets; no assigned node is unreferenced. No import was added, pruned or retargeted.

## Validation and limits

- `sha256sum -c docs/graph/I/CORPUS.sha256`: all 9 files OK. `sha256sum -c docs/graph/I/IMPORTS.sha256`: all 7 files OK.
- `python3 scripts/depgraph_slice_check.py docs/graph/I/packets I-imports`: `I-imports: 59 nodes, 0 edges, 59 coverage items, 0 problems`.
- Read-only combined check: all 15 assigned proposed nodes have resolvable references, valid use-locator bounds and reachability from a frozen root. Imported metadata passes; ordinary-node EDGE targets agree with their source uses. No generic writer quantifier fill or mechanically added route edge occurs among these assigned records.
- No Lean/build, axiom query, provider/implementation inspection, packet/source/manifest edit, or state-changing git command. Only the two requested delta3 reports are written. Topology PASS is not a proof-closure receipt.

Reviewed packet SHA-256:

- `I-imports.nodes.md`: `d3b4cc8379283f1056a95a67251a8214e96758c813e0ff2e970c488f6c613954`.
- `I-imports.coverage.md`: `f9b4a9ce3928a4817a2a7ecb03c1c041b3fa0f0d754a562da5f84db8cb4f404d`.

Final report checks: exactly one row per assigned proposed record in its node/coverage table; all verdicts PASS; no replacement blocks; input hashes unchanged. Review-applier dry run returned zero replacements, zero additions, zero coverage replacements and zero unresolved FAILs. `git diff --check` returned no output.
