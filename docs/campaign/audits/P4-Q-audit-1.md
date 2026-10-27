# P4-Q independent audit 1

Overall verdict: **PASS** for the conditional HEAD-Q helper. No blocking, major, or minor defect found.

Audited branch `k/p4-q`, HEAD `76f2ea3fe696994cd8625fd09154fdf124255b37`, against
`main` `24bf3c3dffe878bd6548558575ca9fc0241b823e` on 2026-10-27. The handoff identifies prover
commit `427a298`; the checked-out revision includes its subsequent merge with main. The complete
`git diff main...HEAD` contains the new 178-line `KAM/Head/HeadQ.lean` and one generated root import
in `KAM.lean`. No other implementation file differs.

Read: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the audit/package/common briefs,
`P4-Q-handoff.md`, the binding Part 4 design (especially Appendix A and provider assembly), and
the graph and blueprint contracts cited below. The approach was to compare statements first,
inspect each proof step and inherited carrier, then independently build and elaborate probes.

## Node coverage and statement fidelity

The package owns the proof of `bp:p0:headq`; its five substantive proof steps are included here
to make their implementation coverage explicit. Locators below are in `KAM/Head/HeadQ.lean`.

| Node | Lean declaration / coverage | Verdict | Reason |
|---|---|---|---|
| `bp:p0:headq` | `KAM.Head.headq_of_head`, lines 107–174 | PASS | Appendix A signature matches after whitespace normalization; an independent Lean type equality also closes by `rfl`. Exactly the designed conditional derivation from HEAD. |
| `step:p4:hq-trivial` | `KAM.Head.headq_of_head`, lines 126–134; `KAM.Head.volume_fundamentalDomain`, line 46; `KAM.Head.volume_pi_Ico_zero_one`, line 40 | PASS | Empty B admits ε₀ = 1. Otherwise openness and boundedness give positive finite volume; the product fundamental domain has precisely volume B. |
| `step:p4:hq-approx` | `KAM.Head.headq_of_head`, lines 134–137, using `KAM.Head.dyadic_approx` | PASS | Applies the graph predecessor with η = κ·volume(B).toReal/2. Its positive-dimension premise follows from the original n ≥ 2. |
| `step:p4:hq-head` | `KAM.Head.headq_of_head`, lines 139–148; `KAM.Head.actionNbhd_subset_of_subset`, line 52 | PASS | Transfers the data to B′, including nondegeneracy on its closure, and chooses exactly the blueprint minimum. |
| `step:p4:hq-transfer` | `KAM.Head.headq_of_head`, lines 150–156; `KAM.Head.nonneg_of_bound_nonempty`, line 72; `KAM.Head.headq_epsilon_bounds`, line 82 | PASS | Restricts all four perturbation premises; derives ε ≥ 0 from the original nonempty domain; proves both required power bounds. |
| `step:p4:hq-cover` | `KAM.Head.headq_of_head`, lines 158–174; `KAM.Head.fundamentalDomain_diff_subset`, line 59 | PASS | Uses `KAM.Head.kamCover_mono`, outer-measure monotonicity and subadditivity, then the two half-budget estimates. |

Compared directly with `blueprint/parts/p0-conventions.tex:117–122`,
`blueprint/parts/p4-measure.tex:1270–1305`, and the corresponding contracts in
`docs/graph/K/DEPGRAPH.md:591` and `:13070–13212`.

Every original premise is retained: n ≥ 2, τ > n−1, positive s₀ and r₀, open bounded B,
holomorphy and reality of h on its complex action neighbourhood, and the inverse-frequency
inequality on closure B. There is no boundary-layer assumption on B. Holomorphy, period-one
invariance, reality and the pointwise norm bound on f are unchanged. The ambient spaces are
`Fin n → ℝ` and `Fin n → ℂ`, with their existing max norms; Lebesgue outer measure is used.

The additional `hHEAD` binder is exactly Appendix A's approved source-predecessor input:
HEAD for every action domain B′ at the fixed n, τ, s₀, r₀, h. It assumes no HEAD-Q conclusion,
approximation fact, or measure-transfer step. The distinct name `headq_of_head` and its docstring
make its conditional status explicit. The assembly probe below discharges this binder from the
actual frozen HEAD statement without any added premise.

Quantifiers have the required order: fixed data, then κ > 0, then ε₀ > 0, then arbitrary f and ε.
B′, C′, ε₀′, and the final ε₀ are chosen before f and ε. Their dependence on κ through B′ is
allowed. No norm, carrier, constant dependence, or conclusion is weakened. The unused hτ
(line 124) is acceptable: the source HEAD premise already supplies the needed statement at τ,
and retaining hτ preserves the exact design signature.

## Definitions and edge cases

There are **no new `def`, `abbrev`, or `structure` declarations** in the package diff. All seven
new declarations are proved theorems. Inherited `HeadConclusion` and `HeadQConclusion`
(`KAM/Head/Standing.lean:65` and `:80`) are proposition abbreviations expressed as exposed
definitions of the frozen conclusions; their bodies preserve the existential/universal order
and measure bounds. They introduce no fallback or junk value. The frozen `fundamentalDomain`
and `kamCover` are used directly, without replacements.

The arithmetic lemma proves ε ≤ ε₀′, C′√ε ≤ κ, and C′ε^(1/4) ≤ κV/2 for V > 0 and ε ≥ 0.
The square-root step uses its nonnegative comparison argument, and the fourth-root step uses
`Real.rpow_le_rpow` on nonnegative ε and a positive denominator. Thus ε = 0 is covered too;
no division by ε occurs. Negative ε is impossible when B is nonempty: evaluation at zero
angle and a real action J ∈ B gives 0 ≤ ‖f(0,J)‖ ≤ ε. This uses the original B even when B′
is empty. For empty B the measure is zero independently of ε.

Boundedness justifies converting volume B to a finite real; openness and nonemptiness justify
its strict positivity. The final conversion back to ENNReal uses this finiteness and κ ≥ 0.
The measure argument needs no measurability of `kamCover`: only outer-measure monotonicity
and subadditivity are used. The product volume identity is proved even for arbitrary action
sets, which is stronger than the instance needed here.

## Independent checks

All Lean invocations were serialized. No resource-budget override was used.

`nice -n 5 lake build KAM.Head.HeadQ` exited 0:

```text
Build completed successfully (2858 jobs).
```

An untracked probe `.lake/abi-scratch/P4QAudit1.lean` imported `KAM.Head.HeadQ` and the actual
frozen HEAD/HEAD-Q modules. `nice -n 5 lake env lean .lake/abi-scratch/P4QAudit1.lean` exited 0.
Its exact-type assembly check was:

```lean
example : type_of% @KAM.kam_positive_measure_qualitative := by
  intro n hn τ hτ s₀ r₀ hs₀ hr₀ B hB_open hB_bdd h hh hh_real h_nondeg
  exact headq_of_head hn hτ hs₀ hr₀ hB_open hB_bdd hh hh_real h_nondeg
    fun _ h1 h2 h3 h4 h5 h6 =>
      KAM.kam_positive_measure hn hτ hs₀ hr₀ h1 h2 h3 h4 h5 h6
```

The probe also copied the Appendix A signature into `AuditExpected.expected`, supplied its body
from the actual helper, and checked:

```lean
example : (type_of% @AuditExpected.expected) =
    (type_of% @KAM.Head.headq_of_head) := rfl
```

Its complete diagnostic output was:

```text
'KAM.Head.volume_pi_Ico_zero_one' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.volume_fundamentalDomain' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.actionNbhd_subset_of_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.fundamentalDomain_diff_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.nonneg_of_bound_nonempty' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.headq_epsilon_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.headq_of_head' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The probe was deleted after verification. The assembly check establishes compatibility with
the frozen type; it is not an axiom-free proof of the frozen root. HEAD and HEAD-Q still have
their manifest-bound `sorry` bodies, and the HEAD-Q provider is still a stub. Those are the
separate seal-gated P4-S1/P4-S2 work, not missing proofs in P4-Q. The helper's own axiom output
above contains no `sorryAx`.

`sh scripts/lint_sources.sh` exited 0:

```text
check_lean_modules: PASS (258 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Other read-only checks:

| Command / check | Output and result |
|---|---|
| `git diff --name-status main...HEAD` | `M KAM.lean`; `A KAM/Head/HeadQ.lean` |
| `git diff --exit-code main...HEAD -- KAM/Frozen manifest` | No output, exit 0. |
| `git diff --check main...HEAD` | No output, exit 0. |
| `git diff --check` | No output, exit 0. |
| Python whitespace-normalized comparison of the Appendix A and implementation signatures | `Appendix A signature whitespace-normalized equality: True` |
| Python declaration scan of `HeadQ.lean` | `New definitions: []` |
| Python recursive traversal of local `KAM.*` imports from `KAM.Head.HeadQ` | `KAM import closure modules: 19`; `Frozen theorem/provider imports: []` |
| Python line count of `HeadQ.lean` | `HeadQ.lean lines: 178` |

The new file has its copyright header, `module`, public interface imports, module docstring,
and public section. The generated root addition is the import of this module. Frozen files
and the manifest are untouched. The lint checks cover forbidden proof escapes, resource
overrides, module structure, line limits, root generation, and frozen file/ABI integrity.

## Findings, uncertainties, errata, and deviations

Blocking: none. Major: none. Minor: none. No proposed implementation fix is needed.

No suspected blueprint defect, pinned-source erratum, or implementation deviation was found.
This audit checks the package's local blueprint/design contracts; it does not independently
re-audit the external KAM literature or prove the still-unsealed HEAD predecessor. There is
no unresolved uncertainty about the conditional helper's signature, proof, or assembly typing.
Only this audit report was added to repository sources; no implementation or frozen file was edited.
