# P4-S1 independent audit 1

Overall verdict: **PASS**.

Audited HEAD `0e351e47463a8e25d919075bf6dd0268cacf7114` against main
`a64c2b5acbc2ed832959bb892ac03ac9a0dc5244`, restricted to
`KAM/Provider/KamPositiveMeasure.lean`, as directed by the handoff focus.
The handoff's older `bb7c31c` identifier is not the audited snapshot.
Read AGENTS.md, PLAN, DECISIONS, AUDIT-PACKAGE, P4-S1 and its common briefs,
the handoff, design §2.2, §6 and Appendix A §P1, and the relevant graph and blueprint contracts.
This audits provider discharge and assembly, not the internal proofs of P4-12 or the sealed gates.

## Node and contract inventory

| Node / obligation | Lean declaration | Verdict | Reason |
|---|---|---|---|
| `bp:p4:parameters`: discharge of the selected G constants (design §P1 helper) | `KAM.Provider.exists_gValid` | PASS | Lines 43–52 reproduce the design signature and discharge from `Data` alone; two G1 tuples, one G2 tuple, and G3 on the frequency image are exact. The separate numerical `KAM.Head.parameters` proof belongs to P4-3. |
| `bp:p0:head`: provider for frozen HEAD | `KAM.Provider.kam_positive_measure` | PASS | Lines 56–82 have exactly the frozen type, independently elaborated. Extracts the two original existential witnesses, constructs `Data`, proves existence of `GValid`, then calls `KAM.Head.head_of_gValid`. |

The HEAD proof steps `step:p4:head-empty`, `head-constants`, `head-negative`,
`head-positive`, and `head-zero` are supplied by the imported Assembly predecessor
(P4-12, separately audited), rather than new declarations in this package.

## Refutation checks

1. **Tuples and side conditions.** Blueprint `p4-measure.tex:406–436` and
   `Defs.lean:202–213` fix G1 at `(ρ,ρ∞) = (s/4,s/8)` and `(3s/32,s/16)`,
   G2 at `s/16`, with the same `Mconst`, `sigmaK`, `sigmaB`, `sigmaT`, `muParam`,
   and G1 upper bound `γbar = 1`. Provider lines 45–50 use these exact tuples.
   `Parameters.lean:449–475` supplies the required inequalities from `Data`;
   its proof uses `hτ.le` to pass from `n−1 < τ` to `n−1 ≤ τ`.
   G2 uses positivity of `s/16`, and `one_pos` supplies the G1 upper-bound positivity.
2. **Bodies really match.** Independently compared `Defs.lean:130–200` with
   the tails of the actual frozen G1/G2 statements. After masking comments with
   `scripts/check_lean_modules.py` and deleting whitespace, both comparisons
   returned `True`. This checks both directions of textual fidelity, in addition
   to Lean accepting the provider's closing constructor. No weakened body was found.
3. **G3 carrier.** `Frequency.lean:407–428` ends in
   `Bornology.IsBounded (frequencyMap h '' B)`; its projection is exactly
   `(freq_map hD).2.2.2.2.2.2`. Provider line 51 passes that result and the
   original strict exponent premise to G3. `GValid.g3` has precisely the same
   carrier and all positive α; no measurability or bounded-image premise is added.
4. **Hypotheses and dependence.** `Data` (`Standing.lean:36–49`) contains only
   the original HEAD inputs with a fixed nondegeneracy witness. `exists_gValid`
   assumes neither a Part 4 conclusion nor `GValid`. G1 constants are chosen before
   the Hamiltonian/torus/frequency/error arguments of their universal bodies.
   HEAD chooses `CB`, `Lh`, and `gc` before the existential `C, ε₀`, which precedes
   every `f, ε`. No broadened constant dependence, nonempty-domain premise, norm
   substitution, or conclusion weakening occurs. The carriers remain function
   spaces `Fin n → ℝ/ℂ` with the existing max norms and pointwise strip bounds.
5. **Imports and graph route.** Recursive traversal of local KAM imports from
   the provider found exactly these frozen theorem modules, all `SEALED` in
   `manifest/frozen-anchors.json`: `AposterioriKam`, `LocalUniquenessFlow`,
   `VolumeNotDiophantineLe`. No transitive `DRAFT_SORRY` theorem import occurs.
   The handoff and binding design explicitly authorize these sealed imports,
   refining the generic audit brief's prohibition on frozen theorem imports.
   The sole source importer of this provider is its own frozen HEAD anchor;
   generated `KAM.lean` does not import it. The provider uses `parameters`,
   `freq_map`, and `head_of_gValid`, not another headline theorem.

## Definition classification

No new `def`, `abbrev`, `structure`, or instance is introduced: the provider adds
only the two theorems listed above. Consequently there are no new totalizations,
junk values, or fallback definitions to classify. For the interfaces consumed here,
`GConsts` is six real constants, `GValid` is the specified gate properties and
positivity, `Data` is the original standing input, and `Layer`/`HeadConclusion`
expand to the original boundary premise/conclusion. Their source files are
predecessors, not re-audited definition packages.

## Checks and exact output

All commands ran in this worktree. Build, lint (which invokes ABI checking), and
Lean probe were serialized; no resource override or full-library build was used.

`nice -n 5 lake build KAM.Provider.KamPositiveMeasure` — exit 0:

```text
Build completed successfully (3296 jobs).
```

`sh scripts/lint_sources.sh` — exit 0:

```text
check_lean_modules: PASS (286 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`git diff main...HEAD -- KAM/Frozen manifest` — exit 0, empty output.

`git diff --check` — exit 0, empty output.

`wc -l KAM/Provider/KamPositiveMeasure.lean` — exit 0:

```text
84 KAM/Provider/KamPositiveMeasure.lean
```

Source review and lint found no forbidden proof escape, resource override, missing
module header, file-size violation, or ambient-type violation. Occurrences of
`DRAFT_SORRY` in the provider are documentation, not proof terms.

### Exact-type and axiom probe

Created only `.lake/abi-scratch/P4S1Audit1.lean`, with this content:

```lean
import KAM.Frozen.Theorems.KamPositiveMeasure
import KAM.Provider.KamPositiveMeasure

example : type_of% @KAM.kam_positive_measure := @KAM.Provider.kam_positive_measure

example : type_of% @KAM.kam_positive_measure := by
  intro n hn τ hτ s₀ r₀ hs₀ hr₀ B hB_open hB_bdd hB_layer h hh hh_real h_nondeg
  exact KAM.Provider.kam_positive_measure hn hτ hs₀ hr₀ hB_open hB_bdd hB_layer hh hh_real h_nondeg

#print axioms KAM.Provider.exists_gValid
#print axioms KAM.Provider.kam_positive_measure
#print axioms KAM.Head.head_of_gValid
#print axioms KAM.aposteriori_kam
#print axioms KAM.local_uniqueness_flow
#print axioms KAM.volume_not_diophantine_le
```

`nice -n 5 lake env lean .lake/abi-scratch/P4S1Audit1.lean` — exit 0:

```text
'KAM.Provider.exists_gValid' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Provider.kam_positive_measure' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Head.head_of_gValid' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.aposteriori_kam' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.local_uniqueness_flow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.volume_not_diophantine_le' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Both exact-type examples succeeded silently, including the explicit sealing application.
The scratch probe was deleted after checking.

## Findings, uncertainties, errata and deviations

No blocking, major, or minor findings. No fix is required in the scoped provider.
No suspected source/blueprint erratum or new deviation was identified.

The frozen HEAD remains `DRAFT_SORRY` in the audited manifest, as expected before
sealing. Its placeholder proof is not used by the provider: the probe imports it
only to compare types, and both provider axiom sets exclude `sorryAx`.
This PASS is approval of the audited provider package, not a claim that sealing,
manifest updates, or a new kernel replay have been performed. Assembly internals
and the source proofs behind G1–G3 retain their separate audit obligations.

Only this report was added by the auditor; no Lean source, frozen file, manifest,
generated file, or git state was changed. The pre-existing untracked handoff was retained.
