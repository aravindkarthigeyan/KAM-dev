# Independent audit of P4-2

Overall verdict: **PASS WITH NOTES**. Both package results prove the binding Part 4 statements, with all constants and clauses intact. No blocking or major finding, conclusion-shaped premise, frozen-theorem shortcut, or unapproved axiom was found. The only finding is minor traceability bookkeeping below.

Audited 2026-10-27 in `/root/code/KAM-w-p4-2`, branch `k/p4-2`, HEAD `b73210a432a5b33debaba7d2002e7ccf6244be22`, against `main` at `ca52f6fecc4a39019cbf94a4edd07a54a1c758c2`. The handoff names prover commit `6730dc6`; this audit checks the actual merged HEAD. The initial working tree had only untracked `docs/campaign/audits/P4-2-handoff.md`.

Read: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `AUDIT-PACKAGE.md`, `P4-2.md`, its common briefs, the handoff's AUDIT FOCUS, the Part 4 design and design audit, graph records at `docs/graph/K/DEPGRAPH.md:10282–10607`, and their raw blueprint locators. Used the `lean-statement-audit` binder and definition methodology. These are infrastructure nodes, with no frozen theorem ownership (`FROZEN_*: -` in the graph); this is package acceptance, not sealing G1, G2, HEAD, or HEAD-Q. No external PDF/source attribution audit or kernel replay was performed.

## Node inventory and statement fidelity

All declarations below are in namespace `KAM.Head`. H = `KAM/Head/H1.lean`, F = `KAM/Head/UnperturbedFrame.lean`, U = `KAM/Head/Unperturbed.lean`. Blueprint line numbers refer to `blueprint/parts/p4-measure.tex`.

| Node | Lean declaration and locator | Verdict | Evidence / reason |
|---|---|---|---|
| `bp:p4:h1` | `h1`, H:75 | PASS | L309–313: full H1 block, including openness, integer-shift domain invariance, holomorphy, periodicity, reality, and all four bounds by the same data-only `Mconst`. Signature equals design Appendix A §5 byte for byte. |
| `step:p4:h1-open` | `h1` first two clauses; `h1_domainD_add_intCast`, H:41; existing `isOpen_domainD` | PASS | L316–319: product open set and imaginary-part invariance; no openness/nonemptiness premise invented. |
| `step:p4:h1-holo` | `h1_differentiableOn`, H:46; `h1_add_intCast`, H:55; `h1_im_eq_zero`, H:63 | PASS | L321–327: restriction from the original domain via `h1_domainD_subset_domain`, H:36. Source hypotheses expanded below. |
| `step:p4:h1-bounds` | `h1` final clause, H:92–93; existing `derivative_bounds_design` | PASS | L329–330: consumes the proved derivative block (d), with `ε ≤ 1`; no extra estimate assumed. |
| `bp:p4:unperturbed` | `unperturbed`, U:317 | PASS | L341–361: all (a)–(g), exact constants, universal frequency, conditional (e)/(f), and strip widths. Signature equals Appendix A §6 byte for byte. |
| `step:p4:unp-frame` | `unperturbedTorus_hasFDerivAt`, F:42; `tangentMat_unperturbedTorus`, F:65; `norm_fderiv_unperturbedTorus`, F:73; `gramMatrix_unperturbedTorus`, F:81; assembled in U:364–368 | PASS | L364–369: affine derivative `(v,0)`, primary/reality identities, identity Gram and unit determinant. Positive dimension for the norm-one claims follows from `Data.two_le`. |
| `step:p4:unp-normal` | `normalFrame_unperturbedTorus`, F:94; `normalMat_unperturbedTorus`, F:101; `fderiv_normalFrame_unperturbedTorus`, F:107 | PASS | L371–374: computes frozen normal frame as `(0,e_j)` and proves zero derivative in every direction, a strengthening of the ω-direction claim. |
| `step:p4:unp-torsion` | `torsion_unperturbedTorus_eq`, U:186; `unperturbed_actionHessian_hbold`, U:83; `unperturbed_continuous_torsion`, U:205; `unperturbed_torsionAverage`, U:234 | PASS | L376–384: frozen torsion, positive action-Hessian sign, no ω restriction, continuous integrand, correct constant-plus-perturbation average. |
| `step:p4:unp-twist` | `unperturbed_norm_actionHessian_le`, U:116; `unperturbed_norm_actionHessian_f_le`, U:253; `unperturbed_twist`, U:269 | PASS | L386–391: exact row-sum norm, `F₂ ε`, source `L₊ F₂ ε ≤ 1/2`, and inverse bound `2 L₊`. |
| `step:p4:unp-error` | `unperturbed_invarianceError`, U:290 | PASS | L393–398: frozen error is `X_f` when `ω = frequencyMap h I`, bounded by `F₁ ε` on `T_(s/2)`. |
| `step:p4:unp-ball` | `ball_unperturbedTorus_subset_domainD`, F:116 | PASS | L400–403: open ball of radius `δ_*`, at angles in `T_(s/4)`, lies in precisely `domainD`; helper needs only positive r₀ and source memberships. |

No existential constant is moved inside perturbation or frequency quantifiers. `Mconst s₀ r₀ B h`, `Fconst n s₀ r₀ j`, `Lplus Lh`, `stripWidth s₀`, and `deltaStar s₀ r₀` have the blueprint dependence. All vector norms are max norms, all matrix norms use `open scoped Matrix.Norms.Operator`, and integrals are entrywise complex integrals over the unit cube of volume one.

## Expanded binder audit

Each row applies to both main exports unless marked U only. This table expands `Data` and `Pert` completely; neither bundle hides an analytic conclusion. Sources: blueprint L138–166, L309–313 and L341–361; design §2.1, §3.2 P2/P3/P4/P10/P11 and Appendix A §5–6; actual structures `KAM/Head/Standing.lean:35–58`.

| Binder / expanded logical input | Bin | Source / meaning |
|---|---|---|
| `{n : ℕ}` | TYPING | Dimension, L139. |
| `{τ : ℝ}` | TYPING | Diophantine exponent parameter, L139. |
| `{s₀ : ℝ}` | TYPING | Original strip-width parameter, L139. |
| `{r₀ : ℝ}` | TYPING | Original action-radius parameter, L139. |
| `{Lh : ℝ}` | TYPING | Fixed nondegeneracy witness, L140–141. |
| `{B : Set (Fin n → ℝ)}` | TYPING | Real action domain, L139. |
| `{h : (Fin n → ℂ) → ℂ}` | TYPING | Complex integrable Hamiltonian, L139–140. |
| `{f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}` | TYPING | Complex perturbation, L145–147. |
| `{ε : ℝ}` | TYPING | Size parameter, L145–147. |
| `hD.two_le : 2 ≤ n` | STANDING | L139; supplies `0 < n` for norm-one claims. |
| `hD.tau_gt : n - 1 < τ` | STANDING | L139. |
| `hD.s₀_pos : 0 < s₀` | STANDING | L139. |
| `hD.r₀_pos : 0 < r₀` | STANDING | L139. |
| `hD.isOpen : IsOpen B` | STANDING | L139. |
| `hD.isBounded : Bornology.IsBounded B` | STANDING | L139. |
| `hD.holo` | STANDING | h holomorphic on `actionNbhd B r₀`, L139–140. |
| `hD.real` | STANDING | Every real I with inclusion in that neighbourhood has `Im h(ιI)=0`, L140. |
| `hD.nondeg` | STANDING | For every I,J in closure B, `‖I-J‖ ≤ Lh*‖frequencyMap h I-frequencyMap h J‖`, L140–141 / HEAD. |
| `hP.holo` | STANDING | f holomorphic on the original product domain, L145–147. |
| `hP.periodic` | STANDING | Every z in that domain and every integer k satisfy angle-shift equality, L146. |
| `hP.real` | STANDING | Every pair of real θ,I whose complex inclusion lies in that domain has real f value, L146. |
| `hP.bound` | STANDING | Every z in the original domain satisfies `‖f z‖ ≤ ε`, L147. |
| `hε : ε ≤ 1` | SOURCE | H1 L310; unperturbed L342. |
| `{I : Fin n → ℝ}` (U only) | TYPING | Arbitrary real action, L342. |
| `hI : I ∈ B` (U only) | SOURCE | L342. |
| `(ω : Fin n → ℝ)` (U only) | TYPING | Arbitrary real frequency, L342. |

Counts at the theorem boundary after bundle expansion: H1 = TYPING 9, STANDING 13, SOURCE 1, RULED 0, EXCESS 0; unperturbed = TYPING 11, STANDING 13, SOURCE 2, RULED 0, EXCESS 0. No instance assumptions are added. Nested variables of standing fields are universally quantified typing data on exactly the domains shown in the table.

The conclusions retain their local quantifiers: H1 quantifies z on `domainD`, integer shifts k, and real θ,I for reality. Unperturbed (a) quantifies every strip width and complex θ; (b) every θ; (c) every θ and column j; (d) every θ in `T_(s/2)` and continuity on real x; (e) is an implication from `L₊ F₂ ε ≤ 1/2`; (f) is an implication from `ω=g(I)` followed by every θ in `T_(s/2)`; (g) every θ in `T_(s/4)` and every point in the open ball. The two implications are SOURCE conditions in the conclusion, not added global premises. No `GValid`, normalization, invertibility, continuity, derivative bound, or small-divisor solution is assumed.

The omission of standing nonemptiness and boundary-layer assumptions makes these statements stronger and matches the binding design. Unperturbed's `hε` is mathematically unused (U:363), but retained exactly as the source/design require. No positivity of Lh or ε was silently assumed.

## Definitions and semantic attachment

There are **no new `def`, `abbrev`, `structure`, instance, or choice construction** in the package diff. All 37 new declarations are theorems. The extra internal frame module is permitted by the package's helper-module rule.

Inspected the meaning-carrying existing objects used by the statements and focused proofs:

| Objects | Classification and attachment |
|---|---|
| `Data`, `Pert` | Literal source-premise structures; fully expanded above. |
| `unperturbedTorus`, `hbold` | Literal formulas `(θ,ιI)` and `h(z.2)+f(z)` in `Head/Data.lean:100–107`; faithful on the whole carrier. |
| `stripWidth`, `deltaStar`, `domainD`, `Lplus` | Literal min/max/product formulas in `Head/Data.lean:44–63`; source s, δ_*, 𝔇 and L₊. |
| `Mconst`, `Fconst`, `hessian`, `actionHessian` | Literal formulas in `Head/Defs.lean:60–95`; action Hessian differentiates in `(0,e_i)` then `(0,e_j)`, with the same index order as the frozen torsion computation. `Mconst` and `Fconst` convert to the landed derivative constants through proved adapter equalities. |
| `frameL0`, `frameN0`, `matrixAverage` | Literal block matrices and entrywise unit-cube averages in `Head/MatrixNorms.lean:53,57,163`. |
| `tangentMat`, `normalMat` | Existing Part 2 coordinate matrices in `Torus/Objects.lean:56,67`; actual normal columns are proved equal to the frozen ones. |
| `gramMatrix`, `normalFrame`, `torsion`, `torsionAverage`, `invarianceError`, `hamiltonianVectorFieldℂ`, `omegaZero`, `dotℂ` | Actual frozen definitions, not substitute carriers; bilinear dot product and `Ω₀(a,b)=(-b,a)`. Inverses are used on proved units; averages on continuous functions. |
| `frequencyMap`, `gradC` | Actual real frequency and complex gradient, attached by the proved `frequencyMap_eq_gradC`; no assumed identification. |

For the inspected literal formulas: BODY_MATCH OK; PUBLIC_CARRIER OK; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS on these uses. The standard totalized derivative, matrix inverse and integral operations are used only after proving differentiability, unit determinant and integrability respectively. No fallback or arbitrary selected object contributes to either result. This does not re-audit unrelated Part 4 choice definitions merely because `Head/Defs` is imported.

## Refutation attempts on the audit focus

**(d), torsion sign and derivative order.** U:186–201 unfolds the actual frozen torsion. With `N_i=(0,e_i)`, `DN=0`, and `DX_H(0,e_j)=(a,b)`, the frozen `Ω₀` gives `(-b,a)`; its bilinear dot product with `(0,e_i)` is `a_i`, hence the positive action Hessian. `unperturbed_actionHessian_apply` (U:75–80) aligns precisely `D(Dφ)[(0,e_j)](0,e_i)`. U:97–112 proves the splitting through neighbourhood equality of derivatives. U:205–242 proves continuity and the average formula, using `torsion_regular_design` with the actual domain inclusion and Gram-unit proof. U:149–160 explicitly supplies integrability of each entry before integral additivity; this does not exploit the total integral's zero fallback.

**(e), possible dimension loss / wrong matrix norm.** U:116–146 chooses a complex phase vector realizing one row's absolute sum, proves its max norm at most one, and evaluates D²φ on `(0,v)` and `(0,e_i)`. Both directions have norm at most one. Thus the row-sum bound is `‖D²φ‖`, with no factor n. U:253–263 transfers the exact `F₂ ε` bound from the landed derivative estimates. U:272–285 supplies the proved Hessian inverse bound and continuous unit-cube average estimate to Neumann's criterion; the source threshold yields relative norm at most one half and inverse norm at most `2 L₊`. The determinant-unit assertion is proved, not inferred from a possibly zero total inverse.

**(f), real/complex gradient or error sign mismatch.** U:298–307 invokes `frequencyMap_eq_gradC` at I∈B⊆closure B⊆realDomain, then unfolds the frozen `X_H - DK·ω`. The h contribution cancels `(ω,0)`; the remaining vector is exactly `X_f`, with its original sign. U:310–312 uses the same `F₁ ε` derivative bound on 𝔇. There is no Diophantine or invertibility assumption on ω.

**(a)–(c), (g) and H1.** F:42–110 directly computes the affine frames and Gram matrix from the frozen definitions; the n=0 counterexample to norm one is excluded by source standing n≥2, not by a new premise. F:121–139 uses max product distance, `δ_* ≤ s/4`, and `δ_* ≤ r₀/4` to establish the exact open-ball inclusion. H:46–71 restricts the actual holomorphy/periodicity/reality premises; H:92–93 consumes the actual derivative block. No proof contradicts the blueprint.

## Checks and exact outputs

Checks were serialized; no clean, dependency refresh, full-library rebuild, or resource-budget override was run. Existing build artifacts were used. The targeted build reported its dependency job total, not a fresh library rebuild.

```text
$ nice -n 5 lake build KAM.Head.H1 KAM.Head.UnperturbedFrame KAM.Head.Unperturbed
Build completed successfully (2926 jobs).
[exit 0]

$ sh scripts/lint_sources.sh
check_lean_modules: PASS (266 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
[exit 0]

$ git diff --check main...HEAD
[no output; exit 0]

$ git diff --exit-code main...HEAD -- KAM/Frozen manifest
[no output; exit 0]

$ git diff --stat main...HEAD
 KAM.lean                       |   3 +
 KAM/Head/H1.lean               |  97 +++++++++++
 KAM/Head/Unperturbed.lean      | 375 +++++++++++++++++++++++++++++++++++++++++
 KAM/Head/UnperturbedFrame.lean | 143 ++++++++++++++++
 4 files changed, 618 insertions(+)
```

The generated `KAM.lean` diff contains exactly the three new module imports; root-generation checking passed. Package file lengths are 97, 143 and 375 (including comments), all below 1500. Module headers/public sections are present. Source lint detects no forbidden proof escape, forbidden ambient carrier or resource override. A recursive project-import scan from the three files found 58 project modules, with no provider or `KAM.Frozen.Theorems.*` module anywhere in that closure.

**Exact-type probe:** provider/frozen-export comparison is N/A: this is not a provider package. Independently tested both package statements against the binding Appendix A text: extracted each complete header up to `:= sorry`, checked its bytes equal the corresponding implementation header up to `:=`, and changed it to an anonymous example with body `h1 hD hP hε` or `unperturbed hD hP hε hI ω`. The probe imports `KAM.Head.Unperturbed`, opens the same norm scope/namespaces and declares the design's implicit section variables. Both examples elaborate silently, with no additional input. In the same probe, ran `#print axioms` on every new theorem (not just the two main exports).

Reproduce the probe generation from the pinned files:

```python
from pathlib import Path
import re
files = [Path('KAM/Head/' + s + '.lean')
         for s in ['H1', 'UnperturbedFrame', 'Unperturbed']]
design = Path('docs/campaign/design/PART4-LEAN-DESIGN.md').read_text()
probe = ['import KAM.Head.Unperturbed',
         'open scoped Matrix.Norms.Operator',
         'open Matrix MeasureTheory Filter Topology KAM.Torus',
         'namespace KAM.Head',
         'variable {n : ℕ} {τ s₀ r₀ Lh : ℝ} {B : Set (Fin n → ℝ)} '
         '{h : (Fin n → ℂ) → ℂ}',
         '  {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ε : ℝ}']
for name, src in [('h1', files[0]), ('unperturbed', files[2])]:
    expected = design.split('theorem '+name+' ', 1)[1].split(':= sorry', 1)[0].strip()
    actual = src.read_text().split('theorem '+name+' ', 1)[1].split(':=', 1)[0].strip()
    assert expected == actual
    body = name + ' ' + ('hD hP hε' if name == 'h1' else 'hD hP hε hI ω')
    probe.append('example ' + expected + ' := ' + body)
probe.append('end KAM.Head')
for src in files:
    probe += ['#print axioms KAM.Head.' + name
              for name in re.findall(r'^theorem (\w+)', src.read_text(), re.M)]
Path('.lake/abi-scratch/P42Audit1.lean').write_text('\n\n'.join(probe) + '\n')
```

```text
$ nice -n 5 lake env lean .lake/abi-scratch/P42Audit1.lean
'KAM.Head.h1_domainD_subset_domain' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.h1_domainD_add_intCast' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.h1_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.h1_add_intCast' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.h1_im_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.h1' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbedTorus_hasFDerivAt' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.fderiv_unperturbedTorus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.differentiable_unperturbedTorus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isPrimaryOnStrip_unperturbedTorus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isRealOnReals_unperturbedTorus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.tangentMat_unperturbedTorus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_fderiv_unperturbedTorus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.gramMatrix_unperturbedTorus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_norm_one' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.normalFrame_unperturbedTorus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.normalMat_unperturbedTorus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.fderiv_normalFrame_unperturbedTorus' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.ball_unperturbedTorus_subset_domainD' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_differentiableAt_h' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_differentiableAt_f' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_fderiv_hbold' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_actionHessian_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_actionHessian_hbold' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_norm_actionHessian_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_matrixAverage_const_add' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_mem_domainD' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_mem_domainD_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.torsion_unperturbedTorus_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_continuous_torsion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_torsion_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_continuous_actionHessian' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_torsionAverage' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_norm_actionHessian_f_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_twist' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed_invarianceError' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.unperturbed' depends on axioms: [propext, Classical.choice, Quot.sound]
[exit 0]
```

The two exact-type examples produced no diagnostics. The scratch probe was deleted after the check.

## Findings, uncertainties and proposed fixes

**Minor M1 — incomplete handoff/graph traceability.** The handoff lists the two top-level nodes and groups some frame helpers, but omits the nine substantive `step:p4:*` mappings; `docs/graph/K/DEPGRAPH.md:10308–10310` and corresponding step/result records through line 10605 still say `LEAN_STATUS: NOT_STARTED`, `LEAN_REF: -`, `LEAN_NOTE: -`. This is bookkeeping, not missing proofs: the node table above supplies the exact covering declarations, including H1-bound coverage by its final clause. Proposed fix: the orchestrator copies these mappings into the campaign graph/handoff when accepting the package. No graph or handoff was edited during this audit.

No blocking or major findings. No suspected defect in the pinned blueprint or frozen definitions was found. No implementation deviation requiring a new owner ruling was found. The helper split, the operator-norm formulation and the explicit continuous-entry average are allowed by the existing design. Unused `hε` on `unperturbed` is a source-preserving note, not a requested signature change.

Limitations: the audit verifies this package's contracts, focused proofs, import hygiene and axiom closure at the pinned snapshot; it does not independently recertify every upstream proof or any original literature PDF. No frozen statement was changed or sealed.

## Artifact identity and handoff

```text
a303187245d6efe2e2e7c2a8274c28563b5d14f4a56bb28110139e6c2552be06  KAM/Head/H1.lean
9fa16d00b303c4b1cede96e5e350c95474ef3b8bf1a611ff779728ab89e17593  KAM/Head/UnperturbedFrame.lean
83b419247caa4b361695b05900b95bd048101d16ef3dcd59f7e1555d63424fe1  KAM/Head/Unperturbed.lean
6de22b372e66280b06e14c26220e311983c97ce848c868b8843c49230d780642  blueprint/parts/p4-measure.tex
cb301f9c57ff4ff7d36a88c850459937c8f4ca8b789e88eeb4ca710edf2987d2  docs/campaign/design/PART4-LEAN-DESIGN.md
```

Only repository artifact written: `docs/campaign/audits/P4-2-audit-1.md`. Approach: direct source/design comparison, expanded premise audit, focused refutation of torsion/twist/error, exact-type and all-theorem axiom probes, source lint and targeted build. No state-changing git operation or source edit was performed.
