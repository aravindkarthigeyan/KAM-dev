# P4-10 (LIP): independent audit 1

**Overall verdict: PASS.** All six package nodes are supported, the public signature is byte-identical to design Appendix A §12, and every package result has only `propext`, `Classical.choice`, and `Quot.sound` in its axiom closure. This certifies the LIP package with its explicit, design-authorized `GValid` input; it is not a seal or a proof-completion claim for HEAD.

## Scope, authority, and frozen inputs

Audit date: 2026-10-27. Worktree: `/root/code/KAM-w-p4-10`, branch `k/p4-10`. Audited HEAD: `1ff7affd36f0939c2ba38d1e96e07a7ab7d86141`. Initial `main`: `87ec315a698df693deb80072ad00692a8e054b4c`. The supplied handoff refers to the prover commit `dfc1dc5`; the checked-out HEAD includes its merge with main. Main advanced independently during this audit, so the recorded initial baseline is the reproducible comparison target.

Permission envelope: read-only implementation inspection, targeted builds, temporary probes under `.lake/abi-scratch/`, and this report only. No implementation, frozen file, manifest, generated file, or git state was changed by the auditor. The pre-existing untracked `P4-10-handoff.md` and pre-existing scratch files were preserved. No subagents were used.

Read: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `AUDIT-PACKAGE.md`, `P4-10.md`, `P23-COMMON.md`, `PROVER-COMMON.md`, the supplied handoff and AUDIT FOCUS, the relevant Part 4 design sections and Appendix A contracts, `DESIGN-P4-audit-1.md`, the graph contracts, blueprint statements and proofs, and the implementation and predecessor interfaces cited below. Method: focused tier-2 correspondence/proof audit, followed by a separate adversarial recheck of potential failures and mechanical hygiene checks. The report is the single audit artifact.

Input manifest (SHA-256, frozen-v1; repository files are at the audited HEAD except the supplied untracked handoff):

| File | SHA-256 |
|---|---|
| `KAM/Head/Lip.lean` | `0c4974f5fcaf7bc468c6faeeb777b92e813504864900937f155d80277d402656` |
| `KAM/Head/Defs.lean` | `322e5594794336ddf8dc742648849145f20d3bfbc23c443883b21aa1d9bc6edb` |
| `KAM/Head/Standing.lean` | `dbeecb939e4a05dad2cd29dd5aa0f54caf3fe8d426aafdecc5e029da104cc1b4` |
| `KAM/Head/Parameters.lean` | `380469e3cf6fb6758c60c6d4048f76515768a600bf86c627d1c422b75b15a8a7` |
| `KAM/Head/Stab.lean` | `75d581ec828edc5dab31ba7442fd54953914df0126376d5b23b74389cd059874` |
| `KAM/Head/LipError.lean` | `d971147e7f33b9924740c805fb37bd33a1bd465b54b409e06c41b8d8ae68228a` |
| `KAM/Head/Normalize.lean` | `86466d20ad0660685552bffe251ed85ecea677cf3914284c65367ea3709b5f37` |
| `KAM/Head/Shift.lean` | `3a9fd11bd6dc687ab5812daa3da726763072eacdb7a8bf17f331c644f60b00bb` |
| `KAM/Strip/Increments.lean` | `fc612f47bed15c922d0f860c900cfd230e0faf87171cc2f4864fc5f5673ae1e1` |
| `blueprint/parts/p4-measure.tex` | `6de22b372e66280b06e14c26220e311983c97ce848c868b8843c49230d780642` |
| `docs/campaign/design/PART4-LEAN-DESIGN.md` | `cb301f9c57ff4ff7d36a88c850459937c8f4ca8b789e88eeb4ca710edf2987d2` |
| `docs/graph/K/DEPGRAPH.md` | `cdf189bffb22bfbf3160551516d2853e3c1cd4353eaf7d87beef04832f8baa96` |
| `docs/campaign/briefs/AUDIT-PACKAGE.md` | `76b821648f341c99cd6787211cf983e5e1f281aff186f9b9c0b252b8f9d0e275` |
| `docs/campaign/briefs/P4-10.md` | `3fe6cf482a6fe94cc6cf5f2c00c1465dc5f33f834cd13a847f88d0bc076a5f2a` |
| `docs/campaign/audits/P4-10-handoff.md` | `fdae4a151ded55af430244bd07addce1b02ec00a5019805fc6ab0a843deb1b0c` |

Initial `git diff main...HEAD --stat`:

```text
 KAM.lean          |   1 +
 KAM/Head/Lip.lean | 455 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 456 insertions(+)
```

The generated-root change is exactly `public import KAM.Head.Lip`; the generator's check passes. There is no package-specific frozen anchor: the graph's `FROZEN_FILE`, `FROZEN_DECL`, and `FROZEN_ANCHOR_ID` for LIP are `-`. This is a library package, not a provider package.

## Node ledger

All implementation locators below refer to frozen-v1 `KAM/Head/Lip.lean`. All source locators refer to frozen-v1 `blueprint/parts/p4-measure.tex`.

| Node | Lean declaration(s) | Verdict | Evidence and reason |
|---|---|---|---|
| `bp:p4:lip` | `KAM.Head.lip`, L442–451 | PASS | Source L876–882: “For all … all … `T_{s/32}`”, bound `A_3 ε γ⁻⁴ |ω′−ω|`. Exact design §12 signature; no close-pair restriction survives into the public theorem. |
| `step:p4:lip-far` | `KAM.Head.Lip.far_case`, `far_arith`; close-pair error arithmetic also in `err_le` | PASS | Source L885–890: “`2η₀=2A₀εγ⁻²`”. L203–214 use both normalization bounds, positive `λ_*`, and `A3 ≥ 2A0/λ_*`. The generic `far_arith` specializes to the sharper coefficient `2A0/λ_*`; the consumer immediately uses its `A3` corollary. L81–86 formalize the remaining close-pair bound `e′ ≤ A1 λ_* ε`. |
| `step:p4:lip-g1` | `KAM.Head.Lip.g1_step`, `err_le`, `g1_small`, L220–257 | PASS | Source L892–911: “`(ρ,ρ∞)=(3s/32,s/16)`”. All seven G1 output clauses retained, including the ball and derivative margins. H1–H5, error, and strict smallness are supplied at the call, as detailed below. |
| `step:p4:lip-g2` | `KAM.Head.Lip.g2_step`, `close_arith`, L264–335 | PASS | Source L913–927: “`K1=K_{ω′}, K2=K̃`”. Correct asymmetric hypotheses, `2η0+d1` estimate and (s5), followed by the exact strip identity `(s/16)/2=s/32`. The helper's explicit `Kt` premises are previously proved G1 output, supplied together at L355–357. |
| `step:p4:lip-phase` | `KAM.Head.Lip.norm_phi_le`, `norm_phaseAverage_sub_le`, `phaseAverage_shiftedTorus`, used at L371–375 | PASS | Source L929–934: “`ph(K̃)=φ`” and “`|φ|≤d1`”. The former is proved as local `h1` at L167–174, the latter is the exported conclusion. Translation invariance comes from the actual `phaseAverage_phaseShift`, whose proof uses continuous periodic displacement averages. The shifted torus has exactly the same angle component. |
| `step:p4:lip-close` | `KAM.Head.Lip.close_case`, `final_arith`, `norm_ofReal_vec_le`, L346–434 | PASS | Source L936–945: “`(σ_K+1)d1=A2 ε γ⁻⁴ |Δω|`”. Correct inverse phase sign, displacement identity, real-segment increment estimate, and `A2 ≤ A3`. Every prerequisite is constructed inside `close_case`. |

## Binder and constant audit

The following expands the public theorem's logical input bundles. Universal implication arguments inside the source G1/G2 bodies are not extra root premises: they are the hypotheses discharged in the next section. `GValid` is explicitly authorized by design §2.2 and departure P1; it contains the source G results at the constants fixed in blueprint L405–436, with no LIP, phase, STAB, or other Part 4 conclusion field.

| Expanded binder/input | Bin | Authority |
|---|---|---|
| `n : ℕ` | TYPING | Part 0 finite-dimensional convention |
| `τ : ℝ` | TYPING | HEAD data, Part 4 data section |
| `s₀ : ℝ` | TYPING | Same |
| `r₀ : ℝ` | TYPING | Same |
| `Lh : ℝ` | TYPING | Nondegeneracy witness, design P2 |
| `B : Set (Fin n → ℝ)` | TYPING | HEAD action carrier |
| `h : (Fin n → ℂ) → ℂ` | TYPING | Complexified integrable Hamiltonian |
| `f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ` | TYPING | Perturbation carrier |
| `ε : ℝ` | TYPING | Perturbation size |
| `γ : ℝ` | TYPING | Diophantine constant |
| `gc : GConsts` | TYPING | Six scalar constants, design P1 |
| `hD.two_le` | STANDING | HEAD: `2 ≤ n` |
| `hD.tau_gt` | STANDING | HEAD: `n−1 < τ` |
| `hD.s₀_pos` | STANDING | HEAD: `0 < s₀` |
| `hD.r₀_pos` | STANDING | HEAD: `0 < r₀` |
| `hD.isOpen` | STANDING | HEAD: open `B` |
| `hD.isBounded` | STANDING | HEAD: bounded `B` |
| `hD.holo` | STANDING | HEAD: holomorphic `h` on `actionNbhd B r₀` |
| `hD.real` | STANDING | HEAD: reality on the real slice of that domain |
| `hD.nondeg` | STANDING | HEAD: `‖I−J‖ ≤ Lh ‖frequencyMap h I−frequencyMap h J‖` for both points in `closure B` |
| `hP.holo` | STANDING | HEAD perturbation: holomorphic on the full product domain |
| `hP.periodic` | STANDING | HEAD perturbation: every integer angle translation |
| `hP.real` | STANDING | HEAD perturbation: real on real points in the domain |
| `hP.bound` | STANDING | HEAD perturbation: pointwise norm at most `ε` |
| `hgc.toPos.C11_pos` | SOURCE | G1 first tuple, positive first constant; blueprint parameters |
| `hgc.toPos.C21_pos` | SOURCE | G1 first tuple, positive second constant |
| `hgc.toPos.C12_pos` | SOURCE | G1 second tuple, positive first constant |
| `hgc.toPos.C22_pos` | SOURCE | G1 second tuple, positive second constant |
| `hgc.toPos.cG_pos` | SOURCE | G2 positive uniqueness constant |
| `hgc.g1a` | SOURCE | Whole G1 universal body at `(s/4,s/8)`, design §2.2 |
| `hgc.g1b` | SOURCE | Whole G1 universal body at `(3s/32,s/16)`, same fixed `M,σK,σB,σT,μ,γbar=1` |
| `hgc.g2` | SOURCE | Whole G2 universal body at `s/16`, same fixed bounds and margin |
| `hgc.g3` | SOURCE | Whole G3 bound for every positive parameter on `frequencyMap h '' B`; unused directly here |
| `hSA.gamma_pos` | STANDING | (SA), blueprint L450–453: `0 < γ` |
| `hSA.gamma_le` | STANDING | (SA): `γ ≤ 1` |
| `hSA.eps_nonneg` | STANDING | (SA): `0 ≤ ε` |
| `hSA.eps_le` | STANDING | (SA): `ε ≤ cStar … gc * γ^4` |
| `ω : Fin n → ℝ` | TYPING | Frequency carrier |
| `ω ∈ frequencyMap h '' B` | SOURCE | First `OmegaGamma` membership, blueprint L877 |
| `IsDiophantine γ τ ω` | SOURCE | Same membership |
| `ω′ : Fin n → ℝ` | TYPING | Frequency carrier |
| `ω′ ∈ frequencyMap h '' B` | SOURCE | Second `OmegaGamma` membership |
| `IsDiophantine γ τ ω′` | SOURCE | Same membership |
| `θ : Fin n → ℂ` | TYPING | Strip carrier |
| `θ ∈ complexStrip n (stripWidth s₀ / 32)` | SOURCE | Blueprint L877–878 |

Counts: SOURCE 14; STANDING 17; TYPING 14; RULED 0; EXCESS 0. No hidden project typeclass assumptions. `GValid`'s unused fields enlarge the explicit source-input bundle exactly as prescribed; they add no new analytic premise.

Constants: `A0=2 C21 F1/(s/4)^(2τ)`, `λ*=δ*/(4Lplus Lh)`, `A1=Lplus Lh*(H3*A0+F2)+32*n*A0/s`, `A2=(σK+1)*C22*A1/(3s/32)^(2τ)`, and `A3=max A2 (2*A0/λ*)` match blueprint L415–422 and `Defs.lean`. Their arguments contain neither `f`, `ε`, `γ`, `ω`, `ω′`, nor `θ`. LIP is universal in the fixed constants `gc` satisfying the source-body premise; no existential constant is chosen after the perturbation or frequencies. All norms are the intended max norms, including the product max norm, and all strip widths are geometric widths. The real-point corollary follows from positive `s/32`; its omission as a separate conjunct is design P13.

Internal helper premises were checked individually: the five arithmetic helpers assume only the scalar relations they prove consequences from; `norm_phaseAverage_sub_le` assumes holomorphy and the supplied norm bound; `norm_phi_le` assumes precisely the phase-step identity, normalization, holomorphy and G1 distance; `phaseAverage_shiftedTorus` and `norm_ofReal_vec_le` have no analytic premises; far/close/g1 helpers use the root inputs and their case condition; `g2_step` adds exactly the preceding G1 witness properties it consumes. At L355–375, all these intermediate hypotheses are supplied by actual predecessor applications, never exported as new assumptions of `lip`.

## G1 and G2 point-of-use audit

`G1Body` and `G2Body` in `Defs.lean` were compared against the actual frozen universal bodies in `AposterioriKam.lean` and `LocalUniquenessFlow.lean`: equality after removing whitespace and line comments, with all binders, arrows, formulas, and output clauses preserved. These are actual frozen definitions of the interface, not handoff summaries. The package itself imports neither anchor.

| Required body premise | G1 call at L253–256 | G2 call at L329–332 |
|---|---|---|
| Domain and Hamiltonian | `domainD n s₀ r₀ B`, `hbold h f` | Same |
| Domain open | `o1`, `h1 hD hP hε1` | Same construction |
| Domain integer-translation invariant | `o2`, same `h1` | Same |
| Hamiltonian holomorphic | `o3`, same `h1` | Same |
| Hamiltonian periodic | `o4`, same `h1` | Same |
| Hamiltonian real on real domain points | `o5`, same `h1` | Same |
| Four derivative/vector-field bounds by `Mconst` | `o6`, same `h1`; (s1) gives `ε ≤ 1` | Same |
| Reference torus holomorphic | `k1` from `stab` for `shiftedTorus`, originally holomorphic on `s/8` by `lip_error` | `k1` from `stab` for `normTorus … ω′`, originally holomorphic on `s/8` by `normalize` |
| Reference primary | `k2`, `stab` consumes `hLp` from `lip_error` | `k2`, `stab` consumes `hNp` from `normalize` |
| Reference real on reals | `k3`, same | `k3`, same |
| Reference `μ`-ball contained in domain | `k4`, STAB | `k4`, STAB |
| Reference derivative ≤ `σK−μ` | `k5`, STAB | `k5`, STAB |
| Gram determinant unit and each inverse row sum ≤ `σB−μ` | `k6`, STAB, preserving the row-sum form | `k6`, same |
| Averaged torsion determinant unit | `k7`, STAB | `k7`, STAB |
| Every inverse torsion row sum ≤ `σT−μ` | `k8`, STAB | `k8`, STAB |
| Positive `γ` | `hSA.gamma_pos` | Same |
| `γ ≤ γbar=1` | `hSA.gamma_le` | Not a G2 premise |
| Diophantine `ω′` | `hω′.2` | Same |
| Error norm ≤ `e′` | `hLerr` from `lip_error`, with exact `e′=A1*ε/γ²*‖ω′−ω‖` | Not a G2 premise |
| Strict `C12*e′/(γ⁴*(3s/32)^(4τ)) < 1` | `g1_small` uses close-pair bound and (s4) ≤ `1/2`; denominators proved positive | Not a G2 premise |
| Reference invariant | Not required | `hNE` from `normalize`, restricted from `s/8` to `s/16` |
| Comparison torus holomorphic | Not applicable | `hKd` from the actual `g1_step` witness |
| Comparison primary | Not applicable | `hKp`, same witness |
| Comparison real on reals | Not applicable | `hKr`, same witness |
| Comparison image in domain | Not applicable | `hKball` applied to the center, using `0 < μ/2`; no ball-to-center inference at a zero radius |
| Comparison invariant | Not applicable | `hKE`, same G1 witness |
| Pair close by `cG*γ²*(s/16)^(2τ)` | Not applicable | Triangle decomposition L306–328 gives `2η0+d1`; `close_arith` and (s5) give the required bound |

For both STAB applications, `inverse_freq hD` supplies `invFreq h B ω′ ∈ B` and `‖ω′‖ ≤ Winf`; (s1) supplies the perturbative Hessian smallness. G1 STAB uses `(ρ,δ)=(s/8,s/32)` and (s3)'s `η0 ≤ etaStar(s/32)`. G2 STAB uses `(s/8,s/16)` and transitivity through (s3)'s `etaStar(s/32) ≤ etaStar(s/16)`. Positive widths, strict `δ < ρ`, and `ρ ≤ s/4` follow from `Data.s₀_pos`. The exact rewrites are at L245 and L292. No output margin from G1 is silently reused as a stronger reference margin for G2: STAB reconstructs the reference margins at `K_{ω′}`.

## Definitions, phase, and adversarial recheck

**New definitions:** none. The package adds 14 theorems and a proof-local abbreviation `d1` (L361), whose body is exactly `C22*e′/(γ²*(3s/32)^(2τ))`. No new `def`, `abbrev`, structure, instance, fallback, choice construction, or parallel carrier is introduced.

Inherited definitions were traced to their actual bodies: `normDisp=normTorus−unperturbedTorus`, `shiftedTorus=normTorus+(0,ιΔI)`, `angleDisplacement=(K θ).1−θ`, and `phaseAverage` is the coordinatewise real unit-cube integral. `invFreq` is the design-authorized total `invFunOn`; every analytic use has frequency-image membership. `applyTorus` is an arbitrary fixed APPLY witness, as explicitly specified by the blueprint/design, not an object claimed to be uniquely characterized. `normalize` obtains its properties by `Classical.epsilon_spec (apply …)` before they are used here. The proof uses no off-source fallback values and assumes no choice independence or uniqueness beyond the invoked G2 phase relation.

Separate adversarial recheck, with attempted failure and disposition:

| Attempted refutation | Evidence that rules it out |
|---|---|
| A G1/G2 hypothesis is hidden in a bundled premise | Expanded `Data`, `Pert`, `SA`, `GValid`; source G bodies match the anchors; the point-of-use ledger accounts for every arrow at the two calls. |
| Wrong strip after STAB or local uniqueness | Explicit ring equalities `s/8−s/32=3s/32`, `s/8−s/16=s/16`, `(s/16)/2=s/32`; actual applications elaborate. |
| G2 comparison image membership is vacuous | `muParam_pos` and `half_pos` establish positive radius before `Metric.mem_ball_self`. |
| Phase known only modulo integers, or sign reversed | `norm_phi_le` proves exact `phaseAverage Kt=φ` from the primary lift's translation-average formula; G2 gives `Kt(θ)=Kω′(θ+ιφ)`, so L388–389 correctly use `θ−ιφ`. |
| Integral subtraction uses a non-integrable phase displacement | L132–143 prove continuity on real points and integrability of both unit-cube integrands before `integral_sub`. The unit cube has the intended period-one normalization. |
| Phase shift leaves the complex strip or increment needs extra smallness | `φ` is real, so imaginary parts are unchanged (L378–380). Both segment endpoints lie in `s/32`; `increments_mvt` uses convexity of that strip, not a bound on `‖φ‖` relative to the strip loss. |
| Coincident frequencies or `ε=0` invalidate division | Divisors are positive powers of `γ`, positive strip widths, or `λ*>0`; the proof never divides by `ε` or `‖ω′−ω‖`. Both degenerate cases are included. |
| Far case or final constant loses the required rate | `far_arith` cancels only positive `γ` and `λ*`; `final_arith` retains both `γ⁻²` factors. `A3` is exactly the maximum of the close and far constants. |

No attempted mathematical or hygiene finding survived. These are auditor rechecks, not an additional independent agent review.

## Verification commands and outputs

All commands ran from this worktree. Lean invocations were serialized. No library clean, from-scratch rebuild, dependency update, or resource override was used.

1. `nice -n 5 lake build KAM.Head.Lip` — exit 0:

   ```text
   Build completed successfully (3222 jobs).
   ```

   This is Lake's targeted dependency-job count, not a claim that 3222 files were freshly compiled. Direct source elaboration was also run to avoid relying solely on cached package artifacts.

2. `nice -n 5 lake env lean KAM/Head/Lip.lean` — exit 0, no output, default elaboration budgets.

3. `sh scripts/lint_sources.sh` — exit 0:

   ```text
   check_lean_modules: PASS (282 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   This also checks the generated root, errata rendering, module form, line length, file cap, forbidden proof escapes, resource overrides, frozen ownership, quarantine, and manifested ABI hashes.

4. `git diff main...HEAD -- KAM/Frozen manifest` and `git diff --check main...HEAD` at the initial baseline — both exit 0, no output. The final pinned-baseline checks are `git diff 87ec315a698df693deb80072ad00692a8e054b4c...1ff7affd36f0939c2ba38d1e96e07a7ab7d86141 -- KAM/Frozen manifest` and the corresponding `git diff --check`: same results.

5. Python source checks (using `pathlib` and `re`): extract the `theorem lip (` text through the pre-proof ` :=` from `Lip.lean` and design §12 and compare bytes; recursively traverse project import lines from `KAM.Head.Lip`; inventory definitions and count lines. Exact output:

   ```text
   Design §12 signature byte equality: True
   Project import closure: 88 modules; forbidden: []
   Package definition declarations: []
   Package line count: 455
   G1Body matches frozen universal body (whitespace/comments normalized): True
   G2Body matches frozen universal body (whitespace/comments normalized): True
   ```

   Forbidden import prefixes checked: `KAM.Provider.` and `KAM.Frozen.Theorems.`. Frozen definitions remain permitted. An additional `rg -n '^(theorem|def|abbrev|structure)|set_option|sorry|admit|axiom|unsafe|opaque' KAM/Head/Lip.lean` returns only the 14 theorem declarations, at L62,81,89,101,116,125,158,179,191,220,264,340,346,442.

6. Exact-design-type and axiom probe: `nice -n 5 lake env lean .lake/abi-scratch/P410Audit1.lean` — exit 0. The file imports only `KAM.Head.Lip`, opens `KAM KAM.Head`, declares the same ambient variables as Appendix A, and includes:

   ```lean
   example (hD : Data τ s₀ r₀ B h Lh) (hP : Pert s₀ r₀ B f ε)
       (hgc : GValid τ s₀ r₀ B h Lh gc) (hSA : SA τ s₀ r₀ B h Lh gc ε γ) :
       ∀ ω ∈ OmegaGamma h B τ γ, ∀ ω' ∈ OmegaGamma h B τ γ,
         ∀ θ ∈ complexStrip n (stripWidth s₀ / 32),
           ‖normDisp τ s₀ r₀ B h f gc ε γ ω' θ - normDisp τ s₀ r₀ B h f gc ε γ ω θ‖ ≤
             A3 τ s₀ r₀ B h Lh gc * ε / γ ^ 4 * ‖ω' - ω‖ :=
     KAM.Head.lip hD hP hgc hSA
   ```

   This type was generated from the design text, not from `#check lip`. Provider-versus-frozen exact-type probe: **N/A**, because this package contains no provider or frozen export. The design-type example above is the applicable library-contract check. It elaborates silently. `#print axioms` was then run for every new theorem, with exact output:

   ```text
   'KAM.Head.Lip.far_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Lip.err_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Lip.g1_small' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Lip.close_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Lip.final_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Lip.norm_phaseAverage_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Lip.norm_phi_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Lip.phaseAverage_shiftedTorus' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Lip.far_case' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Lip.g1_step' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Lip.g2_step' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Lip.norm_ofReal_vec_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.Lip.close_case' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Head.lip' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

   The auditor-created probe was deleted after checking; pre-existing scratch files were left alone.

## Findings, limits, and closeout

Findings: **0 blocking, 0 major, 0 minor**. No proposed implementation fix. Suspected source/blueprint errata: none found in the audited LIP slice. Deviations introduced by the auditor: none. No mismatch was repaired or silently reinterpreted.

The graph still labels these nodes `NOT_STARTED`; this report supplies the independent package evidence for the orchestrator's status update. No graph status or proof seal was changed. The generic phase and arithmetic helpers cover the graph steps through the explicit applications and local identities cited above; their intermediate formulas need not be promoted to new assumptions or replacement source theorems.

Limits: this audit checks the named package against the binding local blueprint/design and checks actual consumption of its predecessor interfaces. It does not independently re-audit the complete mathematical proofs of STAB, APPLY, the strip library, G1, G2, or the external pinned papers. No claim is made about downstream HEAD assembly or the measure layer. No standalone kernel-replay tool was run; source elaboration, exact-type elaboration, and axiom closure were checked with the pinned Lean environment.

Closeout: six of six package nodes classified PASS; fourteen of fourteen new theorem axiom closures checked; new definitions inventoried (zero); every G1/G2 call premise accounted for; targeted build, direct source elaboration, exact-design-type probe, lint, frozen-integrity and whitespace checks passed; temporary auditor probe removed; only this report created by the auditor in the repository.
