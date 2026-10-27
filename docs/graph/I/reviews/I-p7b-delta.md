# I-p7b delta topology review

Reviewer: `sol-delta-I-c`. Marker: `delta-I-c`. Verdict: **FAIL** for the assigned proposed records.

Independence: this session previously reviewed I-p5/I-p8 only. The Part 6/7 slice reviewer was sol-review-I-p67; the earlier delta writers of the six Part 1/3 nodes were sol-delta-I-a and sol-delta-I-b. Read DELTA-BRIEF and REVIEW-BRIEF, repository instructions, PLAN, DECISIONS, SPEC including its last ruling, raw statements/proofs at every proposed locator and EDGE use, cited source inputs and previous findings. This report covers 19 PROPOSED nodes and 44 assigned PROPOSED coverage items. Other reviewed records are context only.

The package additions and the position-only bound at eh-delta are correct. The two Heine-Cantor SOURCE_GAP notes remain faithful to the present external-input policy and do not establish proof closure. cd-uc nevertheless drops the essential ratio inequality and its chosen-radius range from its source conclusion, so it needs a full source-field replacement.

Two earlier corrections went too far. At sh-div L386 the source explicitly invokes FTC; the already imported `K:bp:p1:ext-integral` (K Part 1 L82-86) states exactly that clause. Add its direct edge; this is not a new external or import. At po-prop L443 the text reuses Part 6's domain argument rather than applying its whole conditional corollary. po-dom L441 already proves Re(I_1/(2 pi))>m_L/2 directly from complex-domain, so it supplies the domain fact even for arbitrary B. Remove the manufactured conditional-premise gap. Retain the source-explicit nondeg edge strictly as reuse of its domain proof argument, rather than claiming an application of its full conditional conclusion. For B empty the assertions on B_r0 are vacuous. This does not invent a new proof: the needed calculation is the immediately preceding explicit source step.

Source premises must also exclude prior proof results in sh-div, eh-*, po-*, tr-* and nd-*. tr-cf must obtain membership in B from the actual Sol premise. nd-dom uses m_L and period-one(b), without consuming the Kepler formula. The nondeg statement retains both the formula for every positive real I_1 and the domain specialization. The 2 pi conversion, |mu| versus nonnegative mu, and the same output witnesses are retained.

## Proposed nodes

Spans below include every EDGE use inside the listed proof unit; file prefixes are the source paths in the packet.

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p7:h0 | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L279-L283; blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L284-L286 | Source contract, direct dependencies, packages and the source use locators agree; the earlier finding is resolved. |
| stepI:p7:h0-formula | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285 | Derived facts or earlier steps still occur as source premises; use the actual enclosing hypotheses and keep established ingredients on proof edges. Missing direct bpI:p7:orbit-maps edge: Q,D_R and its action parameters occur directly in the formula. Record the exact local variables and witness order explicitly. |
| stepI:p7:cd-uc | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345 | The replacement omits the essential uniform ratio inequality and the full radius range that L345 establishes for complex-domain. Expose the radius witness before points and the nearest-point comparison. |
| stepI:p7:sh-div | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | Derived facts or earlier steps still occur as source premises; use the actual enclosing hypotheses and keep established ingredients on proof edges. Missing direct K:bp:p1:ext-integral edge: the existing FTC clause applied to t -> Psi(q,t mu) gives mu f(q,mu)=w(q)-Psi(q,mu). The FTC SOURCE_GAP claim overlooks the already permitted imported ext-integral clause; represent the explicit source use by its existing input node. Record the exact local variables and witness order explicitly. |
| stepI:p7:eh-shell | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-shell@L413-L413 | Source contract, direct dependencies, packages and the source use locators agree; the earlier finding is resolved. |
| stepI:p7:eh-delta | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L416 | Derived facts or earlier steps still occur as source premises; use the actual enclosing hypotheses and keep established ingredients on proof edges. Record the exact local variables and witness order explicitly. |
| stepI:p7:eh-hol | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | Derived facts or earlier steps still occur as source premises; use the actual enclosing hypotheses and keep established ingredients on proof edges. Missing direct bpI:p7:x-hol edge: compose the holomorphic f and the position component of Q. Record the exact local variables and witness order explicitly. |
| stepI:p7:eh-exact | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L422 | Derived facts or earlier steps still occur as source premises; use the actual enclosing hypotheses and keep established ingredients on proof edges. Missing direct bpI:p7:sec-complex#data edge: w in U(delta_2), its action carrier and complex-domain radii are the section data. Record the exact local variables and witness order explicitly. |
| bpI:p7:period-one | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L425-L439; blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L440-L446 | Source contract, direct dependencies, packages and the source use locators agree; the earlier finding is resolved. |
| stepI:p7:po-prop | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | Derived facts or earlier steps still occur as source premises; use the actual enclosing hypotheses and keep established ingredients on proof edges. Missing direct bpI:p7:sec-complex#data edge: m_L is the section-defined positive minimum used in Re I_1>pi m_L. Remove the spurious SOURCE_GAP: the cited proof argument is already instantiated by po-dom, which proves the actual needed domain fact. Record the exact local variables and witness order explicitly. |
| stepI:p7:po-exact | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | Derived facts or earlier steps still occur as source premises; use the actual enclosing hypotheses and keep established ingredients on proof edges. Record the exact local variables and witness order explicitly. |
| bpI:p7:transfer | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L448-L453; blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L454-L460 | Source contract, direct dependencies, packages and the source use locators agree; the earlier finding is resolved. |
| stepI:p7:tr-cf | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | Derived facts or earlier steps still occur as source premises; use the actual enclosing hypotheses and keep established ingredients on proof edges. Missing direct bpI:p0:hamsol#IsHamiltonianSolutionOn edge: the Sol premise supplies I=z_tilde(t)_2 in B for t in J. Record the exact local variables and witness order explicitly. |
| stepI:p7:tr-open | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | Derived facts or earlier steps still occur as source premises; use the actual enclosing hypotheses and keep established ingredients on proof edges. Record the exact local variables and witness order explicitly. |
| stepI:p7:tr-chain | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | Derived facts or earlier steps still occur as source premises; use the actual enclosing hypotheses and keep established ingredients on proof edges. Record the exact local variables and witness order explicitly. |
| bpI:p7:nondeg | FAIL | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L465-L469; blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L470-L473 | Do not bind I to B_{r_0} as an outer premise when the statement separately claims every real I_1>0. Preserve both the global positive-action formula and its action-neighbourhood specialization. |
| stepI:p7:nd-dom | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471 | Derived facts or earlier steps still occur as source premises; use the actual enclosing hypotheses and keep established ingredients on proof edges. The positivity step L471 uses period-one(b) and m_L, without consuming the Kepler Hamiltonian formula; the added kep-ham edge is an overcorrection. Record the exact local variables and witness order explicitly. |
| stepI:p7:nd-det | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | Derived facts or earlier steps still occur as source premises; use the actual enclosing hypotheses and keep established ingredients on proof edges. Keep the positivity and conventional matrix equality as well as the determinant value, with the domain specialization separated. Record the exact local variables and witness order explicitly. |
| bpI:p7:sec-complex#data | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-complex@L325-L335 | Source contract, direct dependencies, packages and the source use locators agree; the earlier finding is resolved. |

## Proposed coverage items

Coverage PASS concerns only the disposition; it does not override a node FAIL with the same ID.

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p7:h0 | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L279-L283 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:h0-formula | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| bpI:p7:means | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:means@L288-L294 | outside every root closure; cited by track P (Part 7 L10, L480): no root-feeding proof consumes it (checked: no reference from Parts 0-3, 5, 8, and none from the nodes of Part 7 that feed I-R3BP: complex-domain, exact-ham, period-one, transfer, nondeg) |
| stepI:p7:mv-cv | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-cv@L296-L296 | outside every root closure; cited by track P (Part 7 L10, L480): no root-feeding proof consumes it (checked: no reference from Parts 0-3, 5, 8, and none from the nodes of Part 7 that feed I-R3BP: complex-domain, exact-ham, period-one, transfer, nondeg) |
| stepI:p7:mv-int | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:mv-int@L298-L298 | outside every root closure; cited by track P (Part 7 L10, L480): no root-feeding proof consumes it (checked: no reference from Parts 0-3, 5, 8, and none from the nodes of Part 7 that feed I-R3BP: complex-domain, exact-ham, period-one, transfer, nondeg) |
| bpI:p7:circular | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L301-L304 | outside every root closure; cited by track P (Part 7 L10, L480): no root-feeding proof consumes it (checked: no reference from Parts 0-3, 5, 8, and none from the nodes of Part 7 that feed I-R3BP: complex-domain, exact-ham, period-one, transfer, nondeg) |
| stepI:p7:ci-alg | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ci-alg@L306-L306 | outside every root closure; cited by track P (Part 7 L10, L480): no root-feeding proof consumes it (checked: no reference from Parts 0-3, 5, 8, and none from the nodes of Part 7 that feed I-R3BP: complex-domain, exact-ham, period-one, transfer, nondeg) |
| bpI:p7:scaling | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:scaling@L309-L316 | outside every root closure; cited by track P (Part 7 L10, L480): no root-feeding proof consumes it (checked: no reference from Parts 0-3, 5, 8, and none from the nodes of Part 7 that feed I-R3BP: complex-domain, exact-ham, period-one, transfer, nondeg) |
| stepI:p7:sc-alg | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-alg@L318-L318 | outside every root closure; cited by track P (Part 7 L10, L480): no root-feeding proof consumes it (checked: no reference from Parts 0-3, 5, 8, and none from the nodes of Part 7 that feed I-R3BP: complex-domain, exact-ham, period-one, transfer, nondeg) |
| stepI:p7:sc-flow | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sc-flow@L319-L319 | outside every root closure; cited by track P (Part 7 L10, L480): no root-feeding proof consumes it (checked: no reference from Parts 0-3, 5, 8, and none from the nodes of Part 7 that feed I-R3BP: complex-domain, exact-ham, period-one, transfer, nondeg) |
| stepI:p7:cd-uc | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:sh-div | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:eh-shell | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-shell@L413-L413 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:eh-delta | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L416 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:eh-hol | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:eh-exact | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L422 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| bpI:p7:period-one | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L425-L439 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:po-prop | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:po-exact | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| bpI:p7:transfer | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L448-L453 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:tr-cf | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:tr-open | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:tr-chain | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| bpI:p7:nondeg | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L465-L469 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:nd-dom | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:nd-det | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| bpI:p7:outputs | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:outputs@L477-L482 | administrative 'outputs consumed by other parts' summary and forward reference; no proof consumes it |
| bpI:p7:totality | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:totality@L484-L486 | administrative Lean-totality remark (guards on divisions and roots); the guards used are stated in the statements of complex-domain, shift, exact-ham; no proof consumes it |
| bpI:p7:errata | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:errata@L488-L491 | administrative errata/doubts list for the ledger; no proof consumes it |
| heading:bpI:p7:sec-complex | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-complex@L323-L323 | section heading; its results are inventoried separately |
| heading:bpI:p7:sec-exact | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-exact@L352-L352 | section heading; its results are inventoried separately |
| heading:bpI:p7:sec-nondeg | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-nondeg@L463-L463 | section heading; its results are inventoried separately |
| heading:bpI:p7:sec-summary | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-summary@L475-L475 | section heading; its results are inventoried separately |
| p7:source-L269 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L269-L269 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L282 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L282-L282 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L293 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L293-L293 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L315 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L315-L315 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L342 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L342-L342 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L375 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L375-L375 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L410 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L410-L410 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L438 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L438-L438 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L452 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L452-L452 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L468 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L468-L468 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:prose-L325-L335 | PASS | blueprint-I/parts/p7-delaunay.tex#prose@L325-L335 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |

All assigned coverage items PASS. The excluded newton, means, circular, scaling and x-change units feed no track-I root: I-R3BP uses pointwise orbit identities, near-circular/chart, exact-ham/period-one, transfer and the safe-shell argument; none uses their mean/inertial/general-strength conclusions. The only extra newton mention is the excluded rotating-frame remark in Part 8 L125-127. The I-owned bpN:p3:newton-reduction is a distinct restricted-predicate result, not the excluded bpI:p7:newton. The ke-ift comparison does not offer a replacement for the contraction proof with its uniform bounds. Source-gap notes at L14/L113 map to the blueprint Kepler/chart bridges; provenance and administrative remarks remain excluded.

## Complete replacement blocks

These proposals preserve PROPOSED status and require another reviewer. No packet is edited by this report.

```text
NODE: stepI:p7:h0-formula
KIND: step
TITLE: Formula
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285
CONTRACT_ID: stepI:p7:h0-formula
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H^K is defined on q!=0 by E(q,p)-Gamma(q,p); for the first claim (ell,g,L,G) in D_R; for the second z is collision-free at mu=0
SOURCE_QUANTIFIERS: For every (ell,g,L,G) in D_R for the composition identity; separately for every z collision-free at mu=0
SOURCE_CONCLUSION: H^K = E - Gamma, equal to -1/(2L^2) - G along Q; at mu = 0 H^R3_0 has (1-0)/r_1 = 1/|q| and 0/r_2 = 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-identities, bpI:p0:restricted#restrictedHamiltonian, bpI:p7:elements, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285 | (b),(c): Gamma = G, E = -1/(2L^2)
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285 | H^R3_0
EDGE: bpI:p7:elements | blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285 | H^K is defined as E(q,p) - Gamma(q,p)
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285 | Q,D_R and its action parameters occur directly in the formula
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:cd-uc
KIND: step
TITLE: Uniform continuity
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345
CONTRACT_ID: stepI:p7:cd-uc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K as in section data
SOURCE_QUANTIFIERS: For the fixed nonempty compact K, first choose delta_1>0 in the stated range depending only on K, then for every (L,G) in K_{delta_1} and nearest (L_prime,G_prime) in K
SOURCE_CONCLUSION: There exists delta_1 in (0,min{delta_K,m_L,m_G}/2], depending only on K, such that for every (L,G) in K_{delta_1} with nearest (L_prime,G_prime) in K, Re L>m_L/2, L!=0 and |G^2/L^2-G_prime^2/L_prime^2|<min{e_-^2/2,e_- delta_E}; at real points the positivity conclusions used for L,G also hold
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:sec-complex#data, bpI:p7:kepler-eq, bpI:p8:x-topo
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345 | K, m_L, m_G, delta_K
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345 | delta_K
EDGE: bpI:p8:x-topo | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345 | the closed bounded neighbourhood of compact K is compact in the finite-dimensional real carrier
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: the passage from continuity on the compact complex action neighbourhood to uniform continuity (Heine-Cantor, identifying C^2 with R^4) is neither proved nor enumerated among the permitted external inputs. x-topo supplies closed-bounded compactness, but does not state Heine-Cantor. This records an input-policy gap, not a false estimate.
```

```text
NODE: stepI:p7:sh-div
KIND: step
TITLE: Division by $\mu$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386
CONTRACT_ID: stepI:p7:sh-div
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<r_min<=rho_max<1; choose epsilon_0>0 satisfying the two inequalities in L363, then mu_2=epsilon_0/2, c_* and O as in L365-368; Psi,w,Xi are the shift potential definitions
SOURCE_QUANTIFIERS: For fixed r_min,rho_max and an admissible epsilon_0, define mu_2,c_*,O; construct f on O x D(0,mu_2), then for every (q,mu) there, including mu=0
SOURCE_CONCLUSION: f(q,mu) = -int_0^1 d_mu Psi(q,t mu) dt is holomorphic on O x D(0,mu_2), mu f = g_q, and |f| <= 6/(eps_0 sqrt(c_*)) (by continuity at mu = 0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:shift-def, stepI:p7:sh-pos, stepI:p7:sh-bound, bpI:p7:x-param, bpI:p7:x-schwarz, K:bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:shift-def | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | Psi
EDGE: stepI:p7:sh-pos | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | {q} x closed disc subset Xi
EDGE: stepI:p7:sh-bound | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | ¦g_q¦ <= 3 c_*^{-1/2}, g_q(0) = 0
EDGE: bpI:p7:x-param | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | holomorphy of the parameter integral
EDGE: bpI:p7:x-schwarz | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | Schwarz lemma bound
EDGE: K:bp:p1:ext-integral | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | the existing FTC clause applied to t -> Psi(q,t mu) gives mu f(q,mu)=w(q)-Psi(q,mu)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The fundamental theorem of calculus invoked at L386 is the clause int_a^b phi_prime=phi(b)-phi(a) of the already imported K:bp:p1:ext-integral. On t in [0,1], (q,t mu) lies in Xi, where Psi is holomorphic; the curve is C^1 and its derivative is mu partial_mu Psi(q,t mu). This adds a direct use of an existing permitted input, not a new import or an invented proof.
```

```text
NODE: stepI:p7:eh-delta
KIND: step
TITLE: Choice of $\delta_2$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L416
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L416
CONTRACT_ID: stepI:p7:eh-delta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K is a nonempty compact subset of C_0, rho_max<1; the section data and shift constants r_min,epsilon_0,mu_2,c_*,C_sh are selected as in exact-ham L394; delta_1 is the complex-domain radius; delta_*=delta_1/2
SOURCE_QUANTIFIERS: After fixed K and the selected shift/complex-domain constants, choose 0<delta_2<=delta_1/2 independent of w,mu; for every w in U(delta_2), choose real w_prime with actions in K as at L415
SOURCE_CONCLUSION: there is 0 < delta_2 <= delta_* = delta_1/2, depending only on K, such that for every w in U(delta_2) there is a real w' = (Re ell, Re g, L', G') with (L',G') in K and Euclidean distance of the position parts q(w), q(w') less than eps_0/2; hence q(w) in O
CONSTANT_SCOPE: delta_2 depends only on K
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:complex-domain, stepI:p7:eh-shell, bpI:p7:shift, bpI:p7:sec-complex#data, bpI:p8:x-topo, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:complex-domain | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | Q holomorphic on U(delta_1), real on real points, periodic
EDGE: stepI:p7:eh-shell | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | q' = q(w') has r_min <= ¦q'¦ <= rho_max
EDGE: bpI:p7:shift | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | eps_0 and the set O
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | U(delta), K
EDGE: bpI:p8:x-topo | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | the closure of the bounded fundamental-domain tube is compact
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | Q and its position component q(w)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: uniform continuity of the position component of Q on the compact fundamental-domain closure is invoked but not proved or listed as an external. x-topo pays compactness only. The bound concerns position parts, as explicitly specified at L415; it does not assert a momentum bound.
```

```text
NODE: stepI:p7:eh-hol
KIND: step
TITLE: Holomorphy and bound
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418
CONTRACT_ID: stepI:p7:eh-hol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K is a nonempty compact subset of C_0, rho_max<1; the section data and shift constants r_min,epsilon_0,mu_2,c_*,C_sh are selected as in exact-ham L394; delta_1 is the complex-domain radius; delta_2 is the radius selected at L415-416; F_mu(w) is defined by f(q(w),mu)
SOURCE_QUANTIFIERS: For fixed K and chosen delta_2,mu_2,C_sh, define F on U(delta_2) x D(0,mu_2); all w and mu in this domain, with reality at real pairs
SOURCE_CONCLUSION: F_mu(w) = f(q(w),mu) holomorphic with |F| <= C_sh: (i); periodicity of q(.) and reality of f and Q give (ii); (iv): delta_2 > 0 and K subset K_{delta_2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:eh-delta, bpI:p7:shift, bpI:p7:complex-domain, bpI:p7:orbit-maps, bpI:p7:sec-complex#data, bpI:p7:x-hol
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:eh-delta | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | q(w) in O
EDGE: bpI:p7:shift | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | holomorphy, bound C_sh and reality of f
EDGE: bpI:p7:complex-domain | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | holomorphy and periodicity of Q on U(delta_1)
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | reality of Q on real points
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | U(delta_2) and K subset K_delta2 are the section-defined sets
EDGE: bpI:p7:x-hol | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | compose the holomorphic f and the position component of Q
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:eh-exact
KIND: step
TITLE: Exactness
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L422
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L422
CONTRACT_ID: stepI:p7:eh-exact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K is a nonempty compact subset of C_0, rho_max<1; the section data and shift constants r_min,epsilon_0,mu_2,c_*,C_sh are selected as in exact-ham L394; delta_1 is the complex-domain radius; delta_2 is selected at L415-416; w is real in U(delta_2), mu real with |mu|<mu_2
SOURCE_QUANTIFIERS: For every real w in U(delta_2) and every real mu with |mu|<mu_2, after the common constants are chosen
SOURCE_CONCLUSION: (L,G) in C_0, Q(w) collision free and H^R3_mu(Q(w)) = H^R3_0(q,p) + [w(q) - Psi(q,mu)] = -1/(2L^2) - G + mu f(q,mu)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:complex-domain, stepI:p7:eh-delta, bpI:p7:shift, bpI:p7:shift-def, bpI:p7:h0, bpI:p0:restricted#restrictedHamiltonian, bpI:p0:primaries#CollisionFree, bpI:p0:primaries#radius, bpI:p0:primaries#radiusSq, bpI:p7:orbit-maps, bpI:p7:sec-complex#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:complex-domain | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | (L,G) in C_0 for real w in U(delta_1)
EDGE: stepI:p7:eh-delta | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | q(w) is a real point of O
EDGE: bpI:p7:shift | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | (q,mu) in Xi with real positive radicands; mu f = w - Psi
EDGE: bpI:p7:shift-def | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | Xi, Psi, rad(q - a_j) = sqrt(vartheta(...))
EDGE: bpI:p7:h0 | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L422-L422 | H^R3_0 = ... - w(q) and H^K o Q = -1/(2L^2) - G
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L421-L421 | H^R3_mu formula
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | collision freedom
EDGE: bpI:p0:primaries#radius | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | rad(q - a_j(mu))
EDGE: bpI:p0:primaries#radiusSq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | radiusSq
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L422 | Q or its position component is used directly in this step
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | w in U(delta_2), its action carrier and complex-domain radii are the section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:po-prop
KIND: step
TITLE: Properties
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443
CONTRACT_ID: stepI:p7:po-prop
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K,delta_2,mu_2,C_F,F are as in exact-ham; s_0=delta_2/(2 pi), r_0=2 pi delta_2; B is an arbitrary subset of 2 pi K; S(theta,I)=(2 pi theta,I/(2 pi)); h_tilde=h_{(2 pi)^2,1/(2 pi)}; real |mu|<mu_2 and f_tilde_mu=mu F_mu o S on the analytic domain
SOURCE_QUANTIFIERS: For fixed K and common analytic constants, every B subset 2 pi K and every real mu with |mu|<mu_2; all (theta,I) in the associated complex domain, with reality at real pairs
SOURCE_CONCLUSION: (b) h~ holomorphic on B_{r_0}, Re I_1 > pi m_L, real at real I; (c) f~_mu holomorphic, 1-periodic in theta, real, bounded by |mu| C_F
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:conversion, stepI:p7:po-dom, bpI:p7:exact-ham, bpI:p6:conversion-map, bpI:p6:kep-ham, bpI:p7:sec-complex#data, bpI:p6:nondeg
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:conversion | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | (b): h~ = h_{(2pi)^2, 1/(2pi)} holomorphic where I_1 != 0, real at real I
EDGE: stepI:p7:po-dom | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | S maps the domain into U(delta_2)
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | (i),(ii): bound, periodicity, reality of F
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | periodicity: theta -> theta + k becomes (ell,g) -> (ell,g) + 2 pi k
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | h~ = h_{(2pi)^2,1/(2pi)} is fixed by the Kepler Hamiltonian package
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | m_L is the section-defined positive minimum used in Re I_1>pi m_L
EDGE: bpI:p6:nondeg | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | the explicitly cited domain proof argument is reused with nonvanishing already supplied by po-dom; this is not application of the full conditional corollary
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: L443 recalls the domain proof argument of Part 6; L441 already supplied Re(I_1/(2 pi))>m_L/2 and nonvanishing on B_{r_0} directly from complex-domain. Together with conversion(b), this proves holomorphy and reality. The source-explicit nondeg edge is retained as reuse of that proof argument, not an application of the full corollary with its infimum-radius premises. For empty B the domain claims are vacuous. No SOURCE_GAP is established here.
```

```text
NODE: stepI:p7:po-exact
KIND: step
TITLE: Exactness
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445
CONTRACT_ID: stepI:p7:po-exact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K,delta_2,mu_2,C_F,F are as in exact-ham; s_0=delta_2/(2 pi), r_0=2 pi delta_2; B is an arbitrary subset of 2 pi K; S(theta,I)=(2 pi theta,I/(2 pi)); h_tilde=h_{(2 pi)^2,1/(2 pi)}; real |mu|<mu_2 and f_tilde_mu=mu F_mu o S on the analytic domain; theta real and I real in B_{r_0} for the exact Hamiltonian identity
SOURCE_QUANTIFIERS: For every real mu with |mu|<mu_2, every real theta and real I in B_{r_0}; symplecticity on the corresponding real domain
SOURCE_CONCLUSION: H^R3_mu(Q(S(theta,I))) = h~(I) + f~_mu = realHamiltonian h~ f~_mu; Q o S symplectic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:exact-ham, bpI:p6:conversion, bpI:p6:kep-ham, bpI:p0:realham#realHamiltonian, stepI:p7:po-dom, bpI:p7:symplectic, bpI:p6:conversion-map, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | (iii) at w = S(theta,I)
EDGE: bpI:p6:conversion | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | (b) h_{1,1}(L,G) = h~(I); (a) symplectic S
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | h_{1,1}(L,G) = -1/(2L^2) - G
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | realHamiltonian is the real part of the same real number
EDGE: stepI:p7:po-dom | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | S(theta,I) in U(delta_2)
EDGE: bpI:p7:symplectic | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | Q symplectic
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | S
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | Q or its position component is used directly in this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:tr-cf
KIND: step
TITLE: Collision freedom and real-analyticity
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455
CONTRACT_ID: stepI:p7:tr-cf
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K,delta_2,mu_2,C_F,F are as in exact-ham; s_0=delta_2/(2 pi), r_0=2 pi delta_2; B is an arbitrary subset of 2 pi K; S(theta,I)=(2 pi theta,I/(2 pi)); h_tilde=h_{(2 pi)^2,1/(2 pi)}; real |mu|<mu_2 and f_tilde_mu=mu F_mu o S on the analytic domain; J subset R and z_tilde:R->R^2 x R^2 satisfies Sol(realHamiltonian h_tilde f_tilde_mu,B,J,z_tilde); z=Q o S o z_tilde; t in J
SOURCE_QUANTIFIERS: For every period-one datum, mu,J,z_tilde satisfying transfer, and every t in J
SOURCE_CONCLUSION: S z~(t) is real with (L,G) in K, lies in U(delta_2); z(t) = Q(S z~(t)) is collision free, i.e. in W_mu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:exact-ham, bpI:p7:sec-ham#data, bpI:p6:conversion-map, bpI:p7:sec-complex#data, bpI:p7:orbit-maps, bpI:p0:hamsol#IsHamiltonianSolutionOn
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | (iv) and (iii): U(delta_2) contains the real points over K, collision freedom
EDGE: bpI:p7:sec-ham#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | W_mu
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | S
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | the setting uses K or the common complex-domain data fixed in the section
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | Q or its position component is used directly in this step
EDGE: bpI:p0:hamsol#IsHamiltonianSolutionOn | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | the Sol premise supplies I=z_tilde(t)_2 in B for t in J
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:tr-open
KIND: step
TITLE: Agreement of Hamiltonians on an open set
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457
CONTRACT_ID: stepI:p7:tr-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K,delta_2,mu_2,C_F,F are as in exact-ham; s_0=delta_2/(2 pi), r_0=2 pi delta_2; B is an arbitrary subset of 2 pi K; S(theta,I)=(2 pi theta,I/(2 pi)); h_tilde=h_{(2 pi)^2,1/(2 pi)}; real |mu|<mu_2 and f_tilde_mu=mu F_mu o S on the analytic domain; J subset R and z_tilde:R->R^2 x R^2 satisfies Sol(realHamiltonian h_tilde f_tilde_mu,B,J,z_tilde); z=Q o S o z_tilde; t in J; V is defined to be the real r_0-neighbourhood cylinder of B
SOURCE_QUANTIFIERS: For every period-one datum, mu,J,z_tilde satisfying transfer, and every t in J; define V from B,r_0 and establish agreement on all of V before evaluating derivatives at z_tilde(t)
SOURCE_CONCLUSION: realHamiltonian h~ f~_mu = H^R3_mu o Q o S on V; both sides real-analytic, so real derivatives and Hamiltonian fields coincide at z~(t)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p0:realham#realHamiltonian, bpI:p0:restricted#restrictedHamiltonian, bpI:p7:chart, bpI:p6:kep-ham, bpI:p6:conversion-map, bpI:p7:sec-complex#data, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | (d) exactness on B_{r_0}
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | realHamiltonian
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | H^R3_mu
EDGE: bpI:p7:chart | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | Q real-analytic
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | the Hamiltonian is expressed using the converted Kepler h~
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | S converts the curve or the Hamiltonian to conventional variables
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | the setting uses K or the common complex-domain data fixed in the section
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | Q or its position component is used directly in this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:tr-chain
KIND: step
TITLE: Chain rule
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459
CONTRACT_ID: stepI:p7:tr-chain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K,delta_2,mu_2,C_F,F are as in exact-ham; s_0=delta_2/(2 pi), r_0=2 pi delta_2; B is an arbitrary subset of 2 pi K; S(theta,I)=(2 pi theta,I/(2 pi)); h_tilde=h_{(2 pi)^2,1/(2 pi)}; real |mu|<mu_2 and f_tilde_mu=mu F_mu o S on the analytic domain; J subset R and z_tilde:R->R^2 x R^2 satisfies Sol(realHamiltonian h_tilde f_tilde_mu,B,J,z_tilde); z=Q o S o z_tilde; t in J
SOURCE_QUANTIFIERS: For every period-one datum, mu,J,z_tilde satisfying transfer, and every t in J; J need not be open or an interval
SOURCE_CONCLUSION: z~'(t) = X_{realHamiltonian h~ f~_mu}(z~(t)) = X_{H o Q o S}(z~(t)); d/dt z = D(Q o S) z~' = X_{H^R3_mu}(z(t)) = V_mu(z(t)); the formulas for rad(q) and the energy
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:tr-open, bpI:p0:hamsol#IsHamiltonianSolutionOn, bpI:p7:symplectic, bpI:p6:conversion, bpI:p7:ham-eq, bpI:p7:orbit-identities, bpI:p7:period-one, stepI:p7:tr-cf, bpI:p6:kep-ham, bpI:p6:conversion-map, bpI:p7:sec-complex#data, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:tr-open | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | agreement of the Hamiltonians and fields
EDGE: bpI:p0:hamsol#IsHamiltonianSolutionOn | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | Sol gives z~'(t) = X(z~(t))
EDGE: bpI:p7:symplectic | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | D Q symplectic, chain rule for Q
EDGE: bpI:p6:conversion | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | (a) symplectic S
EDGE: bpI:p7:ham-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | X_{H^R3_mu} = V_mu and RSol_mu
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | (a) rad(q)
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | (d) energy
EDGE: stepI:p7:tr-cf | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | z(t) in W_mu
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | the Hamiltonian is expressed using the converted Kepler h~
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | S converts the curve or the Hamiltonian to conventional variables
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | the setting uses K or the common complex-domain data fixed in the section
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | Q or its position component is used directly in this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p7:nondeg
KIND: proposition
TITLE: Isoenergetic nondegeneracy of the Delaunay Hamiltonian
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L465-L469
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L470-L473
CONTRACT_ID: bpI:p7:nondeg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K,delta_2,mu_2,C_F,F are as in exact-ham; s_0=delta_2/(2 pi), r_0=2 pi delta_2; B is an arbitrary subset of 2 pi K; S(theta,I)=(2 pi theta,I/(2 pi)); h_tilde=h_{(2 pi)^2,1/(2 pi)}; real |mu|<mu_2 and f_tilde_mu=mu F_mu o S on the analytic domain
SOURCE_QUANTIFIERS: For the period-one data, every real I with I_1>0 has the displayed determinant; in particular every real I in B_{r_0}, for every B subset 2 pi K; conventional variables have every (L,G) with L>0
SOURCE_CONCLUSION: det borderedHessian h~ I = 3/I_1^4 > 0 for every real I in B_{r_0}, indeed for every real I with I_1 > 0; in conventional variables B_{h_{1,1}}(L,G) = K_{1,1}(L) with det = 3/L^4; h~ satisfies the nondegeneracy hypothesis of I-HEAD on all real points of B_{r_0}, for every B subset 2 pi K
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p0:bordered#borderedHessian, bpI:p0:keplerborder#keplerBorder, stepI:p7:nd-dom, stepI:p7:nd-det, bpI:p6:kep-ham, bpI:p7:sec-complex#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L466-L466 | the setting: h~, B_{r_0}
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L466-L466 | borderedHessian
EDGE: bpI:p0:keplerborder#keplerBorder | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L466-L466 | K_{1,1}(L)
EDGE: stepI:p7:nd-dom | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L471-L471 | proof step
EDGE: stepI:p7:nd-det | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L472-L472 | proof step
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L466-L467 | h~ = h_{(2pi)^2,1/(2pi)} is fixed by the Kepler Hamiltonian package
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L466-L467 | the setting uses K or the common complex-domain data fixed in the section
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:nd-dom
KIND: step
TITLE: Reality of the domain
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471
CONTRACT_ID: stepI:p7:nd-dom
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K,delta_2,mu_2,C_F,F are as in exact-ham; s_0=delta_2/(2 pi), r_0=2 pi delta_2; B is an arbitrary subset of 2 pi K; S(theta,I)=(2 pi theta,I/(2 pi)); h_tilde=h_{(2 pi)^2,1/(2 pi)}; real |mu|<mu_2 and f_tilde_mu=mu F_mu o S on the analytic domain; I is real and lies in B_{r_0}
SOURCE_QUANTIFIERS: For every period-one datum and every real I in B_{r_0}
SOURCE_CONCLUSION: real I in B_{r_0} has I_1 > 0 (Re I_1/(2 pi) > m_L/2 > 0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p7:sec-complex#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471 | (b): Re I_1 > pi m_L on B_{r_0}
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471 | the setting uses K or the common complex-domain data fixed in the section
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:nd-det
KIND: step
TITLE: Determinant
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472
CONTRACT_ID: stepI:p7:nd-det
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K,delta_2,mu_2,C_F,F are as in exact-ham; s_0=delta_2/(2 pi), r_0=2 pi delta_2; B is an arbitrary subset of 2 pi K; S(theta,I)=(2 pi theta,I/(2 pi)); h_tilde=h_{(2 pi)^2,1/(2 pi)}; real |mu|<mu_2 and f_tilde_mu=mu F_mu o S on the analytic domain; kappa=Omega=1; I real with I_1>0 for the general determinant formula, specializing to real I in B_{r_0}
SOURCE_QUANTIFIERS: For fixed kappa=Omega=1, every real I with I_1>0; specialize to real I in B_{r_0} using nd-dom; for the conventional matrix every L>0
SOURCE_CONCLUSION: For every real I with I_1>0, det borderedHessian h_tilde I=3/I_1^4>0; using nd-dom the same holds on real I in B_{r_0}; conventionally B_{h_{1,1}}(L,G)=K_{1,1}(L) and det=3/L^4 for L>0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:kep-border, bpI:p6:conversion, stepI:p7:nd-dom, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:kep-border | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | determinant of the bordered Hessian of h_{1,1}
EDGE: bpI:p6:conversion | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | (d) conversion of the bordered Hessian determinant
EDGE: stepI:p7:nd-dom | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | I_1 > 0 on real I in B_{r_0}
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | h~ = h_{(2pi)^2,1/(2pi)} is fixed by the Kepler Hamiltonian package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```


## Checks, provenance and limits

Both current `sha256sum -c docs/graph/I/CORPUS.sha256` and `sha256sum -c docs/graph/I/IMPORTS.sha256` passed every file. The former now includes the I-owned N source; the latter is re-pinned after the K Part 1 locator shift. Old import-drift warnings are closed for this snapshot. The last SPEC ruling retargets gen-invariant/gen-barrier/newton-reduction to ordinary bpN:p3:* nodes in I-nown; no obsolete N: form is used by the reviewed consumer. No generic writer fill "inherits the fixed data and quantifiers of the enclosing proof; no new binders" occurs in any of the four assigned packets. The broader "as in the enclosing result" fields were checked against the enclosing statements and expanded where replaced.

Existing blueprint clarification retained: Part 7 L363 says "choose epsilon_0>0" while L374 claims C_sh,mu_2 "depend only on (r_min,rho_max)". The choice must be fixed from those radii before mu for uniform use; this report does not silently impose a canonical choice. The uniform-continuity policy gaps at L345/L415 remain exposed. No new pinned-paper erratum is asserted; Chi05 prose in L489-490 is provenance, not an independently checked PDF quotation in this delta.

No new mathematical repair, source deviation or frozen-statement defect is asserted. No implementation module/provider/proof body is inspected, no Lean/build/axiom/source-lint command is run, and no state-changing git command is run. Only the four requested review reports are written. PASS is source topology, not theorem closure.

Input packet SHA-256 at review:

- `I-p7b.nodes.md`: `190166782a58b84c3420e06f301bc028e29c4aefcbef2f8829647e8d3ee61ef2`.
- `I-p7b.coverage.md`: `61df4ebc77d8e191b78a276eb8ee9f1b882e1d630bbf0512d6787f34cf7badab`.

Final validation:

- `python3 scripts/depgraph_apply_review.py docs/graph/I/packets I-p7b docs/graph/I/reviews/I-p7b-delta.md sol-delta-I-c --dry-run`: `I-p7b: 14 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 9 PASS nodes`. The applier counts PASS rows from both node and coverage tables; unique node counts are given in the scope/table.
- Independent report checks: exactly 19 assigned proposed-node rows and 44 assigned proposed-coverage rows; every FAIL has a complete replacement; all required fields, locator bounds, unique DEPS/ROUTES and matching EDGE records pass; all dependency IDs resolve.
- Combined in-memory overlay of all four reports: acyclic, no dangling dependencies, all 41 assigned nodes remain reachable from a frozen root. No graph files were written for this check.
- Input node/coverage SHA-256 values still match the review snapshot. Report whitespace passes; `git diff --check` returned no output. Concurrent changes in other agents' files were left untouched.
