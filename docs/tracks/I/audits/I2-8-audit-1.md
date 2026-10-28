# I2-8 independent package audit 1

Verdict: **PASS for package I2-8 / `bpI:p2:iteration`**. No material defect found. This is a proved internal iteration node, not an I-G1 seal: **I-G1 remains FROZEN_UNPROVED**. No provider export or frozen seal is delivered by this diff, so provider/frozen type equality and a frozen seal-body probe are not applicable. I2-9 limit construction and I2-10 assembly remain outside this package.

## Snapshot and scope

Audited 2026-10-28 in `/root/code/KAM-inp-i28`, HEAD `5f001176789fd12702a4748c689d8938fe834161`, against `inp` `29fafd025364540626d0c289039e451ed815e986`. Both `git diff inp...HEAD` and the handoff's narrower `git diff inp-i26...HEAD` contain exactly the new 554-line `KAM/Iso/Apost/Iteration.lean`. Its SHA-256 is `1b674ead5c235396719fa7c4a8b8dbc7dcf009274482189edcdecb882962134c`. The handoff was already untracked when the audit started.

Read AGENTS, PLAN, DECISIONS, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the I2-8 handoff, track I statement, design v2 §7 and §B8, both PART123 design audits, blueprint Part 2 standing/ray/admissibility and iteration, the I-G1 frozen declaration and relevant energy/extended-torsion definitions, and the imported Step/Standing/Defs interfaces. User's exact worktree report destination overrides the generic brief's main-worktree destination. No production source or git state was changed.

Blueprint SHA-256: `f2bcdff3e5bd29a51e0246740f69e0bbd6419b925d8ae037b4e89ccf7a288968`; design SHA-256: `bea8d5212f8f979070ca44ce0295c8513021595dcd694f0178d0a0b221442a00`.

## Declaration fidelity

All names below have prefix `KAM.Iso.Apost.` and locators are in `KAM/Iso/Apost/Iteration.lean`.

| Node / role | Declaration | Verdict | Reason / note |
|---|---|---|---|
| sequence | `isoSeq_zero` (L58) | PASS | Exact initial pair; rfl. |
| sequence | `isoSeq_succ_fst` (L60) | PASS | Current pair, correction strip r_j − 2δ_j; rfl. |
| sequence | `isoSeq_succ_snd` (L65) | PASS | Current pair and isoNewS; rfl. |
| it-sums | `isoSumD` (L78) | PASS | Literal finite sum of d_i. |
| it-sums | `isoSumDK` (L83) | PASS | Literal finite sum of n d_i/δ_i. |
| it-sums | `isoSumB` (L88) | PASS | Literal finite sum of C_B d_i/δ_i. |
| it-sums | `isoSumT` (L94) | PASS | Literal finite sum of 2m² CDTbord d_i/δ_i². |
| it-sums | `isoSumD_zero` (L100) | PASS | Empty-sum identity. |
| it-sums | `isoSumDK_zero` (L102) | PASS | Empty-sum identity. |
| it-sums | `isoSumB_zero` (L104) | PASS | Empty-sum identity. |
| it-sums | `isoSumT_zero` (L106) | PASS | Empty-sum identity. |
| it-sums | `isoSumD_succ` (L108) | PASS | Exact finite-sum successor identity. |
| it-sums | `isoSumDK_succ` (L112) | PASS | Exact finite-sum successor identity. |
| it-sums | `isoSumB_succ` (L117) | PASS | Exact finite-sum successor identity. |
| it-sums | `isoSumT_succ` (L122) | PASS | Exact finite-sum successor identity. |
| it-sums | `isoDK_term_eq` (L128) | PASS | Algebraic identity; positive width and γ suffice; no smallness premise. |
| it-sums | `isoB_term_eq` (L140) | PASS | Algebraic identity; same. |
| it-sums | `isoT_term_eq` (L152) | PASS | Real-power identity at a+2; same. |
| it-sums | `iso_sums_le` (L166) | PASS | All five bounds, including D_j ≤ ν/2; γ ≤ Θ is an explicit intermediate input, derived in iteration. |
| it-stepsmall | `iso_stepsmall_seq` (L231) | PASS | Every-stage bound ≤ min(1, μ/2), from initial smallness and decay. |
| ray / it-step | `iso_ray_step` (L256) | PASS | Initial endpoint margin plus displacement ≤ d ≤ ν/2 gives both strict endpoints and ν−d margin. |
| it-step invariant | `IsoStage` (L269) | PASS | Six fields: admissibility, displacement, frequency displacement, DK, Gram inverse, bordered inverse. Internal induction predicate. |
| it-base | `iso_stage_zero` (L297) | PASS | Initial source data construct the invariant; all four sums vanish. |
| it-step | `iso_stage_succ` (L335) | PASS | Conditional induction helper; decay/smallness/sum inputs are proved and supplied by iteration, not added to its type. |
| bpI:p2:iteration | `iteration` (L474) | PASS | Exact design signature; all six blueprint conclusions, with an explicit sequence rather than bare existence. |

The `iteration` declaration header at L474–517 is byte-identical to the design's theorem at L1583–1626. An independently generated probe copied that design declaration under `audit_iteration_signature`, with body `by exact iteration hS hρinf hρ hμ hK he1 hsmall`; it elaborated at default limits. This checks every explicit binder in order against the source-facing signature rather than comparing only the conclusion.

Blueprint Part 2 L268–292 supplies the semantic comparison: (i) admissibility and error decay; (ii) both displacement sums, torus/frequency displacement and endpoint margin; (iii) DK; (iv) Gram inverse; (v) bordered inverse; (vi) successive increments on the next strip. The norms and carriers agree. `‖s_j • ωstar − s₀ • ωstar‖ = |s_j−s₀| ‖ωstar‖` by ray's distance identity, so the frequency conclusion is not weaker than the printed scalar product. The explicit ν/2 margin follows by combining the two displayed inequalities. The theorem proves an identified recurrence, stronger than bare sequence existence; e≤1 is an input retained throughout.

### Expanded binder audit for iteration

One row per outer data binder or expanded logical premise. Source locators: S = blueprint Part 2 L36–43 (standing); I = L268–273 (initial hypotheses); W = L255–257 (positive schedule widths). Bundled conjunctions are split below, including Params and each Hamiltonian bound.

| Binder / expanded input | Bin | Source |
|---|---|---|
| n | TYPING | S dimension |
| τ | TYPING | S exponent |
| M | TYPING | S bound |
| σK | TYPING | S derivative bound |
| σB | TYPING | S Gram bound |
| σT | TYPING | S bordered bound |
| σω | TYPING | S ray endpoint |
| ν | TYPING | S ray margin |
| γ | TYPING | S Diophantine constant |
| ωstar | TYPING | S real vector |
| D | TYPING | S complex phase domain |
| H | TYPING | S complex Hamiltonian |
| E₀ | TYPING | S target energy |
| ρ | TYPING | W initial width |
| ρinf | TYPING | W limiting width |
| μ | TYPING | I initial margin |
| e | TYPING | I error bound |
| s₀ | TYPING | I initial ray scalar |
| K | TYPING | I complex parameterization |
| hS.two_le | STANDING | S n≥2 |
| hS.tau_ge | STANDING | S τ≥n−1 |
| hS.M_pos | STANDING | S M>0 |
| hS.σK_pos | STANDING | S σK>0 |
| hS.σB_pos | STANDING | S σB>0 |
| hS.σT_pos | STANDING | S σT>0 |
| hS.σω_gt | STANDING | S σω>1 |
| hS.ν_pos | STANDING | S ν>0 |
| hS.ωstar_ne | STANDING | S ωstar≠0 |
| hS.isOpen | STANDING | S open D |
| hS.transl_mem | STANDING | S translation invariance |
| hS.holo | STANDING | S holomorphic H |
| hS.periodic | STANDING | S periodic H |
| hS.real | STANDING | S real H on real points |
| hS.bounds: DH | STANDING | S first bound |
| hS.bounds: X_H | STANDING | S second bound |
| hS.bounds: DX_H | STANDING | S third bound |
| hS.bounds: D²X_H | STANDING | S fourth bound |
| hS.bounds: D²H | STANDING | S fifth bound |
| hS.gamma_pos | STANDING | S γ>0 |
| hS.dio | STANDING | S Diophantine direction |
| hρinf | SOURCE | W ρinf>0 |
| hρ | SOURCE | W ρinf<ρ |
| hμ | SOURCE | I μ>0 margin |
| hK.holo | SOURCE | I B1 |
| hK.primary | SOURCE | I B1 |
| hK.real | SOURCE | I B1 |
| hK.ball_sub | SOURCE | I μ-ball inclusion |
| hK.deriv_le | SOURCE | I σK−μ |
| hK.gram: determinant | SOURCE | I det G≠0 |
| hK.gram: inverse bound | SOURCE | I σB−μ |
| hK.twist: determinant | SOURCE | I bordered determinant≠0 |
| hK.twist: inverse bound | SOURCE | I σT−μ |
| hK.s_gt | SOURCE | I s₀>1 |
| hK.margin | SOURCE | I ν(s₀)≥ν |
| hK.error_le | SOURCE | I invariance error≤e |
| hK.energy_le | SOURCE | I target energy error≤e |
| he1 | SOURCE | I e≤1 |
| hsmall | SOURCE | I initial smallness |

Counts: TYPING 19; STANDING 21; SOURCE 18; RULED 0; EXCESS 0. No instance hypotheses. Derived e≥0 and γ≤Θ are proved at L523 and L527–528, not assumed. IsUnit of a determinant over ℂ is precisely nonzero determinant. Expanded premise bundles contain no hidden iteration or limit result.

The distinct conditional helper `iso_stage_succ` assumes the induction invariant, uniform decay, smallness and sums. Those are the stated induction proof steps, all produced inside `iteration` at L530–537. It is not substituted for the unconditional source result. `iso_sums_le` similarly exposes γ≤Θ for arithmetic reuse; the initial admissible torus supplies it in `iteration`.

## Definitions and induction refutation checks

For each of `isoSumD`, `isoSumDK`, `isoSumB`, `isoSumT`:

- BODY_MATCH: OK; exactly the finite sums in blueprint L275–279 and proof L285–286.
- PUBLIC_CARRIER: OK; finite sums make sense for all supplied real parameters and natural j, including zero denominators under Lean's ordinary total division. No theorem uses singular arithmetic to claim a source bound.
- WELL_DEFINEDNESS: N/A_LITERAL; CHARACTERIZATION: N/A_LITERAL; CHOICE_INDEPENDENCE: N/A.
- DEFINITION_VERDICT: PASS.

`IsoStage` is a literal internal Prop invariant, not a replacement definition of an analytic object or a source theorem. BODY_MATCH: OK; PUBLIC_CARRIER: OK; WELL_DEFINEDNESS: N/A_LITERAL; CHARACTERIZATION: N/A_LITERAL; CHOICE_INDEPENDENCE: N/A; DEFINITION_VERDICT: PASS. The six fields package exactly the stage facts carried in the proof; they are established at zero and preserved, never required as an outer input to iteration. Generated projections/constructor introduce no additional source-facing assertion.

Dependency `isoSeq` (Defs L177–183, unchanged here) is unconditional recursion on j. It never tests admissibility and never stops or substitutes a successful stage when a hypothesis fails. Both successor components read the same current pair. Its three new rfl lemmas verify that recurrence literally. Its Newton map has the documented old-K extension outside the correction strip, consistent with the design. All uses of its analytic update in this proof are inside the positive strip; the update's real slice lies there. No estimate relies on a fallback at a failed stage. Outside IterHyp/smallness/standing hypotheses, iteration makes no claim. No limit selector is introduced in I2-8.

At L361–385 the schedule gives δ_j>0, δ_j≤1, 4δ_j<r_j and r_{j+1}=r_j−4δ_j. The accumulated sum μ/4 makes μ−D_j positive and makes min(1,μ/2) sufficient for step's min(1,μ−D_j). `step` uses the actual moving frequency s_j ωstar and supplies the next frequency, energy, Gram determinant and bordered determinant. All estimates restrict from r_j−2δ_j or r_j−3δ_j to r_{j+1}; no boundary estimate is used outside its strip.

Triangle inequalities accumulate K and frequency displacements and all three inverse/derivative increments. The ball radius is exactly μ−D_j−d_j = μ−D_{j+1}. The DK and Gram sums are ≤μ/4, stronger than the final μ/2 targets; the bordered inverse sum is ≤μ/2. Energy and invariance errors use precisely the schedule recurrence. Ray openness at the new stage is re-derived at L446 from the initial margin and accumulated displacement, using D_{j+1}≤ν/2<ν. Thus no circular reliance on a pre-existing new-stage ray hypothesis occurs. Stage admissibility itself retains only s_j>1; the upper endpoint and quantitative margin are separately recovered, including in the final theorem at L541. This also supplies the Diophantine class required by the standing bridge at each step.

## Independent mechanical receipts

All Lean invocations were sequential and used LEAN_NUM_THREADS=1 and nice -n 5; no heartbeat, recursion-depth or synthesis override. Build used the required compile gate. No clean/update/cache-fetch command ran.

1. `LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i28 KAM.Iso.Apost.Iteration` — exit 0:

```text
[inp-gate] slot 1 acquired 02:58:23 for KAM.Iso.Apost.Iteration
Build completed successfully (3218 jobs).
```

The gate invokes `nice -n 5 lake build`; this is a targeted snapshot-backed build, not a clean library rebuild.

2. `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I28Audit.lean` — exit 0. Probe imported only `KAM.Iso.Apost.Iteration`, opened the implementation's namespaces/scopes, copied the design theorem and applied the actual theorem with all seven explicit binders in order. It also printed axioms of every one of the 20 new public theorems and the probe theorem:

```text
'KAM.Iso.Apost.isoSeq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSeq_succ_fst' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSeq_succ_snd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumD_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumDK_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumB_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumT_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumD_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumDK_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumB_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoSumT_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoDK_term_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoB_term_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.isoT_term_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_sums_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_stepsmall_seq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_ray_step' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_stage_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iso_stage_succ' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.iteration' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.audit_iteration_signature' depends on axioms: [propext, Classical.choice, Quot.sound]

```

3. `LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Apost.Iteration` — exit 0, output:

```text
replaying KAM.Iso.Apost.Iteration
```

Only one lemma module is new and no provider module is delivered, so this single invocation covers the package module. Together with axiom closure this is kernel replay evidence for the package, not a claim that frozen I-G1 is proved.

4. `sh scripts/lint_sources.sh` — exit 1, with exactly:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (367 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

This is the brief's expressly permitted generated-root exception. No forbidden token, limit override, overlong source file, or module-format error was reported. A direct forbidden-token scan of Iteration.lean also returned no matches; it has 554 total lines, below the 1500 code-line cap. Module header, public imports, documentation, exposed definitions and public section are present.

5. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` — empty. `git diff --check inp...HEAD` — exit 0, empty. Production code imports no provider or frozen theorem. Source axiom closure above contains no sorryAx or project axiom.

Temporary probe and captured logs were deleted after inclusion in this report. Final owned artifact: only `docs/tracks/I/audits/I2-8-audit-1.md`; the pre-existing handoff remains untouched.

## Suspected source/blueprint defects and limits

None newly found in the audited iteration node. The alternate accumulated-displacement ray argument is valid and preserves every printed margin; it is not a source repair. No deviation introduced by the auditor. This is a blueprint-to-Lean package audit; no fresh complete audit of HL19, other tracks, inherited analytic lemmas, limit construction, or final provider assembly is claimed. The existing frozen I-G1 body remains `by sorry`, untouched and outside the proved module's axiom closure. Frozen-provider type/seal checks must run when that provider is actually supplied.
