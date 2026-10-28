# P-p7 second delta topology review

Reviewer: sol-delta-P-q. Marker: delta-P-q.

**Verdict: FAIL — 15 node PASS, 1 node FAIL.**

Scope is exactly the 16 currently PROPOSED nodes rewritten by P-p7-delta.md (sol-delta-P-i). No PROPOSED coverage item was rewritten by that review. REVIEWED records and records whose EXTRACTOR contains writer-pfixed-revision or sonnet-extract-pfixed are excluded. The same-chart deletion is already reflected in the current packet and is not a reviewable record here. This verdict concerns the assigned delta only.

Read DELTA-BRIEF.md and REVIEW-BRIEF.md, current SPEC including writer/P-FIXED rulings, and the named delta review. Re-read all selected statement/proof/EDGE source spans, their enclosing statements and the cited prerequisite statements. Generic references to enclosing source premises do not assume earlier proof conclusions. Accurate records pass without stylistic revision.

## Record verdicts

Source spans in the table are in blueprint-P/parts/p7-kepler-poincare.tex. Every recorded consumer EDGE span was also reread.

| Record | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepP:p7:rg-lagrange | PASS | L65-L66 | The added Kepler-data edge supplies C, Lambda and K; the scaled Lagrange calculation agrees with L65-66. |
| stepP:p7:ke-c | PASS | L88-L88 | The added Kepler-data edge supplies a and the mass/strength dictionary. Noncircular means and the separately supplied circular endpoint cover the stated carrier. |
| stepP:p7:ke-d | PASS | L89-L89 | The added Kepler-data and ke-chart edges supply the domain/map and analytic chart regularity; ke-form supplies factor one for chart-field. |
| stepP:p7:po-an | PASS | L150-L150 | The added analytic-composition edge is a direct use, with the range condition supplied by o-facts. |
| stepP:p7:po-del | PASS | L151-L155 | The restored w in O and Gamma>0 give Lambda>C>0 and 0<e<1; the Delaunay comparison and all use sites agree. |
| stepP:p7:po-dense | PASS | L157-L157 | The added Part 1 convention edge directly supplies M_0. Density, analyticity, the form identity and invertibility have direct suppliers. |
| stepP:p7:po-el | PASS | L158-L159 | The invalid noncircular-only circular-scaling edge is removed. Scalar circular alternatives have their own owner, and the chart-definition edge supplies O, Psi, k and v; the LRL endpoint still uses po-circ. |
| stepP:p7:po-bij | PASS | L160-L162 | The added chart-definition edge supplies O, Psi, Gamma and the inverse radicand. Both circular/noncircular cases and the quotient inverse are sourced. |
| stepP:p7:ho-hol | PASS | L173-L173 | The chart-definition and M_0 convention edges are direct. The local-domain versus full-strip real-restriction mismatch remains explicitly exposed as SOURCE_GAP. |
| stepP:p7:pc-share | PASS | L207-L207 | The added chart edge supplies H^Psi=c^(-1)(H composed with Psi) with c=1. Both models and domains agree; the analytic-regularity attachment remains explicitly SOURCE_GAP. |
| stepP:p7:pc-eq | PASS | L208-L208 | The added chart/product-definition edges and the fixed-model substitution resolve the earlier FAIL. Coordinates, Hamiltonian signs and collision-free domain agree. |
| stepP:p7:d25-d | PASS | L262-L262 | The restored converse now quantifies over arbitrary ProgradeElliptic physical z; a preimage is obtained rather than assumed. The forward identities keep n=2 and kappa=1. |
| stepP:p7:d25-e | PASS | L263-L263 | The added convention edge supplies e_g and the perihelion/mean-longitude convention, with Gamma_i>0 retained. |
| bpP:p7:conv#data | FAIL | L27-L33 | Wrong EDGE locator: oscillatorAction is used at L30 in Gamma=R(eta,xi), not L29. The prior removal of the unused vector-field edge is correct. |
| stepP:p7:po-el#circular | PASS | L158-L158 | All three added package edges are direct. The scalar endpoint has two alternative ROUTES with matching edges, not a conjunction of their proofs. |
| stepP:p7:po-el#circular-direct | PASS | L158-L158 | The added chart-definition edge supplies the route domain and q,p=Psi(w); clause (f) and positive mass/strength give exactly the scalar endpoint contract. |

## Coverage and conditional inputs

Eligible PROPOSED coverage items: 0. No coverage disposition is changed or recertified outside the assigned delta.

The added package edges use actual chart/domain objects or named constants. In po-del, w in O and Gamma>0 give 0<C<Lambda and 0<e<1 before applying the noncircular I chart and regular-Kepler relation. Circular scalar identities use their separate routes; the LRL endpoint uses the explicit circular formulas. In ke-d the analytic chart and factor-one symplectic identity supply chart-field premises. Product equations retain both moving and fixed models on the collision-free preimage, positions first, with fast-angle period 2pi. The D25 converse is over arbitrary physical prograde points. Physical planar length is not replaced by the ambient max norm.

The two pre-existing SOURCE_GAP notes at L173 and L207 remain accurate: the cited full-strip real-restriction statement does not directly apply to the bounded complex neighbourhood, and the cited Part 6 result supplies smoothness rather than its asserted analytic upgrade. These exposed source attachments are not additional premises and do not cause a new topology FAIL. No new blueprint defect is asserted.

## P-p7 — bpP:p7:conv#data

L29 fixes the coordinate order; L30 contains the actual oscillator-action identity `(Gamma=(xi^2+eta^2)/2=R(eta,xi))`. Change only this EDGE locator from L29-L29 to L30-L30. Every other field and line remains verbatim.

```text
NODE: bpP:p7:conv#data
KIND: definition
TITLE: Conventions of Part 7 (m, kappa, l, angles, Omega, J_0, R(g), e_g, cr, Q^I)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L27-L33
PROOF_SOURCE: -
CONTRACT_ID: bpP:p7:conv#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m>0 the planet mass; kappa=G m0>0 the strength of the centre; l the planar length (Definition bpP:p0:plane); angles lambda, ell, g, F in radians (period 2pi); phase point z=(z_1,z_2) positions first, Omega=sum dz_{2,i}^dz_{1,i} (Definition bpP:p0:hamsymp); Poincare coordinates (lambda,xi;Lambda,eta) with positions (lambda,xi) and momenta (Lambda,eta)
SOURCE_QUANTIFIERS: m, kappa (fixed in the part; kappa=G m0 with G, m0 the data of Part 6); then points of R^2 x R^2
SOURCE_CONCLUSION: defines J_0 v=(-v_1,v_0) (quarterTurn), R(g) the rotation by g, e_g=(cos g,sin g), cr(q,p)=q_0p_1-q_1p_0 (planeCross), Omega_chart=dLambda^dlambda+deta^dxi, Gamma=(xi^2+eta^2)/2, and the track-I Delaunay map Q^I(ell,g,L,G) (strength one, unit mass) with (Q^I)^*(sum dq_i^dp_i)=dell^dL+dg^dG
CONSTANT_SCOPE: m and kappa are fixed positive data; kappa=G m0 depends on G, m0 only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:plane#planeLength, bpP:p0:hamsymp#symplecticForm, bpP:p0:d25-cross#planeCross, I:bpI:p7:orbit-maps, I:bpI:p7:symplectic, bpP:p0:oscaction#oscillatorAction, bpP:p14:sb-conv#quarterTurn
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:plane#planeLength | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L27-L27 | l is planeLength
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L28-L28 | frozen sign convention Omega=sum dz_2^dz_1
EDGE: bpP:p0:d25-cross#planeCross | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L32-L32 | cr is planeCross
EDGE: I:bpI:p7:orbit-maps | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L33-L33 | Delaunay map Q^I
EDGE: I:bpI:p7:symplectic | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L33-L33 | (Q^I)^*(sum dq^dp)=dell^dL+dg^dG
EDGE: bpP:p0:oscaction#oscillatorAction | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L30-L30 | Gamma=R(eta,xi) explicitly identifies the oscillator action
EDGE: bpP:p14:sb-conv#quarterTurn | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L32-L32 | J_0 v=(-v_1,v_0) explicitly identifies quarterTurn
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-delta-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: created from p7:prose-L27-L33 (SPEC section data); consumers: nearly every statement of Part 7
```

## Validation

- Structural checker: `P-p7: 57 nodes, 317 edges, 88 coverage items, 0 problems, 5 TODO records (not counted: --structural)`. The TODO records belong to the excluded P-FIXED restoration.
- Independently checked selected-record coverage, DEPS/ROUTES-to-EDGE agreement, prerequisite existence and consumer locators. The sole replacement changes exactly one EDGE line.
- Review-applier dry run and report whitespace check pass; packet hashes remain unchanged. No Lean or state-changing git command was run; only this report is written.

Packet snapshot SHA-256:

- P-p7.nodes.md: `b32d6e67724199e76b0edc9a90263c71c2c87e3653165eea5b0f7030afdf6df9`.
- P-p7.coverage.md: `062f411a9cf8ba8d2f256b87cfc42e3aa63145e039f4752af1405c36f8f49827`.
