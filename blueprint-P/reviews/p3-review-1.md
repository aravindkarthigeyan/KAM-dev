# Track P, Part 3: independent refute-first review 1

## Verdict: REVISE

The constant recursion and most of the conditional KAM argument survive recomputation. The part is **not ready for dependency extraction as a proved theorem**. Its acknowledged averaging interface remains unpaid, and its proposed proof does not supply exponential averaging. A one-scale Iterative Lemma with `alpha = alpha_2` cannot, from its stated conclusions alone, give the improved first-action displacement. There is also a norm mismatch with the existing track-N infrastructure. The Part 5 handoff misstates the perturbation size and the frequency conversion.

This verdict concerns the blueprint and its interfaces. It does not refute frozen P-G, modify a frozen contract, or certify any Lean proof.

## Scope, immutable inputs, and method

Reviewed at HEAD `4c205fae094d1586ddc238e193b1cbaea330414f` on 2026-10-27. The following hashes, rather than HEAD alone, identify snapshot **R1**:

| Input | Size / SHA-256 |
|---|---|
| `blueprint-P/parts/p3a-two-scale-iteration.tex` | 281 lines, 38,629 bytes; `b8f17f15cd2a150fc50a2d88b8fda13c32f662fc5ecf1b1343275fe41d52451d` |
| `blueprint-P/parts/p3b-two-scale-limit.tex` | 222 lines, 31,342 bytes; `b647dc98f856b5844b0325dd4d0bef66afa89974cfc0ebb29371cea9028ffa2f` |
| `sources/incoming-P/cp10.pdf` | `68fbf161e0aa62fc966f33b3b3c49e2ab0fbcca3eb7fdb0950d62eadcdf18338` |
| `blueprint-P/parts/p0-conventions.tex` | `16192e0f49d611715f939c5371ccc9a4337a91a148a6e7574ddff7edacecd621` |
| `KAM/Frozen/Planetary/Theorems/ProperlyDegenerateKAM.lean` | `1bcb13a5806216c67505db05767d734be1f2d0da45cffb19d7b708428def61b9` |
| `blueprint-N/PLAN.md` | `6abd2e03456c0e1f768fb8965758d1d1bf97ba0b16778bb2900328a7d10adbdf` |
| `blueprint-N/parts/p4-weighted-norms.tex` | `9ea8b6be90aeebab265d08eec4c68b292472439aaba86a619088eda84e752559` |
| `blueprint-N/parts/p5-canonical-maps.tex` | `fda4ea6dae4635f52e3e15500a0246a917ff5d0304097aa180ce9be46b3bb3e9` |

Materials read: AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the complete review brief and writer conventions, both P/N blueprint plans, P Part 0, the frozen P-G theorem and its cylinder-torus/Kolmogorov-set definitions, track-P source/statement-audit notes, track-K Part 1's cited analytic/measure interfaces, and track-N Parts 4–5's actual interfaces. CP10 printed pp. 551–555 and 564–573 were read directly with `pdftotext -layout`; pp. 560 and 562–564 were checked for the assembly interface. Rendered pp. 564–565 were inspected for the ambiguous summation restrictions and strip subscript. Printed page p is PDF page p−544.

This is a focused tier-2 audit using the manuscript-audit protocol. The user and brief authorize one review file and a blueprint build, exclude manuscript edits and git mutations, and expressly waive Lean builds. Those instructions supply the permission envelope. Discovery and a separate adversarial reconsideration were performed by this reviewer; no second reviewer or Lean certification is claimed. Each finding below includes a failed attempt to dismiss it or a concrete repair criterion. No new hypothesis is proposed for frozen P-G.

## Findings

All locators and quoted anchors refer to R1. Severity describes the effect on the present proof plan.

| ID | Location / anchor | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| P3-01 | 3a:153–181, `bpP:p3:avg`, especially `stepP:p3:avg-flow`: “Psi is the time-one map of X_chi” | **blocking** | The supplied proof plan performs one homological solve and one flow, then asserts `||f_*|| <= exp(-Ks/6) E`. One flow leaves angle-dependent quadratic terms; a Fourier-tail estimate does not bound them exponentially. CP10 p. 565 instead applies A.1 first with losses v/8 and s/6 and **then repeatedly**, citing [4] (A.21)–(A.26). The source-gap marker honestly acknowledges the unpaid input, but does not validate this replacement proof. Adversarial check: increasing K makes the required exponential arbitrarily stronger than the polynomial-in-K smallness; the quadratic term is still present. | Keep `avg` explicitly conditional until a finite normal-form iteration is proved. Supply its loss schedule, error induction, accumulated average correction, and accumulated displacements. Cite N's **normal-form** construction plus the required two-scale refinement, not its Iterative Lemma as if that were already exponential averaging. Recheck the constants 64e, 9 and 1/4 against the delivered package. |
| P3-02 | `bpP:p3:avg`; P PLAN “first try … alpha = alpha_2” | **major** | Forgetting alpha_1 supplies ordinary nonresonance, but the conclusion gives only `alpha_2 s |Delta I_1| <= 9E`. It does not imply `alpha_1 s |Delta I_1| <= 9E`; alpha_1/alpha_2 is unbounded. CP10 A.1 proves the improved coordinate bound separately using (70)–(71). Also the planned N Iterative Lemma is one step, not Proposition 1. Attempted dismissal via stronger input nonresonance fails because that information has been discarded by the scalar interface. | Reuse N's scalar step for the remainder/domain estimates and separately retain the generating-function split at **every** finite averaging stage: `chi^(2)` is independent of theta_1, while `||chi^(1)|| <= E_j/(2pi alpha_1)`. Integrate its first-action vector-field bound along the full flow and sum it through the finite iteration. State this as a distinct two-scale corollary with the exact P interface. |
| P3-03 | 3a:25–28 versus N `bpN:p4:norm`; imported N Parts 4–6 | **major** | P uses `sum_k sup_I |f_k(I)| exp(s|k|)`. N uses `sup_I sum_k |f_k(I)| exp(2pi s_N |k|)`. Only N-norm <= P-norm holds. An N-norm output estimate does not give the P-norm estimate used in `st-avg` and the next KAM step. Widths also differ by `s_N = s_P/(2pi)`. Attempted dismissal by period conversion fails: it changes the weight radius, not the order of sup and sum. On disconnected action components, different Fourier modes can attain their maxima on different components, making the gap arbitrarily large. | Either prove the needed N averaging estimates in P's stronger sum-of-sups norm, or consistently restate this part in N's norm and recompute its quantitative interfaces. A strip-loss conversion must explicitly pay the additional width and lattice-sum factor; it is not constant-free. Record the width dictionary at each imported statement. |
| P3-04 | 3a:180–181, `stepP:p3:avg-g`: `(12/11) 2^7 c_0 K E^2/(alpha_2 r) <= E/4` | **major** | The final inequality does not follow from N2: N2 bounds the middle expression only by `(12/11)E`. CP10 (25) actually has denominator `alpha_2 d = alpha_2 r s`, **without K in the numerator**. That distinction supplies the missing factor `1/(Ks)`. No stronger KAM smallness is a hypothesis of the standalone averaging lemma. | Use `||g-f_0|| <= (12/11)64e E^2/(alpha_2 r s) < (12/(11 Ks))E <= (2/11)E < E/4`, after a valid finite averaging proof establishes that bound. |
| P3-05 | 3b:195–198, `bpP:p3:interface`: “f=mu^5 breve P”, “E=C mu^5” | **major** | CP10 p. 560 explicitly has `f = mu epsilon^5 breve P`, `E = C mu epsilon^5`. The blueprint's interface erases the oscillator radius epsilon and replaces it by four additional powers of mu. With mu much smaller than epsilon^6, the printed proposed E can be much smaller than the true perturbation. Its displayed bound for K nevertheless still uses epsilon^5, confirming the inconsistency. | Write `f = mu epsilon^5 breve P`, `E = C mu epsilon^5`, `L = O(mu^-1)`, hence `EL = O(epsilon^5)` and `x = O(epsilon^5/gamma_1^2)`. Distinguish the physical oscillator radius, rho-hat and this theorem's enlargement radius, all currently called r in adjacent interfaces. Derive K's upper bound from the chosen numerical bound E, with `log_+` retained. |
| P3-06 | 3a:98–111, `bpP:p3:period-dictionary`; 3b:200, interface conversion | **major** | The scalar constant dictionary is correct, but the map dictionary “phi -> varphi(phi/2pi)” omits scaling the **output** angle. It is not a conjugacy into the physical 2pi-angle coordinates. Further, Part 3 already uses `omega = tilde omega/(2pi)`; 3b then says the frozen frequency is `w = omega/(2pi)`, dividing twice. Test on `tilde h(I)=2pi I`: period-one frequency is 1, and the physical embedding `K(theta)=(I_0,2pi theta)` has frozen frequency 1, not 1/(2pi). | Define `Q(I,theta)=(I,2pi theta)` and state the source embedding as `tilde varphi(phi)=Q(varphi(phi/(2pi)))`. Then `K(theta)=Q(varphi(theta))` has frozen period-one frequency `w=omega=tilde omega/(2pi)`. Include oscillator reconstruction and the frozen (position,momentum) ordering. Keep the correct invariant scalar formulas unchanged. |
| P3-07 | 3a:263, `bpP:p3:iterative`(iii): `W'_(j-1) := D_(rhohat_(j-1)) ... superset W_(j-1)` | minor | The asserted inclusion is reversed when the base is D_(j-1), because rho-hat_(j-1) <= rho_(j-1). The unsubscripted D is also the wrong iteration center. The composition proof itself uses the correct smaller inclusion with that local center. | Define `W'_(j-1) := (D_(j-1))_(rhohat_(j-1)) x T_(bars+s_(j-1)) subset W_(j-1)`. State `Psi_j(W_j) subset W_(j-1)` directly. |
| P3-08 | 3b:125–126, `stepP:p3:inv-lim`: “X_H is Lipschitz on {I in D_(rho/2)} x T_(bars/2)” | minor | A bounded derivative on this nonconvex, potentially disconnected set does not imply the asserted global Lipschitz bound. The ball argument elsewhere correctly avoids this inference. Attempted rescue by the cited convex-set MVT fails on arbitrary D; however, only **nearby** pairs gamma_j(t), gamma(t) are needed. | Bound their action distance uniformly by the already proved Cauchy tail. For sufficiently large j, put the joining segments in D_rho with a fixed positive margin, and apply the derivative bound there. Alternatively pass to the limit pointwise using continuity and the already established local uniform convergence of theta-derivatives. |
| P3-09 | 3b:190, `stepP:p3:pf-meas`: displayed equality splitting the complement | minor | The purported equality includes the entire shell `(Re(D_r) minus D) x T^n` on the right, even where it meets K_Omega. Thus it is only an inclusion/measure upper bound. The subsequent bound and c_n do remain valid. | Replace the set equality by inclusion, or subtract K_Omega from the shell term as well. |
| P3-10 | 3b:210–217, E4–E11 and forward-reference conclusion | minor | Several source observations are overstated as established defects; E5's blanket assertion “cannot all hold as printed” has no exhibited failing inequality, E8 overlooks the explicit use of (108) in CP10 Step 3, and E11 treats a historical Arnold pointer as a missing proof of the scheme despite Appendix B's actual inductive proof. See the itemized source audit below. | Separate verified misprints, proof repairs, convention changes, and unverified allegations. Remove the independent Arnold dependency. Do not enter E5's blanket assertion as verified errata without a concrete refutation in the source's own norms. |
| P3-11 | 3b:80–81, `stepP:p3:lp-an`, and final “only unproved ingredient” claim | minor | The several-complex-variable Vitali–Montel statement is mathematically plausible here, but is substantial imported infrastructure, not a supplied Lean lemma. A filename search found no ready holomorphic normal-family/Vitali theorem matching this several-variable interface; Mathlib's similarly named Vitali/Montel files concern other subjects. Existing N parts are also no longer all unwritten, and `bpN:p5:flow-domain` is not their actual label. | Give Vitali a bounded proof task or replace it with periodic Fourier compactness: uniform strip bounds dominate coefficient tails on smaller strips; real uniform convergence determines each coefficient; finite-mode plus tail convergence gives local uniform holomorphic convergence. Cite actual `bpN:p5:canonical-map`/`flow` and update the stale forward list. Do not claim native formal infrastructure merely from the external-facts list. |

## Averaging interface: exact source comparison and reuse boundary

For m=0, CP10 (23) is

`E < alpha_2 d/(128 c_0 K s)`, with `d=rs`, `c_0=e/2`.

It is exactly `64e K E < alpha_2 r`. The P interface's action/angle domains `D_(r/2) x T_(bars+s/6)` and the three displacement bounds with 9E agree with (24)–(26), after changing the **output angle** by 1/(2pi). The estimate `exp(-Ks/6)E` is a valid weakening of CP10's full (25). Thus the interface's **target statement** has a source; the gap is its construction in the available infrastructure, not a reason to replace it by a source-shaped assumption in a final provider.

The single-step A.1 gives `g_+-g = Pi_Lambda T_K f`, a quadratic/bracket/tail error bound, and weighted displacements. For Lambda={0}, the old g depends only on actions, but its bracket with the new generator is generally nonzero. It must be retained in subsequent steps. CP10's exponential Proposition 1 is a finite iteration of A.1. N's planned `homological` and `iterative` statements can support that construction; setting alpha to alpha_2 only recovers the scalar divisors. The alpha_1 improvement comes from an extra coefficient-level argument, not an inequality between the scalar conclusions.

At the initial R1 capture `blueprint-N/parts/p6-normal-form.tex` did not exist. It appeared during closeout; its new theorem interfaces were then checked as recorded in the addendum below, without treating the evolving draft as an audited proof. N Parts 4–5 do work on neighborhoods of arbitrary sets, which is the right generality. Their geometric widths, norm order, stricter composition smallness (`eta <= 1/2`), and exact labels must be reconciled before certifying 64e and 9. No independent reproof of N's whole analytic layer is recommended.

The tail sentence in `avg-flow` also needs its radius stated: a loss s to s/6 is a loss 5s/6, giving `exp(-5Ks/6)` for the untouched tail on that target, not the quoted `exp(-Ks)` on that same target. Either decay is stronger than `exp(-Ks/6)`, but neither controls the nonlinear remainder of a single flow.

## What I recomputed: constants and failed refutation attempts

All statements below are conditional on a correctly proved `bpP:p3:avg` in the norm actually used by the scheme.

### Initial constants and one KAM step

- `L=max(Mbar,1/M,1/Mhat)`, `x=EM^2L/gamma_1^2`, `K=6 log_+(1/x)/s`, and the minimum defining rho-hat agree in shape with CP10. All divisions and logarithms are guarded by the positive data. `Ks>=6`; since s<1/4, K>24. The enlarged `c-hat=max(8192n,24^(tau+1)/3)` depends only on n,tau.
- The two complex nonresonance bounds follow by integrating the Hessian on the segment from an action to its chosen real center. Pair the l1 norm of k with the max norm of the frequency variation. They give `alpha_i=(2/3)gamma_i K^(-tau)` and `alpha_1>=2MK rhohat`, `alpha_2>=2Mhat K rhohat`.
- Averaging smallness is `64e K E/(alpha_2 rhohat) <=32e Ehat <87 Ehat < c-hat Ehat <1`. This computation is correct.
- `exp(-Ks/6)=min(e^-1,x)<=x`, so `E_+=E x=E^2LM^2/gamma_1^2` is correct once the averaging output exists.
- The displacements are `|Delta I_1| <=(3/4)(Mhat/M) Ehat rhohat`, `|Delta I_2| <=(3/4)Ehat rhohat`, and `2pi|Delta theta| <=(3/4)Ehat s`. The key first bound uses `Mhat L>=1`, in the correct direction. No alpha_1/alpha_2 factor is lost in this conditional calculation.
- From `sup|g|<=5E/4`, radius rhohat/4 gives `|partial_i g|<=5E/rhohat`. The deliberately loose entry bound `80E/rhohat^2` gives induced Hessian norm `80nE/rhohat^2`. Since `80/8192 <1/100`, both Hessian smallness statements are correct.
- Neumann inversion with `U_+=(1+D^2g U^-1)U` gives `U_+^-1=U^-1(1+D^2g U^-1)^-1`. Keeping U^-1 on the left preserves the row-block bounds `2 Mbar_i`. Thus all four doubled matrix bounds and `L_+=2L` work. Enlarged L must be used consistently in **all** definitions; the sequence explicitly does so.
- The normalizations Mhat<=M and Mbar_i<=Mbar are legitimate additional hypotheses of this unfrozen proposition. They hold by choosing compatible bounds. Lowering Mhat increases rho-hat and **decreases** Ehat for fixed L; because L also contains 1/Mhat, one should choose the normalized bounds first and recompute everything. The remark's suggestion to lower them “after computing Ehat” is not a valid substitute for the stated normalized hypothesis.

### Balls, inverse maps, and domain losses

The ball-surjectivity lemma survives the nonconvex-image objection: lift a straight frequency path until its maximal existence time, use the inverse derivative bound to get a Cauchy lift inside a strictly smaller closed ball, then continue by the local inverse theorem. The second claim uses a segment in the resulting **frequency ball**, where the inverse is defined.

For injectivity of omega_+, `|w-w'|<=10E/rhohat <rhohat/(8Mbar)` puts the second old frequency in that ball; old injectivity identifies its nearby preimage. The action segment now lies in D_(rhohat/4). The contraction factor is `80n Ehat <1`. For the shifted inverse, `5E/rhohat <rhohat/(32Mbar)` follows from `160 Ehat<1`. Its row-block displacement is at most `10 Mbar_i E/rhohat <=10(Mbar_i/Mbar) Ehat rhohat`.

The sup-to-Lipschitz lemma is valid on nonconvex real S: close pairs use Cauchy on discs of radius r/2 along the segment; far pairs use `2A <=4A|x-y|/r`. Its 4NA/r bound yields `640n Ehat` for the shifted inverse on D.

Domain ledger:

| Construction | Available domain / loss | Check |
|---|---|---|
| Averaging | D_rhohat to D_(rhohat/2); bars+s to bars+s/6 | Source interface, pending construction |
| Hessian/inverse bounds | D_(rhohat/4) | Cauchy margin rhohat/4 |
| New frequency injectivity | D_(rhohat/8) | frequency-ball lifting plus contraction |
| Shifted inverse | holomorphic on D_(rhohat/16) | margin rhohat/16 into injectivity domain |
| New real base D_+ | within `10 Ehat rhohat <rhohat/16` of D | conjugation plus injectivity proves realness |
| New thickening | `(D_+)_(rhohat/16) subset D_(rhohat/8)` | add the two radii |
| New angle width | bars+s/12 | contained in bars+s/6 |
| Composition image | within `rhohat(1/8+1/16)` of the previous base | contained in previous rho-neighborhood; fix P3-07's notation |

### Recursion and quadratic bound

Writing x with the non-inverted convention used in P gives `x_+=8x^2`. Therefore `log_+(1/x_+)<=2log_+(1/x)` even across the truncation at 1, and `K_+<=24K`. The next cutoff radius is bounded below by `rhohat/(2*24^(tau+1))`; its rho_+ branch is rhohat/16, which is larger than that lower bound. It is bounded above by rhohat/16.

Consequently

`Ehat_+ <=8*24^(2(tau+1)) Ehat^2 rhohat^2 M^2/gamma_1^2`

`<= (8/9)(4s)^(2(tau+1)) Ehat^2 < Ehat^2`.

The square on the exponent is correct. Since 4s<1, CP10's unsquared exponent is a **weaker true upper bound**, not a false conclusion. `c-hat Ehat_+<1` follows. Doubling the constants preserves both block ratios and both normalizations.

### Summation, limit map, and tori

With `c=24^(tau+1)/6`, `q=2*24^(tau+1)=12c`, `c Ehat_0<1/2`, the sums `sum_(k>=m) Ehat_k<=2Ehat_m` and `sum c^k Ehat_k<=2Ehat_0` follow from `2^j>=j+1`. Radii decay at least as 16^-k, and s_k=s_0 12^-k.

The action-limit constants are correct: displacement/tail 20, step Lipschitz 640n, product exponent 1280n Ehat_0<1/6, hence defect Lipschitz at most 2560n Ehat_0<1/3. The tail puts D_* strictly inside `(D_j)_(rho_j/2)`; the strict margin follows from Ehat_j<1/40, even though one intermediate display uses a non-strict sign.

In scaled coordinates, a complex neighborhood radius

`epsilon_k=min(rho_k/(2rhohat_0),s_k/s_0) >=q^(-(k-1))/32`

is available around the real half-domain. Both branches satisfy this bound (q>48 and, here, tau>n>=2). The scaled displacement is at most `(3/4) Ehat_(k-1)12^(-(k-1))`. Thus the constants 192n, 384n and 768n are correct; `384/8192<1/20` and `768/8192<1/10`. The real domain mapping uses `1/32+1/16+(3/4)Ehat <1/8`, so the composition Lipschitz products really apply on the needed real domains.

The uniform real Cauchy bound for Phi_j uses the preceding composition's Lipschitz bound, rather than incorrectly summing increments evaluated at different points. The complex telescoping bound supplies boundedness on the fixed theta strip; Vitali, if provided as an external theorem, then gives holomorphy and derivative convergence. There is no assertion of an analytic **action** limit on the Cantor set.

The final angle bound is `3 Ehat s/(4pi)`. Cauchy at real theta with radius bars/(4pi) gives `||Du||<=3n Ehat s/bars<=(3/4)n Ehat`. Immersion follows. Symplecticity of each finite Phi_j and convergence of theta derivatives give the Lagrangian identity. The action bounds with coefficient 20 are loose but valid; actual total action distance is at most `(20+3/2) Ehat rhohat <22 Ehat rhohat <32 Ehat rhohat`.

For invariance, all three residual terms vanish: the frequency error is at most `20 M_j rhohat_j Ehat_j <=7gamma_1 Ehat_j`; `|partial_I f_j|<=2E_j/rho_j<=gamma_1 Ehat_j`; and `|partial_theta f_j|<=4pi E_j/bars`, where `E_j<=gamma_1 rhohat_0 Ehat_j`. The scaled derivative bound gives the displayed fixed kappa. Fix P3-08's global-Lipschitz assertion; the local passage suffices. No global flow-existence theorem is needed to produce the exhibited entire trajectories.

### Measure and c_n

The max-norm McShane extension and Banach contraction give the global bijection and inverse displacement `eta/(1-lambda)`. For the actual application eta is positive and at most `20 Ehat rhohat`, so rho_1 can be chosen at most `30 Ehat rhohat <r`. (For the abstract covering lemma with eta=0, use a closed neighborhood or any strictly larger positive radius; an open zero-neighborhood is empty.)

The action-complement estimate is `(4/3)^n(a+b)`. The phase extension uses lambda'<1/10 and scaled inverse displacement at most 2Ehat. The angle-cell enlargement is epsilon<=Ehat/(4pi), so `(1.1)^(2n)(1+2epsilon)^n<2^n`. Linear scaling cancels the Jacobian factor on the two sides of each measure comparison. A periodic extension is unnecessary because the preimage cell is explicitly enlarged.

The phase shell lies in N_r(D) because `rho_2+eta<=22 Ehat rhohat<r`. The shell split and subadditivity give

`meas((D x T^n) minus K_Omega) <= (1+2^n)(1+(4/3)^n)(a+b)`.

Adding the outer shell b proves the stated

`c_n=1+(1+2^n)(1+(4/3)^n)`.

For example c_2=134/9 and c_3=94/3. These are deliberately coarse, parameter-independent constants. Arbitrary D is permissible for this **outer-measure** estimate, as in K's `lip-image`; it does not establish measurability of S for frozen P-G. Fix the equality in P3-09. The local/global inverse-frequency Lipschitz claim is correct with the bounded-D qualifier: use a frequency ball for close pairs and diam(D) for far pairs.

## Part 5 versus frozen P-G

I compared `bpP:p0:pg` with the actual frozen Lean binders: positive a,b; open connected bounded V; open W containing closure V; the two-sided frontier collar; positive r0,mu0,B; the four family/coefficient functions; joint analytic P, fast periodicity, fast diffeomorphism on W, Birkhoff form, determinant lower bound, symmetry; then rStar,C,c before r,mu and S. No discrepancy in that transcribed P-G contract was found. In particular the physical region is a product of oscillator discs, the fast canonical period is 2pi, and the torus parameter period is one.

The Part 3 theorem is intentionally not frozen and is only an intermediate result. After P3-05 and P3-06 are fixed it offers the needed analytic family, embedded Lagrangian tori, conjugacy, quantitative displacements and a complement bound. The following obligations remain with Part 5 and must not be described as conclusions of Part 3:

- Derive the analytic complex neighborhood, bounds and uniform fifth-order remainder from the literal family premises, with constants fixed before r,mu. Derive the complex injectivity/nondegeneracy needed by Part 3 from the real fast-diffeomorphism and secular torsion hypotheses on a uniform neighborhood.
- Pay the nonresonant/collar/disc-shell volume losses and KAM smallness using the corrected `E=C mu epsilon^5`, `Mhat=O(mu)`, `Mbar=O(mu^-1)`, `Mbar_1=O(1)`, `Mbar_2=O(mu^-1)`. The smallness condition on mu alone is not an explicit verification of all these choices.
- Reconstruct the slow oscillators and the original fast angles. Check **all seven** `IsCylinderTorus` conjuncts, including differentiability of the original Hamiltonian along K, slow-period/fast-shift equivariance, quotient injectivity, and time preserved with frozen frequency w=omega in Part 3 notation. Ordinary Diophantine follows from the smaller two-scale constant; frequency upper bounds must come from the unperturbed frequency map and reconstruction.
- Produce a measurable, whole-torus saturated S lying inside the physical cylinder. The arbitrary-D outer-measure theorem alone does not give this. Preserve whole tori when enforcing containment; intersection with the cylinder alone need not preserve saturation.
- Prove positive measure and both **strict** inequalities of frozen P-G, including the strict upper bound, using the planned subfamily deletion with lower-bound slack. Neither (3.1) nor the present interface supplies strictness.

These are interface obligations, not newly found counterexamples to frozen P-G. No conclusion-shaped premise may replace them.

## Writer's CP10 errata E1–E11 checked against the pinned PDF

| Item | Disposition and literal source evidence |
|---|---|
| E1 | **Verified misprint.** P. 554 says “n x n_1 submatrix” but gives row indices n_1+1 through n and all n columns. The proof uses the last n_2 rows, i.e. n_2 x n. |
| E2 | **Verified misprint.** P. 565 B.1 initializes `Mhat_0 := M`, rather than Mhat. The later two-scale radius requires Mhat. |
| E3 | **Verified misprint.** P. 566 prints the wrong frequency-map composition in the definition of i-hat_j; B.2 p. 568 explicitly uses `omega_+^-1 o omega`. The corrected typed map is `omega_j^-1 o omega_(j-1)`. |
| E4 | **Verified normalization omission / estimate repair, with scope qualification.** P. 566 (74) uses Mbar_i/Mbar<=1 without specifying compatible bounds; compatible bounds can be chosen, so this is not an intrinsic obstruction. P. 555 (35)'s second-action Mhat/M factor is not obtained from p. 572 (107), which has no such factor. Replacing it by 1 gives the estimate actually proved. This audit establishes the proof mismatch, not a counterexample to every possible sharper estimate. |
| E5 | **Mixed conventions verified; blanket numerical accusation unverified.** P. 551 assigns the action 1-norm, angular sup metric, p/q sup norms, and matrix entrywise sup norm. This is not simply a choice of norm on the second action block. The blueprint's enlarged constants are a legitimate convention change. It does not exhibit a source-norm counterexample proving that all the listed source constants cannot coexist. Keep that allegation `UNREFUTED-TENTATIVE`, outside a verified errata list, until a specific computation establishes it. |
| E6 | **Verified arithmetic sharpening, not false printed inequality.** P. 569 (91) prints `(8/9)(4s)^(tau+1) Ehat^2`. The preceding calculation yields exponent 2(tau+1). Because 4s<1, the printed weaker inequality remains true. |
| E7 | **Valid proof repair.** Pp. 569–570's inverse mean-value reasoning needs the frequency segment in the inverse's domain; it is not guaranteed by an arbitrary D. The ball lemma and the near/far Lipschitz lemma repair this. Composition domains should be stated, as P now does. |
| E8 | **Expository supplement, overstated as a missing estimate.** CP10 p. 572 (108) supplies the scaled Lipschitz estimate, and p. 573 Step 3 explicitly says “Using (108)”. A derivative bound follows on the relevant open domain. Analyticity on a fixed limiting strip is not separately justified there; P's Vitali step fills that detail, subject to its formal infrastructure obligation. |
| E9 | **Uniqueness defect verified; Lipschitz qualification justified.** P. 555 literally says “a unique real-analytic embedding”. Phase translations preserve every stated property without a phase normalization. For arbitrary unbounded disconnected D, bounded inverse differential gives only the uniform local inverse bound; the claimed global inverse Lipschitz property is not automatic. For example choose separated action islands centered at j^2 and local frequency maps centered at j, each with Hessian 1; the local inverse derivatives are 1 but the inverse is not globally Lipschitz. P's bounded-D version avoids that defect. |
| E10 | **Norm-extension issue verified; new c_n is an adaptation.** P. 573 footnote 32 quotes same-constant Kirszbraun extension. That Euclidean result cannot simply be applied with unchanged mixed-norm constants. Max-norm McShane plus the explicit cube-measure lemma is a sound replacement. Failure to reproduce the source c_n is not itself errata. Its value is printed on p. 555, with the measure proof continuing after p. 573; this review independently checks P's replacement rather than certifying every line of those later source pages. |
| E11 | **External-source dependence verified, Arnold gap characterization rejected.** P. 564 explicitly invokes [4, Lemma A.5]; p. 565's Proposition 1 proof invokes [4]'s finite induction. That dependency is unpaid by an unproved N forward reference. But Remark 3 p. 567's “generalizes the inductive theorem” is historical context: B.1 has an actual inductive proof on pp. 567–570. No additional Arnold theorem need be imported once the averaging package is supplied. |

Two further **verified suspected source defects**, not included in E1–E11, should be handed to the orchestrator (no ledger edit here):

1. **CP10 p. 565 (70) and its following split:** the rendered sums say `k in Lambda`, including `(0,k_2) in Lambda`, although (64) excludes Lambda and `g_+-g=Pi_Lambda T_K f` retains those modes. Read the generating-function sums as `k notin Lambda`. With Lambda={0}, the printed (70) otherwise divides the zero mode by zero and normalizes none of the nonresonant modes. This was checked on the page image, not inferred from text extraction.
2. **CP10 p. 564 (66):** the rendered target is `W_(v,sigma)` whereas the source domain has angle width `s-2sigma`. It should be `W_(v,s)`. Test f=g=0: the generating map is the identity and cannot send all points of a strip of width s−2sigma into width sigma when s>3sigma. P's averaging interface already uses the corrected larger target.

## Closeout addendum: newly arrived N Part 6 interface

A concurrent writer added `blueprint-N/parts/p6-normal-form.tex` before this review finished. The second captured hash was `a1ae2ae973439f5bc5b4647111e3f43cb22bd8a78572c406ea711a1963736874`; it is an evolving, untracked draft, separate from R1. I read its homological/Iterative Lemma statements and proofs and Normal Form Lemma statement specifically for consumer applicability, without auditing the whole N part or its source. These actual statements **reinforce** P3-01–P3-03:

1. Both `bpN:p6:iterative` and `normal-form` require `K L_N r <= alpha/p` in addition to nonresonance, with p>1 and q=p/(p−1). The P interface already assumes complex nonresonance but places **no** such Hessian-based radius condition. In the planetary scaling Mhat approximately mu M, gamma_2 approximately mu gamma_1, rhohat can be of order gamma_1/(3M K^(tau+1)); then `K M rhohat/alpha_2` is of order 1/(2mu), not bounded by 1/p. Thus applying the new theorem literally with alpha=alpha_2 and L_N=M is not justified. Expose a version starting directly from the given complex divisor bound, bypassing the preliminary real-to-complex divisor lemma. Do not shrink rhohat by a factor of mu without redoing all subsequent KAM smallness estimates.
2. The actual scalar Normal Form Lemma requires `E <= alpha r/(128qK)` and supplies `|Delta I| <= qK E/alpha`, `|Delta theta| <=10q E/(2pi alpha r)`. These conclusions do not imply the requested `9E/(alpha_1 s)` first-action bound, nor even the requested `9E/(alpha_2 s)` scalar action bound uniformly in Ks. Its angle coefficient 10q exceeds 9 for every q>1. A bound that is weaker than a desired bound is not evidence that the desired theorem is false; it means a sharper accumulated displacement proof is needed. Choosing q near 1 can reconcile the scalar smallness constant 128q with 64e, but cannot repair those displacement conclusions.
3. N's target strip has geometric width one sixth of its **whole** input width. P needs to lose only 5s/6 out of bars+s and preserve bars. A translated loss schedule with the extra width bars must be supplied. Scalar exponential averaging exists in the new draft, but its statement is not the exact P interface.
4. The sum/sup norm mismatch and the missing alpha_1 refinement persist. Consequently the new N draft does not close P's averaging gate by a direct application.

The P master concurrently gained its P1 input. I repeated the requested review build against that changed master: **exit 0, 29 pages, zero `!` error lines and no undefined-reference warnings**. The original 22-page build receipt remains the R1 build; this second receipt is an integration check, not a review of newly added P1. Both reviewed P3 file hashes remain unchanged.

## Formalizability, verification, and closeout

The Cauchy, Neumann, Fourier and max-norm measure ingredients have plausible existing owners. The ball-lifting proof needs a finite-dimensional inverse-function/path-continuation package but has a concrete proof, with no hidden convexity premise. The multivariable holomorphic compactness input needs its own implementation or the Fourier replacement described above. Local Mathlib searches found the analytic inverse-function modules and `hasFDerivAt_of_tendstoUniformlyOn`; no scratch Lean assertion was compiled. N's `bpN:p5:canonical` is the more precise conjugation reference than its symplectic-flow identity alone.

Checks actually run:

- `latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` in `blueprint-P`: **exit 0**, final PDF **22 pages**. That initial log had **0** lines beginning `!` and **no undefined-reference warnings**. It had three overfull boxes: 3a lines 76–77 (3.76pt), 83–86 (41.37pt), and 3b line 222 (6.26pt). Cross-track macros render literal labels, so LaTeX success does not verify those labels' existence or contracts.
- `scripts/lint_sources.sh`: **exit 0**, `check_lean_modules: PASS (124 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (94 frozen declarations)`.
- SHA-256 recheck of both reviewed part files: unchanged R1 hashes.
- No Lean builds, code edits, provider changes, manifest changes, git mutations, or `#print axioms` execution. Axioms of new main results: **not applicable**, this deliverable proves no Lean declaration; frozen P-G still visibly has its manifest-bound `by sorry` body.

Only this report was authored. The requested review build generated files under the ignored `.build/review/` directory. Concurrent workers changed the P master input/public PDF and added P1, N6 and I6 during closeout; these unowned changes were left alone. The public PDF was not generated by this reviewer. No mathematical repair or new source deviation was introduced. The two new CP10 source observations above and the qualified E1–E11 inventory are the errata handoff.

Audit complete; mathematical acceptance remains blocked by P3-01 and the exact averaging/interface repairs P3-02–P3-06. Re-review the finite averaging proof and its constants before treating Part 3 as a completed provider blueprint.
