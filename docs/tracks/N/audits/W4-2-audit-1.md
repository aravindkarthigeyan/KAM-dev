# W4-2 independent package audit 1

Overall verdict: **PASS WITH NOTES**. All three helper results pass statement correspondence, proof review, exact-type elaboration, axiom checks and kernel replay. The local linter switch is acceptable; retain it to preserve the approved signature. One stale design/API description is noted below. This package contains no frozen theorem anchor or provider, so there is no anchor to seal and no I/N/P headline closure claim.

## Scope and frozen snapshot

Audit date: 2026-10-28. Worktree: `/root/code/KAM-inp-w42`.

- HEAD: `bedc75173aab8a6b5d8404f1a39ce364353f7bdf`.
- Comparison ref `inp`: `03e10647aba94633600190126bc551d0f63c9bb4`.
- `git diff inp...HEAD`: exactly one added file, `KAM/Weighted/Parametric.lean`, 180 lines, three public theorems and no definitions.
- The shared `inp` ref advanced during the audit to `9cf78ab0c34c7c72184a0dd046e2a12ec8816fcc`; the comparison above is pinned to its initial value. Final `git diff inp...HEAD` still contains only the same 180-line added module, and the protected-path diff remains empty. Both comparisons have merge base `00d6e82d73f0eaef1f8bb566ccd0c2b19597a6ff`.
- Initial worktree status: only the supplied, untracked `docs/tracks/N/audits/W4-2-handoff.md`.

Snapshot SHA-256 values:

| Input | SHA-256 |
|---|---|
| `KAM/Weighted/Parametric.lean` | `0d1a446297a8b38c3276974a023ef21415c879ccc5ea8ada81547c4a14d6f796` |
| `docs/tracks/N/design/PART145-LEAN-DESIGN.md` | `88954f34dc99efba820691abc209fd8bd334d93cdae90272732090e001abc8ac` |
| `docs/tracks/N/design/PART145-design-audit-1.md` | `7492d710f4ad5a7f7ae27975a20f4a2a8cba73bfd9bbd71d76a2646e772404a4` |
| `docs/tracks/N/design/PART145-design-audit-2.md` | `0ec8c1c2e58ba65217743cf3c491346b0042203449c7698ed2a899e86012c2df` |
| `blueprint-N/parts/p4-weighted-norms.tex` | `0beb275bedea69c1ba6f8bdf9b082f20e3d21b7975c227321426b63024792a79` |
| `docs/tracks/N/audits/W4-2-handoff.md` | `f481910ac71cb41cc4cf56916677d8f7e85ed15f465f5b8a7962270b01988fa5` |

Authority: the package brief, supplied AGENTS.md, PLAN, DECISIONS, handoff AUDIT FOCUS, Part145 design including its binding audit-2 notes, and the three blueprint-N Part-4 statements. Track I/N/P convention sections were checked for carriers, holomorphy and norms. No track-specific frozen theorem or definition occurs in these new theorem types. The only transitive project imports are `KAM.Strip.Cauchy`, `KAM.Strip.Limits`, and the frozen definitions ComplexStrip, IsPrimaryOnStrip and IsRealOnReals; their bodies were inspected. There is no transitive provider or frozen-theorem import.

Focused tier-2 audit using the manuscript-audit protocol: statement reconstruction, complete proof inspection, a separate adversarial pass, exact design-type probes, and hygiene checks. This is an independent audit of the implementation, not a reuse of the design-audit verdicts. Scope authorization was supplied directly: report-only repository changes, temporary scratch probes, targeted serial Lean checks, no git mutation. The direct prompt overrides the brief's older report-destination instruction. No subagents or network access were used. All auditor-started Lean jobs ran serially with `LEAN_NUM_THREADS=1` and `nice -n 5`; the build used the required compile gate.

## Node and declaration verdicts

| Node | Lean declaration | Verdict | Reason |
|---|---|---|---|
| `bpN:p4:ext-param` | `KAM.Weighted.holomorphic_parametric_integral` (L38–79) | PASS | Holomorphy and the full derivative-under-integral identity; all source continuity/holomorphy premises retained. Any compact Q is allowed, strengthening the compact-box source. Approved finite-dimensional W and scalar-tower instances retained. |
| `bpN:p4:general-cauchy` | `KAM.Weighted.general_cauchy` (L83–98) | PASS | Exact open-ball operator-norm bound M/R, with R>0 and no dimension factor. General complex normed E and complete F strengthen the blueprint's finite-dimensional setting. |
| `bpN:p4:ext-weier` | `KAM.Weighted.uniform_limit_holomorphic` (L103–178) | PASS | Both holomorphy and uniform derivative convergence on every positive-radius closed-ball containment locus. General E and complete F strengthen the finite-dimensional source. |

The explicit theorem types match design L617–640 after whitespace normalization. A fresh declaration at each exact design type, with all explicit arguments supplied in order, elaborated using the corresponding production theorem. Reverse whole-type assignments using `type_of% @design_<name>` and `@KAM.Weighted.<name>` also passed. Instance binders were checked by `#check @...`, including the retained `[CompleteSpace W] [FiniteDimensional ℂ W]`.

Provider=frozen-type and frozen seal-body tests: **N/A**, because this is infrastructure W4-2, not a provider package. No frozen declaration is promoted by this report.

## Binder and definition audit

All binders below refer to the elaborated exported signatures. SOURCE means an explicit mathematical premise; TYPING includes carriers and the normed-space/finite-dimensional or Banach codomain conventions. No project-owned assumption bundle is present. Complete finite-dimensional complex spaces are the intended C^d targets; the design's explicit F6 scope is retained, not an invented analytic premise.

`holomorphic_parametric_integral` (source: blueprint L23–25; design L617–624 and F6):

| Binder | Bin | Correspondence |
|---|---|---|
| W | TYPING | Complex finite-dimensional target C^d generalized to W. |
| NormedAddCommGroup W | TYPING | Target norm/addition. |
| NormedSpace ℂ W | TYPING | Complex differentiation. |
| NormedSpace ℝ W | TYPING | Bochner integration. |
| IsScalarTower ℝ ℂ W | TYPING | Compatible scalar actions. |
| CompleteSpace W | TYPING | Completeness of source C^d target. |
| FiniteDimensional ℂ W | TYPING | Source C^d / design F6. |
| p | TYPING | Real integration dimension, including zero. |
| q | TYPING | Complex parameter dimension, including zero. |
| Q | TYPING | Integration set in real coordinate space. |
| hQ | SOURCE | Compact box strengthened to arbitrary compact set. |
| U | TYPING | Parameter domain. |
| hU | SOURCE | U open. |
| G | TYPING | Joint family, globally represented with assertions on Q×U. |
| hG | SOURCE | Joint continuity on Q×U. |
| hGd | SOURCE | Holomorphy in the parameter at each x∈Q. |
| hDG | SOURCE | Joint continuity of the parameter derivative. |

Counts: SOURCE 5, TYPING 12, STANDING 0, RULED 0, EXCESS 0.

`general_cauchy` (source: blueprint L171–180; design L626–629):

| Binder | Bin | Correspondence |
|---|---|---|
| E | TYPING | Complex normed source. |
| F | TYPING | Complex normed target. |
| NormedAddCommGroup E | TYPING | Source norm/addition. |
| NormedSpace ℂ E | TYPING | Complex source. |
| NormedAddCommGroup F | TYPING | Target norm/addition. |
| NormedSpace ℂ F | TYPING | Complex target. |
| CompleteSpace F | TYPING | Banach generalization; automatic for source finite-dimensional F. |
| G | TYPING | Map represented globally, constrained on the ball. |
| v | TYPING | Center. |
| R | TYPING | Radius. |
| M | TYPING | Supremum bound. |
| hR | SOURCE | Positive radius. |
| hG | SOURCE | Holomorphy on the open ball. |
| hM | SOURCE | Pointwise bound on that ball. |

Counts: SOURCE 3, TYPING 11, STANDING 0, RULED 0, EXCESS 0.

`uniform_limit_holomorphic` (source: blueprint L26–27; design L633–640):

| Binder | Bin | Correspondence |
|---|---|---|
| E | TYPING | Complex normed source, generalizing C^q. |
| F | TYPING | Complex normed target. |
| NormedAddCommGroup E | TYPING | Source norm/addition. |
| NormedSpace ℂ E | TYPING | Complex source. |
| NormedAddCommGroup F | TYPING | Target norm/addition. |
| NormedSpace ℂ F | TYPING | Complex target. |
| CompleteSpace F | TYPING | Banach generalization; automatic in the source finite-dimensional setting. |
| U | TYPING | Domain. |
| hU | SOURCE | U open. |
| K | TYPING | Sequence of maps. |
| K₀ | TYPING | Claimed uniform limit. |
| hK | SOURCE | Each map holomorphic on U. |
| hconv | SOURCE | Uniform convergence on U. |

Counts: SOURCE 3, TYPING 10, STANDING 0, RULED 0, EXCESS 0.

New `def`/`abbrev`/`structure`: **none**. Definition body/carrier/characterization/choice-independence audit: N/A. The proof-local chosen derivative limit Λ is an auxiliary existence witness, not a public definition; it is identified with the actual derivative before export. No fallback value or bundled unproved result enters any theorem type.

## Proof and refutation pass

- **Parametric integral:** at each I₀∈U, a closed parameter ball lies in U. Q times that ball is compact, giving a uniform derivative bound from joint continuity. Compactness also supplies finite restricted volume. The proof establishes measurability, integrability at I₀, measurable derivative, integrable constant domination and actual complex Fréchet derivatives before invoking Mathlib's differentiation theorem at `𝕜 := ℂ`. The concluding derivative is `fderiv` at interior points, not an unguarded within derivative. Empty Q/U and p=0/q=0 introduce no missing inhabitation assumption.
- **Cauchy:** each 0<δ<R gives the closed-ball estimate; multiplying by δ and taking the left limit δ→R yields the exact denominator R. No M≥0 premise is needed: the norm bound at the center supplies it. The left-neighborhood filter is nontrivial and R>0 supplies the eventual positive δ interval. Zero-dimensional sources cause no exception.
- **Weierstrass:** uniform function convergence at tolerance εη/4 bounds pairwise differences by εη/2 on the η-ball. Cauchy gives a derivative distance at most ε/2, proving uniform Cauchy derivatives on the full closed-ball containment locus. Completeness of E→L[ℂ]F supplies pointwise limits. The proof then obtains uniform derivative convergence and invokes the existing K theorem on small open balls. It proves the limit derivative equals Λ and substitutes it in the final convergence statement. It does not assume derivative convergence as an input or apply `uniform_limits` circularly. Arbitrary E needs no compact-ball assumption here. Closed-ball containment loci need not be open: the holomorphy argument uses local open balls instead.

Adversarial checks of empty domains, zero coordinate dimensions, boundary containment, the omitted nonnegative-M hypothesis, operator-norm completeness and the apparent derivative-convergence circularity found no surviving material defect. The general E/F versions specialize directly to Fin-coordinate max norms, where closed balls are the blueprint's closed polydiscs. No constant depends on a hidden dimension or a post-selected witness.

## Notes and source/design discrepancies

**N1 — acceptable local linter setting; no repair required.** At Parametric L34–36: “the proof does not need it, so the unused-variable lint is silenced,” followed by `set_option linter.unusedSectionVars false in`. AGENTS rules 1/4 prohibit proof escapes and resource-budget overrides, not this narrowly scoped diagnostic setting. `scripts/lint_sources.sh` specifically rejects maxHeartbeats, maxRecDepth and synthInstance.maxHeartbeats; this setting is none of those and changes no kernel checking. `#check @...` confirms the approved instances really remain in the exported type. Recommendation: **retain the local setting and explanatory comment**. `omit [CompleteSpace W] [FiniteDimensional ℂ W] in` would generalize the export and change the design's retained instance interface; that may be considered separately, but is unnecessary for acceptance and should not be substituted silently under this audit.

**N2 — LOW, stale API claim in design §9.2 item 3, L374.** Quote: “only the real `hasFDerivAt_integral_of_dominated_of_fderiv_le`”. The pinned Mathlib file `Mathlib/Analysis/Calculus/ParametricIntegral.lean` L61–68 declares a generic `[RCLike 𝕜]`; its theorem at L206–214 uses that scalar. Parametric L63 successfully instantiates `𝕜 := ℂ`, as independently rebuilt, elaborated and kernel-replayed. Refutation check: the real normed-space structure used for the Bochner integral does not restrict the differentiation scalar to ℝ. Thus the design's description is stale, while its proposed proof route and the implementation are sound. Suggested wording: “Assemble the required compact-domain several-parameter corollary using the RCLike-generic Mathlib differentiation-under-integral theorem, instantiated at ℂ.” This is a design-document correction, not a pinned mathematical-source erratum.

No newly suspected defect in a pinned mathematical source was found. The report does not independently re-audit Pos93's full appendix or unrelated design findings. No implementation deviations from the three approved signatures were introduced; arbitrary compact Q and generic E/F are already present in the design and strengthen the finite-dimensional/box blueprint statements.

## Verification receipts

Commands were run from the specified worktree. No clean, update, cache-get, resource override, state-changing git command, frozen edit, generated-file edit or dependency-source edit was performed.

1. Targeted build:

   ```sh
   LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-w42 KAM.Weighted.Parametric
   ```

   Exit 0. Exact output:

   ```text
   [inp-gate] slot 1 acquired 01:26:37 for KAM.Weighted.Parametric
   Build completed successfully (2845 jobs).
   ```

   The count is Lake's reported build graph, not a claim that 2845 sources were freshly compiled. No fresh-rebuild command was used.

2. Exact-type probes and every new public theorem's axioms:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/W42Audit1.lean
   ```

   Exit 0, no warnings/errors. The probe imported only `KAM.Weighted.Parametric`, copied the three design declarations under fresh names, replaced their bodies by exact production-theorem applications (`hQ hU hG hGd hDG`, `hR hG hM`, `hU hK hconv`), checked `example : type_of% @design_<name> := @KAM.Weighted.<name>`, and ran `#check @...` and `#print axioms ...` for all three. Exact axiom output:

   ```text
   'KAM.Weighted.holomorphic_parametric_integral' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.general_cauchy' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.uniform_limit_holomorphic' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

3. Kernel replay, one invocation:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Weighted.Parametric
   ```

   Exit 0. Complete output: `replaying KAM.Weighted.Parametric`.

4. Source lint:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
   ```

   Exit 1 solely for the explicitly allowed generated-root mismatch; all other checks passed. Exact output:

   ```text
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (314 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   The package brief explicitly permits this root-import message and reserves regeneration to the orchestrator. No generated file was edited.

5. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty, exit 0. `git diff --check inp...HEAD`: empty, exit 0. All three explicit signature comparisons returned `MATCH`. The module has copyright, `module`, public imports, a module docstring and `@[expose] public noncomputable section`; 180 lines is below the cap. The only `set_option` is the local linter setting. No forbidden escape or resource override occurs. Project import-closure scan found no provider or frozen theorem.

## Closeout

Files written: only this report, plus temporary probes/logs under `.lake/abi-scratch/`, removed after checks. The supplied untracked handoff was preserved. All three public results are proved at their design types with standard axiom closure and independent kernel replay. No material mathematical or source-contract uncertainty remains within this package. N1 is an accepted implementation choice; N2 is a nonblocking documentation correction. Downstream applications and frozen-anchor sealing remain outside W4-2's scope.
