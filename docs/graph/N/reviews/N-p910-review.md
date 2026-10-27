# N-p910 slice topology review

Reviewer: `sol-review-N-e`. Marker: `rev-N-e`.

## Verdict: FAIL

The frozen N-HEAD-C assembly remains identifiable, with the correct positive-epsilon and arbitrary-comparison-solution structure. The packet nevertheless under-links packages, restricts the angle incorrectly in the headline summary, reorders uniqueness quantifiers, and contains a conditional-branch misuse and a local-regularity contract gap. The replacement fragments expose the gap rather than adding a premise to N-HEAD-C.

## Scope and checks

Read the complete REVIEW-BRIEF and binding SPEC; all raw source lines in this slice; all its node and coverage records; the imports packet; and the statements of every directly cited result in other parts. Only allowed frozen definition/declaration text and manifest identity fields were inspected in Lean. No implementation module, provider, proof body or manifest state was used. No Lean or build command was run. Only the two requested review files are edited.

| Reviewed input | SHA-256 |
|---|---|
| `docs/graph/N/SPEC.md` | `2e804c60769d5994e9b6f17a39cc397cc6faf08032620c89c97c51ff6e539c3f` |
| `docs/graph/N/packets/N-p910.nodes.md` | `9328f8f6e585fe5c2b896f98aab3204316ea123231da594c0e8d2834285d2906` |
| `docs/graph/N/packets/N-p910.coverage.md` | `c6133cc6afad34ebc37c6f8e35d034e135f3874fbc85ed58de761d64826da4c7` |
| `blueprint-N/parts/p9-poschel-theorem1.tex` | `5306ce090f13d1bad7822ee8f0c8486418f75e3ff06273d76085b4903a908f92` |
| `blueprint-N/parts/p10-assembly.tex` | `b7cf55040a311080d02d39a407ce4ffdb495b0f4887a7da86c994d56165e4089` |

The three slice-source hashes match CORPUS.sha256, and the consumed K Part 1 source matches IMPORTS.sha256. A source-only traversal of the supplied four root closures finds every existing node of these slices reachable (49 in N-p8; 66 in N-p910). This is reachability, not proof status. The active packets have fewer nodes than the pre-extraction count because valid exclusions were made.

Checked the N-HEAD-C frozen declaration against Part 0 and the assembly: n>=3; seven data before C,T,c,epsilon_0; all four positive and C epsilon_0^(1/(2n))<=R/4; 0<epsilon<=epsilon_0; H3 on B(0,R), H4/H5 on B(0,R+s); theta_0 arbitrary; I_0 in B(0,R/2); a solution on [-tau,tau]; uniqueness against every solution on [-L,L] without an extra confinement premise. The smaller claimed dependence of T is in the excluded audit remark; the frozen theorem permits dependence on all seven data. The root identity stays in N-p02; bpN:p10:head is its assembly node, not a second frozen anchor.

The only imported result consumed directly here is K:bp:p1:ext-mvt. Its arbitrary real/complex convex-set contract at blueprint/parts/p1-analysis.tex L75-L78 supports the use in om-max once the local derivative identification is supplied. N-imports was read, not rewritten or independently reviewed as an assigned slice. The excluded m-le-M result was checked by a corpus label search: the theorem proof expressly says it is not needed; the remaining mentions are remarks. No provenance edge to the dictionary or errata is needed.

## Per-node audit

Every row records both statement and proof spans; a step has the same span for both. The reasons name direct uses, not merely transitive reachability.

| Node ID | Result | Source spans re-read | Reason for FAIL |
|---|---|---|---|
| `bpN:p10:ext-rpow` | PASS | `blueprint-N/parts/p10-assembly.tex#bpN:p10:ext-rpow@L18-L19; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p10:choice` | PASS | `blueprint-N/parts/p10-assembly.tex#bpN:p10:choice@L27-L34; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p10:choice-props` | PASS | `blueprint-N/parts/p10-assembly.tex#bpN:p10:choice-props@L36-L46; proof blueprint-N/parts/p10-assembly.tex#bpN:p10:choice-props@L47-L55` | Source fields, direct uses and disposition checked. |
| `stepN:p10:cp-ab` | PASS | `blueprint-N/parts/p10-assembly.tex#stepN:p10:cp-ab@L48-L48; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:cp-ab@L48-L48` | Source fields, direct uses and disposition checked. |
| `stepN:p10:cp-dict` | PASS | `blueprint-N/parts/p10-assembly.tex#stepN:p10:cp-dict@L50-L50; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:cp-dict@L50-L50` | Source fields, direct uses and disposition checked. |
| `stepN:p10:cp-rad` | PASS | `blueprint-N/parts/p10-assembly.tex#stepN:p10:cp-rad@L52-L52; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:cp-rad@L52-L52` | Source fields, direct uses and disposition checked. |
| `stepN:p10:cp-size` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:cp-size@L54-L54; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:cp-size@L54-L54` | Missing direct edge to `bpN:p10:choice`: the fixed C,epsilon_0,a of the choice are used |
| `bpN:p10:hypotheses-check` | PASS | `blueprint-N/parts/p10-assembly.tex#bpN:p10:hypotheses-check@L59-L73; proof blueprint-N/parts/p10-assembly.tex#bpN:p10:hypotheses-check@L74-L90` | Source fields, direct uses and disposition checked. |
| `stepN:p10:hc-tubes` | PASS | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-tubes@L75-L75; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-tubes@L75-L75` | Source fields, direct uses and disposition checked. |
| `stepN:p10:hc-h` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-h@L77-L77; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-h@L77-L77` | Missing direct edge to `bpN:p4:domains`: V is the complex tube fixed in hypotheses-check Missing direct edge to `bpN:p0:actionnbhd#actionNbhd`: the input domain B(0,R)_s is used |
| `stepN:p10:hc-qc` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79` | Missing direct edge to `bpN:p7:setting`: the real Hessian Q and real frequency of h restricted to U are used Missing direct edge to `bpN:p0:integrable#IsAnalyticIntegrable`: H1 supplies holomorphy and reality to the conditional conversion Missing direct edge to `bpN:p0:hess#HasComplexHessianBound`: H2 supplies the complex Hessian bound to the conditional conversion Missing direct edge to `bpN:p0:qc#IsStrictlyQuasiConvex`: H4 supplies the literal quasi-convexity premise Missing direct edge to `bpN:p0:freq#frequencyMap`: H3 uses the frozen frequency map |
| `stepN:p10:hc-f` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-f@L81-L81; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-f@L81-L81` | Missing direct edge to `bpN:p10:choice`: s1,F1,epsilon-prime,epsilon1 are the chosen Theorem-1 data |
| `stepN:p10:hc-setting` | PASS | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-setting@L83-L83; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-setting@L83-L83` | Source fields, direct uses and disposition checked. |
| `stepN:p10:hc-exc` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-exc@L85-L85; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-exc@L85-L85` | Missing direct edge to `bpN:p10:choice`: r0,mu,omega_min are the fixed choice data |
| `stepN:p10:hc-time` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-time@L87-L87; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-time@L87-L87` | Missing direct edge to `bpN:p9:setting`: Omega_0 is the Theorem-1 maximum Missing direct edge to `stepN:p10:hc-setting`: the conditional omega0 lemma requires the Theorem-1 setting established in the preceding step |
| `stepN:p10:hc-field` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-field@L89-L89; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-field@L89-L89` | Missing direct edge to `bpN:p4:domains`: openness of V and its real restriction supplies the open neighbourhood for equality of fderiv |
| `bpN:p10:confinement` | PASS | `blueprint-N/parts/p10-assembly.tex#bpN:p10:confinement@L94-L98; proof blueprint-N/parts/p10-assembly.tex#bpN:p10:confinement@L99-L107` | Source fields, direct uses and disposition checked. |
| `stepN:p10:cf-setting` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-setting@L100-L100; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-setting@L100-L100` | Missing direct edge to `bpN:p10:choice`: epsilon-prime,epsilon1 and the substituted Theorem-1 data are used |
| `stepN:p10:cf-orbit` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-orbit@L102-L102; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-orbit@L102-L102` | Missing direct edge to `bpN:p10:choice`: P is the chosen initial action set Missing direct edge to `bpN:p0:realH#realHamiltonian`: F_* is the field of the frozen realHamiltonian h f This step only verifies the theorem hypotheses; mentioning the theorem whose hypotheses are checked is not a direct use (SPEC Edges). The application is cf-branch. Remove the stale NOTE about keeping a theorem-hypothesis pointer as an edge. |
| `stepN:p10:cf-branch` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104` | Missing direct edge to `bpN:p10:choice`: the substituted mu,B_c,epsilon-prime,epsilon1,s1 are choice data Missing direct edge to `bpN:p9:setting`: the Theorem-1 time and radius parameters are used |
| `stepN:p10:cf-trans` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106` | Missing direct edge to `bpN:p10:choice`: C,T,c,tau and epsilon-prime are the chosen constants |
| `bpN:p10:existence` | FAIL | `blueprint-N/parts/p10-assembly.tex#bpN:p10:existence@L111-L114; proof blueprint-N/parts/p10-assembly.tex#bpN:p10:existence@L115-L123` | Missing direct edge to `bpN:p0:realH#realHamiltonian`: H_(h,f) is used in the solution predicate |
| `stepN:p10:ex-rho` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-rho@L116-L116; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-rho@L116-L116` | Missing direct edge to `bpN:p10:choice`: rho=C epsilon^a and tau use the fixed chosen constants |
| `stepN:p10:ex-ball` | PASS | `blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-ball@L118-L118; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-ball@L118-L118` | Source fields, direct uses and disposition checked. |
| `stepN:p10:ex-apriori` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-apriori@L120-L120; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-apriori@L120-L120` | Missing direct edge to `bpN:p0:realH#realHamiltonian`: the solution predicate is for H_(h,f) |
| `stepN:p10:ex-glue` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-glue@L122-L122; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-glue@L122-L122` | Missing direct edge to `bpN:p0:sol#IsSolutionOn`: the produced curve satisfies the frozen solution predicate Missing direct edge to `bpN:p0:realH#realHamiltonian`: the produced curve solves H_(h,f) |
| `bpN:p10:uniqueness` | FAIL | `blueprint-N/parts/p10-assembly.tex#bpN:p10:uniqueness@L125-L129; proof blueprint-N/parts/p10-assembly.tex#bpN:p10:uniqueness@L130-L134` | Missing direct edge to `bpN:p0:realH#realHamiltonian`: the two solution predicates use H_(h,f) The current field orders L,y before z; the source first fixes arbitrary z, then universally quantifies L,y (L126). |
| `stepN:p10:un-restrict` | PASS | `blueprint-N/parts/p10-assembly.tex#stepN:p10:un-restrict@L131-L131; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:un-restrict@L131-L131` | Source fields, direct uses and disposition checked. |
| `stepN:p10:un-apply` | PASS | `blueprint-N/parts/p10-assembly.tex#stepN:p10:un-apply@L133-L133; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:un-apply@L133-L133` | Source fields, direct uses and disposition checked. |
| `bpN:p10:head` | FAIL | `blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L138-L142; proof blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L143-L155` | The summary says "every theta_0,I_0 in B(0,R/2)"; theta_0 must be arbitrary in R^n. Restore all-time bounded-interval uniqueness quantifiers explicitly; the frozen statement is unchanged. Correct EDGE locator/rationale for `bpN:p0:ball#actionBall` to consumer L139. Correct EDGE locator/rationale for `bpN:p0:rdomain#realActionDomain` to consumer L139. Correct EDGE locator/rationale for `bpN:p0:freq#frequencyMap` to consumer L139. Correct EDGE locator/rationale for `bpN:p0:realH#realHamiltonian` to consumer L139. Correct EDGE locator/rationale for `bpN:p0:sol#IsSolutionOn` to consumer L139. Correct EDGE locator/rationale for `bpN:p0:integrable#IsAnalyticIntegrable` to consumer L139. Correct EDGE locator/rationale for `bpN:p0:hess#HasComplexHessianBound` to consumer L139. Correct EDGE locator/rationale for `bpN:p0:qc#IsStrictlyQuasiConvex` to consumer L139. Correct EDGE locator/rationale for `bpN:p0:bm#HasDerivativeBounds` to consumer L139. Correct EDGE locator/rationale for `bpN:p0:pert#IsAnalyticPerturbation` to consumer L139. |
| `stepN:p10:hd-order` | PASS | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-order@L144-L144; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-order@L144-L144` | Source fields, direct uses and disposition checked. |
| `stepN:p10:hd-const` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-const@L146-L146; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-const@L146-L146` | Missing direct edge to `bpN:p10:choice`: C,T,c,epsilon_0 are the constants fixed in choice |
| `stepN:p10:hd-univ` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-univ@L148-L148; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-univ@L148-L148` | Missing direct edge to `bpN:p10:choice`: tau=T exp(c epsilon^-a) uses the chosen constants Missing direct edge to `bpN:p0:hess#HasComplexHessianBound`: H2 is part of the selected input hypotheses Missing direct edge to `bpN:p0:qc#IsStrictlyQuasiConvex`: H4 is part of the selected input hypotheses Missing direct edge to `bpN:p0:bm#HasDerivativeBounds`: H5 is part of the selected input hypotheses Missing direct edge to `bpN:p0:pert#IsAnalyticPerturbation`: H6 is part of the selected input hypotheses Missing direct edge to `bpN:p0:freq#frequencyMap`: H3 is the frequency lower bound Missing direct edge to `bpN:p0:realH#realHamiltonian`: H=H_(h,f) is fixed here |
| `stepN:p10:hd-abc` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-abc@L150-L150; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-abc@L150-L150` | Missing direct edge to `bpN:p10:choice`: the confinement constant C and time tau are unchanged Missing direct edge to `bpN:p0:sol#IsSolutionOn`: the exhibited z satisfies the frozen predicate Missing direct edge to `bpN:p0:realH#realHamiltonian`: the exhibited z solves H_(h,f) Correct EDGE locator/rationale for `stepN:p10:hd-univ` to consumer L150. |
| `stepN:p10:hd-d` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-d@L152-L152; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-d@L152-L152` | Missing direct edge to `bpN:p0:sol#IsSolutionOn`: clause d quantifies the other frozen solutions |
| `stepN:p10:hd-dep` | FAIL | `blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-dep@L154-L154; proof blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-dep@L154-L154` | Missing direct edge to `bpN:p10:choice`: uniformity asserts that the chosen four constants are unchanged |
| `bpN:p9:ext-num` | PASS | `blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:ext-num@L18-L18; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p9:ext-compact` | PASS | `blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:ext-compact@L19-L19; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p9:setting` | PASS | `blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:setting@L25-L39; no proof (definition/external)` | Source fields, direct uses and disposition checked. |
| `bpN:p9:elementary` | PASS | `blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:elementary@L41-L48; proof blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:elementary@L49-L53` | Source fields, direct uses and disposition checked. |
| `stepN:p9:el-a` | PASS | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:el-a@L50-L50; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:el-a@L50-L50` | Source fields, direct uses and disposition checked. |
| `stepN:p9:el-b` | PASS | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:el-b@L51-L51; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:el-b@L51-L51` | Source fields, direct uses and disposition checked. |
| `stepN:p9:el-c` | PASS | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:el-c@L52-L52; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:el-c@L52-L52` | Source fields, direct uses and disposition checked. |
| `bpN:p9:omega0` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:omega0@L62-L64; proof blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:omega0@L65-L68` | Missing direct edge to `bpN:p4:domains`: the tube in the inclusion is V_(r0)P Missing direct edge to `bpN:p7:setting`: U_(r0)P and omega are used |
| `stepN:p9:om-incl` | PASS | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-incl@L66-L66; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-incl@L66-L66` | Source fields, direct uses and disposition checked. |
| `stepN:p9:om-max` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max@L67-L67; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max@L67-L67` | The conditional cited lemma is specialized to IsAnalyticIntegrable R s h on a centred ball; its hypotheses are not supplied for arbitrary P. Expose the needed local version instead of silently generalizing it. Missing direct edge to `stepN:p9:om-max#local-real-regularity`: the locally asserted C^2 restriction gives continuity of omega and identifies its derivative |
| `bpN:p9:block-hyp` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L74-L85; proof blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L86-L93` | Missing direct edge to `bpN:p8:klattice`: Lambda belongs to M_K Missing direct edge to `bpN:p8:lattice`: Theta, Z^n and lattice resonance data are used Missing direct edge to `bpN:p9#data`: p/q=1/8 occurs in the conclusion The displayed equivalent conclusion K_a Lr=alpha/p, consumed by bs-theta, is omitted from the source-conclusion field. |
| `stepN:p9:bh-dom` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87` | Missing direct edge to `bpN:p4:norm`: the class and weighted perturbation norm occur explicitly Missing direct edge to `bpN:p7:resonance-data`: quasi-convexity is inherited on the smaller real tube Missing direct edge to `bpN:p8:klattice`: the full-rank versus lower-rank lattice case is used Missing direct edge to `bpN:p8:lattice`: dimensions and the trivial/full lattice are used |
| `stepN:p9:bh-eps` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-eps@L88-L88; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-eps@L88-L88` | Missing direct edge to `bpN:p9:setting`: epsilon,m,r_Theta are Theorem-1 data Missing direct edge to `bpN:p9:s-blocks#data`: r=r_Lambda is the selected block radius |
| `stepN:p9:bh-rad` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-rad@L89-L89; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-rad@L89-L89` | Missing direct edge to `bpN:p9#data`: the fixed p is used in alpha=pMKr |
| `stepN:p9:bh-nr` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90` | Missing direct edge to `bpN:p9:setting`: K_a and the Theorem-1 frequency are used Missing direct edge to `bpN:p7:setting`: omega and the real resonance distance are used Missing direct edge to `bpN:p6:setting`: Z_(K_a) and nonresonance (N1) are used Missing direct edge to `bpN:p7:resonance-data`: closeness to exact resonances is used Missing direct edge to `bpN:p8:lattice`: R_Lambda and Theta are used Missing direct edge to `bpN:p8:klattice`: Lambda is in the selected maximal-lattice family Missing direct edge to `bpN:p9#data`: b=1/8 identifies delta_Lambda=bmr |
| `stepN:p9:bh-lip` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-lip@L91-L91; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-lip@L91-L91` | Missing direct edge to `bpN:p6:setting`: the conclusion is (N2), cond-L Missing direct edge to `bpN:p4:domains`: the Hessian estimate is on V_rD Missing direct edge to `bpN:p7:setting`: omega is the real/complex gradient on the appropriate tube Missing direct edge to `bpN:p9:s-blocks#data`: D={I0}, r=r_Lambda are the block data |
| `stepN:p9:bh-small` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-small@L92-L92; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-small@L92-L92` | Missing direct edge to `bpN:p9:s-blocks#data`: the block values alpha,r,K are used |
| `bpN:p9:block-stab` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L95-L101; proof blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L102-L107` | Missing direct edge to `bpN:p7:setting`: W_r=R^n times U_rD and the restricted real Hamiltonian are used Missing direct edge to `bpN:p8:lattice`: the trivial and full lattice cases occur in the time definitions The zero-frequency convention at L100 is a stated conclusion/definition and must be retained. Missing direct edge to `bpN:p9:block-stab#local-field`: the unmarked local carrier-change assertion is part of this proof The omega0 edge has an unmatched radius; expose the asserted generic-radius maximum instead of applying the fixed-R_0 contract. |
| `stepN:p9:bs-theta` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-theta@L104-L104; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-theta@L104-L104` | Missing direct edge to `bpN:p9:setting`: s,epsilon,kappa and the Theorem-1 bounds are used Missing direct edge to `bpN:p9:s-blocks#data`: r_Theta and alpha_Theta are block data Missing direct edge to `bpN:p9:block-stab#local-field`: use the real Hamiltonian and field on the smaller block tube, as established at L103 |
| `stepN:p9:bs-res` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-res@L105-L105; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-res@L105-L105` | Missing direct edge to `bpN:p9:setting`: m,M,ell,s,epsilon,kappa are Theorem-1 data Missing direct edge to `bpN:p7:setting`: the proposition is applied to H-orbits in W_r Missing direct edge to `bpN:p7:resonance-data`: quasi-convexity and exact-resonance closeness are used Missing direct edge to `bpN:p9:block-stab#local-field`: use the real Hamiltonian and field on the smaller block tube, as established at L103 |
| `stepN:p9:bs-stop` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-stop@L106-L106; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-stop@L106-L106` | Missing direct edge to `bpN:p9:setting`: the field agrees on the Theorem-1 domain W Missing direct edge to `bpN:p7:setting`: W_r, H-orbits and real Hamiltonian restriction are used Missing direct edge to `bpN:p9:s-blocks#data`: r_Lambda and the selected block are used Missing direct edge to `bpN:p9:block-stab#local-field`: use the real Hamiltonian and field on the smaller block tube, as established at L103 |
| `bpN:p9:thm1` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L111-L123; proof blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L124-L136` | Missing direct edge to `bpN:p4:norm`: the perturbation norm is explicitly assumed Missing direct edge to `bpN:p4:domains`: the action tube U_(r0)P is used through W Missing direct edge to `bpN:p7:setting`: the real Hamiltonian and its real tube are used |
| `stepN:p9:t1-par` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-par@L125-L125; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-par@L125-L125` | Missing direct edge to `bpN:p9:setting`: K,K_a,Omega_0 and m<=M are Theorem-1 data Missing direct edge to `bpN:p9#data`: the covering is applied with the fixed p,b parameters of the subsection |
| `stepN:p9:t1-b` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126` | Missing direct edge to `bpN:p9:setting`: m,r0,K,W and omega are used Missing direct edge to `bpN:p8:lattice`: W_(Z^n)=R^n and the full lattice occur Missing direct edge to `bpN:p8:klattice`: Z^n belongs to M_K Missing direct edge to `bpN:p8:projection`: Pi_(Z^n)=identity is used Correct EDGE locator/rationale for `stepN:p9:t1-par` to consumer L126. Missing direct edge to `stepN:p9:t1-b#full-rank-zone`: the branch-independent full-rank zone calculation identifies D_(Z^n) |
| `stepN:p9:t1-a-choice` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127` | Missing direct edge to `bpN:p9:setting`: the constants and frequency of the Theorem-1 setting are used Missing direct edge to `bpN:p9:s-blocks#data`: I0 is assigned to D_Lambda, with r_Lambda,delta_Lambda Missing direct edge to `bpN:p8:lattice`: the full-lattice case is excluded Missing direct edge to `bpN:p8:klattice`: Lambda is chosen in M_K Correct EDGE locator/rationale for `stepN:p9:t1-par` to consumer L127. The exceptional-branch step assumes ¦¦omega(I0)¦¦<mr0/8, incompatible with this branch. Reuse only the unconditionally proved zone calculation, not the whole conditional step. Missing direct edge to `stepN:p9:t1-b#full-rank-zone`: the words "as in Step (b)" reuse the full-rank zone calculation, not its incompatible exceptional-frequency premise |
| `stepN:p9:t1-a-theta` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-theta@L128-L130; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-theta@L128-L130` | Missing direct edge to `bpN:p8:lattice`: the trivial lattice case is used |
| `stepN:p9:t1-a-res` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L131-L134; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L131-L134` | Missing direct edge to `bpN:p9:s-blocks#data`: r_Lambda is the selected block radius Missing direct edge to `bpN:p8:lattice`: dim Lambda=d is used Missing direct edge to `bpN:p8:klattice`: Lambda belongs to M_K Missing direct edge to `bpN:p8:volume-def`: ¦Lambda¦ appears in the radius formula Correct the omega0 EDGE rationale: it supplies the R_0 maximum, while the block maximum is supplied by the block-stab contract. |
| `stepN:p9:t1-a-concl` | PASS | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-concl@L135-L135; proof blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-concl@L135-L135` | Source fields, direct uses and disposition checked. |
| `bpN:p9#data` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9@L12-L14; no proof (definition/external)` | Missing direct edge to `bpN:p6:setting`: the analytic Fourier set Z_K is used Missing direct edge to `bpN:p8:covering`: D_Lambda, r_Lambda, alpha_Lambda and delta_Lambda are the Part 8 action-block data |
| `bpN:p9:s-blocks#data` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:s-blocks@L72-L72; no proof (definition/external)` | Missing direct edge to `bpN:p7:setting`: omega restricted to P is the real gradient of h |

## Coverage findings

| Coverage item | Result | Source / issue |
|---|---|---|
| `stepN:p9:t1-b` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126`: The labelled exceptional step also contains the reusable full-rank zone calculation needed in the nonexceptional branch; map that substantive intermediate separately. |
| `stepN:p9:om-max` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max@L67-L67`: Expose the local real-regularity bridge: the cited ball-based lemma does not carry the arbitrary-tube contract. |
| `p9:block-stab-local-field` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L103-L103`: Previously unrepresented substantive carrier-change assertion at L103; openness and equality of the restricted real Hamiltonian fields are consumed by the stopped application. |
| `p9:block-frequency-size` | FAIL | `blueprint-N/parts/p9-poschel-theorem1.tex L96`: the generic-radius maximum assertion needs its own exposed contract. |

All other coverage items PASS. The added item identifies an unmarked obligation inside an existing proof region; it is not a new mathematical assertion invented for the theorem.

## Suspected blueprint defects (separate from packet corrections)

- Part 9 L67, om-max: “h_R is C^2 on the open set U_(r0)P (holo-real)”. The cited Part 1 statement fixes the frozen ball-based IsAnalyticIntegrable/IsAnalyticPerturbation context, which an arbitrary Theorem-1 setting does not supply. The general local restriction fact is standard, but this graph may not silently strengthen the cited lemma. The replacement exposes the precise assertion as SOURCE_GAP. This does not refute Theorem 1 or the frozen headline.
- Part 9 L127: “as in Step (b)” must refer only to the full-rank zone computation, not to the conditional exceptional-branch stability statement. The new intermediate records exactly the calculation performed at L126, without assuming the contradictory branch premise.
- Part 9 L96: the maximum defining Omega_Lambda is asserted “as in omega0”, but omega0 fixes radius R_0, whereas this statement uses radius r_Lambda/2 (which can be larger for the full lattice). This is a method comparison rather than a literal instantiation. The replacement exposes its generic-radius contract as a SOURCE_GAP node; no numerical bound is refuted.

## Replacement fragments

These are complete database blocks for inp_depgraph_apply_review.py. Apply only through the writer workflow; rewritten nodes require a different delta reviewer. The fragments intentionally leave topology PROPOSED.

```text
NODE: bpN:p9#data
KIND: definition
TITLE: Conventions and fixed parameters of Part 9
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9@L12-L14
PROOF_SOURCE: -
CONTRACT_ID: bpN:p9#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: fixed numerical parameters; notation of the section)
SOURCE_QUANTIFIERS: n; r; D; K
SOURCE_CONCLUSION: fixes q = 9, p = 9/8 (q = p/(p−1) ≥ 3, 1 < p ≤ 3/2, p/q = 1/8), b = 1/8; conventions V_rD (max-norm tube of Def domains), U_rD = V_rD ∩ ℝⁿ, 𝒪(r,s) (Def norm), 𝒪(r,s)^ℝ and W_r = ℝⁿ × U_rD (Def p7:setting), Z_K = {¦k¦₁ ≤ K}, ℰ_K = {‖k‖ ≤ K}, 𝕄_K, D_Λ, r_Λ, α_Λ, δ_Λ as in Part 8, H-orbit and ω(I) = ∇h_ℝ(I) as in Part 7
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:domains, bpN:p4:norm, bpN:p7:setting, bpN:p8:klattice, bpN:p6:setting, bpN:p8:covering
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:domains | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9#data@L12-L12 | V_rD, 𝒟_{r,s}
EDGE: bpN:p4:norm | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9#data@L12-L12 | 𝒪(r,s) with D understood
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9#data@L12-L12 | 𝒪(r,s)^ℝ, W_r, H^ℝ-orbit, ω = ∇h_ℝ
EDGE: bpN:p8:klattice | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9#data@L12-L12 | ℰ_K, 𝕄_K
EDGE: bpN:p6:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9#data@L12-L12 | the analytic Fourier set Z_K is used
EDGE: bpN:p8:covering | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9#data@L12-L12 | D_Lambda, r_Lambda, alpha_Lambda and delta_Lambda are the Part 8 action-block data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Section data (SPEC table, p9:prose-L12-L14): the fixed parameters q = 9, p = 9/8, b = 1/8 are consumed by elementary(a), the block steps and the stability steps; the conventions are notation.
```

```text
NODE: bpN:p9:s-blocks#data
KIND: definition
TITLE: Standing data of the section on the blocks
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:s-blocks@L72-L72
PROOF_SOURCE: -
CONTRACT_ID: bpN:p9:s-blocks#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a Theorem-1 setting (bpN:p9:setting); ε ∈ (0,ε_0] with ε_f ≤ ε; K, K_a, κ as in the setting
SOURCE_QUANTIFIERS: Theorem-1 setting; ε; K; Λ ∈ 𝕄_K
SOURCE_CONCLUSION: applies Lemma covering with p = 9/8, b = 1/8, r_0, M, m, K (= K_g) ≥ 1, A = 11M/m (admissible by elementary(a)), to the set P and the map ω|_P: defines 𝕄_K, r_Λ, α_Λ = pMK r_Λ, δ_Λ = b m r_Λ = m r_Λ/8 and the blocks D_Λ ⊂ P
CONSTANT_SCOPE: K, K_a, κ, A as in the setting (dependent on n, r_0, m, M, ε, s)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:setting, bpN:p8:covering, bpN:p9:elementary, bpN:p9#data, bpN:p8:klattice, bpN:p7:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:s-blocks#data@L72-L72 | Theorem-1 setting, ε, K, K_a, κ
EDGE: bpN:p8:covering | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:s-blocks#data@L72-L72 | the Covering Lemma, applied with the stated parameters
EDGE: bpN:p9:elementary | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:s-blocks#data@L72-L72 | A = 11M/m ≥ pM/(bm)+√2 and K ≥ 1 (elementary(a),(b))
EDGE: bpN:p9#data | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:s-blocks#data@L72-L72 | p = 9/8, b = 1/8
EDGE: bpN:p8:klattice | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:s-blocks#data@L72-L72 | 𝕄_K
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:s-blocks#data@L72-L72 | omega restricted to P is the real gradient of h
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Section data (SPEC table, p9:prose-L72-L72): consumed by block-hyp, block-stab and the steps of thm1.
```

```text
NODE: bpN:p9:omega0
KIND: lemma
TITLE: The frequency size $\Omega_0$
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:omega0@L62-L64
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:omega0@L65-L68
CONTRACT_ID: bpN:p9:omega0
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a Theorem-1 setting (bpN:p9:setting); I_0 ∈ P; B̄ = {I ∈ ℝⁿ: ‖I−I_0‖ ≤ R_0}
SOURCE_QUANTIFIERS: Theorem-1 setting; I_0
SOURCE_CONCLUSION: B̄ ⊂ U_{r_0}P; Ω_0(I_0) = max_{B̄}‖ω‖ exists; ‖ω(I_0)‖ ≤ Ω_0(I_0) ≤ ‖ω(I_0)‖ + M R_0 < ∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:setting, stepN:p9:om-incl, stepN:p9:om-max, bpN:p4:domains, bpN:p7:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:omega0@L62-L63 | Theorem-1 setting, R_0, Ω_0, U_{r_0}P
EDGE: stepN:p9:om-incl | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:omega0@L66-L66 | proof step
EDGE: stepN:p9:om-max | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:omega0@L67-L67 | proof step
EDGE: bpN:p4:domains | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:omega0@L63-L63 | the tube in the inclusion is V_(r0)P
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:omega0@L63-L63 | U_(r0)P and omega are used
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p9:block-hyp
KIND: proposition
TITLE: Each block satisfies the hypotheses of Propositions~\ref{bpN:p7:nonresonant}, \ref{bpN:p7:resonant-prop2}
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L74-L85
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L86-L93
CONTRACT_ID: bpN:p9:block-hyp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a Theorem-1 setting (bpN:p9:setting) and the data of §s-blocks (bpN:p9:s-blocks#data); Λ ∈ 𝕄_K, I_0 ∈ D_Λ, D = {I_0}, r = r_Λ, α = α_Λ, L = √n M
SOURCE_QUANTIFIERS: Theorem-1 setting; ε; Λ; I_0; D; r; α; L
SOURCE_CONCLUSION: (a) r_Θ ≤ r ≤ r_0, r ≤ r_0/(AK) if Λ ≠ ℤⁿ; V_rD ⊂ V_{r_0}P, U_rD ⊂ U_{r_0}P, W_r ⊂ W; h holomorphic on V_rD, real on U_rD, ‖∂_I²h‖ ≤ M, ℓ,m-quasi-convex on U_rD; f ∈ 𝒪(r,s)^ℝ, ¦f¦_{r,s} ≤ ε; (b) ε ≤ m r²/2^10 = (p/q) m r²/2^7; (c) r = α/(p√n M K_a), r ≤ 4ℓ/m, M r ≤ ℓ/2; (d) nonresonance: Θ: ¦k·ω(I_0)¦ ≥ α_Θ for 0 < ¦k¦₁ ≤ K_a; Λ ≠ Θ: ¦k·ω(I_0)¦ ≥ α for k ∈ Z_{K_a}∖Λ and ‖Π_Λ ω(I_0)‖ < δ_Λ ≤ m r/8; (e) ω satisfies cond-L on V_rD with L = √n M; (f) Λ = Θ: ε ≤ α r/(2^7 q K_a); in (c), explicitly K_a L r=alpha/p, as stated at L79
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:s-blocks#data, bpN:p9:setting, bpN:p4:domains, bpN:p4:norm, bpN:p7:setting, bpN:p7:resonance-data, bpN:p8:projection, bpN:p6:setting, stepN:p9:bh-dom, stepN:p9:bh-eps, stepN:p9:bh-rad, stepN:p9:bh-nr, stepN:p9:bh-lip, stepN:p9:bh-small, bpN:p8:klattice, bpN:p8:lattice, bpN:p9#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L75-L75 | Λ ∈ 𝕄_K, D_Λ, r_Λ, α_Λ, δ_Λ, K, K_a
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L75-L75 | Theorem-1 setting, (S1)-(S4)
EDGE: bpN:p4:domains | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L77-L77 | V_rD
EDGE: bpN:p4:norm | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L77-L77 | 𝒪(r,s), ¦f¦_{r,s}
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L77-L77 | U_rD, W_r, 𝒪(r,s)^ℝ
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L77-L77 | ℓ,m-quasi-convexity on U_rD
EDGE: bpN:p8:projection | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L80-L80 | Π_Λ in (d)
EDGE: bpN:p6:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L81-L81 | condition cond-L (N2)
EDGE: stepN:p9:bh-dom | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L87-L87 | proof (a)
EDGE: stepN:p9:bh-eps | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L88-L88 | proof (b)
EDGE: stepN:p9:bh-rad | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L89-L89 | proof (c)
EDGE: stepN:p9:bh-nr | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L90-L90 | proof (d)
EDGE: stepN:p9:bh-lip | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L91-L91 | proof (e)
EDGE: stepN:p9:bh-small | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L92-L92 | proof (f)
EDGE: bpN:p8:klattice | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L75-L75 | Lambda belongs to M_K
EDGE: bpN:p8:lattice | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L80-L80 | Theta, Z^n and lattice resonance data are used
EDGE: bpN:p9#data | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-hyp@L78-L78 | p/q=1/8 occurs in the conclusion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Candidate edges to bpN:p7:nonresonant and bpN:p7:resonant-prop2 (the title says the hypotheses of these propositions are verified: the propositions are applied in block-stab, not here) and bpN:p9:errata (remark) dropped.
```

```text
NODE: stepN:p9:bh-dom
KIND: step
TITLE: (a): domains
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87
CONTRACT_ID: stepN:p9:bh-dom
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block-hyp situation
SOURCE_QUANTIFIERS: Λ; I_0
SOURCE_CONCLUSION: (a): domains, inclusions, hypotheses inherited, ¦f¦_{r,s} ≤ ε
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:covering, bpN:p9:s-blocks#data, bpN:p9:setting, bpN:p9:elementary, bpN:p4:domains, bpN:p4:norm#monotone, bpN:p7:setting, bpN:p4:norm, bpN:p7:resonance-data, bpN:p8:klattice, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:covering | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87 | (d): r_Θ ≤ r_Λ ≤ r_0, r_Λ ≤ r_0/(AK), r_{ℤⁿ} = r_0
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87 | r_Λ, D_Λ, I_0 ∈ P
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87 | (S1),(S2),(S4) inherited by subsets; W
EDGE: bpN:p9:elementary | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87 | AK ≥ 1
EDGE: bpN:p4:domains | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87 | V_rD ⊂ V_{r_0}P
EDGE: bpN:p4:norm#monotone | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87 | ¦f¦_{r,s} ≤ ¦f¦_{r_0,s} (monotonicity)
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87 | 𝒪(r,s)^ℝ, W_r ⊂ W
EDGE: bpN:p4:norm | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87 | the class and weighted perturbation norm occur explicitly
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87 | quasi-convexity is inherited on the smaller real tube
EDGE: bpN:p8:klattice | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87 | the full-rank versus lower-rank lattice case is used
EDGE: bpN:p8:lattice | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-dom@L87-L87 | dimensions and the trivial/full lattice are used
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p9:bh-eps
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-eps@L88-L88
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-eps@L88-L88
CONTRACT_ID: stepN:p9:bh-eps
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block-hyp situation; (a)
SOURCE_QUANTIFIERS: Λ
SOURCE_CONCLUSION: (b): ε ≤ m r²/2^10 = (p/q) m r²/2^7
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:elementary, bpN:p8:covering, bpN:p9#data, bpN:p9:setting, bpN:p9:s-blocks#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:elementary | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-eps@L88-L88 | ε = m r_Θ²/2^10
EDGE: bpN:p8:covering | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-eps@L88-L88 | r ≥ r_Θ
EDGE: bpN:p9#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-eps@L88-L88 | p/q = 1/8
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-eps@L88-L88 | epsilon,m,r_Theta are Theorem-1 data
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-eps@L88-L88 | r=r_Lambda is the selected block radius
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p9:bh-rad
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-rad@L89-L89
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-rad@L89-L89
CONTRACT_ID: stepN:p9:bh-rad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block-hyp situation; (a)
SOURCE_QUANTIFIERS: Λ
SOURCE_CONCLUSION: (c): r = α/(p√n M K_a); r ≤ 4ℓ/m; M r ≤ ℓ/2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:s-blocks#data, bpN:p9:elementary, stepN:p9:bh-dom, bpN:p9:setting, bpN:p9#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-rad@L89-L89 | α = pMK r
EDGE: bpN:p9:elementary | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-rad@L89-L89 | K = √n K_a (c); r_0 ≤ 4ℓ/m (a)
EDGE: stepN:p9:bh-dom | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-rad@L89-L89 | r ≤ r_0
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-rad@L89-L89 | (S3) r_0 ≤ ℓ/(2M)
EDGE: bpN:p9#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-rad@L89-L89 | the fixed p is used in alpha=pMKr
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p9:bh-nr
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90
CONTRACT_ID: stepN:p9:bh-nr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block-hyp situation
SOURCE_QUANTIFIERS: Λ; I_0
SOURCE_CONCLUSION: (d): nonresonance on Z_{K_a}∖Λ with α_Λ, and ‖Π_Λ ω(I_0)‖ < δ_Λ ≤ m r/8
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:cutoffs, bpN:p9:elementary, bpN:p8:projection, bpN:p9:s-blocks#data, bpN:p9:setting, bpN:p7:setting, bpN:p6:setting, bpN:p7:resonance-data, bpN:p8:lattice, bpN:p8:klattice, bpN:p9#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:cutoffs | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90 | (b) with K_g = K, K_a ≤ K
EDGE: bpN:p9:elementary | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90 | K_a ≤ K (c)
EDGE: bpN:p8:projection | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90 | dist₂(ω,R_Λ) = ‖Π_Λ ω‖ (c)
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90 | I_0 ∈ D_Λ, δ_Λ = b m r
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90 | K_a and the Theorem-1 frequency are used
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90 | omega and the real resonance distance are used
EDGE: bpN:p6:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90 | Z_(K_a) and nonresonance (N1) are used
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90 | closeness to exact resonances is used
EDGE: bpN:p8:lattice | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90 | R_Lambda and Theta are used
EDGE: bpN:p8:klattice | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90 | Lambda is in the selected maximal-lattice family
EDGE: bpN:p9#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-nr@L90-L90 | b=1/8 identifies delta_Lambda=bmr
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p9:bh-lip
KIND: step
TITLE: (e)
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-lip@L91-L91
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-lip@L91-L91
CONTRACT_ID: stepN:p9:bh-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block-hyp situation; (S1)
SOURCE_QUANTIFIERS: Λ
SOURCE_CONCLUSION: (e): cond-L on V_rD with L = √n M
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:norm-compare, bpN:p6:lipschitz, bpN:p9:setting, stepN:p9:bh-dom, bpN:p6:setting, bpN:p4:domains, bpN:p7:setting, bpN:p9:s-blocks#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-lip@L91-L91 | (a): ‖v‖ ≤ √n ¦v¦_∞ comparison
EDGE: bpN:p6:lipschitz | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-lip@L91-L91 | Hessian bound gives cond-L
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-lip@L91-L91 | (S1) ‖∂_I²h‖ ≤ M
EDGE: stepN:p9:bh-dom | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-lip@L91-L91 | V_rD ⊂ V_{r_0}P
EDGE: bpN:p6:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-lip@L91-L91 | the conclusion is (N2), cond-L
EDGE: bpN:p4:domains | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-lip@L91-L91 | the Hessian estimate is on V_rD
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-lip@L91-L91 | omega is the real/complex gradient on the appropriate tube
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-lip@L91-L91 | D={I0}, r=r_Lambda are the block data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p9:bh-small
KIND: step
TITLE: (f)
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-small@L92-L92
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-small@L92-L92
CONTRACT_ID: stepN:p9:bh-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block-hyp situation; (b),(c)
SOURCE_QUANTIFIERS: Λ = Θ
SOURCE_CONCLUSION: (f): ε ≤ α r/(2^7 q K_a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p9:bh-rad, stepN:p9:bh-eps, bpN:p9:setting, bpN:p9#data, bpN:p9:s-blocks#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p9:bh-rad | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-small@L92-L92 | (c): α = pMK r, K = √n K_a
EDGE: stepN:p9:bh-eps | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-small@L92-L92 | (b): ε ≤ m r²/2^10
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-small@L92-L92 | M ≥ m
EDGE: bpN:p9#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-small@L92-L92 | p/q = 1/8
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bh-small@L92-L92 | the block values alpha,r,K are used
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p9:block-stab
KIND: lemma
TITLE: Stability on one block, stopped form
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L95-L101
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L102-L107
CONTRACT_ID: bpN:p9:block-stab
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block-hyp situation; F: ℝ^{2n} → ℝ^{2n} any function with F = X_{H^ℝ} on W; J ∋ 0 an interval; z = (θ,I): ℝ → ℝ^{2n} with z′(t) = F(z(t)) on J, I(0) = I_0
SOURCE_QUANTIFIERS: Theorem-1 setting; Λ; I_0; F; J; z
SOURCE_CONCLUSION: with Ω_Λ(I_0) = max{‖ω(I)‖: ‖I−I_0‖ ≤ r_Λ/2}, T_Θ = s r_Θ e^{κ/6}/(5ε), T_Λ = s m r_Λ² e^{κ/6}/(288 Ω_Λ ε) (Θ ≠ Λ ≠ ℤⁿ), T_{ℤⁿ} = ∞: z(t) ∈ W for t ∈ J, ¦t¦ ≤ T_Λ, and ¦I(t)−I_0¦ ≤ r_Λ/2 (and ‖I(t)−I_0‖ ≤ r_Λ/2 if Λ ≠ Θ); if Omega_Lambda(I0)=0, define T_Lambda=+infinity for Theta!=Lambda!=Z^n (L100); Omega_Lambda is finite and at least ||omega(I0)||_2 on the stated compact ball (L96)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:block-hyp, bpN:p9:setting, bpN:p9:s-blocks#data, bpN:p0:vf#hamiltonianVectorField, stepN:p9:bs-theta, stepN:p9:bs-res, stepN:p9:bs-stop, bpN:p7:setting, bpN:p8:lattice, bpN:p9:block-stab#local-field, bpN:p9:block-stab#frequency-size
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:block-hyp | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L96-L96 | situation of block-hyp
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L97-L97 | κ, ε, W, H^ℝ
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L96-L96 | r_Λ, D_Λ
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L96-L96 | F = X_{H^ℝ}
EDGE: stepN:p9:bs-theta | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L104-L104 | proof case Θ
EDGE: stepN:p9:bs-res | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L105-L105 | proof case Λ ≠ Θ
EDGE: stepN:p9:bs-stop | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L106-L106 | proof stopped form
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L103-L103 | W_r=R^n times U_rD and the restricted real Hamiltonian are used
EDGE: bpN:p8:lattice | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L97-L97 | the trivial and full lattice cases occur in the time definitions
EDGE: bpN:p9:block-stab#local-field | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L103-L103 | the unmarked local carrier-change assertion is part of this proof
EDGE: bpN:p9:block-stab#frequency-size | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L96-L96 | the maximum is on radius r_Lambda/2, not the fixed radius R_0 of omega0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The statement uses the generic-radius frequency maximum exposed in block-stab#frequency-size. The words "as in omega0" are a proof-method comparison, not a literal instantiation of its fixed-radius statement. The source convention at L100 handles zero Omega_Lambda.
```

```text
NODE: stepN:p9:bs-theta
KIND: step
TITLE: Case $\Lambda=\Theta$
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-theta@L104-L104
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-theta@L104-L104
CONTRACT_ID: stepN:p9:bs-theta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block-hyp situation; Λ = Θ
SOURCE_QUANTIFIERS: Θ; I_0
SOURCE_CONCLUSION: Prop nonresonant applies with (D,r,s,K,α,L,p) → ({I_0}, r_Θ, s, K_a, α_Θ, √nM, 9/8): ¦I(t)−I(0)¦ ≤ r_Θ/2 for every H-orbit in W_{r_Θ}, ¦t¦ ≤ T_nr = s r_Θ e^{κ/6}/(5ε)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:nonresonant, bpN:p9:block-hyp, bpN:p7:setting, bpN:p9#data, bpN:p9:setting, bpN:p9:s-blocks#data, bpN:p9:block-stab#local-field
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:nonresonant | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-theta@L104-L104 | Proposition nonresonant (i)-(iii) and conclusion
EDGE: bpN:p9:block-hyp | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-theta@L104-L104 | (d) for (i); (e),(c) for (ii); (f) for (iii); (a) for h, f
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-theta@L104-L104 | H-orbit in W_{r_Θ}
EDGE: bpN:p9#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-theta@L104-L104 | p = 9/8
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-theta@L104-L104 | s,epsilon,kappa and the Theorem-1 bounds are used
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-theta@L104-L104 | r_Theta and alpha_Theta are block data
EDGE: bpN:p9:block-stab#local-field | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-theta@L104-L104 | use the real Hamiltonian and field on the smaller block tube, as established at L103
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p9:bs-res
KIND: step
TITLE: Case $\Lambda\ne\Theta$
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-res@L105-L105
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-res@L105-L105
CONTRACT_ID: stepN:p9:bs-res
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block-hyp situation; Λ ≠ Θ
SOURCE_QUANTIFIERS: Λ; I_0
SOURCE_CONCLUSION: Prop resonant-prop2 applies with ({I_0}, r_Λ, K_a, α_Λ, ℓ, m, M, δ_Λ, 9/8) and the subgroup Λ: ‖I(t)−I(0)‖ ≤ r/2 for ¦t¦ ≤ T(I_0) = T_Λ, all t if Λ = ℤⁿ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:resonant-prop2, bpN:p9:block-hyp, bpN:p9:s-blocks#data, bpN:p9#data, bpN:p9:setting, bpN:p7:setting, bpN:p7:resonance-data, bpN:p9:block-stab#local-field
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:resonant-prop2 | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-res@L105-L105 | Proposition resonant-prop2 and its conclusion
EDGE: bpN:p9:block-hyp | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-res@L105-L105 | (a),(b),(c),(d) supply the hypotheses (Hessian bound, quasi-convexity, closeness, ε-bound, radius)
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-res@L105-L105 | δ_Λ, α_Λ
EDGE: bpN:p9#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-res@L105-L105 | p = 9/8
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-res@L105-L105 | m,M,ell,s,epsilon,kappa are Theorem-1 data
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-res@L105-L105 | the proposition is applied to H-orbits in W_r
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-res@L105-L105 | quasi-convexity and exact-resonance closeness are used
EDGE: bpN:p9:block-stab#local-field | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-res@L105-L105 | use the real Hamiltonian and field on the smaller block tube, as established at L103
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p9:bs-stop
KIND: step
TITLE: Stopped form
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-stop@L106-L106
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-stop@L106-L106
CONTRACT_ID: stepN:p9:bs-stop
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block-hyp situation; steps bs-theta, bs-res
SOURCE_QUANTIFIERS: Λ; D = {I_0}; ϱ = r_Λ/2
SOURCE_CONCLUSION: Corollary stopped-extension hypothesis holds with ϱ = r_Λ/2, T = T_Λ and the norm ¦·¦_* = ¦·¦ (Θ) resp. ‖·‖; hence the claims and z(t) ∈ W_r ⊂ W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:stopped-extension, stepN:p9:bs-theta, stepN:p9:bs-res, bpN:p9:block-hyp, bpN:p9:setting, bpN:p7:setting, bpN:p9:s-blocks#data, bpN:p9:block-stab#local-field
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:stopped-extension | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-stop@L106-L106 | Corollary stopped-extension applied to H, D = {I_0}, ϱ, T
EDGE: stepN:p9:bs-theta | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-stop@L106-L106 | case Θ supplies the hypothesis
EDGE: stepN:p9:bs-res | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-stop@L106-L106 | case Λ ≠ Θ supplies the hypothesis
EDGE: bpN:p9:block-hyp | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-stop@L106-L106 | W_r ⊂ W and F = X_{H^ℝ} on W_r
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-stop@L106-L106 | the field agrees on the Theorem-1 domain W
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-stop@L106-L106 | W_r, H-orbits and real Hamiltonian restriction are used
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-stop@L106-L106 | r_Lambda and the selected block are used
EDGE: bpN:p9:block-stab#local-field | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:bs-stop@L106-L106 | use the real Hamiltonian and field on the smaller block tube, as established at L103
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p9:thm1
KIND: theorem
TITLE: P\"oschel's Theorem~1, stopped form
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L111-L123
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L124-L136
CONTRACT_ID: bpN:p9:thm1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a Theorem-1 setting (bpN:p9:setting), P ≠ ∅; ε ∈ (0,ε_0] with ¦f¦_{r_0,s} ≤ ε; F: ℝ^{2n} → ℝ^{2n} any function with F = X_{H^ℝ} on W = ℝⁿ × U_{r_0}P; J ∋ 0 an interval; z = (θ,I): ℝ → ℝ^{2n} with z′(t) = F(z(t)) for t ∈ J; I_0 := I(0) ∈ P
SOURCE_QUANTIFIERS: n; P; r_0, s; m, M; ℓ; h, f; ε; F; J; z
SOURCE_CONCLUSION: (a) if ‖ω(I_0)‖ ≥ m r_0/8: for t ∈ J with ¦t¦ ≤ T_0 exp((πs/(3√n))(ε_0/ε)^a), T_0 = A² s/Ω_0(I_0): z(t) ∈ W and ¦I(t)−I_0¦ ≤ ½R_0(ε/ε_0)^a (≤ R_0(ε/ε_0)^a); (b) if ‖ω(I_0)‖ < m r_0/8: for all t ∈ J, z(t) ∈ W and ‖I(t)−I_0‖ ≤ r_0/2
CONSTANT_SCOPE: A, ε_0, a, R_0 depend only on (n, r_0, m, M); Ω_0(I_0) only on h, I_0, R_0; s enters only through T_0 and the exponent
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:setting, bpN:p9:omega0, bpN:p0:vf#hamiltonianVectorField, stepN:p9:t1-par, stepN:p9:t1-b, stepN:p9:t1-a-choice, stepN:p9:t1-a-theta, stepN:p9:t1-a-res, stepN:p9:t1-a-concl, bpN:p4:norm, bpN:p4:domains, bpN:p7:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L112-L112 | Theorem-1 setting, constants A, ε_0, a, R_0, K, W, H^ℝ
EDGE: bpN:p9:omega0 | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L112-L112 | Ω_0(I_0) as above
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L113-L113 | F = X_{H^ℝ}
EDGE: stepN:p9:t1-par | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L125-L125 | proof step
EDGE: stepN:p9:t1-b | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L126-L126 | proof step
EDGE: stepN:p9:t1-a-choice | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L127-L127 | proof step
EDGE: stepN:p9:t1-a-theta | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L128-L128 | proof step
EDGE: stepN:p9:t1-a-res | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L131-L131 | proof step
EDGE: stepN:p9:t1-a-concl | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L135-L135 | proof step
EDGE: bpN:p4:norm | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L112-L112 | the perturbation norm is explicitly assumed
EDGE: bpN:p4:domains | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L113-L113 | the action tube U_(r0)P is used through W
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:thm1@L113-L113 | the real Hamiltonian and its real tube are used
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Candidate edges to bpN:p9:errata and bpN:p9:dictionary (remarks: deviations and conversion bookkeeping, not consumed) dropped.
```

```text
NODE: stepN:p9:t1-par
KIND: step
TITLE: Parameters
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-par@L125-L125
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-par@L125-L125
CONTRACT_ID: stepN:p9:t1-par
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a Theorem-1 setting (bpN:p9:setting); ε; I_0
SOURCE_QUANTIFIERS: setting
SOURCE_CONCLUSION: Lemma elementary applies (K ≥ 1, K_a = K/√n); Ω_0(I_0) ≥ ‖ω(I_0)‖; Lemma covering is applied as in §s-blocks to P and ω|_P
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:elementary, bpN:p9:omega0, bpN:p9:s-blocks#data, bpN:p8:covering, bpN:p9:setting, bpN:p9#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:elementary | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-par@L125-L125 | K ≥ 1, K_a = K/√n
EDGE: bpN:p9:omega0 | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-par@L125-L125 | Ω_0(I_0) ≥ ‖ω(I_0)‖
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-par@L125-L125 | Covering Lemma applied to P and the restriction of ω to P with the §s-blocks parameters
EDGE: bpN:p8:covering | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-par@L125-L125 | Covering Lemma
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-par@L125-L125 | K,K_a,Omega_0 and m<=M are Theorem-1 data
EDGE: bpN:p9#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-par@L125-L125 | the covering is applied with the fixed p,b parameters of the subsection
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Lemma m-le-M is explicitly not needed here (m ≤ M is a standing hypothesis): candidate edge dropped.
```

```text
NODE: stepN:p9:t1-b
KIND: step
TITLE: (b): the block $\Z^n$
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126
CONTRACT_ID: stepN:p9:t1-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ‖ω(I_0)‖ < m r_0/8
SOURCE_QUANTIFIERS: I_0
SOURCE_CONCLUSION: I_0 ∈ D_{ℤⁿ}; z(t) ∈ W and ‖I(t)−I_0‖ ≤ r_0/2 for all t ∈ J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:covering, bpN:p8:maximal, bpN:p8:blocks, bpN:p9:block-stab, bpN:p9:block-hyp, bpN:p9:s-blocks#data, stepN:p9:t1-par, bpN:p9:setting, bpN:p8:lattice, bpN:p8:klattice, bpN:p8:projection, stepN:p9:t1-b#full-rank-zone
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:covering | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126 | (d): r_{ℤⁿ} = r_0, δ_{ℤⁿ} = m r_0/8
EDGE: bpN:p8:maximal | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126 | (d): ℤⁿ ∈ 𝕄_K for K ≥ 1
EDGE: bpN:p8:blocks | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126 | B_{ℤⁿ} = Z_{ℤⁿ} since Z*_{n+1} = ∅
EDGE: bpN:p9:block-stab | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126 | stability with T_{ℤⁿ} = ∞
EDGE: bpN:p9:block-hyp | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126 | hypotheses of block-stab for Λ = ℤⁿ
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126 | D_Λ, r_Λ, δ_Λ
EDGE: stepN:p9:t1-par | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126 | K>=1 and the covering data are consumed in the exceptional-branch calculation here
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126 | m,r0,K,W and omega are used
EDGE: bpN:p8:lattice | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126 | W_(Z^n)=R^n and the full lattice occur
EDGE: bpN:p8:klattice | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126 | Z^n belongs to M_K
EDGE: bpN:p8:projection | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126 | Pi_(Z^n)=identity is used
EDGE: stepN:p9:t1-b#full-rank-zone | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126 | the branch-independent full-rank zone calculation identifies D_(Z^n)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p9:t1-a-choice
KIND: step
TITLE: (a): choice of a block
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127
CONTRACT_ID: stepN:p9:t1-a-choice
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ‖ω(I_0)‖ ≥ m r_0/8
SOURCE_QUANTIFIERS: I_0
SOURCE_CONCLUSION: I_0 ∈ D_Λ with Λ ≠ ℤⁿ; for ¦t¦ ≤ T_Λ: z(t) ∈ W and ¦I(t)−I_0¦ ≤ ½ r_Λ ≤ ½R_0(ε/ε_0)^a
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:covering, bpN:p9:block-stab, bpN:p9:block-hyp, bpN:p9:elementary, stepN:p9:t1-par, bpN:p9:setting, bpN:p9:s-blocks#data, bpN:p8:lattice, bpN:p8:klattice, stepN:p9:t1-b#full-rank-zone
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:covering | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127 | (a) existence of Λ; (c) closeness ‖Π_{ℤⁿ}ω(I_0)‖ < δ_{ℤⁿ}
EDGE: bpN:p9:block-stab | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127 | stability on block Λ for ¦t¦ ≤ T_Λ
EDGE: bpN:p9:block-hyp | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127 | (a): r_Λ ≤ r_0/(AK)
EDGE: bpN:p9:elementary | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127 | (b): K^{-1} = (ε/ε_0)^a
EDGE: stepN:p9:t1-par | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127 | the covering data are consumed in the nonexceptional-branch calculation here
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127 | the constants and frequency of the Theorem-1 setting are used
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127 | I0 is assigned to D_Lambda, with r_Lambda,delta_Lambda
EDGE: bpN:p8:lattice | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127 | the full-lattice case is excluded
EDGE: bpN:p8:klattice | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127 | Lambda is chosen in M_K
EDGE: stepN:p9:t1-b#full-rank-zone | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-choice@L127-L127 | the words "as in Step (b)" reuse the full-rank zone calculation, not its incompatible exceptional-frequency premise
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p9:t1-a-theta
KIND: step
TITLE: (a): the time, block $\Theta$
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-theta@L128-L130
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-theta@L128-L130
CONTRACT_ID: stepN:p9:t1-a-theta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Λ = Θ; ‖ω(I_0)‖ ≥ m r_0/8
SOURCE_QUANTIFIERS: I_0
SOURCE_CONCLUSION: T_Θ ≥ (A² s/Ω_0) e^{κ/6}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:elementary, bpN:p9:omega0, bpN:p9:ext-num, bpN:p9:block-stab, bpN:p9:setting, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:elementary | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-theta@L128-L128 | (b): ε = m r_Θ²/2^10
EDGE: bpN:p9:omega0 | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-theta@L128-L128 | ‖ω(I_0)‖ ≤ Ω_0
EDGE: bpN:p9:ext-num | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-theta@L130-L130 | 2^10/40 ≥ 1, (AK)ⁿ ≥ (AK)² ≥ A²
EDGE: bpN:p9:block-stab | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-theta@L129-L129 | T_Θ = s r_Θ e^{κ/6}/(5ε)
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-theta@L128-L128 | A, K, r_Θ = r_0/(AK)ⁿ
EDGE: bpN:p8:lattice | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-theta@L128-L128 | the trivial lattice case is used
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p9:t1-a-res
KIND: step
TITLE: (a): the time, blocks $\Lambda\ne\Theta,\Z^n$
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L131-L134
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L131-L134
CONTRACT_ID: stepN:p9:t1-a-res
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Λ ∈ 𝕄_K, 1 ≤ dim Λ ≤ n−1; ‖ω(I_0)‖ ≥ m r_0/8
SOURCE_QUANTIFIERS: Λ; I_0
SOURCE_CONCLUSION: T_Λ ≥ (A² s/Ω_0) e^{κ/6}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:maximal, bpN:p8:covering, bpN:p9:block-stab, bpN:p9:omega0, bpN:p9:setting, bpN:p9:ext-num, bpN:p9:elementary, bpN:p9:s-blocks#data, bpN:p8:lattice, bpN:p8:klattice, bpN:p8:volume-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:maximal | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L131-L131 | (e): ¦Λ¦ ≤ K^d
EDGE: bpN:p8:covering | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L131-L131 | formula r_Λ = r_0(AK)^{d−n}/¦Λ¦
EDGE: bpN:p9:block-stab | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L133-L133 | T_Λ and Ω_Λ
EDGE: bpN:p9:omega0 | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L133-L133 | Omega_0 is the maximum on radius R_0; compare that ball with the block ball defining Omega_Lambda
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L131-L131 | ε = ε_0K^{-2n}, ε_0, R_0
EDGE: bpN:p9:ext-num | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L134-L134 | 2^10/288 > 3 ≥ 1
EDGE: bpN:p9:elementary | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L131-L131 | K ≥ 1
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L131-L131 | r_Lambda is the selected block radius
EDGE: bpN:p8:lattice | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L131-L131 | dim Lambda=d is used
EDGE: bpN:p8:klattice | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L131-L131 | Lambda belongs to M_K
EDGE: bpN:p8:volume-def | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-a-res@L131-L131 | |Lambda| appears in the radius formula
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:cp-size
KIND: step
TITLE: Size
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cp-size@L54-L54
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cp-size@L54-L54
CONTRACT_ID: stepN:p10:cp-size
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition choice; 0 < ε ≤ ε_0
SOURCE_QUANTIFIERS: ε
SOURCE_CONCLUSION: Cε^a ≤ R/4
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:ext-rpow, stepN:p10:cp-ab, bpN:p10:choice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:ext-rpow | blueprint-N/parts/p10-assembly.tex#stepN:p10:cp-size@L54-L54 | monotonicity of x ↦ x^a
EDGE: stepN:p10:cp-ab | blueprint-N/parts/p10-assembly.tex#stepN:p10:cp-size@L54-L54 | (a): Cε_0^a ≤ R/4
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:cp-size@L54-L54 | the fixed C,epsilon_0,a of the choice are used
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:hc-h
KIND: step
TITLE: (b): $h$ and its Hessian
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-h@L77-L77
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-h@L77-L77
CONTRACT_ID: stepN:p10:hc-h
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (H1),(H2); (a)
SOURCE_QUANTIFIERS: I
SOURCE_CONCLUSION: (b): h holomorphic on V, real on U, Hessian operator norm ≤ nM_ℂ ≤ B_c on V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:hess#HasComplexHessianBound, bpN:p1:hessian-convert, stepN:p10:hc-tubes, bpN:p10:choice, bpN:p4:domains, bpN:p0:actionnbhd#actionNbhd
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-h@L77-L77 | (i),(iv): holomorphy on B(0,R)_s and reality on 𝓑_s(R)
EDGE: bpN:p0:hess#HasComplexHessianBound | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-h@L77-L77 | (H2)
EDGE: bpN:p1:hessian-convert | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-h@L77-L77 | max-norm entry bound M_ℂ to Euclidean operator norm ≤ nM_ℂ
EDGE: stepN:p10:hc-tubes | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-h@L77-L77 | V ⊂ B(0,R)_s, U ⊂ 𝓑_s(R)
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-h@L77-L77 | B_c = nM_ℂ + q
EDGE: bpN:p4:domains | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-h@L77-L77 | V is the complex tube fixed in hypotheses-check
EDGE: bpN:p0:actionnbhd#actionNbhd | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-h@L77-L77 | the input domain B(0,R)_s is used
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:hc-qc
KIND: step
TITLE: (c), (d): quasi-convexity and radius
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79
CONTRACT_ID: stepN:p10:hc-qc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (H1)-(H4); (a)
SOURCE_QUANTIFIERS: I ∈ U; ξ
SOURCE_CONCLUSION: (c),(d): ℓ,μ-quasi-convexity on U; μ ≤ B_c; r_0 ≤ ℓ/(2B_c)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:qc-convert, bpN:p10:choice, bpN:p1:holo-real, bpN:p10:choice-props, stepN:p10:hc-tubes, bpN:p7:resonance-data, bpN:p7:setting, bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:hess#HasComplexHessianBound, bpN:p0:qc#IsStrictlyQuasiConvex, bpN:p0:freq#frequencyMap
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:qc-convert | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79 | (b): quasi-convexity at every point of B(0,R) with q, B_c, μ, ℓ
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79 | q, B_c, μ, ℓ
EDGE: bpN:p1:holo-real | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79 | (c): D²h_ℝ = real Hessian Q, ω_h = ∇h_ℝ
EDGE: bpN:p10:choice-props | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79 | (b): μ ≤ B_c and r_0 ≤ ℓ/(2B_c)
EDGE: stepN:p10:hc-tubes | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79 | U ⊂ B(0,R)
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79 | definition of ℓ,μ-quasi-convexity
EDGE: bpN:p7:setting | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79 | the real Hessian Q and real frequency of h restricted to U are used
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79 | H1 supplies holomorphy and reality to the conditional conversion
EDGE: bpN:p0:hess#HasComplexHessianBound | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79 | H2 supplies the complex Hessian bound to the conditional conversion
EDGE: bpN:p0:qc#IsStrictlyQuasiConvex | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79 | H4 supplies the literal quasi-convexity premise
EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-qc@L79-L79 | H3 uses the frozen frequency map
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:hc-f
KIND: step
TITLE: (e): the perturbation
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-f@L81-L81
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-f@L81-L81
CONTRACT_ID: stepN:p10:hc-f
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (H6),(H7); (a); ρ = 3s/4, δ = s/4
SOURCE_QUANTIFIERS: I ∈ V
SOURCE_CONCLUSION: (e): f|_{T_{s_1}×V} ∈ 𝒪(r_0,s_1)^ℝ, ¦f¦_{r_0,s_1} ≤ ε′, 0 < ε′ ≤ ε_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:pert#IsAnalyticPerturbation, bpN:p0:cdomain#complexDomain, bpN:p1:norm-convert, bpN:p4:norm, bpN:p7:setting, bpN:p4:domains, stepN:p10:hc-tubes, bpN:p10:choice-props, bpN:p10:choice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-f@L81-L81 | (H6)(i)-(iv): holomorphy, periodicity, reality, bound ¦u¦ ≤ ε on T_ρ
EDGE: bpN:p0:cdomain#complexDomain | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-f@L81-L81 | D_s(R) ⊃ T_{s_1} × V
EDGE: bpN:p1:norm-convert | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-f@L81-L81 | Σ_k ¦f̂_k(I)¦ e^{2π¦k¦₁ s_1} ≤ coth^n(πδ) ε
EDGE: bpN:p4:norm | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-f@L81-L81 | Fourier coefficients f̂_k(I) and the norm ¦f¦_{r_0,s_1}, class 𝒪(r_0,s_1)
EDGE: bpN:p7:setting | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-f@L81-L81 | 𝒪(r_0,s_1)^ℝ
EDGE: bpN:p4:domains | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-f@L81-L81 | V, 𝒟 tubes
EDGE: stepN:p10:hc-tubes | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-f@L81-L81 | V ⊂ B(0,R)_s, U ⊂ 𝓑_s(R)
EDGE: bpN:p10:choice-props | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-f@L81-L81 | (c): 0 < ε′ ≤ ε_1 with (H7)
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-f@L81-L81 | s1,F1,epsilon-prime,epsilon1 are the chosen Theorem-1 data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:hc-exc
KIND: step
TITLE: (f): the exceptional branch
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-exc@L85-L85
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-exc@L85-L85
CONTRACT_ID: stepN:p10:hc-exc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (H3); I_0 ∈ B(0,R/2)
SOURCE_QUANTIFIERS: I_0
SOURCE_CONCLUSION: (f): ‖ω_h(I_0)‖ ≥ ω_min > μ r_0/8
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:norm-compare, bpN:p10:choice-props, bpN:p0:freq#frequencyMap, bpN:p10:choice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-exc@L85-L85 | (a): ¦·¦ ≤ ‖·‖
EDGE: bpN:p10:choice-props | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-exc@L85-L85 | (b): r_0 ≤ 4ω_min/μ
EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-exc@L85-L85 | ω_h in (H3)
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-exc@L85-L85 | r0,mu,omega_min are the fixed choice data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:hc-time
KIND: step
TITLE: (g): $\Omega_0$ and the time
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-time@L87-L87
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-time@L87-L87
CONTRACT_ID: stepN:p10:hc-time
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (H5); I_0 ∈ B(0,R/2)
SOURCE_QUANTIFIERS: I_0
SOURCE_CONCLUSION: (g): ω_min ≤ Ω_0(I_0) ≤ √n M and T_0 ≥ 2T
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:omega0, stepN:p10:hc-exc, bpN:p1:partials, bpN:p0:bm#HasDerivativeBounds, stepN:p10:hc-tubes, bpN:p10:choice, bpN:p9:setting, stepN:p10:hc-setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:omega0 | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-time@L87-L87 | B̄ ⊂ U, ‖ω(I_0)‖ ≤ Ω_0 = max‖ω‖
EDGE: stepN:p10:hc-exc | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-time@L87-L87 | Ω_0 ≥ ω_min
EDGE: bpN:p1:partials | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-time@L87-L87 | (H5) gives ‖ω_h(I)‖ ≤ √n M
EDGE: bpN:p0:bm#HasDerivativeBounds | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-time@L87-L87 | (H5) first-order bound on 𝓑_s(R)
EDGE: stepN:p10:hc-tubes | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-time@L87-L87 | U ⊂ B(0,R) ⊂ 𝓑_s(R), I_0 ∈ P
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-time@L87-L87 | T = A²s_0/(4πnM), s_0 = πs, s_1 = s/2, A
EDGE: bpN:p9:setting | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-time@L87-L87 | Omega_0 is the Theorem-1 maximum
EDGE: stepN:p10:hc-setting | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-time@L87-L87 | the conditional omega0 lemma requires the Theorem-1 setting established in the preceding step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:hc-field
KIND: step
TITLE: (h): the field
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-field@L89-L89
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-field@L89-L89
CONTRACT_ID: stepN:p10:hc-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (H1),(H6); (a)
SOURCE_QUANTIFIERS: z ∈ W
SOURCE_CONCLUSION: (h): H_{h,f} = (h+f)|_W real valued; X_{H_{h,f}} = X_{H^ℝ} on W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:realdomain, bpN:p1:holo-real, bpN:p0:vf#hamiltonianVectorField, bpN:p0:realH#realHamiltonian, bpN:p9:setting, stepN:p10:hc-tubes, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:realdomain | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-field@L89-L89 | (a): W ⊂ W_s, (θ,I) ∈ D_s(R)
EDGE: bpN:p1:holo-real | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-field@L89-L89 | (b): reality and differentiability of H_{h,f}
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-field@L89-L89 | X_H = frozen field; equal fderiv on open set
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-field@L89-L89 | H_{h,f}
EDGE: bpN:p9:setting | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-field@L89-L89 | H^ℝ = (h+f) restricted to W
EDGE: stepN:p10:hc-tubes | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-field@L89-L89 | W ⊂ W_s, U open
EDGE: bpN:p4:domains | blueprint-N/parts/p10-assembly.tex#stepN:p10:hc-field@L89-L89 | openness of V and its real restriction supplies the open neighbourhood for equality of fderiv
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:cf-setting
KIND: step
TITLE: The setting
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-setting@L100-L100
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-setting@L100-L100
CONTRACT_ID: stepN:p10:cf-setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses-check (a)-(e)
SOURCE_QUANTIFIERS: setting
SOURCE_CONCLUSION: Definition p9:setting applies with ε′ ∈ (0,ε_1] as the bound for f
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:hypotheses-check, bpN:p9:setting, bpN:p10:choice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:hypotheses-check | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-setting@L100-L100 | (a)-(e)
EDGE: bpN:p9:setting | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-setting@L100-L100 | Theorem-1 setting
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-setting@L100-L100 | epsilon-prime,epsilon1 and the substituted Theorem-1 data are used
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:cf-orbit
KIND: step
TITLE: The orbit
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-orbit@L102-L102
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-orbit@L102-L102
CONTRACT_ID: stepN:p10:cf-orbit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsSolutionOn H_{h,f} B(0,R) J y; y(0) = (θ_0,I_0)
SOURCE_QUANTIFIERS: y; F_*
SOURCE_CONCLUSION: F_* = X_{H_{h,f}} = X_{H^ℝ} on W, y′(t) = F_*(y(t)) on J, y(0)_2 ∈ P: the hypotheses of Theorem thm1 hold (no confinement of y assumed)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:hypotheses-check, bpN:p0:sol#IsSolutionOn, bpN:p0:vf#hamiltonianVectorField, bpN:p10:choice, bpN:p0:realH#realHamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:hypotheses-check | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-orbit@L102-L102 | (h): F_* = X_{H^ℝ} on W; (a): B(0,R/2) ⊂ P
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-orbit@L102-L102 | y′(t) = F_*(y(t)) for t ∈ J
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-orbit@L102-L102 | F_* = X_{H_{h,f}} total
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-orbit@L102-L102 | P is the chosen initial action set
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-orbit@L102-L102 | F_* is the field of the frozen realHamiltonian h f
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Theorem-1 applicability is checked here; the theorem is applied only in cf-branch. The explanatory stopped remark and the target theorem are not DEPS.
```

```text
NODE: stepN:p10:cf-branch
KIND: step
TITLE: Branch (a)
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104
CONTRACT_ID: stepN:p10:cf-branch
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: cf-orbit; hypotheses-check (f)
SOURCE_QUANTIFIERS: I_0
SOURCE_CONCLUSION: Theorem thm1(a) with (μ,B_c,ε′): for ¦t¦ ≤ T_0 exp((πs_1/(3√n))(ε_1/ε′)^a): ¦I(t)−I_0¦ ≤ ½R_0(ε′/ε_1)^a
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:hypotheses-check, bpN:p9:thm1, stepN:p10:cf-setting, stepN:p10:cf-orbit, bpN:p10:choice, bpN:p9:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:hypotheses-check | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104 | (f): ‖ω(I_0)‖ > μ r_0/8, branch (a)
EDGE: bpN:p9:thm1 | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104 | Theorem 1(a)
EDGE: stepN:p10:cf-setting | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104 | setting applies
EDGE: stepN:p10:cf-orbit | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104 | hypotheses on the orbit
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104 | the substituted mu,B_c,epsilon-prime,epsilon1,s1 are choice data
EDGE: bpN:p9:setting | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-branch@L104-L104 | the Theorem-1 time and radius parameters are used
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:cf-trans
KIND: step
TITLE: Translating the constants
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106
CONTRACT_ID: stepN:p10:cf-trans
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: cf-branch; choice-props (c); hypotheses-check (g)
SOURCE_QUANTIFIERS: τ
SOURCE_CONCLUSION: ¦t¦ ≤ τ ⇒ ¦t¦ ≤ T_0 e^{cε^{-a}} and radius ½Cε^a ≤ Cε^a: ¦y(t)_2 − I_0¦ ≤ Cε^a
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:choice-props, bpN:p10:hypotheses-check, bpN:p10:ext-rpow, stepN:p10:cf-branch, bpN:p10:choice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:choice-props | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106 | (c): exponent = cε^{-a}, radius = ½Cε^a
EDGE: bpN:p10:hypotheses-check | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106 | (g): T_0 ≥ 2T ≥ T
EDGE: bpN:p10:ext-rpow | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106 | exp monotone
EDGE: stepN:p10:cf-branch | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106 | conclusion of Theorem 1(a)
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:cf-trans@L106-L106 | C,T,c,tau and epsilon-prime are the chosen constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p10:existence
KIND: theorem
TITLE: Existence on ${[-\tau,\tau]}$ with confinement
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#bpN:p10:existence@L111-L114
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#bpN:p10:existence@L115-L123
CONTRACT_ID: bpN:p10:existence
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h, f, ε as in hypotheses-check; θ_0 ∈ ℝⁿ; I_0 ∈ B(0,R/2); τ = T exp(cε^{-a})
SOURCE_QUANTIFIERS: seven data; constants; h, f, ε; θ_0, I_0
SOURCE_CONCLUSION: there is z: ℝ → ℝⁿ×ℝⁿ with (a) z(0) = (θ_0,I_0), (b) IsSolutionOn H_{h,f} B(0,R) [−τ,τ] z, (c) ¦z(t)_2 − I_0¦ ≤ Cε^a for ¦t¦ ≤ τ
CONSTANT_SCOPE: C, T, c as in Definition choice; z may depend on h, f, ε, θ_0, I_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:hypotheses-check, bpN:p10:choice, bpN:p0:sol#IsSolutionOn, stepN:p10:ex-rho, stepN:p10:ex-ball, stepN:p10:ex-apriori, stepN:p10:ex-glue, bpN:p0:realH#realHamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:hypotheses-check | blueprint-N/parts/p10-assembly.tex#bpN:p10:existence@L112-L112 | h, f, ε as in the proposition
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#bpN:p10:existence@L112-L112 | τ, C, T, c
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p10-assembly.tex#bpN:p10:existence@L112-L112 | (b)
EDGE: stepN:p10:ex-rho | blueprint-N/parts/p10-assembly.tex#bpN:p10:existence@L116-L116 | proof step
EDGE: stepN:p10:ex-ball | blueprint-N/parts/p10-assembly.tex#bpN:p10:existence@L118-L118 | proof step
EDGE: stepN:p10:ex-apriori | blueprint-N/parts/p10-assembly.tex#bpN:p10:existence@L120-L120 | proof step
EDGE: stepN:p10:ex-glue | blueprint-N/parts/p10-assembly.tex#bpN:p10:existence@L122-L122 | proof step
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p10-assembly.tex#bpN:p10:existence@L112-L112 | H_(h,f) is used in the solution predicate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:ex-rho
KIND: step
TITLE: Positivity and size of the radius
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-rho@L116-L116
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-rho@L116-L116
CONTRACT_ID: stepN:p10:ex-rho
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lemma choice-props (d)
SOURCE_QUANTIFIERS: ε
SOURCE_CONCLUSION: ρ = Cε^a > 0, ρ ≤ R/4, τ > 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:choice-props, bpN:p10:choice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:choice-props | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-rho@L116-L116 | (d): Cε^a ≤ R/4; (a): positivity
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-rho@L116-L116 | rho=C epsilon^a and tau use the fixed chosen constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:ex-apriori
KIND: step
TITLE: A-priori hypothesis
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-apriori@L120-L120
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-apriori@L120-L120
CONTRACT_ID: stepN:p10:ex-apriori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: y with IsSolutionOn H_{h,f} B(0,R) J y, y(0) = (θ_0,I_0), J open
SOURCE_QUANTIFIERS: J; y
SOURCE_CONCLUSION: ¦y(t)_2 − I_0¦ ≤ ρ for t ∈ J, ¦t¦ ≤ τ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:confinement, stepN:p10:ex-rho, bpN:p0:sol#IsSolutionOn, bpN:p0:realH#realHamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:confinement | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-apriori@L120-L120 | a-priori estimate
EDGE: stepN:p10:ex-rho | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-apriori@L120-L120 | ρ = Cε^a
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-apriori@L120-L120 | IsSolutionOn hypothesis
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-apriori@L120-L120 | the solution predicate is for H_(h,f)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:ex-glue
KIND: step
TITLE: Glue
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-glue@L122-L122
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-glue@L122-L122
CONTRACT_ID: stepN:p10:ex-glue
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps ex-rho..ex-apriori; standing assumptions of §s-N: R, s > 0, (H1), (H6) with ε ≥ 0, U = B(0,R)
SOURCE_QUANTIFIERS: z
SOURCE_CONCLUSION: Theorem confinement-glue (with ρ, τ) yields z with z(0) = (θ_0,I_0), IsSolutionOn H_{h,f} B(0,R) [−τ,τ] z, ¦z(t)_2 − I_0¦ ≤ ρ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:confinement-glue, bpN:p3:s-N#data, stepN:p10:ex-rho, stepN:p10:ex-ball, stepN:p10:ex-apriori, bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:pert#IsAnalyticPerturbation, bpN:p0:sol#IsSolutionOn, bpN:p0:realH#realHamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:confinement-glue | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-glue@L122-L122 | Theorem confinement-glue
EDGE: bpN:p3:s-N#data | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-glue@L122-L122 | standing assumptions of §s-N are those of the theorem
EDGE: stepN:p10:ex-rho | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-glue@L122-L122 | ρ, τ
EDGE: stepN:p10:ex-ball | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-glue@L122-L122 | closed ball in B(0,R)
EDGE: stepN:p10:ex-apriori | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-glue@L122-L122 | a-priori hypothesis
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-glue@L122-L122 | (H1) of the standing assumptions
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-glue@L122-L122 | (H6) with ε ≥ 0
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-glue@L122-L122 | the produced curve satisfies the frozen solution predicate
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p10-assembly.tex#stepN:p10:ex-glue@L122-L122 | the produced curve solves H_(h,f)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p10:uniqueness
KIND: theorem
TITLE: Uniqueness on ${[-L,L]}$
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#bpN:p10:uniqueness@L125-L129
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#bpN:p10:uniqueness@L130-L134
CONTRACT_ID: bpN:p10:uniqueness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation of Theorem existence; z any function with (a), (b); L ∈ [0,τ]; y with y(0) = (θ_0,I_0), IsSolutionOn H_{h,f} B(0,R) [−L,L] y
SOURCE_QUANTIFIERS: the data and hypotheses of existence; then any z satisfying its (a),(b); then every L in [0,tau]; then every y with the stated common initial value and solution predicate
SOURCE_CONCLUSION: y(t) = z(t) for all t ∈ [−L,L] (L = 0 allowed)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:existence, bpN:p0:sol#IsSolutionOn, stepN:p10:un-restrict, stepN:p10:un-apply, bpN:p0:realH#realHamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:existence | blueprint-N/parts/p10-assembly.tex#bpN:p10:uniqueness@L126-L126 | (a),(b) of Theorem existence for z
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p10-assembly.tex#bpN:p10:uniqueness@L126-L126 | IsSolutionOn hypotheses
EDGE: stepN:p10:un-restrict | blueprint-N/parts/p10-assembly.tex#bpN:p10:uniqueness@L131-L131 | proof step
EDGE: stepN:p10:un-apply | blueprint-N/parts/p10-assembly.tex#bpN:p10:uniqueness@L133-L133 | proof step
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p10-assembly.tex#bpN:p10:uniqueness@L126-L126 | the two solution predicates use H_(h,f)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:hd-const
KIND: step
TITLE: The conditions on the constants
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-const@L146-L146
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-const@L146-L146
CONTRACT_ID: stepN:p10:hd-const
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition choice
SOURCE_QUANTIFIERS: constants
SOURCE_CONCLUSION: C, T, c, ε_0 > 0 and C ε_0^{1/(2n)} ≤ R/4
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:choice-props, bpN:p10:choice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:choice-props | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-const@L146-L146 | (a)
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-const@L146-L146 | C,T,c,epsilon_0 are the constants fixed in choice
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:hd-univ
KIND: step
TITLE: The universal statement
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-univ@L148-L148
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-univ@L148-L148
CONTRACT_ID: stepN:p10:hd-univ
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h, f, ε satisfying (H1)-(H7); θ_0; I_0 ∈ B(0,R/2); τ; H = H_{h,f}
SOURCE_QUANTIFIERS: h, f, ε; θ_0, I_0
SOURCE_CONCLUSION: Proposition hypotheses-check applies; nothing depends on the bound A of IsAnalyticIntegrable(iii)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:hypotheses-check, bpN:p0:integrable#IsAnalyticIntegrable, bpN:p10:choice, bpN:p0:hess#HasComplexHessianBound, bpN:p0:qc#IsStrictlyQuasiConvex, bpN:p0:bm#HasDerivativeBounds, bpN:p0:pert#IsAnalyticPerturbation, bpN:p0:freq#frequencyMap, bpN:p0:realH#realHamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:hypotheses-check | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-univ@L148-L148 | its hypotheses are exactly (H1)-(H7)
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-univ@L148-L148 | bound A of (iii) not used
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-univ@L148-L148 | tau=T exp(c epsilon^-a) uses the chosen constants
EDGE: bpN:p0:hess#HasComplexHessianBound | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-univ@L148-L148 | H2 is part of the selected input hypotheses
EDGE: bpN:p0:qc#IsStrictlyQuasiConvex | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-univ@L148-L148 | H4 is part of the selected input hypotheses
EDGE: bpN:p0:bm#HasDerivativeBounds | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-univ@L148-L148 | H5 is part of the selected input hypotheses
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-univ@L148-L148 | H6 is part of the selected input hypotheses
EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-univ@L148-L148 | H3 is the frequency lower bound
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-univ@L148-L148 | H=H_(h,f) is fixed here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:hd-abc
KIND: step
TITLE: Existence, (a)--(c)
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-abc@L150-L150
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-abc@L150-L150
CONTRACT_ID: stepN:p10:hd-abc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hd-univ
SOURCE_QUANTIFIERS: z
SOURCE_CONCLUSION: Theorem existence gives z with (a),(b),(c)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:existence, stepN:p10:hd-univ, bpN:p10:choice, bpN:p0:sol#IsSolutionOn, bpN:p0:realH#realHamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:existence | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-abc@L150-L150 | Theorem existence
EDGE: stepN:p10:hd-univ | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-abc@L150-L150 | the existence theorem is applied to the data fixed in hd-univ here, not at the prerequisite L148
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-abc@L150-L150 | the confinement constant C and time tau are unchanged
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-abc@L150-L150 | the exhibited z satisfies the frozen predicate
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-abc@L150-L150 | the exhibited z solves H_(h,f)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p10:hd-d
KIND: step
TITLE: Uniqueness, (d)
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-d@L152-L152
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-d@L152-L152
CONTRACT_ID: stepN:p10:hd-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hd-abc
SOURCE_QUANTIFIERS: z; L; y
SOURCE_CONCLUSION: Theorem uniqueness gives (d) for this z
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:uniqueness, stepN:p10:hd-abc, bpN:p0:sol#IsSolutionOn
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:uniqueness | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-d@L152-L152 | Theorem uniqueness for z from existence
EDGE: stepN:p10:hd-abc | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-d@L152-L152 | z with (a),(b)
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-d@L152-L152 | clause d quantifies the other frozen solutions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpN:p0:head, which part p10 proves or sets up]
```

```text
NODE: stepN:p10:hd-dep
KIND: step
TITLE: No other dependence
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-dep@L154-L154
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-dep@L154-L154
CONTRACT_ID: stepN:p10:hd-dep
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps hd-abc, hd-d
SOURCE_QUANTIFIERS: constants; z
SOURCE_CONCLUSION: z may depend on h, f, ε, θ_0, I_0 (produced by confinement-glue); constants unchanged: uniformity
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:confinement-glue, stepN:p10:hd-abc, stepN:p10:hd-d, bpN:p10:choice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:confinement-glue | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-dep@L154-L154 | z is produced by Theorem confinement-glue from the data
EDGE: stepN:p10:hd-abc | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-dep@L154-L154 | constants unchanged in the existence step
EDGE: stepN:p10:hd-d | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-dep@L154-L154 | constants unchanged in the uniqueness step
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#stepN:p10:hd-dep@L154-L154 | uniformity asserts that the chosen four constants are unchanged
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p10:head
KIND: theorem
TITLE: Proof of N-HEAD-C
STATEMENT_SOURCE: blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L138-L142
PROOF_SOURCE: blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L143-L155
CONTRACT_ID: bpN:p10:head
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ≥ 3; R, s, M, m, M_ℂ, ω_min > 0; constants C, T, c, ε_0 of Definition choice
SOURCE_QUANTIFIERS: n; R, s, M, m, M_ℂ, ω_min; then C, T, c, ε_0 > 0 with C ε_0^{1/(2n)} ≤ R/4; then h, f, ε; then θ_0, I_0; then z
SOURCE_CONCLUSION: Theorem bpN:p0:head holds with the constants of choice: for every h,f,epsilon satisfying (H1)-(H7), including 0<epsilon<=epsilon_0, and every theta_0 in R^n and I_0 in the max-norm ball B(0,R/2), there exists z with z(0)=(theta_0,I_0), IsSolutionOn (realHamiltonian h f) B(0,R) [-tau,tau] z, max-norm action displacement <=C epsilon^(1/(2n)) for |t|<=tau, and for every L in [0,tau] and every y with y(0)=(theta_0,I_0) and IsSolutionOn (realHamiltonian h f) B(0,R) [-L,L] y, equality y=z on [-L,L]; tau=T exp(c epsilon^(-1/(2n)))
CONSTANT_SCOPE: C, T, c, ε_0 depend only on (n, R, s, M, m, M_ℂ, ω_min), chosen before h, f, ε, θ_0, I_0; no dependence on the bound A of IsAnalyticIntegrable(iii); z may depend on all data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p10:choice, bpN:p0:ball#actionBall, bpN:p0:rdomain#realActionDomain, bpN:p0:freq#frequencyMap, bpN:p0:realH#realHamiltonian, bpN:p0:sol#IsSolutionOn, bpN:p0:integrable#IsAnalyticIntegrable, bpN:p0:hess#HasComplexHessianBound, bpN:p0:qc#IsStrictlyQuasiConvex, bpN:p0:bm#HasDerivativeBounds, bpN:p0:pert#IsAnalyticPerturbation, stepN:p10:hd-order, stepN:p10:hd-const, stepN:p10:hd-univ, stepN:p10:hd-abc, stepN:p10:hd-d, stepN:p10:hd-dep
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p10:choice | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L139-L139 | the constants C, T, c, ε_0
EDGE: bpN:p0:ball#actionBall | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L139-L139 | the statement asserts the frozen theorem with the chosen constants; L142 is only end{theorem}
EDGE: bpN:p0:rdomain#realActionDomain | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L139-L139 | the statement asserts the frozen theorem with the chosen constants; L142 is only end{theorem}
EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L139-L139 | the statement asserts the frozen theorem with the chosen constants; L142 is only end{theorem}
EDGE: bpN:p0:realH#realHamiltonian | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L139-L139 | the statement asserts the frozen theorem with the chosen constants; L142 is only end{theorem}
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L139-L139 | the statement asserts the frozen theorem with the chosen constants; L142 is only end{theorem}
EDGE: bpN:p0:integrable#IsAnalyticIntegrable | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L139-L139 | the statement asserts the frozen theorem with the chosen constants; L142 is only end{theorem}
EDGE: bpN:p0:hess#HasComplexHessianBound | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L139-L139 | the statement asserts the frozen theorem with the chosen constants; L142 is only end{theorem}
EDGE: bpN:p0:qc#IsStrictlyQuasiConvex | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L139-L139 | the statement asserts the frozen theorem with the chosen constants; L142 is only end{theorem}
EDGE: bpN:p0:bm#HasDerivativeBounds | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L139-L139 | the statement asserts the frozen theorem with the chosen constants; L142 is only end{theorem}
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L139-L139 | the statement asserts the frozen theorem with the chosen constants; L142 is only end{theorem}
EDGE: stepN:p10:hd-order | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L144-L144 | proof step
EDGE: stepN:p10:hd-const | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L146-L146 | proof step
EDGE: stepN:p10:hd-univ | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L148-L148 | proof step
EDGE: stepN:p10:hd-abc | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L150-L150 | proof step
EDGE: stepN:p10:hd-d | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L152-L152 | proof step
EDGE: stepN:p10:hd-dep | blueprint-N/parts/p10-assembly.tex#bpN:p10:head@L154-L154 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Proof of the frozen anchor bpN:p0:head (carries the \frozen tag). No edge to bpN:p0:head itself (the anchor depends on this node). Statement edges to the definition anchors are those of the anchor statement (hypotheses H1-H7 and IsSolutionOn), added because the pre-extraction dropped the reference to the anchor from Part 10.
```

```text
NODE: stepN:p9:t1-b#full-rank-zone
KIND: claim
TITLE: Full-rank zone calculation, independent of the frequency branch
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b#full-rank-zone@L126-L126
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b#full-rank-zone@L126-L126
CONTRACT_ID: stepN:p9:t1-b#full-rank-zone
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the Theorem-1 and section-block data; K>=1; no exceptional-frequency hypothesis
SOURCE_QUANTIFIERS: the local data fixed at this source span; then the points named in the conclusion
SOURCE_CONCLUSION: Z^n in M_K; r_(Z^n)=r0, delta_(Z^n)=mr0/8; W_(Z^n)=R^n, Pi_(Z^n)=identity, B_(Z^n)=Z_(Z^n); for I0 in P, I0 in D_(Z^n) implies ||omega(I0)||_2<mr0/8
CONSTANT_SCOPE: no new constants; the displayed local data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:setting, bpN:p9:s-blocks#data, bpN:p8:lattice, bpN:p8:klattice, bpN:p8:maximal, bpN:p8:covering, bpN:p8:blocks, bpN:p8:projection
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b#full-rank-zone@L126-L126 | m,r0,K,omega
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b#full-rank-zone@L126-L126 | D_Lambda and delta_Lambda
EDGE: bpN:p8:lattice | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b#full-rank-zone@L126-L126 | full lattice and its span
EDGE: bpN:p8:klattice | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b#full-rank-zone@L126-L126 | maximal-lattice family
EDGE: bpN:p8:maximal | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b#full-rank-zone@L126-L126 | full-rank maximality for K>=1
EDGE: bpN:p8:covering | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b#full-rank-zone@L126-L126 | r_(Z^n)=r0 and delta=bmr
EDGE: bpN:p8:blocks | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b#full-rank-zone@L126-L126 | zone and block definitions
EDGE: bpN:p8:projection | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b#full-rank-zone@L126-L126 | full-span projection is identity
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Reusable branch-independent calculation explicitly performed at L126. No exceptional-branch stability conclusion is assumed.
```

```text
NODE: stepN:p9:om-max#local-real-regularity
KIND: claim
TITLE: Required local real regularity on an arbitrary action tube
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max#local-real-regularity@L67-L67
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max#local-real-regularity@L67-L67
CONTRACT_ID: stepN:p9:om-max#local-real-regularity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a Theorem-1 setting: h holomorphic on V_(r0)P and real on U_(r0)P, for arbitrary P
SOURCE_QUANTIFIERS: the local data fixed at this source span; then the points named in the conclusion
SOURCE_CONCLUSION: h_R is C^2 on the open real set U_(r0)P; omega is continuous there and Domega is the real restriction of the complex Hessian
CONSTANT_SCOPE: no new constants; the displayed local data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:setting, bpN:p4:domains, bpN:p7:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max#local-real-regularity@L67-L67 | the local holomorphy and reality assumptions
EDGE: bpN:p4:domains | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max#local-real-regularity@L67-L67 | the complex tube is open
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max#local-real-regularity@L67-L67 | the real restriction and frequency are defined here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L67 cites bpN:p1:holo-real, whose statement fixes R,s and IsAnalyticIntegrable on a centred action ball plus a perturbation; those hypotheses are not supplied for an arbitrary Theorem-1 setting. This node records the local real-regularity assertion actually used. No new premise is added to thm1 and no proof of this generalisation is supplied by the graph.
```

```text
NODE: stepN:p9:om-max
KIND: step
TITLE: Max and bounds
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max@L67-L67
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max@L67-L67
CONTRACT_ID: stepN:p9:om-max
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a Theorem-1 setting (bpN:p9:setting); B̄ ⊂ U_{r_0}P
SOURCE_QUANTIFIERS: I_0; B̄
SOURCE_CONCLUSION: max exists; ‖ω(I_0)‖ ≤ Ω_0 ≤ ‖ω(I_0)‖ + M R_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:ext-compact, K:bp:p1:ext-mvt, bpN:p9:setting, stepN:p9:om-incl, bpN:p7:setting, stepN:p9:om-max#local-real-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:ext-compact | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max@L67-L67 | maximum on compact set
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max@L67-L67 | mean value inequality on the convex ball B̄
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max@L67-L67 | (S1) ‖Q‖ ≤ M
EDGE: stepN:p9:om-incl | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max@L67-L67 | B̄ ⊂ U_{r_0}P
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max@L67-L67 | ω = ∇h_ℝ, Q = D²h_ℝ
EDGE: stepN:p9:om-max#local-real-regularity | blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max@L67-L67 | the locally asserted C^2 restriction gives continuity of omega and identifies its derivative
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p9:block-stab#local-field
KIND: claim
TITLE: Local carrier and field restriction for one block
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#local-field@L103-L103
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#local-field@L103-L103
CONTRACT_ID: bpN:p9:block-stab#local-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the block-hyp situation; I0 in D_Lambda, D={I0}, r=r_Lambda, alpha=alpha_Lambda
SOURCE_QUANTIFIERS: the local data fixed at this source span; then the points named in the conclusion
SOURCE_CONCLUSION: W_r=R^n times U_rD is open and contained in W; the real Hamiltonian computed on W_r agrees with the Theorem-1 real Hamiltonian there, so their Hamiltonian fields agree there and F restricted to W_r is the required field
CONSTANT_SCOPE: no new constants; the displayed local data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:setting, bpN:p9:s-blocks#data, bpN:p9:block-hyp, bpN:p7:setting, bpN:p4:domains, bpN:p0:vf#hamiltonianVectorField
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#local-field@L103-L103 | W and the original real Hamiltonian
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#local-field@L103-L103 | the selected r_Lambda,alpha_Lambda,D_Lambda
EDGE: bpN:p9:block-hyp | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#local-field@L103-L103 | domain inclusions
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#local-field@L103-L103 | the real Hamiltonian on the smaller real tube
EDGE: bpN:p4:domains | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#local-field@L103-L103 | openness of tubes
EDGE: bpN:p0:vf#hamiltonianVectorField | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#local-field@L103-L103 | equality of fderiv on the open smaller domain gives equality of the fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The explicit assertion at L103 is the carrier-change input to the stopped-extension application, not an administrative preface.
```

```text
ITEM: stepN:p9:t1-b
KIND: proof-region
SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:t1-b@L126-L126
DISPOSITION: NODE stepN:p9:t1-b, stepN:p9:t1-b#full-rank-zone
REASON: The labelled exceptional step also contains the reusable full-rank zone calculation needed in the nonexceptional branch; map that substantive intermediate separately.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
```

```text
ITEM: stepN:p9:om-max
KIND: proof-region
SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#stepN:p9:om-max@L67-L67
DISPOSITION: NODE stepN:p9:om-max, stepN:p9:om-max#local-real-regularity
REASON: Expose the local real-regularity bridge: the cited ball-based lemma does not carry the arbitrary-tube contract.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
```

```text
ITEM: p9:block-stab-local-field
KIND: proof-region
SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L103-L103
DISPOSITION: NODE bpN:p9:block-stab#local-field
REASON: Previously unrepresented substantive carrier-change assertion at L103; openness and equality of the restricted real Hamiltonian fields are consumed by the stopped application.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-N-e
REVIEWER: -
```

```text
NODE: bpN:p9:block-stab#frequency-size
KIND: claim
TITLE: Frequency maximum on a block ball of arbitrary radius
STATEMENT_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#frequency-size@L96-L96
PROOF_SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#frequency-size@L96-L96
CONTRACT_ID: bpN:p9:block-stab#frequency-size
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the block-hyp situation with I0 in D_Lambda, 0<r_Lambda<=r0; h holomorphic on V_(r0)P and real on U_(r0)P
SOURCE_QUANTIFIERS: the Theorem-1 and block data; then I0 in D_Lambda
SOURCE_CONCLUSION: the closed Euclidean ball of radius r_Lambda/2 about I0 is a compact nonempty subset of U_(r0)P; omega has a finite maximum Omega_Lambda of its Euclidean norm on this ball, with Omega_Lambda>=||omega(I0)||_2
CONSTANT_SCOPE: no new constants; the displayed local data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p9:setting, bpN:p9:s-blocks#data, bpN:p9:block-hyp, bpN:p4:domains, bpN:p7:setting, bpN:p9:ext-compact, stepN:p9:om-max#local-real-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p9:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#frequency-size@L96-L96 | the ambient action tube and h
EDGE: bpN:p9:s-blocks#data | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#frequency-size@L96-L96 | the selected block radius and centre
EDGE: bpN:p9:block-hyp | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#frequency-size@L96-L96 | r_Lambda<=r0 and I0 in P
EDGE: bpN:p4:domains | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#frequency-size@L96-L96 | the real tube contains the smaller ball
EDGE: bpN:p7:setting | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#frequency-size@L96-L96 | omega is the real frequency
EDGE: bpN:p9:ext-compact | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#frequency-size@L96-L96 | the maximum assertion uses compactness and continuity
EDGE: stepN:p9:om-max#local-real-regularity | blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab#frequency-size@L96-L96 | the needed local continuity assertion is exposed separately
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p910
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L96 asserts this maximum "as in omega0", but omega0 fixes radius R_0. A block may have r_Lambda/2>R_0 (in particular the full lattice). No generic-radius lemma is supplied by that literal citation; this node exposes the asserted local maximum contract, including the local real-regularity issue, without adding a hypothesis to block-stab or thm1.
```

```text
ITEM: p9:block-frequency-size
KIND: proof-region
SOURCE: blueprint-N/parts/p9-poschel-theorem1.tex#bpN:p9:block-stab@L96-L96
DISPOSITION: NODE bpN:p9:block-stab#frequency-size
REASON: The generic-radius maximum asserted at L96 is not a literal instance of omega0; expose its contract and source gap.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-N-e
REVIEWER: -
```

## Validation

Review files are checked for trailing whitespace, one audit row per existing node, replacement blocks for every FAIL, matching consumer EDGE ranges, and parseability by the review application tool in --dry-run mode. No packets are changed by that check. No Lean implementation, theorem proof status, compilation or axiom claim is part of this report.

Actual check result: `N-p910: 43 replaced, 4 added, 4 coverage items, 0 unresolved FAILs, 23 PASS nodes` from `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_apply_review.py docs/graph/N/packets N-p910 docs/graph/N/reviews/N-p910-review.md sol-review-N-e --dry-run` (exit 0). No packet or repaired-status file was written.

The in-memory union of the proposed replacements with the current packets has **0 missing dependency targets and 0 cycles**. Replacement DEPS/EDGE lists agree, all replacement EDGE spans lie in their consumer statement/proof spans, and the per-node table has exactly 66 unique existing-node rows. Whitespace checks pass. The different frequency branches are case splits needed by the theorem, not alternative proof routes combined as a conjunction.
