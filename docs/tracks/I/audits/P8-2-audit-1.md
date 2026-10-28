# P8-2 independent package audit 1

**Overall verdict: PASS WITH NOTES for P8-2 infrastructure.** The section L declarations match the design, the action/eccentricity window and near-circular set are faithful, and the proofs contain no extra mathematical assumptions. This is approval of the helper package, **not sealing of I-R3BP**. The inherited I-4 module is included in the requested diff and has also been reviewed.

Audit date: 2026-10-28. Tier-2, read-only, refute-first audit. Only this report is a persistent repository edit. Temporary checks/logs were confined to this worktree's `.lake/abi-scratch/` and removed after use. No state-changing git command, generated-file edit, dependency change, frozen edit, or resource-budget override.

## Frozen inputs and scope

Snapshot `frozen-v1`: HEAD `9f661c12a0462a485f90ba1e3289a8e5f2ad3a37`; branch `inp` resolved to `22304c61abd6dbd763fb2b53a7922afa968da9f8` at audit start. The requested `git diff inp...HEAD` selects merge base `a763bfdbf022d6f10caaff4fc865f2a9e5432a97` and contains exactly `KAM/Iso/NearCircular.lean` (239 lines) and `KAM/Iso/R3bp/Region.lean` (270 lines). Git warns that there are multiple merge bases; the other is `e25d97aeaef5fd824dc07ca56692ae26f6203c18`. The selected comparison is recorded rather than silently replaced. The handoff's older `inp-i4...HEAD` comparison includes unrelated history with current refs; it was not used to delimit this audit.

| Input | SHA-256 |
|---|---|
| `KAM/Iso/R3bp/Region.lean` | `1302073ba894b68124cba4914fe1f5bd6c11170568fba0108b098e2a8777719d` |
| `KAM/Iso/NearCircular.lean` | `5601e97197198ba2331d73362525a4c35cf9ee364ebe4e40ebf2f2065725b246` |
| `docs/tracks/I/design/PART58-LEAN-DESIGN.md` | `dd8e40b911ed6fc0e9e6f36c303cebcda7f4e9025e97743ad563e4a1bc45ed08` |
| `blueprint-I/parts/p8-r3bp.tex` | `69c7b6913a1f422a509d85d508984730b25aa818fec63fd297a42ee5463b8a0b` |
| `blueprint-I/parts/p7-delaunay.tex` | `a3f650f5c2982ea6e5545efd4294c086103439908cfd2683ec3a836923a6521d` |
| `KAM/Frozen/Iso/Defs/NearCircular.lean` | `5cbe77acca5d297d135c5e9457c4753bf35a333e5bea445a34a258c801c0d6b8` |
| `KAM/Frozen/Iso/Theorems/RestrictedNearCircular.lean` | `bafd9ad666bf857936ebfa5388861f0a2c22ffab011e122afef3f3b0e4a83373` |
| `docs/tracks/I/statement.md` | `060e16321cf4c51b6bf2219d5c4c542e6a5678807b16de0f25f6fdec979ea3ae` |
| `docs/tracks/I/design/PART58-design-audit-1.md` | `f4c2974006ea5d237c74c5bf03c6e5503d05b9e425f346bcc812db7530bb4227` |
| `docs/tracks/I/design/PART58-design-audit-2.md` | `813392c3b8716dfb8f67ace7697e7dfa39efd8bd5d6e594875a52c72a0c0d524` |
| `docs/tracks/I/audits/P8-2-handoff.md` (initially untracked) | `08c62888d593093b39fd386ccdfbb34e760ea64723a57d9445a08cdb57ff339a` |

Read the package brief, AGENTS.md, PLAN.md, DECISIONS.md, the handoff focus, design section L and P8-2 mapping, both prior design audits, the raw blueprint statements/proofs, the frozen NearCircular definition and I-R3BP theorem, and the imported Kepler definitions and relevant image/element interfaces. Current source and types override previous design receipts. Source correspondence here means the pinned repository blueprint/design and frozen objects; this is not a new external-PDF audit of Chi05.

## Anchor disposition

| Anchor / scope | Verdict | Meaning |
|---|---|---|
| P8-2: `p8:A`, `p8:e-vs-k`, section L topology exports | PASS WITH NOTES | Design-facing infrastructure proved; notes below limit node/anchor closure claims. |
| Frozen `KAM.Iso.NearCircular` as consumed here | PASS | Actual frozen existential physical-element predicate, not an alternative set. |
| Inherited I-4: `p7:near-circular` exports | PASS | Witness uniqueness, physical-element description, chart image, openness and existence equivalence match the blueprint. |
| Frozen `KAM.Iso.restricted_near_circular` | Not a delivered seal | Still `by sorry`; no provider implementation or full-type seal is delivered by this diff. Do not mark this root proved or seal-ready. |

Provider/frozen full-type and seal-body probes are N/A: there is no provider in this package. A separate probe applies these exports to assemble the **first two conjuncts only** of the actual frozen conclusion from `R3bpParams`; it does not assume or establish the global dynamics conjunct.

## Statement and definition ledger

Names in the first table are under `KAM.Iso.R3bp`. Locations refer to `Region.lean` at frozen-v1. PASS means faithful and proved at this package's scope.

| Node / line | Declaration | Verdict | Reason |
|---|---|---|---|
| `p0:r3bp`, 40 | `R3bpParams` | PASS | Exactly six source inequalities, expanded below. |
| `p8:A`, 50 | `RegionParams` | PASS | Exactly the broader five region inequalities. |
| source-to-region, 57 | `R3bpParams.region` | PASS | Derives ep < 1 from ep < 1/4; no added premise. |
| `p8:e-vs-k`, 62 | `kappa` | PASS | Literal square-root formula. |
| `p8:A`, 65 | `actionRegion` | PASS | Four strict inequalities, x 0 = L, x 1 = G. |
| `p8:A`, 70 | `actionRegionCl` | PASS | Four non-strict inequalities; no asserted equality to topological closure. |
| auxiliary, 76 | `kappa_nonneg` | PASS | Standard sqrt property, all real e. |
| auxiliary, 78 | `kappa_mem_Icc` | PASS | sqrt(1-e²) belongs to [0,1], all real e. |
| `p8:e-vs-k`, 84 | `kappa_kappa` | PASS | Involution correctly restricted to [0,1]. |
| `p8:x-cont`, 93 | `kappa_pos` | PASS | Positive on 0 < e < 1. |
| auxiliary, 97 | `kappa_lt_one` | PASS | e > 0 suffices; valid stronger range than (0,1). |
| `p8:x-cont`, 102 | `kappa_strictAntiOn` | PASS | Strict decrease includes both endpoints of [0,1]. |
| `p8:e-vs-k`, 110 | `eccOf_eq_kappa` | PASS | `div_pow` identity; valid even for Lean's total division at L = 0. |
| `p8:e-vs-k`, 120 | `eccOf_mem_Ioo_iff` | PASS | Exact design; multiplication by positive L preserves strict comparisons. |
| `p8:e-vs-k`, 135 | `eccOf_mem_Icc_iff` | PASS | Exact closed form, including e-prime = 0. |
| `p8:A`, 152 | `actionRegionCl_subset_cone` | PASS | Both inclusions; strict cone margins from am > 0, em > 0, ep < 1. |
| `p8:A`, 162 | `isOpen_actionRegion` | PASS | Parameter-free strengthening: finite strict continuous inequalities. |
| auxiliary, 169 | `isClosed_actionRegionCl` | PASS | Finite non-strict continuous inequalities. |
| `p8:A`, 175 | `isCompact_actionRegionCl` | PASS | Parameter-free compactness via closed subset of a bounded box. |
| `p8:A`, 191 | `closure_actionRegion_subset` | PASS | Closed containing set gives exactly the blueprint inclusion. |
| `p8:topology(a)`, 199 | `mem_actionRegion_iff` | PASS | Exact design; source iff is reversed without changing meaning. |
| `p8:topology(b)`, 216 | `nearCircular_eq_image_region` | PASS | Full Cartesian angle carrier; cone membership derived, not assumed. |
| `p8:topology(b)`, 230 | `exists_delaunay_preimage` | PASS | Membership produces actual preimage and exact equality. |
| `p8:topology(c)`, 238 | `isOpen_nearCircular_region` | PASS | Actual inherited physical-element openness; all parameters. |
| `p8:topology(d)`, 242 | `nearCircular_nonempty` | PASS | Exact design; explicit midpoint action witness mapped by Delaunay. |

Inherited diff, under `KAM.Iso`, locations in `NearCircular.lean`:

| Node / line | Declaration | Verdict | Reason |
|---|---|---|---|
| `p7:near-circular`, 52 | `NearCircularWitness` | PASS | Literal frozen witness conjunction with r,a,e explicit. |
| uniqueness, 87 | `nearCircular_witness_unique` | PASS | Both witness triples equal the physical elements; all four window parameters arbitrary. |
| set description, 105 | `nearCircular_eq` | PASS | Full equivalence with keplerRegion and element inequalities. |
| chart image, 152 | `nearCircular_eq_image` | PASS | Both image directions use actual Delaunay elements and region/image theorems. |
| openness, 206 | `isOpen_nearCircular` | PASS | Continuity on open keplerRegion, with denominators nonzero there. |
| nonemptiness, 218 | `nearCircular_nonempty_iff` | PASS | Exact cone/action existence equivalence for arbitrary window parameters. |

The private quotient, witness-specification and continuity helpers were also read. No hidden premise, invented field, global instance, non-unique choice, or proof escape was found.

### Definition classification and expanded premises

All six new definitions/structures are **literal**, with no choice construction. `kappa`, `actionRegion`, `actionRegionCl` are formulas/predicates; `NearCircularWitness` is the exact definitional expansion of the frozen existential's witness condition. `R3bpParams` and `RegionParams` are source-parameter conjunctions, not result packages. Every object has BODY_MATCH=OK, PUBLIC_CARRIER=OK, WELL_DEFINEDNESS=N/A_LITERAL, CHARACTERIZATION=N/A_LITERAL, CHOICE_INDEPENDENCE=N/A, DEFINITION_VERDICT=PASS. Standard total `Real.sqrt` is the stated formula; inverse/involution and physical interpretations carry their required domain guards. There is no bespoke fallback or selection.

| Bundle / logical input | Expansion and source classification |
|---|---|
| `R3bpParams.ha` | SOURCE: 0 < am; frozen I-R3BP `ha`. |
| `.haa` | SOURCE: am < ap; frozen `haa`. |
| `.he` | SOURCE: 0 < em; frozen `he`. |
| `.hee` | SOURCE: em < ep; frozen `hee`. |
| `.heSmall` | SOURCE: ep < 1/4; frozen `heSmall`. |
| `.hinner` | SOURCE: ap*(1+ep) < 1; frozen `hinner`. |
| `RegionParams.ha` | SOURCE: 0 < am; `p8:A`. |
| `.haa` | SOURCE: am < ap; `p8:A`. |
| `.he` | SOURCE: 0 < em; `p8:A`. |
| `.hee` | SOURCE: em < ep; `p8:A`. |
| `.he1` | SOURCE: ep < 1; `p8:A`; derived for the frozen application. |
| `eccOf_mem_Ioo/Icc_iff`: hL,hG,hGL | SOURCE: L > 0, G > 0, G < L; cone convention at `p8:e-vs-k` (hL also derivable). |
| same: he-prime,hee,he-double-prime | SOURCE: 0 ≤ e-prime, e-prime < e-double-prime, e-double-prime < 1; display `p8:e-vs-k`. |
| `mem_actionRegion_iff`: hx | SOURCE: x lies in the cone; `p8:topology(a)`. |
| `exists_delaunay_preimage`: hz0 | SOURCE: z0 lies in NearCircular; `p8:topology(b)`. |
| auxiliary κ lemmas | SOURCE of their explicitly stated elementary helper claims: x in [0,1], 0 < e and/or e < 1 as listed in the ledger. |
| I-4 witness uniqueness: h,h-prime | SOURCE witness triples; each expands to the identical 12 frozen conjuncts: radius positivity and square, a positivity, 0 < e < 1, four window bounds, energy identity, positive angular momentum, its square identity. |
| all real parameters, x,z0,r,a,e and their primed copies | TYPING: real scalars and finite-coordinate phase vectors. No instance carries a mathematical obligation. |

Expanded structure-field counts: SOURCE 11, STANDING 0, RULED 0, EXCESS 0. The remaining explicit logical input groups above are source/helper-domain premises; no EXCESS premise occurs. `NearCircularWitness` is used to prove characterization and uniqueness, never assumed as a replacement for the region/image result.

## Refutation pass and notes

No blocking or major finding survived the adversarial pass.

1. **Endpoint and degeneracy attack:** κ's involution/decrease is confined to [0,1]; the eccentricity iff permits e-prime = 0 but requires e-double-prime < 1 and positive L. The closed action region stays strictly inside 0 < G < L because em > 0 and ep < 1. Removing those guards would be false, but the implementation does not remove them.
2. **Arbitrary-parameter compactness attack:** although the compactness signature has no RegionParams, any member has L ≥ sqrt(am) ≥ 0 and G ≥ κ(ep)L ≥ 0, while L ≤ sqrt(ap) and G ≤ κ(em)sqrt(ap). Thus the proof's fixed compact box works even for invalid or empty windows. This strengthening is valid.
3. **Image/domain attack:** the source's angle carrier is all real angles. The image source has no extra deDom constraint because `actionRegionCl_subset_cone` proves it for every action-region member. The reverse inclusion uses the exact inherited `nearCircular_eq_image`, not a surjectivity assumption.
4. **Physical-element attack:** witness_spec uses positive r,a,e to recover radius, energy, semimajor axis and eccentricity. The reverse direction uses negative energy and strict angular-momentum conditions from keplerRegion. No total-division or sqrt fallback is used at a singular physical point.
5. **Prior design gate:** design audit 1 F06 required upstream availability, not an extra theorem premise. Actual imported Kepler/I-4 proofs now supply the region and element facts used here. This discharges that gate for this module only; no claim about later Safe/Hamiltonian/transfer packages follows.

Nonblocking scope notes:

- Blueprint `p8:A` says “A is open and bounded” and “overline A subset A-cl”. The design exports no separate boundedness theorem and claims only the closure inclusion. The scratch probe derived boundedness directly from compactness of A-cl and the elementary inclusion. No equality `closure A = A-cl` is claimed or required.
- Blueprint `p8:topology(d)` additionally displays a particular Cartesian pericentre formula. The approved section L asks for Nonempty, and the implementation uses the specified midpoint L,e,G witness through the actual Delaunay map. It does not export the extra Cartesian evaluation formula. This receipt certifies the designed nonemptiness export, not a separately named proof of that displayed evaluation.
- The comment at Region.lean:109 says “for L > 0” for `eccOf_eq_kappa`, while the theorem is valid for all L. This is a conservative comment, not a weakened theorem or a source defect.
- Upstream Energy.lean:106 has two replayed unused-variable warnings; no warning originates in the two audited modules. No changes were made to suppress them.

Suspected new pinned-source errata: **none established**. Suspected blueprint/frozen mathematical defects: **none established**. Mathematical deviations introduced by this audit: **none**. Current parameter-free topology and the broadened RegionParams statements are valid strengthenings already present in the design.

## Verification receipts

All Lean/Lake invocations used `LEAN_NUM_THREADS=1`; builds used the prescribed gate. Audit-owned Lean/Lake commands were serialized. Repository lint can itself invoke Lake for ABI checking, so it was run to completion only after other audit-owned Lean work finished. An initial lint run was terminated before its ABI stage, then rerun; no success is inferred from that interrupted run. Other workers elsewhere on the shared host were not stopped or controlled by this audit.

### Targeted build

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p82 KAM.Iso.R3bp.Region
```

The wrapper invokes `nice -n 5 lake build KAM.Iso.R3bp.Region`. Exit **0**. Output included:

```text
[inp-gate] slot 1 acquired 03:35:49 for KAM.Iso.R3bp.Region
⚠ [9086/9096] Replayed KAM.Kepler.Energy
warning: KAM/Kepler/Energy.lean:106:35: Variable name `hm` is not explicitly referenced.
warning: KAM/Kepler/Energy.lean:106:48: Variable name `hκ` is not explicitly referenced.
Build completed successfully (9100 jobs).
```

This is a targeted dependency-checked build using the existing worktree artifacts, not a clean library rebuild.

### Exact types, composition and axioms

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P82Audit.lean
```

Exit **0**, no warnings/errors. The probe extracted all **13** section L theorem signatures verbatim from the design, replacing each `sorry` body with `by exact <actual export> <explicit binders in order>`. It also proved `Bornology.IsBounded (actionRegion am ap em ep)` and assembled `IsOpen (NearCircular ...) ∧ (NearCircular ...).Nonempty` from R3bpParams using `.region`.

It ran `#print axioms` for every one of the **25** public theorems listed in the ledger (20 Region, 5 NearCircular). Every output had exactly this form, with the corresponding fully qualified name:

```text
'<declaration>' depends on axioms: [propext, Classical.choice, Quot.sound]
```

In particular, `nearCircular_eq_image_region`, `exists_delaunay_preimage`, `isOpen_nearCircular_region` and `nearCircular_nonempty` all have that exact axiom set. No sorryAx, custom axiom or extra trust boundary occurs.

### Kernel replay

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.R3bp.Region KAM.Iso.NearCircular
```

One invocation, exit **0**. Complete output:

```text
replaying KAM.Iso.NearCircular
replaying KAM.Iso.R3bp.Region
```

Both audited modules were kernel-replayed successfully.

### Lint and mechanical hygiene

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit **1**, exclusively the brief's allowed generated-root discrepancy. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (372 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Thus lint passes the package brief's exception policy; the literal command does not return zero. KAM.lean was not regenerated or edited.

Mechanical checks: both changed files have copyright/module/public imports/module docstring/exposed public section; 270 and 239 total lines respectively; no forbidden proof escape, heartbeat/recursion/synthesis override or EuclideanSpace token. A recursive traversal of project imports from both modules found **54** project modules, **zero** provider imports and **zero** sorry-bearing frozen theorem imports. Frozen definitions are legitimate dependencies.

`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` produced no diff (only the recorded multiple-merge-base warning). `git diff --check inp...HEAD` exited **0**, likewise with only that warning. Final report whitespace and source hash checks are recorded below.

## Closeout

All 31 new public declarations are classified; all 25 public theorem axiom sets are clean; the 13 design signatures and two useful composition consequences elaborate; targeted build and kernel replay exit zero; lint has only the explicitly permitted root-generation discrepancy. All 11 recorded input hashes were recomputed and still match. `git diff --check -- docs/tracks/I/audits/P8-2-audit-1.md` exits 0; because the report is untracked, a direct trailing-whitespace scan was also performed and passed. Temporary audit probe and replay log were deleted. Final status contains only this new report and the pre-existing untracked handoff.

No mathematical edit is proposed or applied. No unresolved package blocker remains. The full frozen I-R3BP theorem, later safe-region and dynamics packages, the blueprint's auxiliary Cartesian evaluation formula, and a fresh audit of the external source PDFs are outside this closeout.
