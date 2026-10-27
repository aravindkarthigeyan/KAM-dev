# Track P, Part 5: independent review 1

## Verdict: REVISE

Part 5 does not yet give a complete proof of frozen P-G. There is **one blocking domain error**: a thin holomorphic neighborhood of a real oscillator box is subsequently used as a full complex oscillator polydisc of radius r0/2. Frozen real analyticity does not imply that extension. There are also three major local contract/proof errors: an assertion about the original coefficient functions at the boundary, an omitted torsion premise in the coefficient lemma, and the identification of a parameter cell with an output-angle cell in the measure-transfer argument.

The main quantitative assembly is otherwise sound. In particular, the direct r_K calculation repairs P4-02 at the point of use, and the positive-volume Cantor core and its separate neighborhood budget repair the P4-01 application. The single 2π torus conversion is correct. The whole-family deletion argument supplies the requested strict inequalities once the cell-transfer proof is repaired. No change to the frozen theorem is proposed.

## Scope, inputs and validation

Focused tier-2 refute-first audit under `.drafts/briefs/bp-review.md`, using the manuscript-audit protocol. Read all **335 lines, 61,926 bytes** of `blueprint-P/parts/p5-pg-assembly.tex`. Initial HEAD was `5a68359baf7f60b9f24a150e6101c8f09e21fe90`; unrelated concurrent work was present, so the following file hashes define this review. The reviewed Part 5 hash was checked again at closeout.

| Input | SHA-256 |
|---|---|
| `parts/p5-pg-assembly.tex` | `55c1b02ec96f8257f1c9c2a71d60102275e64db488b47b8315748c4dfef4a491` |
| `parts/p0-conventions.tex` | `16192e0f49d611715f939c5371ccc9a4337a91a148a6e7574ddff7edacecd621` |
| `parts/p1-hamiltonian-tools.tex` | `1a4219ec164d0ad9d16ee24dc5a98a854b0502e0f8c20c3467e3cae21ad89da1` |
| `parts/p2-averaging.tex` | `d0ae8194e5e562a01289b2e53cad100a0ad197a0ff15fad6fa7ac9bb2c27764b` |
| `parts/p3a-two-scale-iteration.tex` | `20ca825e59c33a8f2ba38265dcc453e9809b24705811ecdfb89da2251ccc2982` |
| `parts/p3b-two-scale-limit.tex` | `f8d2719c1a45f48e2b85689da930043bd49a91b387c5b296aa97109cfb4202e4` |
| `parts/p4-pg-measure.tex` | `159a895de8a4a108d4091ecf2223d6cb9702167b4cefbbf97f5bf3ede5a87e6c` |
| Frozen `ProperlyDegenerateKAM.lean` | `1bcb13a5806216c67505db05767d734be1f2d0da45cffb19d7b708428def61b9` |
| `sources/incoming-P/cp10.pdf` | `68fbf161e0aa62fc966f33b3b3c49e2ab0fbcca3eb7fdb0950d62eadcdf18338` |

Closeout concurrency note: Part 4 was subsequently edited by another worker (observed SHA-256 `4c33d0e61f8706c7c386b88da819b3cbb1d969bf299ee029951b969521e46adb`), including its positive-volume premise and corrected radius handoff. The interface calculations below refer to the tabled audit snapshot; those concurrent repairs do not remove any Part 5 finding. The unchanged Part 5 file still contains its historical comments about the old Part 4 text.

Read the governing brief, AGENTS, PLAN/DECISIONS and writer conventions, P PLAN and track-P records. Compared the literal frozen theorem and imported Birkhoff, fast-diffeomorphism, torus, Kolmogorov-set, cylinder and cell definitions. Checked the exact consumed interfaces in Parts 1–4 and the earlier P4-01/P4-02 report. Re-read CP10 printed **pp.562–564**, including (58)–(69), directly from PDF pages 18–20; visually checked printed p.563. Inspected rendered blueprint pages 49 and 56, containing the coefficient/remainder statements and cell-transfer proof.

- `cd blueprint-P && latexmk -g -pdf -interaction=nonstopmode -outdir=.build/review-p5 blueprint.tex`: **exit 0**, 88 pages. Final log: **0** lines beginning `!`, **0** undefined-reference/citation warnings; hyperref PDF-string and layout warnings remain. Cross-track references are deliberately rendered symbolic references and are not mechanically verified by this build.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (183 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (140 frozen declarations)`.
- No Lean proof/build or fresh `#print axioms` is claimed. This is a blueprint audit, not a provider-completion or axiom-closure certificate. Only this requested report was authored; ignored LaTeX artifacts and temporary inspection files were generated. No manuscript, frozen file, manifest, source ledger or git history was edited.

## Findings

Each reported error was reconsidered against its actual statement and consumer. Counterexamples below concern the printed auxiliary assertions, not the frozen P-G conclusion.

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| **P5-01** | `bpP:p5:ext` → `bpP:p5:consts`, lines 28–44; `stepP:p5:ur-bound`, line 70; `bpP:p5:avg`, lines 168–177 | **blocking** | `ext` supplies X_delta_c, which requires imaginary oscillator coordinates smaller than delta_c. `consts` instead defines the average and its finite weighted norm on the entire complex oscillator polydisc of radius epsilon_0=r0/2. There is no hypothesis delta_c≥epsilon_0. A real analytic perturbation can have a pole at p=iδ with 0<δ<r0/4 and still satisfy every frozen premise; see the explicit example below. The claimed domain of the Schwarz argument and the Part 2 input therefore need not exist. Making r small does not fix the averaging input, whose radius is the fixed epsilon_0. | Keep r0/2 as an auxiliary **real box radius** when constructing the extension. After obtaining delta_c, choose a separate data-dependent complex oscillator radius e.g. epsilon_an=min(r0/2,delta_c/4). Prove the product of the fast complex tube, angle strip and oscillator polydisc lies in X_delta_c. Use epsilon_an in `consts`, Cauchy/Schwarz radii, Part 2 input/output widths, d, displacement constants and r_* bounds. Recompute these constants before choosing r and μ. No frozen premise should be strengthened. |
| **P5-02** | `bpP:p5:uniform-remainder`, line 65 | **major**, false auxiliary conclusion | The original P0, Ω, β are asserted continuous/analytic on closure(V), with the original N remainder and determinant bound there. Frozen `HasSecularBirkhoffForm`, symmetry and torsion only constrain these total functions on V. Their boundary values can be changed arbitrarily without changing any frozen hypothesis. The preceding lemma correctly proves equality with their analytic extensions only on V. | State the closure/complex-neighborhood conclusions using tilde P0, tilde Ω, tilde β and tilde N. State equality with the original functions, and the bound for P_av−N, on V only. If using a shorthand N afterward, explicitly define it to be the constructed extension; do not identify original boundary values with that extension. |
| **P5-03** | `bpP:p5:birkhoff-ext`, lines 46–60, especially assumptions and conclusion (c) | **major**, missing source premise in standalone lemma | The lemma assumes (H1),(H2),(H4),(H6), but conclusion (c) uses (H5). Its proof explicitly invokes (H5), which is absent from the stated premises. Take P=P0=Ω=β=0 and B=1: all four listed hypotheses hold and (c) fails. The final P-G application has (H5), but this does not prove the separately stated lemma. | Add (H5) for conclusion (c), or split (a),(b) from a separate torsion-extension lemma with (H5). Propagate the corrected hypothesis list to subsequent references that need (c). |
| **P5-04** | `bpP:p5:cell-transfer`, `stepP:p5:ct-disj` / `ct-liou`, lines 268–271 | **major**, measure-proof gap | K_B^c is defined as the image of the **parameter** cell under Φ_3. Its output angles are θ+u, and need not belong to [0,1)^n. Thus the proof cannot place its scaled image in Q'', and the final asserted equality K_B^c=K_B∩(R^n×[0,1)^n) is false. Equivariance and smallness do not imply preservation of a chosen cell. This invalidates the written Liouville/counting proof used by the lower bound and strictness argument. | Retain the valid sigma-compactness argument for the full invariant union K_B, then define the measured representative A_B:=K_B∩(R^n×[0,1)^n). It is sigma-compact. Use Q2 to prove Φ injective on S_2π π A_B and its fast translates disjoint; repeat the counting and Liouville proof with this representative. Alternatively prove equal volumes for the two measurable fundamental domains by a countable lattice partition, and use Part 3 family injectivity to justify injectivity on the parameter-cell representative. Do not assert equality of the two sets. |
| **P5-05** | `bpP:p5:lip-complex`, lines 78–84 | minor, repairable proof error | The claimed inclusion B(w,rho−epsilon)⊂X_(2rho) does not follow for intermediate segment points. It can actually fail; the explicit one-dimensional complex example below verifies this. The stated Lipschitz bound 2NA/rho remains correct. | For a close pair, choose the nearer endpoint to each segment point w. Its distance is <rho/2, hence w∈X_(3rho/2). Apply Cauchy on radius rho/2, giving derivative bound 2NA/rho, and integrate along the segment. Keep the distant-pair argument. |
| **P5-06** | `stepP:p5:bu-collar`, line 283; `bpP:p5:rstar`, lines 146–153 | minor, missing justification / nonexistent condition | The bound (1+2r_K/ell)^b≤2 is attributed to `(r6)`, but the list ends at (r5). The displayed dimension-free r_K estimate alone does not give a uniform factor 2 for arbitrary b. The stronger dimension factor already present in hat c does give it. | Delete the nonexistent reference and retain hat c≥8192n: r_K<hat rho/(256n)≤lambda_1/(512n), so 2r_K/ell≤kappa_1 sqrt(r)/(64n)≤1/(768n) by (r4). Therefore (1+2r_K/ell)^b≤exp(b/(768n))<2. Alternatively add an actual data-dependent smallness condition establishing this bound. |
| **P5-07** | `bpP:p5:avg`, line 169; consumed by `bpP:p5:phi-chart` | minor, sign specification | The formula D barΨᵀ M0 D barΨ=±M0 permits an anti-symplectic map, while the next lemma requires a positive 1-chart. Preserving either choice of sign for the symplectic form means Aᵀ(±M0)A=±M0, which is equivalent to AᵀM0A=M0; it does not mean the displayed ambiguous alternative. Part 2's actual Hamiltonian flow supplies the positive equality. | Print D barΨᵀ M0 D barΨ=M0 and cite the Part 2 symplectic conclusion. If mentioning sign conventions, say that preservation is unchanged when the chosen symplectic form is multiplied by −1. |

### Refutation of the complex oscillator radius (P5-01)

Take a=b=1, V=(0,1), W=(−1,2), r0=mu0=B=1, H0(I)=I²/2, and any fixed 0<δ<1/4. Let the perturbation, independent of μ,I and the fast angle, be

`P = (p²+q²)²/8 + p^6/(p²+δ²)`.

Set P0=Ω=0, β=1. The real perturbation is jointly real analytic everywhere, periodic, and its averaged fourth jet is exactly R²/2, R=(p²+q²)/2. The remaining term is O(abs(x)^6), hence satisfies the frozen little-o fourth-order condition. Fast frequency is I with a smooth inverse on W; torsion and symmetry hold. The boundary collar holds with A=4 and e.g. d=1. Thus this example satisfies **all** frozen P-G hypotheses.

At q=0 its unique analytic germ has nonremovable poles at p=±iδ. It cannot extend to the complex p-disc of radius epsilon_0=1/2 or even the proof's r1=1/4. A thin complex tube around the real box does exist, exactly as `ext` states. That tube does not contain the asserted polydisc. This is a genuine domain obstruction, not a missing numerical estimate.

The repair remains uniform in μ: compact joint real analyticity supplies some positive data-dependent delta_c, and choosing the oscillator radius after delta_c is sufficient. There is no need for a lower bound for delta_c in terms of r0.

### Refutation of the boundary claim (P5-02)

Use the same a,b,V,W,H0,r0,mu0,B, but take the polynomial perturbation P=(p²+q²)²/8. On V set P0=Ω=0 and β=1. At I=0 redefine P0(μ,0)=1 and β(μ,0)=0. Extend these total coefficient functions arbitrarily elsewhere. Every frozen premise still holds, because their Birkhoff, torsion and symmetry clauses only quantify I∈V.

At I=0 and p=q=0, abs(P_av−N)=1, contradicting the claimed fifth-order bound, whose right side is zero. The original boundary determinant also equals zero. The jet-defined tilde coefficients are instead P0_tilde=Ω_tilde=0, β_tilde=1 and satisfy all the intended extension conclusions. This distinguishes the false extra assertion from the valid extension construction needed by P-G.

### Cell and Cauchy checks (P5-04/P5-05)

A primary near-identity torus map can have output angle θ+u(θ) with u(0) nonzero. Even the allowed constant phase translation θ↦θ+δ sends [0,1) to [δ,1+δ), not [0,1). Such reparameterization preserves equivariance, immersion, Lagrangianity and the flow identity, and satisfies arbitrary small displacement bounds for small δ. Nothing in the consumed Part 3 interface requires the cell boundary to be fixed. Therefore the asserted cell identity cannot be inferred from that interface.

For the proposed output-cell repair, the full K_B is a countable union of sigma-compact parameter-cell images. The output cell is F_sigma, so A_B is sigma-compact as well. Its scaled image has output angles in Q''. Q2 then makes Φ injective on it, and makes different fast translates disjoint. The physical fast slabs partition their union, even though the averaging map moves their fast angles. Liouville gives precisely the desired factor (2π)^n. This repairs the proof without asking the averaging map to preserve any physical cell.

For the Cauchy inclusion, take N=1, rho=1, X={0,0.9}, z=0.99i, z'=0.9+0.99i. Both endpoints lie in X_rho and abs(z−z')=0.9<rho. At w=(z+z')/2, the point w+0.99i lies in B(w,0.99), but its distance to X is sqrt(0.45²+1.98²)=2.03049255...>2. Thus the printed polydisc inclusion is false. The nearer-endpoint repair above recovers exactly the stated constant.

## What I recomputed

The following checks are local validity/interface checks. Statements using the larger oscillator domain remain conditional on repairing P5-01; none silently grants that extension.

### Frozen quantifiers and the analytic jet

The literal frozen order is fixed a,b,V,W,collar witnesses,r0,mu0,B,H0,P,P0,Ω,β and their premises; then exists rStar,C,c; then forall r,μ with all four strict positivity/upper guards and μ<r^6/log(1/r)^c; then exists S. Here μ=0 is not an output case, although analyticity and the Birkhoff hypotheses include μ=0. Part 5 preserves this distinction.

The proposed dependency order is feasible: complex-extension/jet/frequency constants; C_U,C1 and widths; kappa_0,kappa_1,G; measure/frequency constants; rStar,C,c; finally r,μ and S. Although several definitions are printed before the lemmas defining their constants, no substantive circular choice is needed. C1 comes from a fixed polynomial action box and fixed strips, independently of the later shell scales. One should enlarge A_N to include Lambda_N before fixing mu_*; the proof explicitly allows this. The symbol G for a scale constant is also used earlier for a frequency correction function; these are distinguishable by context, but different names would help extraction.

The fourth-jet formulas are correct: ∂p_j²N(0)=Ω_j; for i≠j the mixed derivative is (β_ij+β_ji)/2, equal to β_ij using the frozen symmetry; ∂p_j⁴N(0)=3β_jj. The frozen little-o condition includes zero and identifies every coefficient through degree four. For fixed μ, each remaining jet coefficient is holomorphic in I and vanishes on the real open set V. Connectedness of the complex tube of closure(V), followed by the several-variable uniqueness principle, extends that vanishing to the tube. This does not require the original coefficient functions to be regular away from V.

On a genuinely available oscillator polydisc, the radial Schwarz proof works. With r1 half its radius, a uniform bound M1 on Q gives `C_Q=M1/r1^5`. Apply the maximum principle first on circles of radius R<r1 and let R increase to r1; boundary continuity is also available after shrinking inside the larger domain. Analyticity in μ on a neighborhood of the compact real parameter interval supplies uniform constants. The determinant bound extends by continuity for **tilde β**, and Cramer's rule gives `L_beta=2 b! M_beta^(b−1)/B` on the smaller complex tube where abs(det tilde β)≥B/2. The b=1 empty-minor case is harmless.

### Complex injectivity and Hessian blocks

The compactness proof for a complex lower Lipschitz bound for tilde omega_0 is valid: separated limiting real points contradict real injectivity on W; coalescing points contradict the invertible Hessian on one convex local ball. It avoids assuming that the entire fast domain is convex.

For F_mu(J)=F_mu(J'), the first components give

`abs(ΔJ1) ≤ (2 μ Lambda_N/c0) abs(ΔJ2)`.

The affine slow components then give

`abs(ΔJ2) ≤ L_beta Lambda_N abs(ΔJ1)`.

The strict third mu_* condition forces both differences to vanish, including for complex points. This is global injectivity on the stated complex tube, rather than an inference from nonsingular derivatives alone.

Writing A=∂omega_0+μN11, the first mu_* condition gives abs(A^-1)≤2/c0. For the Schur complement

`S=μ(beta−μ N21 A^-1 N12)`,

the second condition gives abs(S^-1)≤2L_beta/μ. The four inverse block bounds are

`2/c0+8 μ A_N² L_beta/c0²`, `4 A_N L_beta/c0`, `4 A_N L_beta/c0`, `2L_beta/μ`.

In particular the first bound is ≤4/c0. The displayed C_U dominates both block-row sums: the fast row is O(1), the slow row O(1/μ), and the full inverse is O(1/μ). There is no omitted inverse power of μ or c0 in the chosen constant.

### Part 2 input, strips and perturbation size

The fast-only canonical dictionary is `(theta,I_N)=(phi_CP/(2π),2π I_CP)`; oscillators are fixed. Consequently `s_N=s_*/(2π)`, `rho_N=2π rho_CP`, `alpha_N=alpha_av/(2π)`, and the product rho_N s_N is rho_CP s_*. Thus the 2π factors cancel from the averaging smallness inequalities. This canonical change is distinct from the later conformally symplectic output-angle conversion.

At a core point the one-scale divisor is at least bar gamma/bar K^tau; on its complex bar rho-neighborhood the error is at most bar K Mbar0 bar rho, exactly half that value. The product controlling the smallness is

`alpha_av d = bar gamma² s_*/(4 Mbar0 bar K^(2tau+1))`.

Its first-branch lower bound is `G² s_* μ2 r^(−5)/(4 Mbar0)`. The conditions `G²≥2^14(1+b)Mbar0` and `G²≥1600(1+b)Mbar0/s_*` give the written R2 and remainder bounds, with the elementary small-r guard bar K r^5≤1. The choice `bar K s_*=30 log(1/r)` gives exp(−bar K s_*/6)=r^5. As usual these elementary guards can be made explicit when collecting r_* conditions; they do not depend on μ.

The output remainder is bounded by 2 Lambda_P μr^5. The displacements are `ΔI≤12 r^(11/2)/(G s_*)` and `Δmax≤18 r^(11/2)/(G epsilon_0)` with the current notation. After P5-01 these oscillator denominators must use the chosen analytic radius. The range and coefficient norm of the Part 2 input must be established on that radius before invoking this calculation.

For the Part 3 Hamiltonian, `H3=h_mu/(2π)+f_mu(J,2πtheta)/(2π)`. With `sigma_av=s_*/6`, `sigma_tot=s_*/12`, `s=sigma_tot/5`, `bar s=4 sigma_tot/5`, the available coefficient radius is 4s+bar s=sigma_tot. On the polar image, abs(x)<2r and hence the sup perturbation bound is `(32C_Q+2Lambda_P) μr^5`. The additional half-strip loss gives the weighted bound with the displayed coth(sigma_av/4)^n factor. This uses an ordinary sup-to-Fourier-norm conversion, not the erroneous angular global-sum Cauchy assertion discussed in the earlier N45 review.

### KAM constants and direct enlargement radius

With the numerical upper bounds chosen in `kam-hyp`, all max operations recompute as

`L=C1/μ`, `EM²L=C1^4 r^5`, `x=C1^4/kappa_0²`, `K=K0=(6/s) log_+(kappa_0²/C1^4)`,

`rhohat=r^(5/2) min{kappa_0/(3C1 K0^(tau+1)), kappa_1/2}`,

`Ehat=max{9C1^4 K0^(2tau+2)/kappa_0², 4C1²/kappa_1²}`.

The two choices of kappa make hat c Ehat<1. Existence of kappa_0 follows from polynomial growth dominating a fixed logarithmic power, including the dependence K0=K0(kappa_0). There is no remaining r or μ dependence in K0 or Ehat. The explicit choice tau=n+1 supplies the stronger Part 4 requirement tau≥n+1 and the frozen strict tau>n.

Part 3's `r_K=32 Ehat rhohat` therefore gives

`r_K<rhohat/256≤lambda_1/512`, `r_K<min(t,lambda_1)`, `r_K<bar rho/2`, `2r_K/ell≤kappa_1 sqrt(r)/64`.

These bounds contain no spurious extra factor μ. P4-02 is repaired in this assembly. Keeping hat c≥8192n yields the stronger bound used in the P5-06 repair. The slow shell cuts are consistent: ell=lambda_2−3lambda_1≥r²/4 and lambda_2'=lambda_2−2lambda_1. Its outer margin gives oscillator radius at most `sqrt(r²−3lambda_1)≤r−3lambda_1/(2r)`; adding sqrt(2)Δmax under (r5) stays strictly below r. The fast displacement is compared with the interior margin t; its higher power of r allows the required strict margin uniformly after shrinking r_*.

### Torus transport and frozen clauses

The composite polar/averaging chart has Q1 by periodicity of barΨ−id; Q2 follows from actual injectivity of barΨ and injectivity of the polar chart modulo the full angle lattice. Neither argument assumes global injectivity of the polar chart. Use the positive symplectic equality identified in P5-07.

The output is `K_omega=Φ∘S_2π∘π∘varphi_omega`, with **one** S_2π. Part 3's frequency is already the period-one w; it is not divided by 2π again. Its fast and slow bounds follow from `w_fast=(omega_0+μG)/(2π)` and `w_slow=μTheta/(2π)` before the pipeline. Against the literal frozen `IsCylinderTorus`, the argument supplies analyticity; membership and differentiability of H; the fast-shift period clause; injectivity modulo the lattice using Q2; injective derivative; vanishing frozen symplectic form; and the all-theta, all-real-time derivative identity. Hamiltonian identities hold on an open neighborhood of the torus, so the frozen total fderiv convention does not introduce an off-domain evaluation. The Diophantine conversions supply positive gamma and tau>n.

### Cantor-core measure, shell and strictness

The inner collar gives meas(bar D_t)≥meas(V)/2. The independent one-scale bad-action estimate gives meas(check D)≥meas(V)/4, so every normalized denominator used here is positive. For a fully literal proof of `dio-one`, its displayed union over images of Y_k includes possible boundary points of V; replace that equality by containment. The upper estimate is unchanged.

The crucial enlarged-domain inclusion is correct:

`N_rK(check D)\check D ⊆ [N_rK(bar D_t)\bar D_t] ∪ [bar D_t\check D]`.

This uses the collar of bar D_t plus the removed fast Diophantine actions. It does not pretend that check D itself has the original collar. The resulting relative bound is

`[8(A+c_dio C_gamma)/meas(V)+b kappa_1/16] sqrt(r)`.

For bad actions, Part 4 is applied on bar D_t, with the actual KAM domain remaining check D×A_sh. Since tau−n=1, lambda_2'≥r²/4 and μ≤r^6, the tail contributes at most the stated factor 5; the slow resonances contribute the factor 4 in the displayed `5 bar c1+4 bar c2`. The volume ratio is bounded by 4^(b+1). These give exactly the written C_b together with the collar term. Part 3 contributes `c_n=1+(1+2^n)(1+(4/3)^n)`.

The reference oscillator volume is lambda_2^b, while the shell width is lambda_2−3lambda_1. Thus its relative loss is at most `3b lambda_1/lambda_2=6b kappa_1 sqrt(r)`. The proposed

`C_*=(A+c_dio C_gamma)/meas(V)+6b kappa_1+c_n C_b`

is correct. The transfer to physical volume requires P5-04; it cannot be certified by the incorrect parameter/output-cell identity. Once repaired, the polar Jacobian and period conversion give exactly `(2π)^n` and `meas(F)=(2π)^n meas(V)(r²/2)^b`.

Borelness of the whole physical torus union follows from sigma-compact parameter sets, half-open parameter cells and continuity; it does not rely on the false output-cell identity. Distinct parameter families have disjoint physical tori by Part 3 family injectivity **and** Q2. A first-action slice has zero n-dimensional measure; the Lipschitz corrected-action map and limit map send its product with an angle cell to a null 2n-dimensional set. Countable translates, followed by the locally Lipschitz physical chart, remain null. Equivalently apply the repaired cell-transfer identity. Thus the distribution of family cell measure along the first action coordinate has no atoms. Its continuous cumulative function attains the desired positive theta_0. Deleting a family of this measure, rather than individual points on tori, preserves all frozen saturation clauses and Borelness of the retained set.

The deletion costs at most sqrt(r)meas(F)/2 and gives a strict upper bound. With `C=max{C_*+1,C_w}` there is positive slack in the strict lower bound as well. The ofReal split is correct: a nonpositive coefficient totalizes to zero and positivity suffices; for a positive coefficient ordinary finite real measure multiplication applies. V is nonempty open and bounded, and r>0, so the cell has finite positive volume. No frozen quantifier is weakened here.

## Source findings and deviations

CP10 **(60) is on printed p.563, PDF page 19**, not p.562 as the final notes at line 330 say. The proposition's own locator is correct. The source asserts the fifth-order bound and then uses it in (62)–(63); a compactness/jet proof is not provided there. This is a supplied-proof obligation, not by itself a counterexample to the source assertion. P5-01 concerns the blueprint's attempted passage from the corrected frozen real-analytic premises to its complex domain, not a claim that CP10's initially analytic complex domain is impossible.

The source's (57) is on p.562, with the preceding geometric collar use on p.561; p.563 Step 2 imports those earlier steps. The need to replace a collar estimate on an arbitrary open V is already recorded in the track's corrected contract. The Cantor-neighborhood inclusion is valid once the two ambient and removed-action pieces are kept, as Part 5 does. Its absence of explanation is not a new false set-theoretic assertion. The source's printed p.564 output explicitly has a radius controlled by the barred slow constant; the blueprint's direct calculation avoids the earlier P4 handoff's missing 1/μ.

The constant cutoff K0, the extra shell cut, the use of the supplied Birkhoff form rather than redoing its construction, and deletion of a positive-measure family are explicit legitimate deviations. The present report adds no source-ledger edits or new frozen assumptions. Correct the (60) page locator in the notes, and replace the equality by containment in the one-scale bad-set proof as noted above.

## Closeout criteria

Before accepting the complete P-G proof, repair **P5-01–P5-04**, including propagation of the smaller analytic oscillator radius through the complete constant order and exact Part 2 interface. Repair **P5-05–P5-07** locally, correct the source locator and harmless bad-set equality, and recheck the rendered statements. The constants and budgets verified above may be reused with their repaired data-dependent radii. The current manuscript is **not ready to extract as a complete proof of frozen P-G**.
