# P4-6 independent audit 1

Overall verdict: **PASS**.

Audited HEAD `fdf3e084853e3b626f0e61fa295eceb6e967ae75` on branch `k/p4-6`, against main `10e1a1f5354a1328459b4d93eaa72c39080bbb3d`, on 2026-10-27. The package commit is `b60e7cb`; HEAD merges subsequent main changes. Scope: `KAM/Head/PreimageMeasure.lean`, its generated root import, the package brief and handoff focus, binding Part 4 design (P16 and Appendix A §15), graph contracts, and directly used interfaces. Governing AGENTS, PLAN, DECISIONS, common briefs and the design audit were consulted. No external source PDF audit is claimed.

## Node inventory

| Node | Lean declaration | Verdict | Reason |
|---|---|---|---|
| `bp:p4:preimage-measure` | `KAM.Head.preimage_measure`, `KAM/Head/PreimageMeasure.lean:37` | PASS | Signature byte-identical to Appendix A §15; exact blueprint measure bound under design P16. |
| `step:p4:pm-proof` | Same declaration, proof at lines 42–65 | PASS | Inverse-image inclusion, inverse Lipschitz estimate, dimension-n image bound and G3 witness property prove the required inequality. |

## Statement and hypothesis fidelity

Compared `blueprint/parts/p4-measure.tex:1087–1100`, the two corresponding contracts in `docs/graph/K/DEPGRAPH.md:12363–12412`, and `docs/campaign/design/PART4-LEAN-DESIGN.md:1333–1341` directly with the Lean statement.

- All implicit parameters and the order `hD`, `{C3}`, `hC3`, then every positive `α` match Appendix A. The constant is fixed before `α`; there is no frequency-dependent or α-dependent constant selection.
- `Data τ s₀ r₀ B h Lh` contains standing HEAD source premises: dimension, exponent, positive widths, open bounded domain, holomorphy, reality, and the inverse-frequency nondegeneracy bound. None is the target measure estimate. The module docstring identifies the statement as Part 4 under the binding design.
- Relative to the blueprint's standing data at lines 138–147, the theorem omits unused nonemptiness, boundary-layer and perturbation assumptions. This is a legitimate stronger statement; it also covers empty B.
- P16 explicitly represents “C3 the constant of G3 for g(B)” by an arbitrary real witness C3 with its defining G3 property. `hC3` is exactly the body after `∃ C : ℝ` in `KAM/Frozen/Theorems/VolumeNotDiophantineLe.lean:31–34`, specialized to `Ω = frequencyMap h '' B`. It assumes no positivity of C3, no measurability, and no estimate for another set. It is permitted source input, not the action-space conclusion disguised as a hypothesis.
- The conclusion retains `Lplus Lh ^ n * max C3 0 * α` and the original bad-action set. No extra multiplicative factor or weaker exponent appears. Carriers are `Fin n → ℝ`, their max norms, and Lebesgue volume (outer measure on arbitrary sets). The frozen `frequencyMap` and `IsDiophantine` definitions are used directly.
- The theorem proves the estimate for every qualifying witness C3. The eventual caller can choose the G3 witness using only the fixed data; this helper introduces no broader existential dependence. A successful probe below verifies that actual application.

## Definitions and proof

**New definitions:** none. The package adds one theorem, no `def`, `abbrev`, structure, instance or helper assumption.

Relevant inherited definitions were checked on their actual uses:

| Object | Classification and guard |
|---|---|
| `Data` (`Standing.lean:36`) | Prop bundle of the standing source premises, with explicit witness Lh; no target conclusion field. |
| `Lplus` (`Data.lean:41`) | Exactly `max Lh 1`, hence nonnegative; no fallback. |
| `invFreq` (`Defs.lean:86`) | `Function.invFunOn (frequencyMap h) B`; arbitrary behavior outside the image is harmless here. Every argument lies in `frequencyMap h '' B`. |
| `frequencyMap`, `IsDiophantine` | Existing frozen gradient and small-divisor predicate, respectively; no replacement representation. |

At lines 43–48, `inverse_freq` supplies its proved left-inverse identity on B. Each bad action I therefore has preimage witness `frequencyMap h I` in the bad-frequency set. The blueprint describes equality of sets; the proved inclusion suffices for its upper bound and loses no conclusion.

At lines 50–53, the image estimate is `KAM.lip_image` (`KAM/Measure/Lipschitz.lean:115`), specialized to d = n. Its hypothesis follows from `inverse_freq` clause (d) (`InverseFrequency.lean:205–206`) restricted to the bad-frequency subset. No global Lipschitz behavior of the total inverse is assumed. The image theorem applies to arbitrary sets, so no measurability premise is missing.

At lines 54–65, nonnegativity of Lplus^n justifies `ENNReal.ofReal_mul`; positivity of α permits `C3 * α ≤ max C3 0 * α`. These steps remain valid for negative C3 and empty sets. The estimate follows by measure monotonicity and multiplication of the G3 inequality. The proof follows the graph predecessors, with G3 supplied exactly through the permitted premise; boundedness of the frequency image is needed only when the caller obtains that witness.

## Independent checks

All commands below completed with exit 0 unless stated otherwise. Builds, lint's internal Lean ABI check, and the probe were serialized. No resource-budget overrides were used.

1. `git diff main...HEAD --stat`:

   ```text
    KAM.lean                      |  1 +
    KAM/Head/PreimageMeasure.lean | 69 +++++++++++++++++++++++++++++++++++++++++++
    2 files changed, 70 insertions(+)
   ```

   The root change is solely `public import KAM.Head.PreimageMeasure`; the generator check in lint passes. No other package code change is hidden in the branch diff.

2. `git diff main...HEAD -- KAM/Frozen manifest`: no output. `git diff --check`: no output.

3. `wc -l KAM/Head/PreimageMeasure.lean`:

   ```text
   69 KAM/Head/PreimageMeasure.lean
   ```

   The file has the copyright/authors header, `module`, public interface import, private proof import, module docstring and exposed public section. Direct imports are only `KAM.Head.InverseFrequency` and `KAM.Measure.Lipschitz`. No frozen theorem or provider is imported by this package module; quarantine checks pass.

4. `nice -n 5 lake build KAM.Head.PreimageMeasure`:

   ```text
   Build completed successfully (2935 jobs).
   ```

   This was the targeted incremental build, with no clean or root rebuild.

5. `nice -n 5 sh scripts/lint_sources.sh`:

   ```text
   check_lean_modules: PASS (268 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   This checks forbidden proof escapes and resource overrides, size limits, module wrappers, generated root imports, errata rendering, quarantine, frozen hashes and elaborated ABI hashes.

6. Mechanical signature comparison, executed as `python3 -`:

   ```python
   from pathlib import Path
   p = Path('KAM/Head/PreimageMeasure.lean').read_text()
   d = Path('docs/campaign/design/PART4-LEAN-DESIGN.md').read_text()
   s = p[p.index('theorem preimage_measure'):p.index(' := by', p.index('theorem preimage_measure'))]
   t = d[d.index('theorem preimage_measure'):d.index(' := sorry', d.index('theorem preimage_measure'))]
   print('Appendix A signature byte-identical:', s == t)
   ```

   Output: `Appendix A signature byte-identical: True`.

7. `nice -n 5 lake env lean .lake/abi-scratch/P46Audit.lean`: exit 0, no warnings or errors. The probe imported the package and the real frozen G3 anchor, printed the result's axioms/type, and elaborated this application:

   ```lean
   example {n : ℕ} {τ s₀ r₀ Lh : ℝ} {B : Set (Fin n → ℝ)}
       {h : (Fin n → ℂ) → ℂ} (hD : KAM.Head.Data τ s₀ r₀ B h Lh) :
       ∃ C3 : ℝ, ∀ α : ℝ, 0 < α →
         volume {I ∈ B | ¬ KAM.IsDiophantine α τ (KAM.frequencyMap h I)} ≤
           ENNReal.ofReal (KAM.Head.Lplus Lh ^ n * max C3 0 * α) := by
     obtain ⟨C3, hC3⟩ := KAM.volume_not_diophantine_le hD.tau_gt
       (KAM.Head.freq_map hD).2.2.2.2.2.2
     exact ⟨C3, KAM.Head.preimage_measure hD hC3⟩
   ```

   Exact axiom receipt:

   ```text
   'KAM.Head.preimage_measure' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

   `#check @KAM.Head.preimage_measure` confirmed the parameter order and statement displayed above. Both graph rows refer to this single result, so this is the complete package-result axiom inventory. The scratch probe was deleted after execution.

**Provider exact-type probe:** not applicable; P4-6 is an infrastructure lemma, not a frozen provider. The separate G3 application above verifies the requested premise shape against the actual frozen theorem without introducing that import into library code.

## Findings, errata and limits

No blocking, major or minor correctness/hygiene finding; no proposed code fix. No suspected pinned-source erratum or blueprint defect was found in this scope. The documented P16 premise representation and the stronger omission of unused standing assumptions are the only relevant statement differences from prose; neither is an unreported deviation.

The graph's two package rows still read `LEAN_STATUS: NOT_STARTED` at this snapshot. That is pending campaign bookkeeping, not a theorem defect; the orchestrator can update both rows to this declaration after acceptance.

Only this audit report was added by the auditor. The pre-existing untracked handoff was preserved. No Lean source, frozen file, manifest, generated file, README or ledger was edited, and no state-changing git command was run. This PASS concerns P4-6 and its checked dependencies, not HEAD closure or acceptance of unrelated packages. No independent `leanchecker` replay was performed.
