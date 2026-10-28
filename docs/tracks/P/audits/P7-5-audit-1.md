# P7-5 independent audit 1

Date: 2026-10-28. **Overall verdict: PASS WITH NOTES for the signed P7-5 interface.**
No mathematical or statement-fidelity blocker found. This is an infrastructure-package verdict, not a seal or proof-closure verdict for any frozen planetary headline. There is no provider export or frozen theorem to seal in P7-5; provider/frozen-type and seal-copy probes are therefore not applicable.

## Scope and fixed inputs

Read-only, focused (tier 2), refute-first audit under the supplied package brief and handoff AUDIT FOCUS. Only `KAM/Planetary/Poincare/Product.lean` is audited; P7-3 and the other inherited changes are excluded. Only this report is written to the repository; temporary probes/logs are confined to `.lake/abi-scratch/` and removed after checks. No git mutation, source repair, network access or delegation.

- HEAD: `72a0994cfe9a276d7fc6681298d25e1a86f08b51`.
- Observed `inp`: `868f551a8c4946df73059e13eb811650ef07c06a`.
- Observed `inp-p73`: `db6ce749e25f7d3c6b5f3e281ad661d62cf5a7ee`.
- `git diff inp...HEAD`: only Bijective (439 lines) and Product (474 lines). Git warns of multiple merge bases and selects `d104a1a64251ca525f814912bdcac11c46a4f96f`; this is recorded, not silently replaced by a different comparison.
- Required focus command `git diff inp-p73...HEAD -- KAM/Planetary/Poincare/`: only Product, 474 insertions. The unrestricted comparison with the now-advanced `inp-p73` also has inherited unrelated changes; these are not attributed to P7-5.

Frozen-v1 SHA256 inventory:

| Input | SHA256 |
|---|---|
| `KAM/Planetary/Poincare/Product.lean` | `8a4f3a96649d2724bc29ea4db4ab9900da781045f3c016f1c16a7d03ca80461f` |
| `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` | `7c680968ef6f380e4497823a0333ee989b84cf480755d69e474f2d04826e87c8` |
| `blueprint-P/parts/p7-kepler-poincare.tex` | `3a10ddf74067a3c7b54184a190710deaba3019c97d2e0d5e9a3773b889cc26ab` |
| `docs/tracks/P/audits/P7-5-handoff.md` (initially untracked) | `f8336d63d5442d3f6b61c40e2bcca7cca93f38dfa8eaaf78343439503a1db665` |

Read AGENTS.md, PLAN, DECISIONS, track P statement, design §7/§7.1 and the embedded ProductChart signatures (design lines 2219–2353), blueprint product-def/product-chart (lines 188–213), frozen FastShift/ProgradeElliptic and the relevant coordinate/energy definitions. Current decisions and frozen definitions take precedence over the historical draft status banner in `docs/tracks/P/statement.md`.

## Statement and proof review

All **19 signed theorem signatures** agree after whitespace normalization, preserving binder order, explicitness, carriers and conclusions. They were independently instantiated in a temporary probe using the exact signature text extracted from the design, with direct applications supplying every explicit binder in order. All **37 new public theorems** and **11 definitions** are inventoried below. All names are in `KAM.Planetary`.

The proof follows the intended product construction: block projections and reassembly are continuous linear maps; differentiation is genuinely proved by the chain rule, then the two sums of symplectic forms identify the product pullback. Local inverses use a proved invertible derivative and the analytic inverse function theorem on a restriction to the open chart domain. The inverse is analytic throughout its target, not merely at the starting point. Image surjectivity chooses a one-planet preimage for each planet and reassembles it using the proved `planetBlock_unblock`. This use of choice is inside a proof, not a choice-defined public chart. Lattice equality is both directions and uses precisely the frozen fast shift. Model splits use the planet mass, not a coupling-dependent reduced mass.

### Declaration ledger

`PASS` below is the declaration verdict. Node-wide scope notes N1–N3 follow the table. Design means the signed ProductChart block at frozen-v1; helpers have their own elementary statements and do not replace signed exports.

| Node / role | Declaration (Product line) | Verdict | Reason |
|---|---|---|---|
| product-def | `planetBlock` (41) | PASS | Literal fast/slow extraction in canonical position/momentum order. |
| product-def | `poincareProd` (45) | PASS | Literal independent one-planet maps, reindexed by finProdFinEquiv. |
| product-def | `poincareProdDom` (51) | PASS | All one-planet domain guards; no missing planet. |
| product-def | `hProd` (54) | PASS | Exact negative Kepler energy sum with κ² mᵢ³/(2Λᵢ²). |
| product-def | `regionProd` (58) | PASS | Exact bodywise prograde bound region. |
| helper | `append_addNat` (64) | PASS | Correct Fin.append right-block evaluation using index equality. |
| helper | `ofPlanets` (70) | PASS | Literal physical-body reassembly. |
| helper | `unblock` (74) | PASS | Literal inverse coordinate assembly, fast block first. |
| helper | `poincareProd_eq_ofPlanets` (78) | PASS | Definitional product identity. |
| helper | `bodyVector_ofPlanets_fst` (81) | PASS | Physical position block recovered exactly. |
| helper | `bodyVector_ofPlanets_snd` (86) | PASS | Physical momentum block recovered exactly. |
| helper | `ofPlanets_injective` (91) | PASS | Both body components determine the whole family. |
| helper | `ofPlanets_bodyVector` (98) | PASS | Reassembly of all body components is identity. |
| helper | `planetBlock_unblock` (103) | PASS | Both fast/slow coordinate pairs recovered. |
| helper | `ofPlanetsCLM` (109) | PASS | Continuous linear map implementing ofPlanets. |
| helper | `ofPlanetsCLM_apply` (121) | PASS | Definitional CLM evaluation. |
| helper | `blockCLM` (124) | PASS | Continuous linear map implementing planetBlock. |
| helper | `blockCLM_apply` (134) | PASS | CLM equals the intended block projection. |
| product-chart | `isOpen_poincareProdDom` (138) | PASS | Exact design; finite intersection of continuous preimages. |
| helper | `symplecticForm_ofPlanets` (144) | PASS | Correct bodywise sum on physical coordinates. |
| helper | `symplecticForm_blocks` (150) | PASS | Correct blockwise sum on chart coordinates. |
| helper | `eq_zero_of_symplecticForm` (160) | PASS | Elementary nondegeneracy; test vectors prove both components zero. |
| product-chart | `analyticOnNhd_poincareProd` (168) | PASS | Exact design; analytic linear composition of the individual charts. |
| helper | `hasFDerivAt_poincareProd` (180) | PASS | Full product derivative proved, not assumed. |
| helper | `fderiv_poincareProd_apply` (200) | PASS | Derivative application agrees with blockwise derivatives. |
| product-chart | `poincareProd_symplectic` (208) | PASS | Exact design; symplectic factor is 1. |
| helper | `poincareProd_block` (217) | PASS | Bodywise defining chart equation. |
| helper | `planetBlock_shift` (222) | PASS | Only λᵢ changes, by 2π kᵢ. |
| product-chart | `poincareProd_lattice` (229) | PASS | Exact design; domain preservation and periodicity together. |
| product-chart | `poincareProd_eq_iff` (247) | PASS | Exact design; equality iff a single integer vector relates inputs. |
| helper | `poincareProd_mem_regionProd` (274) | PASS | Every image block is in its intended bound region. |
| product-chart | `poincareProd_image` (280) | PASS | Exact design; both inclusions, including surjectivity. |
| product-chart | `isOpen_poincareProd_preimage` (300) | PASS | Exact design; relative continuity plus open domain. |
| product-chart | `analyticOnNhd_fMov_poincareProd` (305) | PASS | Exact design; collision guards supplied pointwise. |
| product-chart | `analyticOnNhd_fFix_poincareProd` (312) | PASS | Exact design; collision guards supplied pointwise. |
| product-chart | `keplerPart_poincareProd` (320) | PASS | Exact design; correct sum, sign and mass factors. |
| product-chart | `hasDerivAt_nu` (332) | PASS | Exact design; no mass/κ positivity needed for scalar derivative. |
| product-chart | `movingHamiltonian_poincareProd` (343) | PASS | Exact design; all μ, coupling-independent chart and perturbation. |
| product-chart | `fixedHamiltonian_poincareProd` (349) | PASS | Exact design; all ε, same chart. |
| product-chart | `regionProd_one_iff` (355) | PASS | Exact design; positive mass assumption restores frozen predicate conjunct. |
| helper | `poincareProd_fderiv_equiv` (369) | PASS | Symplecticity gives injectivity; equal finrank gives surjectivity. |
| product-chart | `poincareProd_localDiffeo` (396) | PASS | Exact design; local homeomorphism with analytic inverse on target. |
| poincareProdCast | `poincareProdCast` (427) | PASS | Composition with canonical n*2=n+n cast; no body permutation hidden in cast. |
| poincareProdCast | `poincareProdCastDom` (430) | PASS | Exact preimage of the product domain. |
| poincareProdCast | `poincareProdCast_symplectic` (433) | PASS | Exact design; differentiability supplied to composition rule. |
| poincareProdCast | `analyticOnNhd_poincareProdCast` (444) | PASS | Exact design; analytic linear cast followed by product. |
| poincareProdCast | `isOpen_poincareProdCastDom` (449) | PASS | Exact design; continuous preimage. |
| poincareProdCast | `poincareProdCast_eq_iff` (452) | PASS | Exact design; integer shift transported by inverse cast. |

### Binder and hypothesis audit

For the 19 signed declarations, every expanded binder falls into the following exhaustive classes; STANDING=0, RULED=0 and EXCESS=0. The logical premises are SOURCE; numeric/function/point/index data are TYPING. There are no additional instances, packaged assumptions or existential constants whose dependence could widen the statements.

| Expanded binder | Bin | Source / scope |
|---|---|---|
| `n : ℕ` | TYPING | Product dimension; Lean even permits n=0 (stronger than blueprint n≥1). |
| `m : Fin n → ℝ` | TYPING | Planet masses, blueprint line 188. |
| `κ : ℝ`, or `G m0 : ℝ` | TYPING | Centre parameter, κ=Gm₀; blueprint line 188. |
| `μ : ℝ`, `ε : ℝ` | TYPING | Arbitrary coupling; blueprint product-chart(c). |
| `w`, `w' : Phase (n+n)` | TYPING | Fast-block-first chart points. |
| `z`, `z' : Phase (n*2)` | TYPING | Equal-dimension cast inputs / physical points as appropriate. |
| `k : Fin n → ℤ` | TYPING | Actual frozen fast lattice. |
| `hm : ∀ i, 0 < m i` | SOURCE | Positive masses, line 188. |
| `hκ : 0 < κ`, or `0 < G*m0` | SOURCE | Centre positivity. Product positivity suffices; separate G,m₀ positivity is not assumed. |
| `hw`, `hw' : … ∈ poincareProdDom n` | SOURCE | Domain of the chart and of its injectivity assertion. |
| `hz`, `hz' : … ∈ poincareProdCastDom n` | SOURCE | Same domain transported by the cast. |
| Scalar `m κ x : ℝ` in `hasDerivAt_nu` | TYPING | Scalar elementary differentiation formula. |
| `hx : x ≠ 0` | SOURCE | Formula away from the pole, design line 2269; positive actions imply this in source applications. |

Helper-only binders `P Q : Fin n → Phase 2`, `u v : Phase d`, indices `i`, values `u v : Fin n → α`, and universe/type `α` are TYPING for the named elementary identities. The sole logical helper premise `h : ∀ v, symplecticForm u v = 0` belongs to the distinct nondegeneracy implication, not to the chart statement. Its use at Product lines 377–383 supplies it from proved symplecticity and the derivative-kernel equation. No hard chart fact is passed in as a helper premise.

### Definition classification

All 11 new definitions are literal formula constructions, not characterization-by-choice objects. There are no new structures or abbrevs. Classification for **each** of the 11 definition rows above:

```text
BODY_MATCH: OK
PUBLIC_CARRIER: OK
WELL_DEFINEDNESS: N/A_LITERAL
CHARACTERIZATION: N/A_LITERAL
CHOICE_INDEPENDENCE: N/A
DEFINITION_VERDICT: PASS
```

The five product objects and two cast objects exactly implement the design formulas. The four added assembly/projection objects implement finite coordinate permutations and projections on their full carriers, with proved evaluation/reconstruction identities. `hProd` has Lean's usual total division at Λ=0, exactly as the signed literal formula; blueprint Part 12, line 55 explicitly acknowledges that convention and says it is never used. This is not an invented fallback to evade an on-domain obligation. Likewise the product composes the existing literal total one-planet formula, while all analytic/geometric claims are guarded by the genuine chart domain. No new if/default/choice branch occurs in these definitions.

## Notes and adversarial checks

**N1 — package interface versus full blueprint-node closure.** Blueprint product-chart(b), line 197, states “∂h/∂Λᵢ=νᵢ(Λᵢ)” and “h is real analytic on {Λᵢ>0}”. The signed interface only supplies the Kepler identity and `hasDerivAt_nu`. The latter differentiates ν; it does not by itself formally prove the first derivative or analyticity of hProd, nor state nonvanishing of the second derivative. The literal formula makes these elementary true consequences, but they are not separately exported here. Refutation attempt: searched every declaration in Product and compared all signed signatures; none asserts those additional clauses. Disposition: bounded coverage note, not a failed signed theorem. Do not mark the entire prose node formally closed solely from P7-5 without the relevant derivative/analytic assembly at its consumers.

**N2 — quotient/field interface.** The blueprint at lines 196 and 200 speaks of an analytic quotient diffeomorphism and field/orbit transport. The design explicitly replaces a quotient carrier with image equality, equality modulo lattice and analytic local diffeomorphisms (design §3 D3), and uses generic field/orbit transport results. P7-5 proves the specified ingredients; it does not export a quotient object or a separate transport theorem. Refutation attempt: checked both directions of `eq_iff`, full image equality, and inverse analyticity on the restricted local target. These support the intended design decomposition. No carrier change or contradiction found. Part (d) is explicitly a remark in the design table at line 191; not a promised P7-5 declaration.

**N3 — minor documentation bookkeeping.** Handoff calls the file 472 lines; the audited file has 474. Design §7.1 line 566 mentions `tube_in_chart` under P7-5, while the authoritative §7 package row and handoff assign tube work to P7-6. Product does not contain tube/polar/circular-point declarations, as explicitly required by this audit's focus. Neither discrepancy is a proof defect.

No suspected mathematical source erratum or introduced mathematical deviation was found. The blueprint/domain-analyticity issue already recorded as design B2 is not reopened here: the imported Models module actually provides analytic perturbations and those results are applied on the collision-free preimage. No pinned PDF claim is newly certified by this local implementation audit. P7-3's source fidelity and proofs, other packages, consumer integration, graph status edits and frozen-headline closure are outside this report's scope.

## Hygiene and verification evidence

All explicit Lean/Lake invocations for this audit use `LEAN_NUM_THREADS=1`, priority `nice -n 5`, and are run sequentially. The narrow build uses the required compile gate. No library clean/update/cache retrieval or resource override was used.

1. Targeted build:

   ```sh
   LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p75 KAM.Planetary.Poincare.Product
   ```

   Exit 0. Output begins `[inp-gate] slot 2 acquired 04:25:22 for KAM.Planetary.Poincare.Product` and ends `Build completed successfully (9108 jobs).` Replayed unused-variable warnings occur in existing Energy (106), Chart (212,247), and Mass (147,157,500,524); no warning/error from Product. The job count is Lake's dependency job count, not a claim that new dependencies were rebuilt or concurrent compiler processes launched.

2. Exact-type/design probes and axiom census:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P75Audit.lean
   ```

   The probe imports only Product, opens its namespaces, declares `variable {n : ℕ}`, reproduces each of the 19 design theorem signatures as an `example`, and applies its corresponding implementation export to its explicit binders. It appends `#print axioms KAM.Planetary.<name>` for every one of the 37 theorem rows above. Initial run exited 0; tactic-search linter warnings were confined to the temporary probe. The final direct-application version and kernel replay results are recorded below.

   Exact axiom output pattern: `append_addNat` reports `[propext, Quot.sound]`; each of the other 36 theorem rows reports `[propext, Classical.choice, Quot.sound]`. No `sorryAx` or project axiom occurs. This corrects the handoff's harmless claim that every listed theorem has exactly the three-axiom list.

3. Source lint:

   ```sh
   sh scripts/lint_sources.sh
   ```

   Exit 1, **only** for the explicitly permitted root-import staleness. Complete diagnostic output:

   ```text
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (392 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

4. Repository/source restrictions:

   ```sh
   git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
   git diff --check inp...HEAD
   ```

   Both exit 0, no diff/whitespace diagnostics (apart from the already documented multiple-merge-base warning). Product is 474 lines, has copyright/module/public imports/module docstring/exposed public section, and contains none of `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, `set_option`, `EuclideanSpace`. Project-import closure inspection finds 62 project modules, including 47 frozen definition modules, **zero** provider modules and **zero** frozen theorem modules. Thus no DRAFT_SORRY theorem can enter this package's project-import closure. No manifest-state exception is needed.

5. Kernel replay (the package has one new lemma module and no provider module):

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Planetary.Poincare.Product > .lake/abi-scratch/P75Kernel.log 2>&1
   ```

   Exit **0**. Complete output:

   ```text
replaying KAM.Planetary.Poincare.Product
   ```

6. Final direct-application probe: same Lean command as item 2, with output redirected to `.lake/abi-scratch/P75Probe.log`; exit **0**, no warnings or errors, 19 exact-signature applications and 37 axiom lines. Complete axiom output:

   ```text
'KAM.Planetary.append_addNat' depends on axioms: [propext, Quot.sound]
'KAM.Planetary.poincareProd_eq_ofPlanets' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.bodyVector_ofPlanets_fst' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.bodyVector_ofPlanets_snd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.ofPlanets_injective' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.ofPlanets_bodyVector' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.planetBlock_unblock' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.ofPlanetsCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.blockCLM_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.isOpen_poincareProdDom' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.symplecticForm_ofPlanets' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.symplecticForm_blocks' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.eq_zero_of_symplecticForm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.analyticOnNhd_poincareProd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.hasFDerivAt_poincareProd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.fderiv_poincareProd_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareProd_symplectic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareProd_block' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.planetBlock_shift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareProd_lattice' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareProd_eq_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareProd_mem_regionProd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareProd_image' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.isOpen_poincareProd_preimage' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.analyticOnNhd_fMov_poincareProd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.analyticOnNhd_fFix_poincareProd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.keplerPart_poincareProd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.hasDerivAt_nu' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.movingHamiltonian_poincareProd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.fixedHamiltonian_poincareProd' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.regionProd_one_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareProd_fderiv_equiv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareProd_localDiffeo' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareProdCast_symplectic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.analyticOnNhd_poincareProdCast' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.isOpen_poincareProdCastDom' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Planetary.poincareProdCast_eq_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

## Closeout

All 48 public declarations classified; all 19 design theorem signatures checked; 37 theorem axiom closures checked; kernel replay exit 0; lint accepted with precisely its authorized exception; protected-path comparison empty. Findings N1–N3 have bounded dispositions and no unresolved mathematical counterexample. The final source hash equals frozen-v1. Temporary probe/log files were removed. The only newly created repository deliverable is this report at `/root/code/KAM-inp-p75/docs/tracks/P/audits/P7-5-audit-1.md`. No source edit, errata-ledger edit, commit, seal or graph-status promotion was performed.

Final package verdict: **PASS WITH NOTES**. Frozen-anchor verdicts: **N/A — no frozen anchor is proved/sealed by this package.**
