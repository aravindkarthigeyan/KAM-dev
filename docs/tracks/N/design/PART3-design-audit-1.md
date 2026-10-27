# Independent design audit 1: shared Hamiltonian ODE layer

**Overall verdict: PASS WITH FIXES.** All 78 named signatures pass the mathematical and blueprint-fidelity check. The three anonymous properness checks also pass. No false theorem, excess hypothesis, invalid hypothesis drop, changed norm, or conclusion-shaped assumption was found. Before dispatch, fix the missing derivative-product import and the inconsistent module/package dependency table. Add the explicit Part 14b consumer accounting described below. This is statement/design assurance, not proof or frozen-anchor sealing.

Auditor marker: `dsgn-n3`. Date: 2026-10-27. Scope: all of Appendix A, N Part 3, and applications in N Parts 7/11/12, I Part 5, P Parts 14a/14b, with the additional cross-track references checked. Read-only permission: only this report was written persistently; temporary probes were confined to `.lake/abi-scratch/`. No git mutation, source edit, library build, or network lookup was used.

## Snapshot and method

Worktree `/root/code/KAM-inp-design-n3`, branch `inp-design-n3`, HEAD `0fcb7de5fd9b4dd270fbcd5445af6d6bd95dd251`. Source/packet repository `/root/code/KAM-inp` was at `f9cb624ccdb2e9728e27bb8213095e66b885edf5` when inspected. Part 14b is absent from the audit worktree, so its actual source was read in `/root/code/KAM-inp`; absence from the worktree was not treated as absence of the consumer.

| Frozen audit input | SHA-256 |
|---|---|
| `docs/tracks/N/design/PART3-LEAN-DESIGN.md` | `0b62af1856a02531821fd87e98a9cc3d6b9b9d565ac058b4663f8b6c18b7f896` |
| `.drafts/design/NPart3Signatures.lean` | `1401a7d605221d802b45c280797d2bdb19c6e024a8c2b57e3f4a1035528e63a1` |
| `blueprint-N/parts/p3-hamiltonian-ode.tex` (identical in both worktrees) | `ae9ea3c57b401be389cd9a7e54d9508de50abe33bdc24f5d49a16fffcd43a17d` |
| `/root/code/KAM-inp/docs/graph/N/packets/N-p3a.nodes.md` | `18bbd1eb4fc56c9e6c401f585a4337e06cada6e0f494375750b83aa1b93229a1` |
| `/root/code/KAM-inp/docs/graph/N/packets/N-p3b.nodes.md` | `fffeaec0aa9ade1ca7c234ec7a71711a88e947bde3e7df88e5bc9ef9a62a5c42` |
| `/root/code/KAM-inp/blueprint-P/parts/p14b-secular-box.tex` | `b657768a1dd8d111614931903fadd4a5caf87228113b972be275dee5f47cc942` |
| `manifest/frozen-anchors.json` | `95ab954c0479944c1a314487276da31c6bf1af8eebbfbd49e88c06cd01cf4cdf` |

The Appendix A fenced block is byte-for-byte equal to the signatures file (35,448 Unicode characters; 683 lines). Inventory: 17 definitions, 3 structures, 58 theorems, and 3 anonymous examples. The graph packets are incomplete coverage of the current Part 3: reviewed records were checked directly, proposed records were not used to override the blueprint, and current nodes absent from those packets were checked against the actual TeX. In particular the Newton families and invariant-set definition still need graph accounting.

Method: focused design audit, with a separate adversarial reread of candidate findings. Tried the degenerate dimensions n/N=0,1, empty compact sets, empty and singleton time intervals, negative L/Vbar, finite and infinite endpoints, off-interval representatives, non-C1 fields in the dropped-premise statements, and the noncylindrical P domains. No separate reviewer or proof-completion assurance is claimed.

## Findings and required fixes

**F1 — medium, missing Mathlib import; reproduced and refuted against the actual library.** Design §§2, 3 and 7.1 use “`HasDerivAt.prodMk`” and “`hasDerivAt_pi`”. Neither is visible under Appendix A's exact imports. A `#check` probe reports:

```text
error(lean.unknownIdentifier): Unknown constant `HasDerivAt.prodMk`
error(lean.unknownIdentifier): Unknown identifier `hasDerivAt_pi`
```

Both exist, with the needed product/coordinate derivative types, in `Mathlib/Analysis/Calculus/Deriv/Prod.lean`, L52 and L81. Adding the following import makes the full name probe pass:

```lean
public import Mathlib.Analysis.Calculus.Deriv.Prod
```

Add it to `NewtonReduction` (and any other module that uses these declarations). This is an import-plan fix, not a correction to `newton_reduction`, `fixed_reduction`, or `restricted_reduction`. The statements elaborate without the import because their unimplemented bodies do not reference those names. Two additional initial probe failures (`ball_subset_ball`, `ordConnected_Ioo`) were refuted: the probe initially omitted Appendix A's `open Set Metric`; both resolve in the intended namespace context. They are not findings.

**F2 — medium, dependency tables disagree; confirmed by symbol ownership.** Design §6 says “`ODE.Basic, ODE.UniformPeriodic ... ← ODE.Hamiltonian`”, but §7 schedules N3-2 after only N3-1, concurrently with N3-3, which owns `UniformPeriodic` and `angleShift`. `ham_periodic` needs `angleShift` in its statement. Thus that exact import DAG cannot implement that exact package schedule. Minimal fix: move `angleShift` to `Basic` (or a small phase-space definitions module owned by N3-1), then have `Hamiltonian` import that module instead of `UniformPeriodic`. No Hamiltonian theorem otherwise needs periodic uniform data. Alternatively delay N3-2 until N3-3; update the wave/critical-path claims consistently.

The same module DAG says “`ODE.Basic ← ODE.Exit`”, while `isInvariantSet_equilibria` is explicitly proved using `gen_uniqueness`. Add `ODE.Uniqueness` as an import of `Exit`. Both are owned by N3-5, so this is not a package cycle. The resulting DAG remains acyclic and every planned module is below 1500 lines (largest estimate 650).

**F3 — low, consumer documentation incomplete; not a theorem failure.** §8 omits P Part 14b and groups N Part 11 with the equal-block periodic API. Record the actual bridges and their owners:

- P14a `bpP:p14:moving-ode`, source L106–115: bridge the frozen `IsMovingSolutionOn` on the physical collision-free domain. `ham_reduction` cannot directly be instantiated with U=univ unless H is C2 globally; do not assert that. The explicit P lemma is valid and was independently compiled in a probe.
- P14b `bpP:p14:sb-pred`, source L218–224: on curves staying in the open regular set S, bridge frozen `Iso.IsHamiltonianSolutionOn H univ J z` to `IsSolutionIn X_H S J z`. The source expressly says “pattern only”; it does not falsely claim direct applicability of `ham_reduction`. The general open-domain bridge was compiled.
- P14a `stepP:p14:li-max`, L252, refers to the **proof** of `ham-periodic` for arbitrary translations tau_k (2*pi shifts in selected chart angles). The integer-angle signature cannot directly be applied to those translations. Keep the local translation proof in P, or export the optional arbitrary-translation helper below. No period-1/2*pi identification is permissible.
- N11c `bpN:p11:continuation`, L35–40, proves its own independent periodic/transverse-dimension uniform-data lemma, then applies generic `gen_continuation`. `gen_continuation_periodic` alone has equal-sized blocks and cannot replace that argument. P14a `bpP:p14:uniform-data`, L239–244, similarly builds its own chart uniform data and applies generic continuation.

These local source lemmas discharge the apparent carrier gaps. Their ownership and extra signatures should appear in the respective consumer designs; they need not be added as premises to a Part 3 theorem. No existing signature is marked FAIL, so there is no mandatory corrected replacement signature.

## Signature-by-signature ledger

Line numbers refer to the pinned signatures file. “PASS” means a correct design statement/body and usable source interface, subject to the implementation/import fixes above. It does not certify the provisional proof. Helper labels identify their owning source node rather than inventing a frozen source result.

| Lean name and line | Blueprint label | Verdict | Reason |
|---|---|---|---|
| `KAM.ODE.IsSolutionIn` (L50) | `bpN:p3:gen-sol` | PASS | Literal membership plus two-sided derivative, on every declared time set. |
| `KAM.ODE.isSolutionIn_univ_iff` (L54) | `bpN:p3:gen-sol (helper)` | PASS | Eliminates the trivial membership clause; arbitrary F is allowed. |
| `KAM.ODE.IsSolutionIn.mono` (L58) | `bpN:p3:gen-sol#consequences` | PASS | Restriction keeps the original two-sided derivatives. |
| `KAM.ODE.IsSolutionIn.continuousOn` (L62) | `bpN:p3:gen-sol#consequences` | PASS | Pointwise differentiability gives continuity within J. |
| `KAM.ODE.isSolutionIn_congr_of_isOpen` (L66) | `bpN:p3:gen-sol#consequences` | PASS | Openness supplies the local equality needed for derivatives. |
| `KAM.ODE.IsSolutionIn.union_of_isOpen` (L71) | `bpN:p3:gen-sol#consequences (helper)` | PASS | Each point has an open neighbourhood with a genuine solution. |
| `KAM.ODE.gen_symmetry_shift` (L77) | `bpN:p3:gen-symmetry` | PASS | Correct preimage J-c and derivative under translation. |
| `KAM.ODE.gen_symmetry_neg` (L83) | `bpN:p3:gen-symmetry` | PASS | Correct -F and reflected time domain; no C1 needed. |
| `KAM.ODE.gen_symmetry_neg_contDiffOn` (L88) | `bpN:p3:gen-symmetry` | PASS | Negation preserves every stated differentiability order. |
| `KAM.ODE.gen_symmetry_translate` (L92) | `bpN:p3:gen-symmetry` | PASS | Both domain invariance and field invariance are explicit. |
| `KAM.ODE.gen_symmetry` (L97) | `bpN:p3:gen-symmetry` | PASS | Faithful conjunction; smoothness clause is separately conditional. |
| `KAM.ODE.gen_lip` (L116) | `bpN:p3:gen-lip` | PASS | M,L chosen after F,W,K; no convexity of K is imposed. |
| `KAM.ODE.UniformData` (L122) | `bpN:p3:gen-uniform` | PASS | Five literal data clauses; positivity and all ball bounds retained. |
| `KAM.ODE.closedThickening` (L130) | `bpN:p3:gen-uniform-compact` | PASS | Existential thickening, empty when K is empty; no infDist fallback. |
| `KAM.ODE.gen_uniform_compact` (L133) | `bpN:p3:gen-uniform-compact` | PASS | ProperSpace supplies compact balls; all three conclusions retained. |
| `KAM.ODE.angleShift` (L147) | `bpN:p3:gen-symmetry (helper)` | PASS | Exactly the period-one integer angle shift (k,0). |
| `KAM.ODE.gen_uniform_periodic` (L150) | `bpN:p3:gen-uniform-periodic` | PASS | Cylindrical period-one field; delta <= 1 and uniform bounds retained. |
| `KAM.ODE.picard_lindelof_ball` (L168) | `bpN:p3:ext-pl` | PASS | Correct local norm bound, arbitrary t0, and within derivative; see E1. |
| `KAM.ODE.gen_short_forward` (L177) | `stepN:p3:short-boot/short-ext` | PASS | Valid forward helper for arbitrary total F and raw derivatives. |
| `KAM.ODE.gen_short` (L185) | `bpN:p3:gen-short` | PASS | Correct strict time bound; ball membership follows with M > 0. |
| `KAM.ODE.gen_uniform_exist` (L193) | `bpN:p3:gen-uniform-exist` | PASS | Ball Lipschitz data suffice without global C1/openness; exact time retained. |
| `KAM.ODE.gen_local` (L200) | `bpN:p3:gen-local` | PASS | Two-sided existence and compact-uniform time before x0,t0. |
| `KAM.ODE.gen_uniqueness` (L216) | `bpN:p3:gen-uniqueness` | PASS | Every order-connected J, including endpoints and singleton; no confinement. |
| `KAM.ODE.gen_uniqueness_inter` (L222) | `bpN:p3:gen-uniqueness` | PASS | Intersection contains the initial time; exact EqOn restriction. |
| `KAM.ODE.eIoo` (L238) | `bpN:p3:gen-maximal (helper)` | PASS | Real times compared to EReal endpoints; no toReal truncation. |
| `KAM.ODE.IsMaximalSolution` (L243) | `bpN:p3:gen-maximal` | PASS | Source maximality property, including all interval types; EqOn only. |
| `KAM.ODE.IsMaximalSolution.neg` (L254) | `bpN:p3:gen-maximal (helper)` | PASS | Correct endpoints (-Tp,-Tm), initial point, and -F. |
| `KAM.ODE.gen_extend` (L259) | `bpN:p3:gen-extend` | PASS | Nonempty interval is required; open extension with EqOn, not global equality. |
| `KAM.ODE.gen_maximal` (L266) | `bpN:p3:gen-maximal` | PASS | Existence from source premises; endpoint uniqueness and EqOn on its interval. |
| `KAM.ODE.gen_continuation` (L282) | `bpN:p3:gen-continuation` | PASS | Exact positive contrapositive, both tails nonvacuously inside maximal interval. |
| `KAM.ODE.gen_continuation_compact` (L291) | `bpN:p3:gen-continuation-compact` | PASS | Both ends, compact K contained in W; no angle boundedness added. |
| `KAM.ODE.gen_confinement` (L302) | `bpN:p3:gen-confinement` | PASS | Source a priori hypothesis; strict interior endpoint conclusion and uniqueness. |
| `KAM.ODE.gen_continuation_periodic` (L320) | `bpN:p3:gen-continuation-periodic` | PASS | Correct action-only confinement; full-state compactness not required. |
| `KAM.ODE.exitSet` (L341) | `bpN:p3:gen-exit` | PASS | Literal forward exit set inside J. |
| `KAM.ODE.gen_exit` (L345) | `bpN:p3:gen-exit` | PASS | Continuity suffices; least exit, frontier, prefix and supremum retained. |
| `KAM.ODE.IsInvariantSet` (L353) | `bpN:p3:gen-invariant` | PASS | Literal all-interval/all-solution invariance, not forward invariance only. |
| `KAM.ODE.isInvariantSet_equilibria` (L358) | `bpN:p3:gen-invariant` | PASS | Compare with the constant solution at the visited equilibrium in W. |
| `KAM.ODE.isInvariantSet_union` (L362) | `bpN:p3:gen-invariant` | PASS | Membership in either invariant set propagates on the whole J. |
| `KAM.ODE.gen_barrier` (L366) | `bpN:p3:gen-barrier` | PASS | Continuity plus all-interval invariance suffice in both directions. |
| `KAM.ODE.ham_smooth` (L381) | `bpN:p3:ham-smooth` | PASS | Frozen field; arbitrary differentiability order strengthens the integer statement. |
| `KAM.ODE.ham_smooth_c1` (L386) | `bpN:p3:ham-smooth` | PASS | Correct specialization k=1; inherited sorry dependency is not a proof receipt. |
| `KAM.ODE.ham_energy` (L392) | `bpN:p3:ham-energy` | PASS | Pointwise differentiability retained; frozen Hamiltonian cancellation gives zero. |
| `KAM.ODE.ham_periodic` (L398) | `bpN:p3:ham-periodic` | PASS | Integer angle translation; energy identity correctly restricted to J; see E2. |
| `KAM.ODE.ham_reduction` (L412) | `bpN:p3:ham-reduction` | PASS | Uses both frozen predicates; differentiability supplied on open W. |
| `KAM.ODE.newtonDomain` (L430) | `bpN:p3:newton-reduction (helper)` | PASS | Exactly strict positive mutual physical distances. |
| `KAM.ODE.newtonField` (L434) | `bpN:p3:newton-reduction (helper)` | PASS | Exact frozen force with G*mass_j and ordered displacement q_j-q_i. |
| `KAM.ODE.fixedDomain` (L441) | `bpN:p3:newton-reduction (helper)` | PASS | Mutual collision exclusion plus positive central distances. |
| `KAM.ODE.fixedField` (L445) | `bpN:p3:newton-reduction (helper)` | PASS | Exact central force and eps-weighted mutual forces. |
| `KAM.ODE.restrictedDomain` (L453) | `bpN:p3:newton-reduction (helper)` | PASS | Uses frozen CollisionFree, not a parallel distance predicate. |
| `KAM.ODE.restrictedField` (L457) | `bpN:p3:newton-reduction (helper)` | PASS | Literal total formula matching frozen subtype field on its domain. |
| `KAM.ODE.restrictedField_eq` (L464) | `bpN:p3:newton-reduction (helper)` | PASS | Definitional equality on the frozen CollisionFree subtype. |
| `KAM.ODE.norm_le_planeLength` (L468) | `bpN:p3:newton-reduction (helper)` | PASS | Sup norm <= Euclidean planeLength, with no new norm instance. |
| `KAM.ODE.planeLength_le_sqrt_two_mul_norm` (L471) | `bpN:p3:newton-reduction (helper)` | PASS | Correct dimension-two upper norm comparison. |
| `KAM.ODE.planeLength_add_le` (L475) | `bpN:p3:newton-reduction (helper)` | PASS | Physical Euclidean triangle inequality. |
| `KAM.ODE.radius_eq_planeLength` (L480) | `bpN:p3:newton-reduction (helper)` | PASS | Definitional equality of the two frozen square-root formulas. |
| `KAM.ODE.lipschitzOnWith_inv3_smul` (L484) | `stepN:p3:nc-data (helper)` | PASS | Global Lipschitz on length >= r > 0; does not assume convexity. |
| `KAM.ODE.newton_reduction` (L489) | `bpN:p3:newton-reduction` | PASS | Exact all-time frozen Newton predicate; N=0,1 remain valid. |
| `KAM.ODE.fixed_reduction` (L495) | `bpN:p3:newton-reduction` | PASS | Exact all-time frozen fixed-center predicate, including eps. |
| `KAM.ODE.restricted_reduction` (L501) | `bpN:p3:newton-reduction` | PASS | Exact frozen restricted predicate on arbitrary J; subtype proof harmless. |
| `KAM.ODE.newtonRegion` (L508) | `bpN:p3:newton-continuation` | PASS | Physical separation and ambient sup velocity bound; matches source convention. |
| `KAM.ODE.fixedRegion` (L512) | `bpN:p3:newton-continuation` | PASS | Adds physical central separation to the Newton region. |
| `KAM.ODE.restrictedRegion` (L516) | `bpN:p3:newton-continuation` | PASS | Both primary separations and both sup block bounds retained. |
| `KAM.ODE.newton_uniform_data` (L522) | `stepN:p3:nc-data` | PASS | delta=rho/8; M,L depend on fixed N,G,mass,rho,Vbar only. |
| `KAM.ODE.fixed_uniform_data` (L527) | `stepN:p3:nc-data` | PASS | Same uniform radius, with fixed central and perturbation parameters. |
| `KAM.ODE.restricted_uniform_data` (L533) | `stepN:p3:nc-data` | PASS | Both singularities guarded; linear terms bounded using q,p bounds. |
| `KAM.ODE.newton_continuation` (L539) | `bpN:p3:newton-continuation` | PASS | Both ends, every tail start, rho>0; arbitrary Vbar is valid. |
| `KAM.ODE.fixed_continuation` (L550) | `bpN:p3:newton-continuation` | PASS | Both ends and central separation included in the escaped region. |
| `KAM.ODE.restricted_continuation` (L560) | `bpN:p3:newton-continuation` | PASS | Both ends and both bounded blocks in the escaped region. |
| `KAM.Nekhoroshev.ODE.Data` (L581) | `bpN:p3:s-N#data` | PASS | Four standing clauses; epsilon >= 0 is inside frozen perturbation predicate. |
| `KAM.Nekhoroshev.ODE.Wdom` (L589) | `bpN:p3:s-N#data` | PASS | Literal real cylinder with radius R+s; no total-extension choice. |
| `KAM.Nekhoroshev.ODE.holo_input` (L593) | `bpN:p3:holo-input` | PASS | Frozen real H and complex field, explicit real inclusion, correct periodicity. |
| `KAM.Nekhoroshev.ODE.lipschitz_X` (L602) | `bpN:p3:lipschitz` | PASS | C1 plus compact Lipschitz plus periodic cylinder data; dependence unchanged. |
| `KAM.Nekhoroshev.ODE.local_exist` (L613) | `bpN:p3:local-exist` | PASS | Frozen IsSolutionOn; arbitrary initial time and all-interval uniqueness. |
| `KAM.Nekhoroshev.ODE.energy` (L623) | `bpN:p3:energy` | PASS | Arbitrary H,U; pointwise differentiability comes from frozen IsSolutionOn. |
| `KAM.Nekhoroshev.ODE.IsMaximalSolutionOn` (L629) | `bpN:p3:continuation` | PASS | Exact specialization using frozen IsSolutionOn, not a new solution predicate. |
| `KAM.Nekhoroshev.ODE.continuation` (L638) | `bpN:p3:continuation` | PASS | All-interval maximality, restricted uniqueness, both action-compact tails. |
| `KAM.Nekhoroshev.ODE.uniqueness_closed` (L653) | `bpN:p3:uniqueness-closed` | PASS | L<0 gives empty interval; L=0 gives equality at 0; no lost case. |
| `KAM.Nekhoroshev.ODE.confinement_glue` (L662) | `bpN:p3:confinement-glue` | PASS | ClosedBall containment implies I0 in U; source a priori estimate and all outputs. |
| anonymous `ProperSpace` example (L679) | `bpN:p3:s-conv` | PASS | Product of finite real function spaces; inferInstance elaborates. |
| anonymous `ProperSpace` example (L680) | `bpN:p3:s-conv` | PASS | Nested finite real function spaces for Newton bodies; inferInstance elaborates. |
| anonymous `ProperSpace` example (L681) | `bpN:p3:s-conv` | PASS | Restricted phase space; inferInstance elaborates. |

## Dropped and altered hypotheses: every §4 item

| Design item | Verdict and reason |
|---|---|
| D1 | PASS. The bound is local to the closed ball; t0 is arbitrary, not chosen as a witness. See E1. |
| D2 | PASS. Raw two-sided derivative condition is exactly the short-time source premise; added ball membership follows from the strict time bound and M>0. |
| D3 | PASS. UniformData is the literal three ball properties plus delta>0 and M>=0 (L nonnegative by type). Its body has no C1 clause to lose. Extended use beyond the standing C1 context is harmless. |
| D4, uniform existence | PASS. Closed-ball Lipschitz implies continuity on the ball and the autonomous time condition is automatic. Completeness remains explicit. Picard–Lindelof and the short-time bound give the conclusion on the open interval; no information about F outside the ball is needed. |
| D4, barrier | PASS. The solution supplies continuity; IsInvariantSet supplies invariance on the entire interval. C1 and open W are not used. |
| D5 | PASS. Under open W, C2 H gives pointwise differentiability on W and C1 X_H there. Restriction to univ×U does not require U open. Actual existence/uniqueness applications retain the requisite openness. |
| D6, N>=2 | PASS. For N=0 all coordinate/pair conditions are vacuous. For N=1 the mutual force is zero; fixed-center force is still guarded by its central-domain condition. |
| D6, Vbar>=0 | PASS. For Vbar<0 the relevant region is empty, so uniform data can use any nonnegative M,L and positive delta; escape is automatic at the specified tail time. For Vbar>=0 the usual proof applies. Implementation must handle this empty-region case rather than select a negative M. |
| D6, initial point in W | PASS. neg_lt and pos_lt put 0 in eIoo; init plus isSolution gives x0 in W. |
| D7 | PASS. If L<0, Icc (-L) L is empty. If L=0, EqOn follows from h0. |
| D8 | PASS. Since Tp>0 and Tm<0, not-top/not-bottom means finite on the relevant side. The displayed positive implications are the exact contrapositives. |
| D9 | PASS. Strict endpoint inequalities follow by contradiction using uniform existence time; restriction preserves the two-sided derivatives at ±tau. |
| D10 | PASS. The source explicitly uses only continuity. The least exit lies inside J by order connectedness with 0 and an exit point, even when J is not closed. |
| D11 | PASS. Apply first exit to the reversed continuous curve, then apply invariance to the original z at the negative exit time and at 0. No invariance premise for -F is needed. |
| D12 | PASS. C^(k+1) gives C^k fderiv on the open domain for all stated orders, including smooth/analytic orders. k+1 is nonzero, so differentiability follows. |
| D13 | PASS. Equality of the translated image set is exactly W+(k,0)=W. |
| D14 | PASS. Real inclusion is necessary to compare vectors with real and complex coordinate carriers; the frozen real and complex fields are used. |
| D15 | PASS. Open U and its containment are standing source assumptions, not excess premises. Maximality is stated using the actual frozen solution predicate. |

Additional drops checked: `confinement_glue` does not separately assume I0 in U; this follows from rho>0 and `closedBall I0 rho ⊆ U`. `energy` intentionally has no analytic Data premise: the source explicitly permits arbitrary H,U. Definitions/symmetries/uniqueness extend to general normed real spaces where no finite-dimensional compactness is needed. ProperSpace or CompleteSpace is retained at every existence/compactness use. None of these changes loses a source conclusion.

Constant scopes were checked in the elaborated statement shapes: `gen_local`'s uniform epsilon precedes x0 and t0; uniform-existence duration is exactly delta/max M 1, independent of x and t0; compact and periodic constants follow the field/domain/compact-set inputs; Newton M,L follow N,G,mass,rho,Vbar (and the fixed-center parameters). There is no hidden dependence on a trajectory, its initial position, or its tail start. rho/8 is fixed, not existentially weakened.

## EReal maximal-solution API

**PASS.** `eIoo a b` contains real times, defined by a<coe t< b, with no use of `toReal` at infinite endpoints. `Tm<0<Tp` excludes degenerate/inconsistent endpoints and puts 0 in the interval. Its openness and order connectedness are standard consequences of the real embedding and order; these should be named helper lemmas as planned.

`IsMaximalSolution.maximal` quantifies over every order-connected J containing 0, including singleton, half-open, and closed intervals. This is essential for N12 `stepN:p12:fl-inverse` (L64), which uses a closed time segment to obtain **strict** maximal-endpoint inequalities. Restricting that field to open J would weaken an actual consumer. The current stronger field is valid because `gen_extend` extends every nonempty interval through included endpoints. For a singleton, use the local solution through its value; off-singleton derivatives of the original representative need not be preserved.

Endpoint uniqueness follows from equality of open real intervals and their nonempty neighbourhood of 0; no uniqueness of representatives off the interval is claimed. `.neg` correctly exchanges and negates endpoints. A maximal solution through each initial point can be selected for N12's flow construction, with choice independence on the actual interval; differentiable dependence remains N12's separate external/proof obligation, not a Part 3 conclusion. The Prop structure is the source-defined maximal object, not a hidden hypothesis smuggling existence into `gen_maximal`.

## Frozen objects, definitions, and consumers

**Frozen-object verdict: PASS.** Read the complete bodies of the five solution predicates, real/complex Hamiltonian fields, realHamiltonian, analytic integrable/perturbation inputs, restricted subtype field and CollisionFree, radius and planeLength. Also read the actual `IsMovingSolutionOn`, `IsNewtonSolutionOn`, and `MovingUniqueOn` definitions for the additions. The Newton/fixed forces preserve G, masses, eps, signs, and physical lengths. The restricted bridge uses the frozen CollisionFree proof and literal subtype field, not an assumed equality between two unrelated fields. The Hamiltonian bridge supplies, rather than drops, the differentiability guard in the frozen predicates.

P's finite-time `IsNewtonSolutionOn` is a different frozen predicate (G=1); the all-time `newton_reduction` must not be advertised as its interval bridge. P14a's reconstruction is a separate local calculation. Nothing in the audited signatures falsely equates the two.

**Definitions/structures verdict: PASS.** For all 17 definitions and 3 structures: BODY_MATCH=OK; PUBLIC_CARRIER=OK; WELL_DEFINEDNESS=N/A_LITERAL; CHARACTERIZATION=N/A_LITERAL; CHOICE_INDEPENDENCE=N/A. There are no arbitrary-witness choices, global instances on bare types, or invented defaults. Total inverse powers at collisions do not affect a theorem: every force application is inside the corresponding strict collision-free domain. Off-time-interval values of solution representatives are unconstrained, as intended. UniformData is a source definition; maximality is a source definition; Data contains source standing assumptions. None assumes an intermediate analytic result as a source premise.

Binder classification: ambient carriers, scalar/function data and normed-space instances are TYPING; open/C1/compactness/domain and solution/initial-value premises are SOURCE; expanded Data clauses are STANDING; the repaired external quantifiers in E1 are explicitly declared source-text corrections. UniformData fields expand to delta positivity, M nonnegativity, ball containment, norm bound and Lipschitz bound. MaximalSolution expands to endpoint signs, initial value, the solution clause and the universal source maximality clause. IsInvariantSet expands to the universal all-interval property. The a priori confinement binders in the two glue theorems are SOURCE, since the blueprint states exactly those conditional helper theorems. EXCESS=0; no owner ruling is silently invoked to change any frozen object.

| Consumer | Applicability verdict and actual supplied data |
|---|---|
| N7 `bpN:p7:real-system`, transfer/exit/energy | PASS. C2/C1 and openness on real cylinders, genuine orbit predicate; compact action bounds and integer periodicity suffice. Weighted proof norms enter only local estimates; Part 3 uses the frozen ambient max norm. |
| N11a/c extended systems | PASS through local `bpN:p11:continuation`. Generic E accepts the extended finite-product space and its scaled field. Energy/skew cancellation for that scaled field is proved locally in N11c, not falsely obtained by substituting into the canonical `ham_energy`. |
| N12 flow, inverse, stopped exit and assembly | PASS. All-interval maximality covers closed segments; shift/reversal and local uniqueness apply. Analytic Data and real-domain equality supply holo_input. Continuous/differentiable dependence is outside Part 3. |
| I5 real Hamiltonian, torus invariance, barrier, continuation | PASS. n=2, U=B, open larger W, C2 H and periodicity give the frozen predicate bridge. Invariant torus sets and energy level supply the barrier inputs. Compact action projection permits global continuation without bounded lifted angles. |
| I7/8 restricted flow | PASS. `restricted_reduction` is for arbitrary J and the actual CollisionFree subtype field. |
| P1/6 Newton and fixed-center torus orbits | PASS. The all-time frozen Q,V predicates match the pair of finite Pi blocks; finite-product derivative lemmas need F1's import. |
| P14a physical flow and chart lift | PASS through the local moving-ode and chart uniform-data lemmas, with F3's accounting. The physical Phase(n*2) is the canonical finite-function product, not an ambient norm replacement. |
| P14b secular slow flow and full lift | PASS through `bpP:p14:sb-pred`. ham_smooth applies with n=4 to the full Phase(2+2) field and n=2 to the slow field; generic maximality/compact continuation apply on the slow regular domain. Local uniqueness is used only where the competing curve stays in the open regular set, then the separate open/closed argument extends equality. No global C2 premise is available or needed. |

For clarity, these optional public helpers express the two consumer adaptations without strengthening source hypotheses (proposals only; not edits):

```lean
-- On a curve that stays in an arbitrary regular open phase domain:
theorem iso_solution_iff_in {n : ℕ}
    {H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ}
    {W : Set ((Fin n → ℝ) × (Fin n → ℝ))}
    (hW : IsOpen W) (hH : ContDiffOn ℝ 2 H W)
    {J : Set ℝ} {z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)}
    (hzW : ∀ t ∈ J, z t ∈ W) :
    KAM.Iso.IsHamiltonianSolutionOn H Set.univ J z ↔
      KAM.ODE.IsSolutionIn (KAM.hamiltonianVectorField H) W J z

-- Arbitrary chart translation, including shifts by 2*pi in selected coordinates:
theorem ham_translate {n : ℕ}
    {H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ}
    {W : Set ((Fin n → ℝ) × (Fin n → ℝ))}
    (hW : IsOpen W) (v : (Fin n → ℝ) × (Fin n → ℝ))
    (hWv : (fun x => x + v) '' W = W)
    (hHv : ∀ x ∈ W, H (x + v) = H x) :
    ∀ x ∈ W, KAM.hamiltonianVectorField H (x + v) = KAM.hamiltonianVectorField H x
```

The first helper's exact mathematical content was proved in the probe using the frozen Iso predicate; the second has the same local derivative-translation argument as ham_periodic and is not claimed kernel-checked here. Neither is needed as an extra hypothesis of an existing source theorem.

## Package and Mathlib verdicts

**Package verdict: PASS WITH FIXES F1–F2.** Proposed module sizes are 200–650 lines, with a 1500-line hard cap; package totals across multiple modules do not violate the cap. N3-10a's explicit Part 1 gates are legitimate dependencies to be proved, not new premises. N3-10b must not import an unproved sibling signature as a production substitute. The general layer uses frozen definitions only, without provider/DRAFT_SORRY imports. A shared Hamiltonian module may import frozen N definitions for the N/I bridge without importing an N provider; its namespace/location remains shared.

The risk advice “keep L and M opaque” (§9.1) must mean keep chosen constants abstract during proof, not declare Lean `opaque` (hard rule 4). Package briefs must repeat all 11 current AGENTS hard rules; §7's displayed two-rule excerpt is not a complete current brief template.

**Mathlib verdict: PASS after F1's import correction.** The probe checked 79 declarations named in the design (full types printed), then additionally checked `ContDiffOn.pow`, `.smul`, and `ContinuousLinearMap.fst/snd`. The important side conditions match: Picard–Lindelof needs completeness and ball-local bounds; the locally-Lipschitz compact theorem needs IsCompact; ContDiffAt.exists_lipschitzOnWith is order 1; fderiv_of_isOpen needs m+1<=n; sqrt needs a nonzero radicand; thickenings need ProperSpace for compactness. Both ODE uniqueness directions have the intended interval/one-sided-derivative form. All 79 name checks pass with the intended opens and the single added Deriv.Prod import. No missing Mathlib theorem is substituted by a hypothetical API.

## Source errata and deviations for handoff

**E1 — blueprint transcription defect, confirmed; already described in design B1.** `blueprint-N/parts/p3-hamiltonian-ode.tex`, `bpN:p3:ext-pl`, L31–33: “with [norm F(y) <= M]” does not bind y to the ball, and “alpha(t0)=x” uses an unintroduced t0. The REVIEWED graph record explicitly notes both. The signatures repair this by quantifying t0 and requiring `∀ y ∈ closedBall x a, ‖F y‖ ≤ M`. Mathlib's actual `norm_le` field confirms the local interpretation. This does not authorize changing a pinned primary source.

**E2 — blueprint endpoint-of-domain wording, confirmed; already described in design B2'.** `bpN:p3:ham-periodic`, L405: “H composed with (z+(k,0)) = H composed with z” needs “on J”. Periodicity is assumed only on W and the curve need only stay there on J. Counterexample to global equality: n=1, W=R×(-1,1), H=0 for |I|<1 and H=theta for |I|>=1, J={0}, z(t)=(0,t^2). At 0 the derivative is the zero field and the curve lies in W; at t=2 the two Hamiltonian values after an integer angle shift differ. The signature correctly restricts the equality to t∈J. This is a declared correction of source prose, not an unexplained weakening.

B2's reversal dependency is harmless: raw-derivative short-time lemmas do not assume C1, and reversal has a separate no-regularity statement. Unused hypotheses are optional strengthenings, not mathematical errata. No new suspected defect of a pinned external paper or frozen declaration was found. No mathematical deviation was introduced by this audit.

## Verification and limitations

- `nice -n 5 lake env lean .drafts/design/NPart3Signatures.lean`: exit 0, exactly 53 diagnostics, all `warning: declaration uses sorry`; run once. This checks the exact 683-line input, not a reconstruction.
- Name probe under exact imports initially failed for the two Deriv.Prod declarations; after adding that import and retaining `open Set Metric`, all 79 checks passed, exit 0. Temporary probe only.
- Bridge probe: exit 0, no warnings/errors. Proved frozen N/I predicate equivalence, arbitrary-open-domain Iso bridge, actual `IsMovingSolutionOn` bridge, and `eIoo bot top = univ`. `#print axioms` for each: `[propext, Classical.choice, Quot.sound]`; no sorryAx. These demonstrate the local consumer interface calculations, not the analytic smoothness input or the entire consumer theorem.
- `scripts/lint_sources.sh`: exit 0. Output: `check_lean_modules: PASS (219 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (144 frozen declarations)`.
- No targeted `lake build` was run: this report creates no Lean module and the specific audit brief requires read-only inspection plus direct signature elaboration. No library rebuild was authorized or needed.
- Existing “proved from siblings” declarations `gen_symmetry`, `gen_uniqueness_inter`, and `ham_smooth_c1` still transitively depend on provisional sibling proofs. An absence of a local sorry token is not axiom closure. The 53 placeholders remain design obligations; no Part 3 source node is certified PROVED by this report.
- Temporary probes/logs were deleted after extracting evidence. The design/signatures hashes were rechecked before handoff. Only the requested report is a persistent audit change.

Closeout: 78/78 named signatures and 3/3 examples classified; all D1–D15 deviations checked; every specified consumer checked against its actual source, including P14b in the source repository. Remaining work is the documented import/DAG and consumer-accounting fixes, followed by proof implementation and independent proof audits. No signature replacement is required by this audit.
