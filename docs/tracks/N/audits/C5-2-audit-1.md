# C5-2 independent package audit 1

**Overall verdict: PASS WITH NOTES.** The C5-2 gauge interior and flow (a),(d) implementation is proved and matches the binding design. No mathematical blocker, conclusion-shaped premise, or unauthorized proof escape was found. This is acceptance of infrastructure, not sealing any I/N/P frozen theorem. There is no provider or frozen theorem anchor in this package; provider/anchor equality and seal-body probes are therefore not applicable.

Date: 2026-10-28. Marker: `maud-c52-1`. Permission envelope: read-only audit, targeted serial Lean checks and temporary probes; the only persistent authored repository file is this report at the user's exact worktree path. No commits, repairs, network access, or subagents.

## Frozen inputs and scope

Snapshot `frozen-v1`: HEAD `4ba40b0776985cfe877ce8bc93ee910abf52f738`; parent `0a65ff3` merges delivered C5-1. The initial observed `inp` was `2dc2c5afd96498a9908350f8454cfd2346ad5c6d`. `git diff inp...HEAD` reported multiple merge bases and selected `9415aec0ff2ff12402d6556302a5ce5406aeb353`; its complete code delta is the addition of `KAM/Canonical/Flow.lean` (311 lines) and inherited `KAM/Canonical/Setting.lean` (148 lines). Both files were inspected; the deep proof audit focuses on Flow. Repeating the comparison with the pinned initial inp hash gives the same two files. The integration branch moved during the audit; it is not the immutable package snapshot.

The handoff asks for `inp-c51...HEAD`; that branch has diverged and that triple-dot also includes many integration documents and unrelated modules. The package commit itself (`git diff HEAD^ HEAD`) adds only Flow. No unrelated integration delta is attributed to C5-2. The handoff's 309-line count is stale; the actual file has 311 lines.

| Input | SHA256 |
|---|---|
| `KAM/Canonical/Flow.lean` | `14fed1914185ff2796afb4f548353fdf9c0807770d9dcc54f3b493e5483e47f3` |
| `KAM/Canonical/Setting.lean` | `49a4a9eb675de5a375ff138568f5bce11617db7dfaaeb55657cfc1fca68ebd10` |
| `blueprint-N/parts/p5-canonical-maps.tex` | `40560931653c109631d9edbebe453856a49dbb925002536cefc423aa15e01db0` |
| `docs/tracks/N/design/PART145-LEAN-DESIGN.md` | `88954f34dc99efba820691abc209fd8bd334d93cdae90272732090e001abc8ac` |
| `docs/tracks/N/design/PART145-design-audit-1.md` | `7492d710f4ad5a7f7ae27975a20f4a2a8cba73bfd9bbd71d76a2646e772404a4` |
| `docs/tracks/N/design/PART145-design-audit-2.md` | `0ec8c1c2e58ba65217743cf3c491346b0042203449c7698ed2a899e86012c2df` |
| supplied untracked `docs/tracks/N/audits/C5-2-handoff.md` | `e920cd7a268f71b6d4af7cd1d94b6134931f1da2b1c2f995b0dddfa94f8da7a3` |

Authority read: AGENTS.md, PLAN, DECISIONS, the absolute package brief, handoff, Part145 design (especially D6/D7, B4/B5, C5-2 plan, Appendix A), both design audits including binding round-2 notes, blueprint-N Part 5 and Part 3 solution/totality conventions, Track N statement, and frozen `KAM.Nekhoroshev.IsSolutionOn` for the endpoint convention. No frozen theorem is implemented or imported by the new Flow file. Frozen field definitions used by inherited Setting were checked at their actual bodies.

Method: focused tier-2 source/statement/proof audit with a separate adversarial pass against the choice construction, endpoint derivatives, zero field, empty domain, gauge scaling, and translation direction. Positive findings below are supported by source inspection and fresh checks, not by the prover's receipts. No new suspected mathematical defect survived that pass. No independent second reviewer was spawned.

## Declaration inventory

All declarations below have prefix `KAM.Canonical`. Lines refer to frozen-v1. PASS applies to this helper's stated scope, not a headline theorem or all of blueprint flow (a)–(e).

| Node | Declaration (file:line) | Verdict | Reason |
|---|---|---|---|
| flow gauge | `gaugeInterior` (Flow:48) | PASS | Literal closed gauge-ball inclusion; meaningful for all real radii. |
| flow object | `flow` (Flow:54) | PASS WITH NOTES | Same chosen entire curve for every t; source-domain characterization and choice independence are proved by flow_a. Off-domain totalization has no source guarantee. |
| flow standing premises | `SmallField` (Flow:59) | PASS | Exactly openness, holomorphy, nonnegative epsilon, epsilon ≤ 1/2, field bound. |
| gauge openness | `isOpen_gaugeInterior` (Flow:85) | PASS | Compact gauge ball and ordinary metric thickening; no lost gauge factor. |
| gauge monotonicity | `gaugeInterior_mono` (Flow:102) | PASS | Correct reverse inclusion when radius decreases; all real radii allowed. |
| gauge containment | `ball_subset_gaugeInterior` (Flow:108) | PASS | Triangle inequality gives c′ + (c − c′) = c. |
| `bpN:p5:flow` (a) | `flow_a` (Flow:244) | PASS | All four exact design clauses: initial value, genuine solution, uniqueness on J ∩ [-1,1], sharp displacement. |
| `bpN:p5:flow` (d) | `flow_d` (Flow:273) | PASS | Equality of translated interiors and translated trajectories; assumptions exactly match source. |
| inherited setting | `poissonBracket` (Setting:38) | PASS | Literal angle-first bracket, source sign. |
| inherited setting | `adPow` (Setting:43) | PASS | Literal recursion with bracket on the right by phi. |
| inherited setting | `scaledNorm` (Setting:50) | PASS WITH NOTES | Literal max of divided component norms; is a norm only for positive scales, as required at use sites. |
| inherited setting | `scaleCLE` (Setting:53) | PASS | Invertible diagonal complex scaling with positive widths. |
| inherited setting | `norm_scaleCLE` (Setting:58) | PASS | Connects the actual gauge to the scaled norm, including n=0. |
| inherited setting | `symplFormC` (Setting:65) | PASS | Complexification of the frozen real form, with its stated sign. |
| inherited setting | `poissonBracket_eq_fderiv_field` (Setting:81) | PASS | Unconditional algebraic identity with the actual frozen complex field. |
| inherited setting | `poissonBracket_antisymm` (Setting:88) | PASS | Unconditional antisymmetry. |
| inherited setting | `differentiableOn_poissonBracket` (Setting:95) | PASS | Openness and both holomorphy inputs are source premises. |
| inherited setting | `differentiableOn_adPow` (Setting:106) | PASS | Induction gives holomorphy on the same open domain. |
| inherited setting | `poissonBracket_eq_zero_of_snd` (Setting:137) | PASS | Both action-only conditions; derivative-zero fallback is handled explicitly rather than assumed differentiable. |
| inherited reality predicate | `RealOn` (Setting:143) | PASS | Literal imaginary-part-zero condition on real points in U. |

Private proof spine also inspected: `isCompact_gaugeBall` (70), `exists_gaugeInterior_gt` (119), `contDiffOn_one_of_smallField` (143), `solution_eqOn` (151), `exists_solution` (161), and Setting's `clm_apply_prod` (69) and `fderiv_fst_eq_zero_of_snd` (114). These are proved helpers, not assumed premises.

## Binder and premise audit

The following is the expanded common telescope of flow_a/flow_d. SOURCE is from blueprint p5:45,47,50; TYPING includes the binding gauge formulation in design D7/B4. No STANDING, RULED additional logical input, or EXCESS premise is hidden in SmallField.

| Binder / expanded field | Bin | Justification |
|---|---|---|
| `E : Type*` | TYPING | Generic finite complex phase space. |
| `[NormedAddCommGroup E]` | TYPING | Ambient norm and additive structure. |
| `[NormedSpace ℂ E]` | TYPING | Complex vector-space structure. |
| `[FiniteDimensional ℂ E]` | TYPING | Source finite dimension, needed for compactness and regularity. |
| `W : E ≃L[ℂ] E` | TYPING | Binding gauge realization of nu. |
| `Ω : Set E` | TYPING | Source domain. |
| `F : E → E` | TYPING | Total representative of the source vector field. |
| `ε : ℝ` | TYPING | Source numerical upper bound. |
| `SmallField.isOpen` | SOURCE | Ω open. |
| `SmallField.differentiableOn` | SOURCE | F holomorphic on Ω. |
| `SmallField.eps_nonneg` | SOURCE | 0 ≤ ε. |
| `SmallField.eps_le` | SOURCE | ε ≤ 1/2. |
| `SmallField.bound` | SOURCE | For every z ∈ Ω, ‖W(F z)‖ ≤ ε. |
| flow_a: `z : E` | TYPING | Initial point. |
| flow_a: `hz` | SOURCE | z ∈ Ω^(1/2). |
| flow_d: `τ : E` | TYPING | Translation vector. |
| flow_d: `hτΩ` | SOURCE | Ω + τ = Ω, as an image equality. |
| flow_d: `hτF` | SOURCE | F(w+τ)=F(w) for w∈Ω. |

Counts per telescope: flow_a SOURCE=6, TYPING=9; flow_d SOURCE=7, TYPING=9; STANDING=RULED=EXCESS=0 in each. The quantified competitor curve, interval, interval-connectedness, membership of 0, solution predicate, and initial equality are inside the uniqueness conclusion, not outer assumptions suppressing existence.

Gauge helper parameters W, Ω, radii and points are typing; isOpen_gaugeInterior adds exactly the SOURCE premise Ω open, gaugeInterior_mono adds c′≤c, and ball_subset_gaugeInterior adds exactly closed-ball containment of z and the stated distance of w. There is no hidden sign requirement. Setting adds only the displayed source holomorphy/open-domain, positivity-of-scale, or action-only premises; no result-shaped bundle is introduced.

## Definition classification and choice audit

`gaugeInterior` is a literal predicate, `SmallField` a source-premise structure (all five fields expanded above). BODY_MATCH/PUBLIC_CARRIER are OK; WELL_DEFINEDNESS/CHARACTERIZATION are N/A_LITERAL; CHOICE_INDEPENDENCE is N/A. Each has DEFINITION_VERDICT PASS.

`flow` is a characterized, deliberately total representative (design D6 and Appendix A:851–855). Its body is byte-for-byte the prescribed formula apart from documentation layout. The proposition tested by `if h` depends on F, Ω, z, not t. Thus the definition selects one whole curve, rather than unrelated witnesses at individual times. The private existence theorem proves that proposition under SmallField and hz; flow_a:251–260 excludes the fallback before using the curve's specification. It does not assume existence.

Uniqueness is proved in solution_eqOn from real C1 regularity and gen_uniqueness. flow_a:262–271 applies it both to every competitor on the interval intersection and to the bounded constructed solution. Consequently all admissible choices give identical values on [-1,1], including both endpoints, and the displacement bound transfers to the exported choice. Entire curves outside [-1,1] are not claimed unique. The branch `else z` and values outside the source domain carry no dynamical meaning and are never used to discharge a source conclusion. This is the explicitly prescribed totalization, not a missing existence proof hidden by a junk value. Consumers must use flow_a, as the design instructs; global canonical-flow claims would exceed the proved characterization.

For the source-domain semantic unit: BODY_MATCH OK; PUBLIC_CARRIER OK as the binding total-representative interface; WELL_DEFINEDNESS OK (existence plus restricted uniqueness proved); CHARACTERIZATION OK (all four flow_a clauses); CHOICE_INDEPENDENCE OK on the full source locus; DEFINITION_VERDICT PASS WITH NOTES. No global ∃! of entire total curves is claimed or needed by this source, which defines X only for |t|≤1.

Inherited definitions: poissonBracket, adPow, scaledNorm, symplFormC and RealOn are literal formulas/predicates; scaleCLE is their explicit positive-width invertible-gauge construction. No fabricated global norm instance, divergent-series default, or assumed analytic conclusion. The fderiv convention outside differentiability is harmless in the unconditional bracket identities; analyticity is supplied in the analytic theorems. No extra definition was introduced by this auditor.

## Proof reconstruction and refutation pass

1. **Gauge geometry.** The closed gauge ball is the affine image of an ordinary compact ball under W inverse. For openness, translating a candidate w back from the nearby center preserves its gauge displacement and moves it by exactly the ordinary center distance (Flow:89–99). This refutes the possible objection that an omitted ‖W‖ factor is needed there. The larger-radius lemma minimizes gauge distance on the compact portion of Ω complement; both nonempty and empty-complement cases are covered.
2. **Actual existence and B5.** Set a=1/2+η, T=1+2η with η>0, G=W∘F∘W inverse, and transformed domain W inverse preimage Ω. The larger closed ball is contained in that domain; G is real C1 and Lipschitz on the compact ball by gen_lip. The actual field bound is ε, and εT≤a follows from ε≤1/2. Picard-Lindelof therefore constructs a curve on [-T,T]. Inside (-T,T), its within derivatives become genuine HasDerivAt (205–206). Applying gen_short with positive bound 1/2 gives confinement since a/(1/2)=T. This avoids division by ε, so ε=0 is covered without an exception. The gauge inverse transfers both confinement and the real derivative back to F. The entire closed interval [-1,1] lies strictly in (-T,T). Thus B5 is paid, including ε=1/2 and t=±1.
3. **Sharp displacement.** The mean value estimate on uIcc(0,t), with the actual ε bound, gives ‖α(t)−Wz‖≤|t|ε. The segment lies in the larger open time interval for either sign of t. No extra factor from W inverse is lost because the conclusion measures W(γ(t)−z).
4. **Choice and uniqueness.** The exported entire curve is exactly the chosen witness, so its HasDerivAt properties follow from the witness specification, not merely equality on a closed interval. This matters at endpoints: equality on [-1,1] alone would not transfer two-sided derivatives. Uniqueness is used only for point values and bounds, where closed-interval equality suffices. The scratch endpoint probes separately elaborate both HasDerivAt conclusions.
5. **Translations.** The proof establishes both +τ and −τ stability of the interior from Ω+τ=Ω; it does not incorrectly infer equality from forward stability alone. gen_symmetry_translate constructs the shifted solution, and uniqueness at z+τ gives the required identity with the correct direction. No periodicity outside Ω is assumed.
6. **Degeneracies and scope.** Empty Ω yields no admissible start; arbitrary negative gauge radii are handled by their literal inclusion predicate; dimension zero remains in scope. No completeness/compactness premise is smuggled in: both follow from finite dimension. The design's gauge restriction represents all designated weighted-max consumers, but not every complex norm on a fixed carrier. R2-02 concerns flow_e reality transport, which C5-2 does not claim.

## Verification receipts

All audit-controlled Lean invocations were serial, with `LEAN_NUM_THREADS=1`, `nice -n 5`, and default resource budgets. No other host worker was stopped or modified. The build reused the existing overlay; no clean/update/cache download or rebuild-from-scratch was performed.

Targeted build (one invocation through the required compile gate):

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-c52 KAM.Canonical.Flow KAM.Canonical.Setting
```

Exit 0; output:

```text
[inp-gate] slot 2 acquired 01:42:57 for KAM.Canonical.Flow KAM.Canonical.Setting
✔ [2926/2926] Built KAM.Canonical.Setting (3.6s)
Build completed successfully (2926 jobs).
```

The aggregate job count includes existing cached dependencies; only Setting was reported freshly built. Flow was up to date and was independently kernel-replayed below.

Exact-type/endpoint/axiom probe:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/C52Audit.lean
```

Exit 0, no errors or warnings. The five `example` types were generated from the actual design Appendix A theorem headers and inhabited by the matching export applied to every explicit binder in order: `hΩ W c`, `W h`, `W hz hw`, `h hz`, `h hτΩ hτF`. Two additional examples extracted HasDerivAt of the exported flow at +1 and −1 from flow_a. This checks exact interface use, not just name presence. The probe contained no sorry or resource override.

Exact axiom output (all eleven public theorems in both delta files, plus flow):

```text
'KAM.Canonical.isOpen_gaugeInterior' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.gaugeInterior_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.ball_subset_gaugeInterior' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.flow_a' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.flow_d' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.norm_scaleCLE' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.poissonBracket_eq_fderiv_field' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.poissonBracket_antisymm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.differentiableOn_poissonBracket' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.differentiableOn_adPow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.poissonBracket_eq_zero_of_snd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Canonical.flow' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Kernel replay (one invocation, both delta modules):

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Canonical.Flow KAM.Canonical.Setting
```

Exit 0; complete output:

```text
replaying KAM.Canonical.Setting
replaying KAM.Canonical.Flow
```

Independent source hygiene: both files satisfy module/header/import/docstring/public-section conventions and expose their noncomputable definitions; 311 and 148 lines, below the 1500 cap. The only set_option commands are two local `linter.unusedSectionVars false` settings, not resource overrides. No sorry, admit, axiom, unsafe, opaque, forbidden ambient type, recursion-depth, synthesis-heartbeat or heartbeat override occurs in either file. A recursive scan of their 24 project modules found zero provider or frozen-theorem import edges. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` has empty stdout, and `git diff inp...HEAD --check` exits 0 (both emit only the multiple-merge-base warning).

## Notes, errata and limits

- **Existing blueprint typo, confirmed in this snapshot:** `blueprint-N/parts/p5-canonical-maps.tex:59` says “symmetrically ... $T_->-1$”. The required inequality is $T_-<-1$: the maximal open interval must contain −1, and time reversal of T+>1 gives that strict lower endpoint. Refutation by time reversal confirms the sign error; it is already identified in design audit 1 and the design. The Lean theorem and its endpoint proof use the correct interval. This is a blueprint prose defect, not a newly verified defect in the pinned Pos93 PDF; the orchestrator owns any ledger update.
- **Generality deviation already explicit in D7/B4:** `ν=‖W·‖` covers the requested gauge consumers. No arbitrary-norm theorem on a fixed normed carrier is claimed. This is the reason for a note, not a new convenience premise.
- **Proof-route deviation already planned:** direct slackened Picard construction replaces the blueprint's maximal-solution/continuation route for (a); the same conclusion and endpoint convention are preserved. No change to a frozen declaration or source hypothesis.
- **Deferred:** flow (b),(c),(e), regularity in initial points, inverse maps, reality, symplectic preservation, and any I/N/P root theorem remain outside C5-2. The completed (a),(d) do not close them. R2-02 remains an instruction for the later reality consumer.

No production repair is requested for C5-2. The defined flow must continue to be consumed through flow_a on its stated source domain. Cleanup and lint receipts follow.


## Lint and closeout

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, solely for the brief's expressly allowed generated-root exception; complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (318 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The generated root was deliberately not edited. All other lint checks passed. The ABI subprocess inherits LEAN_NUM_THREADS=1 and the enclosing nice priority; it ran after the standalone probe and kernel replay had exited.

Closeout: all 20 public declarations in the inp delta classified; all 7 private proof helpers inspected; all 11 public theorem axiom closures checked; five exact-design interfaces and both endpoint derivatives elaborated; targeted build and two-module kernel replay exit 0; lint has only the authorized stale-root exception; protected-path diff empty; no production edits or git mutations. Source hashes were rechecked unchanged. Both audit-created scratch files (C52Audit.lean and C52-kernel.log) were deleted after their receipts were transcribed. The supplied untracked handoff was preserved.

**Final disposition: C5-2 PASS WITH NOTES, ready for integration of this infrastructure. No frozen I/N/P anchor is declared seal-ready by this report.**
