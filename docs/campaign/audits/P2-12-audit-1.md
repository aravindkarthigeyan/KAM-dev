# P2-12 independent audit 1

**Verdict: PASS.** The P2-12 assembly proves all six items of `bp:p2:step` with the blueprint premises, constants, carriers and strip widths. No blocking, major or minor defect was found in the audited change. This is a package-local verdict, not an independent re-audit of P2-9 or closure of frozen G1.

## Scope and frozen inputs

Tier 2 focused source-correspondence and proof-assembly audit, 2026-10-27. Permission: inspect the requested diff, run the brief's narrow checks and temporary probes, write only this report; no repair, commit, push or state-changing git. No delegation was used. The author and auditor are distinct sessions.

Snapshot `frozen-v1`: HEAD `a8acfedc090230c4a07883c75967b1d44cbecf1f`; comparison ref `k/p2-9` = `e03dea12a7bfb556ff4b9860cf7b7685d593105f`. The supplied handoff names older commit `83b68e2`; the audited object is the actual HEAD after the main merge. The handoff was already untracked on entry and was preserved.

The requested `git diff k/p2-9...HEAD` contains one new implementation module, `KAM/Apost/Step.lean`, plus its generated root import and campaign/documentation changes. Inherited implementation files were read at consumer interfaces where necessary; their proofs were not re-certified. Graph changes concern the preceding P2-8b audit, not a change to the step contract.

SHA-256 input manifest:

| File | SHA-256 |
|---|---|
| `KAM/Apost/Step.lean` | `0b1998f7b4df3068e4d6b327fbeaa8c242c84eab0addd04ee5698b3ffac1af10` |
| `blueprint/parts/p2-aposteriori.tex` | `c8fe335ca1f87390d803ffec36254804290f3962910284b9d7afd8fec3530f30` |
| `docs/campaign/design/PART23-LEAN-DESIGN.md` | `1b4bd7224e90844d78088822931f1d5e668dcc27cf5cd2351671da108985c125` |
| `docs/graph/K/DEPGRAPH.md` | `379ed2e471241f6441b0c24dbe2609aa414594c91c5d04100b4da98276da41e6` |
| `docs/campaign/briefs/AUDIT-PACKAGE.md` | `76b821648f341c99cd6787211cf983e5e1f281aff186f9b9c0b252b8f9d0e275` |
| `docs/campaign/briefs/P2-12.md` | `eaca80e2144caa9f1790b4042dfb955177b460de520826706888350b569160aa` |
| `docs/campaign/audits/P2-12-handoff.md` | `212953188d605eabf325e525e42a18abb3031a79fdefe8f59138afafc3afbc45` |
| `KAM/Apost/Standing.lean` | `a91ec68239396b9dbd81928b941f435c4223093f02c86eaeb17875caee755e15` |
| `KAM/Apost/Constants.lean` | `9e9190f524c5086d78be3f3cb374ccbf34da3024f9b2d35703c9a8f4a886975d` |
| `KAM/Apost/Correction.lean` | `f4fecc18a34f32c498c066c5d5d7d7fdaede9bcb27decd002784a3c66e500351` |
| `KAM/Apost/NewtonError.lean` | `ae4b8c4bf9f7dd780e3db4fa84864a6f38d2e6aa205f32ee1edea7afbe828997` |
| `KAM/Apost/PerturbationTorsion.lean` | `c228f3e60d10029ed1bdbc9656f59dae88ce495b57fc17ba2235bf79467f90f2` |

All locators below refer to this snapshot. The target is infrastructure: its graph entry has no frozen anchor, so frozen-provider identity and sealing checks are inapplicable.

## Statement and node ledger

Source: `blueprint/parts/p2-aposteriori.tex:884–904`; binding design Appendix A `:1247–1275`; declaration `KAM/Apost/Step.lean:94–117`. A mechanical comparison found the complete `theorem step ...` signature byte-identical to Appendix A, before the proof delimiter. Independently comparing the raw blueprint gives:

| Node/item | Lean declaration / location | Verdict | Reason |
|---|---|---|---|
| `bp:p2:step` | `KAM.Apost.step`, Step:94 | PASS | Exact source hypotheses and all six conclusions; no additional analytic premise. |
| (a) | `KAM.Apost.step`, Step:98–100 | PASS | Holomorphic and primary on precisely the open strip of width `r - 2δ`, real at every real argument. |
| (b) | same, Step:101–105 | PASS | Pointwise displacement ≤ `d`, `d ≤ β/2`, open ball of radius `β-d` inside the original domain. |
| (c) | same, Step:106–107 | PASS | `C_E ε²/(γ⁴ δ^(2a))`, on `T_(r-2δ)`. |
| (d) | same, Step:108–110 | PASS | Difference of actual complex Fréchet derivatives ≤ `n d/δ` on `T_(r-3δ)`. |
| (e) | same, Step:111–113 | PASS | Gram determinant a unit and inverse difference ≤ `C_B d/δ`, on `T_(r-3δ)`. Over ℂ a unit determinant is equivalent to nonzero determinant. |
| (f) | same, Step:114–117 | PASS | Actual frozen torsion average has unit determinant and inverse difference ≤ `2 m² C_DT d/δ²`. |
| `step:p2:st-small` | `KAM.Apost.step`, Step:127–134; `KAM.Apost.step_small` | PASS | Frequency bound is produced from admissibility; all three smallness consequences are produced. |
| `step:p2:st-error` | `KAM.Apost.step`, Step:136–143,151–152 | PASS | Applies correction and Newton-error predecessors with their supplied premises. |
| `step:p2:st-ball` | `KAM.Apost.step`, Step:145–148,153 | PASS | Obtained from perturbation item (a), whose proof is the blueprint triangle inequality. |
| `step:p2:st-perturb` | `KAM.Apost.step`, Step:145–153 | PASS | Applies perturbation at width `r-2δ`, loss `δ`; projects exactly the required conclusions. |
| helper for (a) | `KAM.Apost.Step.newtonMap_differentiableOn`, Step:56 | PASS | Adds the two holomorphic functions and uses equality on the open strip. |
| helper for (a) | `KAM.Apost.Step.newtonMap_isPrimaryOnStrip`, Step:62 | PASS | Proves arbitrary integer-shift primary behavior, not only single-coordinate periodicity. |
| helper for (a) | `KAM.Apost.Step.newtonMap_isRealOnReals`, Step:73 | PASS | Explicitly constructs the sum of the two real phase points; positive width puts every real argument inside the branch. |

Constants are fixed definitions, chosen before `r, β, ε, δ, K`: `C_DK`, `C_E`, `c_step`, `aExp` depend only on `n, τ, M, σK, σB, σT`; `C_B`, `C_DT` only on `n, M, σK, σB, σT`; `mSize` only on the four size parameters. No hidden dependence on `γ`, strip losses, domain or torus is introduced. Powers with real exponents are `Real.rpow`; `γ^4`, `γ^2`, `ε^2`, `δ^2` are the stated natural powers. Function/product max norms, induced derivative norms and matrix row-sum operator norms match Part 2's conventions.

## Expanded binder audit

Every implicit parameter of `step` is listed separately. Bundle rows below expand all logical fields, splitting conjunctions. Quantifiers inside a field retain their original domain and order; they are not additional assumptions. Source anchors: standing data `p2-aposteriori.tex:61–74` (S), admissibility `:305–319` (A), step `:884–889` (P). The Lean structure bodies are `Standing.lean:44–94`.

| Input | Bin | Source / meaning |
|---|---|---|
| `n : ℕ` | TYPING | S dimension |
| `τ : ℝ` | TYPING | S exponent |
| `M : ℝ` | TYPING | S size |
| `σK : ℝ` | TYPING | S derivative bound |
| `σB : ℝ` | TYPING | S Gram inverse bound |
| `σT : ℝ` | TYPING | S twist inverse bound |
| `𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))` | TYPING | S phase domain |
| `h : ((Fin n → ℂ) × (Fin n → ℂ)) → ℂ` | TYPING | S Hamiltonian |
| `ω : Fin n → ℝ` | TYPING | S frequency |
| `γ : ℝ` | TYPING | S Diophantine constant |
| `r : ℝ` | TYPING | P width |
| `β : ℝ` | TYPING | P domain margin |
| `ε : ℝ` | TYPING | P error bound |
| `δ : ℝ` | TYPING | P strip loss |
| `K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)` | TYPING | P torus map |
| `hS.two_le : 2 ≤ n` | STANDING | S |
| `hS.tau_ge : n-1 ≤ τ` | STANDING | S |
| `hS.M_pos : 0 < M` | STANDING | S |
| `hS.σK_pos : 0 < σK` | STANDING | S |
| `hS.σB_pos : 0 < σB` | STANDING | S |
| `hS.σT_pos : 0 < σT` | STANDING | S |
| `hS.isOpen` | STANDING | S: open `𝔅` |
| `hS.transl_mem` | STANDING | S: every `z ∈ 𝔅` and integer `k`, translated phase point remains in `𝔅` |
| `hS.holo` | STANDING | S: `h` differentiable on `𝔅` |
| `hS.periodic` | STANDING | S: every `z ∈ 𝔅` and integer `k`, Hamiltonian unchanged |
| `hS.real` | STANDING | S: every real angle/action with phase point in `𝔅`, imaginary part of `h` zero |
| `hS.bounds`, component 1 | STANDING | S: every `z ∈ 𝔅`, `‖X_h z‖ ≤ M` |
| `hS.bounds`, component 2 | STANDING | S: every `z ∈ 𝔅`, `‖DX_h z‖ ≤ M` |
| `hS.bounds`, component 3 | STANDING | S: every `z ∈ 𝔅`, `‖D²X_h z‖ ≤ M` |
| `hS.gamma_pos` | STANDING | S: `0 < γ` |
| `hS.dio` | STANDING | S: actual frozen `IsDiophantine γ τ ω` |
| `hK.r_pos` | SOURCE | A/P: `0 < r` |
| `hK.β_pos` | SOURCE | A/P: `0 < β` |
| `hK.ε_nonneg` | SOURCE | A/P: `0 ≤ ε` |
| `hK.ε_le_one` | SOURCE | A/P: `ε ≤ 1` |
| `hK.holo` | SOURCE | A1: complex differentiability on `T_r` |
| `hK.primary` | SOURCE | A1: frozen primary predicate on `T_r` |
| `hK.real` | SOURCE | A1: frozen real-on-reals predicate |
| `hK.ball_sub` | SOURCE | A2: every `θ ∈ T_r`, open `β`-ball included in `𝔅` |
| `hK.deriv_le` | SOURCE | A3: every `θ ∈ T_r`, derivative norm ≤ `σK` |
| `hK.gram`, component 1 | SOURCE | A4: every `θ ∈ T_r`, Gram determinant a unit |
| `hK.gram`, component 2 | SOURCE | A4: every `θ ∈ T_r`, Gram inverse norm ≤ `σB` |
| `hK.twist`, component 1 | SOURCE | A5: torsion-average determinant a unit |
| `hK.twist`, component 2 | SOURCE | A5: torsion-average inverse norm ≤ `σT` |
| `hK.error_le` | SOURCE | A6: every `θ ∈ T_r`, error norm ≤ `ε` |
| `hδ` | SOURCE | P: `0 < δ` |
| `hδ1` | SOURCE | P: `δ ≤ 1` |
| `h4δ` | SOURCE | P: `4δ < r` |
| `hsmall` | SOURCE | P: `c_step ε/(γ^4 δ^(2a)) ≤ min 1 β` |

Counts after expansion: TYPING 15, STANDING 16, SOURCE 18, RULED 0, EXCESS 0. No instance binder conceals a proof obligation. Parameters are universal; the change in enumeration order of independent scalar variables relative to the prose changes no dependence and matches the binding design verbatim.

The three distinct helper contracts introduce only typing parameters and explicitly conditional hypotheses: differentiability of `K` and `correction`; or width inclusion, primary `K` and periodic correction; or positive width and realness of each summand. These are legitimate local helpers, not substitutes for the source result: `step` supplies all of these hypotheses from `hK` and `correction_spec` inside its proof. The first two helpers generalize to empty strips; the source-facing use has strictly positive width.

## Proof consumption and refutation pass

At Step:127–134, `β > 0` supplies `K θ ∈ 𝔅` from the admissibility balls, so `frequency` yields `γ ≤ ‖ω‖ ≤ Θ`. Applying `step_small` gives precisely `hs1`, `hs2`, `hs3`: the symplectic smallness ≤ 1/2, displacement `d ≤ β/2`, and perturbation smallness ≤ 1/2. In particular `d < β` follows from `β > 0`, including when `ε = 0`.

At Step:136–143, `2δ < r` is derived from `4δ < r`, and both correction and Newton-error calls use that derived premise. `correction_spec` provides holomorphy, periodicity, realness and its pointwise bound. The new-error estimate is a conclusion of `newton_error`, never an input to `step`.

All premises of the call at Step:145–147 to `perturbation` (`PerturbationTorsion.lean:325–356`) are accounted for:

| Perturbation input | Discharge |
|---|---|
| Standing data | original `hS` |
| Width `R > 0` | `R = r - 2δ`, `hr2` from `4δ < r` |
| `0 < δ ≤ 1` | original `hδ`, `hδ1` |
| `2δ < R` | `4δ < r` by linear arithmetic |
| `‖ω‖ ≤ Θ` | produced frequency bound `hω` |
| Holomorphic base `K` on `T_R` | `hK.holo.mono hsub` |
| Base `β` balls, derivative and Gram bounds on `T_R` | `hK.ball_sub`, `deriv_le`, `gram`, each restricted by `hsub` |
| Base twist inverse | original `hK.twist`, unchanged real torus average |
| Holomorphic perturbed map on `T_R` | helper applied to restricted `K` and correction holomorphy |
| Displacement ≤ `d` on `T_R` | `newtonMap_of_mem` and correction bound |
| Strict domain margin `d < β` | `hdβ`, from `hs2` and `β > 0` |
| `2 m C_DT d/δ² ≤ 1` | `hs3 ≤ 1/2 ≤ 1` |

The resulting derivative/Gram strip is `R-δ = r-3δ`; the intermediate torsion strip `R-2δ = r-4δ` is positive. The twist conclusion is global on real angles as required; no mistaken restriction of the average to a complex strip occurs. The proof only projects the required Gram inverse difference and twist conclusions, discarding extra absolute bounds and continuity.

Adversarial checks addressed: (i) a translated argument leaving the branch; real integer translations preserve all imaginary parts, and Step:66–69 proves membership before both rewrites; (ii) coordinatewise periodicity being insufficient for arbitrary integer vectors; `periodic_int_shift hc k hθ` supplies the full vector shift, including negative integers; (iii) off-strip fallback corrupting holomorphy or realness; equality with `K+correction` holds on the open strip, and positive width contains all real points; (iv) an unproved smallness or missing domain margin in perturbation; the table above discharges each; (v) a missing strip loss for torsion; `4δ < r` pays both internal losses. None survived as a defect. This was an independent auditor's refutation pass over the prover's assembly, without a further delegated review.

## Definition classification

There are **zero new `def`, `abbrev`, or `structure` declarations** in the scoped implementation diff. The four new declarations are theorems. For new definitions: BODY_MATCH, PUBLIC_CARRIER, WELL_DEFINEDNESS, CHARACTERIZATION and CHOICE_INDEPENDENCE are all N/A; DEFINITION_VERDICT: PASS (empty inventory).

The inherited `newtonMap` is explicitly the design's literal piecewise map: `K+correction` on `T_w`, `K` elsewhere (design:1184–1189, NewtonError:54–57). This report does not approve a newly invented fallback or reopen that predecessor's global definition. Its use here is only on `T_w` or at real points with `w > 0`, so the fallback never proves any claimed analytic property. The inherited `Standing` and `Admissible` are literal source-premise predicates, expanded above, with no result-shaped field. Frozen strip/primary/realness bodies were inspected at their actual definitions; no proxy predicate replaces them.

## Verification evidence

Build and probe commands were serialized, at default resource budgets. No clean, update, dependency-cache fetch, broad library rebuild, or resource override was requested. The narrow build used the seeded worktree snapshot; Lake's job count includes cached dependencies.

1. `nice -n 5 lake build KAM.Apost.Step` — exit 0, no warnings:

   ```text
   Build completed successfully (3191 jobs).
   ```

2. Signature comparison: Python extracted `theorem step (` through the proof delimiter from Appendix A and Step. Output:

   ```text
   Appendix A step signature byte-identical: True
   ```

3. `nice -n 5 lake env lean .lake/abi-scratch/P212Audit1.lean` — exit 0, no warnings. The probe imported `KAM.Apost.Step`, opened the matrix operator-norm scope, supplied the same implicit section parameters, and copied Appendix A's entire step statement as an `example`. Its body was exactly:

   ```lean
   by
     exact KAM.Apost.step hS hK hδ hδ1 h4δ hsmall
   ```

   It then ran `#print axioms` on every package result. Exact output:

   ```text
   'KAM.Apost.step' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Apost.Step.newtonMap_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Apost.Step.newtonMap_isPrimaryOnStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Apost.Step.newtonMap_isRealOnReals' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

   The temporary probe was deleted after recording its output. Provider exact-type probe: N/A, this package has no provider or frozen theorem export. The Appendix A type probe above is the relevant infrastructure check.

4. `sh scripts/lint_sources.sh` — exit 0. Exact output:

   ```text
   check_lean_modules: PASS (265 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

5. `git diff --check k/p2-9...HEAD` — exit 0, empty output. `git diff k/p2-9...HEAD --name-only -- KAM/Frozen manifest` — exit 0, empty output. `wc -l KAM/Apost/Step.lean` — `159 KAM/Apost/Step.lean`.

6. `rg -n 'sorry|admit|\baxiom\b|\bunsafe\b|\bopaque\b|set_option|EuclideanSpace|KAM\.Provider|KAM\.Frozen\.Theorems|^def |^abbrev |^structure ' KAM/Apost/Step.lean` — exit 1, no matches. Module header, copyright/authors, public interface imports, docstring and exposed public section are present. The generated root diff adds exactly `public import KAM.Apost.Step`; generation consistency is checked by lint. No prohibited provider/frozen-theorem shortcut appears in the assembly or its axiom closure.

## Findings, uncertainties and closeout

No findings requiring a fix. No suspected source erratum or introduced mathematical deviation was found in the audited scope. Using perturbation item (a) for the ball-margin step is a valid reuse of the same triangle inequality. The older handoff revision is an input-provenance note, resolved by pinning actual HEAD, not a mathematical defect.

The report does not independently verify the cited HL19/GJLV05 PDF passages, inherited P2-9/P2-8b analytic proofs, unrelated merged campaign edits, or frozen G1. Those predecessor interfaces are consumed exactly as written, and the package's complete Lean axiom closure is clean. No independent kernel replay was run; the evidence is targeted Lake build, Lean type probe, axiom inspection and source review.

Closeout: every new result and all six source items classified; expanded source premises checked; perturbation composition checked in the compiled proof; no open mathematical warning; hygiene recorded; frozen/manifest unchanged; only this report intentionally added to the repository. No edits to Lean sources or governing documents.
