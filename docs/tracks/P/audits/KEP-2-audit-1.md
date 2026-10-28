# KEP-2 independent package audit 1

Date: 2026-10-28 UTC. Marker: `audit-kep2`.

**Verdict: PASS for KEP-2 Real Kepler equation.** The 27 public theorems and four public definitions meet the approved real-part signatures and the assigned blueprint contracts. No mathematical, signature, kernel or axiom finding remains. The source lint has only the explicitly permitted generated-root mismatch. There is no provider or frozen theorem anchor in this package; provider-type, seal-body and seal-readiness checks are not applicable, as instructed.

## Snapshot and authority

- Worktree: `/root/code/KAM-inp-kep2`, branch `inp-kep2`; audited commit `1a25d58b110aa44e1144abfed0e293e1b9c41e61`; binding base (its parent): `55722479b9fe7b77110423d59d87d96a0768aeb8`.
- Package diff: `git diff HEAD^ HEAD --stat` gives exactly `KAM/Kepler/Equation.lean | 343 +`; `--numstat` gives `343 0 KAM/Kepler/Equation.lean`. This audit does not claim to re-audit the pre-existing Basic/Plane packages.
- The brief's `git diff inp...HEAD --stat` is empty because the current `inp` already contains this package: `git merge-base inp HEAD` is the audited HEAD. Therefore the user-specified parent comparison is the meaningful package boundary.
- Module SHA256: `dbfa3ca7c1d6d290e844239c83d5c1bbf3c0af52550e942b257f6c959627e124`.
- Binding design: `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md`, package KEP-2, real-equation node table and proof plan, with the exact section B real signatures in `/root/code/KAM-inp-design-kep/.drafts/design/KeplerSignatures.lean` L152–220. Signature-file SHA256 `39f557a4ca7324443508351a3600f0a363e2db726a11af0d6cc58e793d521370` agrees with the design's pinned value.
- Read the package audit brief in full, repository instructions, relevant PLAN/DECISIONS and track I/P statement conventions, P Part 7 L99–115 (`regular-kepler`), I Part 7 L91–134 (`kepler-eq`, real part), and the frozen definition bodies used by the two links.

## Signature and blueprint comparison

All **25 prescribed public theorem headers are identical after whitespace normalization**, including explicit/implicit binders, binder order, carriers, hypotheses, and conclusions. An independently generated Lean probe restated each prescribed type as a complete `∀` type and assigned `@KAM.Kepler.<name>` to it; all 25 elaborated. Four additional `rfl` probes checked the public definition bodies, including the dependent-choice branch of keplerLong. The two extra public theorems, keplerJac_eq and isOpen_planeLength_lt_one, are faithful supporting API additions.

All names below are in `KAM.Kepler`. Line numbers refer to the audited Equation.lean.

| Blueprint node / purpose | Declaration | Line | Verdict | Reason |
| --- | --- | ---: | --- | --- |
| P7 regular-kepler; frozen link | `keplerMeanLongitude_eq` | 43 | PASS | Literal frozen mean-longitude formula; rfl, all w/i/F. |
| P7 regular-kepler; frozen link | `longitudeJacobian_eq` | 58 | PASS | Literal frozen Jacobian formula; rfl, all w/i/F. |
| P7 regular-kepler (a); additional API | `keplerJac_eq` | 61 | PASS | Expands the frozen dot product with the correct two minus signs; unconditional. |
| P7 regular-kepler (a) | `hasDerivAt_keplerPhi` | 65 | PASS | Correct F derivative, on all real v and F. |
| P7 regular-kepler (a) | `keplerPhi_shift` | 74 | PASS | Radians: translation by 2π on both sides. |
| P7 regular-kepler (a) | `keplerPhi_zero` | 78 | PASS | Circular vector gives the identity map. |
| P7 regular-kepler (a) | `keplerJac_ge` | 80 | PASS | Unconditional lower bound 1−planeLength v, using the frozen Euclidean planar length. |
| P7 regular-kepler (a) | `keplerJac_pos` | 85 | PASS | Strict positivity derived from planeLength v<1, not assumed independently. |
| P7 regular-kepler (a) | `keplerPhi_strictMono` | 98 | PASS | Strict monotonicity follows from the everywhere positive derivative. |
| P7 regular-kepler (a) | `keplerPhi_bijective` | 102 | PASS | Injectivity plus IVT at λ−1, λ+1, using the proved bounded displacement. |
| P7 regular-kepler (a) | `keplerPhi_keplerLong` | 121 | PASS | Choice specification, guarded by planeLength v<1. |
| P7 regular-kepler (a) | `keplerLong_unique` | 126 | PASS | An equation premise is appropriate to uniqueness; no existence or regularity is assumed. |
| P7 regular-kepler (a) | `keplerLong_shift` | 130 | PASS | Unique inverse commutes with translation by 2π. |
| P7 regular-kepler (a) | `keplerLong_zero_vec` | 134 | PASS | Exactly F(λ,0)=λ; admissibility of zero is proved. |
| Real IFT domain; additional API | `isOpen_planeLength_lt_one` | 142 | PASS | Openness is proved from continuity of the frozen planar length. |
| P7 regular-kepler (a) | `analyticOnNhd_keplerLong` | 189 | PASS | Joint real analyticity on all ℝ×{planeLength v<1}; genuine C^ω IFT and uniqueness gluing. |
| P7 regular-kepler (a) | `hasDerivAt_keplerLong_lambda` | 211 | PASS | Derivative 1/J at the actual inverse; J≠0 is proved. |
| P7 regular-kepler (a) | `fderiv_keplerLong_vec` | 259 | PASS | Coordinate directions Pi.single 0 1 and Pi.single 1 1 give sin(F)/J and −cos(F)/J. |
| I7 kepler-eq (c), admissibility | `planeLength_eccVec` | 274 | PASS | Signed eccentricities |e|<1, including e=0; no e>0 restriction. |
| I7 kepler-eq (c), real | `eccAnom_eq` | 282 | PASS | Solves u−e sin u=ℓ for every real ℓ and |e|<1. |
| I7 kepler-eq (c), real | `analyticOnNhd_eccAnom` | 287 | PASS | Joint analyticity on ℝ×(−1,1), by the analytic vector embedding. |
| I7 kepler-eq (c), real | `eccAnom_zero_left` | 299 | PASS | u(0,e)=0 throughout |e|<1. |
| I7 kepler-eq (c), real | `eccAnom_two_pi` | 302 | PASS | u(2π,e)=2π throughout |e|<1. |
| I7 kepler-eq (b)/(c), real | `eccAnom_zero_ecc` | 305 | PASS | u(ℓ,0)=ℓ without an unnecessary side condition. |
| I7 kepler-eq (b)/(c), real | `hasDerivAt_eccAnom` | 308 | PASS | Correct inverse derivative 1/(1−e cos u), with denominator guarded. |
| I7 kepler-eq (c), real | `strictMono_eccAnom` | 313 | PASS | Increasing real inverse, preserving the full signed-e domain. |
| P7 regular-kepler (c) | `keplerLong_eq_add_eccAnom` | 324 | PASS | F(λ,e·ex g)=g+u(λ−g,e), with exactly 0<e<1 and arbitrary real g, λ. |

The frozen links are exact at **every** w, i and F, not merely on a regularity domain: KeplerMeanLongitude.lean defines the same scalar expression as keplerPhi at secularEccVector, and LongitudeJacobian.lean defines the same `1 − planeDot ... (orbitalUnit F)` expression as keplerJac. Both package proofs are `rfl`; the signature probe checks their complete types. The frozen orbitalUnit is `(cos F,sin F)`, planeDot is the two-coordinate bilinear dot product, and planeLength is sqrt(planeSq), so no ambient max norm has replaced the Euclidean eccentricity length.

The real analytic IFT proof was checked at Equation.lean L151–186 against Mathlib `Analysis/Calculus/ImplicitContDiff.lean` L49–96. The implicit equation is `Φ(F,v)−λ`, and its F derivative is proved to be multiplication by J. J>0 supplies an explicit inverse linear map; neither invertibility nor local solvability is a premise. `contDiffAt_implicitFunction` is used at order ω, followed by `.analyticAt`. The eventual equation has value zero at the base point, and openness of the valid eccentricity set plus global uniqueness identifies the IFT germ with keplerLong. No smooth-versus-analytic substitution or unproved continuity of the choice function is used.

The IVT proof uses λ−1 and λ+1 and the proved estimate `|Φ(F,v)−F|≤planeLength v<1`, an equivalent direct proof of the blueprint's surjectivity argument. The derivative formulas follow by differentiating the inverse identity, with the vector-parameter proof restricted locally to the open valid domain. The signed domain |e|<1 includes negative eccentricities and e=0, as I Part 7 requires. The polar relation retains exactly the source's 0<e<1 restriction. The complex tube, holomorphic continuation and complex-real compatibility belong to later packages and are not asserted as completed here.

## Definition classification

| Definition | Line | Classification and whole-carrier assessment | Verdict |
| --- | ---: | --- | --- |
| keplerPhi | 38 | Explicit polynomial/trigonometric formula on every real vector and scalar; identical to design. | PASS |
| keplerJac | 41 | Explicit derivative/Jacobian formula using the frozen planeDot/orbitalUnit on the whole real carrier. | PASS |
| keplerLong | 117 | The design's exact total choice: choose a proved preimage if planeLength v<1, otherwise 0. Uniqueness makes the choice canonical on the intended domain. Every inverse/analyticity/derivative claim has the domain guard or proves it for its specialization; no proof uses the fallback to satisfy an intended-domain contract. | PASS |
| eccAnom | 272 | Exact total specialization keplerLong ℓ (e,0), including the inherited off-domain fallback. All nontrivial real anomaly claims assume or establish |e|<1. | PASS |
| keplerEq (private) | 146 | Explicit residual Φ(F,v)−λ on `((λ,v),F)`; no selection, fallback or bundled proof assumption. | PASS |

No structure, abbrev, custom instance or additional public definition was introduced.

## Private proof obligations

Each private theorem was read; the one-module kernel replay includes these proofs. Their names are not additions to the public API.

| Purpose | Private declaration | Line | Verdict | Reason |
| --- | --- | ---: | --- | --- |
| Supporting proof | `planeDot_eq` | 46 | PASS | Expands the frozen finite dot sum. |
| Supporting proof | `planeSq_eq` | 49 | PASS | Expands the frozen finite square sum. |
| Supporting proof | `planeLength_mk` | 52 | PASS | Identifies the frozen planar length with sqrt(a²+b²). |
| Supporting proof | `planeLength_orbitalUnit` | 55 | PASS | Unit length from sin²+cos²=1. |
| Supporting proof | `abs_keplerPhi_sub_le` | 88 | PASS | Proves the bounded displacement used for surjectivity; no new premise. |
| Supporting proof | `continuous_planeLength` | 137 | PASS | Continuity follows from the explicit square-root expression. |
| Supporting proof | `contDiff_keplerEq` | 148 | PASS | Proves C^ω, not merely C^∞, for the implicit equation. |
| Supporting proof | `analyticAt_keplerLong_aux` | 151 | PASS | Builds the J-scaled invertible derivative; local IFT branch equals the global choice by uniqueness on an open neighbourhood. |
| Supporting proof | `differentiableAt_keplerLong_lam` | 195 | PASS | Restriction of joint analyticity to the λ line. |
| Supporting proof | `differentiableAt_keplerLong_vec` | 203 | PASS | Restriction of joint analyticity to the vector parameter. |
| Supporting proof | `fderiv_keplerLong_vec_apply` | 224 | PASS | Differentiates the inverse identity along v+t·d inside the open admissible domain. |
| Supporting proof | `keplerPhi_eccVec` | 278 | PASS | Exact specialization Φ(F,(e,0))=F−e sin F. |
| Supporting proof | `planeLength_ex` | 320 | PASS | Unit length of ex g. |

## Hygiene and independently rerun checks

All commands below ran in `/root/code/KAM-inp-kep2` unless an absolute worktree argument is shown. Lean toolchain: `leanprover/lean4:v4.35.0`; Mathlib is pinned to v4.35.0. No heartbeat, recursion-depth or synthesis override was used. The source has 343 lines, copyright, module command, public imports, module docstring and `@[expose] public noncomputable section`. Forbidden-code-token scanning after stripping comments found no sorry/admit/axiom/unsafe/opaque, set_option or EuclideanSpace. The 45-module transitive project import closure contains no provider or frozen theorem import.

1. Targeted build through the compile gate:

   ```text
   LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-kep2 KAM.Kepler.Equation
   [inp-gate] slot 2 acquired 00:17:23 for KAM.Kepler.Equation
   Build completed successfully (9092 jobs).
   exit 0
   ```

   The wrapper runs the mandated `nice -n 5 lake build` for this one target. No clean, library-wide target, toolchain update or cache operation was run.

2. Requested one-module kernel replay:

   ```text
   LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Kepler.Equation
   replaying KAM.Kepler.Equation
   exit 0
   ```

   **One attempt, no exit 143, no retry.** This is replay of the requested module, not a claim of a full-project replay.

3. Exact signature/body/axiom probe:

   ```text
   LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/KEP2Audit.lean
   exit 0
   ```

   Probe contents: `import KAM.Kepler.Equation`, 25 complete-type assignments generated from the binding real signatures, four `rfl` definition identities, and `#print axioms KAM.Kepler.<name>` for each of the 27 public theorems. The type assignments produce harmless unused-binder warnings in the scratch file; no option was set to suppress them. **Every one of the 27 axiom queries returned exactly `[propext, Classical.choice, Quot.sound]`**, with no sorryAx or project axiom. The full query inventory is the public-declaration table above; representative exact output:

   ```text
   'KAM.Kepler.keplerMeanLongitude_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.longitudeJacobian_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.analyticOnNhd_keplerLong' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.fderiv_keplerLong_vec' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.analyticOnNhd_eccAnom' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Kepler.keplerLong_eq_add_eccAnom' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

   The temporary probe was deleted after checking. No tracked Lean source was edited.

4. Source lint:

   ```text
   sh scripts/lint_sources.sh
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (263 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   exit 1
   ```

   PASS under the brief's explicit exception for the generated-root line; it is the only lint failure. The generated root was not regenerated. The script's routine frozen-file guard is hygiene evidence only; provider/frozen-anchor theorem and seal items were skipped.

5. Protected-path and repository checks:

   ```text
   git diff HEAD^ HEAD -- KAM/Frozen manifest KAM.lean README.md
   [empty]
   git diff HEAD^ HEAD --check
   [empty, exit 0]
   git status --short
   [empty after probe cleanup]
   ```

## Defects, deviations and limits

No suspected blueprint defect, pinned-source erratum or mathematical deviation was found in the assigned real package. No theorem assumes its intended inverse, analytic branch, invertible Jacobian or derivative formula as an input. `keplerLong_unique`'s equation premise is the defining premise of a uniqueness assertion, not a hidden existence assumption. The new supporting public openness/expanded-Jacobian lemmas do not alter any binding declaration.

The off-domain zero fallback is expressly part of the approved definition and has no source claim attached outside planeLength v<1. No provider or anchor is sealed by this audit. The complex Kepler equation and coordinate-chart packages remain outside this audit scope.

Only this report was written in the main inp worktree. The audited worktree's tracked files remained unchanged; all temporary audit probes were removed.
