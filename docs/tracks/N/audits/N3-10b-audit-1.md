# N3-10b independent package audit

Marker: `audit-n3-10b`. Date: 2026-10-28.

**Overall verdict: PASS.** Signature identity, blueprint fidelity, literal definition, hygiene, axiom closure and independent kernel replay all pass. No provider/frozen-anchor or seal-ready verdict applies to this package.

## Identity, authority and scope

Worktree `/root/code/KAM-inp-n3spec`, branch `inp-n3spec`, commit `e4549c7f4b0a1364266745d6923592b42392eaee`; base is its parent `9792fd98e9e2dd4bb723299b4c96aacd131e4f11`. The parent-to-package diff adds only `KAM/Nekhoroshev/ODE/Specialization.lean` (218 lines, 11,927 bytes). `git diff inp...HEAD --stat` is empty because the package has meanwhile become an ancestor of the moving `inp` reference; the pinned parent comparison is therefore the substantive audit diff.

Read the full package audit brief, AGENTS, repository plan/decisions, track-N statement conventions, Appendix A section K, the coordination note, the six named blueprint statements and standing assumptions, the relevant frozen definitions, the shared ODE contracts, and the imported Setting/HoloReal input. Applied the lean-statement-audit binder and definition checks. No provider/seal-body checks were run, as instructed.

The binding design is the **main-worktree** file: its coordination note at L1184–1189 is newer than the package worktree's copy, which ends before that note. This is an authorized namespace/import coordination change, not an undeclared change to the package contract.

| Input | SHA-256 |
|---|---|
| Package `Specialization.lean` | `cd7c291f5ec49f011e80253f698ead8d92882e0a4f318baaa2efcbd8d11d2e2e` |
| Main `docs/tracks/N/design/PART3-LEAN-DESIGN.md` including coordination note | `c369db35523f376813c82fb2e68c7d600d9bc80e726760844b0d3f152987fb08` |
| Package `Interfaces/Setting.lean` | `6eb682765fd313ae01f7ed94fdc1f1ae39c8814f275b9e70d705cf94d7220497` |
| Package `Interfaces/HoloReal.lean` | `45d5ad924d41a0b9f7f7048dbb8aad7169ddf65a7878642e150d74b82f9ac1de` |
| Package `blueprint-N/parts/p3-hamiltonian-ode.tex` | `ae9ea3c57b401be389cd9a7e54d9508de50abe33bdc24f5d49a16fffcd43a17d` |

## Declaration-by-declaration audit

All seven public exports below have prefix `KAM.Nekhoroshev.ODE`. File line locators refer to the pinned package.

| Blueprint node / design | Declaration | Verdict | Evidence |
|---|---|---|---|
| `bpN:p3:lipschitz`; K L1100–1110 | `lipschitz_X`, L84–97 | PASS | Exact full Appendix A type. C¹ on Wdom, Lipschitz on every compact subset, and uniform data on every periodic cylinder with compact action base. Constants are existential after that base; no unsupported uniformity or enlarged dependence is introduced. |
| `bpN:p3:local-exist`; K L1111–1119 | `local_exist`, L100–114 | PASS | Same explicit hd and open U/subset binders; arbitrary initial time, positive symmetric local time, actual frozen solution predicate; uniqueness on any order-connected J containing the comparison time. |
| `bpN:p3:energy`; K L1121–1124 | `energy`, L117–120 | PASS | Exact type for arbitrary H and U; no hd, analyticity or open-U premise survives section elaboration. Differentiability along the curve comes from the frozen solution predicate. |
| `bpN:p3:continuation`; K maximal predicate | `IsMaximalSolutionOn`, L124–129 | PASS | Literal Appendix A body; negative/positive EReal endpoints, initial value, actual solution on eIoo, and universal interval containment/agreement. Definitional equality probe passes. |
| `bpN:p3:continuation`; K L1136 onward | `continuation`, L147–171 | PASS | Exact existence/uniqueness/continuation type, including agreement only on eIoo and compact **action** confinement near either endpoint. The angles need not remain bounded. |
| `bpN:p3:uniqueness-closed`; K | `uniqueness_closed`, L174–186 | PASS | Exact Appendix A type. Blueprint L535–541 asks for L≥0; omission of that premise is a valid strengthening, already in the binding design: L<0 gives the empty interval. L=0 is covered by the initial equality and two-sided derivative convention. |
| `bpN:p3:confinement-glue`; K | `confinement_glue`, L189–212 | PASS | Exact conditional assembly statement. The a priori confinement premise is expressly the blueprint's hypothesis on every open-interval solution; existence, closed-interval endpoint derivatives and agreement with other solutions are conclusions. I₀∈U is derived from the closed-ball inclusion and ρ>0, not assumed separately. |

No failing declaration or requested mathematical repair was found.

### The two authorized adaptations

1. `Data` and `Wdom` are imported from `KAM.Nekhoroshev.Interfaces.Setting` with exports `KAM.Nekhoroshev.Data` and `KAM.Nekhoroshev.Wdom`; `holo_input` is imported from `Interfaces.HoloReal` with export `KAM.Nekhoroshev.holo_input`. The old ODE-qualified duplicates are not reintroduced. The `Data` fields and `Wdom` body/type are identical to section K after whitespace normalization. An exact-type Lean probe also checks the relocated `holo_input` against its complete section-K signature.
2. `{n R s ε h f}` are implicit section variables and hd is bound explicitly at each theorem which uses it. The elaborated types have precisely the original implicit argument order followed by the explicit hd binder. `energy` retains only n and its own generic binders; it acquires no accidental section inputs. Explicit qualification of `KAM.hamiltonianVectorField` only resolves the same constant.

These are namespace and binder plumbing only. Neither adaptation adds premises, changes the Hamiltonian or domain, or weakens a conclusion.

## Binder audit

Bins: TYPING, STANDING, SOURCE, RULED, EXCESS. The coordination note authorizes relocation/binder syntax; it adds no logical RULED hypothesis. There are **zero EXCESS and zero RULED premises**. The following tables give one row per input or expanded standing-data clause, with shared rows explicitly applied to each named theorem. Output-side quantifiers are checked in the exact-type probes and the declaration table; they are not counted as assumptions.

Common to `lipschitz_X`, `local_exist`, `continuation`, `uniqueness_closed`, `confinement_glue`:

| Binder / expanded clause | Bin | Authority |
|---|---|---|
| `{n : ℕ}` | TYPING | Coordinate dimension; no n≥3 restriction on this general ODE layer. |
| `{R : ℝ}` | TYPING | Blueprint L473–476; K. |
| `{s : ℝ}` | TYPING | Same. |
| `{ε : ℝ}` | TYPING | Same. |
| `{h : (Fin n → ℂ) → ℂ}` | TYPING | Same; integrable Hamiltonian argument. |
| `{f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}` | TYPING | Same; perturbation argument. |
| `hd.hR : 0 < R` | STANDING | Blueprint L473. |
| `hd.hs : 0 < s` | STANDING | Blueprint L473. |
| `hd.hh.1`: complex differentiability of h on actionNbhd | STANDING | Frozen `IsAnalyticIntegrable`; blueprint H1/analytic class. |
| `hd.hh.2.1`: boundary continuity of h | STANDING | Same. |
| `hd.hh.2.2.1`: existential nonnegative bound on h | STANDING | Same; no new uniform bound on h. |
| `hd.hh.2.2.2.1`: h real at real actions | STANDING | Same. |
| `hd.hh.2.2.2.2`: real C³ regularity | STANDING | Same frozen analytic-class typing guard. |
| `hd.hf.1 : 0 ≤ ε` | STANDING | Frozen `IsAnalyticPerturbation`; blueprint L474. |
| `hd.hf.2.1`: complex differentiability of f | STANDING | Same. |
| `hd.hf.2.2.1`: boundary continuity of f | STANDING | Same. |
| `hd.hf.2.2.2.1`: integer-angle periodicity | STANDING | Same; period one. |
| `hd.hf.2.2.2.2.1`: f real at real points | STANDING | Same. |
| `hd.hf.2.2.2.2.2`: pointwise norm bound by ε | STANDING | Same; D18 size convention. |

Additional common inputs to `local_exist`, `continuation`, `uniqueness_closed`, `confinement_glue`:

| Binder | Bin | Authority |
|---|---|---|
| `{U : Set (Fin n → ℝ)}` | TYPING | Blueprint L476, arbitrary action subdomain. |
| `hU : IsOpen U` | STANDING | Blueprint L476. |
| `hUs : U ⊆ ball 0 (R+s)` | STANDING | Blueprint L476. |

The remaining inputs, individually:

| Declaration / binder | Bin | Authority |
|---|---|---|
| `continuation`: `{z₀}` | TYPING | Blueprint L523. |
| `continuation`: `hz₀ : z₀.2 ∈ U` | SOURCE | Blueprint L523. |
| `uniqueness_closed`: `{L : ℝ}` | TYPING | Blueprint L536; negative L admitted by empty-interval strengthening. |
| `uniqueness_closed`: `{y₁}` | TYPING | Blueprint L536. |
| `uniqueness_closed`: `{y₂}` | TYPING | Blueprint L536. |
| `uniqueness_closed`: `h₁` | SOURCE | First actual solution on Icc(−L,L), blueprint L536. |
| `uniqueness_closed`: `h₂` | SOURCE | Second actual solution on that interval, same. |
| `uniqueness_closed`: `h0` | SOURCE | Initial equality, same. |
| `confinement_glue`: `{θ₀}` | TYPING | Blueprint L545. |
| `confinement_glue`: `{I₀}` | TYPING | Same. |
| `confinement_glue`: `{τ}` | TYPING | Same. |
| `confinement_glue`: `{ρ}` | TYPING | Same. |
| `confinement_glue`: `hτ : 0 < τ` | SOURCE | Blueprint L545. |
| `confinement_glue`: `hρ : 0 < ρ` | SOURCE | Same. |
| `confinement_glue`: `hball` | SOURCE | Closed max-norm ball included in U, same. |
| `confinement_glue`: `hconf` | SOURCE | Blueprint L546–547: for every open order-connected J containing 0 and every actual solution with the specified initial value, action distance ≤ρ when |t|≤τ. No existence, extension or uniqueness is bundled into this premise. |
| `energy`: `{n}` | TYPING | Blueprint L514; dimension. |
| `energy`: `{H}` | TYPING | Arbitrary real Hamiltonian, same. |
| `energy`: `{U}` | TYPING | Arbitrary action set, same. |
| `energy`: `{J}` | TYPING | Time set, same. |
| `energy`: `hJ : J.OrdConnected` | SOURCE | Interval, same. |
| `energy`: `{z}` | TYPING | Curve, same. |
| `energy`: `hz : IsSolutionOn H U J z` | SOURCE | Actual solution, same. |

Expanded counts (hd replaced by its thirteen standing clauses):

| Theorem | TYPING | STANDING | SOURCE | RULED | EXCESS |
|---|---:|---:|---:|---:|---:|
| `lipschitz_X` | 6 | 13 | 0 | 0 | 0 |
| `local_exist` | 7 | 15 | 0 | 0 | 0 |
| `energy` | 5 | 0 | 2 | 0 | 0 |
| `continuation` | 8 | 15 | 1 | 0 | 0 |
| `uniqueness_closed` | 10 | 15 | 3 | 0 | 0 |
| `confinement_glue` | 11 | 15 | 4 | 0 | 0 |

`IsSolutionOn` itself expands to action membership, differentiability of H at every visited point, and ordinary `HasDerivAt` at each t∈J. The latter remains two-sided at closed endpoints. The definition supplies the guard needed for the frozen `fderiv` field; it is not a stand-in for a confined trajectory.

## Definition classification and proof counterchecks

The only new definition is `IsMaximalSolutionOn`: a **literal Prop predicate**, not a selected solution or a result hidden in a data structure. Its inputs `{n}, H, U, z₀, Tm, Tp, z` are all typing arguments. No positivity or regularity is silently assumed in the definition. The body records negative/positive endpoints, initialization, the actual solution, and the full universal interval characterization. The predicate can be false for arbitrary H/U; no theorem claims existence there without the analytic data.

```text
BODY_MATCH: OK
PUBLIC_CARRIER: OK
WELL_DEFINEDNESS: N/A_LITERAL
CHARACTERIZATION: N/A_LITERAL
CHOICE_INDEPENDENCE: N/A
DEFINITION_VERDICT: PASS
```

`eIoo a b` is the imported real-time set `{t | a < (t:EReal) ∧ (t:EReal) < b}`. The package never converts infinite endpoints through `EReal.toReal`; every tail uses explicit real-to-EReal casts and strict endpoint inequalities. Uniqueness compares endpoint values and `EqOn` on the common open interval, never arbitrary values of the total curves outside it.

The six new private helpers are `isOpen_Wdom`, `image_Wdom`, `contDiff2`, `periodicX`, `reduction`, `isMaximalSolutionOn_iff`. They are ordinary proved lemmas, not extra public source claims. In particular the equivalence premise of the private maximal-predicate helper is supplied from the already-proved `ham_reduction`; it is not an assumed public bridge.

Refutation attempts and their resolution:

- **Differentiability outside the analytic domain:** `reduction` L73–75 explicitly proves univ×U⊆Wdom, obtains C² from `holo_input`, and supplies the equivalence to `IsSolutionIn`. No off-domain zero `fderiv` value is used.
- **Periodic field versus periodic scalar:** `image_Wdom` proves invariance in both directions by action-coordinate cancellation. `periodicX` invokes `ham_periodic` with that equality and scalar periodicity from `holo_input`. It does not assume the field is periodic as new input.
- **Energy needing global smoothness:** `energy` extracts exactly the two guarded differentiability/derivative clauses at visited points and applies `ham_energy`. Its generic H/U scope is valid.
- **Maximal uniqueness orientation or endpoint leak:** L168–170 uses the shared maximal theorem, substitutes the equal endpoints, and reverses EqOn to the requested orientation. It never promotes EqOn to equality of total functions.
- **Action confinement versus compact phase confinement:** `continuation` uses `gen_continuation_periodic` on the cylinder. Uniform periodic data, not compactness of the unbounded phase cylinder, supply the continuation theorem.
- **Closed endpoint derivatives:** `gen_confinement` proves Tm<−τ and τ<Tp before restricting its solution to Icc. Thus the same total curve has ordinary two-sided derivatives at both endpoints.
- **Confinement as a disguised conclusion assumption:** the blueprint expressly asks for this conditional glue lemma. The input concerns a priori bounds on existing open-interval solutions; the proof uses it with uniform data to produce existence on the entire closed interval and comparison with all other closed-interval solutions. It is not a proof of the later Nekhoroshev a priori estimate.
- **Missing initial membership:** L203–204 derives I₀∈U from I₀∈closedBall(I₀,ρ) and hball. The norm/set conversion at L205–207 is the actual Pi maximum norm; there is no EuclideanSpace substitution.
- **L=0 or L<0:** L182–186 supplies 0∈Icc(−L,L) when L≥0 and handles the empty interval otherwise. No positivity of L is added to the API.

## Hygiene and independent verification

1. **Targeted build.** Executed, with one thread, through the required compile gate:

   ```sh
   LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-n3spec KAM.Nekhoroshev.ODE.Specialization
   ```

   Exit **0**. Output:

   ```text
   [inp-gate] slot 2 acquired 01:51:38 for KAM.Nekhoroshev.ODE.Specialization
   Build completed successfully (2951 jobs).
   ```

2. **Exact signatures and literal predicate.** Generated `.lake/abi-scratch/AuditN310b.lean` directly from the main design's section-K headers. Each complete expected Pi type was checked by `example : <full expected type> := @<package export>`; a separate example checks the relocated `holo_input`; the maximal predicate is copied literally under a fresh name and checked equal by `rfl`. No `sorry` is introduced. Executed:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/AuditN310b.lean
   ```

   Exit **0**. Only unused-binder warnings in the audit examples. An initial probe attempt used a private `import` before a public copied definition and failed Lean's visibility check; changing the scratch import to `public import` resolved it. This was a probe construction error, not a package error or a modified production declaration.

3. **Axiom closure.** The same successful probe ran `#print axioms` for every new public theorem and the new definition. All seven outputs are:

   ```text
   KAM.Nekhoroshev.ODE.lipschitz_X          [propext, Classical.choice, Quot.sound]
   KAM.Nekhoroshev.ODE.local_exist          [propext, Classical.choice, Quot.sound]
   KAM.Nekhoroshev.ODE.energy               [propext, Classical.choice, Quot.sound]
   KAM.Nekhoroshev.ODE.continuation         [propext, Classical.choice, Quot.sound]
   KAM.Nekhoroshev.ODE.uniqueness_closed    [propext, Classical.choice, Quot.sound]
   KAM.Nekhoroshev.ODE.confinement_glue      [propext, Classical.choice, Quot.sound]
   KAM.Nekhoroshev.ODE.IsMaximalSolutionOn   [propext, Classical.choice, Quot.sound]
   ```

   No `sorryAx` or project axiom occurs.

4. **Kernel replay.** Executed exactly one module replay:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Nekhoroshev.ODE.Specialization
   ```

   Exit **0** on the first invocation. Complete stdout/stderr receipt:

   ```text
   replaying KAM.Nekhoroshev.ODE.Specialization
   ```

   The exit-143 retry condition did not occur; no retry was run.

5. **Lint.** `sh scripts/lint_sources.sh`: exit **1**, attributable to the expressly allowed generated-root warning. Complete output:

   ```text
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (330 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   This is PASS under the audit brief's stated exception. The generated root was not edited.

6. **Source hygiene.** The 218-line file has copyright/authors/license, `module`, five `public import` declarations, module docstring, and `@[expose] public noncomputable section`. The literal definition is exposed. Token scan finds no `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, `EuclideanSpace`, or `set_option`; no heartbeat/recursion/synthesis override is present. `git diff --check HEAD^ HEAD` is clean. Both the requested moving-ref diff and the pinned parent diff over `KAM/Frozen manifest KAM.lean README.md` are empty.

## Source/blueprint defects, limitations and edit boundary

No suspected new blueprint or pinned-source defect is established. The negative-L strengthening in `uniqueness_closed` is recorded above and is already required by Appendix A. No adaptation changes a frozen definition or adds a quasi-convexity, frequency, drift, or uniform-size hypothesis.

This audit concerns N3-10b, not the entire imported ODE/analytic campaign or any frozen Nekhoroshev theorem. Imported proofs are covered transitively by the requested kernel replay; source fidelity of this specialization is checked against the named blueprint nodes and exact design. Provider matching and sealing are inapplicable.

Only this report is an intended repository edit. Temporary probes are removed after checking; no package code, generated root, frozen file, manifest, or git history is changed. Final verification: the package remains at the pinned commit, all five input hashes above are unchanged, and the worktree has no tracked or untracked audit edits after removal of `.lake/abi-scratch/AuditN310b.lean`. The report passes its whitespace check. Overall PASS applies to all seven declarations; no requested work remains.
