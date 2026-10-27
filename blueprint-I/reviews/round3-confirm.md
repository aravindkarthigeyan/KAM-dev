# Track I: round-3 confirmation

## Overall verdict: NOT READY FOR GRAPH EXTRACTION

The consolidation closes the mathematical circular-endpoint defect and both stale Part 3 assertions **in the current TeX sources**. The fresh skim found **no remaining blocking or major defect in the current TeX proof chains for the four frozen theorems**.

The requested confirmation packet nevertheless has two exact remaining items:

1. **I8-01 is only partially closed:** `bpI:p8:x-topo` still asserts the compact-distance/minimum fact without requiring the compact set to be nonempty. The corrected collision lemma handles its empty cases, but its cited external contract remains false as printed.
2. **`blueprint-I/blueprint.pdf` is stale:** p.48 still prints the false circular corollary that round 2 classified as IR2-01. It does not render consolidation `f8f1af8`. The current sources and a forced fresh build contain the corrected corollary.

Neither item requires changing a frozen declaration. Correct the external guard and synchronize the published PDF with the corrected sources, then confirm those two changes. No further rewrite of the confinement or Kepler argument is requested by this review.

## Scope, method and immutable snapshot

This is a focused confirmation audit under `.drafts/briefs/bp-review.md`, with a fresh refute-first skim of **all eight included parts** (2,819 lines, 285,278 bytes), the named PDF, and the four actual frozen theorem contracts. It is not a fresh line-by-line source audit or independent recomputation of every unchanged Newton constant. The earlier reviews provide the baseline; their conclusions were not treated as proof of closure of changed text.

Read `blueprint-I/reviews/round2-closure.md` in full and the actual `git show f8f1af8`. The full consolidation commit is **`f8f1af85a738741485f6f26bae1678adf607e409`**. Initial worktree HEAD was `4cd043c6e83a52f8862bbb9242e6aa99bce98dfd`; unrelated concurrent work was present. `git diff --quiet f8f1af8 -- blueprint-I/parts blueprint-I/blueprint.tex blueprint-I/preamble.tex` returned **0**: the inspected extraction sources are exactly those of the consolidation. Their hashes were rechecked at closeout.

| Source under `blueprint-I/parts/` | Lines | Bytes | SHA-256 |
|---|---:|---:|---|
| `p0-conventions.tex` | 327 | 23,628 | `b7d03bed902122fab0cb1cdcf47816492caad9e55d67aabb8b1e836d187ab13f` |
| `p1-iso-linear.tex` | 597 | 51,869 | `91468c04e5fd62a310052e25471ae69a9fb093e35023c1820f7ab979e57bc98d` |
| `p2-iso-iteration.tex` | 370 | 42,537 | `f2bcdff3e5bd29a51e0246740f69e0bbd6419b925d8ae037b4e89ccf7a288968` |
| `p3-iso-local-charts.tex` | 416 | 39,832 | `78f529636a4615405c7a5f74cfe143914d62a59be1f582adb5deecf451e83827` |
| `p5-confinement.tex` | 201 | 26,696 | `a98919a7c027932f4dd8e5435327cccb881110871a0980e900f3f6970c7fcda9` |
| `p6-kepler.tex` | 168 | 13,475 | `b623ce5f8d2fc890834e5073dbc3c06701ac27ce7e5014efacadfb5107249bb6` |
| `p7-delaunay.tex` | 491 | 60,169 | `589325217120f60e9ceb4fbe17824548de2c7439837456226432bba286b542e9` |
| `p8-r3bp.tex` | 249 | 27,072 | `c3ef67d78cd8a2239bb41b4e163d334902f6dba71ba40bbd5cf52449dead169a` |

Other immutable inputs:

| Input | SHA-256 |
|---|---|
| `blueprint-I/reviews/round2-closure.md` | `9d621e548acf89c27427e1e5c7fab8e18f1400c6b8603d9d46081b7a7aa38d64` |
| Named `blueprint-I/blueprint.pdf` | `8f24c3149d7df58ac8165e75521488c7e47bc0141e98843567e251e52372ee05` |
| Frozen `AllTimeConfinement.lean` | `a34b694a41518bacffd88a22455d8242500d4c0fd7aba434906c0b510cbd91bc` |
| Frozen `IsoenergeticKam.lean` | `7d04c9e99e9e52113212f3a47ee749e577e8ffbf404085615df14d4707300922` |
| Frozen `KeplerBorderedDet.lean` | `87cac117324355fec06e6eeada97de496b13d6d909e503c966ccf6f098d09211` |
| Frozen `RestrictedNearCircular.lean` | `bafd9ad666bf857936ebfa5388861f0a2c22ffab011e122afef3f3b0e4a83373` |

Read AGENTS.md, the governing PLAN/DECISIONS and writer conventions, I PLAN and source records. Compared the actual frozen Iso definitions, including the totalized derivatives, energy/extended torsion, real bordered Hessian, physical region, collision predicates and full `HasDerivAt` solution clauses. Checked the actual K imports used in the proof spine and N Part 3's barrier, periodic continuation, uniqueness and physical-predicate reductions. Re-read pinned HL19 pp.18–21 and Chi05 pp.16–17 for the final theorem/determinant and exact-model interfaces. Their unchanged extensive source-error audits are carried forward, not claimed anew. Source pins remain HL19 `ed457633b5c4f0412b7f2c81c3818ef88829dee3420b97864e42223b77eb5241` and Chi05 `31ed844d0916b4b76c02f1da07051f36bfade0338db0b060ec4fa6eab688fe1a`.

The PDF was inspected by complete text extraction and selected page images, including p.48 of the named and current renderings, and current pp.5,36,57. The fresh mathematical skim used the current TeX of every part; a stale PDF was not silently substituted for the corrected sources.

## Every OPEN/NEW round-2 item

Statuses in this table concern **current `parts/*.tex`**. The separate stale-PDF problem is recorded below.

| Round-2 ID | Round-2 status | Round-3 status | Current anchor and independent check |
|---|---|---|---|
| **IR2-01** | NEW major | **CLOSED in TeX** | `bpI:p7:circular`, p7:301–306, now extends only formulas (a),(b), the scalar energy/angular-momentum identities and means. It expressly excludes C-membership, Delaunay elements on C and the noncircular chart at e=0. Repeating L=1,e=0,ell=g=0 gives q=(1,0),p=(0,1), E=−1/2,Gamma=1; the revised statement accepts these scalar identities and no longer demands 1<1. The proof explicitly separates the energy computation from the strict G²<L² step. |
| **I67-05** | OPEN, partially fixed | **CLOSED in TeX**, same repair as IR2-01 | The circular formulas, means and mass dictionary remain available at e=0, while the physical Delaunay chart remains restricted to 0<e<1. No e>0 premise has been added to the shared circular formulas needed by P. This is not a second independent gap. |
| **I3-01** | OPEN text; proof objection moot | **CLOSED** | `bpI:p3:points`, p3:255, now distinguishes I0 from the actual middle point Phi^−1(E,m_c(I0)); T7 at p3:383 explicitly says I0 is not asserted to lie on the energy arc. Only its slope coordinate is ordered. For constant f=epsilon, E=h(I0)+epsilon can differ from h(I0); the revised formulation and Part 5 still apply. |
| **I3-02** | OPEN text; proof obligation closed downstream | **CLOSED** | `bpI:p3:consumption`, p3:408–409, now directs deformed slope placement, separation, whole-region confinement and continuation to `bpI:p5:mu`, `separation`, `confinement`. It no longer derives these from T6/T7. Part 5 supplies the quarter-width margins and the energy-coordinate uniqueness argument; no missing Jordan theorem or strengthened torus output was found. |
| **I5-01** | OPEN minor | **CLOSED** | `bpI:p5:ext-top`, p5:55–56, now names `IsCompact.exists_isMaxOn`/`exists_isMinOn`, requires nonempty compact sets and nonempty disjoint closed sets, and records continuity guards. Actual uses have nonempty Q, K=Phi^−1(Q), N containing K, and a nonempty complement of bounded W. Mathlib's actual extrema and nearest-point declarations have precisely the nonempty/continuity guards used. |
| **I8-01** | OPEN minor | **PARTIALLY CLOSED — remaining item IR3-01** | `collision-exclusion`(b), p8:95–102, now handles S=empty and m=0 by choosing a positive delta; its finite minimum is otherwise over nonempty sets. But `bpI:p8:x-topo`, **p8:29**, still says “for a compact S and a point x notin S, dist(x,S)=min_(q in S) abs(q−x)>0” without S nonempty. That sub-objection was explicitly part of round 2 and survives. The actual two-primary safe-shell application is unaffected. |
| **I8-02** | OPEN minor | **CLOSED** | `stepI:p8:pf-uniq`, p8:229, now uses the total formula extension, C-infinity **on the open collision-free W_mu**, and expressly disclaims smoothness across primary collisions. N's `newton-reduction` and arbitrary-interval uniqueness require only this local smoothness. Competitors need not remain in the constructed safe shell. |
| **I8-03** | OPEN minor | **CLOSED** | Part 8 introduction p8:13 and `totality`(4), p8:248, now describe Chi05's exact alternative heliocentric/extended-phase-space formulation and different normalization/reduction. “Truncated” and “different problem” have been removed there. Chi05 (3.42) retains the square-root potential and (3.43) is its exact reduced Hamiltonian; the direct barycentric proof remains separate and valid. |

Thus **seven of the eight IDs are closed in TeX**, with IR2-01/I67-05 counting the same mathematical repair. The remaining part of I8-01 is minor, but the requested assertion that every OPEN/NEW item has been closed is not true yet.

## Exact remaining findings

| ID | Severity / scope | Evidence and refutation check | Exact closeout action |
|---|---|---|---|
| **IR3-01** (residual I8-01) | minor, external contract in extraction sources | `bpI:p8:x-topo`, p8:29, omits S nonempty in the compact-distance/minimum assertion. S=empty and any real x satisfy compactness and x notin S, but there is no minimizing q in S. In Lean, `Metric.infDist x empty = 0`, so even the asserted strict positivity fails. `IsCompact.exists_infDist_eq_dist` explicitly requires `s.Nonempty`; the preceding sentence's nonempty assumption concerns a separately stated extrema fact and does not bind the newly introduced S. The collision lemma's corrected vacuous cases do not repair its external-fact statement. | Change that clause to “for a **nonempty** compact S and x notin S …”. Retain the already correct empty-set/m=0 cases in `collision-exclusion`(b). No downstream numerical constant changes. |
| **IR3-02** | major artifact mismatch; recurrence of old IR2-01 in the named PDF, **not** a new TeX proof error | Named `blueprint-I/blueprint.pdf`, **p.48, Corollary 7.14**, still says Proposition 7.8(a)–(c) “hold verbatim” at e=0. Its proof still says only chart bijectivity needs e>0. The L=1 circle refutes the inherited strict C-membership, exactly as in round 2. Text extraction and rendered inspection establish the mismatch independently of PDF timestamps. A forced current build prints the explicit exclusion. | Regenerate/synchronize the named `blueprint-I/blueprint.pdf` from the corrected sources, after IR3-01 is fixed. Verify p.48 has the narrowed endpoint statement and check the other consolidation changes appear in the same rendering. The reviewer did not overwrite the tracked PDF. |

These are the only remaining items requested for closeout. The obsolete full-corollary sentence in the **old PDF** is not evidence that the corrected TeX theorem is still false.

## Fresh skim against all four frozen theorems

### I-G1: Parts 0–2

The transcription and final proof preserve the frozen binder order: n,tau,rho,rho_inf, the derivative/frame bounds, mu,gamma_bar,sigma_omega,nu and omega_star precede C1/C2/C3; D,H,K,s,gamma,e,E0 follow. The proof's constants happen to be independent of some permitted inputs, which is harmless. Its C1 contains gamma_bar^4 and forces e<1 before the frequency and admissibility bounds are applied.

The frozen extended-torsion row stays **DH(K)N**, rather than being replaced by omega-transpose off invariance. The last-row identity is `Y=omega^T−(eta^L)^T`; its row norm includes the required factor n. The bordered solve determines the normal constant and scalar frequency change together and imposes the normal energy equation. The tangential energy term is retained as a quadratic defect.

I rechecked the decisive residual signs:

`Delta omega = −omega xi^omega`,

`Ebar = P S^−1 E_lin + Delta²X + xi^omega partial_omega(Delta K)`.

The passage from a projected residual to a full residual uses Neumann invertibility of S=Id−Omega0 E_sym and Q^−1=P S^−1. Gram invertibility alone is not used as a substitute. Geometry/perturbation imports have distinct no-A5 statements and proofs; the ordinary torsion inverse is not smuggled into the isoenergetic hypotheses.

The iteration sums the actual derivative, Gram-inverse and bordered-inverse increments against their original mu slack. It keeps the endpoint ray margin at least nu/2. The schedule spends 4delta_j per step, and the derivative convergence sum has its own extra n/delta0 factor. The limit preserves the mu/2 image ball and derivative bound. Energy averages converge using a common convex image ball; nonresonance makes the invariant limiting energy constant on the whole open strip. A final Gram inverse is not assumed for this conclusion.

The final constants have the correct frozen denominators:

`C1=rho^(4tau) max(gamma_bar^4,c_* delta0^(−2a))`,

`C2=C3=2 C_Delta rho^(2tau) delta0^(−a)`.

The e=0 case produces zero corrections and non-strict closeness bounds, as the frozen theorem requires. No new blocking/major issue was found in this proof chain. This skim does not claim a second independent derivation of every unchanged constant in the earlier full audits.

### I-HEAD: Parts 3 and 5

The compact chart construction uses real bordered nondegeneracy to ensure grad(h) is nonzero and `det D(h,m_c)=−det B_h/abs(grad h)^2` is nonzero. It chooses two rays from open sectors using the valid tau=2 measure theorem, not an endpoint density assertion at tau=1. The finite patches, rays and all smallness thresholds precede f,epsilon,z0. Empty B-prime is handled separately; epsilon=0 is allowed; epsilon<epsilon0 remains strict; angles are unrestricted.

At the flat torus the frozen extended torsion is the bordered Hessian plus the explicitly bounded f correction. It is perturbed by a genuine Neumann estimate. The current T7 orders only base slopes. For the deformed tori, small C1 angle defects give a bijection theta→theta+u(theta) by contraction on all R². Their action graphs stay in the chart collar and their slopes straddle the initial slope with quarter-width margins.

The enclosure uses the open set V between these graphs inside a bounded action chart. On the perturbed energy level, uniqueness of the scalar energy coordinate follows from `F1 epsilon L_Phi≤1/2`; this identifies the relevant boundary with the invariant tori. The N barrier lemma is a first-exit/uniqueness argument, with all of its premises supplied. No Jordan theorem is imported. Crucially, **the whole enclosure**, not just its boundary, lies in the small action chart. Compact-action periodic continuation gives both infinite endpoints despite unbounded lifted angles. Uniqueness then applies to every B-valued competitor on every (a,b) containing zero, with no extra confinement premise on the competitor.

This closes the original mathematical concerns behind I3-01/I3-02. No new blocking/major mismatch with `all_time_confinement` was found.

### I-KEPLER: Part 6 and the circular repair

For the literal frozen matrix, only the `(1,1)` cofactor contributes, giving `3 kappa Omega²/L⁴`. Positive kappa,Omega,L supply positivity; no Hessian inverse is assumed. The complex-to-real bordered-Hessian identification is made using germs on the real slice, with the same finite reindexing as the frozen matrix.

The period-one map is `(theta,I)→(2pi theta,I/(2pi))`, symplectic with unchanged time. It sends kappa to kappa(2pi)² and Omega to Omega/(2pi), hence preserves the displayed converted bordered-determinant value `3 kappa Omega²/I1⁴`. There is no double angle or frequency conversion.

The current circular corollary retains the formulas and means at e=0 while excluding the noncircular region/chart. It does not alter the frozen determinant theorem or reintroduce e=0 into the Delaunay action cone. The old circular counterexample has no false conclusion left to attack in the current statement.

### I-R3BP: Parts 7 and 8

The corrected Kepler contraction uses a thin complex tube around the real eccentricity interval. Its strip self-map bound contains **both** `abs(Re e) sinh(y0)` and `abs(Im e) cosh(y0)`. The derivative contraction is strictly below one, the Picard differences have a uniform geometric bound, and `1−e cos u` stays nonzero. The action-neighborhood square root is kept in the positive-real-part branch and actually maps into this tube. No old complex eccentricity-disc claim was found in the consumer chain.

The Delaunay symplectic calculation preserves the Liouville form up to `d(2Le sin u)`. Its inverse construction uses e>0, as required, and the momentum reconstruction has determinant +r². The exact barycentric perturbation includes the displacement of both primaries and is divided by mu through an analytic parameter integral, with its value and bound extended continuously at mu=0. Equality of Hamiltonians is proved on an open neighborhood before differentiating for orbit transfer. The physical field's smoothness is needed only on its collision-free domain.

The frozen near-circular region is open and nonempty and remains independent of mu. Part 8 uses a strictly larger safe action region; it does not claim that the original open eccentricity/axis intervals are invariant. The explicit enlargement yields rho_max<1 and r_min>0. The choices

`mu0=min(1/2,mu2,epsilon_H/C_F,nu0/2)`,

`d=nu0/2`, `R=sqrt(2/r_min)`, `nu0=min(r_min,1−rho_max)`

precede mu and the initial point. The transfer gives all real times, both physical radius bounds, separation from both primaries including the massless secondary at mu=0, and uniqueness against arbitrary physical competitors on (a,b), without a chart-containment hypothesis on competitors. These match the literal frozen `restricted_near_circular` clauses. No new blocking/major TeX issue was found here.

## Mechanical checks, source limits and closeout

- Initial prescribed build: `cd blueprint-I && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: **exit 0**, targets already up to date. Its current rendering differs from the named tracked PDF.
- Independent forced build: `latexmk -g -pdf -interaction=nonstopmode -outdir=.build/round3-confirm blueprint.tex`: **exit 0**, **58 pages, 1,117,640 bytes**. Final log: **0** error lines beginning `!`, **0** undefined-reference warnings, **0** overfull boxes. Its SHA-256 is `cb3a08cd5e67c7cea300b750fa5dcddbe5d5a45a2afdf725a424f8cc5fd5afd9`; the narrowed Corollary 7.14 is present on p.48. Cosmetic PDF-string/underfull warnings do not change the mathematical verdict.
- Named tracked PDF: **58 pages, 1,115,636 bytes**, hash above; the page count alone does not establish synchronization. Its p.48 still contains the pre-consolidation false conclusion.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (180 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (140 frozen declarations)`.
- Literal cross-track-label scan over every I part: **no missing K/N/I/P target labels**, excluding descriptive wildcard/ellipsis citations. Internal references also passed the fresh LaTeX build. There is no Part 4: the shared ODE layer is deliberately owned by N Part 3.
- Mathlib `Topology/Order/Compact.lean:228,246` confirms the nonempty/ContinuousOn extrema guards. `Topology/MetricSpace/HausdorffDistance.lean:610` confirms the nonempty nearest-point guard; line 476 gives `infDist_empty=0`, verifying IR3-01.
- No new pinned-source erratum was found. The sign/strict-inequality source corrections in Parts 1/2 and the exact Chi05 coordinate adaptation remain disclosed. Historical Arnold/CC03 references are not used as unpaid proof providers; the chart/separation and analytic-Kepler bridges have actual proofs in the current parts.
- No Lean build, elaboration, axiom audit, provider sealing or frozen-theorem completion is claimed. No frozen file, manuscript source, tracked PDF or git history was changed by this review. Only this report was authored, apart from temporary inspection files and ignored review-build artifacts.

**Closeout remains limited to IR3-01 and IR3-02.** The current TeX proof chains pass the requested fresh major-issue skim; the full named confirmation packet does not yet meet the requested complete-closure claim.
