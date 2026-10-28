# W4-1 independent package audit 1

**Verdict: PASS WITH NOTES.** The domains and finite weighted-bound infrastructure implement their assigned blueprint/design contracts. No material statement, definition, proof, or quarantine defect was found. There is **no frozen anchor or provider in W4-1**, so provider/frozen ABI equality and seal-body probes are not applicable; this verdict approves infrastructure, not a theorem seal or a track headline.

Date: 2026-10-28. Audited HEAD: `4022c0db1a3bf0e653018fe789ed9bf5b25bd21c`. Requested comparison: `git diff inp...HEAD`; inp was `0892ad4f5353dda0b9637f3076736a3b5ebe90ae`, merge base `738b078efc07a743392b02cbb09909b8697fcabc`. The comparison adds only `KAM/Weighted/Domains.lean` (97 lines) and `KAM/Weighted/Norm.lean` (171 lines). The pre-existing untracked W4-1 handoff was read and left untouched.

Read AGENTS.md, PLAN, DECISIONS, the requested package brief, handoff/AUDIT FOCUS, PART145-LEAN-DESIGN including Appendix A and binding audit-2 notes, both design audits (under `docs/tracks/N/design/`), blueprint-N Part 4, and the track-N statement conventions. Checked the imported frozen `actionNbhd`/`complexStrip` bodies, real inclusion, `modeSize`, torus average/character/coefficient definitions, and the production import closure. The current checkout, not past audit acceptance, supplies the evidence below. Only this report was written outside `.lake/abi-scratch/`; no git mutation or source change was made.

## Declaration inventory and fidelity

All declaration names below are in `KAM.Weighted`. Locations are production file lines. `domains`, `norm`, and `norm#monotone` mean `bpN:p4:*`; the latter is the monotonicity/vector sentence immediately following `bpN:p4:n-zero` (Part 4:58).

| Node | Declaration and location | Verdict | Reason / classification |
|---|---|---|---|
| domains | `polyNbhd`, Domains:32 | PASS | Definition: exact existential max-norm tube around arbitrary complex D, independent action dimension m. |
| domains | `Dom`, Domains:35 | PASS | Definition: frozen angle strip times that tube, with independent n,m. |
| domains | `polydisc`, Domains:39 | PASS | Definition: closed max-norm polydisc, angle radius first, action radius second. |
| domains(a) | `isOpen_polyNbhd`, Domains:42 | PASS | Union of open balls; no regularity or nonemptiness of D assumed. |
| domains(a) | `isOpen_Dom`, Domains:49 | PASS | Product of open domains. |
| domains(a) | `polyNbhd_mono`, Domains:52 | PASS | Restriction under weak radius inequality; exact signature. |
| domains(a) | `Dom_mono`, Domains:56 | PASS | Both radii monotone, with all carriers unchanged. |
| domains(b) | `polydisc_subset_Dom`, Domains:61 | PASS | Closed radii differences fit strictly inside the larger open tube/strip using strict centre margins. All four designed width premises retained. |
| domains/frozen bridge | `actionNbhd_eq_polyNbhd`, Domains:85 | PASS | Equality with the image under the actual real inclusion, not a replacement neighborhood. |
| norm | `InClass`, Norm:42 | PASS | Prop structure: complex differentiability on Dom and unit angle shifts there. Its fields are source regularity/periodicity, not a desired estimate. |
| norm | `coeff`, Norm:48 | PASS | Definition: actual W-valued integral of the negative period-one character on the real unit torus. |
| norm | `modeWeight`, Norm:52 | PASS | Definition: exp(2π s times the integer mode l1-size); geometric s. |
| norm | `wsum`, Norm:55 | PASS WITH NOTES | Definition: real tsum of nonnegative weighted coefficient norms; intended sum only with WSummable. See N1. |
| norm | `WSummable`, Norm:58 | PASS | Definition: summability of exactly those terms. |
| norm | `WBound`, Norm:62 | PASS WITH NOTES | Definition: genuine summability AND bound at every action in the tube; accepted vacuous empty-tube convention. See N2. |
| norm | `HasFiniteWNorm`, Norm:65 | PASS | Definition: existence of a uniform real bound, including summability at every action. |
| norm | `wnorm`, Norm:69 | PASS WITH NOTES | Definition: conditional real supremum, meaningful as the norm on the finite locus. Not an extended-real norm on its entire carrier. See N1. |
| norm | `wbound_iff`, Norm:73 | PASS | Nonnegative M and finite-locus guard preserved; the three omitted instance binders are unnecessary. |
| norm#monotone/helper | `modeWeight_mono`, Norm:85 | PASS | Exponential monotonicity and nonnegative l1 mode-size; no width positivity needed. |
| norm#monotone | `WBound.mono`, Norm:95 | PASS | Restricts action domain and angular weight and increases upper bound; preserves summability by nonnegative domination. Three omitted instances unnecessary. |
| norm#monotone/helper | `coeff_apply_pi`, Norm:111 | PASS | Component projection commutes with the genuine Bochner integral. Integrability proved from InClass and positive strip, not assumed. |
| norm#monotone | `wbound_pi_apply`, Norm:129 | PASS | Component bound from max norm of coefficient vectors; exact positive-strip/class premises. |
| norm#monotone | `wbound_pi_of_components`, Norm:144 | PASS | Vector bound by sum of component bounds; finite sum commuted with convergent series. No interchange of action supremum and mode sum. |
| sup-weighted/constants prerequisite | `coth`, Norm:167 | PASS WITH NOTES | Definition: cosh/sinh, placed in Norm as required by F5; Lean total division gives zero at zero. Intended numerical consumers use positive arguments. |

The eleven domain/norm object declarations from Appendix A match production after whitespace/documentation normalization; `coth` is the required separately planned F5 definition. Generated constructors/projections of InClass introduce only its two displayed source premises. All twelve new object definitions/structures are exposed by the module section. No fallback branch was inserted into a geometric or analytic object.

The six domains theorem signatures and four designed norm theorem signatures were copied from Appendix A under fresh names in a scratch probe, keeping the original section instances, and proved directly using the implemented exports with their explicit arguments in order. All ten checks elaborated. The two additional helper theorems were independently read against their mathematical roles above.

## Focus findings and limits

**N1 — finite-bound representation, nonblocking.** Norm:55–70 does not define an extended-real norm on arbitrary total functions: nonsummable real `tsum` has a default value and unbounded real `iSup` is not +infinity. Every implemented estimate protects this: WBound explicitly demands WSummable, and wbound_iff:73–83 retains HasFiniteWNorm, derives boundedness of the supremum range, then uses `le_ciSup`. Its forward direction uses nonnegative M to handle an empty action tube. No proof infers summability or boundedness from a raw tsum/iSup value. For nonempty tubes this is exactly the finite part of the blueprint norm. This is the deliberate audited D1 encoding, not a newly introduced mathematical gap. Future consumers must keep these guards.

**N2 — empty domains, nonblocking accepted convention.** WBound is vacuous on an empty action tube and thus admits negative M there; it is not literally “the nonnegative extended norm is ≤ M” for negative M in that case. Both design audits explicitly distinguish this accepted convention from the rejected optional SBound encoding. A scratch proof confirmed WBound for arbitrary M when D=∅ and `wnorm ∅ r s u = 0`. The `0 ≤ M` premise of wbound_iff is therefore material and correctly retained. WBound.mono and both component estimates remain valid on empty tubes; the latter preserve actual summability on every nonempty tube. No negative-bound counterexample to a package conclusion was found.

**Omitted instances.** `#check @wbound_iff` and `#check @WBound.mono` show exactly NormedAddCommGroup, NormedSpace ℂ and NormedSpace ℝ as class binders. Neither proof requires scalar-tower compatibility, completeness, or finite-dimensionality; no theorem has acquired a stronger assumption. Restoring all three original instances in the copied design statements produces valid wrappers with exactly the implemented conclusions, and only unused-section-variable warnings. Thus the changes strictly generalize those statements. The design consumers use the stated bound implications and concrete scalar/finite-vector instances; no planned consumer relies on a positional explicit application of the removed class binders. A future script using an old fully explicit `@` application would have to adapt its argument list. This is not an applicability failure of a designed consumer.

**Whole carriers and zero dimensions.** Arbitrary D, independent n,m, and dimensions zero are retained. No proof asks for an inhabitant of Fin n or Fin m merely to obtain an unrelated result. Pi/vector bounds also work for d=0 (the reverse bound has empty sum zero). Positive unit shifts in InClass imply negative/integer periodicity because Dom is invariant under real angle shifts. On positive strips the coefficient integrands are continuous on the compact real cube; outside the analytic class coeff is still the actual total Bochner-integral formula, with no theorem relying on a nonintegrable default. Coth at zero is unused here; its constants consumers have positive argument πs/4.

The unused polydisc width hypotheses are preserved, not silently deleted. Dropping those hypotheses in a later generalized helper is optional; this package already matches the designed API. No conclusion-shaped hypothesis, bundled hard estimate, extra constant dependence, norm switch, or carrier weakening was found.

## Independent validation

All audit-owned Lean/lake invocations were sequential, with `LEAN_NUM_THREADS=1` and `nice -n 5`; no heartbeat, recursion, synthesis, or other resource override was used. The targeted build used the required compile gate and the existing worktree overlay. No dependency refresh or clean occurred.

1. Targeted build:

   ```text
   LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-w41 KAM.Weighted.Norm
   [inp-gate] slot 1 acquired 01:20:14 for KAM.Weighted.Norm
   Build completed successfully (2878 jobs).
   exit 0
   ```

   Domains is a dependency of Norm and was covered by this targeted build.

2. Compatibility, axioms and empty-domain scratch probe:

   ```text
   LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/W41Audit.lean
   exit 0
   ```

   Ten copied design theorem types elaborate against the production exports; two extra empty-domain examples elaborate. The only diagnostics were the expected unused-section-variable warnings for the two wrappers deliberately retaining the three omitted classes. No errors, default-heartbeat failures, or sorry bodies.

   Exact axiom output for all new public theorems:

   ```text
   'KAM.Weighted.isOpen_polyNbhd' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.isOpen_Dom' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.polyNbhd_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.Dom_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.polydisc_subset_Dom' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.actionNbhd_eq_polyNbhd' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.wbound_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.modeWeight_mono' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.WBound.mono' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.coeff_apply_pi' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.wbound_pi_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Weighted.wbound_pi_of_components' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

   Each line was obtained using `#print axioms` followed by that export name in the probe. No sorryAx or additional axiom occurs.

3. Kernel replay, one invocation covering both new modules:

   ```text
   LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Weighted.Domains KAM.Weighted.Norm
   replaying KAM.Weighted.Norm
   replaying KAM.Weighted.Domains
   exit 0
   ```

4. Source lint:

   ```text
   LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (314 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   exit 1
   ```

   PASS under the brief's explicit exception: the sole failure is the expected generated-root staleness; the orchestrator owns regeneration. No source lint repair is required in this package. Direct inspection found valid copyright/module/public imports/docstrings/public exposed sections, no forbidden proof escapes or resource overrides, and 97/171 lines respectively. Import closure contains 16 KAM modules and no provider or frozen theorem anchor (only frozen definitions).

5. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty output, exit 0. `git diff --check inp...HEAD`: empty output, exit 0. Source search for `set_option|sorry|admit|axiom|unsafe|opaque|EuclideanSpace` in `KAM/Weighted`: no matches. The existing handoff is the only pre-existing untracked report; this audit adds only its required report.

## Blueprint/source defects, deviations and uncertainties

No new suspected defect in a pinned mathematical source was found; this infrastructure audit checked the local blueprint and its implemented integral/norm primitives, not a fresh independent transcription of all of Pos93. No errata-ledger edit is made.

Two existing design wording issues remain worth preserving explicitly. PART145-LEAN-DESIGN:30 says the real wnorm/finite-locus API “give the blueprint's ... ∈ [0,∞]”; read this as representing its finite-bound calculus, as audit 1 already instructed. The actual real-valued definition cannot encode infinity. PART145-LEAN-DESIGN:163 and :520–522 broadly claim “every ... statement that reads coefficients carries 0 < s”; the coefficient-level order statements wbound_iff, modeWeight_mono and WBound.mono are valid without strip positivity, since they do not derive analytic reconstruction from InClass. A precise formulation is: require positivity when an analytic-class premise must control real-torus coefficients; purely coefficient-level summability/order arguments need no such premise. These are documentation qualifications, not false implementation statements or grounds to add hypotheses.

R2-01's blueprint n=0 synchronization prerequisite is present in this checkout (Part 4:55–56). R2-02's three-block real flow transport concerns later canonical-map consumers, not these modules. F5 is implemented by defining coth in Norm. The only changes from the designed theorem assumptions are the two documented, harmless omitted-instance generalizations. No audit-introduced mathematical deviation. Future analytic/reconstruction/normal-form proofs remain outside W4-1 and are not certified by this verdict.

Audit scratch probe and its captured outputs were deleted after recording these receipts. Final report whitespace check passed.
