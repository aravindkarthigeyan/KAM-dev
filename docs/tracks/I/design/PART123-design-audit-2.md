# Independent delta audit: Parts 1–3 design v2

**Verdict: PASS WITH NOTES. F1 and F2 are CLOSED by the actual revised signatures; N1 is addressed by an explicit specialization notice.** The I-G1 premise remains definitionally equal to the complete frozen type, and the provider expression still elaborates at exactly that type. No input premise was added. The generic Part 5 interface is unchanged. This is design acceptance within the earlier audit's qualifications, not proof completion or permission to seal.

Audited 2026-10-28 in `/root/code/KAM-inp-design-i123`, HEAD `cf3d4935b96eda66c8057d8776ef84f52cf080a2`. This report supersedes audit 1's F1/F2 rejection for the v2 snapshot only. Audit 1's remaining scope limits continue to apply.

## Snapshot and scope

The requested delta comprises `IG1Body`, the factoring of `IG1Statement` and `g1_explicit`, strengthened `apply` and `tori`, the updated `part3_tori_of` proof, and the N1 node-table notice. I reviewed the full v1-to-v2 signature diff extracted from the two design appendices, the v2 section 10 and departure D20, the affected graph contracts, and the actual frozen I-G1 type. The current draft is **1483 lines** and matches the user's SHA-256 and the v2 Appendix A verbatim.

| Input | SHA-256 |
|---|---|
| `.drafts/design/IPart123Signatures.lean` | `2b7c6e337d0fedcbb186e44e83597989f49502efe55fcde6605f9c29b69d8dbe` |
| `docs/tracks/I/design/PART123-LEAN-DESIGN.md` | `34436a69c1f582d7e1a711b8e2ffcb57e6c97ebaef70b2e22b110e417f4ac1dd` |
| `docs/graph/I/DEPGRAPH.md` | `1ef3cc4e6a297b1922212ff1d5ddf6a94e2efb3b2a7350dab784842b5383151e` |
| `KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean` | `7d04c9e99e9e52113212f3a47ee749e577e8ffbf404085615df14d4707300922` |
| `KAM/Frozen/Theorems/VolumeNotDiophantineLe.lean` | `81ec5d7d7edbc2cd3928a676853a492dbecc2010621108f4f2ca520f5ef13021` |
| `/root/code/KAM-inp/docs/tracks/I/design/PART58-LEAN-DESIGN.md` | `dd8e40b911ed6fc0e9e6f36c303cebcda7f4e9025e97743ad563e4a1bc45ed08` |
| `/root/code/KAM-inp/KAM/Iso/Confinement/Setting.lean` | `09a93dee2c1e3d94b9d5fd3a9a5d3665937ea8dcef140270c4038e3c67239be2` |

Elaboration used `/root/code/KAM` at `7428a8ffaa20aa4e964f814fd4e7bc264753d52b`. The live inp comparison used `/root/code/KAM-inp` at `0892ad4f5353dda0b9637f3076736a3b5ebe90ae`. The frozen Iso tree agrees byte for byte between this worktree and main; the graph and two frozen theorem hashes remain those audited in audit 1.

## Delta decisions

Line references below are to the hashed v2 draft unless a document is named explicitly.

| Item | Actual change or check | Verdict |
|---|---|---|
| F1: `apply` (1372–1395) | Its chosen positive `C₁,C₂,C₃` now carry `IG1Body 2 2 … ωs C₁ C₂ C₃` before the local application. The same constants occur in the threshold and closeness bounds. | CLOSED |
| `IG1Body` (160–191) | Full frozen inner body, with no extra hypothesis or weaker output; text comparison agrees after whitespace and qualification normalization. Independent `rfl` equality to a body extracted directly from the frozen file succeeds. | PASS |
| `IG1Statement` (194–199) | Same outer binders and existential positive constants, now referring to `IG1Body`. Independent `rfl` equality with the frozen theorem type succeeds. | PASS |
| `g1_explicit` (1113–1126), D20 | Same fixed constants and binder order; an independent `rfl` equality with its v1 expanded type succeeds. The existing exact frozen provider check still elaborates. | PASS |
| F2: `tori` (1421–1437) | Retains actual chart identity, centre membership, chart domain, and fixed per-patch ray data outside perturbation/point/energy quantifiers; output frequencies use those exact rays. | CLOSED |
| `part3_tori_of` (1441–1449) | Written proof discards the newly retained outputs and constructs the original generic Part 5 structures. It elaborates without a new premise. | PASS |
| Provider `part3_tori` (1477–1481) | Full signature unchanged from v1; agrees with inp's Part 5 design statement after expanding its implicit section binders. Original anchor-discharge body still elaborates. | PASS |
| N1: design node table (173), section 10 | Explicitly records the stronger K Standing range as a specialization sufficient for I-G1, rather than formalization of the whole `τ ≥ 0` range. | ADDRESSED |

### F1 closure

The new leading conjunction retains the **whole** conditional gate at the selected tuple, including arbitrary `D,H,K,s,γ,e,E₀`, rather than only its specialization to the flat torus of `h+f`. Its parameters are exactly `n=2`, `τ=2`, `ρ=rhoIso`, `ρinf=rhoInf`, the data-dependent M and frame bounds, margin μ, `γbar=γ`, and the fixed ray and endpoint parameters. The existential constants are still chosen before `f,ε,E`. Thus the leading witness/body projection implements `bpI:p3:apply#constants`, while the final projection implements the local application.

Refutation check: the property is attached to the **same** existential constants; it is neither a fresh existential tuple nor an assumed local conclusion. Unfolding `IG1Body` retains all five Hamiltonian bounds, inverse row sums, both endpoint inequalities, gamma upper bound, nonnegative error, strict smallness, pointwise energy, output margins, and both closeness estimates. The previous F1 objection no longer applies.

### F2 closure

The outer witnesses now include `γp,γm,ωsp,ωsm` as functions on the patch carrier. Before `∀ f ε … ∀ I₀ … ∀ E …`, the result states for every selected patch:

```lean
p.c ∈ closure B' ∧ p.W ⊆ chartDom h B r₀ p.c ∧ p.m = chartM h p.c ∧
  IsRay h B B' p.c (γp p) (ωsp p) p.mPlus ∧
  IsRay h B B' p.c (γm p) (ωsm p) p.mMinus
```

Inside the torus output, the new scalar witnesses satisfy `1 < sp,sm < sigmaOmegaConst` and `ωp = sp • ωsp p`, `ωm = sm • ωsm p`. The numerical and ray choices therefore have the required uniformity. Functions may have arbitrary total values off `patches`; no statement uses those values.

Refutation check: the old coordinate-negation/swap test is now excluded by `p.m = chartM h p.c`. The EnergyPatch inverse identities and signed slope windows, together with `ToriSide.base`, give T7 in the actual gradient-direction chart. The bounds on the torus output frequencies refer to the fixed rays, so `ToriSide.ray`'s additional local existential cannot replace those outer choices. The original inputs of `tori` are unchanged. The strengthened theorem remains distinct from its weaker generic projection.

### Premises, dependency direction and Part 5

Rule 6 remains **PASS**. `IG1Body` is a definition of an upstream source theorem body; `apply` produces its validity at chosen constants as an output. Neither `apply` nor `tori` gains an input hypothesis. The whole-premise equality checks show that neither I-G1 nor G3 is silently strengthened. D20 introduces only a light `Charts/Inputs` dependency into `Apost/G1`; the proposed Inputs module uses frozen definitions and Mathlib, so it does not create a Part 2/Part 3 proof cycle or require a provider import.

The updated projection proof skips the four ray functions, patch metadata, and selected scalar-frequency witnesses, then constructs ChartCover/ToriExistence exactly as before. Provider-level `part3_tori` still discharges its two source premises with the actual anchors. All **13/13** copied Part 5 declarations match the live inp `KAM/Iso/Confinement/Setting.lean` individually after stripping comments and whitespace. The provider signature matches both v1 and the Part 5 design's `part3_tori` at inp lines 1387–1389; no source `part3_tori` implementation was assumed to exist in inp's stub provider.

N1 is resolved as documentation of scope, not by changing a source theorem or weakening the frozen I-G1. Its restriction applies to the Setting-dependent Part 1 helpers; independent helpers such as the bordered solve can retain their broader explicit ranges. No full-range `τ ≥ 0` formalization claim follows from this acceptance.

## Independent verification

A temporary probe `.lake/abi-scratch/I123DeltaAudit2.lean` in main contained the full v2 draft with comments/blank lines removed, plus an independently extracted frozen inner body, a renamed copy of the v1 `g1_explicit` statement, four `rfl` type-equality checks, and five axiom queries. It had **1238 lines**. In particular it checked:

```lean
-- AuditFrozenBody is extracted directly from the frozen theorem file.
example : KAM.Iso.Charts.IG1Body = KAM.Iso.Charts.AuditFrozenBody := rfl
example : (type_of% @KAM.Iso.isoenergetic_kam) = KAM.Iso.Charts.IG1Statement := rfl
example : (type_of% @KAM.volume_not_diophantine_le) = KAM.Iso.Charts.G3Statement := rfl
-- auditOldG1 is the v1 expanded statement, independently copied from the v1 appendix.
example : (type_of% @KAM.Iso.Apost.g1_explicit) =
    (type_of% @KAM.Iso.Apost.auditOldG1) := rfl
```

The v2 draft's existing `example : type_of% @KAM.Iso.isoenergetic_kam := …`, both anchor-premise applications, the explicit-g1 premise discharge, and the actual projection/provider terms were also elaborated as part of this run.

- `cd /root/code/KAM && LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I123DeltaAudit2.lean`: **exit 0**, 46 warnings, all `declaration uses sorry`, zero errors or other diagnostics. This is the draft's 45 expected sorry warnings plus the copied v1 comparison statement. Log: `/tmp/i123-delta-audit2-lean.log`.
- Worktree `scripts/lint_sources.sh`: **exit 0**. Output: `check_lean_modules: PASS (262 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (144 frozen declarations)`. Log: `/tmp/i123-delta-audit2-lint.log`.
- After the probe completed, main `LEAN_NUM_THREADS=1 nice -n 5 lake build KAM.Apost.G1`: **exit 0**, `Build completed successfully (3196 jobs).` This was a targeted incremental check against the existing snapshot. Log: `/tmp/i123-delta-audit2-build.log`.

No heartbeat, recursion-depth or synthesis-heartbeat override was used. The direct Lean probe and targeted build were run sequentially. The temporary probe was deleted after inspection. No production Lean file was created or changed.

The axiom receipts remain:

```text
'KAM.Iso.Apost.g1_explicit' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Iso.Charts.part3_tori_of' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Provider.Iso.part3_tori' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Iso.isoenergetic_kam' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.volume_not_diophantine_le' depends on axioms: [propext, Classical.choice, Quot.sound]
```

## Closeout

No new defect, source erratum, or unreported mathematical deviation was found in this delta. No corrected signature is required. Audit 1's N2 remains the expected production-landing/proof-completion qualification: this excluded draft is not a proved library module, and I-G1 is still sorry-backed in the tested snapshot. No seal, clean-axiom result for I-G1, full analytic proof audit, or completed integration of the proposed modules is certified here.

Only `docs/tracks/I/design/PART123-design-audit-2.md` was added as this turn's deliverable. No state-changing git command, frozen-file edit, or modification of audit 1 was performed. **Delta closeout: F1 CLOSED; F2 CLOSED; N1 ADDRESSED; exact frozen-type and unchanged Part 5 interface checks PASS.**
