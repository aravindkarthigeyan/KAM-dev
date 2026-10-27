# Track N: delta review of global-review rewrites

Reviewer: sol-delta-N-global. Rewriting reviewer: sol-global-N.

**Verdict: FAIL for acceptance of the complete 14-record batch: 12 PASS, 2 FAIL. G5 SPEC revision: PASS.** One failure is a now-unused import requiring pruning; the other is two missing direct inputs in the revised energy proof. Neither finding calls for a mathematical or frozen-premise change.

Reviewed the delta brief and its convergence rule, REVIEW-BRIEF, GLOBAL-review G1–G6 and the proposed records, the current packet records, the relevant SPEC rules, native source spans and actual owning-blueprint statements. All 14 pending node blocks match the global review's proposals apart from writer metadata. No pending coverage item occurs in these six packets. Only these 14 nodes are adjudicated; the single coverage replacement below is the necessary disposition consequence of deleting a failed import, not a new coverage-audit assignment.

In the table, “K Part 1” is `blueprint/parts/p1-analysis.tex`; “N Part 1/4/5/6/7/12” denotes the corresponding `blueprint-N/parts/p*-*.tex`; Part 11a/b/c denotes `p11a-partial-route.tex`, `p11b-partial-nf.tex`, `p11c-partial-stability.tex`. Listed native spans include all statement, proof and EDGE locators of each pending record; additional supplier spans are included for applicability.

| ID | Verdict | Spans re-read / check | Assessment |
|---|---|---|---|
| K:bp:p1:decay | PASS | K Part 1 L37–39, L786–789 | G1 resolved: the n>=1 standing strip restriction is now explicit; the coefficient estimate, widths and quantifiers otherwise match the owning statement. |
| K:bp:p1:fourier-basic | PASS | K Part 1 L37–39, L757–783 | G1 resolved: n>=1 is attached only to strip clause (c); real-domain clauses (a),(b) retain their original hypotheses. |
| K:bp:p1:real-restriction | FAIL | K Part 1 L37–39, L1047–1055; N Part 12 L18–30; all packet DEPS/ROUTES and six-root closure | The n>=1 contract repair is faithful, but G2 removes its last packet consumer. The node is now outside all six root closures and must be deleted, with its imported coverage disposition reconciled below. |
| K:bp:p1:summation | PASS | K Part 1 L37–39, L824–831 | G1 resolved: both strip directions retain the source conclusions under the owning n>=1 convention. |
| K:bp:p1:averages | PASS | K Part 1 L37–39, L665–669 | G1 resolved: the source strip dimension restriction is restored; the vector/matrix and averaging conclusions are unchanged. |
| stepN:p1:nc-sum | PASS | N Part 1 L198–208; K Part 1 L728–734 | The unrestricted native contract is retained. SOURCE_GAP accurately identifies the missing n=0 branch of the cited exp-sums(b) application; no new native premise is assumed. |
| stepN:p4:co-series | PASS | N Part 4 L35–39, L47–54, L26–29, L57–77; K Part 1 L728–734, L824–831 | The source construction and all direct uses are retained; SOURCE_GAP exposes the n=0 gap in the cited K summability/coefficient inputs. |
| stepN:p4:co-repr | PASS | N Part 4 L35–39, L47–54, L57–80; K Part 1 L757–768, L824–831 | The finite-norm reconstruction contract is preserved; SOURCE_GAP identifies the missing n=0 instance of the cited strip reconstruction/uniqueness results. |
| stepN:p4:b1-b | PASS | N Part 4 L35–39, L47–54, L85–100; K Part 1 L728–734, L786–789 | The bound and limiting coefficient estimate agree with the source; the missing n=0 branch is explicitly exposed rather than removed by a stronger hypothesis. |
| stepN:p4:b3-a | PASS | N Part 4 L35–39, L47–64, L122–133; K Part 1 L728–734 | The angular sum includes n=0, whereas the cited scalar exp-sums(a) is stated under n>=1. The empty-sum case is faithfully recorded as a missing branch, not an extra premise. |
| stepN:p12:fb-real | PASS | N Part 12 L18–30; N Part 1 L24–26, L68–95; K Part 1 L1047–1055 | G2 resolved: general restriction of scalars/inclusion/Re replaces the entire-strip import; standing analytic data supply holo-real locally on the permitted real phase domain. |
| stepN:p11:ef-en | FAIL | N Part 11c L4–17, L78–89; N Part 7 L18–20, L155–170; N Part 1 L22–23; N Part 4 L47–54 | G3 removes the inapplicable canonical orbit theorem correctly, but the resulting direct proof also uses projection self-adjointness (p7:ext-linalg) and Euclidean Cauchy-Schwarz (p1:ext-norms). Both direct edges are missing. |
| stepN:p11:co-remainder | PASS | N Part 11b L8–14, L51–84; N Part 5 L21–24, L110–136; N Part 4 L35–54; N Part 11a L48–56 | G4 resolved conservatively: the canonical-to-weighted Taylor contract mismatch is explicitly marked SOURCE_GAP; the existing unsupported numerical sharpening remains exposed. No desired remainder identity is assumed. |
| stepN:p11:tr-taylor | PASS | N Part 11b L65–91; N Part 5 L110–136; N Part 6 L22; N Part 4 L35–54; N Part 11a L48–56 | G4 resolved conservatively: SOURCE_GAP distinguishes the attempted canonical Taylor citation from the extended-flow contract actually needed; source hypotheses and asserted conclusion are preserved. |

## G1: imported dimension context and native gaps

The owning K convention at Part 1 L37–39 expressly imposes positive strip widths and n>=1 wherever a strip occurs. Fourier-basic (a),(b) are real-domain clauses, so the amended restriction belongs specifically to (c). Exp-sums independently states n>=1 at L728, including its scalar clause (a). The five native SOURCE_GAP rewrites correctly retain their all-n contracts and expose the missing branch; they do not prove the singleton or empty-sum cases. Those records pass as faithful topology descriptions, not as complete proofs.

The four retained K imports are accurate against the actual owning blueprint. K's current reviewed graph still omits the standing restriction in its copied source fields, as GLOBAL-review G1 already reported. Owning-K synchronization remains a writer follow-up; reverting the accurate N restriction to reproduce that omission would be wrong. The fifth import's mathematical contract is also accurate, but its retention fails reachability after G2.

## G2–G4: carriers and direct inputs

At fb-real, the native standing data give h analytic and f an analytic perturbation with bound 1; real points lie in the permitted action domain. The Part 1 local real-Hamiltonian statement and its general scalar-restriction/inclusion/Re rule supply the local derivative calculation. No entire strip in all phase coordinates is needed or assumed. Removing the narrower K import edge is correct.

At ef-en, the energy is the extended Hamiltonian, not the Hamiltonian of a projected autonomous canonical orbit. real-system(b) supplies conservation; ef-tube supplies the fast segment in U; the one-variable Lagrange Taylor external applies to h along that segment. The changed proof has the correct carrier. Its decomposition of the linear Taylor term uses orthogonal-projection self-adjointness, and its displayed estimate uses Euclidean Cauchy–Schwarz. Those are separate admitted inputs, not supplied by the resonance-data definitions or the preceding admissibility bound. The minimal replacement adds exactly those two edges; every statement and other field stays verbatim.

At the two G4 consumers, Part 5 Taylor inherits the canonical flow/bracket setting (Part 5 L110–125), while Part 11 uses the weighted extended field. Both new NOTE fields explicitly expose that conditional-application gap without changing a source premise. Keeping the citation as the source's attempted use together with the precise SOURCE_GAP is faithful. The numerical gap at co-remainder is preserved. No unsupported bridge is supplied by this review.

## G5 SPEC paragraph: PASS

The paragraph beginning “by the D28 revision (global review G5)” at SPEC L152–155 explicitly admits `bpN:p12:ext-{cov,tsum,markov}` and distinguishes `ext-dep` as a claim to prove and `ext-markov#compact-max` as a separate proved claim. This agrees with Part 12 L35–38 and the packet kinds/contracts. The 35-item enumeration is the labelled-list total before the existing alias/claim/pruning rules; it is not a claim that every listed item survives as a native external node. No new mathematical external is smuggled in through either claim split. The earlier pre-D28 wording/counts are editorial history, not a further topology failure under convergence.

G6 publication metadata/dashboard and the separately assigned coverage receipts are not repaired or certified by this delta. The faithful source-gap verdicts here do not overturn the global report's source-closure limitations.

## Failure 1: prune the now-unused K real-restriction import

Delete the complete `NODE: K:bp:p1:real-restriction` block from `N-imports.nodes.md`. There is no valid NODE-field rewrite that can make an unused supplier feed a root without inventing a consumer edge. No source field of that node needs correction.

The G2 removal is its last consumer: a scan of every packet's DEPS/ROUTES found none, and an independent traversal from all six frozen roots reaches 719 of the current 720 nodes; this import is the only unreachable node. The required imports report confirms it:

```text
N-imports: 16 imported nodes present, 15 referenced, 0 missing, 1 unreferenced
  UNREFERENCED K:bp:p1:real-restriction
```

The writer may use the import tool's `--prune` operation to remove the unused node and its imported coverage item. If retaining the inventory item as an exclusion, use this complete replacement instead; only DISPOSITION and REASON differ from its current block. Apply this item replacement before pruning so the tool retains the explicit exclusion. The review-fragment applicator itself does not delete NODE blocks; the prune is a separate necessary writer action. Neither operation was run here.

```text
ITEM: K:bp:p1:real-restriction
KIND: external
SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1047-L1051
DISPOSITION: EXCLUDED
REASON: outside every root closure of track N after the G2 fb-real repair; checked DEPS and ROUTES in every packet and reachability from all six frozen roots: no remaining consumer. The owning K statement is retained in its own graph; its source citation at fb-real has an incompatible entire-strip carrier.
COVERAGE_STATUS: REVIEWED
EXTRACTOR: claude-suborch-INP
REVIEWER: sol-review-N-f
```

## Failure 2: complete the direct energy-proof inputs

Complete replacement for ef-en; only DEPS and the two added EDGE lines change:

```text
NODE: stepN:p11:ef-en
KIND: step
TITLE: Energy inequality
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89
CONTRACT_ID: stepN:p11:ef-en
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:energy-free; in the contradiction branch with the constructed first-exit time t*; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: t*
SOURCE_CONCLUSION: (m/2)Delta^2<=A+¦<Pi omega_0,Delta I>¦+C with A=¦(g+f_*)(y-tilde(t*))-(g+f_*)(y-tilde(0))¦<=2(zeta_g+eta), C=¦<omega_0,Pi^perp Delta I>¦, ¦<Pi omega_0,Delta I>¦<=(5/16)m Delta^2; hence (3/16)m Delta^2<=A+C and (3 m r-tilde^2)/256>0.0117 m r-tilde^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:real-system, stepN:p11:ef-adm, stepN:p11:ef-tube, bpN:p7:resonance-data, bpN:p4:norm, bpN:p7:ext-taylor, bpN:p11:ext-class, bpN:p11:s-real#data, bpN:p11:wfield, bpN:p7:ext-linalg, bpN:p1:ext-norms
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | direct package or input used by this proof step
EDGE: bpN:p4:norm | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:real-system | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | energy conservation G^R o y constant (Lemma real-system(b))
EDGE: stepN:p11:ef-adm | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | ¦Pi omega_0¦<=(5/4)delta
EDGE: stepN:p11:ef-tube | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | the segment [I-tilde(0),I-tilde(t*)] lies in U (Taylor along I_s)
EDGE: bpN:p7:ext-taylor | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | apply the one-variable Lagrange remainder to h evaluated on the fast action segment, which ef-tube places inside U
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | the energy values of g and f_* are evaluated on the extended orbit
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | extended real Hamiltonian and orbit carrier
EDGE: bpN:p11:wfield | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | the conserved Hamiltonian uses the weighted field X^c
EDGE: bpN:p7:ext-linalg | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | self-adjointness and Pi^perp=1-Pi split the linear Taylor term into <Pi omega_0,Delta I> and <omega_0,Pi^perp Delta I>
EDGE: bpN:p1:ext-norms | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-en@L89-L89 | Euclidean Cauchy-Schwarz gives ¦<Pi omega_0,Delta I>¦ <= ¦Pi omega_0¦_2 Delta before the 5/16 bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-global-N
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Part 7 energy-core is a proof template, not an applicable conditional lemma on this slow-fast carrier. The inline Part 11 proof uses extended energy conservation, one-variable Taylor along the fast segment, and projection algebra. No coercivity in the slow directions or canonical projected orbit is assumed.
```

## Suspected blueprint defects and limits

No new pinned-paper defect is asserted. The inherited n=0 branch omissions and canonical-to-extended Taylor contract mismatch remain accurately exposed, as requested by G1/G4. G2/G3 identify the source's local proof inputs rather than changing its mathematics. No frozen declarations, source files, packets, SPEC, Lean implementation modules or git state were changed or used as proof-status evidence.

## Validation

- `sha256sum -c docs/graph/N/CORPUS.sha256`: exit 0; all 15 source files OK.
- `sha256sum -c docs/graph/N/IMPORTS.sha256`: exit 0; all four owning-source files OK.
- `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_imports.py docs/graph/N/packets --slice N-imports --self-track N`: exit 0 with the one unreferenced import reported above. This command was run without add/prune.
- Pending inventory: exactly 14 nodes (5 imports, 1 p1, 4 p4, 1 p12, 1 p11c, 2 p11ab), zero pending coverage items in those packets.
- Proposed correction validation: ef-en changes only DEPS/EDGE; the imported coverage alternative changes only DISPOSITION/REASON. Node deletion is explicit because retention, rather than its source fields, is the failing condition.
- Packet snapshot SHA256 values follow; the source and coverage packets are otherwise untouched.

- `docs/graph/N/packets/N-imports.nodes.md`: `b4c0c86ba2f0a7dd0d705cbc02bd4a43aa0c40baa8d4ca3be6bf14c9825b5663`.
- `docs/graph/N/packets/N-imports.coverage.md`: `8ba313c735463030aeb040d4ab2b65e1cbc8a4e26529b5153c23081048eeb696`.
- `docs/graph/N/packets/N-p1.nodes.md`: `af9cb0a568322ba2717fccd5e3341ee11827e2699c8e3e4214246e68dd742454`.
- `docs/graph/N/packets/N-p1.coverage.md`: `efad647ccd2387a4247e9f0d80a1d011504122b17f4b30583c97211aa8787c08`.
- `docs/graph/N/packets/N-p4.nodes.md`: `354e62f54682e6febcbf35ee38c0ddafe40afefb5bb13d53f79ebbb01c442fbf`.
- `docs/graph/N/packets/N-p4.coverage.md`: `6792a24d3a650900236be627d660bf42dfd7d1c1fbc35731096dccb1078c15c7`.
- `docs/graph/N/packets/N-p12.nodes.md`: `e4c991a5fe145e6ff6b0b98be653be5d6d483994b54dfa1eb9936000e468cbfc`.
- `docs/graph/N/packets/N-p12.coverage.md`: `cfbc98d7f8d46ace90c77938c95c86b65f45de45e61e3d7972c043bc2f4fdcf2`.
- `docs/graph/N/packets/N-p11c.nodes.md`: `c08cdb5908948e25f1d019454b768b32661fc2205dde33f5689f3eb517b07330`.
- `docs/graph/N/packets/N-p11c.coverage.md`: `0c94102b72c2f43223317c2daa10acdb3c2d1091d1a13ef874518d221b51ac31`.
- `docs/graph/N/packets/N-p11ab.nodes.md`: `7d37d2e7023ac75558ca786012ec716f4341de6c8aa2f3f8e825d2dde23a7527`.
- `docs/graph/N/packets/N-p11ab.coverage.md`: `4a8a3334cd9397472984c54d86556bd7615e67319f9231752f6e187daf9deb3e`.

Final read-only checks: the table has exactly the 14 pending IDs, with 12 PASS and 2 FAIL; every recorded packet SHA256 is unchanged. Parsed replacement-field comparison confirms only DISPOSITION/REASON for the coverage alternative and DEPS/EDGE for ef-en change. An in-memory overlay of the energy correction plus the required import deletion leaves all 719 surviving nodes reachable from the six roots, with no dependency cycle or missing target. This overlay was not written to any packet. Balanced fences and trailing-whitespace checks pass. `git diff --check -- docs/graph/N/reviews/GLOBAL-delta.md` exits 0 with no output. No Lean command or state-changing git operation was run.
