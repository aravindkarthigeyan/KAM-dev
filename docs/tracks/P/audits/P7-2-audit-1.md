# P7-2 independent audit 1

Verdict: **PASS WITH NOTES** for the package; **PASS** for each of its five designed public declarations. The exact P7-2 infrastructure surface is proved. No frozen headline anchor is sealed by this diff, and this report does not certify any track I/N/P headline theorem.

## Scope, authority, and snapshot

Focused tier-2, refute-first audit, 2026-10-28, in `/root/code/KAM-inp-p72`. Compared `git diff inp...HEAD`: HEAD `8d0a48c6b47fe0d34344b942b163c195a4a7dd6d`, inp `70459244a0e2eb0cee43f1efcbc5b2dc6dd81f2b`. Exactly one tracked change: addition of `KAM/Planetary/Poincare/Symplectic.lean`, 736 lines. Initial status also contained the untracked prover handoff. The user explicitly overrides the brief's generic main-worktree destination: this report belongs here, at `/root/code/KAM-inp-p72/docs/tracks/P/audits/P7-2-audit-1.md`.

Read AGENTS.md, PLAN, DECISIONS, the package audit brief, handoff AUDIT FOCUS, design §7 P7-2 and §7.1, raw blueprint Part 7, track-P statement conventions, relevant frozen coordinate/physical definitions, and the Chart/Mass dependencies. Only this report is a repository edit; transient probes belong under `.lake/abi-scratch/`. No commits, source repairs, frozen edits, or generated-root changes authorized or made. No delegation used.

Frozen-v1 SHA-256 inventory (paths relative to this worktree unless absolute):

| Input | SHA-256 |
|---|---|
| `KAM/Planetary/Poincare/Symplectic.lean` | `4dcff7b5391ac8244d61cbde0eccfae38665cf23c14f276be5b677a6906b8d59` |
| `KAM/Planetary/Poincare/Chart.lean` | `ec3820b4da32b530b388af400c97972491d30f31e8e0ade3b2d305706f0bca20` |
| `KAM/Kepler/Mass.lean` | `4dd6e921d1a8782aab88bec9b9ac63216c656be154161a30e63300bfbf769384` |
| `blueprint-P/parts/p7-kepler-poincare.tex` | `3a10ddf74067a3c7b54184a190710deaba3019c97d2e0d5e9a3773b889cc26ab` |
| `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` | `7c680968ef6f380e4497823a0333ee989b84cf480755d69e474f2d04826e87c8` |
| `/root/code/KAM-inp/.drafts/design/KeplerSignaturesP.lean` | `d9903304231afac0841cf0456d90c3dec04b2eb9e1a9752a9d4f9f9b7164d9c8` |
| `docs/tracks/P/audits/P7-2-handoff.md` | `e55228c07bbebb7c8321a771f7fd2e521bf2c822fda03fd120512422dfe2212f` |
| `docs/tracks/P/statement.md` | `06d876320d40f7ae0cb5cdbe7e5b08a00b431125630079a2b3d3abcaac2e0b66` |

## Declaration ledger and source fidelity

All names below have namespace `KAM.Planetary`. Every public theorem in the diff is listed. All five complete theorem headers, including the means theorem's two local `let` bindings, match the design signatures after whitespace normalization. Independent transient declarations use those design types and bodies `by exact <implementation> <explicit binders in order>`; no design `sorry` body is imported. Provider/frozen equality and anchor seal probes are inapplicable: this package adds neither a provider nor a frozen declaration.

| Blueprint node | Declaration (line at frozen-v1) | Verdict | Evidence |
|---|---|---|---|
| `bpP:p7:poincare` (b) | `poincare_eq_delaunayMK` (249) | PASS | Full position/momentum equality for Γ>0, Γ<Λ, polar radius √(2Γ), longitude λ−g, actions Λ and Λ−Γ. Exact design type; positive Λ follows internally. |
| same (c) | `poincare_symplectic` (645) | PASS | `IsSymplecticOn 1 (poincare m κ) poincareDom`, including Γ=0. Frozen dp∧dq convention, position order (λ,ξ), momentum order (Λ,η), factor exactly one. |
| same (d) | `poincare_elements` (195) | PASS | Region membership, energy, axis, action, signed cross product and full κ-rescaled LRL vector; all hold on the entire domain, including circular points. |
| same (f) | `poincare_circular` (221) | PASS | Exact chart value at ((λ,0),(Λ,0)), Λ>0, with physical momentum m√(κ/a)(−sin λ,cos λ). |
| `bpP:p7:kepler` (c), transported | `poincare_means` (355) | PASS | Three physical means over λ∈[0,2π], normalizer (2π)⁻¹, values 1/a, m²κ/a, a(1+(1−k²)/2). Circular endpoint included. |

Blueprint anchors quoted at the pinned revision: Part 7 lines 142–146 require “Delaunay on Γ>0”, “on all of O”, “action ... Λ”, and the circular formulas. Part 7 `stepP:p7:po-dense` requires an identity of continuous derivatives extending from the noncircular set. The stronger local coordinate parametrization used in Lean implements exactly those requirements. The longitude identity F=g+u is obtained in the proof of (b) from `keplerLong_eq_add_eccAnom` (lines 287–289); it is not added as a hypothesis. Invertibility and the full chart/local-diffeomorphism packaging are consequences/other package surfaces, not silently claimed as new exports here (design assigns the local-diffeomorphism export to P7-3).

### Expanded binder classification

Rows below exhaust the public theorem binders and the universally quantified inputs obtained by expanding `IsSymplecticOn`. Membership in `poincareDom` is expanded into its two inequalities. SOURCE includes the explicit Part 7 standing convention m>0, κ>0; thus no separately assumed STANDING bundle is needed. Each comma-separated entry denotes a separate binder/input of the displayed class.

| Declaration | Input | Bin | Source |
|---|---|---|---|
| eq_delaunayMK | m | TYPING | Part 7 real mass parameter |
| eq_delaunayMK | κ | TYPING | Part 7 real strength parameter |
| eq_delaunayMK | λ | TYPING | (b), real longitude |
| eq_delaunayMK | Λ | TYPING | (b), real action |
| eq_delaunayMK | Γ | TYPING | (b), real polar action |
| eq_delaunayMK | g | TYPING | (b), real polar angle |
| eq_delaunayMK | hm: 0<m | SOURCE | §p7 conventions |
| eq_delaunayMK | hκ: 0<κ | SOURCE | §p7 conventions |
| eq_delaunayMK | hΓ: 0<Γ | SOURCE | (b), nonzero polar radius |
| eq_delaunayMK | hΓΛ: Γ<Λ | SOURCE | O, (b) |
| symplectic | m | TYPING | §p7 conventions |
| symplectic | κ | TYPING | §p7 conventions |
| symplectic | hm: 0<m | SOURCE | §p7 conventions |
| symplectic | hκ: 0<κ | SOURCE | §p7 conventions |
| symplectic (expanded) | z: Phase 2 | TYPING | (c), arbitrary domain point |
| symplectic (expanded) | 0<z.2 0 | SOURCE | (c), O |
| symplectic (expanded) | Γ(z)<z.2 0 | SOURCE | (c), O |
| symplectic (expanded) | u: Phase 2 | TYPING | (c), arbitrary tangent vector |
| symplectic (expanded) | v: Phase 2 | TYPING | (c), arbitrary tangent vector |
| elements | m | TYPING | §p7 conventions |
| elements | κ | TYPING | §p7 conventions |
| elements | hm: 0<m | SOURCE | §p7 conventions |
| elements | hκ: 0<κ | SOURCE | §p7 conventions |
| elements | w: Phase 2 | TYPING | (d), arbitrary domain point |
| elements (hw) | 0<w.2 0 | SOURCE | (d), O |
| elements (hw) | Γ(w)<w.2 0 | SOURCE | (d), O |
| circular | m | TYPING | §p7 conventions |
| circular | κ | TYPING | §p7 conventions |
| circular | hm: 0<m | SOURCE | §p7 conventions |
| circular | hκ: 0<κ | SOURCE | §p7 conventions |
| circular | λ | TYPING | (f), real angle |
| circular | Λ | TYPING | (f), real action |
| circular | hΛ: 0<Λ | SOURCE | (f), O at ξ=η=0 |
| means | m | TYPING | §p7 conventions |
| means | κ | TYPING | §p7 conventions |
| means | hm: 0<m | SOURCE | §p7 conventions |
| means | hκ: 0<κ | SOURCE | §p7 conventions |
| means | w: Phase 2 | TYPING | transported means, arbitrary domain point |
| means (hw) | 0<w.2 0 | SOURCE | O |
| means (hw) | Γ(w)<w.2 0 | SOURCE | O |

Counts (SOURCE/STANDING/TYPING/RULED/EXCESS): (b) 4/0/6/0/0; (c), expanded, 4/0/5/0/0; (d) 4/0/3/0/0; (f) 3/0/4/0/0; means 4/0/3/0/0. No conclusion-shaped premise or bundled proof obligation. `a` and `pt` in means are local definitions, not inputs. No existential constant or witness has acquired extra dependence.

## Proof audit and adversarial checks

**Circular symplecticity.** Lines 605–640 prove the noncircular identity by differentiating ψ∘P=Q∘T on an actual open neighborhood with ρ>0, Λ>0 and ρ²/2<Λ. `sy_P_mem` supplies the chart domain, and `hmemT` supplies the Delaunay domain. `sy_surj` supplies explicit preimages for arbitrary tangent vectors and uses ρ≠0 only on this noncircular branch. `sy_form_T_eq_P` checks the sign and factor using sin²+cos²=1. The proof never differentiates a discontinuous global argument function: `Complex.arg` only selects a point's polar angle; derivatives are taken in the smooth independent polar parameters.

For Γ=0 (lines 667–730), `analyticOnNhd_poincare` supplies ambient analyticity at every point of O. Chart lines 212–237 use the strictly positive radicand, Λ, J and 1+k; none excludes ξ=η=0. `hana.fderiv.continuousOn` gives continuity of the derivative, hence of the form evaluated on fixed arbitrary u,v. Openness of O converts this to ambient continuity at w. The proof derives ξ=η=0 from Γ=0, defines γ(t)=((λ,t),(Λ,η)), proves γ(0)=w, and transports a hypothetical nonzero defect and domain membership to a neighborhood of 0. The punctured real neighborhood is nontrivial, supplying t≠0; Γ(γ(t))=t²/2>0. This contradicts the established noncircular identity. Refutation attempts based on absent domain control, singular derivatives, or an empty approach set all fail at these explicit steps. It is not an appeal to an unproved density assertion.

**Algebraic certificates.** Lines 48–81 contain six private `linear_combination` proofs U1,U2,U3,U4,U5a,U5b. Their premises are precisely |c|²=1, |V|²=1−K² and δ(1+K)=V·c. `sy_elements_alg` derives these from chart facts, proves J>0 and every denominator condition internally, and transports U5a/U5b into the two components of the LRL vector (lines 163–192). The source of the certificate coefficients (Groebner computation) is not a trust input: they are checked Lean terms, covered by replay. In particular positivity distinguishes |q|=aJ from its squared identity. No certificate file, CAS output assumption, or external oracle is imported.

**Means.** Lines 369–407 handle Γ=0 directly by the circular theorem, physical lengths and squared momenta, reducing to integrals of constants. Lines 408–472 handle Γ>0 by a pointwise polar representation, the Delaunay identity, the exact mass/strength means and a periodic shift of the integration window. The shift is justified by `Function.Periodic.intervalIntegral_add_eq`. The angle window and the physical Euclidean plane length are unchanged; Pi max norm does not replace physical length.

## New definition classification

There are no new public definitions, abbreviations or structures. Exactly five private literal definitions occur:

| Definition | Line | Intended body on whole carrier | Result |
|---|---|---|---|
| `sy_P` | 480 | ((λ,ρ),(Λ,g)) ↦ ((λ,ρ cos g),(Λ,ρ sin g)) on all Phase 2 | PASS |
| `sy_T` | 485 | ((λ,ρ),(Λ,g)) ↦ ((λ−g,g),(Λ,Λ−ρ²/2)) on all Phase 2 | PASS |
| `sy_c1` | 489 | continuous linear projection to position coordinate i | PASS |
| `sy_c2` | 492 | continuous linear projection to momentum coordinate i | PASS |
| `sy_mk4` | 499 | continuous linear assembly of four scalar functionals into Phase 2 | PASS |

For each: BODY_MATCH OK; PUBLIC_CARRIER OK (private, full literal carrier); WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS. No branch, default, arbitrary choice, or fabricated off-domain semantics. The polar identities are correctly restricted in theorems rather than built into the definitions. Baseline meaning-carrying definitions inspected include `poincareGamma/K/V/F`, `poincare`, `poincareDom`, physical energy/axis/action/region, `Phase`, `planeSq/Length/Dot/Cross`, `quarterTurn`, `keplerEccVector`, and the literal frozen `symplecticForm`. Their formulas match Part 7; baseline implementation is not re-certified as a separate package.

## Hygiene and independent verification

The final Lean-bearing checks were serialized with `LEAN_NUM_THREADS=1` and `nice -n 5`. No heartbeat, recursion-depth, or synthesis override was used. The initial lint invocation was started without the explicit thread/nice wrapper; it was subsequently rerun with that wrapper, after all other Lean-bearing checks finished. That initial invocation returned the same allowed stale-root result. This is an audit-execution deviation, not a source change.

1. Targeted build:

   ```text
   env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p72 KAM.Planetary.Poincare.Symplectic
   [inp-gate] slot 1 acquired 03:55:12 for KAM.Planetary.Poincare.Symplectic
   Build completed successfully (9101 jobs).
   exit 0
   ```

   The gate invokes `nice -n 5 lake build`. Baseline replay warnings were unused variables in Energy (106), Chart (212,247), and Mass (147,157,500,524). No package-module warning or build error. This was a targeted cached build, not a clean library rebuild.

2. Signature checks/probe:

   Python extracted each complete `theorem <name> ...` header from the design up to ` := sorry`, and from the implementation up to ` := by`; removing whitespace gives equality for all five. In particular the delimiter includes the theorem-body marker, so the means theorem's internal `let ... := ...` clauses are retained. It generated `.lake/abi-scratch/P72Audit.lean` importing only `KAM.Planetary.Poincare.Symplectic`, opening the same namespaces/scopes, and replacing each design name with `audit_<name>` and the body with `by exact <name> <explicit arguments>`. Argument lists, respectively: `hm hκ hΓ hΓΛ`; `hm hκ`; `hm hκ hw`; `hm hκ hΛ`; `hm hκ hw`. It appended `#print axioms` for each implementation export.

   ```text
   env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P72Audit.lean
   'KAM.Planetary.poincare_eq_delaunayMK' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.poincare_symplectic' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.poincare_elements' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.poincare_circular' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.poincare_means' depends on axioms: [propext, Classical.choice, Quot.sound]
   exit 0
   ```

   The first generated audit probe accidentally stopped at the means theorem's internal `let` assignment and failed parsing; the extraction delimiter was corrected and the complete probe above passed. That failure was in audit scratch, not the implementation. The probe was deleted after verification. No unauthorized axiom or `sorryAx` occurs in the five export closures.

3. Kernel replay, exactly one invocation for the single new module:

   ```text
   env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Planetary.Poincare.Symplectic
   replaying KAM.Planetary.Poincare.Symplectic
   exit 0
   ```

   This checks the module containing the private polynomial certificates as well as all public proof bodies. No provider module is applicable.

4. Lint (final serial rerun):

   ```text
   env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (371 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   exit 1
   ```

   The sole diagnostic is the explicitly allowed generated-root exception. Therefore lint is PASS under the package brief's exception, with its actual nonzero exit code preserved here; no unconditional exit-0 claim.

5. Mechanical checks:

   ```text
   git diff --check inp...HEAD
   [no output; exit 0]
   git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
   [no output; exit 0]
   ```

   Package lexical scan: 736 lines, five public theorems, five private literal definitions; forbidden-token/resource-override scan returned `[]`. Header has copyright, `module`, three `public import` lines, module docstring, and `@[expose] public noncomputable section`; final `end` present. Imports are exactly Mathlib, Poincare.Chart and Kepler.Mass, with no provider or frozen theorem import added. Frozen-anchor guard and ABI checks cover 144 unchanged frozen declarations. Final SHA-256 recheck matched all six main pinned code/design/blueprint files. `git diff --check -- docs/tracks/P/audits/P7-2-audit-1.md` and final scope checks are performed before handoff.

## Findings, errata, limitations, and closeout

No material statement, proof, or source defect found; no reportable unrefuted tentative findings. No source or blueprint erratum identified in this package. The existing Fej04r normalization/source-gap discussion in Part 7 is acknowledged, not newly closed for any broader claim. The explicit formulas and verified derivative/algebraic arguments, rather than the unproved literature citation, support these five results.

Notes: the generated root is stale by the explicitly permitted audit exception; it was not regenerated. No frozen anchor seal is applicable. Baseline dependencies were inspected where used and included in axiom/replay closure, but their complete source audits and unrelated frozen headlines are outside this focused package audit. All five public declarations and all five new private definitions are classified; the mathematical focus areas were checked directly. Final verification status is recorded above. No Lean implementation deviations introduced. All required verification completed; the sole lint exception is recorded explicitly. No pending probe or check remains.
