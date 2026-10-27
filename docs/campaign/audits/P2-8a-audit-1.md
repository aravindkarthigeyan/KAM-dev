# P2-8a independent audit 1

Overall verdict: **PASS WITH NOTES**. The triangular construction and all four items of the package result pass. No blocking or major mathematical finding. The sole minor finding concerns proof-step traceability in the handoff/docstring.

Audited HEAD: `192e5785733e7e52e8db45a5952090848ac815c1`; comparison main: `4f3829b84679759ca05adcc5e0407a7ac0a0bd53`. This includes the handoff's `cae74b0`. The complete `git diff main...HEAD` contains the 347-line new `KAM/Apost/Triangular.lean` and its generated root import in `KAM.lean`. The latter is consistent with the generator check. The existing untracked `P2-8a-handoff.md` was supplied input and was left untouched.

Read the repository rules, plan, decisions, audit brief, package/common briefs, handoff focus, design conventions and Appendix A. Compared directly with `blueprint/parts/p2-aposteriori.tex:616–668`, its standing assumptions at lines 56–75, and `docs/graph/K/DEPGRAPH.md:6336–6508`. All implementation locators below refer to `KAM/Apost/Triangular.lean` unless stated otherwise.

## Node inventory

`Triangular.*` below abbreviates `KAM.Apost.Triangular.*`; the principal result is `KAM.Apost.triangular`. Step rows distinguish reusable helper statements from the full proof assembled inside the principal theorem.

| Node | Lean declaration / proof locator | Verdict | Reason |
|---|---|---|---|
| `bp:p2:triangular` definitions | `KAM.Apost.triU:49`, `triXi0:51`, `triXiN:54`, `triGL:56`, `triXiL:58` | PASS | Five literal constructions, byte-identical to Appendix A, with the prescribed solution operator and average. |
| `bp:p2:triangular` (a)–(d) | `KAM.Apost.triangular:270` | PASS | Signature byte-identical to Appendix A. Exact source premises, strips, derivative signs, four bounds and conditional realness. See the justified encodings below. |
| `step:p2:tri-first` | `KAM.Apost.cohomological` (`Tools.lean:322`), specialized inside `triangular:307–315`; `Triangular.triXiN_differentiableOn:175`, `triXiN_periodic:180`, `fderiv_triXiN:185`, `norm_triXiN_le:193` | PASS, mapping note | The first cohomological call supplies holomorphy, periodicity, zero average, directional equation, bound and conditional realness of `triU`. The unused zero-average projection is discarded, not assumed. The named helpers derive the corresponding normal-component facts. No single new helper packages this entire step. |
| `step:p2:tri-xi0` | `Triangular.norm_triXi0_le:131`, `avg_mulVec_triXi0:152`, `avg_triGL_eq_zero:157` | PASS | Average bounds, actual invertibility and integral linearity prove the bound and zero average of `triGL`. Continuity is established before applying additive integral identities. |
| `step:p2:tri-second` | `Triangular.triGL_differentiableOn:201`, `triGL_periodic:207`, `norm_triGL_le:212`; second `cohomological` call inside `triangular:328–340` | PASS, mapping note | Holomorphic periodic bounded zero-average data are derived, then solved on `T_(r−δ)` with loss δ. Reapplication for arbitrary Y proves exactly the last bound. No single new helper packages the entire step. |
| `step:p2:tri-form` | `Triangular.fderiv_triXiN:185`; `triangular:333`, together with `triGL:56` | PASS | Component directional equations have signs `−ηN` and `T ξN−ηL`. They give the blueprint's equivalent block equation by subtraction; independent scratch example elaborated this algebra. |
| `step:p2:tri-real` | `Triangular.triXi0_im_eq_zero:228`, `isRealVec_triXiN:253`, `isRealVec_triGL:259`; `triangular:339–343` | PASS | Averages of real data are real, invertible real average matrix has real inverse, and both applications of the actual cohomological operator preserve realness. |

## Statement and proof fidelity

The `Standing` premise was expanded against `KAM/Apost/Standing.lean:41–65` and the enclosing blueprint assumption. It consists of the specified fixed parameters, open translation-invariant Hamiltonian domain, holomorphy, periodicity, reality, vector-field derivative bounds and the positive-γ Diophantine premise. No field supplies a triangular-system conclusion. The ambient vectors remain `Fin n → ℂ`, frequencies `Fin n → ℝ`, and matrices `Matrix (Fin n) (Fin n) ℂ`. `Matrix.Norms.Operator` is opened at line 34, so matrix bounds are maximum row-sum operator norms; vector bounds use the max norm.

All data and bound parameters are universally quantified; there is no widened existential constant dependence. `Γδ = cR n τ * γ⁻¹ * δ ^ (−kappa n τ)`, with `cR = max 1 (cohConst n τ)` and `kappa = τ+n` from the existing constants layer. The result adds no parameter to either constant. Both calls use the same δ and γ. The proof derives `δ < r`, `0 < r−δ` and `δ < r−δ` at lines 300–302; the identity `r−δ−δ = r−2δ` at line 329 accounts for the second strip.

Three encodings deserve explicit recording:

- The explicit `hr : 0 < r` follows already from δ > 0 and 2δ < r; it is also design convention L5. It does not narrow applicability.
- The two blueprint suprema on the right of (c) become universally quantified pointwise upper bounds X and Y, as prescribed by design §1.4 and departure L6. Finite such bounds exist: the first cohomological estimate bounds ξN, and multiplication/subtraction bounds gL. Thus this is the intended bounded-sup statement, without an empty/unbounded `sSup` issue.
- The pair ξ is represented by its components in this module. Holomorphy/periodicity of ξN on the wider strip restrict to the smaller strip, while ξL is proved on the smaller strip. Item (b) states the two component equations, the blueprint's primary formulation; the displayed equivalent block equation follows algebraically. The scratch check below independently verifies that algebra.

There are **no extra nonnegativity premises** on HL, HN, HT or σ. At a real point (in particular zero), the positive-width strip bounds imply HL ≥ 0 and HN ≥ 0. The same argument on `T_(r−δ)` gives HT ≥ 0; inverse-norm nonnegativity gives σ ≥ 0. The proof explicitly derives HT and σ nonnegativity at lines 136–137 and uses the cohomological corollary, which derives H ≥ 0 at `Tools.lean:344`. A scratch example derives all four from the stated inputs without any added premise. The repeated HT sign check at line 216 also follows from the bound at the current point. Generic helpers accepting previously proved estimates have distinct names; the principal theorem supplies those estimates rather than assuming them as source hypotheses.

The proof uses the specified cohomological and average predecessors, elementary matrix algebra/calculus, and the real-inverse lemma. There is no provider/frozen-theorem shortcut and no contradiction with the blueprint proof.

## Definition classification and totality

Every new `def` is classified below. There are no new `abbrev` or `structure` declarations.

| Definition | Classification on its whole Lean carrier | Behavior used by the theorem |
|---|---|---|
| `triU` | Componentwise prescribed total Fourier solution `cohR ω ηN`; no new branch or chosen witness. | `cohomological` proves the analytic solution properties on `T_(r−δ)`. |
| `triXi0` | Literal `(avg T)⁻¹ *ᵥ (avg ηL + avg (T *ᵥ triU))` for every input. Uses existing total integral and matrix inverse. | `IsUnit (avg T).det` makes the inverse genuine. ηL, T and triU are continuous on the real slice; their products are integrable on the compact unit cube. |
| `triXiN` | Literal constant-minus-solution map on every complex point. | Claims concern its analytic strip, with global real-slice reality when the inputs are real. |
| `triGL` | Literal matrix-vector product minus ηL at every point. | Holomorphy, periodicity, boundedness and zero average are proved before the second solve. |
| `triXiL` | Prescribed total Fourier solution `cohR ω triGL`; no extra branch. | Second cohomological application validates it on `T_(r−2δ)`. |

`cohR` (`Tools.lean:283`) expands componentwise to `cohSolution`; the latter (`KAM/Strip/CohomologicalDefs.lean:37`) is the actual Fourier `tsum` of `Diophantine.solve` coefficients, with zero mode set to zero and the period-one multiplier `2πi k·ω`. `avg` (`Torus/Basic.lean:134`) expands to the integral over `[0,1]^n`, with unit volume and no changed normalization.

Outside analytic/summability/invertibility conditions these underlying Lean operations are total: an unsummable series or nonintegrable Bochner integral can take its default value, and the nonsingular matrix inverse has a singular-case extension. Consequently these maps are not claimed to solve the equation for arbitrary unqualified inputs. This is the explicit design §2.4 totalization, not a hidden alternative construction. In the theorem's analytic domains the two cohomological applications, continuity/integrability arguments and invertibility premise discharge the required conditions. No theorem relies on a junk value outside those domains. Values of the input functions outside their strip do not enter their real-slice coefficients/averages or the claimed strip-local properties.

## Checks and exact output

Commands ran in `/root/code/KAM-w-p2-8a`. Targeted build, lint (including its internal ABI Lean work) and the Lean probe were serialized. No full-library rebuild, clean, resource override or state-changing git operation was run.

1. `git diff --stat main...HEAD` (exit 0):

```text
 KAM.lean                  |   1 +
 KAM/Apost/Triangular.lean | 347 ++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 348 insertions(+)
```

2. `git diff main...HEAD -- KAM/Frozen manifest` and `git diff --check main...HEAD`: both exit 0, no output. Frozen files and manifest are untouched in the branch diff.

3. `wc -l KAM/Apost/Triangular.lean` (exit 0):

```text
347 KAM/Apost/Triangular.lean
```

Module inspection: copyright/authors lines 1–5, `module:6`, public interface imports 8–9, module docstring 13–30, exposed public noncomputable section at 32. No forbidden proof escape, resource override, forbidden carrier, provider import or frozen-theorem import occurs in the new module. The lint independently checks repository-wide invariants.

4. `nice -n 5 lake build KAM.Apost.Triangular` (exit 0):

```text
Build completed successfully (3169 jobs).
```

This is the targeted Lake result, not evidence of recompiling 3169 modules from scratch.

5. `sh scripts/lint_sources.sh` (exit 0):

```text
check_lean_modules: PASS (243 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

6. Python direct text comparison of the `section Triangular` definition block (through its matching `end Triangular`) and the theorem text from `theorem triangular ` through the character before ` := by` / ` := sorry`, respectively, against Appendix A (exit 0):

```text
Definitions section byte-identical to Appendix A: True
Theorem signature byte-identical to Appendix A: True
```

7. `nice -n 5 lake env lean .lake/abi-scratch/P28aAudit1.lean` (final exit 0). The probe imported `KAM.Apost.Triangular`, issued `#print axioms` for **all 22 new theorems**, and elaborated the two examples reproduced below. Exact final output:

```text
'KAM.Apost.Triangular.strip_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.isPeriodicOn_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.continuous_ofReal_comp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.mulVec_im_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.inv_mulVec_im_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.torusAverage_mulVec_const' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.avg_sub' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.avg_mulVec_const' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.norm_triXi0_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.avg_mulVec_triXi0' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.avg_triGL_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.triXiN_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.triXiN_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.fderiv_triXiN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.norm_triXiN_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.triGL_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.triGL_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.norm_triGL_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.triXi0_im_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.isRealVec_triXiN' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Triangular.isRealVec_triGL' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.triangular' depends on axioms: [propext, Classical.choice, Quot.sound]
Try this:
  [apply] abel_nf
```

Every theorem has only the allowed three axioms; no `sorryAx`. The final `Try this` is an informational tactic suggestion from the scratch algebra example. An initial run of the same scratch file failed because the auditor omitted `open Matrix`, so `*ᵥ` did not parse as matrix-vector multiplication. Adding that namespace opening fixed the probe; no package source changed.

The successful extra examples (following the axiom commands) were:

```lean
open scoped Matrix.Norms.Operator
open Matrix KAM KAM.Torus KAM.Apost

example {n : ℕ} {r δ HL HN HT σ : ℝ}
    {ηL ηN : (Fin n → ℂ) → Fin n → ℂ}
    {T : (Fin n → ℂ) → Matrix (Fin n) (Fin n) ℂ}
    (hr : 0 < r) (hδ : 0 < δ) (h2δ : 2 * δ < r)
    (hHL : ∀ θ ∈ complexStrip n r, ‖ηL θ‖ ≤ HL)
    (hHN : ∀ θ ∈ complexStrip n r, ‖ηN θ‖ ≤ HN)
    (hHT : ∀ θ ∈ complexStrip n (r - δ), ‖T θ‖ ≤ HT)
    (hσ : ‖(avg T)⁻¹‖ ≤ σ) : 0 ≤ HL ∧ 0 ≤ HN ∧ 0 ≤ HT ∧ 0 ≤ σ := by
  have hrδ : 0 < r - δ := by linarith
  exact ⟨(norm_nonneg _).trans (hHL _ (ofReal_mem_complexStrip hr 0)),
    (norm_nonneg _).trans (hHN _ (ofReal_mem_complexStrip hr 0)),
    (norm_nonneg _).trans (hHT _ (ofReal_mem_complexStrip hrδ 0)),
    (norm_nonneg _).trans hσ⟩

example {n : ℕ} {ω : Fin n → ℝ}
    {ηL ηN : (Fin n → ℂ) → Fin n → ℂ}
    {T : (Fin n → ℂ) → Matrix (Fin n) (Fin n) ℂ} {θ : Fin n → ℂ}
    (hL : fderiv ℂ (triXiL ω ηL ηN T) θ (fun l => (ω l : ℂ)) = triGL ω ηL ηN T θ)
    (hN : fderiv ℂ (triXiN ω ηL ηN T) θ (fun l => (ω l : ℂ)) = -ηN θ) :
    (T θ *ᵥ triXiN ω ηL ηN T θ -
        fderiv ℂ (triXiL ω ηL ηN T) θ (fun l => (ω l : ℂ)),
      -fderiv ℂ (triXiN ω ηL ηN T) θ (fun l => (ω l : ℂ))) = (ηL θ, ηN θ) := by
  rw [hL, hN, triGL]
  abel

```

The probe was deleted after checking. This is an infrastructure package, not a provider: the frozen/provider exact-type test is **not applicable**. Appendix A signature equality was checked directly instead; no claim of a frozen theorem seal is made.

## Findings, uncertainty and errata

**F1 — minor, documentation / graph-step traceability.** `P2-8a-handoff.md` lists only definitions and the parent node, omitting the five graph proof-step mappings. The module docstring (`Triangular.lean:25–27`) says “Each step is a helper lemma”, but the complete first and second cohomological steps are assembled inside `triangular` at lines 307–315 and 328–340. Individual helpers cover their algebra/regularity portions; no named new declaration packages either complete step. The first step's zero-average fact is obtained from the predecessor and immediately discarded in the parent proof, which is valid because the parent conclusion does not need it. **Proposed fix:** update the handoff with the five rows above and clarify the docstring to distinguish helper lemmas from inline specializations. If the graph registry requires one export covering every step, name the complete specializations, including the zero-average projection for the first step. This does not require changing the principal theorem or its proof contract. The graph's current `NOT_STARTED` entries should only be updated with the precise coverage stated above.

No blocking or major finding. No suspected blueprint defect or pinned-source erratum was discovered. This audit compares the package to the repository's blueprint and binding design; it does not independently re-audit the cited HL19 PDF. No new mathematical deviation was introduced: the relevant predeclared encodings are explicit width positivity, total functions, determinant-unit invertibility and pointwise-bound suprema. No unresolved mathematical uncertainty within the requested package scope remains.

Only this report was added by the audit; existing source, frozen files, manifests, generated files and the supplied handoff were left unchanged.
