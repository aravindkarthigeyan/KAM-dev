# Track P, Part 2: independent refute-first review 1

## Verdict: REVISE

The **pure action–angle two-scale averaging construction** (`direct`, `split`, `nfb`, `avg`) survives recomputation, conditional on the corrected N Parts 4–5 interfaces inspected below. It supplies the exact averaging interface used by Part 3, including its domain, finite normal-form iteration, both divisor scales, exponential remainder, average correction and displacement constants. It does not rely on N45-01's false sum of global angular derivative norms.

The **oscillator extension is not yet proved by the written transfer argument**: it drops a factor when importing N's Lie-series/composition estimate. Its subsequent iteration also drops b in a Case-B denominator. The statement may be repairable with the same generous final constants, but its present proof is not an acceptance receipt. The oscillator period dictionary is incomplete, and one alleged CP10 erratum misquotes the pinned page.

This is a review of the new blueprint and its source/consumer interfaces. It changes no frozen theorem and certifies no Lean provider. Part 3's separate delta review is `p3-review-2.md`.

## Snapshot and materials

`blueprint-P/parts/p2-averaging.tex`: **253 lines, 38,690 bytes**, SHA-256 `3c3c07aeb98795ea12f54ec62d34f3d8e3eb276bcc8adfae6b7467b412744214` (snapshot **P2-R1**).

The shared checkout changed during the review. HEAD recorded during the audit was `fbb85fb5293a0906f5a7332a21f9423c9e1d2238`; the hashes below identify the actual reviewed inputs more precisely than the moving branch head.

| Input | SHA-256 |
|---|---|
| P3a revised | `d6fc6b24e4b3e17fc105ff6e413b94b0b3afa30a96d7d06cd9127c06b7f80fab` |
| P3b revised | `46e692852eef39d6fccbcfcc17bf5bacd1c3935e3cc042b1e5e334de09d457c0` |
| N4 **corrected working file** | `ef713786581a34855a4e6c3ad1eec69e2eb81ce61b1632990f7bbc5c52ff15b7` |
| N5 **corrected working file** | `40560931653c109631d9edbebe453856a49dbb925002536cefc423aa15e01db0` |
| N6 | `b43eaec2cb2f57957807dbf973f31eab6d46fe315a42868a28937c15dda3895c` |
| `sources/incoming-P/cp10.pdf` | `68fbf161e0aa62fc966f33b3b3c49e2ab0fbcca3eb7fdb0950d62eadcdf18338` |

At the initial capture N4/N5 still had their old hashes `9ea8b6be...` and `fda4ea6d...`. Their corrections arrived during this review. I then read the **actual repaired** angular Cauchy, bracket and field proofs and used the full hashes above for the applicability conclusion. This is not a blanket re-audit of all new sharp-norm additions.

Materials: the full review brief, AGENTS/PLAN/DECISIONS and writer conventions; P PLAN and P0 conventions/frozen P-G consumer contract; P2 in full; N45-01/02 and the rest of `blueprint-N/reviews/p45-review-1.md`; N4–N6's actual Cauchy, bracket, flow, adjoint, composition and iterative interfaces/proofs; old P3 findings and revised P3 consumers. CP10 pp. 552, 556–557, 563–565 were read directly from the pinned PDF. **Printed p. 563 was rendered and inspected**, resolving the erroneous quotation identified below. Earlier pinned-page checks of CP10 pp. 554–555 and Appendix B were retained for the P3 delta comparison.

Method: focused tier-2 audit, with a separate refutation pass and explicit arithmetic checks; no second agent or Lean proof certification is claimed. Only the two requested reports are authorized edits. The brief permits the blueprint build and waives Lean builds.

## Findings

All P2 locators refer to P2-R1.

| ID | Location / anchor | Severity | Finding, evidence, and refutation status | Exact proposed fix |
|---|---|---|---|---|
| P2-01 | `bpP:p2:osc-iter`, lines 190–191; “ratio ... multiplied by at most eb”, followed by denominator `1−2b delta/(bar alpha delta_nu)` | **major** | The transfer does not justify that denominator. N's adjoint estimate yields coefficient ratio `e eta/4`, eta=`2||phi||/(rho sigma)`. Replacing the bracket constant 2/e by 2b multiplies that ratio by eb, yielding `e^2 b eta/4`, not b eta. The last simplification in N uses e/4<=1; after the replacement it would need e^2/4<=1, which is false (e^2/4≈1.847264). Thus the claimed same proof cannot give `1−b eta`. This is a proof gap, not a demonstrated counterexample to the desired oscillator theorem. Attempted dismissal by the stronger smallness fails: smallness makes both denominators positive but does not reverse their ordering. | Write the extended adjoint/composition lemma with its actual constants and Taylor-remainder equality. A safe consequence of the stated transfer is the looser denominator `1−2eb delta/(bar alpha delta_nu)`, since the effective parameter is eb eta. The existing `delta<=bar alpha delta_nu/(16b)` gives eb eta<=e/8<1/2, so this route has sufficient smallness. Recompute `osc-iter` and its consumers with that denominator, or provide a genuinely sharper composition proof for the printed denominator. Do not silently claim the latter from N's unchanged proof. |
| P2-02 | `stepP:p2:oa-first`, line 213, Case B: `(1−y0/2)^−1` | **major** | Even accepting the printed oscillator step, its denominator with doubled losses is `1−2b E/(bar alpha*4 delta_nu0)=1−b y0/2`. The proof loses b. For the safe correction in P2-01 it becomes `1−eb y0/2`. Setting b=1 is unavailable: m>=1 and b=1+m. The conclusion can plausibly retain its constants because the actual y0 bound contains 1/b; this observation repairs neither displayed equality automatically. | Retain b (and e if using P2-01's safe version). Use `b y0<=1/(64 kappa)` to prove the same coarse inverse-factor bound <=32/31. In the inductive denominator, explicitly bound `2b u_i` or `2eb u_i`, rather than citing only `u_i<=2^-7` with b unbounded. Re-run the displayed Case-A/B and induction constants before certifying `osc-averaging` and `averaged-remainder`. |
| P2-03 | Source-errata item at line 248: CP10 supposedly says “r_p=r_q=0” | **major**, source fidelity | The rendered CP10 p. 563 actually says **r_p=r_q=epsilon_0**. The claimed zero-radius quotation is false. It agrees with p. 556, so that alleged inconsistency cannot be recorded as verified source errata. A separate genuine action-loss inconsistency is described below. This was checked on the image, not merely the extracted glyphs. | Withdraw the zero-radius allegation. If reporting the genuine action-loss issue, quote `rho=bar rho` and `r=bar rho` at p. 563, compare them with A.1's `rho<r/2`, and label the proposed loss `rho=bar rho/4` as a repair inferred from the intended output radius bar rho/2. Do not replace one quotation by another without distinguishing them. |
| P2-04 | `bpP:p2:use5`(3), line 241: “alpha=tilde alpha/2pi, mu unchanged ... (P3 period-dictionary)” | **major**, consumer interface | The pure action–angle fixed-action dictionary cannot be applied unchanged when Cartesian oscillators remain. Changing only the fast angles phi=2pi theta while leaving I,p,q fixed pulls the form back to `2pi dI wedge dtheta+dp wedge dq`, which is not a single conformal multiple of the new standard form. Dividing the whole Hamiltonian by 2pi would incorrectly divide oscillator speeds as well. The action/oscillator scaling necessary to preserve the physical dynamics is omitted. | Specify the full mixed-coordinate dictionary. For example the **canonical** conversion `phi_CP=2pi theta`, `I_CP=I/(2pi)`, with p,q unchanged, keeps Hamiltonian values and mu unchanged and gives alpha=alpha_CP/(2pi), `r=2pi r_CP`, `s=s_CP/(2pi)`, and unchanged oscillator radii. Alternatively give a full conformal scaling of all position components and its Hamiltonian factor. Verify the domains, d and displacement bounds under that actual map. P3's later all-angle dictionary remains valid after the oscillator action–angle transformation. |
| P2-05 | `nfb` proof line 96 and Case-B line 104; interface-report/errata prose lines 26,153,158,250 | minor | Several prose/arithmetic statements are stale or inaccurate: S_i need not be >=s (bar s=0 and final budget s/6); `3/e<=1.1` is false (`3/e≈1.103638`); and Part 3 has already changed norm and replaced the one-flow sketch, contrary to the “must change” wording. No final pure-angle estimate depends on these mistakes. | Verify admissibility by `S_i=bar s+s_i>2 sigma_i` directly. Replace 1.1 by 1.104 or simply 3/e<3. Mark the P3 norm/finite-iteration changes as done and retain only current consumer obligations. |

The principal unpaid mathematical step is P2-01. No claim is made that the final oscillator constants 400, 3 and 9 are false. There is substantial numerical slack, and a concrete repair route is available; the repaired proof must be written and checked before treating those statements as proved.

## N45-01/02: exact dependence audit

The norm now used consistently by P2 and revised P3 is

`sup_I sum_k |fhat_k(I)| exp(2pi s_N |k|_1)`.

P3's coefficient radius is `s_P=2pi s_N`; every angle width, loss and strip offset is converted, while the action radius is unchanged **between these two already period-one coordinate systems**. This is not a license to change physical CP oscillator coordinates as in P2-04.

N45's original false form was `sum_j sup_I ||partial_theta_j u||_(I,s)`. The repaired N4 statement instead supplies a sum **at fixed I**, its supremum-of-sum consequence, and the individual global derivative estimates. N4's repaired bracket proof fixes I, applies the pointwise algebra inequality, groups the angular sums there, bounds the action derivative norms globally, and takes the supremum last. N5's field proof now uses **individual** angular derivative estimates.

Those repaired interfaces suffice here:

- `split` bounds each component of the vector field on a point of the flow. The first block uses `partial_theta_1 phi^(1)`, with each coordinate bounded by the individual estimate or by the pointwise sum. There is no sum of independent global suprema over theta coordinates.
- `direct`, `nfb` and N6's iterative remainder use the repaired dimension-free scalar bracket. No new factor n must be inserted into their constants merely because N45-01 was false.
- In `osc-bracket`, treat x=(I,p,q) as the fixed Fourier parameter. Group the theta-derivative sums at that x, as in repaired N4. The p/q terms can legitimately use `sum_j global_norm(partial_p_j u)<=m max_j global_norm(partial_p_j u)` with m separate coordinate-Cauchy bounds. That factor m is explicitly present. Only then take the supremum over x. This proves the printed W and field bounds without the false angular global sum.

The oscillator bracket proof should spell out this fixed-parameter order in `ob-prod`, especially during reconciliation with the N45 fixes. But its estimate is supported by the corrected N4 proof; the oscillator **composition** factor problem is separate and is not cured by N45-01/02.

## What I recomputed: direct divisors and the two-scale split

N6's preliminary real-to-complex divisor lemma is the only place where the base nonresonance, frequency Lipschitz bound, radius restriction KLr<=alpha/p and conjugate-exponent identity are used. Once the denominator bound `|k dot omega(I)|>=alpha/q` is assumed on the full complex neighborhood, the coefficient formula, holomorphy and norm estimate remain valid for any q>=1, including q=1. Neither a global Lipschitz bound on the frequency map nor an extra action-radius loss is needed.

For the two-scale step, the generator is the finite sum over **nonzero** modes with |k|_1<=K. Splitting it into k_1 nonzero and k_1=0 gives

`||phi^(1)||<=q delta/(2pi alpha_1)`, `||phi||<=q delta/(2pi alpha_2)`.

The second part has no theta_1 dependence. On the whole actual flow trajectory, its first-action vector-field contribution vanishes. The flow stays in the smaller domain where the Cauchy estimates hold, so integrating the first block uses alpha_1 while all other blocks can use alpha_2. The signs `(partial_I phi,-partial_theta phi)` agree with the frozen field after reordering the written action-first arguments. The three displacements in `split` follow, with the stated 1/e angular derivative factor and without introducing alpha_1/alpha_2 elsewhere.

This is the missing ingredient that cannot be recovered by discarding alpha_1 and invoking only a scalar displacement conclusion.

## Pure action–angle finite averaging: full arithmetic and domain check

Let Abar=2pi alpha_2, eps=E, kappa=2pi Ks, and keep the strip offset bar s unchanged. The hypothesis `128 K E<=alpha_2 r` gives

`y0=48E/(Abar r s)<=3/(8 kappa)<=1/16`.

Step 0 uses action loss r/8 and angular loss s/6, so its output is `(3r/4,bar s+2s/3)`. Its iterative smallness and composition range hold (`y0<=1/16<1/4`). The scalar estimate is

`E1<=(8/7)(1+2/e)y0 E<=(3/(4 kappa))E<=E/8`

in Case A, because `(8/7)(1+2/e)≈1.983724<2`. In Case B repeat with doubled losses: the action output is r/2, the remaining angular budget s/3, and the exponential estimate follows from

`(32/31)(1/(2e)+1/e)<1`.

In that branch g=fhat_0 exactly. Its action displacement 3E/(e Abar_j s) and angle displacement 4E/(Abar r) meet the stated final bounds; the incorrect 1.1 intermediate decimal is unnecessary.

Set `N=floor(kappa/(12 log 2))`. Then N<kappa/8. The N=0 case stops after the first map and uses `exp(-kappa/6)>1/4`; its first-map displacements are 6/e<3 and 8<9. For N>=1 the subsequent losses are

`rho=r/(8N)`, `sigma=s/(4N)`,

with `r_i=3r/4−2(i−1)rho`, `s_i=2s/3−2(i−1)sigma`. Thus the final radii are exactly r/2 and bar s+s/6. At the last input step, `s_N=s/6+2sigma>2sigma`, and similarly `r_N>2rho`; this is the correct admissibility argument in place of the false S_i>=s sentence. All flow images compose into their preceding domains.

The tail factor per later step is at most 1/8 because `2pi K sigma=kappa/(4N)>=3 log 2`. The initial error bound yields

`E1<3 Abar r s/(2^15 N^2)<Abar rho sigma/2^8`.

For the old average decomposition, each later increment has weight at most 1/3 (the proof uses the looser 1/2), while the first average has weight at most 1/N. Therefore

`|g_(i−1)|_*<=E1+E/N<=Abar rho sigma/16`.

Inserting this and `E_i/(Abar rho sigma)<=2^-8` gives contraction at most

`(128/127)[(2/e)(1/16+1/256)+1/8]≈0.175228<1/4`.

So `E_i<=4^(1−i)E1`. Summation gives `||g−fhat_0||<=4E1/3<=E/kappa<=E/6<E/4`; the exponential bound is `E_(N+1)<=4^(-N−1)E<=exp(-kappa/6)E`. The normal-form average is independent of all angles because every retained Fourier mode is zero, even though later averages have changed their action dependence. Their bracket with the next generator is retained through g_*; it is not discarded.

The two-scale displacement sums use `N E1<3E/32`, giving

`Abar_j s |Delta I_j| <= (6+1/2)E/e <2.4E<3E`,

`Abar r |Delta theta| <= [8+(32/3)(3/32)]E=9E`.

Case A has a strict inequality at the last step; the theorem only claims <=. Symplecticity, injectivity, reality and affine angle periodicity pass through the finite composition. The constant h need not have finite weighted norm: N's transform uses its homological derivative, which does have finite norm.

Finally set `s_N=s_P/(2pi)` and `bar s_N=bar s_P/(2pi)`. Then `Abar_j s_N=alpha_j s_P`, the strip offset converts exactly, and `exp(-kappa/6)=exp(-K s_P/6)`. The CP10/P3 condition `64e K E<alpha_2 r` implies `128 K E<=alpha_2 r` since 64e>128. Thus `bpP:p2:avg` really implies **all** of revised `bpP:p3:avg`, with the stronger action constants 3E. This closure is independent of the oscillator extension.

All branches include E=0. Then y0=0 forces Case B, the generator and corrections vanish, and the argument has no division by E in the branch used. Arbitrary nonconvex/disconnected real D is permitted; only the prescribed neighborhoods and local polydiscs are used.

## Oscillator extension: verified components and unpaid composition constant

The scalar oscillator bracket is consistent with the frozen `(q,p)` order: `X_u=(partial_p u,-partial_q u)` and `{u,w}=Du X_w`. The written domain order `(theta,I,p,q)` must be permuted when reading its explicitly stated vector order `(dot theta,dot I;dot q,dot p)`; no adjoint or complex conjugation enters symplecticity.

Each p/q derivative costs its own coordinate radius loss. Multiplying the two action/angle terms and the two oscillator terms gives exactly

`W=(1/e)(rho/(r0−r+rho)+sigma/(S0−S+sigma))`

`+m(rho_q/(r_q0−r_q+rho_q)+rho_p/(r_p0−r_p+rho_p))`.

Dividing by `delta_nu=min(rho sigma,rho_p rho_q)` is in the correct direction; W<=2bR, b=1+m. The anisotropic field bound is `nu(X_phi)<=||phi||/delta_nu`, independent of b. Holomorphic flow, reality and the matrix symplectic identity therefore extend to the larger finite-dimensional phase space. These facts do not by themselves extend the weighted Fourier composition estimate with its old constants.

For clarity, repeating N's h-bracket argument with coefficient 2b gives the majorant

`||ad_phi^h u||/h! <= (2b h^2 ||phi||/delta_nu)^h/(2h)! ||u||`.

Relative to the desired geometric parameter `2b||phi||/delta_nu`, the remaining factor is `h^(2h)/(2h)!`: it already equals 1.0125 at h=3 and grows asymptotically like `(e^2/4)^h/sqrt(4pi h)`. The direct transfer does not prove a series bound with ratio `2b||phi||/delta_nu`. The safe effective parameter is `2eb||phi||/delta_nu`, as P2-01 explains. A sharper composition theorem might exist, but is not established by the printed substitutions.

The oscillator iteration itself has ample slack if that safe denominator is adopted and the Taylor/composition equality is supplied. Its Step-0 loss products satisfy `delta_nu0>=d/64`; its smallness gives `b y0<=1/(64 kappa)`. This bounds the corrected Step-0 inverse factor by 8/7, and the corrected doubled-loss inverse factor by 32/31. The Case-A computation remains

`E1<=(32/7)b y0 E<=E/(14 kappa)<0.08E/kappa`,

`E1<294 b E^2/(Abar d)`.

Later losses give `delta_nu>=d/(64N^2)` and `E/(N Abar delta_nu)<=1/(512b)`. Since `N E1<0.01E`, the corrected denominator is also uniformly bounded by 128/127, and the claimed contraction has substantial room. The average correction sum `(4/3)*294<400` and the displacement constants 3,9 retain room. This recomputation is a **repair proposal**, not certification of the unrewritten oscillator proof.

## Averaged remainder, physical size, and source check

The cutoff `K=15 log(1/epsilon)/(pi s0)` is correct in the geometric-width convention: `kappa=30 log(1/epsilon)` and `exp(-kappa/6)=epsilon^5`. The restriction epsilon<exp(-1/5) ensures kappa>6.

Conditional on a corrected oscillator theorem, homogeneity permits f=mu P with `||f||<=mu`, even if its norm is strictly less than mu. It gives

`H o bar phi=H0+mu<P>+Ptilde`,

`||Ptilde||<=400(1+m)mu^2/(Abar d)+mu epsilon^5`.

This is the proposition's actual result. It yields `E_KAM<=C mu epsilon^5` **after** Part 5 pays the additional condition `mu/(Abar d)<=C epsilon^5` and adds the uniform fifth-order secular remainder. It never yields mu^5. The norm of the tail alone is <=mu epsilon^5; the total perturbation includes the average correction as well.

For the CP parameter choices, `alpha` is proportional to `gamma_bar/K^tau` and the action radius in (37) is the minimum of a fixed radius and a multiple of `gamma_bar/K^(tau+1)`. Thus the inverse Abar d branches involve fixed multiples of `K^(2tau+1)/gamma_bar^2`, `K^tau/gamma_bar`, and fixed widths/radii. CP10 (61), together with sufficiently small epsilon and mu<=epsilon^5, plausibly pays these branches (substitution gives the required epsilon^5 powers with logarithmic room). This branch check and the conversion in P2-04 must be written using the actual fixed-family constants by Part 5; it is not a consequence of abstract R1/R2 alone. The remark labels it a Part-5 obligation, appropriately.

Source fidelity:

- CP10 (23)–(26), p. 552, have the correct scalar d=rs, c0=e/2 specialization and the 9E displacements. The new norm is a disclosed adaptation, not a literal source identity.
- CP10 p. 565's split (70)–(71) supplies the first-action mechanism; the generating sum must be read over nonresonant modes, as identified in P3 review 1. P2 uses the corrected nonzero modes for Lambda={0}.
- The p. 564 (66) target `W_(v,sigma)` is the verified strip misprint previously reported. P2's map targets the original strip and is unaffected.
- **The new claimed p. 563 zero oscillator radius is not printed.** The image explicitly shows epsilon_0, so withdraw it.
- A genuine independent **suspected action-loss defect** is visible on that page: it assigns `rho=bar rho` and later `r=bar rho`, while A.1 p. 564 requires rho<r/2; its claimed output action radius is bar rho/2. The natural repaired loss for that output is rho=bar rho/4. This is a source-sketch consistency issue and a proposed repair, not an authority to silently change source hypotheses. P2's own finite loss schedule avoids it.
- P2 line 231 labels the full construction as CP10 Section 4, but that section uses **one A.1 step** with g_+=mu<P>; P2 instead uses finite exponential averaging and absorbs its changed average into Ptilde. This is a legitimate disclosed route adaptation once its oscillator proof is fixed, with a smaller final strip s0/6 rather than the source Section-4 width 2s0/3.

No frozen P-G premise should be replaced by an averaging conclusion assumed as a new hypothesis. The analytic extension, Borel whole-torus family, oscillator reconstruction and strict measure conclusions remain Part-5 obligations.

## Checks and closeout

- `latexmk -g -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` in `blueprint-P`: **exit 0**, **38 pages**, **0** lines beginning `!` in the final log, **no undefined-reference warnings**. It has overfull boxes, including P2's long cross-reference list. This is document validation, not mathematical acceptance.
- `scripts/lint_sources.sh`: **exit 0**, `check_lean_modules: PASS (175 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- All concrete internal/K/N/P labels used by P2 exist. Revised P3's only absent P reference is the explicit forward reference `bpP:p5:kam-application`.
- P2 and both P3 hashes remained unchanged at the final capture. `git diff --check` passed. No Lean build, scratch elaboration, `#print axioms`, frozen/manifest edit, source-ledger edit or git mutation was performed. New theorem axiom inventory: not applicable to these Markdown-only review outputs.

The pure two-scale Part-3 interface can be retained after the minor P2 prose fixes and pinning the corrected N imports. The oscillator extension, its physical coordinate dictionary and its total remainder consumer must be repaired/reviewed before Part 2 as a whole is accepted. The false source quotation must be withdrawn; the genuine action-loss observation is handed to the orchestrator here.
