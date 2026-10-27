# Track I: round-2 closure review

**Verdict: REVISE — NOT READY FOR GRAPH EXTRACTION.**

The Part-1 and Part-2 round-1 findings are closed. The repaired complex Kepler tube and its action-domain consumers are valid; I67-01 is closed. However, the circular-endpoint fix introduces a false auxiliary contract: `bpI:p7:circular` extends all of `orbit-identities`(c) “verbatim” to circles, including membership in the strictly noncircular region C. This is NEW major finding IR2-01 below, and leaves I67-05 only partially closed. It does not refute frozen I-KEPLER, the noncircular Delaunay chart, or the I-R3BP application.

Part 5 supplies the mathematical work missing in I3-01/I3-02. Those objections are moot as gaps in the actual I-HEAD proof, but the false explanatory assertions still printed in Part 3 should be removed before extraction. The remaining numbered minor findings of Parts 5 and 8 are still open.

## Scope and snapshot

Reviewed the four requested parts in full, their fix diffs, all findings in `p1-review-1.md`, `p2-review-1.md`, `p67-review-1.md`, and the requested carry-forward findings in `p3-review-1.md`, `p5-review-1.md`, `p8-review-1.md`. Locators below refer to the following unchanged file contents, rather than a moving worktree HEAD:

| File under `blueprint-I/parts/` | Lines | Bytes | SHA-256 |
|---|---:|---:|---|
| `p1-iso-linear.tex` | 597 | 51,869 | `91468c04e5fd62a310052e25471ae69a9fb093e35023c1820f7ab979e57bc98d` |
| `p2-iso-iteration.tex` | 370 | 42,537 | `f2bcdff3e5bd29a51e0246740f69e0bbd6419b925d8ae037b4e89ccf7a288968` |
| `p6-kepler.tex` | 168 | 13,475 | `b623ce5f8d2fc890834e5073dbc3c06701ac27ce7e5014efacadfb5107249bb6` |
| `p7-delaunay.tex` | 490 | 59,294 | `1a70e971aca8ae0f2c450b0cab593cfe6e3be8d459dc40b5ce5a4e9c4edcb13d` |
| `p3-iso-local-charts.tex` | 418 | 39,312 | `7cdfc8e88b9b1174e13b9555dea19276feaf57a0b0cdc6736983ac390042ba0c` |
| `p5-confinement.tex` | 201 | 26,416 | `2e8590f5c3b25aa300b0110ce85160d1d0d63ed678864abdf129b20017b21ab6` |
| `p8-r3bp.tex` | 249 | 26,531 | `22662a4b642afd41c10479527649d558f0559703a4cd4341f6cca2d6efd2d6c0` |

Materials checked: the full review brief; `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the writer conventions and I PLAN; current Part 0 and the relevant frozen I definitions/theorems and imported K definitions; K's frame, geometry, perturbation, cohomology and iteration interfaces; Part 5's complete enclosure argument and Part 8's consumers. Read the actual changes in `2d5caa9`, `46458dc`, `26fa1d1`. Used pinned HL19 (`sources/pdf/arxiv_1711.05515.pdf`), particularly pp.18–21, 46 and 49–53 for signs and the source-error inventory. The tube proof is an original argument and is checked directly below. The unchanged source comparisons in the previous reviews are carried forward; this is not a new source audit of every page cited throughout track I.

Status convention: **CLOSED** means the original objection is resolved in the current statement and its use; **OPEN** means some requested repair remains; **NEW** identifies a defect introduced by a fix. The I67-05 row and IR2-01 describe the same outstanding endpoint repair, not two independent mathematical gaps.

## Per-finding closure table: Parts 1 and 2

| ID | Round-1 severity | Status | Current location | Verification / remaining action |
|---|---|---|---|---|
| I1-01 | major | CLOSED | p1:214–224, `last-row` | The row norm is now exactly Σb abs(ηL_b), bounded by n abs(ηL). The existing averaged bound 2n² σK′ σB′ e is consistent. The old all-ones counterexample now attains the stated bound. |
| I1-02 | major | CLOSED | p1:465–503, `reduced`; p2:184–190, `ne-invert` / `ne-est` | The unconditional claim is only Q Res = E_lin. Unprojecting and equivalence explicitly require det P ≠ 0, equivalently det Q ≠ 0. The actual Newton step proves invertibility of S = Id − Ω0 E_sym by Neumann before using Q⁻¹ = P S⁻¹. No frozen premise was strengthened. |
| I1-03 | major | CLOSED | p1:267–274, `energy-approx`(f); p1:310–317, `ea-defect`; p1:466 | Both auxiliary strips have 0 < r′ ≤ r. Products are continuous and integrable on the compact real cube. Suprema in the energy-defect estimate are cube suprema, finite without assuming periodic ξ. Empty-strip and unbounded-real-supremum counterexamples no longer apply. |
| I1-04 | major | CLOSED | p1:126–129, `eb-holo`; p1:247–253, `lr-average`; p1:517–562, `geometry-noA5`, `perturbation-noA5`; p2:118–126 | Weak regularity is derived from the holomorphic Gram inverse and the actual proof step `step:p2:fb-holo`. The row estimate uses elementary transpose/product bounds. Quantitative geometry is supplied under explicit no-A5 hypotheses. The moved perturbation lemma has its own proof under still weaker hypotheses. Neither assumes an ordinary torsion inverse or imports K-admissibility as an undeclared premise. |
| I1-05 | minor | CLOSED | p1:298–301, `ea-avg` | The direct average calculation now has −⟨ΩK⟩ω, agreeing with ηN = D(H∘K)ᵀ − ΩKω. |
| I1-06 | minor | CLOSED | p1:193–200, `tr-compare` | The proof splits on the real bordered determinant. In the nonsingular case inverse casting is legitimate; in the singular case both total matrix inverses are zero. No extra determinant hypothesis is inserted into the identity. |
| I1-07 | minor | CLOSED | p1:591–596, `doubts` | The frozen row DH(K)N remains literal. Comparison with the invariant row is now explicitly conditional on a proved Neumann bound and quantitative smallness/margins chosen in the correct order. |
| I2-01 | major | CLOSED | p2:205–216, `torsion`; p2:266–294, `iteration` | The one-step result now asserts holomorphy, primaryness, reality, nonzero new Gram determinant, crude frame bounds and increment bounds. It explicitly declines to infer the original absolute σK/σB bounds without slack. The induction carries the original μ slack and the sums of the actual increments. |
| I2-02 | minor | CLOSED | p2:306–307, `lim-conv` | The two series now have distinct bounds: 2 CΔ e/(γ² δ0^a) and 2n CΔ e/(γ² δ0^(a+1)). The missing n/δ0 is restored. |
| I2-03 | minor | CLOSED | p1:559–562, `pt-torsion` | The XN bound is cited directly from K `frame-basic`(d), with precisely image-ball, derivative, Gram and frequency bounds. It no longer depends on the primary/real/error hypotheses of `geometry-noA5`. |
| I2-04 | minor | CLOSED | p2:8–9 | The introduction says the bordered solve imposes the normal energy equation ⟨Y ξN⟩ = −Eω. It identifies the tangential average separately as a quadratic defect, consistent with `newton-error`. |
| I2-05 | minor | CLOSED | p2:282, source for `iteration`; p2:368–369, `errata` | The maximum is correctly located at (6.16). E5 explicitly records the required combined-error substitutions in (6.33), (6.36), (6.44), and the printed s → 0 typo. The proof consistently uses combined ε. See source check below. |
| I2-06 | minor, cosmetic | CLOSED | p2:68–81, constants; p2:134–138, border data; current build log | The constants list has a break and the border data use a two-line gather. The current complete I build log contains no overfull boxes. |

### Recomputed no-A5 interfaces and their consumers

The extraction should use the two Part-1 labels as separate nodes, with their actual hypotheses. They are not aliases for K's admissible-torus lemmas.

For `geometry-noA5`, Cauchy gives abs(DE) ≤ n ε/δ. The transposed entrywise estimate gives abs((DE)ᵀ) ≤ 2n ε/δ, so the defect identity yields

```text
abs(∂ω ΩK) ≤ (2n m + 2n² m) ε/δ.
```

Exactness gives ⟨ΩK⟩ = 0 using primaryness; the cohomological estimate on T_(r−δ), with a further loss δ, gives CΩ ε/(γ δ^(κ+1)). Multiplication by max(1,abs(B)²) ≤ m² gives Csym. The error projections use abs(Nᵀ) ≤ 2n m² and abs(Lᵀ) ≤ 2n m. These calculations use no averaged torsion inverse. Holomorphic regularity requires only open image inclusion and a genuine nonzero Gram determinant. The quantitative XN and T estimates additionally use abs(ω) ≤ Θ, exactly as stated.

For `perturbation-noA5`, the proof first establishes the shifted image balls and the Cauchy bounds nd/δ and 2nd/δ for the derivative difference and its transpose. Then

```text
abs(Gtilde − G) ≤ CG d/δ,
abs(B) abs(Gtilde − G) ≤ 1/2,
abs(Btilde) ≤ 2m,
abs(Btilde − B) ≤ CB d/δ.
```

Only after this Neumann argument are Ntilde and Ttilde used. The two product terms and the derivative term in Xtilde_Ntilde − XN give CΔX d/δ²; multiplication by Ntildeᵀ and the normal-frame difference gives CΔT d/δ². The constants CG = 6n²m, CB = 2m²CG, CΔN = 2nm + mCB, CΔX = 2m³ + (m+nΘ)CΔN and CΔT = 4nm²CΔX + 2nCΔN CX dominate exactly these terms. The condition 2m CΔT d/δ² ≤ 1 supplies the smaller intermediate bounds. No error, primaryness, realness or twist condition is needed for this perturbation statement.

Part 2 applies the perturbation lemma to the restricted old and corrected maps on T_(r−2δ), hence gets Gram and derivative bounds on T_(r−3δ) and the torsion difference on T_(r−4δ). The subsequent change of frequency is accounted for separately. There is no strip loss hidden by the move into Part 1.

The corrected frame residual also preserves the new-frequency sign:

```text
Ebar = P S⁻¹ E_lin + Δ²X + ξω ∂ω(ΔK),
E_lin = E_red ξ + Ω0 E_sym ∂ωξ − (0, ΩKω) ξω.
```

Indeed Δω = −ω ξω, so −D(ΔK)Δω = +ξω ∂ωΔK. This contribution is quadratic and is retained in C_E1. The normal energy equation cancels Eω; the tangential term and Taylor remainder give C_E2. In particular, the inverse repair does not discard either defect.

I rechecked the exponent absorptions affected by these interfaces: κ = τ+n ≥ 2n−1 ≥ 3, a = 2κ+2 ≥ 8, 2κ+3 = a+1, κ+2 ≤ a+1, a−κ−2 = κ ≥ 0. With δ ≤ 1 and γ ≤ Θ these justify the displayed replacements by the common denominators γ² δ^a, γ² δ^(a+1), and γ⁴ δ^(2a). The error-decay series with derivative weight δ_j^−1 has the corrected extra n/δ0; the stronger summed increment budgets in the induction are unchanged.

The frozen constant order is preserved:

```text
C1 = ρ^(4τ) max(γbar^4, c_* δ0^(−2a)),
C2 = C3 = 2 CΔ ρ^(2τ) δ0^(−a).
```

All are chosen before D,H,K,s,γ,e,E0. The γbar term forces e < 1 from the frozen smallness hypothesis. The sums spend at most μ/4 in displacement and ν/2 in frequency displacement; ν(s∞) ≥ ν/2 > 0 implies the required strict segment membership. The limit energy identity is obtained from invariance/nonresonance and the energy average, without assuming a final Gram inverse. No new mismatch with `KAM.Iso.isoenergetic_kam` was found.

## Per-finding closure table: Parts 6 and 7

| ID | Round-1 severity | Status | Current location | Verification / remaining action |
|---|---|---|---|---|
| I67-01 | blocking | CLOSED | p7:91–134, `kepler-eq`; p7:170–178, `orbit-maps-e`; p7:322–347, `complex-domain`; `exact-ham`, `period-one` | The full eccentricity disc is replaced by a thin tube around the real interval. Its invariant-strip estimate includes the Im(e) Re(sin u) term. The fixed point, holomorphy, denominator bound and the action-domain inclusion are valid; details below. The original imaginary-e counterexample is excluded by the new domain. |
| I67-02 | minor | CLOSED | p6 `conversion`(a); p7:26 and `symplectic`, `ham-eq` | The Hamiltonian matrix is named J and explicitly equals minus frozen omegaZero. XH = J∇H has the intended sign. Symplectic identities and the field-conjugation formula use this same convention. |
| I67-03 | minor | CLOSED | p7:358, `shift-def` | The real-data equivalence now includes q ≠ 0 as well as collision freedom. The Kepler baseline denominator and the two primary denominators are all guarded. |
| I67-04 | minor | CLOSED | p7 introduction, `exact-ham` source line, `errata`(2) | The description now identifies Chi05 as an exact heliocentric/extended-phase-space formulation with different normalization/reduction. The direct exact barycentric derivation remains. The separate stale wording in Part 8 is still I8-03, below. |
| I67-05 | minor | OPEN (partially fixed) | p7:301–305, `circular`; p7:313, mass dictionary | The endpoint formulas and full mass dictionary have been added and are correct. However, the endpoint corollary also extends the noncircular-region conclusion of `orbit-identities`(c) to e = 0, which is false. Narrow that extension as specified in IR2-01. This is the only unclosed item among the 19 requested Part-1/2/6/7 round-1 findings. |
| I67-06 | minor | CLOSED | p7:256, `ch-surj3`; p7:434, `period-one`(e) | The real linear system now has determinant +r². The dependence statement concerns CF and ε = CF abs(μ), without an unguarded ε/abs(μ) claim at μ = 0. |

### Recomputed Kepler tube and its consumers

Write θ* for the new contraction constant. The definitions give 0 < e1 < e2 < θ* < 1, y0 = arcosh(θ*/e2) > 0, e2 cosh(y0) = θ*, and positive δK,δE. If dist(e,[-e1,e1]) < δE, then abs(e) < e2 and abs(Im e) < δE. For u = x+iy in the closed strip abs(y) ≤ y0, the correct bound is

```text
abs(Im(e sin u))
  ≤ abs(Re e) sinh(abs(y)) + abs(Im e) cosh(y)
  ≤ e2 sinh(y0) + δE cosh(y0).
```

Using sinh(y0) ≤ y0 cosh(y0),

```text
δK + e2 sinh(y0) + δE cosh(y0)
  ≤ (1−θ*)y0/2 + θ*y0 + (1−θ*)y0/2 = y0.
```

The strict angle-strip hypothesis makes the self-map inequality strict. The derivative norm is at most e2 cosh(y0) = θ* < 1, so contraction on the complete convex closed strip is legitimate even though its real direction is unbounded. With u0 = ℓ, the successive differences are bounded by θ*^(m+1), uniformly in both parameters. Uniform convergence of holomorphic iterates proves joint holomorphy; no global bound on Re ℓ is needed. The lower bound abs(1−e cos u) ≥ 1−θ* > 0 justifies both implicit derivative formulas. Uniqueness gives the 2π shift identity and agreement with the real analytic real solution. The tube contains abs(e) < δE around zero, so it supplies the advertised analytic Kepler-equation input near circles.

The complex action neighborhood is also repaired, not just the proposition. For e′ = e(L′,G′) ≥ e_- > 0 and w = 1−G²/L², the uniform-continuity choice gives

```text
abs(w−e′²) < min(e_-²/2, e_- δE),
Re w > 0,
abs(sqrt(w)−e′) = abs(w−e′²)/abs(sqrt(w)+e′) < δE.
```

The last denominator is at least e′ ≥ e_- because the principal square root has positive real part. Thus the action eccentricity is in the new tube, and the angle strip is smaller than δK. Real nearby actions have L,G > 0 and 0 < 1−G²/L² < 1, so G < L remains true. `orbit-maps-e` uses exactly this tube, where abs(e) < e2 < 1 also guards the principal sqrt(1−e²) branch. The nonzero D = 1−e cos u bound propagates into the orbit formulas.

The compact-neighborhood construction of `exact-ham` can therefore use the corrected Q on U(δ1). The later uniform-continuity shrink for the shell and the period-one linear change of angles/actions only restrict or precompose that domain; they do not enlarge it back to the false eccentricity disc. The perturbation bound retains a single CF independent of μ, including μ = 0. I found no remaining instance of the old disc estimate in this consumer chain.

As a supplementary numerical diagnostic, e1 = 0.01, 0.25, 0.9, 0.99 gives positive self-map slack and derivative bounds 0.7525, 0.8125, 0.975, 0.9975 respectively. The proof above, rather than these samples, establishes the full quantified result.

### NEW finding IR2-01: the circular corollary includes a strict noncircular conclusion

| ID | Status | Severity | Location | Finding and exact repair |
|---|---|---|---|---|
| IR2-01 | NEW | major | p7:301–305, `bpI:p7:circular`, `stepI:p7:ci-alg`; inherited conclusion p7:186, `orbit-identities`(c); region p7:147 | “(a)–(c) … hold verbatim” includes membership in C and the elements definition on C. Circles satisfy equality in C's strict noncircularity inequality, so the new statement is false. Extend (a), (b), the scalar energy identity in (c), and the displayed means to 0 ≤ e < 1. Keep C-membership and the Delaunay element/chart assertions restricted to 0 < e < 1. In the proof replace the claim that all of `oi-en` never uses e > 0 by the claim about its energy computation only. |

Exact counterexample: L = 1, e = 0, k = 1, ℓ = g = 0. The formula gives u = 0, q = (1,0), p = (0,1), E = −1/2 and Γ = 1. Membership in C would require

```text
Γ² < −1/(2E), i.e. 1 < 1.
```

This is false. The proof step explicitly cited as needing no e > 0, `oi-en` at p7:200, in fact uses G² = L²(1−e²) < L². Nor does a circle belong to the original Delaunay action cone 0 < G < L. The circle's radius, momentum, energy, angular momentum and mean values are all correct; the erroneous extra conclusion should be removed, without adding e > 0 to the shared endpoint theorem. Track P needs the circular formulas, and still owns its regular coordinates at e = 0. This is a blueprint defect introduced in `26fa1d1`, not a new erratum of Chi05 or a defect in a frozen theorem.

## Carry-forward findings in Parts 3, 5 and 8

The Part-3 review has two numbered **major** findings and no separately numbered minor finding. They should not be silently relabelled as originally minor. Their proof obligations have now been discharged or avoided downstream; what remains in Part 3 is incorrect explanatory text.

| ID | Original severity | Status of printed repair | Current location | Remaining action / downstream status |
|---|---|---|---|---|
| I3-01 | major | OPEN (text); proof objection moot | p3:254–255, `points`; p3:383, T7 | Delete the parenthesis putting I0 on the unperturbed energy curve; say only that its slope coordinate lies between the two base slopes. If an actual middle point on that curve is desired, use Φ⁻¹(E,m_c(I0)). T7's numerical slope inequalities are valid, but its energy-arc wording should distinguish I0 from that arc. Part 5 explicitly makes this distinction and never needs h(I0) = E. |
| I3-02 | major | OPEN (text); proof obligation CLOSED in Part 5 | p3:407–411, `consumption`; p5 `patch-const`, `eps0`, `graph`, `mu`, `separation`, `confinement`, `p3-gap` | Replace the claim of deformed slopes ≤−δm/2, ≥δm/2 and confinement “is T6” by references to Part 5's actual slope margins and whole-enclosure proof. Part 5 proves the sufficient bounds μ_- < −δm/4, μ_+ > δm/4, not those exact half-width thresholds. No stronger Part-3 torus output is needed. |
| I5-01 | minor | OPEN | p5:55–56, `ext-top` | `IsCompact.exists_forall_ge` is still printed. Use `IsCompact.exists_isMaxOn` (and its minimum counterpart) with nonempty compact sets and `ContinuousOn`. Make the nonempty compact-set and complement guards explicit in the distance applications. The needed nonemptiness is available here. |
| I8-01 | minor | OPEN | p8 `collision-exclusion`(b), lines 95–102; `x-topo` | The generic attained finite minimum still allows m = 0, and the compact-distance external statement still needs S ≠ ∅. Require nonempty reference family/nonempty S for the minimum construction, or handle the vacuous cases separately by choosing any positive δ. The actual two-primary nonempty-shell instance is unaffected. |
| I8-02 | minor | OPEN | p8:229, `pf-uniq` | Replace “Fμ the C∞ extension of Vμ” by “the total formula extension Fμ, C∞ on the open collision-free set Wμ”. A globally smooth extension across primary collisions is not available or required by the shared uniqueness theorem. |
| I8-03 | minor | OPEN | p8:13, introduction; p8:248, `totality`(4) | Remove “truncated” and “different problem”. Use Part 7's corrected description of Chi05's exact alternative coordinates, normalization and rotating reduction. This is a stale source description, not a failure of the direct barycentric proof. |

### Has Part 5 made I3-01/I3-02 moot?

**Yes for the mathematical route to I-HEAD; no as a claim that the old Part-3 sentences are now true.**

I checked the actual replacement argument. Compact Q has compact preimage K inside W and a positive chart collar. The constants Lm and LΦ bound the required derivatives there. The final ε0 is chosen, uniformly over the finite patch family and before f, ε and z0, to include r_j/CK, κ_j/(Lm,j CK), ρ∞/(8CK), δE,j/4 and 1/(2F1 LΦ,j). The real angle map is globally invertible by contraction. The deformed actions lie in the collar and hence in W; their slope errors are less than κ_j ≤ δm,j/4. Their slopes therefore straddle the initial slope, remain strictly inside the chart window, and have the required quarter-width separation.

On the actual perturbed energy level, the chart energy variable is unique because the derivative of e ↦ e+f(φ,Φ⁻¹(e,m)) is at least 1/2. This identifies the energy-level portion of the enclosure boundary with the two invariant tori. The initial point lies strictly inside the enclosure using its own h-value and slope, without placing it on {h=E}. Uniqueness prevents crossing the invariant boundary. The entire action enclosure lies in W ⊂ ball(c,η1/4), so its distance from I0 is less than η; the proof does not infer interior confinement from closeness of the boundary tori. Compact-action continuation then gives all real times, and local uniqueness applies to arbitrary competitors allowed by the frozen solution predicate. The empty B′ case is handled separately.

Thus there is no surviving major confinement gap attached to I3-01/I3-02. For graph extraction, use Part 5's proved nodes and its explicit supersession remark; remove the old misleading Part-3 proof edges. The open Part-5 issue is its external-fact locator/guards, not a missing separation theorem.

## Source records and checks

The unchanged E1–E3 sign/strict-inequality records in Part 1 remain consistent with the pinned text: the zero-error case precludes a strict norm bound by zero; the sign of Lω is minus directional derivative; DH = −XHᵀΩ gives the corrected invariant energy row. The changes do not substitute the invariant row for the frozen approximate row.

For I2-05 I independently extracted HL19 pp.49–53 with `pdftotext -layout`: (6.33), (6.36), (6.44) do print the invariance error where a pure energy discrepancy can require nonzero correction; p.52 prints “when s → 0”; the eight-term maximum is (6.16). The revised E5 inventory reports these rather than silently using them. The previous E4 record of the frequency-limit denominator mismatch in (6.51) is retained, and this blueprint derives the frozen γ²ρ^(2τ) output estimate directly. No additional pinned-source erratum was discovered in this closure round. IR2-01 is the new deviation requiring correction in the blueprint itself; no frozen-file repair is proposed.

Checks executed:

- `scripts/lint_sources.sh`: exit 0; `check_lean_modules: PASS (175 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- `cd blueprint-I && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: exit 0, targets up to date. Inspected the current generated log: 58 pages, 1,115,636-byte PDF; no undefined references and no overfull boxes. Three hyperref PDF-string warnings remain for the math in the Part-6 subsection title at line 58, plus underfull boxes; these are cosmetic and distinct from I2-06.
- Checked Mathlib's actual `Topology/Order/Compact.lean`: `IsCompact.exists_isMaxOn` exists at line 246 with nonempty-set and continuity hypotheses; `IsCompact.exists_forall_ge` is not the cited declaration. This confirms I5-01 remains open.
- Recomputed the tube inequalities analytically and evaluated the explicit circular counterexample. Numerical tube samples were diagnostic only.
- Reviewed-file hashes were checked again at closeout; report-only whitespace check passed. No Lean build, proof certification, provider sealing or `#print axioms` audit was performed or needed for this Markdown-only review.

Only `blueprint-I/reviews/round2-closure.md` was authored for this task. The overall graph-extraction gate remains closed until IR2-01/I67-05 is repaired; the listed stale Part-3 assertions and minor Part-5/8 items should also be corrected in the extraction inputs. Parts 1 and 2, the Kepler-equation tube, and the noncircular action-domain/physical consumers pass this closure review at blueprint level.
