# Track P, Part 5: round-2 closure review

## Verdict: ACCEPT WITH FIXES

**P5-01–P5-07 are all CLOSED.** The fix round introduces no new mathematical error in the reviewed assembly. The data-dependent complex oscillator radius is propagated through the Schwarz estimate, the averaging input/output, the minimum defining d, the displacements, the polar domain and the final radius threshold. The output-angle representative A_B repairs the measure transfer and is also used correctly in the deletion argument.

**P-G is now proved at blueprint level by this assembly, using the current Parts 1–4 interfaces.** Its constants precede r and mu, and its set satisfies the literal frozen torus, saturation, frequency and strict-measure clauses. This is a blueprint conclusion, not a Lean provider or axiom-closure receipt. The only remaining item found here is a stale editorial footer saying that already corrected Part-4 statements still need repair; it does not affect this proof.

## Reviewed snapshot and validation

- Reviewed the complete current `blueprint-P/parts/p5-pg-assembly.tex`: **339 lines, 65,937 bytes**; SHA-256 `f8a5bc1683f30fed2576d0bb1ab6d51a1e6f00c6bf78c180d5a32efb0cef9968`. It is byte-identical to that path in **45307d38440234951eae0f96ec91004bb110aaa7**. Read the full preceding `p5-review-1.md` and compared the actual fix diff.
- Read the governing review brief, AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, writer conventions and P PLAN route. Compared the exact consumed contracts in Parts 1, 2, 3a, 3b and 4, including their relevant earlier reviews and subsequent fixes. This is a closure audit of Part 5 and its applications, not a new blanket closure audit of every auxiliary declaration in those parts.
- Dependency hashes: P0 `16192e0f49d611715f939c5371ccc9a4337a91a148a6e7574ddff7edacecd621`; P1 `1a4219ec164d0ad9d16ee24dc5a98a854b0502e0f8c20c3467e3cae21ad89da1`; P2 `d0ae8194e5e562a01289b2e53cad100a0ad197a0ff15fad6fa7ac9bb2c27764b`; P3a `20ca825e59c33a8f2ba38265dcc453e9809b24705811ecdfb89da2251ccc2982`; P3b `f8d2719c1a45f48e2b85689da930043bd49a91b387c5b296aa97109cfb4202e4`; P4 `4c33d0e61f8706c7c386b88da819b3cbb1d969bf299ee029951b969521e46adb`.
- Read frozen `ProperlyDegenerateKAM.lean`, `HasSecularBirkhoffForm`, `HasFastDiffeomorphism`, `IsCylinderTorus`, `IsCylinderKolmogorovSet`, `Assemble`, `Cylinder` and `CylinderCell`. Checked the normalized average and oscillator-action conventions. No frozen modification or changed premise is proposed.
- Independently reread pinned CP10 printed **pp.562–564**, PDF pages 18–20, especially (60)–(69). Retained the round-1 source audit for unchanged material. The corrected locator of (60), printed p.563, is now right in both the proposition and final notes.
- `cd blueprint-P && latexmk -g -pdf -interaction=nonstopmode -outdir=.build/review-p5r2 blueprint.tex`: **exit 0**, **97 pages**, **1,471,632 bytes**. Log has **0** lines beginning `!` and **0** undefined-reference/citation diagnostics. All Part-5 `ref`, `Pref`, `Kref`, `Nref` and `Iref` targets were separately checked against actual labels. Inspected rendered pages 48 and 56 containing the radius-order repair and the measured representative. Existing overfull displays, underfull boxes and bookmark warnings remain; Part 5 has overfull displays at lines 143, 200 and 252.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (183 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (140 frozen declarations)`.
- No Lean build, new `#print axioms`, provider sealing or frozen-statement implementation is claimed. Only this report was authored; temporary inspection and ignored LaTeX build artifacts were generated. No state-changing git command was used. Concurrent unrelated files were preserved.

## Per-finding closure table

| Finding | Status | Current location / evidence | Remaining work |
|---|---|---|---|
| **P5-01** — thin tube used as a full oscillator polydisc | **CLOSED** | `order`, `ext`, `consts`, `ur-bound`, `ur-schwarz`, `avg`, `av-dict`, `phi-chart`, `kh-dom`, `location`, `rstar`; lines 17, 27–46, 65–73, 151, 171–179, 193–206, 242. The real box radius r0/2 is separated from epsilon_an = min(r0/2,delta_c/4), chosen after delta_c. All actual complex oscillator radii and displacement denominators use epsilon_an. | None. The smallness of rho_c relative to epsilon_an²/s_* is a legitimate data-stage shrinking; carry it out before the later constants depending on rho_c are finalized. |
| **P5-02** — false conclusions about original boundary coefficients | **CLOSED** | `birkhoff-ext`, `uniform-remainder`, `freq-data`; lines 51–67, 105–112. Boundary and complex-neighborhood assertions use the derivative-defined tilde coefficients and tilde N. Equality to original total functions is restricted explicitly to V; Part 4 uses them only on bar D_t contained in V. | None. Arbitrary redefinitions of the original coefficients on the boundary no longer contradict any conclusion. |
| **P5-03** — missing torsion premise | **CLOSED** | `birkhoff-ext` now assumes H5, with its role in (c) stated at line 50 and used at line 61. `uniform-remainder` propagates the corrected H1,H2,H4–H6 hypothesis list at line 65. | None. The old zero-beta counterexample violates the added source premise. |
| **P5-04** — parameter cell identified with output-angle cell | **CLOSED** | `cell-transfer`, lines 266–274, measures A_B = K_B intersect (R^n × [0,1)^n). The parameter-cell image is used only to establish sigma-compactness. The proof explicitly rejects their equality and carries the output representative through decomposition, injectivity, lattice counting and Liouville. `st-null`, line 310, now passes from the null parameter-cell image to the full countable union and then A_Hs. | None. The changed representative also feeds `lower` and `strictness` correctly. |
| **P5-05** — incorrect intermediate Cauchy neighborhood | **CLOSED** | `lip-complex`, line 84, uses the nearer endpoint: segment points lie in X_(3rho/2), so radius rho/2 is available inside X_(2rho). This gives the stated 2NA/rho derivative bound. | None. No convexity of the base set is assumed. |
| **P5-06** — nonexistent r6 and uncontrolled shell factor | **CLOSED** | `rK`, lines 230–233, retains hat c >= 8192n and derives r_K < hat rho/(256n), 2r_K/ell <= kappa_1 sqrt(r)/(64n), and (1+2r_K/ell)^b < 2. `bu-collar`, line 287, cites this actual lemma; r6 is gone. | None. The dimension dependence is paid explicitly. |
| **P5-07** — ambiguous symplectic sign | **CLOSED** | `avg`, line 171, now asserts DbarPsi^T M0 DbarPsi = M0, with the P2 Hamiltonian-flow conclusion cited. Its explanation correctly distinguishes preserving either sign convention from allowing an anti-symplectic map. | None. The positive 1-chart required by `phi-chart` is supplied. |

The two unnumbered round-1 corrections are closed too: `dio-one`, line 100, now uses containment rather than an unjustified equality; final notes, line 334, place CP10 (60) on p.563.

## Remaining / newly recorded item

| ID | Status / severity | Location | Evidence and exact proposed fix |
|---|---|---|---|
| **P5-R2-01** | **NEW**, minor editorial residue; not introduced by the fix | Final forward-reference paragraph, line 337 | The last sentence still says Part 4 “must repair use5 and domain-collar”, although `use5-fix` at line 236 correctly says those repairs are already present, and the current Part 4 has them. Delete the stale final sentence or replace it with a statement that the corrected interfaces are now available. This is not an unpaid dependency of P-G. |

No new blocking or major finding was found. No new suspected defect in the pinned source or frozen statement was found during this closure review.

## What I recomputed: the complete analytic-radius chain

Write delta = delta_c, e = epsilon_an and epsilon_box = r0/2. Here delta < 1, so s_* = delta/2. The corrected order is

```text
real compact box -> delta -> e=min(epsilon_box,delta/4)
 -> averaged function and weighted bound -> r1=e/2 and C_Q
 -> rho_c and frequency bounds -> C1 -> kappa_0,kappa_1,G
 -> measure constants -> r_* -> given r,mu.
```

For I within delta/2 of closure(V), complex p,q of max norm below e have real parts in the real oscillator box and imaginary parts below delta/4. The imaginary fast-angle strip of width less than delta is also inside X_delta; thus the smaller strip cited in `consts` certainly is. This proves the needed product inclusion, not just inclusion of its real slice. The round-1 pole example is now harmless: the proof uses only a polydisc contained in the thin extension tube, with no lower bound for its radius in terms of r0 alone.

The Fourier norm bound on that product is

```text
Lambda_P <= M_P coth(delta/4)^a.
```

This follows from coefficient decay at every smaller angle width, followed by its limit to delta, with weight s_* = delta/2. The supremum is over the corrected complex oscillator product. No sum/sup interchange stronger than N's norm is used.

The Birkhoff jet is identified first on V. The determinant uses H5 and extends by continuity for the tilde coefficients only. The unwanted jet coefficients vanish on the connected complex action neighborhood by the real-slice identity theorem. Cauchy estimates on the radius-e oscillator polydisc bound those coefficients uniformly, so Q is bounded by some M1 on the **closed** radius-r1 product, r1=e/2. For a direction xhat of max norm one, `Q(t xhat)` has zero derivatives through degree four. Apply the maximum principle to `Q(t xhat)/t^5` on the circle of radius r1, which is interior to the radius-e analytic domain. This gives

```text
abs(Q(x)) <= C_Q abs(x)^5,   C_Q=M1/r1^5,   abs(x)<=r1.
```

There is no boundary-of-the-holomorphy-domain issue in this Schwarz argument.

Before finalizing subsequent constants one can decrease rho_c so that

```text
rho_c < min(delta/16, e²/s_*).
```

All previously valid bounds on a larger action neighborhood remain upper bounds after this shrink. In particular the inverse-torsion bounds and the fast complex bi-Lipschitz bound remain valid; then choose the derived frequency constants and small mu_* uniformly. The dependence of e on the original real data causes no circular dependence on r or mu.

For the actual averaging input, check D_(bar rho) lies in the complex action domain since bar rho <= rho_c, and the oscillator radii are both **e**. The canonical conversion while Cartesian oscillators remain is

```text
theta=phi_CP/(2pi), I_N=2pi I_CP, p_N=p_CP, q_N=q_CP.
```

It preserves the Hamiltonian and mu, and gives rho_N = 2pi bar rho, s_N=s_*/(2pi), alpha_N=alpha_av/(2pi). Thus

```text
d_av=min(rho_N s_N,e²)=bar rho s_*,
bar alpha=2pi alpha_N=alpha_av,
alpha_av d_av=bar gamma² s_*/(4 Mbar0 Kbar^(2tau+1)).
```

The symbol d_av here is the averaging product, distinct from the positive boundary-collar width d in the frozen data. There is no need to identify them.

The first branch of bar gamma gives the lower bound `G² s_* mu2 r^(-5)/(4 Mbar0)`. Both required G inequalities survive unchanged: they involve no oscillator radius after rho_c has selected the bar rho s_* branch. The tail is `exp(-Kbar s_*/6)=r^5`, and the mean correction is at most mu2 r^5. The resulting remainder is bounded by `2 Lambda_P mu r^5`. P2's half-domain output now has oscillator radius e/2, exactly the domain stated in `avg`.

The actual displacements are

```text
Delta_I <= 12 mu2 Kbar^tau/(s_* bar gamma)
        <= 12 r^(11/2)/(G s_*),
Delta_max <= 18 mu2 Kbar^tau/(e bar gamma)
          <= 18 r^(11/2)/(G e).
```

Consequently the oscillator location margin follows from the data-only condition

```text
18 sqrt(2) r_*^4/(G e) <= kappa_1.
```

This is precisely a sufficient version of r5. The constants may deteriorate when e is small; the frozen theorem permits this because all analytic data precede r_*.

The final thresholds require `r_* <= r1/2` and `r_* <= e/4`. Therefore the complex polar image has oscillator norm below 2r < e/2 and also below r1. It lies in the averaging output, and the Q estimate is applicable there. The perturbation bound is still

```text
C_R mu r^5,   C_R=32 C_Q+2 Lambda_P,
E=C1 mu r^5,
C1 >= C_R coth(sigma_av/4)^n/(2pi).
```

All occurrences that previously depended on the unjustified epsilon_0=r0/2 complex radius have thus been replaced, including their indirect effects on C1, the kappas, G, C_* and r_*.

I also checked the elementary “small enough” guards at their uses. For example `Kbar r^5 <= 1` in R2 follows already from the corrected thresholds, rather than requiring an extra mu-dependent condition: e <= delta/4 and r < e/4 give r < delta/16; since r^5 log(1/r) is increasing below exp(-1/5),

```text
Kbar r^5 = (60/delta) r^5 log(1/r)
 <= (60/16^5) delta^4 log(16/delta)
 <= 60 log(16)/16^5 < 0.00016.
```

The fast location assertion `r_K+Delta_I<t` is likewise compatible with the stated bounds. In fact Mbar0 >= c0, C1 >= 2pi C_U >= 32pi/c0, kappa_1 > 2 sqrt(hat c) C1 and G >= 2 Mbar0 kappa_1 imply G > 1. Hence `Delta_I/t <= 24 r^5/(G delta) < 24/16^5`, while r4 and the improved r_K estimate give `r_K/t < 1/(6144n)`. Their sum is less than one. No radius depending on mu is smuggled into the constant order.

## What I recomputed: the measured representative and strictness

For sigma-compact B, the parameter-cell image K_B^c is sigma-compact by continuity of the corrected-action and limit maps. Its integer translates give the full K_B. The half-open **output** angle cell is F_sigma, so

```text
A_B=K_B intersect (R^n × [0,1)^n)
```

is sigma-compact and measurable. This conclusion does not identify it with K_B^c. Scaling and permuting A_B puts every input angle in `[0,2pi)^n`, and all action coordinates lie in O0 by the location lemma. Q2 then implies injectivity of Phi on this measured set: an output fast-lattice coincidence forces a full input-angle lattice difference, which must be zero inside the half-open cell. It also proves disjointness of the physical fast translates of its image T.

Every point of the physical full union is in one such fast translate, because all n output angles can first be reduced modulo their lattice within the original torus. Conversely each translate remains in the union. Partitioning the **physical** fast-angle coordinate into translated half-open cells then counts each point of T once. It does not require the averaging map to preserve the physical cell. Liouville on the injective measured set gives exactly

```text
meas(S_B intersect F(V,r))=(2pi)^n meas(A_B).
```

The factor is n=a+b, not just a: the scaling occurs in all n polar angles before the slow angles are represented in Cartesian oscillator variables. This agrees with

```text
meas(F(V,r))=(2pi)^n meas(V) (r²/2)^b
            =(2pi)^a meas(V) (pi r²)^b.
```

The later lower-bound proof uses L=A_(D0), exactly this output representative. Its action coordinates lie in `V × (0,lambda_2)^b`, so L is inside the comparison cell F'. The exact measure identity and the Part-3 quotient-cell complement estimate are now expressed using the same representative.

The relative budgets recompute as follows:

```text
meas(check D) >= meas(V)/4,
ell=lambda_2−3lambda_1 >= r²/4,
r_K < hat rho/(256n) <= lambda_1/(512n),
2r_K/ell <= kappa_1 sqrt(r)/(64n),
(1+2r_K/ell)^b <= exp(1/768) < 2.
```

The Cantor-neighborhood difference is contained in the union of the original inner-core collar and the removed one-scale bad actions. It is not bounded by pretending that check D has the original collar. The resulting relative enlargement loss is bounded by

```text
[8(A+c_dio C_gamma)/meas(V)+b kappa_1/16] sqrt(r).
```

The independent two-scale bad-action bound contributes the stated C_b, using tau−n=1 and mu <= r^6; the discarded oscillator shell contributes `6b kappa_1 sqrt(r)`. Thus the written

```text
C_*=(A+c_dio C_gamma)/meas(V)+6b kappa_1+c_n C_b
```

remains valid after the change of representative. Nothing in the argument assigns an extra factor mu to r_K.

For deletion, family disjointness after physical reconstruction uses both Part-3 family injectivity and Q2. Thus m(B), defined by the physical cell measure or equivalently the corrected A_B identity, is additive on the relevant parameter families. A first-action slice is null. Its corrected-action image is null by Lipschitzness; its product with an angle cell remains null, as does its image under the Lipschitz limit map. Crucially, the revised proof now continues from this **parameter-cell** null image to all its countably many translates and only then to A_Hs. Hence m(Hs)=0 is justified for the actually measured representative.

The cumulative function `m(D0 intersect {I_1<=s})` is continuous, with total mass finite and positive, so it attains the chosen positive deletion amount at most `sqrt(r) meas(F)/2`. Both the deleted sublevel family and the retained strict-superlevel family are sigma-compact. Deleting whole disjoint tori preserves measurability and whole-torus saturation, produces the strict upper bound, and leaves enough slack for the strict lower bound with C >= C_*+1.

## Frozen P-G conclusion and route verdict

The numerical KAM choices are still exact upper-bound choices, not an inverted inequality for an unspecified cutoff:

```text
L=C1/mu,  x=C1^4/kappa_0²,  K=K0,
hat rho=r^(5/2) min(kappa_0/(3C1 K0^(tau+1)),kappa_1/2),
hat E=max(9 C1^4 K0^(2tau+2)/kappa_0²,4 C1²/kappa_1²).
```

Both kappa choices give hat c hat E < 1. The Part-3 input width is **bar s+s=sigma_tot**, with 4s=bar s; its perturbation norm is established after the extra angle-strip loss. There is no need for an unavailable strip of width 4s+bar s. The fast complex injectivity and the inverse block bounds are supplied before that application.

For each resulting torus the pipeline applies exactly once to `pi circ varphi_omega`, with chart `Phi circ S_(2pi)`. Thus

```text
K_omega=Phi circ S_(2pi) circ pi circ varphi_omega,
w=omega=F_mu(I0)/(2pi).
```

The frozen frequency is not divided by 2pi again. The range and differentiability guards hold on an open neighborhood of the torus. Analyticity, the fast affine-lattice clause, injectivity modulo the full parameter lattice, injective derivative, vanishing symplectic form, and the all-real-time `HasDerivAt` flow clause are supplied by the exact Part-1 transport and Part-3 conclusions. The real frequencies have positive Diophantine constant min(gamma_1,gamma_2), exponent tau=n+1>n, and the displayed fast/slow bounds C_w and C_w mu.

After deletion the set is measurable, lies in the frozen open product-of-discs cylinder, and contains the whole torus through each of its points. Its cell measure is finite and positive, strictly smaller than the full cell, and strictly larger than the frozen `ofReal(1−C sqrt(r))` multiple. The positivity split for a nonpositive ofReal argument is correct; otherwise ordinary finite real measure arithmetic applies. The constants are chosen in the frozen order

```text
fixed geometric/analytic data -> exists r_*,C,c -> forall r,mu -> exists S,
```

with c=2n+4>0, 0<r_*<min(r0,1), C>0. No stronger hypothesis on the original boundary coefficients or on the complex extension has been added to the frozen theorem.

The P-G route therefore closes at the blueprint assembly level. The Kepler/secular/physical preparations and Part-11 alternatives are not dependencies of this abstract P-G proof and are not certified by this report. The source's omitted uniform-remainder argument and strictness argument have concrete replacements here; the CP10 source comments need no new ledger entry from this review. Remove the stale footer at the next editorial pass. The reviewed Part-5 hash and report-format checks are rechecked at closeout.
