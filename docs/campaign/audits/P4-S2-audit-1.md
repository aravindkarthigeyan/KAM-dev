# P4-S2 independent audit 1

Overall verdict: **PASS**. The HEAD-Q provider satisfies the seal gate; no blocking, major, or minor defect found. This report does not seal the frozen anchor.

Audited on 2026-10-28 in `/root/code/KAM-w-p4-s2`, branch `k/p4-s2`, HEAD `6443ea65f0015a85dd36373722c8284703459c04`, against main `97bf6d00c0d2ea4cfd904a64f429090c56f4efc8`. The complete `git diff main...HEAD` changes only `KAM/Provider/KamPositiveMeasureQualitative.lean` (42 insertions, 57 total lines). The pre-existing untracked handoff was read and left untouched.

Read the repository rules, PLAN, DECISIONS, audit/package/common briefs, P4-S2 handoff, Part 4 design §6 and Appendix A §P1, HEAD-Q graph contract, blueprint statements/proof, provider, frozen HEAD/HEAD-Q anchors, manifest entries, and inherited `HeadQ`/standing conclusions. The prior P4-Q audit supplies context; the checks below were rerun independently for this package. Approach: attempt statement and dependency refutation, inspect assembly at every action domain, then build and probe the elaborated exports.

## Node coverage and statement fidelity

The package owns the unconditional provider for `bp:p0:headq`. Its proof steps are implemented by the existing P4-Q helper; included below to make coverage explicit. Helper line numbers refer to `KAM/Head/HeadQ.lean`.

| Node | Lean declaration / coverage | Verdict | Reason |
|---|---|---|---|
| `bp:p0:headq` | `KAM.Provider.kam_positive_measure_qualitative`, provider lines 35–55 | PASS | Signature agrees with the frozen declaration both textually after whitespace normalization and by Lean type equality `rfl`. All source premises, carriers, norms, quantifiers and conclusions are preserved. |
| `step:p4:hq-trivial` | `KAM.Head.headq_of_head`, lines 126–134 | PASS | Empty domain handled with threshold 1; otherwise openness/boundedness give positive finite volume, and the unit-cube product has volume B. |
| `step:p4:hq-approx` | `KAM.Head.headq_of_head`, lines 134–137, using `KAM.Head.dyadic_approx` | PASS | Inner approximation spends half of κ times volume B. Positive dimension follows from n ≥ 2. |
| `step:p4:hq-head` | `KAM.Head.headq_of_head`, lines 139–148; provider line 55 | PASS | HEAD is supplied for every B′, including the boundary-layer premise on B′. Holomorphy, reality and nondegeneracy restrict to B′; constants are chosen before f and ε. |
| `step:p4:hq-transfer` | `KAM.Head.headq_of_head`, lines 150–156 | PASS | Perturbation premises restrict to the smaller domain; ε ≥ 0 is derived rather than assumed. |
| `step:p4:hq-cover` | `KAM.Head.headq_of_head`, lines 158–174 | PASS | Cover monotonicity, subadditivity and the two half-budget estimates yield the exact relative-measure conclusion. |

Direct statement comparison: `blueprint/parts/p0-conventions.tex:117–122` and `docs/graph/K/DEPGRAPH.md:591–619` require n ≥ 2, τ > n−1, positive widths, an open bounded B, holomorphy/reality of h, and the inverse-Lipschitz inequality on closure B, without a boundary-layer premise. Provider lines 35–42 contain exactly these. The order is fixed data, then every κ > 0, then an existential ε₀ > 0, then all f and ε satisfying the original perturbation premises. Thus ε₀ may depend on κ and the fixed data, but not f or ε. The period-one condition, pointwise max-norm bound on the original complex product domain, frozen `kamCover`, and Lebesgue outer-measure conclusion are unchanged. No extra assumption or weakened conclusion was found.

## Definitions and dependencies

There are **no new `def`, `abbrev`, or `structure` declarations**; the only package result is the provider theorem. No new carrier, fallback, junk value, bundled conclusion or instance is introduced. Imported `HeadConclusion` and `HeadQConclusion` are the existing exposed propositions containing the literal frozen conclusions; the provider itself spells out HEAD-Q directly.

Provider lines 8–9 import exactly `KAM.Head.HeadQ` and the sealed `KAM.Frozen.Theorems.KamPositiveMeasure`. The general audit brief's ban on frozen theorem imports is specialized here by the package brief, AUDIT FOCUS and binding design §6: the sealed HEAD anchor is the explicitly required graph predecessor (`headq → head`, graph line 614), not an illicit shortcut. No draft theorem is imported by the provider, including transitively through local KAM imports. In particular the HEAD-Q anchor is absent from that import closure; there is no circular appeal to the result being proved.

At line 55, `fun _ h1 h2 h3 h4 h5 h6 => ...` binds an arbitrary action domain B′ and, in order, its openness, boundedness, boundary-layer property, holomorphy, reality and nondegeneracy. HEAD infers B′ from those arguments; n, τ, s₀, r₀ and h stay fixed. This is precisely the `hHEAD` contract of `headq_of_head` at lines 115–125 and the term prescribed by design §6 / Appendix A §P1. The conditional premise is discharged by a proved theorem, not exposed as an extra hypothesis of the provider.

Manifest checks: `kam.kam_positive_measure.v1` has state `SEALED`; its source proof applies `KAM.Provider.kam_positive_measure` to all explicit binders. `kam.kam_positive_measure_qualitative.v1` remains `DRAFT_SORRY`, expected before sealing. Neither frozen source nor manifest was edited.

## Independent build, exact-type and axiom probes

All Lean invocations initiated by this audit were sequential, with `LEAN_NUM_THREADS=1` and `nice -n 5`; no heartbeat or recursion override was used. Only the targeted provider was built; there was no clean or library rebuild from scratch.

Command:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake build KAM.Provider.KamPositiveMeasureQualitative
```

Exit 0, output:

```text
Build completed successfully (3298 jobs).
```

The untracked scratch probe `.lake/abi-scratch/P4S2Audit1.lean` contained:

```lean
import KAM.Frozen.Theorems.KamPositiveMeasureQualitative
import KAM.Frozen.Theorems.KamPositiveMeasure
import KAM.Provider.KamPositiveMeasureQualitative

example : type_of% @KAM.kam_positive_measure_qualitative :=
  @KAM.Provider.kam_positive_measure_qualitative

example : (type_of% @KAM.kam_positive_measure_qualitative) =
    (type_of% @KAM.Provider.kam_positive_measure_qualitative) := rfl

example : type_of% @KAM.kam_positive_measure_qualitative := by
  intro n hn τ hτ s₀ r₀ hs₀ hr₀ B hB_open hB_bdd h hh hh_real h_nondeg
  exact KAM.Provider.kam_positive_measure_qualitative hn hτ hs₀ hr₀ hB_open hB_bdd hh hh_real h_nondeg

#print axioms KAM.Provider.kam_positive_measure_qualitative
#print axioms KAM.kam_positive_measure
#print axioms KAM.Head.headq_of_head
```

Command:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P4S2Audit1.lean
```

Exit 0, with all three examples accepted and output:

```text
'KAM.Provider.kam_positive_measure_qualitative' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.kam_positive_measure' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.headq_of_head' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The first probe references only the frozen declaration's **type**; the provider axiom check independently excludes `sorryAx`, including through HEAD. The third probe verifies the exact explicit-binder sealing form. The scratch probe was deleted after checking.

## Hygiene

Command `LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh` exited 0, output:

```text
check_lean_modules: PASS (287 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Additional checks (exit 0 unless noted):

| Command / check | Exact output or result |
|---|---|
| `git diff --name-only main...HEAD` | `KAM/Provider/KamPositiveMeasureQualitative.lean` |
| `git diff --exit-code main...HEAD -- KAM/Frozen manifest` | Empty output. |
| `git diff --exit-code -- KAM/Frozen manifest` | Empty output. |
| `git diff --check main...HEAD` | Empty output. |
| Python whitespace-normalized source signature comparison | `SOURCE SIGNATURE EQUALITY: True` |
| Python line count | `PROVIDER LINES: 57` |
| Python provider forbidden-token scan (including all `set_option`) | `FORBIDDEN PROVIDER TOKENS: False` |
| Python declaration scan | `New def/abbrev/structure declarations: []` |
| Python recursive local import traversal | `HEAD-Q ANCHOR IN PROVIDER IMPORT CLOSURE: False` |
| `rg -n 'KAM.Provider.KamPositiveMeasureQualitative|KAM.Frozen.Theorems.KamPositiveMeasureQualitative' KAM KAM.lean` | Only the HEAD-Q frozen anchor's provider import and docstring; no root or other module imports the quarantined provider/anchor. |

The 57-line provider has the copyright header, `module`, public interface import, module docstring and `public section`. It introduces no definitions requiring exposure. Frozen/module/root/ABI checks are supplied by repository lint. `git diff --check` also exited 0 with empty output after writing this report.

## Findings, uncertainties, errata and deviations

Blocking: none. Major: none. Minor: none. No implementation fix proposed.

No suspected blueprint defect, pinned-source erratum or introduced deviation was found within this assembly audit. No primary-source PDF claim was independently re-audited; the mathematical source inputs and the broader HEAD/P4-Q proofs are predecessors, with their current dependency axioms checked above. No separate `leanchecker` replay was performed or claimed. The graph still describes the pre-sealing HEAD-Q status; updating it and sealing are orchestrator tasks outside this report-only audit.

Files written by this audit: this report only (plus the temporary scratch probe, subsequently deleted). No git state-changing command was used.
