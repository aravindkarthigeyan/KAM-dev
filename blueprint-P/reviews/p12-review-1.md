# Track P, Part 12: independent review 1

## Verdict: ACCEPT WITH FIXES

**No blocking or major assembly error found.** Part 12 supplies the frozen P-PLANAR conclusion from the frozen P-G theorem and the stated chart/Birkhoff/physical interfaces. The radius shrink to `r0 = r*/2`, the choice of the secular radius before the coupling, and the direct Cartesian-cylinder transport are correct. The four findings below are local corrections; none requires changing a frozen statement or adding an assumption to P-PLANAR.

This verdict concerns this assembly, with the cited mathematical results as inputs. It does not certify the implementation/proof status of either frozen theorem or independently close all earlier parts. In particular it is not a new full audit of the Part-5 KAM construction or the Part-11b quartic computation.

## Scope, snapshot and materials

Focused tier-2 refute-first review under `.drafts/briefs/bp-review.md` and the manuscript-audit protocol. Reviewed all **216 lines, 36,901 bytes**, including all 69 labels, of `blueprint-P/parts/p12-planar-assembly.tex`. Initial HEAD: `10af179eec4ef56e5b913258af4576bb4b4ca62f`; the file hashes below define the audit snapshot in this concurrently edited worktree. These hashes attach the line numbers and quotations in this report.

Read AGENTS, repository PLAN/DECISIONS including the track rulings, the P plan/statement/source records, the writer conventions and the model review. Compared literal frozen `PlanarTwoPlanetKAM`, `ProperlyDegenerateKAM`, `HasFastDiffeomorphism`, `HasSecularBirkhoffForm`, `IsCylinderTorus`, `IsPhysicalTorus`, `IsCylinderKolmogorovSet`, `MovingKolmogorovSet`, cylinder/cell, Newton and pair-bound definitions. Checked the consumed chart/field/Liouville results in Part 1, the reconstruction/tube/assembly results in Part 6, the product chart in Part 7, the analytic perturbation in Part 8, rotation lift in Part 9, and the current Part-11b flow/lift/Birkhoff/patch interfaces. Read the earlier Part-11b review and checked that the current lift actually uses the corrected relatively compact action neighbourhood; the old global-radius defect is not inherited here.

Read the pinned PDFs directly: CP09 PDF/printed p.8, CP10 PDF p.4 = printed p.548, CP11 PDF/printed pp.50–51, and Fej04r revised PDF/printed pp.56–58. CP09 Thm.4 and Fej04r Prop.77 are provenance for the planetary route; Part 12 does not use the weak-nondegeneracy theorem as a substitute for frozen P-G. CP11 Thm.11.1 explicitly refers its proof to CP10 Thm.1.3. The corrected frozen neighbourhood/collar/disc contract, rather than either paper's abbreviated hypotheses, is what was checked here.

| Audited input | SHA-256 |
|---|---|
| `blueprint-P/parts/p12-planar-assembly.tex` | `83eee5fc9d881bf115be39e811ffc58cc206d45355d7956599115c9c7e0965db` |
| `blueprint-P/parts/p11b-planar-torsion.tex` | `f8ce70a3460c855e1e04ea1a8d39c7a32a550f38b8097ca993a6a17efe012bf1` |
| `blueprint-P/parts/p1-hamiltonian-tools.tex` | `71125916b1c5316e440916dd15e22d267a891c2d2b97188a7afb46ba2ff6af33` |
| `blueprint-P/parts/p6-newtonian-models.tex` | `b6885887ba6dfd181e79925cb4584b4b5590d0debc3bc205a2c49aa86b634899` |
| `blueprint-P/parts/p7-kepler-poincare.tex` | `3a10ddf74067a3c7b54184a190710deaba3019c97d2e0d5e9a3773b889cc26ab` |
| `blueprint-P/parts/p8-secular-form.tex` | `413806b9fcc86156e0b241da85668677b44bf142897c7039940504a50ae1febc` |
| `blueprint-P/parts/p9-secular-spectrum.tex` | `19271673e246eed9d444a3f370c479aa13685528e306f9addcddc550cc56da54` |
| `KAM/Frozen/Planetary/Theorems/PlanarTwoPlanetKAM.lean` | `47a0ef6a425b784ca6cd03477614faca7b4c46ca1cece1ee37f3db9973fb18bf` |
| `KAM/Frozen/Planetary/Theorems/ProperlyDegenerateKAM.lean` | `1bcb13a5806216c67505db05767d734be1f2d0da45cffb19d7b708428def61b9` |
| `KAM/Frozen/Planetary/Defs/HasSecularBirkhoffForm.lean` | `600b7e17bdb3acdd5af656c6c0bb8e23c63428db51e8fcaa987c5aa199a43e5c` |

## Findings

Each finding was counterchecked against the actual prerequisite and downstream use. The refutation checks are recorded in the evidence column. Proposed fixes are not applied.

| ID | Location / label | Severity | Finding, evidence and countercheck | Exact proposed fix |
|---|---|---|---|---|
| **P12-01** | `stepP:p12:ch-dom`, L102 | minor, norm specification | The explanatory chain “`abs(varrho Y) <= abs Y <= sqrt(2) abs z`” has no Euclidean subscripts. With the standing max-norm convention its first inequality is false: a rotation through pi/4 sends `(1,1)` to `(0,sqrt(2))`. Orthogonality preserves the Euclidean norm, and the flow bound is explicitly Euclidean. The intended domain conclusion survives using those norms; no smaller radius is needed. | Write `norm(varrho Y)_infty <= |varrho Y|_2 = |Y|_2 <= sqrt(2)|z|_2 < sqrt(2) r* <= rho_K`. Apply this componentwise to the rotated oscillator coordinates when entering the polydisc. Keep the explicit Euclidean notation in the referenced Part-11b argument as well. |
| **P12-02** | Start of `bpP:p12:transport` proof, L138 | minor, unmet citation premise | The proof cites `chart(e)` for `C(V,r) subset T`, although `chart(e)` also assumes `2r^2 <= delta`; transport assumes only `0<r<=r0`. That extra premise is not generally implied. Countercheck: only the tube conclusion needs it; the domain inclusion already follows from the half-radius choice. Thus the transport statement is valid at its stated generality. | Replace the citation by the direct argument: `Lambda in V subset O'` and `|z|_2 < sqrt(2)r <= sqrt(2)r0 = r*/sqrt(2) < r*`. Alternatively cite the closed-cylinder inclusion proved in `pg-h1`. Do not add a tube-size hypothesis to transport merely to fit the combined lemma. |
| **P12-03** | `stepP:p12:tr-dio`, L144 | minor, wrong monotonicity direction | The parenthetical says `dio-basic(a)` can be used “to lower tau”. That lemma allows **raising** tau, not lowering it. Countercheck: the actual proof needs no exponent change: the existing witness has `tau>4>3=d-1`, exactly sufficient for the physical predicate. | Delete the parenthetical and retain the same gamma and tau. |
| **P12-04** | Deviations (2), L204 | minor, stale necessity claim | The final sentence says the Borel-image statement in Part 1 “needs that [injectivity] hypothesis”. For an arbitrary continuous map injectivity gives Lusin–Souslin; for a chart, local invertibility and a countable local-homeomorphism cover already give Borel images without global injectivity. The current Part-1 `li-borel` proves precisely this. Countercheck: Part 12 does establish injectivity on the cell, so its Borel proof and its measure equality are both valid. | Say: “Here Borelness is obtained by Lusin–Souslin on the cell; injectivity on the cell is also essential for the Liouville **equality**. The chart's Borel-image assertion itself follows from its countable local-homeomorphism cover.” |

## What I recomputed: refutation attempts that failed

### Constant order and the two small parameters

The frozen order is

`(G,m0,m,a,eta) -> exists mu0,d,D -> forall mu, 0<mu<mu0 -> exists S`.

The construction preserves it. Define `gamma_a = min(a1,a2,a2-a1)>0`, `zeta*=min(eta,gamma_a/6)`, `d=gamma_a/2`, `D=2 a_max+gamma_a`, then the forward-tube tolerance, the axis neighbourhood and the good cube. These use only the outer data. The action boxes, normal-form map and radius are chosen next. Apply P-G to the prefix D1–D6 after verifying its hypotheses; only then choose `r_G,C_G,c_G`, the fixed positive secular radius, and the physical coupling threshold. Although the definition lists these choices before the subsequent verification proposition, its proof uses no D7–D9 output to establish the P-G premises; there is no circular mathematical choice.

The positive radius is

`r = (1/2) min(r_G, sqrt(delta/2))`.

Consequently `0<r<=r_G/2<r_G<r0`, `r<1/2<1`, and in fact `2r^2 <= delta/4`; the printed weaker `<=delta/2<delta` is valid. Hence `log(1/r)>0`. With

`mu0 = min(1, r^6/(log(1/r))^c_G)>0`,

every `0<mu<mu0` satisfies **both** strict P-G coupling bounds, including `mu<1=mu0^G`, and the logarithmic bound. The radius is fixed before mu; it is not a mu-dependent domain masquerading as a uniform tube. Neither d nor D depends on mu; in fact they depend only on the axes. The final data order agrees with every frozen binder, including arbitrary positive masses and arbitrary distinct ordered positive axes, with no separation ratio imposed.

### Forward tube and geometry

The compact reference set Q0 lies inside the chart domain: `Lambda_i>=3 Lambda_i*/4>0`, while `Gamma_i<=delta0<=Lambda_i*/4<Lambda_i`. Reduce fast angles modulo 2pi. Both the perturbed chart point and its circular reference belong to Q0. For

`delta_zeta = min(delta0, delta1/2, delta1^2/4)`,

their max-norm separation is at most `max(delta_zeta,sqrt(2delta_zeta))<delta1`: the two separate upper bounds are `delta1/2` and `delta1/sqrt(2)`. Uniform continuity therefore gives the required strict physical tube inclusion. The comparison uses the **original prescribed axes**, not merely the centre of the good patch.

The positive square-root axis map is coordinatewise increasing with analytic inverse on the positive orthant. Thus the two nested axis cubes give actual nested action boxes, with `0<ell'_i<ell_i<u_i<u'_i`. The inner V is nonempty, open, connected and bounded, `closure V=K`, and `K subset W=O`. The larger cube is contained in the good open set; it is simply connected, meeting Part 11b's rotation-domain premise. The current Birkhoff map is defined on an O' with compact closure inside O, and K inside O'; its uniform flow radius is legitimately obtained on `closure O'`.

For the collar, the max-norm t-neighbourhood of the frontier lies in the outer open rectangle of side lengths `L_i+2t` minus the inner closed rectangle of side lengths `L_i-2t`. For `0<t<min L_i/2`,

`(L1+2t)(L2+2t) - (L1-2t)(L2-2t) = 4t(L1+L2)`.

The quadratic terms cancel. Therefore the chosen `A_c=4(L1+L2)>0` and `d_c=min L_i/2>0` supply the frozen collar, including the exterior portion; this is not merely an inner boundary strip. Standard finite-dimensional Lebesgue measure gives the stated real bound and therefore the frozen `ENNReal.ofReal(A_c*t)` inequality.

### Chart and exact perturbation

The order `((lambda,x),(Lambda,y))` is the frozen position/momentum order; `(I,phi,p,q)=(Lambda,lambda,y,x)`. Thus `dLambda wedge dlambda + dy wedge dx` is the frozen symplectic form. The inverse rotation lift has its angle correction, and the quartic time-one map is a symplectic diffeomorphism on the restricted tube. Their composition T preserves Lambda and commutes with every fast translation. Its derivative is invertible. Composing with the product Poincaré chart gives a **1-chart**, not a conformal chart requiring a time rescaling.

The chart is injective modulo the **fast** `2pi Z^2` lattice: equality of physical images gives such a shift of the T-images; equivariance and injectivity of T pull the shift back to the original points. The domain is invariant under those translations. Slow Cartesian coordinates are never lattice-shifted in this argument.

The moving Hamiltonian identity is exact for every mu on the chart domain:

`H_mov(Psi_tot(w)) = h(Lambda(w)) + mu fhat_mov(T(w))`.

It uses the planet-mass Kepler part of Part 7, with the moving-Sun kinetic correction assigned to the perturbation. Since T preserves Lambda, there is no additional mu-independent term from transforming h. Therefore `P(mu,w)=fhat_mov(T(w))` is the correct coupling-independent perturbation. Its zero extension off T does not affect any derivative or integral used here. The action-only moving correction delta_S belongs to P0; the frequencies are `Omega_j=2 sigma_j` and the torsion is beta-hat. No additional normalization of the averaged Hamiltonian is introduced.

For tube containment, the two disc conditions imply `|z|_2^2<2r^2`. The flow gives `|Y|_2^2<=2|z|_2^2<4r^2`, and the rotation preserves the combined Euclidean square. Hence each physical chart oscillator action satisfies `Gamma_i(Tw)<2r^2<=delta`. The unchanged actions lie within delta of Lambda*. Forward-tube then puts the entire chart cylinder, including every point of every selected torus, in `U_zeta* subset U_eta`.

### Every frozen P-G hypothesis

| Frozen datum / hypothesis | Point-of-use verification |
|---|---|
| Positive dimensions, radii and B | a=b=2; r0=r*/2>0; mu0^G=1>0. Beta-hat is continuous and its determinant never vanishes on the compact inner axis cube, so its attained minimum B is positive. |
| V, W, collar | The nested boxes and the exact collar calculation above establish all premises, including nonempty connected V and an open W containing closure V. |
| H1: joint real analyticity on `[0,1] x closure C(V,r0)` | A point of the **closed** cylinder has Lambda in K inside O' and `|z|_2<=sqrt(2)r0=r*/sqrt(2)<r*`. Thus the entire closed cylinder lies in the open T. On the open product `R x T`, P is the composition of analytic maps, independent of mu. The local equality with that composition proves `AnalyticOnNhd`, even at mu=0, mu=1 and the action/oscillator boundaries. No analyticity of a discontinuous total extension at the boundary of T is asserted. |
| H2: fast periodicity | T intertwines fast translations, and fhat_mov is 2pi-periodic in lambda. `fastShift` is exactly this fast-only translation in the displayed dictionary. |
| H3: HasFastDiffeomorphism | `h=-sum kappa^2 m_i^3/(2Lambda_i^2)` is analytic near every point of the positive box W. Its frequency is `nu_i=kappa^2 m_i^3/Lambda_i^3`, with negative derivative `-3kappa^2 m_i^3/Lambda_i^4`. Its image is the product of the stated positive open intervals. The coordinate inverse `(kappa^2 m_i^3/v_i)^(1/3)` is analytic on that image, hence C1, takes values in W and satisfies both frozen inverse identities. Total values elsewhere are irrelevant. |
| H4: HasSecularBirkhoffForm | Part 11b supplies the exact normalized average and the two literal frozen clauses. Restricting from r*/sqrt(2) to r*/2 preserves integrability and the epsilon-delta clause: replace the old positive delta by its minimum with r0. This is a restriction of tested discs, not a change of the jet. P0, Omega and beta agree on V; their zero values off V impose no extra condition. |
| H5: torsion lower bound | For I in V, a(I) lies in the inner axis cube, so `abs(det beta(mu,I))>=B`. No unproved lower bound on the original target axes is needed. |
| H6: symmetry | Beta-hat is the explicit symmetric matrix from Part 11b; this is a separate P-G hypothesis, not an invented third Birkhoff clause. |

As a separate H4 check, the remainder `C*|z|_2^6` is at most `64 C*||(p,q)||_infty^6` in four real slow coordinates. Choose a positive delta bounded by r0 and with `delta^2<=epsilon/(64C*)`. Then the frozen remainder is at most `epsilon ||(p,q)||_infty^4`, including zero. The full disc domain, rather than just a max-norm estimate, is used first to put the integration points in T. The unit/2pi conventions agree with `secularAverage`; `R_j=(p_j^2+q_j^2)/2` and the quartic is `1/2 sum beta_ij R_i R_j`.

The smaller r0 is essential for **H1**, although equality r*/sqrt(2) is sufficient for H4's open-disc test. The former leaves a strict neighbourhood of the closed cylinder inside T. This is the correct distinction.

### All eight physical-torus clauses

| `IsPhysicalTorus` clause | Transport check |
|---|---|
| Analytic K_ph on all parameter space | K is analytic on all R4, its range lies in T, and Psi_tot is analytic there; analytic composition applies at every parameter. |
| Differentiability of H_mov on the range | H_mu agrees locally with `H_mov composed with Psi_tot` on open T. The chart-field lemma transfers differentiability in both directions through the local diffeomorphism. No use of `fderiv` outside a differentiability locus. |
| Integer periodicity | Cylinder winding adds precisely a fast `2pi k_f` shift, annihilated by Psi_tot. The slow parameter periods produce no physical shifts. |
| Injectivity modulo integer parameters | Equal physical images give a fast lattice shift of the cylinder images, and the **full** cylinder injectivity clause for any fast shift then gives the required integer parameter difference. Image equality alone would be insufficient; the correct stronger clause is used. |
| Injective derivative | Composition with the invertible derivative of the chart preserves the injectivity of DK. |
| Lagrangian pullback | The 1-chart identity carries the zero symplectic pullback to physical space, with the frozen sign. |
| Diophantine witness | Retain the same gamma and tau: cylinder Kolmogorov output has tau>4, hence tau>3 for d=4. No exponent or frequency scaling is needed. |
| All theta,t flow identity | The curve `s -> K(theta+s w)` stays in T for all real s. Local equality of Hamiltonians identifies their derivatives there; chart-orbit transfers its derivative to the frozen physical field at every real t. |

In particular the physical frequency is exactly the already-frozen **period-one parameter frequency w**. There is no second division by 2pi. P-G already supplies the winding convention required by the cylinder predicate; symplectic transport here has c=1 and preserves time.

### Measure, Borelness and the complete physical conclusion

Every point of S_cyl has a torus whose **whole range** lies in S_cyl. Cylinder winding makes each such range invariant under every fast `2pi Z^2` shift, so the entire set is invariant. Reducing the fast angles gives a representative in `S_cyl intersect F(V,r)` and the same physical image. This is a genuine output cell reduction; it does not assume that a near-identity map preserves a preselected parameter cell.

The chart is injective on the half-open physical fast-angle cell: two points there differing by `2pi k` must have k=0. The cell and S_cyl are Borel. The exact Mathlib `MeasurableSet.image_of_continuousOn_injOn` statement exists at `Mathlib/MeasureTheory/Constructions/Polish/Basic.lean:821`; its ambient Polish/Borel assumptions hold here, and only continuity **on the Borel subset** is needed, compatible with the total zero extension elsewhere. This supplies frozen `MeasurableSet`, not merely completion measurability.

The 1-chart has absolute Jacobian determinant 1; the injective Liouville formula on that same cell yields

`volume S_ph = volume(S_cyl intersect F(V,r)) > 0`.

The explicit positivity conjunct of frozen P-G is enough. No extra restriction `C_G sqrt(r)<1` is needed to recover positivity from the relative lower bound. Finiteness follows either from the bounded cell or from containment in the bounded physical tube; the proof provides both. There is no use of the inapplicable full-position-lattice transport or measure lemma from Part 1.

Finally fix any point of S_ph and take its witnessing transported torus. Its entire range lies in S_ph inside U_zeta*. At **every** parameter phi, Part 6 supplies NoCollision and the same pair bounds d,D. The Euclidean conversion is explicit:

`2sqrt(2) zeta* <= (sqrt(2)/3) gamma_a < gamma_a/2`.

Thus all planet-Sun and planet-planet distances are bounded below by d and above by D, with both ordered directions covered. Barycentric differences are exact: `Q_i-Q_0=q_i` and `Q_j-Q_i=q_j-q_i`. No estimate of the barycentre displacement and no mu-dependent d,D is required.

For each phi the explicit orbit `t -> K_ph(phi+t w)` is defined for **all real t** and satisfies the Hamiltonian equation there. Part-6 reconstruction gives each frozen Newton conjunct: pairwise positive distance, `Q'=V` with the prescribed barycentric velocities, and `V'_i=sum_{j!=i} G actualMass_j (Q_j-Q_i)/|Q_j-Q_i|_2^3`. Positivity of m0 and m_i and mu>0 guards the divisions and gives positive actual masses. This establishes the all-time Newton predicate for every phi, rather than merely an averaged/secular or local trajectory. A separate ODE continuation argument is unnecessary for this already exhibited complete orbit. Together with Borelness, tube containment and the whole-range witness, these are **all** conjuncts of `MovingKolmogorovSet`.

## Validation and closeout

- `cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: **exit 0**, 128 pages, including Part 12 (rendered pp.121–127). Final log has **0** lines beginning `!` and **0** undefined-reference/multiply-defined-label warnings. Underfull/overfull and hyperref PDF-string warnings remain; there is also a whole-document missing named destination `theorem.7.29`. This is not reported as a clean hyperlink audit.
- Rendered and visually checked PDF p.125, containing H4–H6, the complete transport proof and the start of the cell-measure proof. The two transport citation/direction issues are visible in that rendering; no clipped mathematical text was observed there.
- Mechanical internal-reference check for Part 12: **69 labels; no unresolved internal reference**. Cross-part substantive uses were read directly rather than certified by LaTeX.
- Independent symbolic recomputation: collar polynomial exactly `4t(L1+L2)`; first/second Kepler derivatives as above; positive cube-root inverse composition exactly Lambda; strict square-root comparisons for the closed cylinder and tube factors hold. Calculations used reviewer SymPy expressions, not author scripts.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (214 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (144 frozen declarations)`.
- No Lean execution/build or fresh `#print axioms` was required or performed. No provider-proof or axiom-closure claim is made. Only this requested Markdown report was authored; ignored LaTeX artifacts and temporary PDF/text/rendering files were generated. No manuscript, frozen file, manifest, errata ledger or git history was edited.

**Suspected pinned-source errata:** none new. Existing errata are consumed only through the audited/cited interfaces; the isolated wording corrections above are blueprint issues. **Deviation check:** the strict half-radius, fast-only cylinder transport and cell measure argument are justified adaptations, and the unused CP09/Rüssmann route supplies no hidden hypothesis.

Acceptance is local to the assembly with its stated inputs. Apply the minor fixes before treating the text as an exact graph-extraction contract; no additional planetary or KAM hypothesis is requested.
