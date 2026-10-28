# P-p14a2 delta topology review 2

Reviewer: **sol-delta-P-ag**. Marker: `delta-P-ag`. Date: 2026-10-28.

**Verdict: PASS for all 8 assigned PROPOSED nodes and all 24 assigned PROPOSED coverage items.** No replacement block is required.

Read DELTA-BRIEF.md and REVIEW-BRIEF.md in full, and SPEC including the P-FIXED revision and writer rulings. Applied the build-proof-dependency-graph source-only review discipline. This reviewer is distinct from sonnet-extract-P-p14a2, the original reviewer sol-review-P-o and the first delta reviewer sol-delta-P-s. Reviewed the eight current rewrites against the eight FAIL rows and replacement blocks in P-p14a2-delta.md. They match those blocks exactly apart from writer EXTRACTOR metadata. The 24 remaining coverage items are independently checked here, rather than left outside scope as in the first delta.

Re-read all of Part 14a L157–350, with L1–156 context, every selected EDGE use site and the relevant supplier statements in P Parts 0/1/6/7 and N Part 0. Read only the designated frozen Fast and DegenerateHamiltonian declaration files and manifest identity fields when resolving the retargeted anchors; no Lean implementation, provider, proof-status ledger or manifest state field was used. The P-FIXED restoration review covers other slices, not any of these eight records. Already REVIEWED nodes were consulted only for applicability and mappings.

## Node verdicts

All Part-14a locators refer to `blueprint-P/parts/p14a-amd-expsafe.tex`.

| ID | Verdict | Source spans re-read | Reason / prior FAIL resolved |
|---|---|---|---|
| stepP:p14:pt-rho | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-rho@L229-L229; all EDGE use sites; enclosing statement/proof | The added sec-domain#data edge supplies the actual 2π translation and block dictionary at L229. The partialComplexDomain definition gives the real-trace and imaginary-width conditions; periodicity and compact boundedness are paid by tube and x-top. |
| stepP:p14:pt-p3 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232; all EDGE use sites; enclosing statement/proof | The quantifier field now separates all real points of F(G′,D,ρ) from the smaller calV used in assertion (ii). The new partialComplexDomain edge pays the real-trace membership; the proof does not restrict P3 to G. |
| stepP:p14:pt-neg | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-neg@L234-L234; all EDGE use sites; enclosing statement/proof | The new IsPartialPerturbation edge assembles exactly P1–P4 for −P. The normalization identity P(cx w)=f-hat(w)/B₀ is not claimed sign-invariant. |
| stepP:p14:st-sol | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-sol@L282-L282; all EDGE use sites; enclosing statement/proof | The added sec-domain#data edge supplies fast(y₂)=Λ and H^Psi. hnu, lift and st-seg supply differentiability, the derivative and membership; x-calc supplies reversal, and the frozen solution definition retains full endpoint derivatives. |
| stepP:p14:es-axis | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L308-L309; all EDGE use sites; enclosing statement/proof | The new es-par edge supplies δ=(B₀μ)^b/2, directly substituted at L309. es-amd supplies the action drift and prograde/region membership; elements gives a_i=Λ_i²/m_i²; es-const supplies C. |
| stepP:p14:es-assemble | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-assemble@L310-L310; all EDGE use sites; enclosing statement/proof | The new es-par edge supplies the horizon T=exp(cμ^(−a)) at L310. es-const now supplies only the earlier μ_*,c,C choices. The helper and axis steps give the required safety and drift clauses. |
| bpP:p14:sec-domain#chart-facts | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain#chart-facts@L162-L168; all EDGE use sites; enclosing statement/proof | The direct conv#data edge supplies the physical element/AMD notation used in Ch2. The extra split edge is removed: Ch3 recalls product-chart(c), whose supplier already consumes the splitting. General-n Ch2 is the expressly prescribed one-planet block argument at L168, not application of the n=2 D25 statement. |
| bpP:p14:sec-stopped#data | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-stopped#data@L260-L262; all EDGE use sites; enclosing statement/proof | The two duplicate N-import edges now resolve to P’s own frozen fast and degenerateHamiltonian anchors, as SPEC requires. Complexification remains a genuine N import. The displayed H_nu^± and all prior analytic data are preserved; no stability conclusion is assumed. |

## Coverage verdicts

| ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| stepP:p14:pt-rho | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-rho@L229-L229; enclosing context L157–350 | Mapped to the corresponding checked step node. |
| stepP:p14:pt-p3 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-p3@L232-L232; enclosing context L157–350 | Mapped to the corresponding checked step node, including both the full P3 locus and assertion (ii). |
| stepP:p14:pt-neg | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:pt-neg@L234-L234; enclosing context L157–350 | Mapped to the checked sign-change step. |
| stepP:p14:st-sol | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:st-sol@L282-L283; enclosing context L157–350 | Mapped to the checked solution-conversion step; the neighbouring erosion step has its own separate inventory item. |
| bpP:p14:st-limits | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:st-limits@L289-L291; enclosing context L157–350 | Administrative summary of the conditional stopped theorem and erosion checks; no independent consumed lemma. |
| stepP:p14:es-axis | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-axis@L308-L309; enclosing context L157–350 | Mapped to the checked axis-drift step. |
| stepP:p14:es-assemble | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:es-assemble@L310-L310; enclosing context L157–350 | Mapped to the checked final assembly step. |
| bpP:p14:constants | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:constants@L313-L329; enclosing context L157–350 | The remark audits choices already made at L171–181, L196–205, L221–234, L278–280 and L301–305. Its only references are the outline at L15 and the statement pointer at L296; it makes no additional choice consumed by a proof. |
| bpP:p14:index | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:index@L331-L333; enclosing context L157–350 | Administrative index/period/time dictionary, already represented in section data and st-thr; no proof reference to the remark. |
| heading:bpP:p14:sec-domain | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-domain@L157-L157; enclosing context L157–350 | Heading only; data and chart facts below it have explicit nodes. |
| heading:bpP:p14:sec-pert | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-pert@L208-L208; enclosing context L157–350 | Heading only; the tube and perturbation results have explicit nodes. |
| heading:bpP:p14:sec-lift | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-lift@L237-L237; enclosing context L157–350 | Heading only; uniform-data and lift have explicit nodes. |
| heading:bpP:p14:sec-stopped | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-stopped@L258-L258; enclosing context L157–350 | Heading only; the N-Hamiltonian section data and results have explicit nodes. |
| heading:bpP:p14:sec-expsafe | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:sec-expsafe@L293-L293; enclosing context L157–350 | Heading only; expsafe and its proof steps have explicit nodes. |
| heading:bpP:p14:notes | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#bpP:p14:notes@L335-L335; enclosing context L157–350 | Administrative section title. |
| p14a:source-L298 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#source@L298-L298; enclosing context L157–350 | Provenance of the theorem; the proof follows at L300–311 and explicitly uses the imported N theorem through stopped. |
| p14a:prose-L159-L168 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#prose@L159-L168; enclosing context L157–350 | Both consumed units are mapped: sec-domain#data for coordinates/notation and sec-domain#chart-facts for Ch1–Ch3. |
| p14a:prose-L260-L262 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#prose@L260-L262; enclosing context L157–350 | Mapped to the checked sec-stopped#data node, including H_nu^± and the fixed analytic inputs. |
| p14a:prose-L337-L337 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#prose@L337-L337; enclosing context L157–350 | Sources-read catalogue; provenance, not an extra theorem application. |
| p14a:prose-L341-L341 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#prose@L341-L341; enclosing context L157–350 | Administrative checks of facts already represented by the AMD and stopped proof steps. |
| p14a:prose-L343-L343 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#prose@L343-L343; enclosing context L157–350 | Errata commentary and collar comparison; no additional premise or result is consumed. |
| p14a:prose-L345-L345 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#prose@L345-L345; enclosing context L157–350 | Consumer/forward-reference commentary; N-PARTIAL-CONVEX is already an explicit imported prerequisite at its actual applications. |
| p14a:prose-L347-L347 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#prose@L347-L347; enclosing context L157–350 | External-input catalogue, with actual uses attached at consumers. x-top already contains the compact-neighbourhood form cited from e-comp; no redundant direct e-comp edge is required. |
| p14a:prose-L349-L350 | PASS | blueprint-P/parts/p14a-amd-expsafe.tex#prose@L349-L350; enclosing context L157–350 | Label index and group terminator; administrative. |

## Conditional applications and overcorrection checks

- **Full perturbation domain:** N Part 0 L284–290 defines F through the real fast/slow blocks and strict imaginary width. At P L229, translating the fast real angles into [0,2π) keeps the point in F and moves it into the compact ρ-neighbourhood of K_* inside T. Positivity of κ and r₀ gives 0<ρ≤κ. The B₀ bound uses periodicity and compactness, with constants fixed before μ. At L232, P3 applies to *all* real w with cx(w)∈F; only assertion (ii) is specialized to calV. No newly added edge restricts the larger real locus.
- **Sign and normalization:** N Part 0 L301–311 defines precisely the four clauses of IsPartialPerturbation. Differentiability, norm ≤1, realness and fast periodicity pass to −P. The physical normalization identity changes sign and is not part of the asserted invariant predicate. P L260–262 then defines H_nu^- as the N-Hamiltonian for (−h,−P), without time rescaling or a new slow-periodicity premise.
- **Genuine solutions:** N Part 0 L165–172 requires domain membership, Hamiltonian differentiability and two-sided derivatives at every tested time. The step st-sol has those inputs from hnu, lift and st-seg on [l,r]; restricting to [0,r] and reversing onto [0,−l] preserves them, including endpoints. The coordinate datum edge is a direct use, not a redundant appeal to the N theorem itself.
- **Physical drift and assembly:** the identity a_i=Λ_i²/m_i² is supplied by elements on guarded prograde elliptic points. With Λ_i(z(t)),Λ_i(z₀)<u_i and action drift ≤δ, the raw proof gives 2u_iδ/m_i². The *chosen* δ at es-par, not merely the earlier fixed data, converts this to (u_i/m_i²)B₀^bμ^b≤Cμ^b. The same parameter step supplies the horizon explicitly consumed at L310. These added edges are direct substitutions, not merely transitive availability.
- **General-n chart facts:** P Part 7 L119–145 supplies the one-planet definition, norm identity, elements and surjectivity; L188–205 defines the product chart and supplies its analytic/canonical/periodic and splitting statements. P L168 expressly calls for the componentwise one-planet proof. Each physical body pair is identified by product-def; summing Λ_i−C_i=Γ_i gives physicalAMD=Γ using conv#data. The removed p6:split edge would duplicate the supplier's argument; the retained product-chart and sec-domain#data edges are the actual local uses. No restored P-FIXED lattice theorem is used here.
- **Own-anchor resolution:** SPEC requires definitions already transcribed in P to resolve to P anchors. Manifest identity fields confirm `planetary.fast.v1` / `KAM.Planetary.fast` / `Fast.lean` / ABI `592a25e5b4ec439e42bd78bc02e0dfd989b1d261387db6319bca10c6d17c1067`, and `planetary.degenerateHamiltonian.v1` / `KAM.Planetary.degenerateHamiltonian` / `DegenerateHamiltonian.lean` / ABI `331c8377743700e4a9163dbc7e9b05d210b63657fbfc42851bf92ee8731f02a6`. The frozen definitions match the first-block projection and H₀(fast z₂)+νP(ν,z). Taking the perturbation family constant in its coupling argument gives the displayed N-Hamiltonian. No duplicate-import edge remains in sec-stopped#data.

The generic source-setting prose in the records refers to the enclosing premises and fixed data; it expressly keeps derived facts in DEPS. It adds no conclusion as a hypothesis. There are no ROUTES or mechanically added alternative-route EDGE records in the eight selected nodes. None uses the writer's generic no-new-binders quantifier filler; the source quantifiers are explicit here.

## Coverage and source observations

The constants and index remarks are audits of choices already made, not extra producers. A full-corpus reference search finds only L15 and L296 pointing to constants; st-limits and amd-uses have no consuming reference, and index is only named in its own label/index catalogue. The two section-data paragraphs remain NODE mappings and are not discarded as notation. L298 and the notes catalogue are provenance/pointers; no root is excluded for the old P-FIXED deferral.

Some catalogue rationales use “every cited result is linked” loosely. A mention inside the catalogue is not itself an application. In particular x-top already states the compact-neighbourhood fact while citing e-comp; the corrected ud-cell uses x-top directly. Keeping the catalogue EXCLUDED is accurate and does not require adding a non-direct e-comp edge. Actual planar, finite-sum, reverse-triangle, complexification, identity and holomorphic inputs are linked at their consuming proof steps.

No new blueprint mathematical defect or pinned-paper erratum is asserted. The previously recorded L146 left-endpoint typo lies in the other slice's reviewed proof and is not silently repaired or used as a new premise here. This review concerns faithful source topology, not proof completion of N-PARTIAL-CONVEX or either P root.

## Verification and snapshot

Selected inventory: exactly 8 PROPOSED nodes and 24 PROPOSED coverage items. All have individual verdict rows. Checked every DEPS/ROUTES target exists, exactly one correctly separated EDGE per entry, all source/consumer ranges in bounds, every selected NODE coverage target exists, and no prerequisite path returns to any selected node. All eight prior delta replacements are present apart from EXTRACTOR metadata; no new topology change is proposed.

Read-only structural command:

```sh
python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-p14a2 --structural
```

Exit 0:

```text
P-p14a2: 56 nodes, 340 edges, 72 coverage items, 0 problems, 0 TODO records (not counted: --structural)
```

This supplies no new semantic verdict for already REVIEWED records. Only this requested report is written; no packet, SPEC, source, manifest or git history is edited. No Lean or repository-wide source lint is run. The report passes its whitespace check; final input hashes are checked unchanged before handoff.

| Input | SHA-256 |
|---|---|
| `docs/graph/P/packets/P-p14a2.nodes.md` | `041d00436793083f7053dd9b96be470b9a46e8119a9a449aadbccaebe16d804c` |
| `docs/graph/P/packets/P-p14a2.coverage.md` | `bf260552c2a306fa2860e20107d662ebfbe328387adf0ce3039bb0e6f6f3b460` |
| `docs/graph/P/reviews/P-p14a2-delta.md` | `63ce62a02822784f1c7ffc669886170ffe0b65c0fdfc76351034d1e712eeb7d8` |
| `docs/graph/P/SPEC.md` | `46c1cf323866edc519123794aae8b00a0c479619e3041fe9dec3d1de777b53bf` |
| `docs/graph/P/DELTA-BRIEF.md` | `af81282f3d2ab67fe709018af8200c900330629894b7df16ff5bf252c8e6f04b` |
| `docs/graph/P/REVIEW-BRIEF.md` | `85a08dd77f773f2fb7ca26559b1f01816cf8aa3d721068be0b4eacdd3b68c207` |
| `blueprint-P/parts/p14a-amd-expsafe.tex` | `a2735bd6fbc36dc765bafccac43af4e3742b101a7e0f2d97725e70ac37ff8452` |
