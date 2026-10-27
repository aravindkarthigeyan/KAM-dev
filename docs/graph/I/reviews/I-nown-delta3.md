# I-nown third-pass topology review

Reviewer: `sol-delta-I-e`. Marker: `delta-I-e`.

**Verdict: PASS for all 4 assigned PROPOSED nodes and all 4 assigned PROPOSED coverage items.**

Applied DELTA-BRIEF and the user's convergence rule. Only records still PROPOSED in this snapshot are reviewed; earlier REVIEWED records are context and are not re-certified. Read the latest named review, its recorded FAILs, the current replacements, the raw enclosing source and every applicable EDGE use, under SPEC and its final ownership ruling. This reviewer did not write the replacements in either assigned slice. No wording-only changes are proposed.

## Proposed nodes

| ID | Verdict | Spans re-read | Check against the earlier FAIL |
|---|---|---|---|
| stepN:p3:barrier-bwd | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex L88-115, L328-367 | The forward result is solely a proof dependency. Reversal supplies a solution for -F on -J; the invariant-set definition transports S-invariance. The four direct edges and their L367 uses agree. |
| bpN:p3:newton-reduction | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex L434-454; blueprint-P/parts/p0-conventions.tex L226-242; blueprint-I/parts/p0-conventions.tex L130-153 | The displayed Newtonian and fixed-Sun fields are restored. The restricted case remains for every real mu and arbitrary J, with the specified total field extension. Parent/child and predicate edges are direct; no positivity premise is added. |
| stepN:p3:nr-smooth | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex L435-445, L451; blueprint-I/parts/p0-conventions.tex L130-153 | Both missing definition edges are present: CollisionFree defines the open domain and restrictedVectorField defines its force. Radius, squared radius and primary shifts are also direct uses. Fixed-Sun parameters are restored. |
| stepN:p3:nr-pair | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex L440-445, L453; blueprint-P/parts/p0-conventions.tex L226-242; blueprint-I/parts/p0-conventions.tex L147-149 | The equivalence now retains membership AND the two-sided derivative, and no smoothness conclusion is assumed. The parent-data reference denotes typing/domain/field data only, without a parent dependency or cycle. |

## Proposed coverage items

| ID | Verdict | Source re-read | Disposition check |
|---|---|---|---|
| stepN:p3:barrier-bwd | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:barrier-bwd@L367-L367 | Maps exactly to stepN:p3:barrier-bwd; source span and ownership agree. |
| bpN:p3:newton-reduction | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L434-L449 | Maps exactly to bpN:p3:newton-reduction; source span and ownership agree. |
| stepN:p3:nr-smooth | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-smooth@L451-L451 | Maps exactly to stepN:p3:nr-smooth; source span and ownership agree. |
| stepN:p3:nr-pair | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:nr-pair@L453-L453 | Maps exactly to stepN:p3:nr-pair; source span and ownership agree. |

All assigned coverage items PASS. No failing record remains, so no replacement blocks are needed. All packets are left verbatim.

## Ownership, premises and convergence

The final SPEC ruling owns these ordinary N-labelled nodes in track I. No track-I Part 1/2/3 hypothesis package applies to this general ODE slice. The parent-data references in nr-smooth/nr-pair identify the explicit fields and domains; they do not assume the parent's result and do not add parent-to-child back edges.

For barrier-bwd, the inherited hypotheses include C^1 on open W, interval J containing 0, initial membership in V and exclusion from S, range in G and boundary containment. Reversing time preserves all these data with field -F. The forward-step, symmetry, invariant-set and solution-predicate edges each locate an actual use at L367.

For Newtonian reduction, the open-domain calculus is on positive distances only. The force field is the source's total formula extension; no regularity through collisions is claimed. The paired-derivative step bundles component derivatives together with the domain-membership block. Its NOTE faithfully records the earlier source shorthand issue at N Part 3 L453; it does not add a new premise or assert that a derivative alone gives collision freedom. The N>=2 scope of the Newtonian/fixed-Sun variants and the unrestricted mu,J scope of the restricted variant are preserved.

The source bodies of the seven relevant frozen I definitions were checked without inspecting implementation modules or theorem proof bodies. The P predicates and the general IsSolIn input were checked at their raw source locations. Existing pending P owning-graph status is unchanged. No new defect or mathematical repair is introduced by this pass.

## Validation and limits

- `sha256sum -c docs/graph/I/CORPUS.sha256`: all 9 files OK. `sha256sum -c docs/graph/I/IMPORTS.sha256`: all 7 files OK.
- `python3 scripts/depgraph_slice_check.py docs/graph/I/packets I-nown`: `I-nown: 7 nodes, 29 edges, 7 coverage items, 0 problems`.
- Read-only combined check: all 15 assigned proposed nodes have resolvable references, valid use-locator bounds and reachability from a frozen root. Imported metadata passes; ordinary-node EDGE targets agree with their source uses. No generic writer quantifier fill or mechanically added route edge occurs among these assigned records.
- No Lean/build, axiom query, provider/implementation inspection, packet/source/manifest edit, or state-changing git command. Only the two requested delta3 reports are written. Topology PASS is not a proof-closure receipt.

Reviewed packet SHA-256:

- `I-nown.nodes.md`: `05bbe9432c2436bc7d9991ccc4d299a7d66ca46482c4bdfc88096fc40518c0c9`.
- `I-nown.coverage.md`: `51bf4e2a7450abbd33b6d504db206b67ca2afcd4d8fda41cb2b8e1f82ab4aa7b`.

Final report checks: exactly one row per assigned proposed record in its node/coverage table; all verdicts PASS; no replacement blocks; input hashes unchanged. Review-applier dry run returned zero replacements, zero additions, zero coverage replacements and zero unresolved FAILs. `git diff --check` returned no output.
