# Track P Parts 1–4: blueprint closure check

Marker: **closure-p14**. Independent review, 2026-10-27.

**P1 CLOSED; P2 CLOSED; P3 OPEN; P4 CLOSED.** All 30 numbered findings in the five preceding reviews are fixed. Part 3 retains one minor normalization instruction already cautioned against in review 2, and the closed-neighborhood repair needs one minor adjustment in its shell proof. Neither open item refutes the KAM theorem; both have exact local textual fixes below.

“CLOSED” means closure of the reviewed blueprint findings and their affected arguments. It does not certify Lean implementation, sealed providers, or the subsequent P-G assembly.

## Scope and snapshot

Read `p1-review-1.md`, `p2-review-1.md`, `p3-review-1.md`, `p3-review-2.md`, and `p4-review-1.md` in full, including their recomputation sections and unnumbered caveats. Read the current five part files and the repair history. Standards: `.drafts/briefs/bp-review.md`, AGENTS, PLAN, DECISIONS, and the writer's convention ruling. Checked the relevant current N4/N5/N6 interfaces, P1/P3/P4 consumer contracts, and frozen physical/cylinder torus and fast-diffeomorphism definitions. The previous reviews' pinned-source audits remain source evidence; this closure check additionally reread CP10 printed p.563 directly for the corrected source attributions. It is not a new page-by-page audit of CP10.

Initial HEAD: `8943c906360758487141f1e1484d686334025580`. Concurrent commits advanced HEAD during checking; the following file hashes define this report's snapshot and were rechecked at closeout.

| File, relative to `blueprint-P/parts/` | Lines / bytes | SHA-256 |
|---|---:|---|
| `p1-hamiltonian-tools.tex` | 256 / 40184 | `71125916b1c5316e440916dd15e22d267a891c2d2b97188a7afb46ba2ff6af33` |
| `p2-averaging.tex` | 257 / 43630 | `d0ae8194e5e562a01289b2e53cad100a0ad197a0ff15fad6fa7ac9bb2c27764b` |
| `p3a-two-scale-iteration.tex` | 265 / 38507 | `20ca825e59c33a8f2ba38265dcc453e9809b24705811ecdfb89da2251ccc2982` |
| `p3b-two-scale-limit.tex` | 242 / 38413 | `f8d2719c1a45f48e2b85689da930043bd49a91b387c5b296aa97109cfb4202e4` |
| `p4-pg-measure.tex` | 233 / 35440 | `4c33d0e61f8706c7c386b88da819b3cbb1d969bf299ee029951b969521e46adb` |

Repair commits inspected: `91dda1a` (P1), `d1c286c` (P3 round 1), `2c4289d` (P3 round 2), `5f07e80` (P2), `2b7feeb` (P4 consolidation), and `e68344a` (P1 scope clarification). Statuses below follow the current text, rather than the commit descriptions. Line references use this snapshot; P3a and P3b are distinguished explicitly.

## Part 1 — CLOSED

| Finding | Status | Current evidence and verification |
|---|---|---|
| P1-01: completion measurability does not imply frozen Borel measurability | FIXED | P1:23–24 distinguish `NullMeasurableSet` and Borel `MeasurableSet`; 192, 196–198 prove the chart's Borel-image result using countably many local inverses. Lines 205 and 213–218 supply the quotient-cell and Lipschitz-family Borel versions, with explicit sigma-compact or injective Borel input. The null remainder is no longer used to assert Borelness. |
| P1-02: noninjective charts need not preserve volume | FIXED | P1:192 explicitly restricts equality to injective charts and retains only the upper bound otherwise; 198 gives the corresponding area-formula argument. The double-cover polar example is acknowledged. |
| P1-03: missing positivity of the comparison norm | FIXED | P1:167 requires `0 < nu(k)` for nonzero k; 173 performs the negative-power comparison only on positive bases and records the zero-base counterexample. |
| P1-04: missing positive physical Diophantine constant | FIXED | P1:150 assumes `tilde gamma > 0`; 153 carries positivity through division by `2*pi`. This pays the frozen physical torus's existential positive-gamma clause. |
| P1-05: positive conformal factor and total real restriction | FIXED | P1:73 binds `c > 0`, identifies the real open slice, and explicitly permits any total extension off that slice. The proof uses no off-domain property. |
| P1-06: ill-typed unsplit lattice vector and L-clause numbering | FIXED | P1:17 defines `iota_k=((k_i),0)` and reserves the nested vector for the fast/slow split; 83–89 give separate L4, L5, L6 items. Period/pipeline formulas use the corrected vector. |
| P1-07: angle cell/conformal factor and disagreement with P3 | FIXED | P1:222 distinguishes `Q_(2*pi), c=1` from `Q_1, c=2*pi`, with the matching Jacobian. P3a:95–108 and P3b:216 now agree with P1:143 on the unscaled input torus and frozen frequency `w=omega`. The former pending P3 correction has actually landed. |

Regression check: the chart-field proof still transports differentiability in both directions using a local inverse (P1:52–58); it does not apply a chain rule to an unguarded totalized derivative. Borel images under the local chart are justified by the countable homeomorphism cover, not by the false assertion that arbitrary continuous Borel images are Borel. The lower Lipschitz estimate remains confined to the chart-level family, rather than a wrapped Cartesian torus (P1:222).

The later scope clarification at P1:208–209 is correct: the full-position-lattice hypotheses of the primary/polar pipeline do not apply to an arbitrary Cartesian cylinder torus. It points those consumers to P12's direct fast-lattice transport and measure statements. This narrows the advertised application, without altering the valid conditional P1 theorem or introducing a conclusion-shaped hypothesis.

## Part 2 — CLOSED

| Finding | Status | Current evidence and verification |
|---|---|---|
| P2-01: oscillator composition denominator not proved by N's constants | FIXED | P2:187 uses `1-2*e*b*delta/(Abar*delta_nu)`. Lines 191–193 transfer the actual adjoint ratio, bound `e^2*b*eta/4` by `e*b*eta`, and check the Taylor-remainder ratio after shrinking losses. They explicitly reject the previously unjustified `b*eta` ratio. |
| P2-02: missing b in doubled losses and induction | FIXED | P2:213 retains `b*y0 <= 1/(64*kappa)`; 215 has the correct doubled-loss denominator `1-e*b*y0/2`. Lines 217–218 bound `u_i` with its `1/b` and explicitly control `2*e*b*u_i`. The Case-A/B and contraction calculations retain their advertised slack. |
| P2-03: false quotation of zero oscillator radius | FIXED | P2:252 withdraws `r_p=r_q=0` and gives the printed `epsilon_0`. It separately identifies the printed action-loss conflict, labels `rho=bar rho/4` an inferred repair, and makes its own finite loss schedule independent of that source sketch. CP10 printed p.563 agrees. |
| P2-04: invalid mixed action/angle/oscillator period dictionary | FIXED | P2:243–245 now uses the canonical conversion `phi_CP=2*pi*theta`, `I_CP=I/(2*pi)`, leaving p,q fixed. Hamiltonian values and mu are unchanged; action/strip radii, divisors and displacements are converted explicitly. The all-angle conformal dictionary is deferred until after the oscillator action–angle conversion. |
| P2-05: strip admissibility, false decimal, stale P3 obligations | FIXED | P2:96 checks `2*sigma<S_i` directly instead of claiming `S_i>=s`; 104 uses the exact `32/31` estimate with no `3/e<=1.1` assertion. Lines 153–158 explicitly mark P3's norm and finite-iteration changes as done. Some historical headings remain, but no current proof requires those already completed changes. |

Regression check: N4's angular estimate is used at a fixed Fourier parameter, with the supremum taken last (P2:177–179); the false sum of global angular derivative norms has not returned. The p/q terms legitimately pay the explicit factor m. For the corrected oscillator transfer, `theta_phi <= e/8`, and the shrunken-loss majorant is at most `(16/9)*(e/8)=2e/9<1`; this suffices for equality with the composition, not merely convergence of a formal Lie series. The actual N5 adjoint and Taylor-remainder arguments support this substitution.

The recomputed oscillator constants remain valid: Case A gives `E1 <= E/(14*kappa) < 0.08*E/kappa`, the average-correction sum is at most `(4/3)*294*b*E^2/(Abar*d) < 400*b*E^2/(Abar*d)`, and later contraction is less than `1/4`. The doubled-loss Case B retains its b and e factors and its output domains. The canonical dictionary preserves `d=min(r*s,r_p*r_q)` and transforms the component displacements consistently; the displayed `6*mu` action bound is a harmless weakening of the `3*mu` bound obtained by direct substitution.

The total averaged remainder at P2:229–237 still includes the average correction as well as the exponentially small tail. The additional inequality needed to absorb that correction, and verification from the literal frozen family assumptions, remain explicit Part-5 obligations (P2:241). Closing Part 2 does not discharge them.

## Part 3 — OPEN

All numbered round-1 and round-2 findings are fixed. Two minor residual items are recorded separately after the table; they do not reopen the closed averaging or full-strip arguments.

| Finding | Status | Current evidence and verification |
|---|---|---|
| P3-01: one flow cannot produce exponential averaging | FIXED | P3a:150–165 invokes P2's actual finite construction. P2:99–126 supplies Step 0, both branches, finite losses, error induction, average correction and accumulated displacements. No exponential conclusion is inferred from a single nonlinear flow. |
| P3-02: scalar alpha_2 result loses the alpha_1 displacement | FIXED | P2:57–73 keeps the generating-function split at each step and integrates the first block with alpha_1; 123–126 sum these component bounds. P3a:159,165 consume this result. P2:45–54 proves the direct-divisor variant, avoiding N6's extra real-to-complex radius hypothesis. |
| P3-03: sum/sup weighted-norm mismatch | FIXED | P3a:24–26 and P2:24–31 consistently use N's `sup_I sum_k` norm and convert every geometric/coefficient width. The KAM step uses scalar sup Cauchy bounds, so it does not silently demand the stronger norm. |
| P3-04: invalid average-correction estimate | FIXED | P2:119–121 sums the finite average corrections to `E/kappa <= E/6 < E/4`; P3a:158,165 and 202 use that bound. The old K-in-the-numerator calculation is absent. |
| P3-05: mu^5 and cutoff bookkeeping | FIXED | P3b:208–213 gives `f=mu*epsilon^5*breve P`, distinguishes the three radii, and fixes the numerical bounds before computing K. Round-2 completion is R2-01 below. |
| P3-06: output-angle scaling and double division | FIXED | P3a:96–108 scales the output by Q and states `w=omega=tilde omega/(2*pi)`. P3b:216 defines `K3=pi o varphi_omega` without scaling, then `K=Phi o S_(2*pi) o K3`, matching P1:143. Round-2 completion is R2-03 below. |
| P3-07: reversed composition-domain inclusion | FIXED | P3a:248 uses the preceding local base and `W'_(j-1) subset W_(j-1)`; 261–262 checks the image using the two base-radius losses and the strictly smaller displacement. |
| P3-08: global Lipschitz claim on a nonconvex domain | FIXED | P3b:142–143 compares only uniformly nearby points, puts their joining segment in a common polydisc with room inside the original domain, and applies the derivative bound there. No global convexity premise is added. |
| P3-09: complement equality should be inclusion | FIXED | P3b:203 explicitly uses inclusion and acknowledges that the shell can meet the torus union. |
| P3-10: overstated source allegations / Arnold dependency | FIXED | P3b:223–237 grades verified statements, repairs and tentative allegations; withdraws the blanket norm-constant accusation; acknowledges source use of (108); and treats Arnold's pointer as historical. The concrete Appendix-A misprints remain separately identified. |
| P3-11: unsupplied Vitali theorem and stale references | FIXED | P3b:64–75 supplies a Fourier proof instead; 94 applies it on the entire claimed strip, with actual N5/P2 references listed at 241–242. Round-2 completion is R2-02 below. |
| R2-01: upper bound on x gives wrong cutoff direction | FIXED | P3b:211–213 chooses exactly `M=C`, `Mhat=C*mu`, `Mbar=C/mu`, `E=C*mu*epsilon^5`; hence exactly `L=C/mu`, `x=C^4*epsilon^5/gamma_1^2`. The resulting K identity has the correct direction, retains `log_+`, and states a guard before replacing it by log. |
| R2-02: half-strip compactness does not exhaust the full strip | FIXED | P3b:65,73–74 quantify every `0<v<w`, choose `w'=(v+w)/2`, and sum the exponentially decaying tails with all fixed derivative powers. The compatible Fourier coefficients define one holomorphic limit on the full open strip; its B bound passes pointwise. Line 94 uses precisely that conclusion. |
| R2-03: already scaled K3 fed to a scaling pipeline | FIXED | P3b:216 and P3a:99 name the unscaled K3, order permutation, original reconstruction Phi, and single `S_(2*pi)` explicitly. The linear test `tilde h=2*pi*I` gives frozen frequency 1. |
| R2-04: eta=0 in the open-neighborhood covering conclusion | FIXED | P3b:151,159 state a distance inequality, valid also at eta=0; 148 uses closed neighborhoods. The covering lemma's former false open-zero-neighborhood conclusion is gone. The shell notation consequence is C3-02 below. |
| C3-01: outstanding normalization-order caveat from reviews 1–2 | OPEN | P3a:90–91 still says one “should lower after computing” Ehat. Review 2's recomputation section instead says to choose normalized bounds before recomputing L,K,rhohat,Ehat. The proposition itself correctly assumes normalized data at P3a:65; this is a conflicting instruction in the remark, not a failed theorem hypothesis. Exact fix below. |
| C3-02: closed-neighborhood repair leaves the outer shell at radius r | OPEN | P3b:148 defines N as closed and says every used radius is strictly below r. But 186 enlarges the shell to `N_r(D)`, and then bounds that closed-r shell by `b=meas(Re(D_r)\\D)`, an open-r shell. The preceding strict bound `rho_2+eta<r` already supplies the needed repair; no boundary-measure theorem is necessary. Exact fix below. |

Exact fixes for the OPEN items:

1. **C3-01 (minor), P3a:90–92.** Replace the instruction to lower bounds after computing Ehat by: “Choose the compatible normalized bounds first, then compute L,K,rhohat,Ehat from those bounds; all hypotheses and conclusions use these computed quantities.” Delete the suggestion that previously computed quantities can be retained without reconciliation. For this particular minimum normalization, `Mhat -> min(Mhat,M)` leaves L unchanged (because L already contains `1/M`), but rhohat and Ehat can change; that observation does not make their defining identities optional. No KAM proof constant needs changing.
2. **C3-02 (minor), P3b:186.** Replace both appearances of `N_r(D)` in this shell step by `N_(rho_2+eta)(D)`. Immediately state `N_(rho_2+eta)(D) subset Re(D_r)` because `rho_2+eta <= 22*Ehat*rhohat < r`. Use `(N_(rho_2+eta)(D)\\D)` in the first term of the decomposition. Its outer measure is then at most b by literal inclusion. This preserves the distance-based eta=0 repair and the value of c_n, and makes the “radii < r” convention at line 148 true for the shell argument. Alternatively keep the original shell itself in the decomposition and prove its direct inclusion in `Re(D_r)` using the same strict inequality.

Regression check: the revised Fourier proof has the correct contour-shift sign and enough exponential slack for every fixed derivative order. The limit is holomorphic only in the angle variable as claimed; no analytic extension on the Cantor action base is assumed. The numerical cutoff choice is compatible with `mu<=1`, `C>=1`, both matrix normalizations and the slow Hessian scaling. The invariance passage retains a fixed domain margin. Recomputing the outer-measure extension factors still gives `c_n=1+(1+2^n)*(1+(4/3)^n)` after the local shell correction above. Borel selection, reconstruction, positivity and strict inequalities remain subsequent assembly obligations (P3b:218).

## Part 4 — CLOSED

| Finding | Status | Current evidence and verification |
|---|---|---|
| P4-01: normalized collar lemma divides by possibly zero core volume | FIXED | P4:157 first states the unnormalized product-difference bound, then explicitly requires positive core volume for the normalized form at 158. Lines 164 and 220 explain the guard and its sufficient uniform choice `A*sqrt(r) <= meas(V)/2`. S4 supplies positivity at the budget use. |
| P4-02: false uniform chain `rhohat <= C*gamma_2` | FIXED | P4:220 uses `rhohat <= C*min(gamma_1,gamma_2/mu)`, explicitly derives the slow branch from `Mhat=C*mu`, and retains the strict `r_K<min(t,lambda_1)` requirement. This yields `r_K/ell=O(sqrt(r))` with `ell>=r^2/4`; no missing mu factor remains. |
| P4-03: wrong source page / restricted dependence of the covering number | FIXED | P4:144 locates the independence sentence on p.563, continuing (59) from p.562. Line 225 explicitly rejects the printed restricted-dependence assertion and distinguishes the radius-dependent pointwise estimate. Direct reading of printed p.563 confirms the locator. |

Regression check: the new unnormalized bound works even when the core has measure zero, and normalization is used only after positivity is available. The direct Diophantine estimate still separates slow, fast-dominated and slow-dominated resonances, retaining the inverse product-map factor `Lambda_g^n`, the explicit `mu^(tau-n)/lambda` tail, and positive S4 volume denominator. Its constants can be uniform on the varying core once the stated half-volume bound is enforced. The polar cell factor remains `(2*pi)^n`, the removed disc-center sets are null, and the singular-shell fraction is `b*lambda_1/lambda_2=2*b*kappa*sqrt(r)`. The budget keeps the same c_n and the frequency thresholds `alpha_i=2*pi*gamma_i`. No later assembly conclusion has been inserted as a premise of these lemmas.

The review's suggestion to upgrade the tentative source-shell erratum (E4) was optional; keeping the conservative tentative classification at P4:228 is not an unpaid proof repair. The blueprint itself already uses the correctly computed square-root loss.

## Verification and handoff

- Forced document build: `latexmk -g -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` in `blueprint-P`: **exit 0**, **222 pages**, **0** log lines beginning `!`. Overfull/underfull boxes remain. Seven undefined-reference occurrences are in the later `p14a-amd-expsafe.tex`, outside this slice: `bpN:p0:actionnbhd`, `partial-pert`, `partial-domain` (twice), `bpN:p3:gen-uniform`, `bpN:p0:sol`, `partial-core`. This is a successful TeX build with unresolved later-part references, not a clean-reference build of the entire track.
- Independently checked all **584** internal/P/K/I/N reference occurrences in the five scoped files against current blueprint labels: **none missing**. Label existence does not replace the interface checks described above.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (260 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (144 frozen declarations)`.
- No Lean build, scratch elaboration, or `#print axioms` was needed. There are no new Lean results whose axioms this report certifies. No blueprint, frozen file, manifest, generated public PDF, source ledger or git state was edited by this reviewer. Only this report was authored; the document build generated ignored `.build/review` products. Concurrent unrelated changes were preserved.
- Existing source errata retain their qualified dispositions. The false zero-oscillator-radius allegation is withdrawn in the current text; no new source defect or mathematical deviation is introduced here. The two remaining fixes are blueprint instructions/notation, not suspected defects in CP10.

Close Part 3 after C3-01 and C3-02 are corrected and checked locally. The 30 numbered repairs do not need another full audit solely because of these two minor residual items.

READY closure-p14
