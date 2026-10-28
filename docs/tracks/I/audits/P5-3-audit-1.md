# P5-3 independent package audit

**Verdict: PASS WITH NOTES for P5-3 (`bpI:p5:graph`).** The six public graph helpers implement their design contracts and the blueprint graph lemma. No material mathematical, carrier, hypothesis, or proof-hygiene defect was found. The targeted build, independent signature probes, public-theorem axiom checks, and kernel replay passed. Source lint has only the explicitly permitted generated-root failure.

**Anchor accounting:** I-HEAD (`KAM.Iso.all_time_confinement`) is the downstream anchor; P5-3 is an accepted helper package, not a seal of that anchor. There is no new provider export or seal body in this diff, so provider/frozen-type and seal-body probes are not applicable to this package. The frozen I-HEAD remains `by sorry`. No I-G1, I-R3BP, track-N, or track-P anchor is proved or approved for sealing by this audit.

## Snapshot, scope, and inputs

- Audit date: 2026-10-28; worktree `/root/code/KAM-inp-p53`.
- HEAD: `a96f0429d6d79e2d43d6b82054012426c3e24159`.
- Compared with `inp` at `738b078efc07a743392b02cbb09909b8697fcabc`, using `git diff inp...HEAD`.
- Entire committed delta: one new file, `KAM/Iso/Confinement/Graph.lean`, 237 lines. The handoff says 235; this is a harmless line-count discrepancy.
- Read the package audit brief, AGENTS.md, PLAN.md, DECISIONS.md, the P5-3 handoff/AUDIT FOCUS, design §8.1 and graph signatures/proof plan, design audits 1–2 and the recorded fixes, blueprint Part 5 graph statement/proof and Part 3 T1–T4, track-I statement, frozen I-HEAD and relevant frozen definitions, and the actual Setting/RealHam/RealRestriction interfaces.
- The prompt explicitly overrides the general brief's main-worktree report destination. This report is written only at the requested absolute path inside this package worktree.
- The initially untracked `docs/tracks/I/audits/P5-3-handoff.md` was read and left unchanged. No repository source, frozen file, manifest, generated root, or README was edited. Temporary probes were confined to `.lake/abi-scratch/` and removed. No state-changing git command was run.

## Declaration ledger

Names below are in `KAM.Iso.Confinement`; line numbers refer to `KAM/Iso/Confinement/Graph.lean`.

| Blueprint node / role | Declaration | Line | Verdict | Reason |
|---|---|---:|---|---|
| Strip positivity, private helper | `rhoInf_pos` | 43 | PASS | Positive `min s₀ 1 / 8` follows from `s₀ > 0`; no division at zero. |
| `stepI:p5:gr-contr`, private bridge | `phase_fderiv` | 48 | PASS | Derives the real derivative of the phase displacement from holomorphy, real-valuedness, and the existing restriction theorem; no derivative identity is assumed. |
| `stepI:p5:gr-contr`, private estimate | `phase_fderiv_norm_le` | 74 | PASS | Restricts `T.du` isometrically at a real point of the half-width strip; positive radius and `8 C_K ε < ρ∞` imply the `1/2` bound. |
| `stepI:p5:gr-contr` | `torus_phase_sub_lipschitz` | 92 | PASS | Global mean-value bound on the real vector space gives displacement Lipschitz constant `1/2`. Exact design signature. |
| `bpI:p5:graph(a)`, `stepI:p5:gr-bij` | `torus_phase_bijective` | 104 | PASS | Reverse triangle inequality gives the lower bound and injectivity; a `1/2` contraction on complete `ℝ²` gives surjectivity for every real angle. Exact design signature. |
| `bpI:p5:graph(a)` | `torus_phase_inv` | 151 | PASS | Both inverse identities and constant `2` follow from proved bijectivity and the lower bound. Exact design signature. |
| `bpI:p5:graph(b,c)`, `gr-graph`, `gr-energy` | `torus_graph` | 171 | PASS | Produces one continuous global Y, the uniform action bound, exact range/graph equality, and energy E at every graph point. Exact design signature. |
| `bpI:p5:graph(c)`, position | `torus_graph_mem` | 217 | PASS | Derives membership in `cthickening r p.K`, W, and B from graph closeness, base membership, and the patch constants. Allows `C_K ε = r`, a valid strengthening of the blueprint's strict bound. Exact design signature. |
| `bpI:p5:graph(c)`, energy window | `torus_graph_energy_close` | 228 | PASS | Uses the genuine perturbation bound through `realHam_sub_le`, with explicit real-domain membership; returns `abs (realPart h (Y φ) - E) ≤ ε`. Exact design signature. |

All six public signatures, including binder order, implicit ambient data, constants, norms, and conclusions, are identical to design Appendix A after whitespace normalization. Independently elaborated fresh declarations copied from that Appendix apply each actual theorem to its explicit binders. No extra premise, changed quantifier dependency, or weakened conclusion was introduced.

The graph set `{z : P2 | z.2 = Y z.1}` is exactly the blueprint set of pairs `(φ,Y φ)`, on **all lifted real angles**. No quotient carrier or local-angle restriction replaces it. The norms are the existing Pi/product max norms, with operator norms on continuous linear derivatives. There is no EuclideanSpace instance or alternate norm.

## Definitions and premise audit

**New definitions/abbreviations/structures: none.** All nine named declarations in the delta are theorems (three private, six public).

The proof-local inverse is `Function.invFun` at lines 157–163. It is introduced only after `torus_phase_bijective` supplies both injectivity and surjectivity at line 156. Both inverse identities are proved, and the Lipschitz estimate uses the right-inverse equations. No off-range fallback is used. The existential graph witness is exactly `Y φ = (realRestriction K (Ψinv φ)).2`; it has no junk branch or truncated domain. `ContractingWith.fixedPoint` is applied on the complete real Pi space with an explicitly proved contraction constant less than one.

Relevant unchanged definitions were checked as used: `realRestriction K = Re ∘ K ∘ ι`, `realHamiltonian = Re(h + f)` on real inclusions, `realPart h I = Re(h(ι I))`, `totalH = h + f`, `rhoInf = min s₀ 1 / 8`, `P2 = ℝ² × ℝ²`, `realAct` is the real preimage of the complex action neighborhood, and `p.K` is the chart-window preimage restricted to W. Their bodies have the intended meanings on the carriers used here.

`TorusOutput` is unchanged upstream output, not a new source hypothesis manufactured by P5-3. Blueprint `bpI:p5:sec-graph` explicitly fixes Part 3's output before the graph lemma:

- `holo` and `real` justify real differentiability and the complex/real derivative identification.
- `du` is exactly the complex displacement derivative bound from Part 3 T4, not graph bijectivity. Positive half-width places every real point in its domain. Global Lipschitz continuity and surjectivity are proved from it.
- `close` is the original complex torus bound from T4, not a bound already assumed on an unknown graph. Isometric inclusion and the second projection transfer it to the produced Y.
- `energy` is T3's original complex energy equality on K. The proof establishes the real graph energy equality by identifying each graph point with `k (Ψinv φ)`.
- `primary`, `invariant`, and `dv` are available but unused. Nonresonance is unnecessary for this geometric implication. No omitted dynamical assertion is claimed to have been proved here.

The inputs `hY` of `torus_graph_mem` and `hE` of `torus_graph_energy_close` are legitimate, separately named downstream helper inputs: `torus_graph` actually produces them. Neither helper is substituted for `torus_graph`. The base-point membership and patch inclusion are the blueprint's upstream chart facts. No graph, inverse, or confinement conclusion is hidden in a new instance or field.

The nonnegativity/positivity parameters `hε` and `hC` in the first graph helpers are mathematically redundant for the core estimate, as the handoff notes; retaining these standing assumptions matches the exact design contract and does not enlarge the blueprint premise set. The proof uses the first-component derivative directly rather than first bounding the pair displacement derivative, and uses inverse identities rather than `AntilipschitzWith.to_rightInverse`. Both are sound implementation deviations with unchanged statements.

## Independent checks and exact receipts

Every Lean/lake invocation below was serial, with `LEAN_NUM_THREADS=1` and `nice -n 5`. The build used the required compile-gate wrapper, which invokes `nice -n 5 lake build`. Lint was also run under that environment and niceness, inherited by its serial ABI subprocess. No heartbeat, recursion-depth, or synthesis-budget override was used.

### Targeted build

```sh
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p53 KAM.Iso.Confinement.Graph
```

Exit **0**. Output:

```text
[inp-gate] slot 2 acquired 01:10:03 for KAM.Iso.Confinement.Graph
⚠ [2841/2924] Replayed KAM.ODE.Exit
warning: KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused in theorem `KAM.ODE.gen_exit`:
  [NormedSpace ℝ E]
consider restructuring your `variable` declarations so that the variables are not in scope or explicitly omit them:
  omit [NormedSpace ℝ E] in theorem ...

Note: This linter can be disabled with `set_option linter.unusedSectionVars false`
Build completed successfully (2945 jobs).
```

This is a replayed upstream unused-variable warning, not a package proof failure. No linter suppression was added.

### Design-signature probes and axioms

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P53Audit.lean
```

Exit **0**. The probe imported only `KAM.Iso.Confinement.Graph`, copied the six graph signatures and ambient section from design Appendix A under fresh `audit_` names, and closed them with:

```lean
by exact torus_phase_sub_lipschitz hs hε hsm hC T
by exact torus_phase_bijective hs hε hsm hC T
by exact torus_phase_inv hs hε hsm hC T
by exact torus_graph hs hε hsm hC T
by exact torus_graph_mem p pc hY hI hCr φ
by exact torus_graph_energy_close hb hf hE hY
```

It then ran `#print axioms` for each actual public theorem. Complete output:

```text
'KAM.Iso.Confinement.torus_phase_sub_lipschitz' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.torus_phase_bijective' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.torus_phase_inv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.torus_graph' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.torus_graph_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.torus_graph_energy_close' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Kernel replay

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Confinement.Graph
```

Exit **0**. Complete output:

```text
replaying KAM.Iso.Confinement.Graph
```

There is one new lemma module and no provider module, hence one module argument in the single replay invocation. The private lemmas are included in that module replay.

### Source lint

```sh
env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, solely for the brief's permitted generated-root warning. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (307 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

No forbidden token, resource override, overlong line, oversize file, module-system failure, errata-render mismatch, frozen-anchor drift, or ABI drift was reported. `Graph.lean` has its copyright, `module`, public imports, module docstring, and exposed public noncomputable section, and is 237 lines, below 1500. The generated root was deliberately left unchanged under the audit rules.

### Diff and quarantine

```sh
git diff --check inp...HEAD
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
```

Both exited **0**, with empty output. An independent recursive scan of the project's import declarations from `KAM.Iso.Confinement.Graph` visited 43 KAM modules and found **no provider imports and no frozen theorem imports**. Frozen definition imports are permitted. The public-theorem axiom results independently exclude a transitive `sorryAx` dependency in these proofs.

## Findings, limitations, and errata

No material finding requires repair. No suspected defect in a pinned mathematical source, blueprint graph statement, or frozen definition/theorem was established. The source argument is the blueprint's own graph proof, using the existing strip bridge and Mathlib mean-value/fixed-point infrastructure; no unverified external source theorem was substituted.

The acceptance is limited to the six graph helpers. The existence and uniform dependence of Part 3's torus outputs, I-G1, invariance, the separation/barrier argument, continuation, and I-HEAD's eventual provider/seal remain outside this delta. This audit does not discharge those prerequisites. The permitted generated-root warning and harmless redundant standing assumptions are the notes accompanying the package PASS.
