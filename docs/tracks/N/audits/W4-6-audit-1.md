# W4-6 independent package audit 1

**Verdict: PASS WITH NOTES for `bpN:p4:cauchy`.** All three public Cauchy estimates implement the approved signatures and have standard axiom closure. The Hahn–Banach proof of the action estimate is correct. The notes concern an acknowledged superseded design proof plan and a blueprint substitution typo; neither requires a Lean change. This infrastructure package supplies no frozen theorem, so no anchor is seal-ready or closed by this verdict. Provider/frozen type equality and seal-body probes are not applicable.

Date: 2026-10-28. Worktree: `/root/code/KAM-inp-w46`. Authority: AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, and the AUDIT FOCUS in `docs/tracks/N/audits/W4-6-handoff.md`. The user's exact report path overrides the brief's main-worktree output default. No production source, frozen file, manifest, generated file, graph, or git history was edited. No subagents were used.

## Snapshot and comparison boundary

HEAD: `da37d08af9fc2715041207144fe504e1d7b8c33a`.
`inp`: `22304c61abd6dbd763fb2b53a7922afa968da9f8`.
`inp-w43`: `bd6ed0ba96e511dbb466655327c68c7e234f3e33`.

The required `git diff inp...HEAD` contains exactly:

```text
248  0  KAM/Weighted/Cauchy.lean
438  0  KAM/Weighted/Coefficients.lean
164  0  docs/tracks/N/audits/W4-3-audit-1.md
4    0  docs/tracks/N/audits/W4-3-handoff.md
```

Its merge base is `a763bfdbf022d6f10caaff4fc865f2a9e5432a97`. The handoff's requested `git diff inp-w43...HEAD` was also inspected: that comparison contains 246 changed files because `inp-w43` is an older integration boundary, not the immediate W4-6 parent. Those unrelated changes are not certified here. Attribution was checked against `0a01f95` (the merge of W4-3 immediately before W4-6): `git diff 0a01f95..HEAD --stat` contains only `KAM/Weighted/Cauchy.lean`, 248 insertions. W4-6 commits are `d1e90c7` and `da37d08`.

`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` and the corresponding W4-6-only protected-path comparison both produce no output. `git diff --check inp...HEAD` exits 0 with no output. The handoff was already untracked when this audit began.

Read the Part145 design (including W4-6 row, §7.1 and Appendix B.6), both binding design audits, blueprint-N Part 4 and the Part 5/7/11b Cauchy consumers, Track N's statement packet, frozen ComplexStrip/ActionNbhd definitions, and the imported domain, weighted-norm, coefficient and general-Cauchy APIs. The inherited W4-3 public surface was also checked against the design and included in the independent replay/axiom checks below. No frozen theorem is imported or implemented by either changed module.

## Declaration ledger

All names are under `KAM.Weighted`. Locators are in `KAM/Weighted/Cauchy.lean` unless prefixed `Coefficients`.

| Node | Declaration / line | Verdict | Reason |
|---|---|---|---|
| cauchy (a), helper | `norm_coeff_dtheta`, 47 (private) | PASS | Exact coefficient multiplier norm `2π |k_j|`; uses actual coordinate derivatives. |
| cauchy (a), helper | `theta_weight_le`, 57 (private) | PASS | Sums coordinate multipliers to `2π |k|₁`; coefficient loss `2π(s₀-s)` gives exactly `1/(e(s₀-s))`. |
| cauchy (a) | `cauchy_theta`, 87 | PASS | Matches approved type: summability and sum over angles at fixed action, plus individual global derivative bounds. No exchange of sum and action supremum. |
| cauchy (b), helper | `action_partial_sum_le`, 138 (private) | PASS | Finite weighted derivative sum bounded by scalar Cauchy via fixed norming functionals; all domain and holomorphy premises proved. |
| cauchy (b) | `cauchy_action`, 210 | PASS | Matches approved type, same angular width, exact factor `1/(r₀-r)`; establishes summability before using the total sum. |
| cauchy, losses | `cauchy_loss`, 226 | PASS | Matches approved type and explicit binder order; obtains all three loss conclusions with denominators `eσ` and `ρ`. |
| coefficients (a), inherited | `coeff_differentiableOn`, Coefficients:128 | PASS | Holomorphic coefficients on the full action tube under the source class and positive strip width. |
| coefficients (b), inherited helper | `inClass_fderiv_apply`, Coefficients:158 | PASS | Fixed-direction derivatives are holomorphic and periodic; stronger helper without positive-width premise. |
| coefficients (b), inherited | `coefficients_deriv`, Coefficients:280 | PASS | Separate angular/action forall families, actual `2π i k_j` multiplier, differentiation under the coefficient integral. |
| coefficients (c), inherited | `coefficients_series`, Coefficients:341 | PASS | Narrower-strip uniform convergence, full-domain class, exact coefficients and weighted bound. |
| coefficients (d), inherited | `coefficients_repr`, Coefficients:422 | PASS | HasSum equals the original function, with the single-mode bound. |

The three W4-6 theorem statements and four inherited coefficient statements were copied from the approved design into scratch `example`s, with each body applying the corresponding export to all explicit arguments in order. All seven elaborated successfully. Their hypotheses have no conclusion-shaped fields, assumed coefficient derivative bounds, or hidden Cauchy estimate. The finite-dimensional target and scalar-tower instances are exactly the F6 design contract and cover finite vector/matrix consumers.

## Refutation checks on the proof

For the angular estimate, `hb` provides summability at `s₀`. The per-mode estimate dominates each angular derivative series by a constant multiple of that summable family. Only after obtaining all derivative summability witnesses does the proof commute the finite angular sum with the infinite mode sum (lines 106–119). The global single-coordinate estimate uses nonnegativity and the pointwise angular sum. Thus the known false sum-of-global-norms version is never invoked.

For the action estimate (lines 138–207), fix an action `I` and index `i`. Membership in `polyNbhd D r` supplies `I' ∈ D` with `‖I-I'‖ < r`; the triangle inequality gives `ball I (r₀-r) ⊆ polyNbhd D r₀` without convexity, connectedness or boundedness of D. Openness of the larger tube turns coefficient holomorphy into ordinary differentiability at every ball point, including the center.

For each mode, Mathlib's `exists_dual_vector'' ℂ` supplies a continuous complex-linear functional `g_k`, norm at most one, satisfying `g_k(a_k)=‖a_k‖` for the derivative coefficient `a_k` at the fixed center. These functionals are fixed while the action variable J varies. Zero coefficients and even a trivial target space are covered by the at-most-one version of Hahn–Banach. For every finite Λ, the scalar holomorphic function

```text
H(J) = Σ_{k∈Λ} modeWeight s₀ k · g_k(coeff u J k)
```

has `‖H(J)‖ ≤ Σ_{k∈Λ} ‖coeff u J k‖ modeWeight s₀ k ≤ M` on that ball. The last inequality uses the original summability witness and bound at J, with no per-mode supremum. Its derivative at I in direction `e_i` is exactly the real, nonnegative finite sum of weighted derivative norms. `general_cauchy` and `‖e_i‖=1` therefore bound every such finite sum by `M/(r₀-r)`. Finally `summable_of_sum_le` and `tsum_le_of_sum_le` give summability and the claimed infinite sum bound (lines 213–217). No differentiation of an infinite series or choice depending on J occurs.

Challenge cases: D empty or nonpositive target action radius makes the relevant bound predicate vacuous, consistently with the signed design. On a nonempty relevant domain, `hb` forces `M≥0`. Independent `n=0` and `m=0` cause no cross-coordinate witness requirement: modes remain meaningful at `n=0`, and `∀ i : Fin 0` is vacuous at `m=0`. Positive angular widths are retained wherever coefficient identities are used. No maximum over an empty coordinate index set is introduced. The unused `hρr` is retained verbatim from the approved loss signature; the proof actually works on empty nonpositive-radius tubes as well.

## Definition classification

W4-6 introduces **no** `def`, `abbrev`, or `structure`. Its local `w` is the actual positive Fourier weight; its local H is the finite scalar sum above, not a replacement Hamiltonian or norm.

The five definition/abbreviation declarations in inherited W4-3 are classified here because they appear in `inp...HEAD`:

| Declaration / Coefficients line | Classification | Whole-carrier meaning and guards |
|---|---|---|
| `cube`, 56 (private abbrev) | Literal integration domain | Real unit cube, including the zero-dimensional singleton. |
| `cG`, 59 (private def) | Literal integrand | Negative-character multiplier times the actual function value. |
| `dtheta`, 136 | Actual coordinate derivative | Total Fréchet derivative applied to the angular basis vector; theorems establish differentiability on the asserted open domain. |
| `dI`, 139 | Actual coordinate derivative | Same, in the action basis direction. |
| `fourierSeries`, 143 | Total series formula | Literal scalar Fourier tsum. Theorems prove convergence on the asserted domains; no claim relies on its fallback outside convergence. |

Imported `WBound` explicitly pairs `WSummable` with the sum bound. Both new derivative estimates prove these witnesses. `wnorm` and its possible unbounded-supremum defaults are not used by W4-6. Coefficient integrals are used where class membership and positive width provide the genuine regularity, not at arbitrary junk values of a total integral or derivative.

## Hygiene and independent receipts

Every Lean/Lake operation in this audit was serial, with `LEAN_NUM_THREADS=1` and `nice -n 5`; the build wrapper supplies nice itself. No resource-budget override, clean, update, cache download, or package edit was used. The module sizes are 248 and 438 lines. Both changed files have copyright, module declaration, public interface imports, module docstrings, and exposed public noncomputable sections. The only options are `linter.unusedSectionVars false` and, for the loss theorem only, `linter.unusedVariables false in`; these suppress lint diagnostics and do not alter elaboration budgets or proofs. No forbidden proof escape or ambient `EuclideanSpace` occurs.

Targeted build:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-w46 KAM.Weighted.Cauchy
```

Exit 0; exact output:

```text
[inp-gate] slot 2 acquired 03:34:48 for KAM.Weighted.Cauchy
Build completed successfully (3158 jobs).
```

Kernel replay, one invocation containing both changed modules (there is no provider module):

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Weighted.Cauchy KAM.Weighted.Coefficients
```

Exit 0; exact output:

```text
replaying KAM.Weighted.Coefficients
replaying KAM.Weighted.Cauchy
```

Design-type and axiom probe:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/W46Audit.lean
```

Exit 0; the seven examples produce no diagnostics. Complete axiom output:

```text
'KAM.Weighted.cauchy_theta' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.cauchy_action' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.cauchy_loss' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.coeff_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.coefficients_deriv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.coefficients_series' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.coefficients_repr' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Weighted.inClass_fderiv_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Lint:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1 solely for the brief's explicitly allowed stale generated-root warning; complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (372 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The generated root was left untouched. No other lint failure occurred. The scratch probe was removed after recording the receipts. Final report whitespace and artifact-inventory checks passed; the sole persistent artifact authored by this audit is this report at the exact requested worktree path.

## Documentation notes, deviations and remaining limits

**W46-D1 — LOW, acknowledged design-plan defect.** `docs/tracks/N/design/PART145-LEAN-DESIGN.md:301` says “then Tonelli in `k`: `∑ₖ sup-over-circle`”. A bound on the supremum of the coefficient sum does not bound the sum of the separate coefficient suprema. The handoff explicitly supersedes this plan; the implemented finite-functional proof above pays the full estimate. The blueprint's actual circle-integral/Tonelli proof at `blueprint-N/parts/p4-weighted-norms.tex:138–141` keeps the sum inside the integral and does not make the invalid exchange. This is an accepted proof-route deviation, with no change to premises or conclusions.

Suggested replacement for the design's (b) proof-plan sentence:

> (b) Fix I and i. For each derivative coefficient choose a norming complex-linear functional of norm at most one. For finite Λ, apply general_cauchy to the scalar holomorphic finite weighted sum of these functionals applied to the original coefficients on ball I (r₀-r). WBound bounds that scalar function by M; its derivative at I in direction e_i is the finite sum of weighted derivative norms. Bound every finite sum by M/(r₀-r), then use summable_of_sum_le and tsum_le_of_sum_le.

**W46-D2 — LOW, blueprint substitution typo.** `blueprint-N/parts/p4-weighted-norms.tex:131` says “In particular (taking `$r_0=r+\rho$, $s_0=s+\sigma$`)” but displays input widths `(r,s)` and output widths `r-ρ`, `s-σ`. The displayed inequalities and the approved Lean loss signature are correct; the parenthetical names the shifted variables without the necessary renaming. Replace only that parenthetical with “(applying (a) with input width s and target width s−σ, and (b) with input radius r and target radius r−ρ)”. No theorem change is needed.

No suspected pinned-paper erratum was newly established; no independent PDF re-audit is claimed. These two notes concern repository design/blueprint prose. The N45 sum/supremum issue is already correctly repaired in the current blueprint and Lean type. No source strengthening, new constant dependence, weakened conclusion, frozen-statement defect, or consumer blocker was found in W4-6. Downstream brackets, normal forms and track headlines remain outside this infrastructure verdict.

Input SHA256 receipts:

```text
4a49409f638af29da9f2b62e4dd1b527a4044142d482a23aef6b419a9164b208  KAM/Weighted/Cauchy.lean
741c4e611db4146ea8bba6e05451138905272f70104fabe031c8745078dc3632  KAM/Weighted/Coefficients.lean
88954f34dc99efba820691abc209fd8bd334d93cdae90272732090e001abc8ac  docs/tracks/N/design/PART145-LEAN-DESIGN.md
0beb275bedea69c1ba6f8bdf9b082f20e3d21b7975c227321426b63024792a79  blueprint-N/parts/p4-weighted-norms.tex
7492d710f4ad5a7f7ae27975a20f4a2a8cba73bfd9bbd71d76a2646e772404a4  docs/tracks/N/design/PART145-design-audit-1.md
0ec8c1c2e58ba65217743cf3c491346b0042203449c7698ed2a899e86012c2df  docs/tracks/N/design/PART145-design-audit-2.md
```
