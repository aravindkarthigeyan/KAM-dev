# P5-8 independent audit 1

**Package verdict: PASS.** Both public declarations implement the audited design interface and the confinement proposition. No material statement, proof, definition, or quarantine defect was found.

**Anchor disposition: I-HEAD (`iso.all_time_confinement.v1`): PASS WITH NOTES for this supporting package; NOT seal-ready.** No provider is delivered. `KAM.Iso.all_time_confinement` remains `DRAFT_SORRY` / `FROZEN_UNPROVED`. P5-8 does not prove torus existence, assemble I-HEAD, or discharge its other premises. Provider/frozen exact-type and seal-body probes are inapplicable; the probes below check the two actual package exports against the independent design signatures.

## Scope and immutable inputs

Date: 2026-10-28. Worktree: `/root/code/KAM-inp-p58`. Tier 2 focused, refute-first audit using the manuscript-audit and lean-statement-audit protocols. Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the package audit brief, handoff, track-I statement, relevant frozen anchor/definitions, design, blueprint, and invoked dependency interfaces. Permission envelope: report only, temporary probes under `.lake/abi-scratch/`, narrow build and verification; no source edits, commits, or repairs. The user's absolute report destination overrides the brief's generic main-worktree destination. No delegation.

Snapshot frozen-v1:

- HEAD: `d907d298543b7ad7d75ebb95bc9f9c1d0e52dcbd`.
- `inp` when comparison began: `cdd0849325af3d590fe5f47c8dac05550fbdeb12`.
- Required `git diff inp...HEAD`: exactly `KAM/Iso/Confinement/Confinement.lean`, 110 added lines. Full delta reviewed.
- Handoff's `inp-p57` resolves to `ae60e41ee14d7ba11dacec9a3cabaa9054248aac`; that comparison contains unrelated merged packages. The explicit user/brief baseline `inp...HEAD` determines scope.
- Untracked handoff was present before this audit; it was read and preserved.

| Input | SHA-256 |
|---|---|
| `KAM/Iso/Confinement/Confinement.lean` | `022bd20563527493142b27e8119ae75ffd58177c8240fbcd0e4c28c79268395a` |
| `blueprint-I/parts/p5-confinement.tex` | `a98919a7c027932f4dd8e5435327cccb881110871a0980e900f3f6970c7fcda9` |
| `docs/tracks/I/design/PART58-LEAN-DESIGN.md` | `dd8e40b911ed6fc0e9e6f36c303cebcda7f4e9025e97743ad563e4a1bc45ed08` |
| `KAM/Iso/Confinement/Setting.lean` | `09a93dee2c1e3d94b9d5fd3a9a5d3665937ea8dcef140270c4038e3c67239be2` |
| `KAM/Frozen/Iso/Theorems/AllTimeConfinement.lean` | `a34b694a41518bacffd88a22455d8242500d4c0fd7aba434906c0b510cbd91bc` |
| `KAM/ODE/Continuation.lean` | `625ddde6145cc3787997d456fb36b4d34c7270479326e0165a70d7dfe6d2e7a1` |
| `KAM/ODE/Maximal.lean` | `4b5e9402fb23e9e14abc1d15805848877058c3826e18dc45114ff418c7bda58e` |

Manifest identity: `manifest/frozen-anchors.json:1658-1697`, owner ruling D20, frozen export `KAM.Iso.all_time_confinement`, provider `KAM.Provider.Iso.all_time_confinement`, source `KAM-dev@b1422e0` track-I statement. Repository lint verifies frozen bytes and elaborated ABI. Frozen files and manifest were not changed.

## Declaration ledger and source fidelity

All package names are in `KAM.Iso.Confinement`; line locators refer to frozen-v1.

| Node / role | Declaration | Verdict | Reason |
|---|---|---|---|
| `stepI:p5:cf-cont`, internal factorization | private `confinement_core`, line 49 | PASS, internal conditional proof | Takes the produced barrier only internally; proves both infinite endpoints, all-time region/K membership and strict displacement. |
| `bpI:p5:confinement`, conditional helper | `confinement_prop_of_invariant`, line 78 | PASS as CONDITIONAL helper | Exact design signature; explicit `hinv`; distinct name; not a substitute for the source-facing result. |
| `bpI:p5:confinement`, `cf-conf`, `cf-cont` | `confinement_prop`, line 93 | PASS | Exact design signature; derives barrier via `separation_confined`, which derives invariance. |

Blueprint `p5-confinement.tex:172-177` says: “let z be the maximal solution ... Then T_-=-infinity, T_+=+infinity, and for all t ...”. The exported result retains both directions and all real times. It proves the sharper local bound `η₁/2`; the blueprint proof explicitly supplies `η₁/2 ≤ η/2` through the later cover data. K membership implies W and B membership by the literal patch definition and `W_subset_B`. The source solution premise includes its differential equation and initial value; no new trajectory existence assertion is claimed here.

Design `PART58-LEAN-DESIGN.md:1320-1344` gives exactly these two signatures. Row P5-8 at 344 and implementation guidance at 427-429 assign this package both the barrier application and continuation. D8 at 222 and F03 at 595 explicitly distinguish the conditional helper from the wrapper.

### Binder and bundle inspection

| Binder(s) | Classification | Exact authority / expansion |
|---|---|---|
| `B, s₀, r₀, h, f, ε, η₁, F₁, C_K, r, Lm, LΦ, κ, E, Yp, Ym, Ip, Im` | TYPING | Carriers and named quantities of the inherited patch/graph setting; max norms on `Fin 2 → ℝ` and `Fin 2 → ℂ`. |
| `p` and its data | STANDING (mixed data/properties) | Part 3 chart, P1-P3; design and Setting lines 104-133. Fields inspected: c, W, m, Ψ, δE, δm, ρc, mPlus, mMinus; positive widths; open W/image; W inside B and centre ball; C1 hR/m/inverse; inverse membership and both identities; Q inclusion; ρc bound; initial ball inclusion and h/m bounds; two slope intervals. No orbit conclusion. |
| `S.base` | STANDING | `hs, hr, holo, real`: inherited analytic real Hamiltonian data (Setting 77-82). |
| `S.perturb` | STANDING | `holo, periodic, real, nonneg, bound`: inherited perturbation data (Setting 96-100). |
| `S.dbound` | STANDING | Derivative bound from Part 3 hypothesis-d on `fractD`. |
| `S.pconst` | STANDING | `r_pos, r_le_one, thick_subset, Lm_ge, Lm_bound, LΦ_ge, LΦ_bound, κ_pos, κ_le_quarter, κ_le_plus, κ_le_minus`: patch constants, blueprint 67-77. |
| `S.small` | STANDING | `nonneg, le_one, lt_dE, lt_rho, lt_r, lt_kappa, lt_Phi`: consequences of the inherited ε₀ bound, blueprint 79-85. |
| `S.plus`, `S.minus` | STANDING | Each has `continuous, near, energy, base_mem, base_slope`: graph lemma and Part 3 point location, not confinement conclusions. |
| `Kp, Km, ωp, ωm` | TYPING | Named Part 3 tori and frequencies. |
| `Tp`, `Tm` | STANDING | For each: `holo, primary, real, invariant, energy, close, du, dv` (Setting 186-197), Part 3 T1-T4 and derivative estimates. These are the torus inputs fixed before this source proposition. |
| `hgp`, `hgm` | STANDING | “Keep the notation” at blueprint 131 imports graph identity from 94-98; design D8/F03 specifies these exact inputs. Producer is `torus_graph` (Graph.lean:171-213). They do not assume trajectory confinement or global existence. |
| `hB` | SOURCE | Open action domain, inherited I-HEAD setting. |
| `z₀`, `Tm'`, `Tp'`, `z` (or helper `Tm`, `Tp`) | TYPING | Initial point, maximal interval and solution carrier. |
| `hz₀` | SOURCE | Patch assignment `‖I₀-c‖ < ρc`, blueprint 131. |
| `hE` | SOURCE | `E := H_ℝ(z₀)`, blueprint 147. |
| `hz` | SOURCE | Maximal solution stipulated at blueprint 173. Expanded fields: `neg_lt, pos_lt, init, isSolution, maximal` (Maximal.lean:42-51). None says endpoints are infinite. |
| helper `hinv` only | CONDITIONAL / EXCESS for a source theorem | Explicit produced invariance premise authorized only for this distinctly named helper; absent from `confinement_prop`. |
| private `hsep` only | Internal produced premise | Supplied in each wrapper by the appropriate separation theorem; not exported as a source hypothesis. |

For the source-facing theorem: RULED inputs 0; EXCESS inputs 0. The standing S bundle expands to 38 logical fields; the two TorusOutputs to 16. All these fields were inspected, rather than treating the bundle name as evidence. TYPING and SOURCE/STANDING rows above cover all remaining binders and patch fields. The helper deliberately has one additional conditional premise; it is not assigned source-proof closure.

## Proof and refutation pass

1. At lines 104-106 the actual application supplies the two torus outputs, both identities, initial ball/energy, order-connected maximal interval, membership of zero, solution and initial value. Separation.lean:274-293 derives individual invariance with `torus_invariant`, rewrites the range identities, and applies `isInvariantSet_union`. The wrapper assumes neither invariance nor a barrier.
2. At lines 56-59, region membership yields Omega membership, then `Omega_subset_K`. Compactness is proved by `p.isCompact_K` (PatchConst.lean:43-47), via `K = Ψ '' Q`; it is not an orbit or compactness hypothesis invented here. `hKB` uses K's W membership then `W_subset_B`.
3. `gen_continuation_periodic` (Continuation.lean:192-212) receives `U := B`, open B, real Hamiltonian C1 regularity, integer-angle periodicity, the actual maximal solution, compact K and K inside B. Forward witness is zero; `neg_lt` covers the missing lower endpoint for all t ≥ 0. Backward witness is zero; `pos_lt` covers the missing upper endpoint for all t ≤ 0. Thus both one-sided eventual compactness premises hold, including t=0.
4. After endpoints are substituted, `eIoo_bot_top` gives membership for every real t. Lines 66-73 place both actions in the open centre ball of radius η₁/4, and use the triangle inequality to obtain strict `< η₁/2`. No angle estimate is used or needed.

Separate adversarial pass challenged: (a) hidden assumption of the final confinement in S, (b) importing an unjustified graph/invariance premise, (c) losing one time direction or excluding zero, (d) requiring the entire lifted orbit compact, (e) losing strictness in the final bound. Each was refuted by the expansions and concrete applications above. No surviving mathematical blocker. This is the auditor's second pass, not a claim of a separate reviewer.

## Definitions and quarantine

No new `def`, `abbrev`, `structure`, instance or choice construction occurs in the delta. Definition classification is therefore empty for new declarations. Consumed `sepRegion`, graphSet, Omega and K are literal predicates in Setting; `realHamiltonian` and its canonical vector field have their frozen meanings. No junk branch or fallback is introduced. Body/carrier checks of these consumed predicates are OK; characterization/choice independence are N/A for these literal definitions. No frozen theorem or provider is imported by the new module; imports are Setting, PatchConst, RealHam and Separation. Public transitive axiom checks below rule out hidden sorry dependencies.

## Verification

All explicit Lean checks use `LEAN_NUM_THREADS=1`; targeted build through the required gate, no clean/cache/update or library rebuild. Verification output is recorded below. The lint command internally performs an ABI Lean probe; subsequent probes/kernel replay were run after it completed.

Build command:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p58 KAM.Iso.Confinement.Confinement
```

Exit 0. Output:

```text
[inp-gate] slot 1 acquired 01:33:00 for KAM.Iso.Confinement.Confinement
⚠ [2841/2880] Replayed KAM.ODE.Exit
warning: KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused in theorem `KAM.ODE.gen_exit`:
  [NormedSpace ℝ E]
Build completed successfully (2951 jobs).
```

The warning is replayed dependency lint, not a new proof failure.

Exact design probes: extracted the `section Confinement` signature block from the design (1311-1347), imported `KAM.Iso.Confinement.Confinement`, renamed declarations to `audit_invariant` and `audit_source`, and replaced only their `sorry` bodies by:

```lean
by exact confinement_prop_of_invariant S hB hz₀ hE hinv hz
by exact confinement_prop S Tp Tm hgp hgm hB hz₀ hE hz
```

Executed `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P58Audit.lean`, exit 0. This checks the actual conclusion and every explicit design binder by term-level application. The same temporary file contained both public axiom checks:

```text
'KAM.Iso.Confinement.confinement_prop' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Confinement.confinement_prop_of_invariant' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Kernel replay command:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Confinement.Confinement
```

Exit 0. Output:

```text
replaying KAM.Iso.Confinement.Confinement
```

This single invocation covers the sole new module, including its private core and both public theorems.

`LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh` (final serialized rerun): exit 1, solely the permitted generated-root condition. Output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (323 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`git diff --check inp...HEAD`: exit 0, no output. `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: exit 0, empty. Forbidden-token/override search in the added file: no matches. File length 110, with copyright, module, public imports, module docstring and public section. No budget override. Probe deleted after verification.

## Defects, limitations and closeout

No new suspected blueprint/source erratum or implementation deviation found. Inherited Part 3 existence and the assembly of I-HEAD remain outside this package. Its local result may not be substituted for the exact frozen headline. The graph identities are established earlier, named in the adopted design, and genuinely consumed here. No source change or frozen edit is proposed.

Closeout: full required delta classified; both public declarations checked against design/source; conditional helper identified; proof and second refutation passes complete; no new definitions; build and axiom checks pass; lint has only the allowed generated-root note. Kernel result recorded above. Only this report is a new audit artifact; no state-changing git operation was used.
