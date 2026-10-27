# Global recheck of track K

Reviewer: `sol-global-K`. Date: 2026-10-27.

**Verdict: PASS for the mathematical repairs and the five global root closures, relative to the explicitly revised eleven-input boundary.** F1–F5 are resolved within this recheck's scope. There is one minor policy-text correction, N1 below. There is no new mathematical source gap.

This recheck examines commit `2f355ea0635303cba96e6845a0c807e730bec911` and the current assembled graph at HEAD `4c6a7ef`. It does not replace the separate review of individual rewritten graph records. In particular, I have not re-audited their individual source-field transcriptions, EDGE locators, or review-status fields. The structural checks below traverse their dependency IDs and routes; the mathematical checks use the blueprint itself.

Only `docs/graph/K/reviews/GLOBAL-recheck.md` is written. No Lean, build, source lint, provider inspection, implementation inspection, or state-changing git command was run. Axioms were not elaborated or printed. This verdict is source-graph closure, not Lean proof closure.

## Frozen statements and conclusions

The repair changes only three blueprint files: Part 1 adds E11 and corrects the McShane bound, Part 2 repairs the averaging argument, and Part 4 supplies the distance-to-set argument. The blueprint diff has 19 inserted and five removed lines. Parts 0 and 3 are byte-identical to `2f355ea^`.

Direct byte comparisons against `2f355ea^` found all 25 track-K frozen files unchanged, including their full statements. The frozen manifest is also byte-identical, with SHA-256 `8be8871b726f78aca2d9ad235157c693662486bef05830c229ee5d5440d06ca8`. All 25 graph anchor identities still match its file, export, anchor ID, contract ID/version and ABI fields, and have author approval. No ABI was recomputed by Lean.

For each of the five roots, the current graph's four source fields and six contract/identity fields were compared with the pre-repair graph; there are **zero changes**. In particular:

- HEAD still concludes complement volume at most C ε^(1/4), with cover radius C√ε.
- HEAD-Q still concludes complement volume at most κ times the original fundamental-domain volume, without a boundary-layer hypothesis.
- G1 retains the order “fixed tuple, then C₁,C₂, then all domains/Hamiltonians/tori/frequencies/errors”, uniform γ≤γbar, and the μ/2 conclusion margins.
- G2 retains γ-independent c, no γbar premise, and equality up to a real phase on T(ρ/2).
- G3 retains arbitrary natural dimension, a bounded possibly nonmeasurable Ω, and a constant chosen before every α>0.

The nonnegativity restriction newly stated for McShane is on an unfrozen auxiliary lemma only. It does not strengthen any root hypothesis: its sole root application uses β=η₀=A₀ ε γ^(-2)≥0 by (SA).

## F1: verdict for all ten source obligations

**PASS**, under the newly admitted E11. This is an explicit enlargement of the external boundary, not a derivation of measure theory from E1–E10. The current SPEC's external-input declaration and change log authorize it, and the assembled graph header agrees. The stale fallback sentence is recorded separately as N1.

E11 is stated at `blueprint/parts/p1-analysis.tex:98–107`. It provides product Lebesgue measure, Tonelli for measurable sets, continuity from below for increasing measurable sets, box volumes, and null box boundaries. These are valid classical measure facts. Box side lengths are used with ordered endpoints; the inner box in the layer estimate is taken empty when its side length becomes negative. No claim about unverified Mathlib implementation or theorem-name applicability is needed for this mathematical verdict.

| Original obligation | Verdict and payment in the revised blueprint |
|---|---|
| Product-Lebesgue identification, `bp:p1:lip-image-product#product-lebesgue` | **PASS.** Part 1:1116–1120 now explicitly invokes E11. The coordinate identification preserves the max norm, and E11 supplies the measure identification independently of that metric identity. The former unproved helper is no longer needed. |
| McShane clamping, `step:p1:mc-clamp` | **PASS.** Part 1:1166–1169 and 1188–1191 explicitly state β≥0. Clamping to the nonempty interval [−β,β] is 1-Lipschitz and fixes every component of the original map. The empty source set is covered by the zero extension, including β=0. Part 4's η₀ is nonnegative. |
| Average applicability in Part 2 | **PASS.** Part 2:873–878 uses E6's norm-of-integral bound on the unit cube instead of the periodic averages corollary. Both torsions are continuous there: the original Gram determinant is nonzero, and the perturbed determinant was established before defining its frame/torsion. Thus their difference is integrable, linearity identifies its integral with the difference of averages, and its uniform bound gives C_ΔT d/δ² because the cube has volume one. The old inverse and the ≤1/2 perturbation smallness then supply Neumann's premises. No primarity or periodicity assumption is added to the general perturbation lemma. |
| Slab Fubini, `step:p4:slab-fubini` | **PASS.** Part 4:95–101 now has an allowed Tonelli input in E11. The actual set integrated is the intersection of a bounding cube with the inverse image of (−a,a) under a continuous linear form, hence Borel. Its sections are intervals intersected with [−R,R], so their lengths are at most 2a/abs(k_i). Tonelli and the (n−1)-dimensional box volume give the stated estimate. For n=1 the other-coordinate factor is the singleton zero-dimensional space of volume one; n=0 remains the separate G3 case. No measurability of Ω is needed, since only its containment in a cube is used. |
| Distance to the complement, `step:p4:ml-mixed` | **PASS.** Part 4:1133–1139 now proves the distance-to-set bound from the triangle inequality and infima. B is bounded in positive dimension, so Bᶜ is nonempty; its distances are finite and bounded below by zero. Taking infima gives d(x,Bᶜ)≤abs(x−x′)+d(x′,Bᶜ); swapping x,x′ proves the 1-Lipschitz bound. Consequently good and boundary actions are separated by γ, exactly as required for the mixed Lipschitz estimate. |
| Product volumes in `step:p4:mm-count` | **PASS.** Part 4:1179–1185 is now paid by E11's product formula. The measurability conditions are checked below. The angle factors have volumes 1 and 2^n, and the 3/2-Lipschitz bound in dimension 2n yields (3/2)^(2n)2^n=(9/2)^n, unchanged. |
| Increasing dyadic exhaustion, `step:p4:dy-exhaust` | **PASS.** Part 4:1248–1254 constructs increasing finite unions E_j of closed cubes with union B. They are measurable and lie in the bounded B. E11 gives volume E_j→volume B; finiteness and measurable subtraction give volume(B minus E_j)→0. Thus some j has remainder≤η for η>0. |
| Null cube boundaries, `step:p4:dy-open` | **PASS.** Part 4:1256–1259 uses a finite family of cubes. E11 gives equal open/closed cube volumes and null boundaries; finite subadditivity therefore makes E_j minus B′ null. The selected approximation bound survives passing to the union of interiors. |
| Product volume in `step:p4:hq-cover` | **PASS.** Part 4:1297–1304 uses the product of the measurable half-open angle cube with B minus B′. E11 gives exactly its volume, so the two error terms remain at most κ volume B. No measurability of kamCover is asserted or needed. |
| Additional product volume in `step:p4:hq-trivial` (original F4) | **PASS.** Part 4:1271–1274 uses the measurable B and the half-open unit angle cube. E11 supplies volume F_B=volume B. This pays the previously unmarked use before the choice of the qualitative threshold. |

The product-formula side conditions do hold; E11 has not been applied to an arbitrary unknown subset. Let d_B(I)=infDist(I,Bᶜ). The inline proof makes d_B continuous. The Diophantine set is the countable intersection, over nonzero integer k, of the closed conditions abs(k·ω)≥γ/abs(k)_1^τ. The frequency map g is continuous on the real open neighbourhood of B established in `bp:p4:freq-map`. Consequently

- Z={d_B≤γ} is closed;
- A_γ=B ∩ {d_B≥2γ} ∩ g^(-1)(Dio) is Borel, taking the preimage relative to that neighbourhood;
- B∩Z and Zᶜ minus A_γ are Borel;
- B minus B′ is Borel since B,B′ are open.

The angle cubes are Borel. Their half-open volume follows from the equal open and closed box volumes by monotonicity. These elementary measurability checks use only the sets already constructed in the blueprint; they require no measurability of the union of tori, the KAM cover, or g(B). Image estimates continue to use outer measures.

## F2–F5 verdicts

| Finding | Verdict within this recheck's scope |
|---|---|
| F2: pointer-only full-unperturbed-lemma edges | **PASS.** The matrix proof at Part 4:537–543 is unchanged and computes the norms of L⁰=(Id;0), N⁰=(0;Id) directly. No ε-bound is mathematically needed. The closure traversal confirms that neither `bp:p4:matrix-norms` nor `step:p4:mn-rowsum` now depends directly on the full conditional `bp:p4:unperturbed` result. The separate record reviewer owns the rewritten block details. |
| F3: HEAD's (SA) construction edges/locators | **PASS for the mathematical obligation.** The positive and zero-error constructions are unchanged at Part 4:1220–1226 and 1228–1231. For positive ε, γ=(ε/c_*)^(1/4) lies in (0,1] and ε=c_*γ⁴. At ε=0, (SA) holds for every γ∈(0,1]. The traversal confirms a direct `bp:p4:SA` prerequisite at both consumers. Verification of the remapped individual locators is reserved for the other reviewer. |
| F4: product volume at the qualitative trivial case | **PASS.** Paid by E11 as the tenth entry of the F1 table. No change to the qualitative root or its threshold order is needed. |
| F5: missing A1–A6 inventory aliases | **PASS structurally.** All six coverage IDs now resolve to `NODE bp:p2:admissible`; the underlying definition at Part 2:306–317 is unchanged. They remain aliases of a hypothesis package, not six new hypotheses or proof nodes. Individual coverage-record transcription is reserved for the separate reviewer. |

## Current global closures

The graph was parsed and traversed afresh, following `NODE -> prerequisite`, both `DEPS` and `ROUTES`. Both alternatives at `step:p2:avg-deriv` are included for reachability; neither is silently made a conjunctive premise of the other.

| Root | Verdict | Nodes in closure | Marked source gaps | External leaves |
|---|---|---:|---:|---|
| `bp:p0:head` | **PASS** | 443 | 0 | E1–E11 |
| `bp:p0:headq` | **PASS** | 453 | 0 | E1–E11 |
| `bp:p0:g1` | **PASS** | 229 | 0 | E1–E7, E10 |
| `bp:p0:g2` | **PASS** | 190 | 0 | E1–E7, E9, E10 |
| `bp:p0:g3` | **PASS** | 16 | 0 | E8, E11 |

There are 453 unique nodes and 1,420 EDGE records. There are no unresolved prerequisite/route IDs, directed cycles, or unreachable nodes. Exactly eleven nodes have KIND external: `ext-cauchy`, `ext-rectangle`, `ext-identity`, `ext-mvt`, `ext-schwarz`, `ext-integral`, `ext-fourier`, `ext-lebesgue`, `ext-banach`, `ext-cramer`, `ext-measure`. Their union is precisely E1–E11. There are zero NOTE fields beginning `SOURCE_GAP:` globally or in any root closure.

The mathematical paths remain:

- **G1:** fixed-tuple constants → supplied Part 2 standing data → geometry/exactness → triangular correction → Newton error and frame/torsion perturbation → induction and limit → the frozen conclusion. The averaging repair removes the old periodicity mismatch without changing the ε/γ² closeness or γ⁴ smallness. Its explicit γbar-dependent C₁ still forces e≤1 uniformly.
- **G2:** (S1)–(S4) supply Part 2's geometry at E₁=0 → exact symplectic reducibility → one real phase normalization → two zero-average cohomological estimates → quadratic iteration and the real phase conclusion. Its closure does not acquire E11, G1's Newton proof, or a new γ upper-bound premise.
- **G3:** dimension-zero case, or dominant-coordinate slabs → shell count and lattice summation → countable outer-measure bound. E11 now supplies the actual slab integration; Ω stays arbitrary bounded.
- **HEAD:** G1 at the flat torus → normalization → STAB and reapplication of G1/G2 for frequency dependence → real invariant Lagrangian tori → a small Lipschitz displacement → McShane/lipeomorphism → bad-action volume bound using G3 and E11 → γ=(ε/c_*)^(1/4), or the zero/empty cases. The constants are still chosen before f,ε, and neither strip conventions nor carriers change.
- **HEAD-Q:** measurable finite dyadic inner approximation using E11 → HEAD on B′ → transfer of perturbation hypotheses and cover inclusion → the original relative complement-volume bound. The threshold is still chosen after κ and before f,ε. Nonnegativity of ε is derived on the original nonempty domain, so a possibly empty B′ causes no new premise.

The previously justified exclusions (`cauchy-strip-2`, Part 1 `mixed-difference`, `normalized-unique`, and their unused steps) remain outside the root graph. This recheck does not reopen their individual records.

## N1 — minor: stale external-policy fallback sentence

Evidence: `docs/graph/K/SPEC.md:36–39`. The first sentence admits exactly E1–E11, but the next sentence still says that any unproved fact outside E1–E10 receives a SOURCE_GAP node. Read literally, that fallback would classify the newly admitted E11 itself as a gap. The explicit eleven-input declaration, the change log and this follow-up task make the intended boundary clear; the assembled header already uses E1–E11. This is a policy-text inconsistency, not a mathematical gap or a changed-record finding.

Replace the external-input bullet and its nested fallback at SPEC:36–39 with this complete block:

```markdown
- **External inputs:** exactly the eleven items (E1)–(E11) of Part 1 ((E11) added after the global review)
  (`bp:p1:ext-*`), as `KIND: external`, `LEAN_STATUS: EXTERNAL`.
  - A proof that uses a fact which is neither proved in the blueprint nor one of (E1)–(E11) gets a step node whose
    NOTE begins `SOURCE_GAP:`. Never a silent edge, and never an additional external without a recorded SPEC revision.
```

No graph-node replacement is required for N1. No new mathematical finding or unresolved mathematical question remains within the requested recheck. Final individual-record acceptance remains with the separate reviewer, as instructed.

## Verification receipt

`sha256sum -c docs/graph/K/CORPUS.sha256`: all five files `OK`. `git diff --check` exited 0 with no output. A direct check of this new report found no trailing whitespace and balanced fenced blocks. The four snapshot hashes below were rechecked after writing and remained unchanged. Concurrent delta-review reports were neither read nor changed.

Reviewed snapshot SHA-256 values:

| Artifact | SHA-256 |
|---|---|
| `docs/graph/K/DEPGRAPH.md` | `9f1b6fc47cc591824d981a1110b3f6900dbb15660ddbcaea3fb1bb56302507b7` |
| `docs/graph/K/DEPGRAPH_COVERAGE.md` | `3078635625fae15c89f48487f6b9ceb9632d98cbff06096b76c0bfe3d145673a` |
| `docs/graph/K/SPEC.md` | `1d6dd9d6e4186af72fd7f5b2cc45473651bd9bfe6d023d1496d19c32e81669d8` |
| `manifest/frozen-anchors.json` | `8be8871b726f78aca2d9ad235157c693662486bef05830c229ee5d5440d06ca8` |

Only this Markdown report is an output of the recheck. No frozen defect or pinned-paper erratum is asserted. The intentional source-boundary deviation is the documented admission of E11; no mathematical deviation is introduced by this reviewer.
