# I-D0 independent audit 1

**Overall: FAIL for full definition-semantic admission; PASS for design-v2 transcription, exact frozen-type factoring, all three bridges, and import quarantine.** The single blocking finding F1 concerns the two limit selectors. It is a missing well-definedness/characterization gate, not a counterexample to I-G1 or a failed kernel check. The remaining 83 declarations pass their bounded I-D0 checks.

Audit date: 2026-10-28. Auditor worktree: `/root/code/KAM-inp-id0`. This is a focused tier-2, report-only audit. The user explicitly overrides the brief's main-worktree output instruction: this report belongs in this worktree. No source, frozen file, manifest, generated file, dependency source, or git state was changed; targeted builds updated build artifacts only. Temporary probes and evidence were confined to `.lake/abi-scratch/` and removed after extraction.

## Snapshot and acceptance criteria

Audited HEAD: `f2f0b0b56f485a2a6ae71b0c16c2d01819ba4c75`. Initial `inp`: `2dc2c5afd96498a9908350f8454cfd2346ad5c6d`; `inp` advanced concurrently to `06c424f049b3d6636d5e671a347d85fc5194c0d9`. A later observed inp revision was `4508821a8446130662b3efc449981289f66e839e`. The three-dot merge base is `9415aec0ff2ff12402d6556302a5ce5406aeb353`; the requested `git diff inp...HEAD` still consists of the same four added files, 628 lines. HEAD and the audited file hashes stayed fixed.

Criteria: independently compare every landed declaration to the pinned v2 signatures; inspect bodies and whole carriers; expand structure fields and distinguish assumptions from outputs; check exact frozen-type equality and the three bridges; inspect the transitive production import closure; run targeted builds, all new theorem axiom queries, one kernel replay, lint, and forbidden-path/diff checks. Prior design acceptance is evidence, not a replacement for these checks.

| Input | SHA-256 |
|---|---|
| `KAM/Iso/Linear/Defs.lean` | `f08cbdb606c96d8290c31f1c66009cc2cf66c74e463a65a6eec7602189383844` |
| `KAM/Iso/Apost/Defs.lean` | `2e533d62fe1239b2b77ca202d9472206099e05a14e769992a027460953bb6008` |
| `KAM/Iso/Charts/Inputs.lean` | `a8f405840e6a94be71deeb6632aba601e237961933f3d4e26e81e5bb21ad3bfe` |
| `KAM/Iso/Charts/Defs.lean` | `204bdaa63495090382b0563cd2a9bfa734791d10822a20d703c448a6c56bde50` |
| `docs/tracks/I/design/PART123-LEAN-DESIGN.md` | `34436a69c1f582d7e1a711b8e2ffcb57e6c97ebaef70b2e22b110e417f4ac1dd` |
| `blueprint-I/parts/p1-iso-linear.tex` | `96892529ec86381a018c227e239993da5aa6e793144600505668057df0cfc70b` |
| `blueprint-I/parts/p2-iso-iteration.tex` | `f2bcdff3e5bd29a51e0246740f69e0bbd6419b925d8ae037b4e89ccf7a288968` |
| `blueprint-I/parts/p3-iso-local-charts.tex` | `78f529636a4615405c7a5f74cfe143914d62a59be1f582adb5deecf451e83827` |
| `/root/code/KAM-inp-design-i123/.drafts/design/IPart123Signatures.lean` | `2b7c6e337d0fedcbb186e44e83597989f49502efe55fcde6605f9c29b69d8dbe` |

The current v2 design and both design audits were read, including the v1 F1/F2 findings and their v2 closure. The pinned signature hash is exactly the handoff/design hash. AGENTS.md, PLAN.md, DECISIONS.md, the package brief and handoff, track-I statements, relevant frozen definitions, and blueprint Parts 1–3 supply the interpretation. No original HL19/Pos01 PDF re-audit or new proof of their results was attempted.

## Anchor and package status

| Anchor/surface | Verdict | Meaning |
|---|---|---|
| I-D0 transcription and bridges | PASS | 85/85 declarations match after comment/whitespace removal; 74 defs, 8 structures, 3 theorems. |
| I-D0 whole-carrier semantic admission | FAIL | F1: `isoLimit`, `isoSLimit` are uncharacterized choice-based limit selectors. |
| `iso.isoenergetic_kam.v1`, `KAM.Iso.isoenergetic_kam` | PASS WITH NOTES | Exact statement/body factoring only. Manifest state `DRAFT_SORRY`; no provider implementation or seal is delivered by I-D0. |
| `kam.volume_not_diophantine_le.v1`, `KAM.volume_not_diophantine_le` | PASS WITH NOTES | `G3Statement` is exactly its type; the existing sealed theorem is unchanged. |

I-G1: `DECLARATION_FIDELITY: PASS`; `DRAFT_ALLOWLIST: PASS` (guard/ABI checks below); `PROOF_STATUS: FROZEN_UNPROVED`. There is no new seal-ready theorem claim. The existing G3 proof is clean; its source proof was outside this audit's scope.

## F1 — blocking semantic admission gap: the limit objects have no proved characterization

Anchors at the frozen audit revision: `KAM/Iso/Apost/Defs.lean:203–212`:

```lean
-- isoLimit, on the final strip:
limUnder atTop (fun j => (isoSeq H K ωstar E₀ s₀ ρ ρinf j).1 θ)
-- isoSLimit:
limUnder atTop (fun j => (isoSeq H K ωstar E₀ s₀ ρ ρinf j).2)
```

Blueprint `p2-iso-iteration.tex:294–304` defines these as the limits **in the setting of the iteration proposition** and asserts “the limits exist”. The Lean exports quantify over arbitrary H, K, ray, energy and widths, with no source-carrier restriction. There is no proved project theorem in this package establishing existence/uniqueness of either limit or identifying these exports with those limits. In the pinned signatures, `limit` at line 1063 and `energy_limit` at line 1090 still have `sorry` bodies and are not landed.

This is a characterization-defined object: its mathematical meaning is the unique limit, rather than an independently specified finite formula. Mathlib's actual `Filter.limUnder` is `Filter.lim (Filter.map ...)`, and `Filter.lim` is `Classical.epsilon` (`Mathlib/Topology/Defs/Filter.lean:260–268`). `limUnder_of_not_tendsto` (`Mathlib/Topology/Basic.lean:249–253`) explicitly returns `Classical.choice` of a `Nonempty` instance when no limit exists. Thus mere elaboration and axiom cleanliness do not identify the returned value with a mathematical limit. No claim is made here that a nonconvergent example satisfies the iteration hypotheses.

**Separate refutation pass: SURVIVED as a missing semantic gate.** I checked four possible rebuttals: (1) the code matches the previously audited design exactly — true, but identity is not well-definedness; (2) the blueprint explicitly prescribes K outside the final strip — true, and that branch is correct, but it does not settle the `limUnder` branch; (3) eventual `limit` will prove convergence — it is currently an unlanded sorry-backed signature; (4) the foundational choice operation is legitimate — yes, once existence and uniqueness establish the source meaning. The existing design audit's “PASS on their advertised guarded uses” is narrower than the requested whole-carrier definition audit. There is no proved guarded-use theorem here either.

The applied `lean-statement-audit` skill requires a proved, independently audited well-definedness result and a separately named sorry-free complete characterization before admitting a characterization-defined object; it explicitly rejects deferring that semantic justification to later theorems. The v2 design describes itself as planning evidence, not owner-approved frozen Lean. This finding does not authorize changing frozen hypotheses or treating convergence as a new theorem premise.

Closeout criterion: supply the actual convergence/existence and Hausdorff uniqueness proof on the source carrier, together with sorry-free characterization theorems for these definitions, and resolve the unrestricted public carriers; alternatively keep these two selectors outside the semantically admitted landing until that package is complete. Do not count adding a convergence assumption to I-G1 as a repair. No repair was made here.

For each of `isoLimit` and `isoSLimit`:

```text
BODY_MATCH: OK (literal signature transcription)
PUBLIC_CARRIER: FAIL (unrestricted selector versus source iteration setting)
WELL_DEFINEDNESS: FAIL (source limit existence/uniqueness not proved here)
CHARACTERIZATION: FAIL (no landed sorry-free characterization)
CHOICE_INDEPENDENCE: FAIL (no proved source uniqueness attachment)
DEFINITION_VERDICT: FAIL
```

## Definitions, assumptions, and normalizations

All other definitions have literal bodies: explicit matrix/vector formulas, recurrence equations, extrema formulas, predicates, or record assembly. They use `Fin n → ℝ`, `Fin n → ℂ`, and the frozen bordered carrier `Fin n ⊕ Unit`. Both matrix-definition modules open `Matrix.Norms.Operator`, so the inverse bounds use row-sum norms. No EuclideanSpace or norm substitution occurs. All four modules have copyright, `module`, public imports, docstring, and `@[expose] public noncomputable section`.

`bordMat` has the intended four blocks for every input, including the zero corner; `energyRow` is precisely the frozen last row. `bordSol` uses the bordered inverse, not the ordinary torsion inverse. The bordered signs, `ξN = ξ0 - triU`, `gL = T ξN + ω ξω - ηL`, `ηω = -(energyAverage-E₀)`, and `s̄ = s(1-Re ξω)` agree with the source sign dictionary. The future correction theorem must prove the imaginary part vanishes before interpreting the real update as the complex frequency correction.

`isoNewtonMap`'s off-strip branch is **not** a finding: blueprint `p2-iso-iteration.tex:169` explicitly says “K̄ := K elsewhere”. `isoSeq` uses the current pair for both updated components and width `rSeq-2*deltaSeq`; its initial pair is `(K,s₀)`. The recurrences and constant dependencies match the literal formulas. No positivity, convergence, smallness estimate, bordered solvability, or torus existence has been proved merely by landing these definitions.

The `sInf`/`sSup`, derivative, integral, inverse and division expressions are literal total operations, consistent with blueprint `p0-conventions.tex:184–210`. Their source-use guards still require the advertised proofs: compactness/nonemptiness for extrema, nonsingularity for inverse identities, holomorphy for derivatives, integrability for average identities, and denominator positivity for estimates. This audit does not promote their downstream specifications to proved results. The two limit selectors differ in that their source definition itself selects the uniquely characterized limit, and its existence/uniqueness attachment is absent.

`IG1Body`, `IG1Statement`, and `G3Statement` are transparent internal encodings of existing upstream theorem contracts, explicitly required by the audited design. They do not assert those contracts. The whole I-G1 type equality also checks quantifier order, constants chosen before D/H/K/s/γ/e/E₀, all five Hamiltonian bounds, inverse row sums, endpoint margins, strict smallness, pointwise energy and both closeness estimates. G3 adds neither a positivity premise on C nor measurability of Ω.

| Structure | Expanded logical/data content and classification | Rule 6 |
|---|---|---|
| `Linear.Setting` | Inherited Params: n≥2, τ≥n−1, positive M/σ. Inherited Standing: open/translation-invariant D, holomorphic/periodic/real H, X/DX/D²X bounds, positive γ and Dio. Additional DH bound. All SOURCE/STANDING; specialization documented. | PASS |
| `Linear.BordData` | ηL, ηN, T, Y, ηω only; no proof fields. TYPING. | PASS |
| `Linear.AdmissibleNoTwist` | Positive r/β, 0≤ε≤1; holo/primary/real K; ball inclusion; DK and inverse Gram bounds; invariance-error bound. SOURCE from A1–A4/A6/B1–B4/B6. No ordinary torsion assumption. | PASS |
| `Apost.IsoStanding` | Params; σω>1, ν>0, ωstar≠0; open/invariant D; holo/periodic/real H; the exact five bounds; γ>0, Dio ωstar. SOURCE, I1–I4 and standing data. | PASS |
| `Apost.IsoAdmissible` | All AdmissibleNoTwist fields at s•ωstar; s>1; **bordered** inverse condition; energy-error bound. SOURCE, B1–B7. | PASS |
| `Apost.IterHyp` | Holo/primary/real, initial ball and DK margin; initial Gram/bordered inverse margins; s₀>1 and ν≤rayMargin; initial invariance/energy error. SOURCE, iteration hypothesis list; no assertion about iterates or limits. | PASS |
| `Charts.IsPatch` | Centre in closure B′, open W, domain/B/ball inclusions, C¹ chart/inverse, open image, inverse identities, positive windows/radius, rectangle and ball properties. Literal patch certificate, P1–P3 and chart data; produced by future `cover`. | PASS |
| `Charts.ToriSide` | Inherits all eight TorusOutput fields (holo, primary, real, invariance, energy, closeness, du/dv bounds), plus base/ray/level/near/action/margins. This is an OUTPUT certificate T1–T7, not standing hypotheses. | PASS as output definition |

The last row is deliberately not classified as “only standing data”: it records proof conclusions, but I-D0 exports no theorem assuming it in order to manufacture torus existence. Similarly IsPatch is the certificate that `cover` must construct. Merely defining either certificate does not smuggle its existence into a proof. `IsPatch.toEnergyPatch` only assembles the existing fields and two explicit signed slope-window inputs; it assumes no chart-existence theorem.

The Part-1 τ≥n−1 specialization is the disclosed design departure D2/N1, sufficient for I-G1; no full-range τ≥0 theorem is certified. `IG1Statement`/`G3Statement` will be explicit upstream dependencies of separately named conditional helpers; no provider theorem is supplied or assumed in this landing.

For the 80 remaining defs/structures: BODY_MATCH OK; PUBLIC_CARRIER OK as literal total formulas/certificates; WELL_DEFINEDNESS and CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A for new source-object selection; DEFINITION_VERDICT PASS. Existing Mathlib/frozen total operations are subject to the guards above. The three bridge theorems are audited separately below.

## Declaration ledger

Each row independently matched the pinned signature command (including body and fields) modulo comments/whitespace. `L`, `A`, `C` abbreviate `KAM.Iso.Linear`, `KAM.Iso.Apost`, `KAM.Iso.Charts`; line is in the corresponding landed file in the snapshot table. Rows are individual declarations, not generated record projections.

| Node/group | Lean declaration | Line | Verdict | Classification/reason |
|---|---|---:|---|---|
| `p1:setting` | `L.Setting` | 45 | PASS | Literal structure; field expansion above |
| `p1:extended-basic` | `L.energyRow` | 53 | PASS | Literal formula; signature match |
| `p1:extended-basic` | `L.bordMat` | 58 | PASS | Literal formula; signature match |
| `p1:extended-basic` | `L.extendedTorsion_eq_bordMat` | 62 | PASS | Elementary bridge; clean axioms; kernel replay |
| `p1:border-solve` | `L.BordData` | 69 | PASS | Literal structure; field expansion above |
| `p1:border-solve` | `L.bordAvg` | 77 | PASS | Literal formula; signature match |
| `p1:border-solve` | `L.bordSol` | 81 | PASS | Literal formula; signature match |
| `p1:border-solve` | `L.bordXi0` | 85 | PASS | Literal formula; signature match |
| `p1:border-solve` | `L.bordXiOmega` | 86 | PASS | Literal formula; signature match |
| `p1:border-solve` | `L.bordXiN` | 89 | PASS | Literal formula; signature match |
| `p1:border-solve` | `L.bordGL` | 93 | PASS | Literal formula; signature match |
| `p1:border-solve` | `L.bordXiL` | 97 | PASS | Literal formula; signature match |
| `p1:reduced` | `L.isoLinError` | 101 | PASS | Literal formula; signature match |
| `p1:reduced` | `L.isoResidual` | 109 | PASS | Literal formula; signature match |
| `p1:border-solve` | `L.bordOp` | 117 | PASS | Literal formula; signature match |
| `p1:geometry-noA5` | `L.AdmissibleNoTwist` | 124 | PASS | Literal structure; field expansion above |
| `p2:standing` | `A.IsoStanding` | 46 | PASS | Literal structure; field expansion above |
| `p2:ray` | `A.rayMargin` | 65 | PASS | Literal formula; signature match |
| `p2:admissible` | `A.IsoAdmissible` | 69 | PASS | Literal structure; field expansion above |
| `p2:constants` | `A.hatCS` | 82 | PASS | Literal formula; signature match |
| `p2:constants` | `A.hatCxiN` | 84 | PASS | Literal formula; signature match |
| `p2:constants` | `A.hatCg` | 85 | PASS | Literal formula; signature match |
| `p2:constants` | `A.hatCxi` | 87 | PASS | Literal formula; signature match |
| `p2:constants` | `A.hatCDK` | 88 | PASS | Literal formula; signature match |
| `p2:constants` | `A.hatCDelta` | 89 | PASS | Literal formula; signature match |
| `p2:constants` | `A.CP` | 91 | PASS | Literal formula; signature match |
| `p2:constants` | `A.hatCpartial` | 92 | PASS | Literal formula; signature match |
| `p2:constants` | `A.hatClin` | 94 | PASS | Literal formula; signature match |
| `p2:constants` | `A.hatCE1` | 97 | PASS | Literal formula; signature match |
| `p2:constants` | `A.hatCE2` | 100 | PASS | Literal formula; signature match |
| `p2:constants` | `A.hatCE` | 103 | PASS | Literal formula; signature match |
| `p2:constants` | `A.CY` | 104 | PASS | Literal formula; signature match |
| `p2:constants` | `A.CDTbord` | 106 | PASS | Literal formula; signature match |
| `p2:constants` | `A.hatcStep` | 107 | PASS | Literal formula; signature match |
| `p2:constants` | `A.hatcSum` | 109 | PASS | Literal formula; signature match |
| `p2:constants` | `A.hatcStar` | 111 | PASS | Literal formula; signature match |
| `p2:correction` | `A.dStep` | 116 | PASS | Literal formula; signature match |
| `p2:correction` | `A.isoBordData` | 121 | PASS | Literal formula; signature match |
| `p2:correction` | `A.isoXi` | 127 | PASS | Literal formula; signature match |
| `p2:correction` | `A.isoXiOmega` | 131 | PASS | Literal formula; signature match |
| `p2:correction` | `A.isoCorrection` | 136 | PASS | Literal formula; signature match |
| `p2:correction` | `A.isoNewS` | 142 | PASS | Literal formula; signature match |
| `p2:newton-error` | `A.isoNewtonMap` | 148 | PASS | Literal formula; signature match |
| `p2:newton-error` | `A.isoQuadX` | 154 | PASS | Literal formula; signature match |
| `p2:newton-error` | `A.isoQuadH` | 160 | PASS | Literal formula; signature match |
| `p2:schedule` | `A.isoEpsSeq` | 166 | PASS | Literal formula; signature match |
| `p2:schedule` | `A.isoDSeq` | 173 | PASS | Literal formula; signature match |
| `p2:iteration` | `A.isoSeq` | 177 | PASS | Literal formula; signature match |
| `p2:iteration` | `A.IterHyp` | 186 | PASS | Literal structure; field expansion above |
| `p2:limit` | `A.isoLimit` | 204 | FAIL | F1: missing source limit characterization |
| `p2:limit` | `A.isoSLimit` | 210 | FAIL | F1: missing source limit characterization |
| `p2:g1` | `A.isoC1` | 215 | PASS | Literal formula; signature match |
| `p2:g1` | `A.isoC2` | 220 | PASS | Literal formula; signature match |
| `p0:g1` | `C.IG1Body` | 46 | PASS | Exact upstream contract; rfl body/type checks |
| `p0:g1` | `C.IG1Statement` | 80 | PASS | Exact upstream contract; rfl body/type checks |
| `K:p0:g3` | `C.G3Statement` | 88 | PASS | Exact upstream contract; rfl type check |
| `p3:setting#k-bridge` | `C.fractD_eq_domainD` | 46 | PASS | Elementary bridge; clean axioms; kernel replay |
| `p3:setting#k-bridge` | `C.totalH_eq_hbold` | 49 | PASS | Elementary bridge; clean axioms; kernel replay |
| `p3:constants` | `C.rhoIso` | 53 | PASS | Literal formula; signature match |
| `p3:constants` | `C.dB` | 56 | PASS | Literal formula; signature match |
| `p3:constants` | `C.eta1` | 59 | PASS | Literal formula; signature match |
| `p3:constants` | `C.sSet` | 61 | PASS | Literal formula; signature match |
| `p3:constants` | `C.mhConst` | 63 | PASS | Literal formula; signature match |
| `p3:constants` | `C.MgConst` | 65 | PASS | Literal formula; signature match |
| `p3:constants` | `C.ShConst` | 68 | PASS | Literal formula; signature match |
| `p3:constants` | `C.nuConst` | 71 | PASS | Literal formula; signature match |
| `p3:constants` | `C.sigmaOmegaConst` | 72 | PASS | Literal formula; signature match |
| `p3:constants` | `C.sigmaKConst` | 75 | PASS | Literal formula; signature match |
| `p3:constants` | `C.sigmaTConst` | 76 | PASS | Literal formula; signature match |
| `p3:constants` | `C.epsT` | 78 | PASS | Literal formula; signature match |
| `p3:coordinates` | `C.perp` | 83 | PASS | Literal formula; signature match |
| `p3:coordinates` | `C.det2` | 84 | PASS | Literal formula; signature match |
| `p3:coordinates` | `C.aCoord` | 85 | PASS | Literal formula; signature match |
| `p3:coordinates` | `C.bCoord` | 86 | PASS | Literal formula; signature match |
| `p3:coordinates` | `C.slope` | 87 | PASS | Literal formula; signature match |
| `p3:coordinates` | `C.hessR` | 89 | PASS | Literal formula; signature match |
| `p3:coordinates` | `C.chartDom` | 92 | PASS | Literal formula; signature match |
| `p3:coordinates` | `C.chartM` | 95 | PASS | Literal formula; signature match |
| `p3:coordinates` | `C.chartPhi` | 97 | PASS | Literal formula; signature match |
| `p3:coordinates` | `C.jac2` | 99 | PASS | Literal formula; signature match |
| `p3:patch` | `C.IsPatch` | 104 | PASS | Literal structure; field expansion above |
| `p3:patch` | `C.IsPatch.toEnergyPatch` | 129 | PASS | Literal formula; signature match |
| `p3:rays` | `C.IsRay` | 139 | PASS | Literal formula; signature match |
| `p3:torus` | `C.flatRemainder` | 145 | PASS | Literal formula; signature match |
| `p3:tori` | `C.ToriSide` | 151 | PASS | Literal output certificate, not an existence premise |

## New theorem binders and exact frozen probes

The bridge binders are all TYPING inputs; no logical hypotheses occur. Explicitness and order agree with the signatures. Counts: SOURCE 0, STANDING 0, TYPING 10, RULED 0, EXCESS 0.

| Declaration | Expanded binder | Bin | Source/role |
|---|---|---|---|
| `extendedTorsion_eq_bordMat` | `{n : ℕ}` | TYPING | Frozen extendedTorsion dimension |
| same | `H : ℂⁿ×ℂⁿ → ℂ` | TYPING | Frozen Hamiltonian carrier |
| same | `K : ℂⁿ → ℂⁿ×ℂⁿ` | TYPING | Frozen parameterization carrier |
| same | `ω : ℝⁿ` | TYPING | Frozen frequency carrier |
| same | `θ : ℂⁿ` | TYPING | Evaluation point |
| `fractD_eq_domainD` | `B : Set (Fin 2 → ℝ)` | TYPING | p3 constants, action domain |
| same | `s₀ : ℝ` | TYPING | p3 constants, strip parameter |
| same | `r₀ : ℝ` | TYPING | p3 constants, action radius |
| `totalH_eq_hbold` | `h : (Fin 2 → ℂ) → ℂ` | TYPING | p3 setting, integrable Hamiltonian |
| same | `f : (Fin 2 → ℂ)×(Fin 2 → ℂ) → ℂ` | TYPING | p3 setting, perturbation |

The standalone scratch probe imported the four landed modules and the two anchors, then defined `AuditFrozenBody` by extracting the inner `∀ D H K ...` body directly from the actual frozen I-G1 file (not the signature or Inputs). It checked:

```lean
example : AuditFrozenBody = KAM.Iso.Charts.IG1Body := rfl
example : (type_of% @KAM.Iso.isoenergetic_kam) = KAM.Iso.Charts.IG1Statement := rfl
example : (type_of% @KAM.volume_not_diophantine_le) = KAM.Iso.Charts.G3Statement := rfl
```

`LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/ID0Probe.lean`: **exit 0**, no warnings/errors, followed by these exact axiom receipts:

```text
'KAM.Iso.Linear.extendedTorsion_eq_bordMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.fractD_eq_domainD' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.totalH_eq_hbold' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.isoenergetic_kam' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.volume_not_diophantine_le' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The `sorryAx` is confined to the already-frozen draft I-G1, imported only in scratch for type equality, not a dependency of the four new modules. A source import-closure traversal visited **81 project modules**, finding **zero** frozen-theorem or provider edges. Every new theorem has the permitted standard foundations only.

## Verification evidence

All auditor Lean invocations were sequential, with `LEAN_NUM_THREADS=1` and `nice -n 5`. No heartbeat, recursion-depth, or synthesis override was used. No dependency build was requested. Each of the following gate commands exited 0, in this order:

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-id0 KAM.Iso.Linear.Defs
# [inp-gate] slot 1 acquired 01:41:38 for KAM.Iso.Linear.Defs
# Build completed successfully (3178 jobs).
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-id0 KAM.Iso.Apost.Defs
# [inp-gate] slot 1 acquired 01:42:19 for KAM.Iso.Apost.Defs
# Build completed successfully (3181 jobs).
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-id0 KAM.Iso.Charts.Inputs
# [inp-gate] slot 1 acquired 01:42:39 for KAM.Iso.Charts.Inputs
# Build completed successfully (2740 jobs).
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-id0 KAM.Iso.Charts.Defs
# [inp-gate] slot 1 acquired 01:42:52 for KAM.Iso.Charts.Defs
# Build completed successfully (3229 jobs).
```

Charts.Defs replayed an existing warning in `KAM/ODE/Exit.lean:36`: “automatically included section variable(s) unused in theorem KAM.ODE.gen_exit: [NormedSpace ℝ E]”. This is an unchanged dependency warning, not a new I-D0 warning. No warning originated in the four new files.

One kernel invocation:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Linear.Defs KAM.Iso.Apost.Defs KAM.Iso.Charts.Inputs KAM.Iso.Charts.Defs
```

**Exit 0**, exact output:

```text
replaying KAM.Iso.Charts.Defs
replaying KAM.Iso.Charts.Inputs
replaying KAM.Iso.Apost.Defs
replaying KAM.Iso.Linear.Defs
```

The handoff's full scratch consumer was also tested independently. An initial invocation retaining all original signature imports failed because `KAM/Apost/G1.olean` is absent from this worktree overlay. This was an optional consumer probe, not a failure of any landed module. I did not rebuild that unrelated module. After stripping removed declarations' orphaned documentation comments and retaining only the needed imports (the four landed modules, existing Part-5 Setting, existing `KAM.Apost.NewtonError` for `sMat`, and the two frozen anchors), the entire remaining v2 signature consumer elaborated against the landed definitions:

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/ID0Consumer.lean
```

**Exit 0; exactly 45 warnings, all `declaration uses sorry`; zero errors or other warnings.** These holes belong exclusively to the excluded design signatures, not production Lean. The consumer retained all theorem statements and the written projection/provider/premise-check bodies. This verifies signature consumption and implicit section scopes, not the missing analytic proofs. The successful narrowed-import probe uses no `KAM.Apost.G1` object.

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

**Exit 1 solely for the explicitly permitted stale generated-root line.** Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (320 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

No forbidden source token, override, oversize file, module-system error, frozen hash drift, or ABI drift was reported.

`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty, exit 0. `git diff --check inp...HEAD`: empty, exit 0. Four file sizes: Linear/Defs 141, Apost/Defs 225, Charts/Inputs 94, Charts/Defs 168; all below 1500. The root-import warning is the explicitly allowed generated-root exception; no generated file was repaired.

## Reproducible transcription check

The independent Python comparison used `scripts/check_lean_modules.py:code_mask` and command boundaries. It counted every top-level def/abbrev/structure/theorem in the four new files, matched each unique declaration name in the pinned signatures, and compared complete command text after masking comments and removing whitespace. Boundaries were the next column-zero declaration, namespace/end/open/section/variable/example/import/module or attribute command. No bodies or fields were omitted. The output was:

```text
KAM/Iso/Linear/Defs.lean 16
KAM/Iso/Apost/Defs.lean 37
KAM/Iso/Charts/Inputs.lean 3
KAM/Iso/Charts/Defs.lean 29
TOTAL 85 MATCH 85
```

This comparison is lexical, not a claim of byte identity of whole files: headers, imports, docstrings, unused section-variable blocks, and three line reflows differ as disclosed in the handoff. The separate Lean body/type equalities and consumer test address semantic scope effects. A smaller proof dependency (Triangular for triU) and omission of the unused Head.Adapters import do not change the checked contracts.

## Blueprint/source defects, deviations, and closeout

**Existing blueprint wording defect, low severity:** `blueprint-I/parts/p3-iso-local-charts.tex:76` defines `e := F₁ ε`, but line 78 says “All of these depend only on ... and not on ... ε”. Literally e depends on ε. Refutation: reading “all” as referring only to fixed constants repairs the prose, but the displayed list includes e and C_e, so that restriction is unstated. This is already recognized by the design's choice to keep e inline; the landing introduces no ε-independent e declaration. Suggested editorial correction: exclude e from the independence sentence and retain `C_e = F₁` as the fixed coefficient. No pinned-PDF erratum is asserted.

F1 is an inherited **design admission gap**, not an implementation transcription deviation. The confirmed semantic claim is limited: the raw selectors are real Lean definitions with clean foundations, but their source limits are not yet characterized. No incorrect analytic theorem has been proved. No new suspected HL19 or Pos01 defect was discovered. No source or code correction was performed.

Closeout: all 85 declarations inventoried and classified; all three new theorem binders audited; exact frozen body/type bridges checked; all four targeted builds and one kernel replay passed; import quarantine checked; lint and final report checks recorded. F1 remains open. I-G1 is still FROZEN_UNPROVED. This report completes the audit, not the proof package's semantic admission or a seal.
