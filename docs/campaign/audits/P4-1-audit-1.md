# Independent audit of P4-1

Overall verdict: **PASS WITH NOTES**. All three result contracts and their substantive proof steps pass. No blocking or major finding, extra hypothesis, weakened conclusion, forbidden axiom dependency, or suspected mathematical erratum was found. The note concerns comparison reproducibility, not the proofs.

## Snapshot and scope

Audited 2026-10-27, HEAD `c27c9dd0c5606155b8064e3786e683d3dcc7eb04` (merge of main into `k/p4-1`; implementation commit `7cceeb4`). Initial `k/p4-0` was `b830adee5a8d4e2f43c7a80d48774d8819a0df08`. Read AGENTS, PLAN, DECISIONS, AUDIT-PACKAGE, P4-1, P23-COMMON, PROVER-COMMON, the handoff, Part 4 design and its audit, raw blueprint statements/proofs and graph contracts. Used the Lean statement audit workflow. This is an infrastructure package, not a frozen-provider package; no manifest entry or sealing claim applies to these three exports.

Ran the requested `git diff k/p4-0...HEAD`. Initially Git warned:

```text
warning: k/p4-0...HEAD: multiple merge bases, using 735d9ea79cb80156eba15f37b13e3f3ae8b3e05c
23 files changed, 2804 insertions(+), 95 deletions(-)
```

That merge-base diff includes P4-0 and unrelated merged work. As instructed, P4-0 is audited separately; this report audits P4-1's `KAM/Head/Frequency.lean` and `KAM/Head/InverseFrequency.lean`, and inspects their dependencies for consumption correctness. The endpoint comparison `git diff b830adee5a8d4e2f43c7a80d48774d8819a0df08 HEAD --stat -- KAM/Head` contains exactly these two files: 445 and 227 added lines. Standing, Defs and Adapters are identical at those endpoints. No comparison against main was used to define package scope.

## Node results

All Lean declarations below are in `KAM.Head`.

| Node | Lean declaration and locator | Verdict | Evidence |
|---|---|---|---|
| `bp:p4:freq-map` | `freq_map`, Frequency.lean:407 | PASS | Blueprint p4-measure.tex:225–237, all five items. Open real domain contains closure B; real complex gradient; derivative equals real symmetric Hessian; H₁/H₂ bounds on the half-neighbourhood; exact Λg bound and bounded image. |
| `bp:p4:hessian-inverse` | `hessian_inverse`, InverseFrequency.lean:188; `hessian_inverse_at`:165 | PASS | Blueprint :274–278. All real directions; determinant is a unit; inverse entries real; complex row-sum inverse norm ≤ L₊. |
| `bp:p4:inverse-freq` | `inverse_freq`, InverseFrequency.lean:199 | PASS | Blueprint :294–300. Injectivity on closure B, inverse Lipschitz inequality there, genuine selected inverse on g(B), exact L₊ and W∞ bounds, and left inverse on B. |
| `step:p4:fm-domain` | `isOpen_realDomain`:96; `closure_subset_realDomain`:100 | PASS | Openness and closure inclusion proved on the actual action neighbourhood. |
| `step:p4:fm-gradient` | `frequencyMap_eq_gradC`:140; `partial_im`:161 | PASS | Real/complex chain rule uses local reality; coordinate reality follows from equality with a real vector. |
| `step:p4:fm-hessian` | `fderiv_frequencyMap_eq_hessian`:231; `hessian_transpose`:241; `hessian_im`:250 | PASS | Differentiability, mixed partial symmetry and entrywise reality are proved. |
| `step:p4:fm-bounds` | `norm_frequencyMap_le`:283; `norm_hessian_le`:302 | PASS | Valid derivative-bound specialization and complex row-sum duality; no dimension factor lost. |
| `step:p4:fm-lipschitz` | `frequencyMap_lipschitz`:366; bounded-image assembly :435–441 | PASS | Convex ball in the half-neighbourhood for near pairs; 2H₁/δ* for far pairs; no convexity of B assumed. |
| `step:p4:hess-quotient` | `norm_le_Lplus_mul_hessian_mulVec`, InverseFrequency.lean:121 | PASS | Positive difference quotients at an interior point, nondegeneracy on closure B, and limit of the actual derivative. |
| `step:p4:hess-norm` | `isUnit_map_ofReal_of_bound`:55; `norm_inv_le_of_bound`:69; `hessian_inverse_at`:165 | PASS | Finite square real injectivity, complex scalar extension, real inverse via adjugate, and real sign vectors give the complex row-sum bound. |
| `step:p4:invfreq-proof` | `inverse_freq`:199 | PASS | `invFunOn_mem`/`invFunOn_eq`, closure injectivity and the frequency norm bound supply every clause. |

The three main signatures are **verbatim identical** to design Appendix A :1057–1099 before their proof bodies (checked mechanically). Independently comparing the raw blueprint gives the same contract. In freq-map(ii), real partials are encoded by equality to the complex inclusion of a real vector, which implies entrywise zero imaginary part. The inequality for all I,J in closure B is precisely inverse Lipschitzness on g(closure B); it does not assert that `invFreq h B` inverts the larger image outside g(B).

## Expanded inputs and quantifiers

All three main results have the same outer parameters and the same `Data` input (Standing.lean:37–48). The following is the complete expanded input inventory; `hD` is a container, not an additional premise counted a second time.

| Binder or expanded field | Bin | Source |
|---|---|---|
| `n : ℕ` | TYPING | Part 0 ambient finite dimension; p4 :138–139 |
| `τ : ℝ` | TYPING | p4 :139 |
| `s₀ : ℝ` | TYPING | p4 :139 |
| `r₀ : ℝ` | TYPING | p4 :139 |
| `Lh : ℝ` | TYPING | p4 :140–141, fixed witness |
| `B : Set (Fin n → ℝ)` | TYPING | p4 :139 |
| `h : (Fin n → ℂ) → ℂ` | TYPING | p4 :139–140 |
| `Data.two_le : 2 ≤ n` | STANDING | p4 :139 |
| `Data.tau_gt : n - 1 < τ` | STANDING | p4 :139 |
| `Data.s₀_pos : 0 < s₀` | STANDING | p4 :139 |
| `Data.r₀_pos : 0 < r₀` | STANDING | p4 :139 |
| `Data.isOpen : IsOpen B` | STANDING | p4 :139 |
| `Data.isBounded : Bornology.IsBounded B` | STANDING | p4 :139 |
| `Data.holo : DifferentiableOn ℂ h (actionNbhd B r₀)` | STANDING | p4 :139–140 |
| `Data.real : ∀ I, ι I ∈ actionNbhd B r₀ → (h (ι I)).im = 0` | STANDING | p4 :140 |
| `Data.nondeg : ∀ I ∈ closure B, ∀ J ∈ closure B, ‖I-J‖ ≤ Lh * ‖g I-g J‖` | STANDING | p4 :140–141 and frozen HEAD nondegeneracy premise |

Counts **per main result**: TYPING 7, STANDING 9, SOURCE 0 additional outer premises, RULED 0, EXCESS 0. There are no instance binders that encode mathematical obligations. The nine-field expansion is exhaustive. Helpers with explicit local estimates have distinct names, and their callers prove those estimates; none supplies a source result by assuming its conclusion.

Quantifier guards in the conclusions match the source: freq-map(ii),(iii) quantify I ∈ U, then every real direction v and matrix indices; (iv) quantifies every real I whose inclusion lies in B_{r₀/2}; (v) quantifies I,J ∈ B. Hessian-inverse quantifies I ∈ B, then every real v and every inverse entry i,j. Inverse-freq quantifies I,J ∈ closure B, frequencies ω,ω′ ∈ g(B), and I ∈ B for the left inverse. These guards are conclusions of the universally quantified theorem, not additional global data. All constants are fixed definitions before the quantified points. No f or ε enters them.

Allowed strengthening: these results omit the standing boundary-layer witness, nonemptiness and perturbation data, which they do not need. The design explicitly authorizes this stronger formulation (§2.1; design audit). No positivity of Lh, convexity or connectedness of B, or a derivative/Hessian estimate was added as a premise.

## Definitions and carriers

**No new `def`, `abbrev` or `structure` occurs in either P4-1 module.** The inherited objects actually consumed were inspected, without reopening the separate P4-0 audit:

| Object | Classification and use |
|---|---|
| `frequencyMap` (frozen FrequencyMap.lean:25) | Literal real gradient of Re(h ∘ ι) using the total fderiv. Agreement with complex derivatives on U is proved, not assumed. |
| `realDomain` (Defs.lean:66) | Literal preimage of the open complex action neighbourhood. |
| `gradC`, `hessian` (:70,74) | Literal complex partials and matrix of ∂j∂i h. Correct finite-function carriers. |
| `Hconst`, `LambdaG`, `Winf` (:53,78,82) | Exact data-dependent formulas cbar·hBound/δ*^j, max(H₂,2H₁/δ*), H₁. No input derivative bound hidden in their types. |
| `hBound` (HBounded.lean:120) | Supremum of norms on B_{3r₀/4}; boundedness follows from holomorphy on the larger domain and bounded B. Its empty-set value is never used to obtain a nonvacuous pointwise estimate. |
| `invFreq` (Defs.lean:86) | Existing `Function.invFunOn g B`; arbitrary off g(B), explicitly documented. P4-1 only claims its inverse characterization on g(B). Unique preimage is proved from closure injectivity. No off-image value is used. |
| `Data` | Standing source-premise structure; expanded above; no conclusion-shaped field. |

For the inherited literal definitions on their intended source domains: BODY_MATCH OK, PUBLIC_CARRIER OK under the documented total-function convention, WELL_DEFINEDNESS N/A_LITERAL, CHARACTERIZATION N/A_LITERAL, CHOICE_INDEPENDENCE N/A. For `invFreq`, this audit certifies its **guarded inverse use**, not a global inverse on the entire total Lean carrier or on g(closure B). Existence, uniqueness and choice independence on g(B) are established by `inverse_freq` and the independently elaborated uniqueness probe below. No claim of a new manifest-bound definition approval is made here.

Both modules open `Matrix.Norms.Operator`; matrix norms are the max absolute row sum, by `KAM.norm_le_iff_forall_rowSum` (Matrix/Norms.lean:52), not the entrywise max. Real/complex vector norms are the Pi sup norm; `norm_realInclusion` preserves it. Frequency.lean:302–330 uses a complex phase vector to attain each absolute row sum of the Hessian; InverseFrequency.lean:69–103 uses real sign vectors only after establishing a real inverse. The latter bound is therefore also valid for the complex operator norm.

## Zero perturbation and genuine inverse probes

At Frequency.lean:277–281 the application is to `derivative_bounds_design` (Adapters.lean:80), with:

- `s₀ > 0`, `r₀ > 0`, bounded B and holomorphic h supplied by `hD`;
- `f := fun _ => 0`, whose holomorphy is `differentiableOn_const 0`;
- `ε := 0`, whose bound is `fun z _ => by simp` (norm zero ≤ zero);
- projection `.2.1 z hz j hj`, exactly part (b), at an actual point and order.

No positivity of ε or nonzero perturbation is required by the adapter. The unrelated ε ≤ 1 condition is nested only in part (d), not an impossible premise of part (b). The application has no contradictory auxiliary assumption and adds no premise to the result. The Lipschitz estimate then uses the derived H₂ bound locally and H₁ bound for far pairs.

The temporary probe copied each of the three Appendix A signatures into an `example`, replacing the design proof placeholder with `freq_map hD`, `hessian_inverse hD`, or `inverse_freq hD`. It also elaborated the zero-perturbation application verbatim and the following inverse characterization:

```lean
example (hD : Data τ s₀ r₀ B h Lh) {ω : Fin n → ℝ}
    (hω : ω ∈ frequencyMap h '' B) :
    ∃! I, I ∈ B ∧ frequencyMap h I = ω := by
  have hi := (inverse_freq hD).2.2.1 ω hω
  refine ⟨invFreq h B ω, ⟨hi.1, hi.2.1⟩, ?_⟩
  intro J hJ
  exact (inverse_freq hD).1 (subset_closure hJ.1) (subset_closure hi.1)
    (hJ.2.trans hi.2.1.symm)
```

All five examples passed. Provider exact-type probe: **N/A**, since no provider/frozen theorem is delivered by P4-1. The three design-signature examples are the relevant exact-type checks. Imports reach frozen definitions but no frozen theorem or provider shortcut is used in these proofs. Axiom checks also exclude dependence on draft theorems through hidden transitive paths.

## Checks and output

Checks were serialized: targeted build, complete lint, then the independent Lean probe. No resource override, clean, full-library rebuild or state-changing git operation was used.

```text
$ nice -n 5 lake build KAM.Head.InverseFrequency
Build completed successfully (2921 jobs).
[exit 0; this target includes Frequency]

$ sh scripts/lint_sources.sh
check_lean_modules: PASS (250 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
[exit 0]

$ wc -l KAM/Head/Frequency.lean KAM/Head/InverseFrequency.lean
  445 KAM/Head/Frequency.lean
  227 KAM/Head/InverseFrequency.lean
  672 total

$ rg -n '\b(sorry|admit|axiom|unsafe|opaque|EuclideanSpace)\b|set_option' KAM/Head/Frequency.lean KAM/Head/InverseFrequency.lean
[no matches; exit 1]

$ git diff k/p4-0...HEAD -- KAM/Frozen manifest
[no diff; merge-base warning as recorded above; exit 0]

$ git diff b830adee5a8d4e2f43c7a80d48774d8819a0df08 c27c9dd0c5606155b8064e3786e683d3dcc7eb04 -- KAM/Frozen manifest
[empty; exit 0]

$ git diff --check k/p4-0...HEAD
[no whitespace error; exit 0; warning selected 4cc419e763c65a53a944bfe0ef9cd489bdbc2cde after the ref moved]

$ nice -n 5 lake env lean .lake/abi-scratch/P41Audit.lean
[exit 0; five examples passed; 42 axiom results below]
```

The mechanical signature comparison printed:

```text
freq_map: verbatim signature True
hessian_inverse: verbatim signature True
inverse_freq: verbatim signature True
Axiom probe results: 42
```

The probe enumerated every top-level theorem with `^theorem (\w+)` from the two module sources and emitted `#print axioms KAM.Head.<name>` for each. Every one printed exactly `[propext, Classical.choice, Quot.sound]`; full normalized output follows:

```text
'KAM.Head.realInclusion_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.fderiv_realInclusion_of_real' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.differentiableAt_re_comp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.realInclusion_single' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_single_one_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isOpen_realDomain' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.closure_subset_realDomain' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.mem_realDomain_of_half' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.realInclusion_mem_half' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.differentiableAt_h' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.eventually_im_h' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.frequencyMap_eq_gradC' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.differentiableOn_partial' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.differentiableAt_partial' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.partial_im' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.eventually_im_partial' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.frequencyMap_apply_eventuallyEq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.differentiableAt_frequencyMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.differentiableOn_frequencyMap' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.fderiv_frequencyMap_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.hessian_mulVec_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.fderiv_frequencyMap_eq_hessian' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.hessian_transpose' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.hessian_im' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.Hconst_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_iteratedFDeriv_le_Hconst' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_frequencyMap_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_hessian_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.deltaStar_le_quarter_radius' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_fderiv_frequencyMap_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.frequencyMap_lipschitz' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.freq_map' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.map_ofReal_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_map_ofReal_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.isUnit_map_ofReal_of_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_inv_le_of_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_sub_le_Lplus_mul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.norm_le_Lplus_mul_hessian_mulVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.hessian_eq_map_ofReal' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.hessian_inverse_at' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.hessian_inverse' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.inverse_freq' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Copyright headers, module commands, import visibility, module docstrings and public sections are present in both files; lint checks their module-system compliance. The probe file was removed after successful elaboration. The only repository artifact written by the auditor is this report; the pre-existing untracked handoff was preserved.

## Findings, limits and proposed actions

**Minor — comparison ref drift and multiple merge bases.** The initial requested triple-dot diff includes unrelated merged work and P4-0, despite the handoff's intended delta. During this audit another process moved `k/p4-0` to `15beef65f1c24ed63b13bdfedf2a58b63b7cf8cc`; HEAD and audited sources stayed fixed. Subsequent triple-dot checks selected `4cc419e763c65a53a944bfe0ef9cd489bdbc2cde` instead. Evidence: the exact ref hashes and Git warnings recorded above. Proposed fix: record full base and head commits in future handoffs; retain the frozen initial endpoint delta to identify P4-1's two modules. No code change required.

No blocking/major mathematical or hygiene finding. No suspected pinned-source erratum or introduced mathematical deviation. The source correspondence here is to the repository's Part 4 blueprint and binding Lean design; this is not an independent audit of external literature PDFs, P4-0 as a package, or HEAD closure. Omission of unused standing premises is the permitted strengthening documented above.
