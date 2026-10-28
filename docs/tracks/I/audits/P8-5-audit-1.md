# P8-5 independent package audit

**Verdict: PASS WITH NOTES for the P8-5 contribution to I-R3BP.** No material statement, definition, hypothesis, or mathematical proof defect was found in `KAM/Iso/R3bp/Constants.lean`. The notes are the documented D2 threshold change and the expected generated-root lint exception. Verification receipts are recorded below.

**Anchor status:** `iso.restricted_near_circular.v1` / `KAM.Iso.restricted_near_circular` remains **DRAFT_SORRY / FROZEN_UNPROVED**, not seal-ready on the strength of this package. P8-5 supplies the specified conditional transport core, not the final provider, topology, or physical uniqueness assembly. No frozen theorem is promoted by this report. `iso.all_time_confinement.v1` is SEALED in this checkout, but neither it nor its provider is imported by P8-5.

## Scope and immutable inputs

Audit date: 2026-10-28. Worktree: `/root/code/KAM-inp-p85`. HEAD: `c1f3255083e75a0d394e097699d59c1ef196588a`. Independent inspection; the auditor did not write the package. Only this report was added; transient probes were confined to `.lake/abi-scratch/` and removed. No state-changing git command or source repair was performed.

Read the package brief at `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, local AGENTS/PLAN/DECISIONS, handoff and AUDIT FOCUS, track-I statement, actual frozen I-R3BP/I-HEAD declarations and their relevant definition closure, raw blueprint Part 8, design §§1–2, 5, 8.1, 9–11.2 and Appendix signatures, and both `docs/tracks/I/design/PART58-design-audit-{1,2}.md` reports. Rechecked the actual Kepler, transfer, safe-region, and collision APIs used at the call sites. Earlier design audits are context, not execution receipts for this package.

The requested `git diff inp...HEAD` was inspected. At the snapshot, `inp` was `a5a84d778af8754a3c9450e997ee74955f470552`. Git warns of multiple merge bases and selects `53fd5275a5e6b56352932d45d6237d4228c1f9a0` (the other is `e8bfea542ec1763f349f84681c2b030e9f7529c9`). Its diff contains only additions of `Constants.lean` (195 lines) and P8-4's `HeadData.lean` (93 lines). As explicitly required by AUDIT FOCUS, the implementation verdict covers only `git diff inp-p84...HEAD -- KAM/Iso/R3bp/`: one added file, `Constants.lean`, 195 lines. `inp-p84` resolves to `74d60c5a820a8bde554f9e1ce31192891b832042`. HeadData and other upstream implementations were read for applicability, not independently re-audited as packages.

| Input | SHA-256 |
|---|---|
| `KAM/Iso/R3bp/Constants.lean` | `50242adead14d397f2e2c6342b732a0dbf63b80dd8c65f2648a9c1905bb92018` |
| `blueprint-I/parts/p8-r3bp.tex` | `69c7b6913a1f422a509d85d508984730b25aa818fec63fd297a42ee5463b8a0b` |
| `docs/tracks/I/design/PART58-LEAN-DESIGN.md` | `dd8e40b911ed6fc0e9e6f36c303cebcda7f4e9025e97743ad563e4a1bc45ed08` |
| `docs/tracks/I/audits/P8-5-handoff.md` (pre-existing untracked input) | `b550047a3c3fcfba9268e521e4b80358fa5f9698b43cc13ad2140606df9def68` |
| `docs/tracks/I/statement.md` | `060e16321cf4c51b6bf2219d5c4c542e6a5678807b16de0f25f6fdec979ea3ae` |
| `manifest/frozen-anchors.json` | `b9b9fee8fa72332435a780c4b41d8250b2db4577594360bcf3891c85790488d2` |

Manifest identities checked: I-R3BP ABI `51ef78464ec9887a4af758841d92ff8ebd3a8b16d5455a50490c8df10bf6cc2e`; I-HEAD ABI `17ef8e0e953bbc3d0818b1ae5ddea79f637b1acfe7b9adf06e9fee74cad6907d`. Their listed definition-closure file hashes were independently recomputed and match. The global frozen guard and ABI check also ran; see receipts.

## Declaration ledger

Names below are in `KAM.Iso.R3bp`; locators are lines of the pinned `Constants.lean`. All seven design-listed theorem signatures are byte-identical to the current design Appendix before `:=`. Every new public declaration is listed.

| Node / role | Lean declaration (line) | Verdict | Reason |
|---|---|---|---|
| `bpI:p8:constants` | `shellNu` (39) | PASS | Literal minimum of the inner and outer shell margins. |
| `bpI:p8:constants`, design D2 | `r3bpMu0` (43) | PASS WITH NOTES | Exact design formula; denominator `abs(C_F)+1`, documented below. |
| `bpI:p8:constants` | `r3bpD` (47) | PASS | Literal half-shell margin. |
| `bpI:p8:constants` | `r3bpR` (50) | PASS | Literal physical momentum bound `sqrt(2/r_min)`. |
| Part-8 adapter / constants | `exactMu2_safe_pos` (53) | PASS | Expands the actual shift threshold and proves positivity from `safe_radii`. |
| Additional elementary helper | `shellNu_pos` (60) | PASS | Proves the shell minimum positive from the same safe radii; does not replace a frozen result. |
| `bpI:p8:constants` | `r3bp_constants_pos` (65) | PASS | Strict positivity of all witnesses and `μ₀ ≤ 1/2`; arbitrary positive `εH`. |
| `stepI:p8:pf-small` | `r3bp_small` (76) | PASS | Produces all three necessary smallness inequalities, including the absolute-value collision bound. |
| Kepler adapter, `stepI:p8:bd-r` | `delaunay_radius_bounds` (94) | PASS | Full two-sided physical radius bounds; supplies all orbit-map hypotheses. |
| Kepler adapter, `stepI:p8:bd-p` | `delaunay_energy` (102) | PASS | Exact Kepler energy identity on `deDom`, with no hidden energy premise. |
| `bpI:p8:bounds` | `delaunay_orbit_bounds` (109) | PASS | General safe-action helper; derives radius and momentum bounds, no assumed physical conclusion. |
| `stepI:p8:pf-coord`, `pf-small`, `pf-sol`, `pf-bounds`, `pf-dist` | `r3bp_core` (139) | PASS | Exact design transport interface; witnesses precede μ and z₀, correctly scaled preimage, actual restricted solution and four bounds. Does not claim `pf-head` or `pf-uniq`. |

## Premise and quantifier audit

Five-bin classification: SOURCE = premise of the relevant source statement or explicitly specified conditional transport interface; STANDING = source standing domain data; TYPING = carrier data; RULED = explicit owner correction; EXCESS = other assumed result. No inference below treats a dependency theorem as a source assumption.

For each of `exactMu2_safe_pos`, `shellNu_pos`, `r3bp_constants_pos`, `r3bp_small`, and `r3bp_core`, expand `hp : R3bpParams am ap em ep` as follows (no additional fields):

| Expanded logical binder | Bin | Source |
|---|---|---|
| `hp.ha : 0 < am` | SOURCE | Frozen I-R3BP `ha`; blueprint Part 8 standing parameters. |
| `hp.haa : am < ap` | SOURCE | Frozen I-R3BP `haa`. |
| `hp.he : 0 < em` | SOURCE | Frozen I-R3BP `he`. |
| `hp.hee : em < ep` | SOURCE | Frozen I-R3BP `hee`. |
| `hp.heSmall : ep < 1/4` | SOURCE | Frozen I-R3BP `heSmall`. |
| `hp.hinner : ap*(1+ep) < 1` | SOURCE | Frozen I-R3BP `hinner`. |

Remaining logical binders (including nested antecedents in the transport statement):

| Declaration / binder | Bin | Justification |
|---|---|---|
| `r3bp_constants_pos.hεH : 0 < εH` | SOURCE | Positive I-HEAD tolerance parameter; design §11.2 / Appendix and blueprint lines 195–198. |
| `r3bp_small.hεH : 0 < εH` | SOURCE | Same standing positive tolerance; its use is unnecessary for this algebraic helper, but it is source context, not a smuggled conclusion. |
| `r3bp_small.h0 : 0 ≤ μ` | SOURCE | Blueprint line 219. |
| `r3bp_small.hμ : μ < r3bpMu0 ... εH` | SOURCE | Blueprint line 219. |
| `delaunay_radius_bounds.hw.1 : 0 < w.2 1` | STANDING | `deDom` / prograde Delaunay cone, Part 7. |
| `delaunay_radius_bounds.hw.2 : w.2 1 < w.2 0` | STANDING | Same cone. |
| `delaunay_energy.hw.1 : 0 < w.2 1` | STANDING | Same cone. |
| `delaunay_energy.hw.2 : w.2 1 < w.2 0` | STANDING | Same cone. |
| `delaunay_orbit_bounds.hK.isCompact` | STANDING | Compact safe K of blueprint Part 7 and Part 8 lines 204–205. |
| `delaunay_orbit_bounds.hK.nonempty` | STANDING | Same nonempty safe K. |
| `delaunay_orbit_bounds.hK.sub_cone` | STANDING | Every action in K is in `0<G<L`. |
| `delaunay_orbit_bounds.hr : 0 < kRmin K` | STANDING | Positive safe inner radius; proved at the core call by `safe_radii`. |
| `delaunay_orbit_bounds.hw.1 : 0 < w.2 1` | STANDING | Delaunay domain. |
| `delaunay_orbit_bounds.hw.2 : w.2 1 < w.2 0` | STANDING | Delaunay domain. |
| `delaunay_orbit_bounds.hwK : w.2 ∈ K` | SOURCE | Blueprint line 205. |
| `r3bp_core.hεH : 0 < εH` | SOURCE | Explicit parameter of the design's conditional core, not an I-HEAD assumption bundle. |
| `r3bp_core`, `0 ≤ μ` | SOURCE | Blueprint lines 215, 219. |
| `r3bp_core`, `μ < μ₀` | SOURCE | Same. |
| `r3bp_core`, `z₀ ∈ NearCircular ...` | SOURCE | Blueprint lines 215, 217. |
| `r3bp_core`, `zt 0 = w₀` | SOURCE | Specified conditional transport interface, design §§2, 11.2; blueprint lines 221–223. |
| `r3bp_core`, `(zt t).2 ∈ safeB ...` for all t | SOURCE | Expansion of supplied `IsHamiltonianSolutionOn`, frozen definition lines 37–42; blueprint line 221. |
| `r3bp_core`, differentiability of the real Hamiltonian at `zt t` for all t | SOURCE | Same genuine solution predicate. |
| `r3bp_core`, `HasDerivAt zt (hamiltonianVectorField ... (zt t)) t` for all t | SOURCE | Same predicate; transport proves the physical differential equation. |

Logical counts per declaration after expansion (SOURCE, STANDING, RULED, EXCESS): `exactMu2_safe_pos` (6,0,0,0); `shellNu_pos` (6,0,0,0); `r3bp_constants_pos` (7,0,0,0); `r3bp_small` (9,0,0,0); `delaunay_radius_bounds` (0,2,0,0); `delaunay_energy` (0,2,0,0); `delaunay_orbit_bounds` (1,6,0,0); `r3bp_core` including its conditional antecedents (14,0,0,0). There are no instance binders hiding mathematical assumptions.

Typing binders are individually: `am : ℝ`, `ap : ℝ`, `em : ℝ`, `ep : ℝ` in each hp-based theorem; `εH : ℝ` in constants/small/core; `μ : ℝ` in small and inside core; `w : (Fin 2 → ℝ) × (Fin 2 → ℝ)` in both adapters and orbit bounds; `K : Set (Fin 2 → ℝ)` in orbit bounds; and the core's quantified `z₀`, `zt`, `t` on their displayed physical/time carriers. These are TYPING, not result premises. The shared typing ledger applies separately to each indicated declaration:

| Data binder | Bin | Occurrence / source convention |
|---|---|---|
| `am : ℝ` | TYPING | Each hp-based theorem; frozen semimajor-axis parameter. |
| `ap : ℝ` | TYPING | Each hp-based theorem; frozen semimajor-axis parameter. |
| `em : ℝ` | TYPING | Each hp-based theorem; frozen eccentricity parameter. |
| `ep : ℝ` | TYPING | Each hp-based theorem; frozen eccentricity parameter. |
| `εH : ℝ` | TYPING | constants/small/core; real tolerance. |
| `μ : ℝ` | TYPING | small/core; real mass parameter. |
| `w : (Fin 2 → ℝ) × (Fin 2 → ℝ)` | TYPING | Both adapters and orbit bounds; real Delaunay coordinates. |
| `K : Set (Fin 2 → ℝ)` | TYPING | Orbit bounds; action set. |
| `z₀ : (Fin 2 → ℝ) × (Fin 2 → ℝ)` | TYPING | Core; physical initial point. |
| `zt : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ)` | TYPING | Core; supplied real-time trajectory. |
| `t : ℝ` | TYPING | Expanded solution predicate; real time (membership in `univ` imposes no restriction). |

TYPING counts for outer declaration binders are respectively 4, 4, 5, 6, 1, 1, 2, 5 in the order of the logical-count list above. Core additionally quantifies μ, z₀ and zt inside its conclusion; its expanded supplied-solution predicate quantifies t. These quantifiers retain precisely the design order. RULED and EXCESS counts are zero throughout.

Existential `μ₀,d,R,w₀,z` are outputs, not inputs. No norm/carrier change: `radius = planeLength = sqrt(sum of coordinate squares)`, distinct from the ambient sup norm. Period-one scaling changes coordinates, not time.

`PerturbData` is an output of core, not an assumed bundle. Its five fields are holomorphy, period-one invariance, realness, nonnegative ε, and the sup-norm bound, exactly the frozen I-HEAD perturbation inputs. Core proves these with `r3bp_perturbData`. The supplied global `zt` is an allowed input only to this distinctly named transport helper. It is not a hypothesis of frozen I-R3BP. Supplying its existence, with εH obtained before μ, remains the final provider's responsibility. Thus the conditional interface is not counted as proof of the root.

## Definition classification

All four new definitions are **literal total formulas**, not characterization-defined objects. Each has BODY_MATCH: OK; PUBLIC_CARRIER: OK; WELL_DEFINEDNESS: N/A_LITERAL; CHARACTERIZATION: N/A_LITERAL; CHOICE_INDEPENDENCE: N/A; DEFINITION_VERDICT: PASS. There is no `choose`, invented fallback, conditional junk branch, or deferred defining property in these bodies.

| Definition | Entire body / carrier assessment |
|---|---|
| `shellNu (K : Set (Fin 2 → ℝ))` | `min (kRmin K) (1-kRhoMax K)`, literal design formula on the entire carrier. Positivity is asserted only for the proved safe region. |
| `r3bpMu0 K εH` | Nested min of `1/2`, `exactMu2 K`, `εH/(abs(exactCF K)+1)`, `shellNu K/2`. Denominator is positive for every K, εH arbitrary; no off-domain branch. |
| `r3bpD K` | `shellNu K/2` on all K. |
| `r3bpR K` | `Real.sqrt (2/kRmin K)` on all K, as explicitly specified by the design. Physical bounds use `hr>0`; no proof relies on total inverse/sqrt behavior at invalid radii. |

The source works with admissible safe K; the exported generic formulas make no claim of positivity on arbitrary sets. The existing `sInf`/`sSup` constants retain their intended extremal meanings on nonempty compact safe K, with `kRmin_le` / `le_kRhoMax` providing the actual bound characterizations at the use sites. No upstream definition is changed by this package.

**Documented deviation D2, not a new erratum:** blueprint Part 8 lines 198 and 219 literally use `εH/C_F` and positivity of `C_F`. Design §5 D2 and its Appendix replace this by `εH/(abs(C_F)+1)`. Constants lines 43–44 implement that exact design. For μ≥0, `μ*C_F ≤ μ*abs(C_F) ≤ μ*(abs(C_F)+1) < εH`, the last inequality following from strict μ-smallness. Where C_F>0, the replacement can only shrink the permissible μ threshold. The root existential conclusion and constant dependence are preserved. The handoff's “deviations: none” should be read as **no additional deviation beyond the design**; a literal no-deviation reading would omit D2.

## Proof and refutation pass

1. **Thresholds and endpoints:** lines 53–73 use `safe_radii` to give `r_min>0` and `rho_max<1`, hence `exactMu2>0`, `ν₀>0`, and positive R. Lines 76–90 extract both relevant min branches. The εH denominator is strictly positive independently of C_F. Nonnegative μ is used where multiplication and `abs μ=μ` require it. μ=0 is included; no division by μ occurs. Strict μ<μ₀ is enough for strict μ<μ₂ and ε<εH, while the collision estimate needs only a non-strict bound.
2. **Orbit-map adapters:** `hw` unfolds to `0<G<L`. Both calls supply `L>0` by transitivity and `0≤e<1` from `ComplexDomainAux.eccOf_pos_lt_one`. `delaunay` unfolds to the actual `orbitMapR` specialization. The radius/plane-length identity is definitional, not a switch to the sup norm.
3. **Momentum:** lines 113–132 combine the actual extremum bounds with the two-sided orbit radius bound. The positive lower radius justifies reciprocal monotonicity. The energy identity yields `planeSq p/2 ≤ 1/r_min` since `-1/(2L²)≤0`. Multiplying by two and using monotonicity of real square root gives `radius p≤R`. This does not assume that the perturbed dynamics conserves Kepler energy: it uses the algebraic energy identity of the current Delaunay coordinates at each time.
4. **Initial coordinates:** lines 156–164 obtain a preimage in A and explicitly prove `periodOneMap ((2π)⁻¹ • angles, (2π) • actions)=w`, using `2π≠0`. Thus the scaled initial actions lie in `safeB'`, and the physical initial point is exactly z₀. No globally chosen inverse or chart injectivity is assumed.
5. **Every transfer premise:** at line 169, `hK` is `(safe_inclusions hp).2.2`; `hρ` comes from `safe_radii`; `hB` from `safe_domain`; `|μ|<exactMu2` follows from nonnegative μ and `r3bp_small`; and `hzt` is exactly the declared genuine Hamiltonian solution. The Hamiltonian matches through `r3bpH`. The first conjunct of the actual `transfer` theorem is used, not a projected signature invented for the audit.
6. **Every physical-bound premise:** lines 171–181 extract action membership from the solution predicate, divide by 2π via `hB`, and prove both `deDom` and action membership in safe K. `delaunay_orbit_bounds hK hrpos hdom hwK` is therefore fully supplied. `shell_exclusion` receives `hrpos`, `r_min≤rho_max`, `rho_max<1`, `|μ|≤ν₀/2`, and the actual radius interval. Finally `r_min≤rho_max<1` implies `R>1`, so `radius q≤rho_max<R`. Both distances and both upper bounds are produced for every real t.

Attempts to find wider constant dependence, a missing strictness condition, μ=0 failure, incorrect 2π normalization, or an assumed collision/momentum bound failed: the displayed proof supplies each relevant fact. No suspected new defect of a pinned source, frozen statement, or blueprint was established. No mathematical repair or new deviation was introduced by this audit. Historical design gate/status prose describes an older checkout; the current manifest was used for actual state checks.

## Independent verification receipts

All completed Lean/lake invocations below are serial, with `LEAN_NUM_THREADS=1` and `nice -n 5`. Builds use the specified compile gate. A preliminary gate wait was cancelled before starting lake, and a preliminary lint run was restarted before its ABI Lean phase to ensure the requested environment/priority; neither is a success receipt. No `lake clean`, cache download, package update, resource override, or library-from-scratch rebuild was run.

- `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: exit 0; **empty diff**, aside from git's multiple-merge-base warning described above.
- `git diff --check inp-p84...HEAD -- KAM/Iso/R3bp/`: exit 0; no output.
- Direct module/declaration inventory: 195 physical lines, four public definitions and eight public theorems. Copyright, `module`, public imports, module docstring and `@[expose] public noncomputable section` are present. No forbidden construct/resource setting is present.
- Recursive KAM import inventory: 94 reachable KAM modules, 53 manifested frozen imports, all SEALED; zero provider imports, zero DRAFT_SORRY imports. In particular neither frozen I-HEAD nor I-R3BP occurs in this closure.
- `LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh`: **exit 1 only for the explicitly permitted generated-root exception**. Complete substantive output:

  ```text
  KAM.lean is out of date; run scripts/gen_root_imports.py
  check_lean_modules: PASS (389 Lean files, 0 comparator configurations)
  FROZEN-ANCHOR GUARD OK
  ABI HASHES OK (144 frozen declarations)
  ```

  No generated file was edited. This is not reported as a zero-exit lint run.

- `LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p85 KAM.Iso.R3bp.Constants`: **exit 0**. Gate output: `[inp-gate] slot 2 acquired 04:12:21 for KAM.Iso.R3bp.Constants`. Final output: `Build completed successfully (9140 jobs).` The target was replayed from the existing build snapshot. The only target warning was `KAM/Iso/R3bp/Constants.lean:76:20: Variable name hp is not explicitly referenced.` Upstream replay warnings concerned `hm`, `hκ` in `Kepler/Energy.lean:106` and an unused section instance in `ODE/Exit.lean:36`. No Lean error or heartbeat failure.
- `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P85Audit1.lean`: **exit 0**. The probe imported only `KAM.Iso.R3bp.Constants`, checked all seven design theorem types by exact applications with explicit source binders in order, the additional shell-positivity helper, all four literal definition equations by `rfl`, and `radius q = planeLength q` by `rfl`. Probe SHA-256: `573e30183394c737e707b94644989be7567dbff589f07f30561ec7fca136c92a`. Its complete diagnostic output was:

  ```text
  'KAM.Iso.R3bp.exactMu2_safe_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
  'KAM.Iso.R3bp.shellNu_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
  'KAM.Iso.R3bp.r3bp_constants_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
  'KAM.Iso.R3bp.r3bp_small' depends on axioms: [propext, Classical.choice, Quot.sound]
  'KAM.Iso.R3bp.delaunay_radius_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
  'KAM.Iso.R3bp.delaunay_energy' depends on axioms: [propext, Classical.choice, Quot.sound]
  'KAM.Iso.R3bp.delaunay_orbit_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
  'KAM.Iso.R3bp.r3bp_core' depends on axioms: [propext, Classical.choice, Quot.sound]
  ```

- `LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.R3bp.Constants > .lake/abi-scratch/P85Audit1-replay.log 2>&1`: **exit 0**, one invocation for the sole P8-5 module. Complete replay output:

  ```text
  replaying KAM.Iso.R3bp.Constants
  ```

  This is an independent kernel replay receipt, separate from the build and axiom query. The scratch probe and replay log were deleted after recording their results.
- Final `git diff --check`: exit 0, no output. HEAD, the audited source hash and the pre-existing handoff hash remained unchanged. Final git status contains only the pre-existing untracked handoff and this new untracked report. No audit probe remains.

## Closeout boundary

This report certifies only the P8-5 declarations and their demonstrated upstream consumption. It does not certify the P8-4 implementation as a separately audited package, the final I-R3BP provider, physical uniqueness, or the full frozen anchor. Provider/frozen-type equality and seal-body probes are **not applicable to this package**: it adds no provider and changes no frozen body. Replacing those checks with `r3bp_core = restricted_near_circular` would itself be a contract error. The relevant completed checks instead compare the seven P8-5 exports to the actual design types and all four definition equations.

Files changed by the auditor: this report only. Remaining package uncertainty: none beyond the explicit scope and generated-root note; root closure remains a separate task. Suspected new source errata: none.
