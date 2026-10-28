# I3-3 independent package audit 1

**Verdict: PASS WITH NOTES for I3-3.** All four assigned nodes and all eight new public theorems pass statement, proof, premise and axiom checks. No material mathematical defect found. The literal whole-branch protected-file diff check fails on an inherited generated-root change; see N1. This is an infrastructure-package acceptance, **not a seal-ready verdict for any frozen Track-I anchor**.

## Scope, authority and frozen snapshot

Audited 2026-10-28 in `/root/code/KAM-inp-i33`, HEAD `69bb8bd9a5c926bd20cdd69fe925be91631d6413`; `inp` resolved to `a7aaf87c2d46c28c60a878e383b511c807c3b936`, `inp-i32` to `f16383fbf52da8a73fcd9276ee3dd3fc03af25a4`.

Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the local I3-3 handoff, track-I statement, Part-3 blueprint, PART123 design v2 and both design audits. Applied manuscript-audit tier 2 and lean-statement-audit correspondence checks. Authorization is report-only, with disposable probes under `.lake/abi-scratch/`, targeted builds and kernel replay. No git mutation, source repair, network access, subagent, frozen edit or generated-file edit was performed. The user's explicit report path overrides the brief's parenthetical main-worktree default.

The actual I3-3 additions are precisely `KAM/Iso/Charts/Rays.lean` and `KAM/Iso/Charts/Points.lean`, added by `e474515` and `69bb8bd`. `git diff --name-status 1ff05e9 HEAD` shows only these two additions. The handoff's `git diff inp-i32...HEAD` does **not** isolate them: it contains the same ten-file inherited delta as the requested `git diff inp...HEAD`. The latter warns:

```text
warning: inp...HEAD: multiple merge bases, using ddfd7519750b67f2bad20ebe7ad8f44f9620fb55
```

`git merge-base --all inp HEAD` returns `ddfd7519750b67f2bad20ebe7ad8f44f9620fb55` and `70bba4e3ddd8e44a7c57ec66b8ec5b69bd4db876`. The complete diff inventory additionally contains Apost/Schedule, Linear/BorderSolve, Linear/BorderUnique, their I1-5/I2-7 audit/handoff files, and KAM.lean. Those earlier packages have separate audit reports; this report inventories their presence and the branch hygiene consequences, and does not re-certify their mathematics. All source line locators below refer to this HEAD; the supplied untracked handoff was read as task authority.

SHA256 snapshot:

| File | SHA256 |
|---|---|
| `KAM/Iso/Charts/Rays.lean` | `115322158e437bc011052ce69395faaf5f7b929cd5fff4bd84d10ed3f4228c7e` |
| `KAM/Iso/Charts/Points.lean` | `c53ce46ec970ae57a7b36f884c75f1ae034379bb8659011faae8c3b59a7bdab0` |
| `KAM/Iso/Charts/Defs.lean` | `204bdaa63495090382b0563cd2a9bfa734791d10822a20d703c448a6c56bde50` |
| `KAM/Iso/Charts/Inputs.lean` | `a8f405840e6a94be71deeb6632aba601e237961933f3d4e26e81e5bb21ad3bfe` |
| `KAM/Iso/Confinement/Setting.lean` | `09a93dee2c1e3d94b9d5fd3a9a5d3665937ea8dcef140270c4038e3c67239be2` |
| `docs/tracks/I/design/PART123-LEAN-DESIGN.md` | `bea8d5212f8f979070ca44ce0295c8513021595dcd694f0178d0a0b221442a00` |
| `docs/tracks/I/design/PART123-design-audit-1.md` | `6b16714bcf63ea0527634cba6ac8ee5b9a10581d7e8af1e5d35436b5c44ac6c2` |
| `docs/tracks/I/design/PART123-design-audit-2.md` | `fea9806561b43d03f88e8da8da454265dcd39bcedb0dd2f853d71627bd31ae4a` |
| `blueprint-I/parts/p3-iso-local-charts.tex` | `78f529636a4615405c7a5f74cfe143914d62a59be1f582adb5deecf451e83827` |
| `manifest/frozen-anchors.json` | `a7d55a9a566d7d8408d455b1bfb2cc71bb9229baae5d1c547c96d9147159f8f3` |

## Declaration ledger

All names in this table are under `KAM.Iso.Charts`.

| Node / locator | Declaration | Verdict | Reason |
|---|---|---|---|
| p3:dio-open; Rays:42 | `dio_open` | PASS | Nonempty bounded open subset of the actual Pi carrier; τ=2; γ>0 and a Diophantine member. Exact approved signature. |
| p3:ry-open; Rays:81 | `aCoord_slope_dir` | PASS | Polynomial coordinate identities for every nonzero g and nonzero t; permits negative t, a harmless strengthening of the construction's positive t. |
| p3:ry-open; Rays:100 | `isOpen_sector` | PASS | Arbitrary open slope set J and arbitrary real norm bounds. Division continuity is proved only where aCoord>0 makes its denominator nonzero. |
| p3:det-identity(a); Rays:125 | `frequencyMap_ne_zero_of_mem_closure` | PASS | Derives nonzero gradient from HeadData, c∈closure B′, inclusion in the real analytic domain and the existing determinant identity. |
| p3:rays; Rays:130 | `rays` | PASS | Exact approved signature; interval endpoints a<b encode the nonempty bounded open interval; correct slope, orientation and strict norm annulus. |
| p3:patch-rays; Rays:179 | `patch_rays` | PASS | Exact existence form; both signed windows, at the SAME patch centre; no perturbation or energy input. |
| p3:pt-segment; Points:37 | `bijOn_energySegment` | PASS | Explicit conditional helper; hQ supplies rectangle inclusion, hleft the inverse identity. Proves MapsTo, injectivity and surjectivity, not assumed bijectivity. |
| p3:points; Points:60 | `points` | PASS | Exact approved one-ray signature, including closed energy endpoints, positive scale, strict scale/displacement bounds, membership, and energy-segment BijOn. |

The four node signatures were independently extracted from design lines 1870–1904 and compared against the actual declaration headers after whitespace normalization: all four returned `True`. Copies of those design headers with bodies applying the corresponding implementation theorem elaborate at default settings. These are real term-level checks, not mere name or import checks.

Frozen-anchor status: I3-3 introduces no provider and claims no frozen theorem. Provider=frozen ABI and literal seal-body probes are therefore **N/A**, not passing seal receipts. In particular `iso.all_time_confinement.v1` / `KAM.Iso.all_time_confinement` remains `DRAFT_SORRY`; its premises were read to check HeadData. I-G1 remains `DRAFT_SORRY` as well. G3 `kam.volume_not_diophantine_le.v1` is an existing `SEALED` upstream anchor, not an I3-3 achievement.

## Premise audit and semantic definitions

The following binder ledger expands the shared hypothesis packages. SOURCE refers to the local blueprint lemma/definition; STANDING refers to Part-3 setting (blueprint lines 34–45); RULED refers to the approved design premise policy (§2.2, lines 133–137). TYPING inputs are listed separately. No EXCESS premise was found.

| Expanded logical input | Bin | Authority / use |
|---|---|---|
| `hG3` in dio_open/rays/patch_rays | RULED | Whole verbatim upstream G3 type, design §2.2; not a Part-3 conclusion. |
| `hO` | SOURCE | dio-open, blueprint:205, open O. |
| `hne` of dio_open | SOURCE | dio-open, blueprint:205, nonempty O. |
| `hb` | SOURCE | dio-open, blueprint:205, bounded O. |
| `hg` of aCoord_slope_dir | SOURCE | Direction-coordinate domain g≠0, blueprint:135–140. |
| `ht` of aCoord_slope_dir | SOURCE | Conditional algebra helper, t≠0; source use has t>0. |
| `hg` of isOpen_sector | SOURCE | Same nonzero coordinate domain. |
| `hJ` | SOURCE | Open sector slope set, blueprint:225. |
| `hd.hs` | STANDING | s₀>0. |
| `hd.hr` | STANDING | r₀>0. |
| `hd.holo` | STANDING | h holomorphic on actionNbhd B r₀. |
| `hd.real` | STANDING | h real at every real point of that neighbourhood. |
| `hd.isOpen` | STANDING | B open. |
| `hd.bounded` | STANDING | B bounded. |
| `hd.nonempty` | STANDING | B nonempty. |
| `hd.iso` | STANDING | Bordered determinant nonzero on the full real neighbourhood; no ordinary-Hessian invertibility added. |
| `hd.isOpen'` | STANDING | B′ open. |
| `hd.compact` | STANDING | closure B′ compact. |
| `hd.inside` | STANDING | closure B′⊆B. |
| `hd.hη` | STANDING | η>0. |
| `hne` of rays/patch_rays/points | STANDING | B′ nonempty, blueprint:37–38; separate from B nonempty. |
| `hc` | SOURCE | c∈closure B′, blueprint:218; derived from hp.c_mem in patch use. |
| `hab` | SOURCE | Nonempty interval a<b, blueprint:218. |
| `hp.c_mem` | SOURCE | Patch centre in closure B′, blueprint:178. |
| `hp.isOpen_W` | SOURCE | Local chart W open, blueprint:159–161. |
| `hp.W_dom` | SOURCE | W⊆chartDom, same local-chart premise. |
| `hp.W_subset_B` | SOURCE | Shrunk patch in B, patch construction lines 194–196. |
| `hp.W_subset_ball` | SOURCE | P1, blueprint:181. |
| `hp.hR_contDiffOn` | SOURCE | C¹ chart, blueprint:148,160. |
| `hp.m_contDiffOn` | SOURCE | C¹ chart, same. |
| `hp.isOpen_V` | SOURCE | Open chart image, blueprint:160. |
| `hp.Ψ_contDiffOn` | SOURCE | C¹ inverse, blueprint:160. |
| `hp.Ψ_mem` | SOURCE | Inverse takes V into W, blueprint:185. |
| `hp.Ψ_left` | SOURCE | Left inverse of chart on W. |
| `hp.Ψ_right` | SOURCE | Right inverse on V. |
| `hp.δE_pos` | SOURCE | Positive patch energy width, blueprint:178. |
| `hp.δm_pos` | SOURCE | Positive patch slope width, same. |
| `hp.ρc_pos` | SOURCE | Positive patch ball radius, same. |
| `hp.Q_subset` | SOURCE | P2 closed box contained in chart image, blueprint:182. |
| `hp.ρc_le` | SOURCE | P3, blueprint:183. |
| `hp.ball_subset` | SOURCE | P3. |
| `hp.ball_h` | SOURCE | P3 energy variation. |
| `hp.ball_m` | SOURCE | P3 slope variation. |
| `hray.1` | SOURCE | γ>0, patch-rays / IsRay. |
| `hray.2.1` | SOURCE | IsDiophantine γ 2 ωs. |
| `hray.2.2.1` | SOURCE | Positive longitudinal coordinate. |
| `hray.2.2.2.1` | SOURCE | Actual coordinate slope equals m. |
| `hray.2.2.2.2.1` | SOURCE | m_h/4<‖ωs‖. |
| `hray.2.2.2.2.2` | SOURCE | ‖ωs‖<m_h/2. |
| `hm` | SOURCE | Ray slope inside patch width, blueprint:260. |
| `hE` of points/bijOn_energySegment | SOURCE | Full closed energy window, blueprint:243. |
| `hQ` of bijOn_energySegment | SOURCE | Named conditional helper's rectangle inclusion; points supplies hp.Q_subset. |
| `hleft` of bijOn_energySegment | SOURCE | Named conditional helper's inverse equation; points supplies hp.Ψ_left. |

Distinct logical rows: SOURCE 39, STANDING 13, RULED 1, EXCESS 0. (Shared rows are counted once, not once per theorem occurrence.)

Typing binders, with no logical premise hidden: ambient `{B s₀ r₀ h B′ η}` where used; dio_open `{O}`; algebra helper `{g t}`, `(ς)`; sector helper `{g J}`, `(lo hi)`; nonzero-gradient helper `{c}`; rays `{c a b}`; patch_rays `{η₁ δE δm ρc c W Ψ}`; points `{δE δm ρc c W Ψ γ m ωs E}`; segment helper `{h c W Ψ δE δm E}`. All are real scalars, functions, or sets on the declared Fin-2 real/complex carriers. There are no new typeclass/instance premises. Produced existential γ, frequencies and slopes remain outputs. The later universally quantified I₀ in points is inside the conclusion, not an input on which rays may depend.

Expanded G3: `∀ {n τ}, (n:ℝ)-1<τ → ∀ {Ω}, IsBounded Ω → ∃ C, ∀ α, 0<α → volume {ω∈Ω | ¬IsDiophantine α τ ω} ≤ ofReal(C*α)`. All input binders are precisely the existing G3 statement; C and its estimate are outputs, not separate assumed fields. A probe proves both `(type_of% @KAM.volume_not_diophantine_le) = G3Statement` by `rfl` and inhabits G3Statement with that anchor. The anchor import occurs only in the permitted scratch probe.

**Definition classification:** no new `def`, `abbrev`, `structure`, instance or choice-defined object occurs in I3-3. Its sector O, v and C′ are local proof abbreviations. Inherited `IsRay` is the literal six-clause predicate above; `IsPatch` is the actual chart and inverse data, produced upstream by chart/cover; `HeadData` expands exactly to the twelve standing fields above. Neither is a conclusion package assumed in place of an I3-3 node. `perp`, `det2`, `aCoord`, `slope`, `chartM`, `chartPhi`, realPart and frequencyMap have their literal formulas. Rational division is used only after proving the needed nonzero denominator; no theorem relies on a junk off-domain value. The sInf/sSup constants are used through the existing compact theorem, which establishes positivity and the pointwise extrema bounds on sSet.

For newly introduced definitions: BODY_MATCH, PUBLIC_CARRIER, WELL_DEFINEDNESS, CHARACTERIZATION and CHOICE_INDEPENDENCE are N/A (none introduced); definition review PASS. For the inherited literal predicates/formulas used here: BODY_MATCH OK; PUBLIC_CARRIER OK at all uses; WELL_DEFINEDNESS/CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; no new definition defect.

## Proof and adversarial checks

1. **Measure argument:** Rays:44–75 proves finite positive volume before taking toReal. G3 has no nonnegativity premise on its C; the proof uses C′=max C 0 and γ=v/[2(C′+1)]>0. The bad set has measure at most ofReal(v/2), strictly below volume O. The assumed absence of a good member gives the reverse containment and contradiction. No subtraction of infinite measures or unproved measurability is used. The blueprint's “C≥0” is a harmless normalization that this implementation explicitly supplies.
2. **Sector construction:** Rays:136–175 proves boundedness by the closed ball of radius m_h/2. Nonemptiness uses slope (a+b)/2 and a positive scalar making the Pi/max norm exactly 3m_h/8. Nonzero direction follows from aCoord=1, independently of Euclidean norm identities. Thus the dot product used for direction coordinates has not replaced the stipulated max norm in an estimate. Denominators are proved nonzero at each division.
3. **Points:** Points:76–96 uses hp.Q_subset and the actual Ψ inverse, including the endpoints |E-h(c)|=δE. The inverse is never evaluated outside its established image in a load-bearing step. W's radius and η₁≤d_B/2 place I in sSet. The oriented slope-ray lemma proves positive parallelism, not merely collinearity. m_h≤‖∇h(I)‖≤M_g and the strict ray norm window imply 2<s°<4M_g/m_h. The final triangle estimate uses both strict ball inequalities and ρc≤η₁/4.
4. **Refutation of apparent missing two-point conclusions:** the design deliberately uses a one-ray points lemma (D17), and a BijOn conclusion for the already C¹ chart/inverse (B6). A separate scratch consumer chooses patch_rays once, OUTSIDE `∀ E`, then applies points twice to the SAME rays for every E in the closed energy window. It proves strict negative/positive slope bounds, distinct points, and strict ordering around every initial point in ball c ρc. This rules out an energy-dependent ray retry and verifies the F2 ingredient at this package's boundary. Future finite-family tori assembly still has to retain those rays before f, ε, I₀, E; it is not certified here.
5. **Topology:** BijOn alone would not imply homeomorphism. Here forward continuity comes from hp.hR_contDiffOn and hp.m_contDiffOn, inverse continuity from hp.Ψ_contDiffOn; restriction to the displayed segment and its inverse preserves continuity. This is precisely the approved B6 representation, not a new weakening.
6. **Conditional helper:** bijOn_energySegment's hQ/hleft are actual patch properties supplied by points, not the desired energy-segment bijection. The proof separately establishes all three BijOn components. Its weaker regularity assumptions make it a reusable helper; it does not replace points or patch existence.

No refutation-surviving mathematical finding or new pinned-source erratum was found. No repair was applied. The source audit is against the local blueprint and approved design; it does not reopen the external Pos01/HL19 source campaigns.

## Notes and literal branch gate

**N1 — inherited root delta / stale generation (procedural).** The required command

```sh
git diff --exit-code inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
```

returns **1**, not 0. Its only protected-path diff adds imports of `KAM.Iso.Apost.Schedule`, `KAM.Iso.Linear.BorderSolve`, and `KAM.Iso.Linear.BorderUnique` to KAM.lean (lines 208, 226–227 at HEAD). Refutation: compare `1ff05e9..HEAD` on the same protected paths; it is empty (exit 0), and the inherited import commit is `70bba4e`. Thus this is real branch-level noncompliance with the brief's literal empty-diff test, but is not an I3-3 frozen mutation or an unauthorized edit made by this audit. KAM/Frozen, manifest and README.md are unchanged in the requested triple-dot diff. No unqualified whole-branch hygiene PASS is claimed. The orchestrator must reconcile the generated root when integrating; this auditor may not edit it.

**N2 — boundary of acceptance.** None of I-G1, I-HEAD, I-R3BP or I-KEPLER receives a new proof/seal certificate here. The package proves the ray and point ingredients, with G3 available only as the explicit verbatim premise. Existing earlier-package audit verdicts are not independently upgraded by this report.

## Verification receipts

All Lean/Lake commands below ran sequentially with `LEAN_NUM_THREADS=1` and niceness 5. The build wrapper itself supplies `nice -n 5`; no budget override or clean/rebuild was used.

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i33 KAM.Iso.Charts.Points
```

Exit **0**. Output began `[inp-gate] slot 1 acquired 02:34:50 for KAM.Iso.Charts.Points` and ended `Build completed successfully (3250 jobs).` Points imports Rays, so this checks both targets. One pre-existing warning was replayed from KAM/ODE/Exit.lean:36 (`[NormedSpace ℝ E]` unused in `KAM.ODE.gen_exit`); no I3-3 warning was emitted. This is an incremental targeted build, not a clean library build.

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I33Audit.lean
```

Final exit **0**. The probe contains the four copied design statement headers with exact implementation applications; the whole G3-type equality and actual-anchor witness; eight #print axioms commands; and the paired-ray consumer described above. During development of this audit-only consumer, its first run failed because hp.ball_m requires the explicit I₀ argument; supplying it resolved the probe error without changing any package source.

Exact axiom output:

```text
'KAM.Iso.Charts.dio_open' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.aCoord_slope_dir' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.isOpen_sector' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.frequencyMap_ne_zero_of_mem_closure' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.rays' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.patch_rays' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.bijOn_energySegment' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.points' depends on axioms: [propext, Classical.choice, Quot.sound]
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Charts.Rays KAM.Iso.Charts.Points
```

Exit **0**; one invocation, exact output:

```text
replaying KAM.Iso.Charts.Points
replaying KAM.Iso.Charts.Rays
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, solely the brief's allowed stale-root condition; complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (359 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The eight theorem axiom sets are exactly `[propext, Classical.choice, Quot.sound]`, without sorryAx or project axioms. Recursive parsing of local KAM import edges from Points visits 93 project modules and finds zero provider/frozen-theorem edges. Both new files have copyright, `module`, public import, module docstring and public section; no new definitions require exposure. Rays has 190 lines (maximum line width 99), Points 124 (maximum width 97). Token scans found no sorry/admit/axiom/unsafe/opaque, budget overrides or EuclideanSpace. `git diff inp...HEAD --check` exits 0 (apart from the merge-base warning).

## Closeout

Eight of eight new public declarations classified; four of four node signatures matched and inhabited; all four source nodes accepted at this package boundary; all eight axiom checks and kernel replay passed. No open mathematical blocker. The allowed stale-root lint note and inherited protected-file diff exception are reported without repairing or suppressing them. Frozen-anchor seal checks are N/A. Only this report is an audit deliverable; disposable probes/logs are removed after recording the receipts. Initial untracked I3-3-handoff.md is preserved. No source, manifest, README.md or KAM.lean edit, commit or push.
