# I-STRIP-3b independent audit 1

Overall verdict: **PASS WITH NOTES**.

Audited branch `k/strip3b`, HEAD `01cc8f85c5989c785f07f1fd6f363f4fdb2a2dc8`,
package commit `01203aa`; comparison base `main = cb00071f6b192628701c988868e2a0dc3a851529`.
The HEAD is a merge of main, consistent with the handoff. This is an infrastructure-package audit,
not certification or sealing of G1/G2 or any other frozen theorem.

Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, AUDIT-PACKAGE.md, the supplied handoff,
the Part 2/3 design (in particular §2.4 and Appendix A), the graph contracts and raw blueprint
statements/proofs at the locators below. Applied the lean-statement-audit checks to the actual
exports and expanded their project-owned predicates. These nodes have no frozen theorem anchor
(the graph's FROZEN fields are `-`); provider sealing and provider/frozen exact-type checks do not
apply. Existing frozen definitions remain protected by the manifest and ABI checks.

## Node inventory and statement fidelity

| Node / claimed part | Lean declaration and locator | Verdict | Evidence |
|---|---|---|---|
| `bp:p1:fourier-basic` (a), real C¹ form; `step:p1:fb-derivative` | `KAM.torusCoeff_fderiv_coordinate_real`, `KAM.torusCoeff_fderiv_real`, FourierDerivative.lean:83,152 | PASS | p1-analysis.tex:757–768: `ContDiff ℝ 1` includes continuity, coordinate period one, all integer modes, all complex directions; exact positive `2πi` multiplier. Coordinatewise application gives the entrywise vector/matrix statements. |
| `bp:p1:cohomological`; data, coefficients, weighted estimate, existence, equation, uniqueness, realness, vector extension | `KAM.cohomological`, CohomologicalNodes.lean:51 | PASS | p1-analysis.tex:887–969: scalar and vector solution, holomorphy, periodicity, zero average, equation, exact `cohConst`, realness, uniqueness on the smaller open strip without a candidate bound. The underlying scalar/vector proofs are imported unchanged. |
| `bp:p1:cohomological-operator`, matrix solution; `step:p1:coo-entries`, `-vectors`, `-norm` | `KAM.cohomological_operator`, CohomologicalNodes.lean:114; `KAM.cohSolutionMat` and its property theorems, CohomologicalOperator.lean:192–316 | PASS | p1-analysis.tex:971–995: entrywise solution, matrix holomorphy/average/equation/uniqueness/realness, operator-norm estimate with exactly the scalar constant; no factor involving p or q. |
| `step:p1:coo-apriori` | `KAM.cohomological_apriori`, `_pi`, `_operator`, CohomologicalOperator.lean:119,144,165; second conjunct of `KAM.cohomological_operator` | PASS | p1-analysis.tex:997–1004: only holomorphy, periodicity, zero average and a bound on the directional derivative are required of u. The derivative datum's holomorphy, periodicity and zero average are proved. |
| `bp:p2:cohomological`; `step:p2:coh-components`, `-apriori` | `KAM.Apost.cohomological`, Apost/Tools.lean:322 | PASS | p2-aposteriori.tex:186–212 and design Appendix A:934–950: exact signature, vector solution/uniqueness/realness plus matrix a-priori bound. Derived from both Part 1 node exports; exact constant conversion at Tools.lean:296–306. |

Locators under `KAM/Strip/` unless another directory is given. Fourier-basic (b),(c) and summation
are existing dependencies, not new proofs claimed for this patch. No claim is made that this patch
independently re-audits every theorem in their implementation.

### Expanded binder inventory

The following tables enumerate the mathematical inputs of the node exports. S, T and St mean
SOURCE, TYPING and STANDING; RULED and EXCESS counts are zero. Repeated schemas apply separately
to every scalar/vector/matrix branch indicated. Variables locally bound *inside* a displayed
predicate (strip point, coordinate, mode, real point, matrix entry) have the source domains shown
in that predicate; they add no hypothesis. There are no hidden instance assumptions in these node
exports; the finite-dimensional normed structures are the canonical ones.

Common outer binders of both Part 1 exports (CohomologicalNodes.lean:51–52,114–115):

| Binder | Bin | Source |
|---|---|---|
| n : ℕ | T | dimension convention, p1:23–44 |
| ω : Fin n → ℝ | T | p1:888 |
| γ : ℝ | T | p1:888 |
| τ : ℝ | T | p1:888 |
| ρ : ℝ | T | p1:889 |
| δ : ℝ | T | p1:890 |
| hω : IsDiophantine γ τ ω | S | p1:888; expands to every nonzero integer k, `γ / |k|₁^τ ≤ |k·ω|` |
| hγ : 0 < γ | S | p1:888 |
| hτ : 0 ≤ τ | S | p1:888 |
| hδ : 0 < δ | S | p1:890 |
| hδρ : δ < ρ | S | p1:890 |

Counts per export: T=6, S=5, St=0, RULED=0, EXCESS=0. Positive ρ and ρ−δ follow;
no extra width assumption is imposed. The exports also allow n=0, a stronger generality than the
source's standing positive dimension, and do not require the globally available n≥2.

Each solution branch (scalar/vector in `cohomological`, matrix in `cohomological_operator`):

| Binder | Bin | Source |
|---|---|---|
| p : ℕ (vector/matrix only) | T | p1:895–896,962–969 |
| q : ℕ (matrix only) | T | p1:971–982 |
| g : ℂⁿ → ℂ / ℂᵖ / ℂᵖˣᑫ | T | p1:888–896,978 |
| A : ℝ | T | pointwise encoding of the bounded datum, p1:889,891 |
| hg : DifferentiableOn ℂ g Tρ | S | p1:888–889 |
| hp : coordinatewise period one on Tρ | S | p1:889; equivalent to integer shifts, p1:35–37 |
| hA : ∀θ∈Tρ, ‖g θ‖ ≤ A | S | p1:889,891 |
| h0 : avg g = 0 | S | p1:890 |
| hreal : g real on real points (inside the realness implication) | S | p1:895 |
| u : candidate on ℂⁿ | T | p1:890–891,946–953 |
| hu : holomorphic on T(ρ−δ) | S | p1:946–947 |
| hup : periodic on T(ρ−δ) | S | p1:946–947 |
| hu0 : avg u = 0 | S | p1:947 |
| hud : Du ω = g on T(ρ−δ) | S | p1:947 |

Counts for each branch: S=9, T=3 (scalar), 4 (vector), 5 (matrix); St=RULED=EXCESS=0.
The realness antecedent stays within its implication. Candidate boundedness is absent.
The conclusion universally quantifies θ and membership in T(ρ−δ), and asserts equality there,
not on an invented extension outside the strip.

A-priori branch (second conjunct of operator export; also scalar/vector/operator helpers):

| Binder | Bin | Source |
|---|---|---|
| p : ℕ | T | p1:998 |
| q : ℕ (matrix only) | T | p1:998 |
| u : ℂⁿ → value space | T | p1:998 |
| H : ℝ | T | p1:999 |
| hu : holomorphic on Tρ | S | p1:998 |
| hup : periodic on Tρ | S | p1:998 |
| hu0 : avg u = 0 | S | p1:999 |
| hH : ∀θ∈Tρ, ‖Du θ ω‖ ≤ H | S | p1:999 |

Counts for the matrix branch: T=4, S=4, St=RULED=EXCESS=0, in addition to the common
outer binders. H≥0 is derived by evaluating at a real point, not added as an assumption.
The scalar helper has no p/q and the vector helper has only p.

Part 2 has the same vector solution and matrix a-priori schemas, with `r` for `ρ`, `H` for `A`,
`cohR` for `cohSolutionPi`, and named predicates. Its outer typing binders are individually
n, τ, M, σK, σB, σT, 𝔅, h, ω, γ, r, δ (12 T inputs). Its source width inputs are individually
hr : 0<r, hδ : 0<δ, hδr : δ<r (3 S inputs; hr is redundant but also part of Appendix A).
`hS` expands as follows, with no remaining assumption bundle:

| Expanded Standing input | Bin | Blueprint source |
|---|---|---|
| two_le : 2 ≤ n | St | p2:57 |
| tau_ge : n−1 ≤ τ | St | p2:57 |
| M_pos : 0 < M | St | p2:57 |
| σK_pos : 0 < σK | St | p2:57 |
| σB_pos : 0 < σB | St | p2:57 |
| σT_pos : 0 < σT | St | p2:57 |
| isOpen : IsOpen 𝔅 | St | p2:58 |
| transl_mem : integer angle translations preserve 𝔅 | St | p2:58 |
| holo : holomorphic h on 𝔅 | St | p2:59 |
| periodic : h invariant under integer angle translations on 𝔅 | St | p2:59–60 |
| real : h real at real points in 𝔅 | St | p2:60 |
| bounds, first conjunct : ‖Xh‖ ≤ M on 𝔅 | St | p2:62 |
| bounds, second conjunct : ‖DXh‖ ≤ M on 𝔅 | St | p2:62 |
| bounds, third conjunct : ‖D²Xh‖ ≤ M on 𝔅 | St | p2:62 |
| gamma_pos : 0 < γ | St | p2:64 |
| dio : IsDiophantine γ τ ω | St | p2:64 |

Expanded outer counts: T=12, S=3, St=16, RULED=EXCESS=0; branch counts as above.
Only two_le, tau_ge, gamma_pos and dio are needed by this proof; retaining the complete Standing
assumption is the literal Appendix A and Part 2 standing convention, not a hidden result premise.
IsPeriodicOn, IsRealVec and avg expand to coordinate periodicity, componentwise imaginary part
zero on real points, and the unit-cube torus integral of the real restriction (Torus/Basic:122–135).
The row-sum norm is active at the matrix type and its derivative codomain.

For the real C¹ exports, n, v, ℓ (coordinate theorem), ω (direction theorem), and k are typing
inputs; hv : ContDiff ℝ 1 v and hp : coordinate period one are the two SOURCE assumptions
(p1:760–762). T=4 for each theorem, S=2, St=RULED=EXCESS=0. The direction theorem uses the
complex linear combination of real coordinate derivatives, as the source defines it; it does not
pretend to apply a real-linear derivative to a complex vector.

## Definitions and semantic closure

| New definition | Classification and full body | Verdict |
|---|---|---|
| private `realEmbed`, FourierDerivative:42 | Literal continuous real-linear embedding `x ↦ (x_j : ℂ)`, constructed by coordinate CLMs | PASS |
| private `mulVecCLM`, CohomologicalOperator:76 | Literal linear map `M ↦ M.mulVec v`, made continuous by finite dimensionality | PASS |
| `cohSolutionMat`, CohomologicalOperator:192 | Literal entrywise scalar Fourier solution `θ ↦ Matrix.of (fun i j => cohSolution ω (fun θ' => g θ' i j) θ)`; exposed | PASS |

For all three: BODY_MATCH=OK, PUBLIC_CARRIER=OK, WELL_DEFINEDNESS=N/A_LITERAL,
CHARACTERIZATION=N/A_LITERAL, CHOICE_INDEPENDENCE=N/A, DEFINITION_VERDICT=PASS.
There are no new abbrevs or structures. Existing `cohR` is unchanged and definitionally equals
`cohSolutionPi`; the probe checks this with rfl. The matrix defining equation also checks with rfl.

The scalar Fourier solution and its total `tsum` convention predate this package and are specified
literally by design §2.4. The new matrix definition introduces no alternative witness, junk branch,
if/dite or fallback. Convergence and the complete solution properties on the source domain are
proved from the existing scalar results in differentiableOn_cohSolutionMat through
norm_cohSolutionMat_le. Neither matrix nor vector code relies on off-domain values to prove a
source result. `cohConst` is exactly `(2π)⁻¹ (τ/(exp 1 * π))^τ (8n/π)^n`, `kappa=τ+n`,
`cR=max 1 cohConst`. These bodies were inspected, together with the frozen strip and Diophantine
definitions. The τ=0 convention is Lean real power 0^0=1, matching p1:46.

## Proof checks against the focus

1. **Uniqueness and g=0.** CohomologicalNodes:68–73,89–94,135–141 have no bound on the candidate.
   The scalar dependency Cohomological:302–347 identifies coefficients using nonresonance and
   Fourier uniqueness, without candidate boundedness. The transient probe supplies an arbitrary
   zero-average holomorphic periodic u with Du ω=0 on T(ρ−δ), applies the scalar branch to g=0,
   and derives u=0 from uniqueness and the zero estimate. No bound on u is supplied.
2. **Operator norm.** CohomologicalOperator:290–316 chooses a unit-ball test vector attaining the
   matrix norm, transfers average/derivative through multiplication (89–104), and applies the
   vector theorem with the original bound A. Lines 174–185 do the same for the a-priori form.
   Matrix/Norms:134–159 proves the attaining-vector fact also for empty matrix dimensions.
   The probe verifies `‖M‖ = ⨆ i, ∑ j, ‖M i j‖` under Matrix.Norms.Operator. Entrywise bounds
   are used for existence; row summation of entrywise estimates is not used for the final bound.
3. **Part 2 consumption.** Tools:339–349 applies the two Part 1 node theorems with actual
   hS.dio, hS.gamma_pos and the derived nonnegative exponent. It derives H≥0 from hH at 0.
   Tools.cohConst_div_le_cR uses δ>0 to rewrite δ^(−κ) as the inverse of δ^(τ+n), and multiplies
   cohConst≤cR by a nonnegative factor. No restriction δ≤1 and no extra dimension factor occurs.
4. **Appendix A.** The text between `theorem cohomological (hS : Standing` and ` := sorry`
   in the design equals, byte for byte, the text up to ` := by` in Tools.lean. The exact source
   signature, turned into an example, compiles with `KAM.Apost.cohomological hS hr hδ hδr`.
5. **Real C¹ form.** FourierDerivative:90–144 applies zero average of a coordinate derivative
   to χ₋ₖv and rearranges the product rule. Lines 156–161 sum the coordinate identities. This
   uses global real C¹ data, not a strengthened holomorphic hypothesis. No blueprint contradiction
   was found in either proof route.

## Mechanical verification

All Lake invocations were serial, with nice -n 5; no clean or full rebuild was run.
The targeted build was incremental against this worktree's existing build snapshot.

```text
$ nice -n 5 lake build KAM.Strip.FourierDerivative KAM.Strip.CohomologicalNodes KAM.Apost.Tools
Build completed successfully (3169 jobs).
[exit 0]

$ sh scripts/lint_sources.sh
check_lean_modules: PASS (238 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
[exit 0]

$ git diff --exit-code main...HEAD -- KAM/Frozen manifest
[no output; exit 0]

$ git diff --exit-code main...HEAD -- KAM/Strip/Cohomological.lean KAM/Strip/Fourier.lean KAM/Strip/FourierBasic.lean KAM/Strip/FourierSeries.lean KAM/Diophantine
[no output; exit 0]

$ git diff --check main...HEAD
[no output; exit 0]

$ wc -l KAM/Strip/FourierDerivative.lean KAM/Strip/CohomologicalOperator.lean KAM/Strip/CohomologicalNodes.lean KAM/Apost/Tools.lean
  165 KAM/Strip/FourierDerivative.lean
  322 KAM/Strip/CohomologicalOperator.lean
  163 KAM/Strip/CohomologicalNodes.lean
  353 KAM/Apost/Tools.lean
 1003 total
```

Lint checks forbidden proof escapes/resource overrides, source sizes, module-system headers,
generated root imports, errata rendering, quarantine and manifest/ABI identity. Every package
file is a module with copyright, imports, module docstring and public section; no source exceeds
1500 lines. KAM.lean's only diff is three generated imports, consistent with gen_root_imports.py
--check. No audited module imports a provider or a frozen theorem. There is no name clash:
KAM.cohomological, KAM.cohomological_operator and KAM.Apost.cohomological are distinct exports
and the joint import probe elaborates.

The transient file `.lake/abi-scratch/audit_strip3b_1.lean` imported
KAM.Strip.FourierDerivative and KAM.Apost.Tools, opened Matrix.Norms.Operator and
KAM.Torus, and contained the Appendix signature example plus the defining-equation,
row-sum-norm and g=0 checks described above. It was run with:

```text
$ nice -n 5 lake env lean .lake/abi-scratch/audit_strip3b_1.lean
[all examples elaborate; exit 0]
```

An initial attempt omitted `open KAM.Torus` from the Appendix context and reported unknown
IsPeriodicOn/avg/IsRealVec. Restoring that opening (present in Appendix A at design:881) resolved
all errors; no package source was changed. The final probe also printed the axioms of every new
public theorem, with the following exact output:

```text
'KAM.torusCoeff_finset_sum_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusCoeff_fderiv_coordinate_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusCoeff_fderiv_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.continuous_restrict_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusAverage_clm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusAverage_apply_matrix' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.mulVec_transfer' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cohomological_apriori' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cohomological_apriori_pi' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cohomological_apriori_operator' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cohSolutionMat_add_single' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cohSolutionMat_im_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.entry_holomorphic_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.differentiableOn_cohSolutionMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusAverage_cohSolutionMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.fderiv_cohSolutionMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.eq_cohSolutionMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_cohSolutionMat_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cohomological' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.cohomological_operator' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.Tools.cohConst_div_le_cR' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.cohomological_tau_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Apost.cohomological' depends on axioms: [propext, Classical.choice, Quot.sound]
```

All 23 exports have exactly the permitted axiom closure; no sorryAx or project axiom appears.
Private proof helpers are covered transitively wherever used; their literal definitions were
also inspected. The scratch file was removed after recording this receipt.

Provider exact-type probe: **N/A — no provider in this package**. The applicable exact-type
check is the successfully elaborated Appendix A example, not a substituted frozen theorem.

## Findings, limits and proposed fixes

- **Minor N1 (documentation/provenance).** AUDIT-PACKAGE.md asks for
  `docs/campaign/briefs/<PKG>.md`, but `docs/campaign/briefs/I-STRIP-3b.md` is absent
  (`cat` returned “No such file or directory”). The supplied I-STRIP-3b-handoff.md has an
  explicit audit focus; the parent I-STRIP-3.md and design §2.4 supply the mathematical contract.
  No requirement was inferred from an unavailable brief. Proposed fix: add a short 3b brief
  linking the handoff and recording that this package complements the already-landed scalar/
  vector work. This does not block the checked declarations.
- **Blocking findings: none. Major findings: none.** No suspected mathematical erratum in the
  inspected blueprint statements/proofs or deviation introduced by this patch was found.
  The D12 exponent τ+n, coordinatewise periodicity, explicit operator and pointwise bounds are
  the documented design conventions. This audit did not reopen the original HL19 PDF/source
  fidelity question; its governing mathematical sources were the local graph, blueprint and
  approved design requested by the brief.
- No implementation was repaired. Only this report was added; the pre-existing untracked
  handoff was left untouched. No state-changing git operation was performed.

## Reproducible probe body

Save the following temporarily under `.lake/abi-scratch/`, run the nice command above, then
remove it. The exact Appendix signature is included rather than a type_of alias.

```lean
import KAM.Strip.FourierDerivative
import KAM.Apost.Tools
open scoped Matrix.Norms.Operator
namespace KAM.Apost
open KAM.Torus
variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
example (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r δ : ℝ} (hr : 0 < r)
    (hδ : 0 < δ) (hδr : δ < r) :
    (∀ {p : ℕ} (g : (Fin n → ℂ) → Fin p → ℂ) (H : ℝ), DifferentiableOn ℂ g (complexStrip n r) →
      IsPeriodicOn g r → (∀ θ ∈ complexStrip n r, ‖g θ‖ ≤ H) → avg g = 0 →
      DifferentiableOn ℂ (cohR ω g) (complexStrip n (r - δ)) ∧ IsPeriodicOn (cohR ω g) (r - δ) ∧
      avg (cohR ω g) = 0 ∧
      (∀ θ ∈ complexStrip n (r - δ), fderiv ℂ (cohR ω g) θ (fun l => (ω l : ℂ)) = g θ) ∧
      (∀ θ ∈ complexStrip n (r - δ), ‖cohR ω g θ‖ ≤ cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * H) ∧
      (IsRealVec g → IsRealVec (cohR ω g)) ∧
      ∀ u : (Fin n → ℂ) → Fin p → ℂ, DifferentiableOn ℂ u (complexStrip n (r - δ)) →
        IsPeriodicOn u (r - δ) → avg u = 0 →
        (∀ θ ∈ complexStrip n (r - δ), fderiv ℂ u θ (fun l => (ω l : ℂ)) = g θ) →
        ∀ θ ∈ complexStrip n (r - δ), u θ = cohR ω g θ) ∧
    (∀ {p q : ℕ} (u : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ) (H : ℝ),
      DifferentiableOn ℂ u (complexStrip n r) → IsPeriodicOn u r → avg u = 0 →
      (∀ θ ∈ complexStrip n r, ‖fderiv ℂ u θ (fun l => (ω l : ℂ))‖ ≤ H) →
      ∀ θ ∈ complexStrip n (r - δ), ‖u θ‖ ≤ cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * H) := KAM.Apost.cohomological hS hr hδ hδr
end KAM.Apost
example {n p q : ℕ} (ω : Fin n → ℝ)
    (g : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ) :
    KAM.cohSolutionMat ω g = (fun θ i j => KAM.cohSolution ω (fun z => g z i j) θ) := rfl
example {n p : ℕ} (ω : Fin n → ℝ) (g : (Fin n → ℂ) → Fin p → ℂ) :
    KAM.Apost.cohR ω g = KAM.cohSolutionPi ω g := rfl
example {p q : ℕ} (M : Matrix (Fin p) (Fin q) ℂ) :
    ‖M‖ = ⨆ i, ∑ j, ‖M i j‖ := KAM.norm_eq_iSup_rowSum M
example {n : ℕ} {ω : Fin n → ℝ} {γ τ ρ δ : ℝ}
    (hω : KAM.IsDiophantine γ τ ω) (hγ : 0 < γ) (hτ : 0 ≤ τ)
    (hδ : 0 < δ) (hδρ : δ < ρ) {u : (Fin n → ℂ) → ℂ}
    (hu : DifferentiableOn ℂ u (KAM.complexStrip n (ρ - δ)))
    (hp : ∀ i z, z ∈ KAM.complexStrip n (ρ - δ) → u (z + Pi.single i 1) = u z)
    (h0 : KAM.torusAverage (fun x : Fin n → ℝ => u fun j => (x j : ℂ)) = 0)
    (hd : ∀ θ ∈ KAM.complexStrip n (ρ - δ), fderiv ℂ u θ (fun j => (ω j : ℂ)) = 0) :
    ∀ θ ∈ KAM.complexStrip n (ρ - δ), u θ = 0 := by
  intro θ hθ
  have hs := (KAM.cohomological hω hγ hτ hδ hδρ).1 (fun _ => 0) 0
    (differentiableOn_const _) (fun _ _ _ => rfl) (fun _ _ => by simp) (by simp [KAM.torusAverage])
  have hb := hs.2.2.2.2.1 θ hθ
  have he := hs.2.2.2.2.2.2 u hu hp h0 hd θ hθ
  rw [he]
  exact norm_eq_zero.mp (le_antisymm (by simpa using hb) (norm_nonneg _))
#print axioms KAM.torusCoeff_finset_sum_mul
#print axioms KAM.torusCoeff_fderiv_coordinate_real
#print axioms KAM.torusCoeff_fderiv_real
#print axioms KAM.continuous_restrict_real
#print axioms KAM.torusAverage_clm
#print axioms KAM.torusAverage_apply_matrix
#print axioms KAM.mulVec_transfer
#print axioms KAM.cohomological_apriori
#print axioms KAM.cohomological_apriori_pi
#print axioms KAM.cohomological_apriori_operator
#print axioms KAM.cohSolutionMat_add_single
#print axioms KAM.cohSolutionMat_im_eq_zero
#print axioms KAM.entry_holomorphic_periodic
#print axioms KAM.differentiableOn_cohSolutionMat
#print axioms KAM.torusAverage_cohSolutionMat
#print axioms KAM.fderiv_cohSolutionMat
#print axioms KAM.eq_cohSolutionMat
#print axioms KAM.norm_cohSolutionMat_le
#print axioms KAM.cohomological
#print axioms KAM.cohomological_operator
#print axioms KAM.Apost.Tools.cohConst_div_le_cR
#print axioms KAM.Apost.cohomological_tau_nonneg
#print axioms KAM.Apost.cohomological
```
