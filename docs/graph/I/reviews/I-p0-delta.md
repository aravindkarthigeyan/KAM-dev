# I-p0 delta topology review

Reviewer: `sol-delta-I-a`, 2026-10-27. Marker: `delta-I-a`.
Independent of extractor `sonnet-extract-I-p0` and slice reviewer `sol-review-I-p0`.

**Verdict: PASS for all proposed records: 7 nodes and 39 coverage items.**

I read `DELTA-BRIEF.md`, `REVIEW-BRIEF.md`, `SPEC.md` including its rulings, the repository rules and decisions, the slice review, both current packets, the raw Part 0 source, and every proposed node's statement, proof and EDGE span. I compared the seven proposed anchor contracts with their authoritative frozen definitions/theorem signatures and checked all 34 anchor identity tuples against only the manifest identity fields (path, export, anchor ID, contract ID/version, ABI hash). I used no implementation modules, providers, Lean proof bodies, proof-status evidence or manifest state fields.

The table spans below are in `blueprint-I/parts/` unless prefixed otherwise. A node row covers all its EDGE locators, not just its declaration header. The tables distinguish node records from coverage records even when their IDs coincide. PASS certifies source/topology fidelity, not a mathematical proof or Lean implementation.

## Proposed nodes

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p0:domains#actionNbhd | PASS | p0-conventions.tex #bpI:p0:domains@L41-L47 | Source fields, direct uses, package discharge and locators agree. |
| bpI:p0:restricted#restrictedHamiltonian | PASS | p0-conventions.tex #bpI:p0:restricted@L139-L153 | Source fields, direct uses, package discharge and locators agree. |
| bpI:p0:restricted#restrictedVectorField | PASS | p0-conventions.tex #bpI:p0:restricted@L139-L153 | Source fields, direct uses, package discharge and locators agree. |
| bpI:p0:restricted#IsRestrictedSolutionOn | PASS | p0-conventions.tex #bpI:p0:restricted@L139-L153 | Source fields, direct uses, package discharge and locators agree. |
| bpI:p0:g1 | PASS | p0-conventions.tex #bpI:p0:g1@L215-L253; p2-iso-iteration.tex #bpI:p2:g1@L338-L355 | Source fields, direct uses, package discharge and locators agree. |
| bpI:p0:kepler | PASS | p0-conventions.tex #bpI:p0:kepler@L299-L303; p6-kepler.tex #bpI:p6:kepler@L43-L48 | Source fields, direct uses, package discharge and locators agree. |
| bpI:p0:r3bp | PASS | p0-conventions.tex #bpI:p0:r3bp@L305-L319; p8-r3bp.tex #bpI:p0:r3bp@L214-L232 | Source fields, direct uses, package discharge and locators agree. |

## Proposed coverage records

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p0:domains#actionNbhd | PASS | p0-conventions.tex #bpI:p0:domains@L41-L47 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p0:restricted#restrictedHamiltonian | PASS | p0-conventions.tex #bpI:p0:restricted@L139-L153 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p0:restricted#restrictedVectorField | PASS | p0-conventions.tex #bpI:p0:restricted@L139-L153 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p0:restricted#IsRestrictedSolutionOn | PASS | p0-conventions.tex #bpI:p0:restricted@L139-L153 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p0:totality | PASS | p0-conventions.tex #bpI:p0:totality@L184-L211 | Exclusion checked against the raw span and actual consumers. |
| bpI:p0:g1 | PASS | p0-conventions.tex #bpI:p0:g1@L215-L253 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p0:g1-remarks | PASS | p0-conventions.tex #bpI:p0:g1-remarks@L255-L266 | Exclusion checked against the raw span and actual consumers. |
| bpI:p0:head-remarks | PASS | p0-conventions.tex #bpI:p0:head-remarks@L288-L297 | Exclusion checked against the raw span and actual consumers. |
| bpI:p0:kepler | PASS | p0-conventions.tex #bpI:p0:kepler@L299-L303 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p0:r3bp | PASS | p0-conventions.tex #bpI:p0:r3bp@L305-L319 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p0:r3bp-remarks | PASS | p0-conventions.tex #bpI:p0:r3bp-remarks@L321-L327 | Exclusion checked against the raw span and actual consumers. |
| heading:bpI:p0 | PASS | p0-conventions.tex #bpI:p0@L1-L1 | Exclusion checked against the raw span and actual consumers. |
| heading:bpI:p0:conventions | PASS | p0-conventions.tex #bpI:p0:conventions@L10-L10 | Exclusion checked against the raw span and actual consumers. |
| heading:bpI:p0:kdefs | PASS | p0-conventions.tex #bpI:p0:kdefs@L39-L39 | Exclusion checked against the raw span and actual consumers. |
| heading:bpI:p0:idefs | PASS | p0-conventions.tex #bpI:p0:idefs@L94-L94 | Exclusion checked against the raw span and actual consumers. |
| heading:p0:heading-L182 | PASS | p0-conventions.tex #p0:heading-L182@L182-L182 | Exclusion checked against the raw span and actual consumers. |
| heading:bpI:p0:theorems | PASS | p0-conventions.tex #bpI:p0:theorems@L213-L213 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L46 | PASS | p0-conventions.tex #source@L46-L46 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L53 | PASS | p0-conventions.tex #source@L53-L53 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L62 | PASS | p0-conventions.tex #source@L62-L62 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L71 | PASS | p0-conventions.tex #source@L71-L71 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L91 | PASS | p0-conventions.tex #source@L91-L91 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L107 | PASS | p0-conventions.tex #source@L107-L107 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L119 | PASS | p0-conventions.tex #source@L119-L119 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L127 | PASS | p0-conventions.tex #source@L127-L127 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L136 | PASS | p0-conventions.tex #source@L136-L136 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L150 | PASS | p0-conventions.tex #source@L150-L150 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L166 | PASS | p0-conventions.tex #source@L166-L166 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L179 | PASS | p0-conventions.tex #source@L179-L179 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L249 | PASS | p0-conventions.tex #source@L249-L249 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L284 | PASS | p0-conventions.tex #source@L284-L284 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L302 | PASS | p0-conventions.tex #source@L302-L302 | Exclusion checked against the raw span and actual consumers. |
| p0:source-L317 | PASS | p0-conventions.tex #source@L317-L317 | Exclusion checked against the raw span and actual consumers. |
| p0:prose-L3-L8 | PASS | p0-conventions.tex #prose@L3-L8 | Exclusion checked against the raw span and actual consumers. |
| p0:prose-L12-L37 | PASS | p0-conventions.tex #prose@L12-L37 | Exclusion checked against the raw span and actual consumers. |
| bpI:p0:domains#openness | PASS | p0-conventions.tex #bpI:p0:domains@L43-L44 | Exclusion checked against the raw span and actual consumers. |
| bpI:p0:restricted#hamiltonian-agreement | PASS | p0-conventions.tex #bpI:p0:restricted@L146-L146 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p0:nearcircular#witness-uniqueness | PASS | p0-conventions.tex #bpI:p0:nearcircular@L164-L164 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p0:keplerborder#hessian-agreement | PASS | p0-conventions.tex #bpI:p0:keplerborder@L176-L177 | Maps to the correct existing node(s); source claim is accounted for. |

## Resolution of the slice-review failures

- `actionNbhd` now states the set definition and its immediate real-slice reading, without inserting openness into the frozen definition contract. The separate `#openness` item records the derived assertion. I re-read Part 3 `bpI:p3:hypothesis-d` L274–283 and K `step:p4:h1-open` L316–319: the latter supplies openness of the working domain directly as a union of balls. Excluding the independent duplicate arbitrary-set assertion does not remove a root prerequisite.
- The radius and primary uses of the restricted Hamiltonian and field are at Part 0 L140. The direct `radiusSq` use in the kinetic energy at L142 is retained only for the Hamiltonian. Its previous field edge was merely transitive and is gone. Collision freedom is genuine typing data in both frozen subtype arguments, not an added regularity assumption.
- The restricted-solution collision and derivative clauses are at L148; the replacement locates both correctly. The frozen predicate's existential collision witness and `HasDerivAt` match the source description.
- I-G1's proof is now located at Part 2 L338–355, and its delegation edge is at that result's frozen binding L335. I independently re-read the full proving unit L329–355. The anchor retains all five derivative bounds, both inverse row-sum bounds, the Diophantine condition on the reference frequency, both endpoint inequalities, nonnegative error, and pointwise complex energy equality. The anchor constants are chosen after the full frozen outer data and before `D,H,K,s,gamma,e,E0`; Part 2's stronger independence claim was not substituted for that contract.
- I-KEPLER delegates at Part 6 L40 and locates the actual proof L43–48, with equality and strict positivity both preserved and no Hessian-invertibility premise.
- I-R3BP locates primary 2 at Part 0 L312. I re-read all its proof/EDGE spans in Part 8 L214–232. Openness/nonemptiness precede the coupling quantifier; `mu0,d,R` are chosen before `mu,z0`; `0 < mu0 <= 1/2`, inclusion of `mu=0`, all-time physical bounds, and arbitrary-local-solution uniqueness are all retained. Its conditional applications remain owned by the seven child steps.

The four added coverage claims have actual owners: Hamiltonian/field agreement at Part 7 L51–70; witness identification and uniqueness at Part 7 L261–274; the Kepler Hessian agreement at Part 6 L58–108; and working-domain openness as above. They are neither silently absorbed into frozen definitions nor linked back into a cycle. The Part 0 remarks are statement-reading/totality commentary: actual quantitative facts occur in the anchors or their proving lemmas. I searched their uses across the corpus, including Parts 2, 5 and 8; the commentary citations do not supply additional hypotheses or independent proof inputs. Headings and source notes are administrative/provenance. Carrier/norm/period conventions at L12–37 are retained in the contracts and graph specification rather than promoted to hypotheses.

## Validation and limits

- Report-table validation: exactly 7 proposed-node rows and 39 proposed-coverage rows, each appearing once in its table. Review-parser dry run: zero replacements/additions and zero unresolved FAILs.
- `sha256sum -c docs/graph/I/CORPUS.sha256`: all eight corpus files OK.
- All 34 manifest identity tuples match. All seven proposed nodes lie in the current union of the four root dependency closures.
- No route records or writer-filled “inherits ... no new binders” fields occur among this slice's proposed nodes.
- No failed record remains in this delta, so no replacement block is required.
- No new suspected blueprint/source defect, deviation, or frozen-statement defect established. This review does not reopen the already passed records or audit the mathematical validity of other slices.
- Only this delta report was written for this slice. No packets, SPEC, frozen files or Lean files were changed; no Lean or build commands and no state-changing git commands were run.

Packet hashes at review:

- `I-p0.nodes.md`: `29692133607412479ee36231132a8250969eebd4438b1be0171157f3eb8c19a3`.
- `I-p0.coverage.md`: `ea3d57b1315d998392990b47da68dbad03283d335625a9ab1aec1615a76f32bf`.
