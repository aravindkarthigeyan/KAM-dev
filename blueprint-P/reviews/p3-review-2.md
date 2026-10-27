# Track P, Part 3: delta review 2

## Verdict: REVISE

**Not every P3-01–P3-11 finding is closed.** The finite two-scale averaging interface, norm choice, local-limit argument, composition domains and source-errata qualifications have been substantially repaired. The core period dictionary now correctly scales the output and divides the frequency only once.

Three findings remain **partially closed**: P3-05's consumer cutoff estimate still has a reversed inequality; P3-06's final consumer-map notation is inconsistent with its cited Part-1 pipeline; and P3-11's replacement Fourier compactness proof reaches only a half strip, despite the unchanged full-strip conclusion. These have concrete local repairs. The rest of the previously checked KAM recursion and measure constants can be retained.

The new P2 oscillator issues are recorded in `p2-review-1.md`. They affect the eventual P-G preparation, but **do not** invalidate P2's separate pure action–angle theorem used in Part 3.

## Scope and immutable inputs

Delta review against `blueprint-P/reviews/p3-review-1.md`, following the complete blueprint review brief, track P / Planetary. Snapshot **P3-R2**:

| Input | Size / SHA-256 |
|---|---|
| `blueprint-P/parts/p3a-two-scale-iteration.tex` | 265 lines, 38,302 bytes; `d6fc6b24e4b3e17fc105ff6e413b94b0b3afa30a96d7d06cd9127c06b7f80fab` |
| `blueprint-P/parts/p3b-two-scale-limit.tex` | 239 lines, 35,647 bytes; `46e692852eef39d6fccbcfcc17bf5bacd1c3935e3cc042b1e5e334de09d457c0` |
| `blueprint-P/parts/p2-averaging.tex` | `3c3c07aeb98795ea12f54ec62d34f3d8e3eb276bcc8adfae6b7467b412744214` |
| Corrected N4 working file | `ef713786581a34855a4e6c3ad1eec69e2eb81ce61b1632990f7bbc5c52ff15b7` |
| Corrected N5 working file | `40560931653c109631d9edbebe453856a49dbb925002536cefc423aa15e01db0` |
| N6 | `b43eaec2cb2f57957807dbf973f31eab6d46fe315a42868a28937c15dda3895c` |
| CP10 PDF | `68fbf161e0aa62fc966f33b3b3c49e2ab0fbcca3eb7fdb0950d62eadcdf18338` |

HEAD recorded during the audit was `fbb85fb5293a0906f5a7332a21f9423c9e1d2238`; concurrent worker commits and the announced N4/N5 corrections mean file hashes are authoritative. Both P3 files and P2 remained unchanged through closeout.

Materials checked: governing AGENTS/PLAN/DECISIONS and writer conventions, full review brief, P3 review 1, revised P3a/P3b, new P2, Part 1's exact period/cylinder pipeline, P0/frozen P-G consumer requirements, and the N45 review plus actual corrected N4/N5 angular Cauchy/bracket/field statements. The CP10 source comparisons in round 1 were retained and the averaging/preparation pages 552, 556–557, 563–565 were reread directly for this review. The new P2 audit contains the detailed finite averaging and oscillator calculations.

This focused tier-2 delta audit checks closure of each old finding and the new repair code paths. It does not reclassify a build or conditional blueprint as an implemented theorem. No manuscript, frozen/manifest, public PDF, source ledger or git state was edited; only the two requested review reports were authored.

## Disposition of every old finding

| Old ID | Status | Revised evidence / exact remaining work |
|---|---|---|
| **P3-01** — one flow cannot give exponential averaging | **CLOSED for the Part-3 interface**, using corrected N imports | `bpP:p3:avg` now invokes P2 `avg`/`nfb`, which performs Step 0, the Case-A/B split and the finite N-step iteration. I independently checked its error decay, domains and accumulated bounds in the companion P2 review. The oscillator extension is not needed for this theorem. |
| **P3-02** — scalar alpha_2 conclusion loses alpha_1 | **CLOSED** | P2 `split` retains `phi^(1)` with divisor alpha_1 at each flow, while `phi^(2)` is independent of theta_1. The resulting first-action displacement is summed through all stages. P2 `direct` uses the already available complex-neighborhood divisor hypothesis, so the unwanted `K L r<=alpha/p` premise has not been added to Part 3. |
| **P3-03** — sum/sup norm mismatch | **CLOSED** | P3a conventions now explicitly use N's `sup_I sum_k` norm. P2 uses that norm throughout. Coefficient-radius/geometric-width conversion is explicit for the strip and offset. Part 3 needs only monotonicity, sup<=weighted norm, average control, and scalar Cauchy estimates for g; no hidden sum-of-coefficient-suprema estimate remains in its induction. |
| **P3-04** — incorrect g estimate | **CLOSED** | The false standalone `(12/11)tE<=E/4` calculation is removed. P2 proves `||g−fhat_0||<=E/kappa<=E/6<E/4`, with kappa=Ks in P3 notation, from the finite average-correction sum. The Part-3 step still legitimately uses sup|g|<=5E/4. |
| **P3-05** — mu^5 versus mu epsilon^5 and cutoff bookkeeping | **PARTIALLY CLOSED** | The physical perturbation size is corrected to `mu epsilon^5 breve P`, and the three radii are distinguished. But P3b line 211 applies a nonincreasing logarithm in the wrong direction to derive an **upper** bound on K from an **upper** bound on x. See R2-01 below. |
| **P3-06** — output-angle scaling and double frequency division | **PARTIALLY CLOSED; core dictionary fixed** | P3a's dictionary now explicitly uses Q on the output, and correctly states `w=omega=tilde omega/(2pi)`. The linear test tilde h=2pi I passes. However P3b line 213 calls the already Q-scaled output K3 while citing the Part-1 pipeline, whose K3 is the unscaled period-one torus and whose Psi already contains S_(2pi). Define the consumer maps unambiguously as in R2-03. |
| **P3-07** — composition domain inclusion reversed | **CLOSED** | The iterative lemma now sets `W'_(j−1)=(D_(j−1))_(rhohat_(j−1)) x T_(bars+s_(j−1)) subset W_(j−1)`, with the local base center restored, and proves Psi_j(W_j) lies in that smaller domain. |
| **P3-08** — bounded derivative on nonconvex domain used as global Lipschitz | **CLOSED** | The invariance limit now compares only nearby gamma_j(t),gamma(t), putting their real joining segment in a common polydisc inside D_(rho/2) x T_(bars/2). The derivative bound there gives the needed uniform estimate B0 delta_j. No global convexity of D is asserted. |
| **P3-09** — complement split asserted as equality | **CLOSED** | `stepP:p3:pf-meas` now uses inclusion and explicitly notes that the outer shell may meet K_Omega. Its measure upper bound and c_n calculation are unchanged and valid. |
| **P3-10** — source allegations and Arnold dependency overstated | **CLOSED** | E1–E11 are now divided into verified statements, convention/proof repairs and tentative allegations. E5's blanket false-constant assertion is withdrawn; E8 acknowledges use of (108); E11 treats Arnold's pointer as historical and the actual averaging input as the dependency. The two verified Appendix-A misprints from round 1 are retained separately. |
| **P3-11** — unsupplied Vitali/formal infrastructure and stale references | **PARTIALLY CLOSED** | Vitali–Montel has been replaced by a concrete Fourier lemma and the written references are updated. Its half-strip proof is sound, but the asserted passage back to the full original strip is not obtained by its displayed exhaustion. See R2-02. |

Thus **8 findings are closed and 3 partially closed** at this snapshot. “Closed” here means the scoped blueprint repair has been verified, not that N or P has a sealed Lean provider.

## Remaining / new delta findings

All locators below refer to P3-R2.

| ID | Location / anchor | Severity | Finding and refutation evidence | Exact proposed fix |
|---|---|---|---|---|
| R2-01 | P3b:211, Part-5 interface | **major** | The text obtains `x<=C epsilon^5/gamma_1^2` and then, explicitly noting that log_+(1/x) is nonincreasing, concludes `K<= (6/s)log_+(gamma_1^2/(C epsilon^5))`. The direction is **>=** from that premise. Taking x to zero under a fixed upper bound makes K arbitrarily large. The smallness upper bound alone cannot rescue the claimed upper cutoff bound. | Choose the **numerical bounds**, rather than unspecified upper estimates, before computing K: e.g. compatible M=C, Mhat=C mu, Mbar=C mu^-1, E=C mu epsilon^5, with C>=1 and mu<=1, gives explicit comparable x and the needed lower bound on x. Alternatively supply `x>=c epsilon^5/gamma_1^2` explicitly. Keep log_+ until an actual lower bound on its argument permits comparison with a plain logarithm. Do not infer an upper bound from `x<=...`. |
| R2-02 | P3b:64–74, `fourier-compact`; line 93, `stepP:p3:lp-an` | **major**, proof of full-strip conclusion | The coefficient argument chooses w'=3w/4 and proves uniform convergence only on |Im theta|<=w/2. The claim that applying this lemma with w arbitrarily close to bars/(2pi) exhausts the **full** strip is false: all those half strips stay inside bars/(4pi). The same issue affects the lemma's unproved phrase that the limiting function is bounded “on the strip” if that means the original full strip. The real analyticity and half-strip limit do follow. | Prove convergence for **every** 0<v<w: choose w'=(v+w)/2, use the tail `B sum_(|k|>N) exp(-2pi(w'−v)|k|)` and its polynomially weighted derivative versions. The common Fourier coefficients give compatible limits on all such strips. Taking v up to w proves holomorphy and the original B bound on the whole open strip, with no loss in the theorem. This is a local repair of the supplied Fourier argument, not a need to import Vitali again. |
| R2-03 | P3b:213, `K=Psi o K3`, `K3=Q o varphi_omega` “in the frozen order” | **major**, consumer-map contract | The referenced P1 cylinder pipeline defines `Psi=Phi o S_(2pi)` and takes K3 to be the **unscaled** period-one primary torus for G3. Feeding a Q-scaled K3 to that Psi scales the angles twice. The revised core P3 dictionary is correct; the consumer sentence has not defined a different Psi that would avoid this conflict. Reading Psi as just the original physical reconstruction could work, but that map must be explicitly named and its domain specified. | With pi swapping action/angle order, write either `K_phys=Phi o S_(2pi) o pi o varphi_omega`, or `K_phys=Psi o (pi o varphi_omega)` with Psi=Phi o S_(2pi). Equivalently, if K3 already contains Q, compose it only with the original unscaled reconstruction. In every version keep w=omega. Align the symbol K3 with the cited Part-1 contract. |
| R2-04 | P3b:150, `bpP:p3:cover` | minor | The abstract covering lemma still allows eta=0 but concludes membership in the **open** neighborhood N_(eta/(1−lambda))(X). For g=0 and nonempty X this becomes N_0(X), which is empty under the stated strict-neighborhood convention. Actual uses can and do choose positive upper bounds eta, so the measure proof is unaffected. This edge case was noted in round 1's recomputation, although it was not a numbered main finding. | State the distance inequality `dist(F^-1(y),X)<=eta/(1−lambda)`, use a closed neighborhood, or add an arbitrary strictly larger positive radius in the open-neighborhood conclusion. For the applications retain the explicit positive radii below r. |

R2-01 is an interface calculation, not a refutation of the two-scale KAM theorem itself. R2-02 is a missing step in the exact full-strip conclusion, with a concrete coefficient-level proof available. R2-03 needs symbol/domain reconciliation rather than another frequency rescaling.

## What I rechecked after the norm and averaging changes

The change to N's norm does not alter the following previously recomputed constants. The step needs only a finite weighted input norm, the finite-iteration output estimate, `sup|g−fhat_0|<=E/4`, and `sup|f|<=E`. Scalar action Cauchy estimates then proceed exactly as before:

- `alpha_1=(2/3)gamma_1 K^-tau`, `alpha_2=(2/3)gamma_2 K^-tau` on the complex rhohat neighborhood;
- `alpha_1>=2MK rhohat`, `alpha_2>=2Mhat K rhohat`, and averaging smallness ratio at most `32e Ehat<c-hat Ehat<1`;
- `E_+=E^2 L M^2/gamma_1^2` from the now-proved exponential output and `exp(-Ks/6)<=x`;
- `sup|Dg|<=5E/rhohat`, `||D^2g||<=80nE/rhohat^2`, with `80nEhat<1/100` supplied by c-hat>=8192n;
- doubled Hessian/inverse bounds, preserving the row-block ratios because the old inverse remains the left factor;
- `x_+=8x^2`, `K_+<=24K`, `rhohat_+>=rhohat/(2*24^(tau+1))`, and

`Ehat_+<=(8/9)(4s)^(2(tau+1)) Ehat^2<Ehat^2`.

Part 3 deliberately keeps the old 9E displacement bounds although P2 proves 3E for the action blocks. Therefore its 3/4, 10, 20, 32, 640n, 2560n, 192n, 384n and 768n constants remain valid without reoptimizing them. The minimum normalization should still be chosen before recomputing L,K,rhohat,Ehat; the old informal remark about lowering constants “after computing Ehat” should not be implemented as an invariant-constant claim.

The corrected local composition domain is sufficient: the new real base is within rhohat/16 of the preceding base; its thickening adds another rhohat/16; the averaging displacement is less than rhohat/16. Hence the image is inside the preceding rhohat neighborhood, which is contained in its rho neighborhood. The real half-domain mapping and the rescaled Cauchy radius used for Lipschitz estimates also retain strict room. There is no newly introduced convexity premise.

For the invariance limit, `r=32Ehat rhohat<rho/4`. Uniform real convergence makes delta_j small. A real segment between the limit point and the j-th point is then contained in the action rho/2 neighborhood about the original base. Uniform scalar Cauchy estimates for f on a larger strip/action domain bound DX_H there. This repairs the exact nonconvex-set defect from P3-08. No assumption of globally bounded frequency or a compact angle lift is used.

For the Fourier replacement, the contour-shift sign and half-strip tail are correct: shifting to `Im theta=−w' sign(k)` gives coefficient decay `exp(-2pi w'|k|_1)`; multiplying by the half-strip character bound yields `exp(-pi w|k|_1/2)` at w'=3w/4. Polynomial factors from any fixed derivative order preserve summability. The defect is the attempted exhaustion, not those estimates or the feasibility of a Fourier proof.

The measure proof remains an **outer-measure** argument for arbitrary D, as inherited from K's Lipschitz-image lemma; Part 3 does not thereby prove Borel measurability of the final frozen Kolmogorov set. The complement inclusion is now in the correct direction. The shell and extension constants still give

`c_n=1+(1+2^n)(1+(4/3)^n)`.

For n=2 this is 134/9, for n=3 it is 94/3. The new norm does not occur in the geometric extension or shell counting after the already checked displacement/Lipschitz estimates. The eta=0 abstract edge case in R2-04 can be repaired without changing those positive application radii.

## Source and Part-5 boundary

The revised E1–E11 dispositions now match the scoped round-1 evidence. In particular the squared quadratic exponent is correctly described as a sharpening of a still-true printed bound; the matrix-normalization issue is separated from an intrinsic theorem obstruction; the norm change and McShane replacement are adaptations; and no historical Arnold pointer is treated as a substitute for or a missing part of CP10's actual B.1 induction.

The source size `E=C mu epsilon^5` on CP10 p. 560 is now correct. P3's list of **non-conclusions** appropriately retains the literal frozen-P-G obligations: analytic complex neighborhood, uniform family bounds, complex frequency injectivity/nondegeneracy, volume losses, oscillator reconstruction and the seven `IsCylinderTorus` clauses, Borel measurable whole-torus family S, positivity and strict measure inequalities. A successful Part-3 repair is not closure of P-G.

P2's new alleged source statement `r_p=r_q=0` on p. 563 is false and is independently rejected in its review; it has not contaminated the revised P3 E1–E11 list. The actual p. 563 action-loss inconsistency is handed off separately in that report. No source or errata ledger was edited here.

## Verification and closeout

- Shared review build for P2/P3: `latexmk -g -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` in `blueprint-P`, **exit 0**, **38 pages**, **0** final log lines beginning `!`, **no undefined-reference warnings**. Overfull boxes remain editorial. The build validates neither cross-track statement contracts nor mathematical inequalities.
- `scripts/lint_sources.sh`: **exit 0**, `check_lean_modules: PASS (175 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- Every concrete internal, K and N reference used by revised P3 exists. The only absent P label is the explicitly forward `bpP:p5:kam-application`.
- Final P2/P3 input hashes match the snapshot table. `git diff --check` passed. No Lean builds or `#print axioms` were run; no new Lean result or provider is certified. Only the two requested Markdown reviews were authored; allowed build products are confined to the ignored review build directory. Concurrent unrelated edits/commits were left alone.

The delta audit is complete. Repair R2-01–R2-03 and the minor covering edge case, then recheck those exact consumer and full-strip contracts. Most of the earlier analytical and source-fidelity work is now reusable; do not reopen the closed pure averaging/norm/domain findings merely because the separate oscillator preparation still needs repair.
