# N-p11c delta topology review

Reviewer: sol-delta-N-g. Marker: delta-N-g. Prior slice reviewer: sol-review-N-f (different reviewer).

Verdict: FAIL. Reviewed all 60 PROPOSED nodes and all 75 PROPOSED coverage items: 25 node FAILs, 35 node PASSes, and 75 coverage PASSes.

Applied the current DELTA-BRIEF, REVIEW-BRIEF and SPEC, including the convergence rule. Re-read the whole Part 11c source, every pending statement/proof and EDGE span, the original slice findings and merged replacements, and the prerequisite statements in Parts 0, 1, 3, 4, 6, 7, 8, 11a and 11b. Imported K Part 1 statements were checked at L75–78, L82–86 and L1073–1079. The frozen N-PARTIAL-CONVEX declaration and its used definition interfaces were compared without inspecting implementation modules or manifest state fields.

The prior package and source-premise repairs are largely present. Remaining failures are direct dependency/locator errors; the complete replacements below retain all other fields verbatim. A faithfully exposed SOURCE_GAP passes. Explicitly replayed arguments from Part 7 are treated as argument reuse with the extended inputs, rather than silently widening a theorem.

## Pending nodes

Spans are in `blueprint-N/parts/p11c-partial-stability.tex`. The table lists the statement/proof spans and every distinct EDGE span re-read.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpN:p11:real-system | PASS | L7–13; L14–18; L15–15; L16–16; L17–17; L8–8; L8–12; L9–9 | The package additions are direct; holomorphy/reality, periodicity, finite-norm clauses and the derivative-only orbit convention are preserved. |
| stepN:p11:rs-a | PASS | L15–15 | The source explicitly replays the Part-7 argument on the extended open real slice; the weighted field follows componentwise. No literal full-strip or wrong-dimensional theorem application is inferred. |
| stepN:p11:rs-b | PASS | L16–16 | The restored parent hypotheses supply a genuine orbit; differentiability and the weighted skew matrix give zero derivative on the interval. |
| stepN:p11:rs-cd | PASS | L17–17 | The Fourier estimates are replayed at fixed extended action using ext-part4. The sup-weighted input and resonance projection package are linked. |
| bpN:p11:conj | FAIL | L20–22; L23–25; L24–24; L21–22; L22–22; L21–21 | The EDGE to bpN:p11:s-real#data misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L21-L21. |
| stepN:p11:cj | PASS | L24–24 | The restored conjugation premises supply reality and the weighted symplectic identity; the chain-rule proof uses those exact inputs. |
| bpN:p11:preimage | FAIL | L27–29; L30–32; L30–30; L31–31; L28–28; L29–29 | The EDGE to bpN:p7:preimage misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L31-L31. The EDGE to bpN:p11:s-real#data misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L28-L28. The EDGE to bpN:p11:s-ext-class#data misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L28-L28. |
| stepN:p11:ct-data | FAIL | L39–39 | Missing direct input bpN:p3:ext-compact at L39-L39: compactness of the finite product C=[-1,2]^n x K_delta used before gen-lip. |
| stepN:p11:ct-concl | PASS | L40–40 | ct-data supplies uniform data, with the compact transverse confinement and maximal interval premises retained. |
| bpN:p11:transfer | FAIL | L43–52; L53–61; L55–55; L56–56; L57–57; L58–58; L59–59; L60–60; L43–43; L53–53 | The EDGE to bpN:p11:conj misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L44-L44. The EDGE to bpN:p11:ext-class misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L44-L44. The EDGE to bpN:p3:gen-symmetry misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L54-L54. |
| stepN:p11:tr-orbit | PASS | L55–55 | The parent conjugation data supplies a C1 field on the open extended real domain; T2 supplies the initial preimage for the maximal solution. |
| stepN:p11:tr-E | PASS | L56–56 | The good-set definition retains prefix containment and equality; it makes no independent conclusion-shaped assumption. |
| stepN:p11:tr-bounds | PASS | L57–57 | T1 gives the slow displacement on each prefix before T3 is applied; the conditional slow-margin premise is supplied rather than assumed for the original orbit. |
| stepN:p11:tr-open | PASS | L58–58 | The shared initial value, local containment in the open real domain and C1 field supply the exact uniqueness premises. |
| stepN:p11:tr-closed | FAIL | L59–59 | Missing direct input bpN:p3:ext-compact at L59-L59: continuous image x-tilde([0,t_1]), its closed bounded d_x-neighbourhood, and the resulting compact transverse product K. |
| stepN:p11:tr-concl | PASS | L60–60 | The good-set argument supplies the whole stopped prefix, and T1/T2 plus the derived normal-form bound give rho+2d_*. |
| bpN:p11:nonresonant | FAIL | L65–68; L69–74; L70–70; L71–71; L72–72; L73–73; L66–66; L65–65; L65–66; L66–67; L67–67 | The EDGE to bpN:p6#data misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L66-L66. The EDGE to bpN:p11:s-real#data misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L66-L66. The EDGE to bpN:p11:s-ext-class#data misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L66-L66. |
| stepN:p11:nr-nf | PASS | L70–70 | The normal-form hypotheses come from the nonresonant parent, and the displacement, domain and remainder conclusions agree. |
| stepN:p11:nr-t12 | PASS | L71–71 | The near-identity ratios supply the preimage lemma on its stated complex tube; the data edge is direct. |
| stepN:p11:nr-t3 | PASS | L72–72 | The exit argument and real derivative bound give 6/(5e)<0.442<15/32; the transverse displacement condition is not needed for this action equation. |
| stepN:p11:nr-concl | PASS | L73–73 | T1–T3 are supplied by the cited steps; transfer gives 31r/64<=r/2 on the stopped prefix. |
| bpN:p11:energy-free | PASS | L78–84; L85–98; L87–87; L88–88; L89–89; L90–91; L92–96; L97–97; L86–86; L78–79; L79–79; L78–80 | The real slow margin <r-tilde/2, the initial strict rho-prime margin, convexity and all numerical premises are retained; no bound on omega is inserted. |
| stepN:p11:ef-tube | FAIL | L87–87 | Missing direct input bpN:p1:norm-compare at L87-L87: the max action displacement is at most its Euclidean norm, giving membership in the smaller max-norm tube. |
| stepN:p11:ef-adm | FAIL | L88–88 | Missing direct input bpN:p7:resonance-data at L88-L88: Pi is the Euclidean orthogonal projection used in the bound for Pi omega_0. |
| stepN:p11:ef-en | PASS | L89–89 | The source reuses the energy/Taylor argument, with extended energy conservation supplied separately and the action segment inside U. |
| stepN:p11:ef-id | FAIL | L90–91; L90–90 | The added resonance-data edge is not direct at L90–91: the identity uses omega from setting, the weighted field/bracket and the chain rule, but no projection, resonance or convexity datum. |
| stepN:p11:ef-C | FAIL | L92–96; L93–95; L90–96; L94–94; L95–95; L96–96; L92–92 | The EDGE to bpN:p11:real-system is misplaced or extends outside the consumer; use L92-L94. The EDGE to stepN:p11:ef-id is misplaced or extends outside the consumer; use L92-L93. The EDGE to stepN:p11:ef-tube is misplaced or extends outside the consumer; use L94-L94. The EDGE to stepN:p11:ef-adm is misplaced or extends outside the consumer; use L92-L94. The EDGE to bpN:p11:ext-num is misplaced or extends outside the consumer; use L94-L95. Its numerical rationale must use the external's actual 0.368 bound, which suffices for the claimed coefficient. Missing direct input bpN:p1:ext-norms at L94-L94: Euclidean norm of d_theta f_* is at most the sum of the component moduli bounded by real-system(c). |
| stepN:p11:ef-contra | PASS | L97–97 | The bounds from ef-en and ef-C yield 0.00708<0.0071<0.0117, as claimed; no additional source premise is introduced. |
| bpN:p11:resonant | FAIL | L100–103; L104–110; L105–105; L106–106; L107–107; L108–108; L109–109; L102–102; L101–102; L100–102; L102–103; L103–103; L100–100 | The EDGE to bpN:p6:setting misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L101-L101. The EDGE to bpN:p11:ext-class misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L101-L101. The EDGE to bpN:p11:s-real#data misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L101-L101. The EDGE to bpN:p11:s-ext-class#data misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L101-L101. |
| stepN:p11:rs-red | FAIL | L105–105 | L105 verifies the numerical smallness conditions for the forthcoming normal-form construction. No normal-form output is used there; the application is L106. SPEC excludes a dependency on a theorem whose hypotheses are only being checked. |
| stepN:p11:rs-nf | FAIL | L106–106 | Missing direct input bpN:p4:projections at L106-L106: g_0=P_Lambda T_{K_a}f has weighted norm at most the perturbation norm eps. Missing direct input bpN:p11:ext-part4 at L106-L106: the projection estimate is used for the extended Fourier class. Missing direct input bpN:p4:norm#monotone at L106-L106: the g_0 projection bound is restricted from the initial domain to D^e_{r/2,s/6}. |
| stepN:p11:rs-t12 | FAIL | L107–107 | Missing direct input bpN:p1:norm-compare at L107-L107: Euclidean displacement is at most sqrt(n) times the max displacement in nf(c). |
| stepN:p11:rs-t3 | PASS | L108–108 | The explicit slow displacement d_x<r-tilde/2 and d_*<rho-prime discharge energy-free, with the stated resonant time. |
| stepN:p11:rs-concl | PASS | L109–109 | The cited T1–T3 construction supplies transfer with Euclidean action norm and the stated final radius. |
| bpN:p11:hessian | FAIL | L114–116; L117–119; L118–118; L114–115; L115–115; L116–116 | The EDGE to bpN:p11:constants misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L115-L115. |
| stepN:p11:hs-op | FAIL | L118–118 | Missing direct input bpN:p1:norm-compare at L118-L118: max norms of the real or complex vectors are bounded by their Euclidean norms in the bilinear estimate. |
| bpN:p11:block-setting | FAIL | L121–123; L121–122; L122–122; L122–123; L123–123 | The EDGE to bpN:p11:s-real#data misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L122-L122. L122 defines sigma h_1 and the perturbation pair using the fixed constants. It does not use Hessian inequalities; those are invoked later in domain. Remove the non-direct Hessian-result edge while retaining the constants and frozen-data packages. |
| bpN:p11:domain | FAIL | L125–127; L128–132; L129–129; L130–130; L131–131; L125–125; L126–126 | The EDGE to bpN:p11:block-setting misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L126-L126. |
| stepN:p11:dm-pts | PASS | L129–129 | The closed collar and inner-core margin place the complex points in the frozen tube; P1–P4 and the source widths are used literally. |
| stepN:p11:dm-norm | PASS | L130–130 | B.1(b) applies to the bound on the doubled angle strip, giving coth(pi s)^n mu/(2pi) with the source normalization. |
| stepN:p11:dm-field | PASS | L131–131 | The real-domain identification and fixed scaling x=lambda x-tilde produce weight c=2pi/lambda^2; the source sign is retained. |
| bpN:p11:block-data | FAIL | L134–137; L138–142; L139–139; L140–140; L141–141; L134–135; L135–135; L136–136; L137–137 | The EDGE to bpN:p6:setting misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L136-L136. The EDGE to bpN:p8:klattice misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L135-L135. |
| stepN:p11:bd-cover | FAIL | L139–139 | Missing direct input bpN:p1:norm-compare at L139-L139: the Euclidean frequency norm is at least its max norm in the full-rank exclusion. |
| stepN:p11:bd-24 | FAIL | L140–140 | Missing direct input bpN:p1:norm-compare at L140-L140: max<=Euclidean<=sqrt(n) max converts the Euclidean Hessian bound to the max-norm frequency Lipschitz constant. |
| stepN:p11:bd-5 | PASS | L141–141 | The exact identity eps_0 K^{-2n}=eps, r>=r_Theta and m_1<=M_1 give both smallness inequalities. |
| bpN:p11:block | FAIL | L144–147; L148–155; L150–150; L151–151; L152–152; L153–153; L154–154; L144–145; L145–146; L147–147 | The EDGE to bpN:p0:partial-core#innerCore misses the stated use (heading, environment marker, provenance, or adjacent line); locate the use at L145-L145. Missing direct input bpN:p1:norm-compare at L154-L154: the resonant branch gives a Euclidean action bound, which implies the max-norm conclusion of the block theorem. |
| stepN:p11:bl-block | FAIL | L150–150 | Missing direct input bpN:p8:blocks at L150-L150: the chosen lattice radius r_Lambda and alpha are block data used directly. |
| stepN:p11:bl-sl | PASS | L151–151 | B2 gives 64pi k s r<=w^2 with s=rho/(4pi), w=d/4; it is the needed starting-radius SL condition. |
| stepN:p11:bl-ext | PASS | L152–152 | The domain lemma supplies the scaled field on the open block and core(D,d) supplies the required slow prefix in S. |
| stepN:p11:bl-theta | PASS | L153–153 | The empty-lattice branch discharges all nonresonant hypotheses and its time exceeds T_P; it is a case branch, not an alternative proof route. |
| stepN:p11:bl-res | PASS | L154–154 | The nontrivial proper-lattice branch discharges resonant hypotheses, including convexity and slow width, and its time exceeds T_P. |
| stepN:p11:final-mu | FAIL | L162–162 | This edge only names the definition conditions eps<=eps_0 and d<=rho that the threshold secures; it is a hypothesis-check edge. Their quantities are already fixed by constants. This edge only names the future block hypotheses (B1),(B2) being checked, rather than using its conclusion; remove it under the hypothesis-check rule. |
| stepN:p11:final-time | PASS | L163–163 | The positive threshold is chosen before mu,P,C,z,t; T_P=C_T mu^{-1/2}exp(c_2 mu^{-1/(2n)}) and a_n<1/(2n) give the claimed comparison. |
| stepN:p11:final-given | PASS | L164–164 | The zero-time case is separate; at positive time the derived threshold supplies t<=T_P and [0,t] subset [0,C]. |
| stepN:p11:final-orbit | PASS | L165–165 | Frozen Z1 genuinely supplies IsSolutionOn and differentiability; period conversion leaves fast actions, slow variables and time unchanged. Slow confinement is used only on [0,t]. |
| stepN:p11:final-sign | FAIL | L166–166 | The negative-sign SOURCE_CONCLUSION drops the source's qualifier “on W” at L166 and thus asserts equality with the extended real Hamiltonian field along the whole reversed interval. The frozen slow margin is only on the stopped prefix; the fields need agree only on the open physical block. Restore that qualifier, keeping the genuine equation y-bar'=-F_0(y-bar) on [-C,0]. |
| stepN:p11:final-drift | PASS | L167–167 | The block bound and the threshold comparison give one-half mu^{b_n}; the fast-action projection is unchanged by Theta. |
| stepN:p11:final-order | PASS | L168–168 | The record now states the source's smaller dependence list exactly and chooses mu_0 before all subsequent universal data; it does not replace the frozen theorem's larger allowed list. |
| bpN:p11:s-real#data | PASS | L4–5; L5–5; L4–4 | The definitions of the real tube, total real restriction and two-sided orbit predicate agree with L4–5 and directly link their packages. |
| bpN:p11:hessian#real-hessian | PASS | L115–115; L118–118 | The centred-ball citation mismatch is faithfully exposed as SOURCE_GAP on the arbitrary open tube. It adds no analytic-integrable hypothesis and claims no supplied proof. |

## Pending coverage items

| ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpN:p11:real-system | PASS | L7–13 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:rs-a | PASS | L15–15 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:rs-b | PASS | L16–16 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:rs-cd | PASS | L17–17 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| bpN:p11:conj | PASS | L20–22 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:cj | PASS | L24–24 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| bpN:p11:preimage | PASS | L27–29 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:ct-data | PASS | L39–39 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:ct-concl | PASS | L40–40 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| bpN:p11:transfer | PASS | L43–52 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:tr-orbit | PASS | L55–55 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:tr-E | PASS | L56–56 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:tr-bounds | PASS | L57–57 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:tr-open | PASS | L58–58 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:tr-closed | PASS | L59–59 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:tr-concl | PASS | L60–60 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| bpN:p11:nonresonant | PASS | L65–68 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:nr-nf | PASS | L70–70 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:nr-t12 | PASS | L71–71 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:nr-t3 | PASS | L72–72 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:nr-concl | PASS | L73–73 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| bpN:p11:energy-free | PASS | L78–84 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:ef-tube | PASS | L87–87 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:ef-adm | PASS | L88–88 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:ef-en | PASS | L89–89 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:ef-id | PASS | L90–91 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:ef-C | PASS | L92–96 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:ef-contra | PASS | L97–97 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| bpN:p11:resonant | PASS | L100–103 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:rs-red | PASS | L105–105 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:rs-nf | PASS | L106–106 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:rs-t12 | PASS | L107–107 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:rs-t3 | PASS | L108–108 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:rs-concl | PASS | L109–109 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| bpN:p11:hessian | PASS | L114–116 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:hs-op | PASS | L118–118 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| bpN:p11:block-setting | PASS | L121–123 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| bpN:p11:domain | PASS | L125–127 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:dm-pts | PASS | L129–129 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:dm-norm | PASS | L130–130 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:dm-field | PASS | L131–131 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| bpN:p11:block-data | PASS | L134–137 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:bd-cover | PASS | L139–139 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:bd-24 | PASS | L140–140 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:bd-5 | PASS | L141–141 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| bpN:p11:block | PASS | L144–147 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:bl-block | PASS | L150–150 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:bl-sl | PASS | L151–151 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:bl-ext | PASS | L152–152 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:bl-theta | PASS | L153–153 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:bl-res | PASS | L154–154 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:final-mu | PASS | L162–162 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:final-time | PASS | L163–163 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:final-given | PASS | L164–164 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:final-orbit | PASS | L165–165 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:final-sign | PASS | L166–166 | Correct mapping to the labelled source unit; the node conclusion qualifier repair does not alter this disposition. |
| stepN:p11:final-drift | PASS | L167–167 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| stepN:p11:final-order | PASS | L168–168 | Correct mapping to the labelled source unit; node-field repairs above do not alter this disposition. |
| bpN:p11:b-change | PASS | L173–175 | Administrative explanation, deviation, errata or status summary; a reference scan confirms no proof consumes this remark as an input. |
| bpN:p11:deviations | PASS | L177–182 | Administrative explanation, deviation, errata or status summary; a reference scan confirms no proof consumes this remark as an input. |
| bpN:p11:errata | PASS | L184–186 | Administrative explanation, deviation, errata or status summary; a reference scan confirms no proof consumes this remark as an input. |
| bpN:p11:status | PASS | L188–190 | Administrative explanation, deviation, errata or status summary; a reference scan confirms no proof consumes this remark as an input. |
| heading:bpN:p11:s-real | PASS | L2–2 | Heading only; substantive units are inventoried separately. |
| heading:bpN:p11:s-nr | PASS | L63–63 | Heading only; substantive units are inventoried separately. |
| heading:bpN:p11:s-energy | PASS | L76–76 | Heading only; substantive units are inventoried separately. |
| heading:bpN:p11:s-block | PASS | L112–112 | Heading only; substantive units are inventoried separately. |
| heading:bpN:p11:s-final | PASS | L157–157 | Heading only; substantive units are inventoried separately. |
| heading:bpN:p11:s-dev | PASS | L171–171 | Heading only; substantive units are inventoried separately. |
| p11c:source-L51 | PASS | L51–51 | Provenance only: the result is proved in the following blueprint proof and introduces no external source dependency. |
| p11c:source-L67 | PASS | L67–67 | Provenance only: the result is proved in the following blueprint proof and introduces no external source dependency. |
| p11c:source-L83 | PASS | L83–83 | Provenance only: the result is proved in the following blueprint proof and introduces no external source dependency. |
| p11c:source-L102 | PASS | L102–102 | Provenance only: the result is proved in the following blueprint proof and introduces no external source dependency. |
| p11c:source-L146 | PASS | L146–146 | Provenance only: the result is proved in the following blueprint proof and introduces no external source dependency. |
| p11c:prose-L4-L5 | PASS | L4–5 | The reused real-domain and orbit data correctly maps to s-real#data. |
| bpN:p11:eq:lie | PASS | L91–91 | The newly inventoried labelled identity at L91 correctly maps to ef-id; no separate mathematical obligation is omitted. |

All PROPOSED coverage items PASS. The original missing labelled-display disposition is repaired. The source-gap bridge belongs within the retained Hessian unit and does not require a duplicate coverage item.

## Complete minimal replacement blocks

Only the identified DEPS/EDGE fields and the missing domain qualifier in final-sign’s SOURCE_CONCLUSION change. All other source statement fields, locators, constant scope, provenance and status metadata remain verbatim.

```text
NODE: bpN:p11:conj
KIND: lemma
TITLE: Conjugation
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:conj@L20-L22
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:conj@L23-L25
CONTRACT_ID: bpN:p11:conj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H in O(r,s)^{e,R}, H-tilde in O(r-tilde,s-tilde)^{e,R} (r-tilde<=r, s-tilde<=s in the same extended structure); Psi: D^e_{r-tilde,s-tilde}->D^e_{r,s} holomorphic, real at real points, DPsi Omega_c DPsi^T=Omega_c; H-tilde=H o Psi; y-tilde an H-tilde-orbit in W^e_{r-tilde} on J
SOURCE_QUANTIFIERS: r,s,r-tilde,s-tilde; H,H-tilde,Psi; J; y-tilde
SOURCE_CONCLUSION: Psi o y-tilde is an H-orbit in W^e_r on J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:cj, bpN:p11:ext-class, bpN:p11:s-real#data, bpN:p11:wfield, bpN:p4:norm, bpN:p4:domains, bpN:p3:gen-sol
EDGE: bpN:p4:norm | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:conj@L23-L25 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:conj@L23-L25 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:conj@L23-L25 | direct use of bpN:p3:gen-sol in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:cj | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:conj@L24-L24 | proof step (chain rule)
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:conj@L21-L22 | O^{e,R}, D^e
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:conj@L21-L21 | H-orbits in W^e
EDGE: bpN:p11:wfield | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:conj@L21-L21 | Omega_c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p11:preimage
KIND: lemma
TITLE: Real preimages of a near-identity map
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L27-L29
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L30-L32
CONTRACT_ID: bpN:p11:preimage
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi: D^e_{r-tilde,s-tilde}->C^{2n+2k} holomorphic, real at real points; G=Psi-id with ¦G_theta¦<=d_theta, ¦G_I¦<=d_I, ¦G_{x-tilde}¦<=d_x on D^e_{r-tilde,s-tilde}; 0<rho'<=r-tilde, 0<sigma'<=2 s-tilde; kappa_*=max(d_theta/sigma',d_I/rho',d_x/rho')<=1/4
SOURCE_QUANTIFIERS: r-tilde,s-tilde,rho',sigma'; Psi; d_theta,d_I,d_x
SOURCE_CONCLUSION: every y=(theta_y,I_c,x-tilde_y), theta_y in R^n, x-tilde_y in S-tilde equals Psi(x) for some x in W^e_{r-tilde} with ¦theta_x-theta_y¦<=d_theta, ¦I_x-I_c¦<=d_I, ¦x-tilde_x-x-tilde_y¦<=d_x
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p7:preimage, bpN:p4:general-cauchy, bpN:p11:ext-part4, K:bp:p1:ext-mvt, bpN:p7:ext-banach, bpN:p11:ext-class, bpN:p11:s-real#data, bpN:p11:s-ext-class#data, bpN:p4:domains, bpN:p11:scaled
EDGE: bpN:p4:domains | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L30-L32 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:scaled | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L30-L32 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p7:preimage | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L31-L31 | proof of Lemma preimage with nu(a,b,xi)=max(¦a¦/sigma',¦b¦/rho',¦xi¦/rho') (same contraction argument, conclusion transferred)
EDGE: bpN:p4:general-cauchy | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L31-L31 | Cauchy estimate ¦DG¦_nu<=2 kappa_*<=1/2 on the nu-ball
EDGE: bpN:p11:ext-part4 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L31-L31 | Lemma general-cauchy for the extended class
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L31-L31 | T is a contraction on the convex set X (mean value inequality)
EDGE: bpN:p7:ext-banach | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L31-L31 | Banach fixed point theorem
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L28-L28 | D^e_{r-tilde,s-tilde}, W^e_{r-tilde}
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L28-L28 | W^e_{r-tilde}, S-tilde, real points
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:preimage@L28-L28 | S-tilde and I_c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:ct-data
KIND: step
TITLE: Uniform data
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ct-data@L39-L39
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ct-data@L39-L39
CONTRACT_ID: stepN:p11:ct-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:continuation; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: x=(theta,v)
SOURCE_CONCLUSION: Phi=R^n x K has uniform data (delta,M,L): for x with v in K, B-bar(x,delta) subset W, F bounded by M and L-Lipschitz there (M,L the bound and Lipschitz constant of F on C)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:uc-delta, bpN:p3:gen-lip, bpN:p3:gen-uniform, bpN:p3:ext-compact
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:uc-delta | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ct-data@L39-L39 | choice of delta with K_delta subset U
EDGE: bpN:p3:gen-lip | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ct-data@L39-L39 | bound M and Lipschitz constant L of F on the compact C
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ct-data@L39-L39 | the notion of uniform data (delta,M,L) being verified
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ct-data@L39-L39 | compactness of the finite product C=[-1,2]^n x K_delta used before gen-lip
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p11:transfer
KIND: lemma
TITLE: Stopped transfer through a symplectic map
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L43-L52
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L53-L61
CONTRACT_ID: bpN:p11:transfer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H,H-tilde,Psi as in Lemma conj; ¦.¦_*>=¦.¦ a norm on R^n; (T1) ¦Pi_I Psi(x)-I_x¦_*<=d_* and ¦Pi_{x-tilde}Psi(x)-x-tilde_x¦_inf<=d_x for x in W^e_{r-tilde}, d_x<r-tilde; (T2) every y=(theta_y,I_c,x-tilde_y) (x-tilde_y in S-tilde) is Psi(x), x in W^e_{r-tilde}, ¦I_x-I_c¦_*<=d_*; (T3) (conditional helper, never a premise of the frozen theorem) rho>0 with d_*+rho<r-tilde and T in (0,inf] such that every H-tilde-orbit y-tilde in W^e_{r-tilde} on J-tilde containing 0 with ¦I-tilde(0)-I_c¦_*<=d_* and dist_inf(x-tilde(t),S-tilde)<=d_x on J-tilde satisfies ¦I-tilde(t)-I-tilde(0)¦_*<=rho for t in J-tilde, ¦t¦<=T; F any function with F=X^c_{H^R} on W^e_r; J an interval containing 0; y:R->R^{2n+2k} two-sidedly differentiable with y'=F(y) on J, y(0)=(theta_0,I_c,x-tilde_0), x-tilde_0 in S-tilde; t_1 in J, ¦t_1¦<=T, x-tilde(u) in S-tilde between 0 and t_1
SOURCE_QUANTIFIERS: r,s,r-tilde,s-tilde; H,H-tilde,Psi; norm; d_*,d_x; rho,T; F; J; y; t_1
SOURCE_CONCLUSION: y(u) in W^e_r and ¦I(u)-I_c¦_*<=rho+2 d_* for all u between 0 and t_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:tr-orbit, stepN:p11:tr-E, stepN:p11:tr-bounds, stepN:p11:tr-open, stepN:p11:tr-closed, stepN:p11:tr-concl, bpN:p11:conj, bpN:p11:s-real#data, bpN:p11:ext-class, bpN:p3:gen-symmetry, bpN:p11:wfield, bpN:p11:s-ext-class#data, bpN:p3:gen-sol
EDGE: bpN:p11:wfield | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L53-L61 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L53-L61 | direct use of bpN:p11:s-ext-class#data in the statement or proof at this span
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L53-L61 | direct use of bpN:p3:gen-sol in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:tr-orbit | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L55-L55 | proof step (a normal-form orbit)
EDGE: stepN:p11:tr-E | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L56-L56 | proof step (the good set)
EDGE: stepN:p11:tr-bounds | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L57-L57 | proof step (bounds on every prefix)
EDGE: stepN:p11:tr-open | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L58-L58 | proof step (E open)
EDGE: stepN:p11:tr-closed | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L59-L59 | proof step (E closed)
EDGE: stepN:p11:tr-concl | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L60-L60 | proof step (conclusion)
EDGE: bpN:p11:conj | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L44-L44 | H,H-tilde,Psi as in Lemma conj
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L43-L52 | W^e, orbits, S-tilde
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L44-L44 | O^{e,R}, D^e
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:transfer@L54-L54 | t_1<0 reduced to t_1>0 by time reversal y(-u), -H, -H-tilde
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: dropped candidate edges bpN:p7:transfer and bpN:p7:stopped-extension (\source: provenance; the extended argument is proved by its own steps). (T3) is a conditional helper hypothesis, discharged at the consumers by stepN:p11:nr-t3 and stepN:p11:rs-t3
```

```text
NODE: stepN:p11:tr-closed
KIND: step
TITLE: $E$ is closed
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59
CONTRACT_ID: stepN:p11:tr-closed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:transfer; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: tau*
SOURCE_CONCLUSION: the transverse part v=(I-tilde,x-tilde) of y-tilde stays in a compact K subset U; by Lemma continuation T_+>tau*; by continuity tau* in E
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:tr-bounds, bpN:p11:continuation, bpN:p11:real-system, stepN:p11:tr-E, stepN:p11:tr-orbit, bpN:p11:ext-class, bpN:p11:wfield, bpN:p11:s-ext-class#data, bpN:p11:s-real#data, bpN:p3:ext-compact
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59 | direct use of bpN:p11:s-ext-class#data in the statement or proof at this span
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59 | direct use of bpN:p11:s-real#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:tr-bounds | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59 | bounds on every prefix [0,tau], tau<tau*
EDGE: bpN:p11:continuation | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59 | if T_+=tau* then T_+=infinity (contradiction)
EDGE: bpN:p11:real-system | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59 | the field X^c_{H-tilde^R} is C^1 and theta-periodic on R^n x U
EDGE: stepN:p11:tr-E | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59 | E, sup E
EDGE: stepN:p11:tr-orbit | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59 | (T_-,T_+)
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:tr-closed@L59-L59 | continuous image x-tilde([0,t_1]), its closed bounded d_x-neighbourhood, and the resulting compact transverse product K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p11:nonresonant
KIND: proposition
TITLE: Nonresonant stability in the extended phase space
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L65-L68
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L69-L74
CONTRACT_ID: bpN:p11:nonresonant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r,s,K_a,alpha>0, L>=0, p>1, q=p/(p-1), kappa=2 pi K_a s>=6; r=r_B; h holomorphic on V_r(I_c), real on real points; ¦k.omega(I_c)¦>=alpha for 0<¦k¦_1<=K_a (cond-nr, Lambda={0}), cond-L with L, K_a L r<=alpha/p; (SL); f in O(r,s)^{e,R}, ¦f¦<=eps with eps>0, eps<=alpha r/(2^7 q K_a); H=h+f; T_nr=(s r/(5 eps))e^{kappa/6}
SOURCE_QUANTIFIERS: r,s,K_a,alpha,L,p; h; f; eps; F; J; y; t_1
SOURCE_CONCLUSION: for every F with F=X^c_{H^R} on W^e_r, J containing 0, y with y'=F(y) on J, y(0)=(theta_0,I_c,x-tilde_0), x-tilde_0 in S-tilde, and t_1 in J with ¦t_1¦<=T_nr and x-tilde(u) in S-tilde between 0 and t_1: ¦I(u)-I_c¦<=r/2 between 0 and t_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:nr-nf, stepN:p11:nr-t12, stepN:p11:nr-t3, stepN:p11:nr-concl, bpN:p6:setting, bpN:p6#data, bpN:p11:s-nf#data, bpN:p11:ext-class, bpN:p11:s-real#data, bpN:p11:s-ext-class#data, bpN:p4:norm, bpN:p4:domains, bpN:p11:wfield, bpN:p3:gen-sol
EDGE: bpN:p4:norm | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L69-L74 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L69-L74 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L69-L74 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L69-L74 | direct use of bpN:p3:gen-sol in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:nr-nf | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L70-L70 | proof step (normal form)
EDGE: stepN:p11:nr-t12 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L71-L71 | proof step ((T1),(T2))
EDGE: stepN:p11:nr-t3 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L72-L72 | proof step ((T3))
EDGE: stepN:p11:nr-concl | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L73-L73 | proof step (transfer)
EDGE: bpN:p6:setting | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L66-L66 | conditions cond-nr, cond-L
EDGE: bpN:p6#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L66-L66 | K_a, q, kappa
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L65-L66 | dictionary h on V_r(I_c), omega, K_a
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L66-L67 | O^{e,R}, (SL)
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L66-L66 | W^e_r, S-tilde, orbits
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:nonresonant@L66-L66 | r=r_B, c, lambda
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: dropped candidate edge bpN:p7:nonresonant (\source: provenance; the extended proposition is proved by its own steps)
```

```text
NODE: stepN:p11:ef-tube
KIND: step
TITLE: The orbit stretch lies in the small tube
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-tube@L87-L87
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-tube@L87-L87
CONTRACT_ID: stepN:p11:ef-tube
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:energy-free; in the contradiction branch, t* and Delta are constructed by the first-exit argument; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: tau
SOURCE_CONCLUSION: ¦I-tilde(tau)-I_c¦<r-tilde/2 and y-tilde(tau) in D^e_{r-tilde/2,s-tilde/2} cap R^{2n+2k}; the segment [I-tilde(0),I-tilde(t*)] subset U
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:ext-class, bpN:p11:s-real#data, bpN:p4:domains, bpN:p11:s-ext-class#data, bpN:p3:gen-sol, bpN:p1:norm-compare
EDGE: bpN:p4:domains | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-tube@L87-L87 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-tube@L87-L87 | direct use of bpN:p11:s-ext-class#data in the statement or proof at this span
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-tube@L87-L87 | direct use of bpN:p3:gen-sol in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-tube@L87-L87 | D^e_{r-tilde/2,s-tilde/2} (membership of the real points)
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-tube@L87-L87 | W^e and the orbit y-tilde
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-tube@L87-L87 | the max action displacement is at most its Euclidean norm, giving membership in the smaller max-norm tube
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:ef-adm
KIND: step
TITLE: Admissibility
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-adm@L88-L88
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-adm@L88-L88
CONTRACT_ID: stepN:p11:ef-adm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:energy-free; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: I-tilde(0)
SOURCE_CONCLUSION: ¦omega_0-omega(I_c)¦_2<=M rho'=delta/4 so ¦Pi omega_0¦_2<=(5/4)delta; rho'<=m r-tilde/(64 M)<=r-tilde/64
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-mvt, bpN:p7:setting, bpN:p7:resonance-data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-adm@L88-L88 | mean value inequality on the convex ball
EDGE: bpN:p7:setting | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-adm@L88-L88 | omega=d_I h and Q (Hessian bound M)
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-adm@L88-L88 | Pi is the Euclidean orthogonal projection used in the bound for Pi omega_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:ef-id
KIND: step
TITLE: The identity
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-id@L90-L91
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-id@L90-L91
CONTRACT_ID: stepN:p11:ef-id
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:energy-free; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: tau
SOURCE_CONCLUSION: F'=Df_*.X^c_{H-tilde^R}={f_*,H-tilde}_c={f_*,h}_c+{f_*,g}_c with {f_*,h}_c=d_theta f_*.omega(I-tilde), i.e. (eq:lie) d_theta f_*.omega(I-tilde(tau))=F'(tau)-{f_*,g}_c(y-tilde(tau))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:wfield, bpN:p11:ext-chain, bpN:p11:real-system, bpN:p11:s-ext-class#data, bpN:p11:s-real#data, bpN:p7:setting
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-id@L90-L91 | direct use of bpN:p11:s-ext-class#data in the statement or proof at this span
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-id@L90-L91 | direct use of bpN:p11:s-real#data in the statement or proof at this span
EDGE: bpN:p7:setting | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-id@L90-L91 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:wfield | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-id@L90-L91 | {u,v}_c=Du.X^c_v, antisymmetry
EDGE: bpN:p11:ext-chain | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-id@L90-L90 | chain rule along the curve
EDGE: bpN:p11:real-system | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-id@L90-L90 | X^c_{H-tilde^R} on W^e (Lemma real-system(a))
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:ef-C
KIND: step
TITLE: Estimate of $C$
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L96
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L96
CONTRACT_ID: stepN:p11:ef-C
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:energy-free; in the same first-exit contradiction branch; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: t*
SOURCE_CONCLUSION: C<=¦F(t*)-F(0)¦+¦t*¦(sup¦{f_*,g}_c¦+M Delta sup¦d_theta f_*¦_2+(5/4)delta sup¦d_theta f_*¦_2) and, with ¦d_theta f_*¦_2<=eta/(e s-tilde) (real-system(c)) and ¦{f_*,g}_c¦<=4 eta zeta_g/(r-tilde s-tilde) (Lemma bracket with losses (r-tilde/2,s-tilde/2)), C<=2 eta-bar+0.0061 m r-tilde^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:real-system, stepN:p11:ef-id, bpN:p11:bracket, stepN:p11:ef-tube, stepN:p11:ef-adm, stepN:p11:ef-en, bpN:p11:ext-class, bpN:p11:ext-num, bpN:p4:norm, bpN:p4:domains, bpN:p11:wfield, K:bp:p1:ext-integral, K:bp:p1:ext-mvt, bpN:p7:setting, bpN:p7:resonance-data, bpN:p1:ext-norms
EDGE: bpN:p4:norm | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L96 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L96 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L96 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: K:bp:p1:ext-integral | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L96 | direct use of K:bp:p1:ext-integral in the statement or proof at this span
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L96 | direct use of K:bp:p1:ext-mvt in the statement or proof at this span
EDGE: bpN:p7:setting | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L96 | direct package or input used by this proof step
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L96 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:real-system | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L94 | Lemma real-system(c),(d): ¦d_theta f_*¦_2<=eta/(e s-tilde) and Pi^perp d_theta g=0
EDGE: stepN:p11:ef-id | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L93 | identity (eq:lie)
EDGE: bpN:p11:bracket | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L94-L94 | Lemma bracket with (u,v)=(f_*,g), R_0=R=r-tilde, losses (r-tilde/2,s-tilde/2)
EDGE: stepN:p11:ef-tube | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L94-L94 | the points y-tilde(tau) lie in D^e_{r-tilde/2,s-tilde/2}
EDGE: stepN:p11:ef-adm | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L94 | (5/4)delta bound for ¦Pi omega_0¦
EDGE: stepN:p11:ef-en | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L92-L92 | definition of C
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L94-L94 | (SL)_{rho,sigma} for the losses (r-tilde/2,s-tilde/2) is 16 k c s-tilde<=r-tilde
EDGE: bpN:p11:ext-num | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L94-L95 | the listed 1/e<0.368 suffices for 5/4096+(5/64+1/4)/e<0.1220; the stronger printed decimal 0.3679 is not asserted by that external
EDGE: bpN:p1:ext-norms | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:ef-C@L94-L94 | Euclidean norm of d_theta f_* is at most the sum of the component moduli bounded by real-system(c)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p11:resonant
KIND: proposition
TITLE: Resonant stability in the extended phase space, convex case
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L100-L103
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L104-L110
CONTRACT_ID: bpN:p11:resonant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r=r_B; s,K_a,alpha,delta>0; p=9/8, q=9, kappa=2 pi K_a s>=6; Lambda subset Z^n a subgroup; 0<m<=M; h holomorphic on V_r(I_c), real on real points, ¦d_I^2 h¦_{2->2}<=M on V_r(I_c), m-convex on U_r(I_c); ¦k.omega(I_c)¦>=alpha for k in Z_{K_a}\Lambda; cond-L with L=sqrt(n)M, K_a L r<=alpha/p; ¦Pi_Lambda omega(I_c)¦_2<=m r/32 (delta:=m r/32); (SL); f in O(r,s)^{e,R}, ¦f¦<=eps, eps>0, eps<=m r^2/2^14; H=h+f; T_Lambda=(s m r/(240 M eps))e^{kappa/6}
SOURCE_QUANTIFIERS: r,s,K_a,alpha,Lambda,m,M; h; f; eps; F; J; y; t_1
SOURCE_CONCLUSION: for every F with F=X^c_{H^R} on W^e_r, J containing 0, y with y'=F(y) on J, y(0)=(theta_0,I_c,x-tilde_0), x-tilde_0 in S-tilde, t_1 in J with ¦t_1¦<=T_Lambda and x-tilde(u) in S-tilde between 0 and t_1: ¦I(u)-I_c¦_2<=r/2 (so ¦I(u)-I_c¦<=r/2) between 0 and t_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:rs-red, stepN:p11:rs-nf, stepN:p11:rs-t12, stepN:p11:rs-t3, stepN:p11:rs-concl, bpN:p6:setting, bpN:p7:resonance-data, bpN:p11:s-nf#data, bpN:p11:ext-class, bpN:p11:s-real#data, bpN:p11:s-ext-class#data, bpN:p4:norm, bpN:p4:domains, bpN:p11:wfield, bpN:p3:gen-sol, bpN:p6#data
EDGE: bpN:p4:norm | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L104-L110 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L104-L110 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L104-L110 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L104-L110 | direct use of bpN:p3:gen-sol in the statement or proof at this span
EDGE: bpN:p6#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L104-L110 | direct use of bpN:p6#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:rs-red | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L105-L105 | proof step (reductions)
EDGE: stepN:p11:rs-nf | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L106-L106 | proof step (normal form)
EDGE: stepN:p11:rs-t12 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L107-L107 | proof step ((T1),(T2))
EDGE: stepN:p11:rs-t3 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L108-L108 | proof step ((T3))
EDGE: stepN:p11:rs-concl | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L109-L109 | proof step (conclusion)
EDGE: bpN:p6:setting | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L101-L101 | cond-L, the nonresonance hypothesis modulo Lambda
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L101-L102 | m-convexity and Pi_Lambda omega closeness to exact resonances
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L100-L102 | dictionary h on V_r(I_c), omega, K_a
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L101-L101 | O^{e,R}, (SL)
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L101-L101 | W^e_r, S-tilde, orbits
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:resonant@L101-L101 | r=r_B, c, lambda
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: dropped nothing material; the source (Pos93 Proposition 2) is provenance
```

```text
NODE: stepN:p11:rs-red
KIND: step
TITLE: Reductions
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-red@L105-L105
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-red@L105-L105
CONTRACT_ID: stepN:p11:rs-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_a L r<=alpha/p, L=sqrt(n)M, m<=M, q/p=8
SOURCE_QUANTIFIERS: eps
SOURCE_CONCLUSION: eps<=m r^2/2^14<=alpha r/(2^7 q K_a) (as alpha r/(2^7 q K_a)>=p sqrt(n)M r^2/(2^7 q)>=M r^2/2^10), so Theorem nf applies (Lambda=-Lambda)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:s-nf#data
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-red@L105-L105 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:rs-nf
KIND: step
TITLE: Normal form
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-nf@L106-L106
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-nf@L106-L106
CONTRACT_ID: stepN:p11:rs-nf
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:resonant; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: f
SOURCE_CONCLUSION: Psi,g,f_* on D^e_{r/2,s/6}; ¦g¦<=¦g_0¦+16 c_1 eps^2<=(5/4)eps, eta<=eta-bar:=e^{-kappa/6}eps<=eps/e; r-tilde=r/2, s-tilde=s/6: eps<=m r-tilde^2/2^12, delta=m r-tilde/16, rho'=m r/(128 M), 16 k c s-tilde<r-tilde by (SL)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:nf, stepN:p11:rs-red, bpN:p11:ext-class, bpN:p4:norm, bpN:p4:domains, bpN:p11:s-nf#data, bpN:p4:projections, bpN:p11:ext-part4, bpN:p4:norm#monotone
EDGE: bpN:p4:norm | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-nf@L106-L106 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-nf@L106-L106 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-nf@L106-L106 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:nf | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-nf@L106-L106 | Theorem nf conclusions (a),(b)
EDGE: stepN:p11:rs-red | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-nf@L106-L106 | hypotheses of Theorem nf
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-nf@L106-L106 | (SL) gives 16 k c s-tilde<=r/12<r-tilde
EDGE: bpN:p4:projections | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-nf@L106-L106 | g_0=P_Lambda T_{K_a}f has weighted norm at most the perturbation norm eps
EDGE: bpN:p11:ext-part4 | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-nf@L106-L106 | the projection estimate is used for the extended Fourier class
EDGE: bpN:p4:norm#monotone | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-nf@L106-L106 | the g_0 projection bound is restricted from the initial domain to D^e_{r/2,s/6}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:rs-t12
KIND: step
TITLE: (T1), (T2) in $\abs\cdot_*=\norm\cdot_2$
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t12@L107-L107
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t12@L107-L107
CONTRACT_ID: stepN:p11:rs-t12
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:resonant; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: x
SOURCE_CONCLUSION: (T1) with d_*=m r/(2^11 M)=rho'/16<rho' and d_x=r/2^10; (T2) as in Step nr-t12 via Lemma preimage
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:preimage, stepN:p11:nr-t12, bpN:p11:nf, stepN:p11:rs-nf, bpN:p11:s-nf#data, bpN:p1:norm-compare
EDGE: bpN:p11:s-nf#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t12@L107-L107 | direct use of bpN:p11:s-nf#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:preimage | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t12@L107-L107 | (T2) via Lemma preimage
EDGE: stepN:p11:nr-t12 | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t12@L107-L107 | as in Step nr-t12
EDGE: bpN:p11:nf | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t12@L107-L107 | displacement bounds of Theorem nf(c)
EDGE: stepN:p11:rs-nf | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t12@L107-L107 | r-tilde,s-tilde,rho'
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:rs-t12@L107-L107 | Euclidean displacement is at most sqrt(n) times the max displacement in nf(c)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p11:hessian
KIND: lemma
TITLE: Hessian and sizes (nonempty $G$)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:hessian@L114-L116
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:hessian@L117-L119
CONTRACT_ID: bpN:p11:hessian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h as in Theorem bpN:p0:partial (complex differentiable and complex C^2 on G'_rho, real on real points of G'_rho, ¦D^2 h(z)¦<=M_C on G'_rho, HasDefiniteFastPart G' rho g m h with sign sigma); G nonempty
SOURCE_QUANTIFIERS: n,k; G,G',D,rho,g,m,M_C,h; z in G'_rho; I in U
SOURCE_CONCLUSION: for z in G'_rho the symmetric matrix Q_C(z)=(D^2h(z)[e_i,e_j]) has ¦Q_C(z)¦_{2->2}<=M_C; for real I in U (real slice of G'_rho): Q(I)=D^2 h_R(I)=Q_C(I), m¦xi¦_2^2<=sigma Q(I)[xi,xi], ¦Q(I)[xi,xi]¦<=M_C¦xi¦_2^2, ¦omega(I)¦_inf>=g; consequently m<=M_C; for h_1=h/(2 pi) the same with (m_1,M_1,g_1)=(m,M_C,g)/(2 pi), and sigma h_1 is m_1-convex
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:hs-op, bpN:p0:partial-definite#HasDefiniteFastPart, bpN:p0:actionnbhd#actionNbhd, bpN:p11:constants, bpN:p11:hessian#real-hessian
EDGE: bpN:p11:hessian#real-hessian | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:hessian@L117-L119 | direct use of bpN:p11:hessian#real-hessian in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:hs-op | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:hessian@L118-L118 | proof step (operator norm)
EDGE: bpN:p0:partial-definite#HasDefiniteFastPart | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:hessian@L114-L115 | sigma and the definite fast part: ¦omega¦_inf>=g, m¦xi¦^2<=sigma Q[xi,xi]
EDGE: bpN:p0:actionnbhd#actionNbhd | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:hessian@L115-L115 | G'_rho and its real slice U
EDGE: bpN:p11:constants | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:hessian@L115-L115 | m_1,M_1,g_1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The real-Hessian identification is exposed by hessian#real-hessian; the Part 1 centred-ball lemma is a proof template, not a literal application on G-prime_rho. The Euclidean operator bound here is M_C, as stated, not n M_C.
```

```text
NODE: stepN:p11:hs-op
KIND: step
TITLE: Operator norm
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:hs-op@L118-L118
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:hs-op@L118-L118
CONTRACT_ID: stepN:p11:hs-op
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:hessian (in particular the frozen max-norm bilinear operator bound on D(Dh), not an entrywise bound); prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: z; u,v
SOURCE_CONCLUSION: ¦D^2h(z)[u,v]¦<=M_C¦u¦_inf¦v¦_inf<=M_C¦u¦_2¦v¦_2, so ¦Q_C(z)¦_{2->2}<=M_C; real I in G' lies in G'_rho; m<=sigma Q[xi,xi]<=M_C at a real point of G for a unit vector gives m<=M_C
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:partial-definite#HasDefiniteFastPart, bpN:p0:actionnbhd#actionNbhd, bpN:p11:hessian#real-hessian, bpN:p1:norm-compare
EDGE: bpN:p11:hessian#real-hessian | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:hs-op@L118-L118 | direct use of bpN:p11:hessian#real-hessian in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:partial-definite#HasDefiniteFastPart | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:hs-op@L118-L118 | the definition of HasDefiniteFastPart (m¦xi¦^2<=sigma D^2 h_R[xi,xi], ¦omega¦_inf>=g)
EDGE: bpN:p0:actionnbhd#actionNbhd | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:hs-op@L118-L118 | G'_rho and I in bar B(I,rho) subset G'
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:hs-op@L118-L118 | max norms of the real or complex vectors are bounded by their Euclidean norms in the bilinear estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p11:block-setting
KIND: definition
TITLE: Sets and the extended system for the block theorem
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-setting@L121-L123
PROOF_SOURCE: -
CONTRACT_ID: bpN:p11:block-setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data and constants of Definition bpN:p11:constants; G nonempty; mu>0 with eps=eps(mu)<=eps_0 and d=mu^{b_n}<=rho; I_c in G; a block starting radius r_B<=r_0
SOURCE_QUANTIFIERS: mu; I_c; r_B
SOURCE_CONCLUSION: defines S=core(D,3d/4) subset R^{2k}, w=d/4; the perturbation pair (h-breve,f-breve)=(sigma h_1,sigma f_1) with f_1(theta,I,x)=(mu/(2 pi))P((2 pi theta,q),(I,p)), x=(q,p); lambda=w/r_B, c=2 pi/lambda^2, W^e_varrho as in Section s-real, and the physical real set W(I_c,r_B)={(theta,I;x): ¦I-I_c¦<r_B, dist_inf(x,S)<w}
CONSTANT_SCOPE: constants as in Definition constants; I_c in G, r_B<=r_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:constants, bpN:p0:partial-core#innerCore, bpN:p0:partial-pert#IsPartialPerturbation, bpN:p11:s-ext-class#data, bpN:p11:s-real#data, bpN:p11:ext-class
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-setting@L121-L123 | direct use of bpN:p11:ext-class in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:constants | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-setting@L121-L122 | data and constants of Definition constants (eps_0, eps(mu), d, w, sigma, h_1)
EDGE: bpN:p0:partial-core#innerCore | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-setting@L122-L122 | S=core(D,3d/4)
EDGE: bpN:p0:partial-pert#IsPartialPerturbation | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-setting@L122-L122 | P of the perturbation pair is the IsPartialPerturbation function of the theorem
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-setting@L122-L123 | lambda=w/r_B, c=2 pi/lambda^2, x-tilde and the block data
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-setting@L122-L122 | W^e_varrho as in Section s-real
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: package bpN:p11:block-setting (SPEC)
```

```text
NODE: bpN:p11:domain
KIND: lemma
TITLE: Analyticity, norm and field on the block domain
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L125-L127
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L128-L132
CONTRACT_ID: bpN:p11:domain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition block-setting; I_c in G; 0<r_B<=r_0
SOURCE_QUANTIFIERS: I_c; r_B; mu
SOURCE_CONCLUSION: (a) h-breve holomorphic on V_{r_B}(I_c) subset G'_rho, real on real points, ¦d_I^2 h-breve¦_{2->2}<=M_1, m_1-convex on U_{r_B}(I_c), ¦omega¦_inf>=g_1; (b) f-breve in O(r_B,s)^{e,R}, ¦f-breve¦_{r_B,s}<=eps(mu)=kappa_C mu/(2 pi); (c) on the open set W(I_c,r_B) the frozen H-hat_mu=(1/(2 pi))H_mu o Theta^{-1} equals Re(h_1+f_1) and is real analytic, so sigma X^{2pi}_{H-hat_mu}=X^{2pi}_{(h-breve+f-breve)^R} there; in x-tilde=x/lambda this is X^c_{(h-breve+f-breve)^R} on W^e_{r_B}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:dm-pts, stepN:p11:dm-norm, stepN:p11:dm-field, bpN:p11:block-setting, bpN:p11:ext-class, bpN:p11:s-real#data, bpN:p11:orbit, bpN:p4:norm, bpN:p4:domains, bpN:p11:wfield, bpN:p11:s-ext-class#data, bpN:p11:constants
EDGE: bpN:p4:norm | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L128-L132 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L128-L132 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L128-L132 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L128-L132 | direct use of bpN:p11:s-ext-class#data in the statement or proof at this span
EDGE: bpN:p11:constants | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L128-L132 | direct use of bpN:p11:constants in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:dm-pts | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L129-L129 | proof step (complex points)
EDGE: stepN:p11:dm-norm | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L130-L130 | proof step (norm)
EDGE: stepN:p11:dm-field | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L131-L131 | proof step (field)
EDGE: bpN:p11:block-setting | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L126-L126 | Definition block-setting
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L126-L126 | O^{e,R}, W^e
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L126-L126 | W^e_{r_B}
EDGE: bpN:p11:orbit | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:domain@L126-L126 | H-hat_mu=(1/(2 pi))H_mu o Theta^{-1}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p11:block-data
KIND: lemma
TITLE: Block data from the covering lemma
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L134-L137
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L138-L142
CONTRACT_ID: bpN:p11:block-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition block-setting; kappa=2 pi K_a s>=6 (K_a=K/sqrt n, K=(eps_0/eps)^{1/(2n)}>=1); I_0 in G; p=9/8, q=9, b_c=1/32; Lemma covering applied with (P,omega)=({I_0},omega_{h_1}) and parameters (p,b_c,r_0,M_1,m_1,K,A) (A=40M_1/m_1>=36 M_1/m_1+sqrt 2)
SOURCE_QUANTIFIERS: I_0; mu; K,K_a
SOURCE_CONCLUSION: there is Lambda in M_K with I_0 in D_Lambda, Lambda not Z^n, and with r=r_Lambda, alpha=alpha_Lambda=p M_1 K r: (1) r_Theta=r_0/(AK)^n<=r<=R_0/K; (2) ¦k.omega(I_0)¦>=alpha for k in Z_{K_a}\Lambda (Lambda=Theta: 0<¦k¦_1<=K_a with alpha_Theta); (3) ¦Pi_Lambda omega(I_0)¦_2<m_1 r/32; (4) cond-L holds on V_r(I_0) with L=sqrt(n)M_1 and K_a L r=alpha/p; (5) eps<=m_1 r^2/2^14 and eps<=alpha r/(2^7 q K_a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:bd-cover, stepN:p11:bd-24, stepN:p11:bd-5, bpN:p11:block-setting, bpN:p8:covering, bpN:p8:klattice, bpN:p8:blocks, bpN:p6:setting, bpN:p11:constants, bpN:p4:domains, bpN:p7:resonance-data, bpN:p6#data
EDGE: bpN:p4:domains | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L138-L142 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L138-L142 | direct use of bpN:p7:resonance-data in the statement or proof at this span
EDGE: bpN:p6#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L138-L142 | direct use of bpN:p6#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:bd-cover | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L139-L139 | proof step (covering)
EDGE: stepN:p11:bd-24 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L140-L140 | proof step ((2)-(4))
EDGE: stepN:p11:bd-5 | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L141-L141 | proof step ((5))
EDGE: bpN:p11:block-setting | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L134-L135 | Definition block-setting
EDGE: bpN:p8:covering | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L135-L135 | Lemma covering applied
EDGE: bpN:p8:klattice | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L135-L135 | M_K, the maximal K-lattices
EDGE: bpN:p8:blocks | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L136-L136 | D_Lambda, r_Lambda, alpha_Lambda, delta_Lambda, Theta
EDGE: bpN:p6:setting | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L136-L136 | cond-L
EDGE: bpN:p11:constants | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block-data@L134-L135 | K, K_a, kappa, eps_0, A, R_0, r_0, b_c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: dropped candidate edge bpN:p11:hom (appears only as the check that omega is real, "as required by Proposition hom"; hom is not used here)
```

```text
NODE: stepN:p11:bd-cover
KIND: step
TITLE: Covering
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139
CONTRACT_ID: stepN:p11:bd-cover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:block-data; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: I_0
SOURCE_CONCLUSION: Lambda in M_K with I_0 in D_Lambda and r_Theta<=r_Lambda<=r_0/(AK)=R_0/K for Lambda not Z^n; Lambda=Z^n is impossible since ¦omega(I_0)¦_2<delta_{Z^n}=m_1 r_0/32<=g_1<=¦omega(I_0)¦_inf
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:covering, bpN:p11:hessian, bpN:p11:constants, bpN:p11:block-setting, bpN:p7:resonance-data, bpN:p8:klattice, bpN:p8:blocks, bpN:p1:norm-compare
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139 | direct use of bpN:p7:resonance-data in the statement or proof at this span
EDGE: bpN:p8:klattice | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139 | direct use of bpN:p8:klattice in the statement or proof at this span
EDGE: bpN:p8:blocks | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:covering | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139 | Lemma covering(a),(d), and (c) for the case Lambda=Z^n
EDGE: bpN:p11:hessian | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139 | ¦omega(I_0)¦_inf>=g_1 (Lemma hessian)
EDGE: bpN:p11:constants | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139 | r_0<=32 g/m so m_1 r_0/32<=g_1; R_0=r_0/A
EDGE: bpN:p11:block-setting | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139 | omega_{h_1}
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-cover@L139-L139 | the Euclidean frequency norm is at least its max norm in the full-rank exclusion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:bd-24
KIND: step
TITLE: (2)--(4)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140
CONTRACT_ID: stepN:p11:bd-24
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:block-data; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: I_0
SOURCE_CONCLUSION: (2),(3) from Corollary cutoffs(b),(c) (delta_Lambda=b_c m_1 r); (4) cond-L with L=sqrt(n)M_1 from the Euclidean Hessian bound (¦d_I^2 h_1 v¦_inf<=M_1¦v¦_2<=sqrt(n)M_1¦v¦_inf) and K_a L r=alpha/p; sign transport omega_{sigma h_1}=sigma omega_{h_1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:cutoffs, bpN:p6:lipschitz, bpN:p11:domain, stepN:p11:bd-cover, bpN:p11:hessian, bpN:p11:constants, bpN:p7:resonance-data, bpN:p6:setting, bpN:p1:norm-compare
EDGE: bpN:p11:constants | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140 | direct use of bpN:p11:constants in the statement or proof at this span
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140 | direct use of bpN:p7:resonance-data in the statement or proof at this span
EDGE: bpN:p6:setting | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:cutoffs | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140 | Corollary cutoffs(b),(c) with K_g=K, K_a=K/sqrt n
EDGE: bpN:p6:lipschitz | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140 | operator-norm Hessian bound gives cond-L (Lemma lipschitz-type)
EDGE: bpN:p11:domain | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140 | omega_{sigma h_1} real on the real slice; ¦d_I^2 h-breve¦_{2->2}<=M_1
EDGE: stepN:p11:bd-cover | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140 | Lambda, r=r_Lambda, alpha=alpha_Lambda
EDGE: bpN:p11:hessian | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140 | Euclidean Hessian bound M_1 for h_1
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bd-24@L140-L140 | max<=Euclidean<=sqrt(n) max converts the Euclidean Hessian bound to the max-norm frequency Lipschitz constant
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p11:block
KIND: theorem
TITLE: Stopped block stability (Pos93 Theorem 1 with slow parameters)
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L144-L147
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L148-L155
CONTRACT_ID: bpN:p11:block
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition block-setting; (B1) kappa=2 pi K_a s>=6; (B2) K>=256 k rho R_0/d^2; r_Theta=r_0/(AK)^n, T_P=s m_1 r_Theta e^{kappa/6}/(240 M_1 eps); I_0 in G; F: R^{2n+2k}->R^{2n+2k} any function with F=X^{2pi}_{(h-breve+f-breve)^R} on W(I_0,r_0); J containing 0 an interval; y=(theta,I;x) differentiable on J with y'=F(y) there, I(0)=I_0, x(0) in S; t_1 in J with ¦t_1¦<=T_P and x(u) in core(D,d) for all u between 0 and t_1
SOURCE_QUANTIFIERS: I_0; F; J; y; t_1
SOURCE_CONCLUSION: ¦I(u)-I_0¦_inf<=R_0/(2K) for all u between 0 and t_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p11:bl-block, stepN:p11:bl-sl, stepN:p11:bl-ext, stepN:p11:bl-theta, stepN:p11:bl-res, bpN:p11:block-setting, bpN:p11:constants, bpN:p0:partial-core#innerCore, bpN:p4:norm, bpN:p4:domains, bpN:p11:ext-class, bpN:p11:wfield, bpN:p11:s-ext-class#data, bpN:p11:s-real#data, bpN:p1:norm-compare
EDGE: bpN:p4:norm | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L148-L155 | direct use of bpN:p4:norm in the statement or proof at this span
EDGE: bpN:p4:domains | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L148-L155 | direct use of bpN:p4:domains in the statement or proof at this span
EDGE: bpN:p11:ext-class | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L148-L155 | direct use of bpN:p11:ext-class in the statement or proof at this span
EDGE: bpN:p11:wfield | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L148-L155 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L148-L155 | direct use of bpN:p11:s-ext-class#data in the statement or proof at this span
EDGE: bpN:p11:s-real#data | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L148-L155 | direct use of bpN:p11:s-real#data in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p11:bl-block | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L150-L150 | proof step (block)
EDGE: stepN:p11:bl-sl | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L151-L151 | proof step ((SL))
EDGE: stepN:p11:bl-ext | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L152-L152 | proof step (extended system)
EDGE: stepN:p11:bl-theta | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L153-L153 | proof step (case Lambda=Theta)
EDGE: stepN:p11:bl-res | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L154-L154 | proof step (case Lambda not Theta, Z^n)
EDGE: bpN:p11:block-setting | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L144-L145 | Definition block-setting
EDGE: bpN:p11:constants | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L145-L146 | K, K_a, kappa, A, R_0, r_0, eps, d, s, m_1, M_1
EDGE: bpN:p0:partial-core#innerCore | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L145-L145 | x(u) in core(D,d)
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p11c-partial-stability.tex#bpN:p11:block@L154-L154 | the resonant branch gives a Euclidean action bound, which implies the max-norm conclusion of the block theorem
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: dropped candidate edge bpN:p11:b-change (explanatory remark: the covering parameter b_c=1/32 is fixed in Definition constants and used in Lemma block-data)
```

```text
NODE: stepN:p11:bl-block
KIND: step
TITLE: Block
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-block@L150-L150
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-block@L150-L150
CONTRACT_ID: stepN:p11:bl-block
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p11:block; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: I_0
SOURCE_CONCLUSION: Lambda, r=r_Lambda in [r_Theta,R_0/K], alpha; take r_B=r, lambda=w/r, c=2 pi r^2/w^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:block-data, bpN:p11:s-ext-class#data, bpN:p11:constants, bpN:p11:block-setting, bpN:p8:klattice, bpN:p8:blocks
EDGE: bpN:p11:constants | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-block@L150-L150 | direct use of bpN:p11:constants in the statement or proof at this span
EDGE: bpN:p11:block-setting | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-block@L150-L150 | direct use of bpN:p11:block-setting in the statement or proof at this span
EDGE: bpN:p8:klattice | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-block@L150-L150 | direct package or input used by this proof step
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:block-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-block@L150-L150 | Lemma block-data gives Lambda, r_Lambda, alpha
EDGE: bpN:p11:s-ext-class#data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-block@L150-L150 | lambda=w/r_B, c=2 pi r_B^2/w^2
EDGE: bpN:p8:blocks | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:bl-block@L150-L150 | the chosen lattice radius r_Lambda and alpha are block data used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:final-mu
KIND: step
TITLE: The threshold
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-mu@L162-L162
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-mu@L162-L162
CONTRACT_ID: stepN:p11:final-mu
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G nonempty; gamma_1,gamma_2 of Lemma exponents; the constants
SOURCE_QUANTIFIERS: the fixed data first; choose positive mu_a,...,mu_e and mu_f from final-time, then mu_0=min(mu_a,...,mu_f); for every mu with 0<mu<mu_0
SOURCE_CONCLUSION: mu_0=min{mu_a..mu_f} with mu_a=2 pi eps_0/kappa_C, mu_b=rho^{1/b_n}, mu_c=(pi s c_K/(3 sqrt n))^{2n}, mu_d=(c_K/(256 k rho R_0))^{1/gamma_1}, mu_e=(c_K/R_0)^{1/gamma_2}, mu_f of step final-time; for 0<mu<mu_0: eps<=eps_0, d<=rho, kappa>=6 (B1), K>=256 k rho R_0 mu^{-2 b_n} (B2), R_0/(2K)<=mu^{b_n}/2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:exponents, stepN:p11:final-time, stepN:p11:final-data, bpN:p11:constants, bpN:p11:ext-rpow
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:exponents | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-mu@L162-L162 | gamma_1,gamma_2>0 (Lemma exponents)
EDGE: stepN:p11:final-time | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-mu@L162-L162 | mu_f from step final-time
EDGE: stepN:p11:final-data | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-mu@L162-L162 | eps_0, R_0, c_K
EDGE: bpN:p11:constants | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-mu@L162-L162 | kappa_C, s, K(mu), kappa(mu), d
EDGE: bpN:p11:ext-rpow | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-mu@L162-L162 | power rules and monotonicity of mu->mu^gamma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p11:final-sign
KIND: step
TITLE: Sign
STATEMENT_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-sign@L166-L166
PROOF_SOURCE: blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-sign@L166-L166
CONTRACT_ID: stepN:p11:final-sign
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpN:p0:partial; branch G nonempty and t>0; prior proof steps are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: sigma
SOURCE_CONCLUSION: sigma=+1: Theorem block with F=F_0, J=[0,C], t_1=t; sigma=-1: y-bar(u)=y(-u) on [-C,0] has y-bar'=-F_0(y-bar); -F_0=X^{2pi}_{(h-breve+f-breve)^R} on W(I_0,r_0), Theorem block with F=-F_0, t_1=-t
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p11:block, stepN:p11:final-orbit, stepN:p11:final-given, bpN:p11:ext-chain, bpN:p11:wfield, bpN:p11:block-setting, bpN:p11:constants
EDGE: bpN:p11:wfield | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-sign@L166-L166 | direct use of bpN:p11:wfield in the statement or proof at this span
EDGE: bpN:p11:block-setting | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-sign@L166-L166 | direct use of bpN:p11:block-setting in the statement or proof at this span
EDGE: bpN:p11:constants | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-sign@L166-L166 | direct use of bpN:p11:constants in the statement or proof at this span
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p11:block | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-sign@L166-L166 | Theorem block
EDGE: stepN:p11:final-orbit | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-sign@L166-L166 | y, F_0 and the identification on W(I_0,r_0)
EDGE: stepN:p11:final-given | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-sign@L166-L166 | t<=T_P, [0,t] subset [0,C]
EDGE: bpN:p11:ext-chain | blueprint-N/parts/p11c-partial-stability.tex#stepN:p11:final-sign@L166-L166 | chain rule for the time-reversed curve y(-u)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p11c+sol-review-N-f
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Assembly and source limits

The frozen theorem chooses mu_0 after the fixed data and before mu,P,C,z,t. The repaired final-time/final-order fields retain this order. The stronger source claim that thresholds depend only on (n,k,rho,g,m,M_C) is recorded as stated; the frozen theorem allows the larger fixed-data list. The empty-G case is already REVIEWED and was used only as context. On the nonempty branch m<=M_C supplies the covering constants; the convex sign is transported by absolute divisors and projection lengths, then the negative sign is handled by time reversal. The slow margin is tested on [0,t], or the reversed prefix [-t,0], never assumed throughout the exponential time. No T3 helper hypothesis has been promoted into the frozen statement.

Checked the scaling and time comparison: s=rho/(4pi), c=2pi/lambda^2, r_Theta=r_0(A c_K)^{-n}mu^{1/2}, eps=kappa_C mu/(2pi), and therefore T_P=C_T mu^{-1/2}exp(c_2 mu^{-1/(2n)}). The positive gamma_1,gamma_2 and a_n<1/(2n) justify the threshold choices; the final drift comparison is R_0/(2K)<=mu^{b_n}/2. The two block lattice cases and the two signs are case splits of a single proof, not alternative routes. No pending record contains the mechanical route rationale or generic inherited-quantifier filler flagged by the brief.

## Suspected blueprint defects

- Part 11c L115: “Q(I)=D²h_R(I)=Q_C(I) (Lemma holo-real)”. The cited Part-1 result is stated on centred action balls with its own analytic-integrable setting. The new hessian#real-hessian record faithfully exposes the missing arbitrary-open-tube identification as SOURCE_GAP; PASS here does not supply that proof or add a premise.

- Part 11c L94 prints “1/e<0.3679”, whereas the listed Part-11 numerics external states only 1/e<0.368 and e>2.718. Those listed bounds alone do not imply the stronger decimal. The final coefficient is nevertheless obtained from the listed bound: 5/4096+(5/64+1/4)*0.368=0.121970703125<0.1220; dividing by 20 gives <0.0061. Likewise 2(5/4+0.368)/4096=0.0007900390625<0.00080 and 2*0.368/4096=0.0001796875<0.00018; their rounded sum with 0.0061 is 0.00708<0.0071<3/256=0.01171875. The corrected edge rationale claims only what its external provides. This is a blueprint citation/precision issue, not a newly verified pinned-paper erratum.

## Validation and input snapshot

Both CORPUS.sha256 and IMPORTS.sha256 match the current files. Sixteen used frozen dependency/root identities match the manifest export, contract/version and ABI fields. No Lean command, implementation/provider inspection, manifest-state inspection, packet/SPEC edit or state-changing git operation was performed. Only this requested Markdown report was written.

- `N-p11c.nodes.md`: `3ed09402951c64bfb15e88519eda8065175619cd7fca54d34419a7d678b20009`.
- `N-p11c.coverage.md`: `7b0de3efff900772c5874a7d9224a2a8046811a6fc82ecf014d98d1c662a831f`.

Validation receipts:

- Exact inventory: 60 pending nodes each have one row (35 PASS, 25 FAIL); 75 pending coverage items each have one PASS row. Both input packet hashes remain unchanged.
- All 25 FAILs have a complete node replacement; a field comparison confirms that only the identified DEPS/EDGE fields or final-sign domain qualifier changed. Every replacement DEPS target has one matching EDGE, and all targets exist.
- In-memory application of the replacements gives an acyclic N-PARTIAL-CONVEX dependency/route closure containing all 60 pending slice nodes.
- `inp_depgraph_apply_review.py docs/graph/N/packets N-p11c docs/graph/N/reviews/N-p11c-delta.md sol-delta-N-g --dry-run`: exit 0; 25 replaced, 0 added, 0 coverage replacements, 0 unresolved FAILs. Its combined PASS tally includes coverage rows sharing node IDs; the separate inventory counts above are authoritative.
- Trailing-whitespace check and scoped `git diff --check`: PASS, exit 0.
