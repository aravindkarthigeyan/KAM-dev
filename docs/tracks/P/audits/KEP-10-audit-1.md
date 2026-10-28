# Independent KEP-10 package audit 1

**Overall verdict: PASS WITH NOTES.** All 15 new public theorems and the public definition match the current design, and the theorem proofs pass the axiom and kernel checks. The only hygiene exception is the explicitly permitted stale generated root; remaining build messages are unused-variable warnings. This is an infrastructure-package acceptance, not a seal of an I/N/P frozen headline theorem.

## Scope and frozen inputs

Independent, refute-first tier-2 audit on 2026-10-28. Worktree `/root/code/KAM-inp-kep10`; HEAD `95c1408ae70b0a2b04677d34239c2b01c0b193dd`; comparison ref `inp` = `8cdeed8eb5146d6966577facd7b55a7af8564aa6`. `git diff inp...HEAD` adds only `KAM/Kepler/Mass.lean` (653 lines). The supplied handoff was already untracked. Only this report is a persistent audit edit. The prompt’s exact worktree output path overrides the brief’s generic main-worktree output instruction. No git mutation, source repair, frozen edit, or generated-file regeneration was performed.

Read AGENTS.md, PLAN, DECISIONS, the package brief, the handoff focus, design §§7/7.1/9 and the relevant appendix, design audits 1–3, track statements, source blueprint nodes, and the definitions of the frozen phase, geometry, symplectic form and Hamiltonian vector field. This package has no provider export or manifest-bound theorem anchor to seal; frozen-provider equality and fresh seal-copy checks are therefore N/A. Instead, every new theorem was applied against its independently extracted exact design signature, with every explicit binder supplied in order.

| Input | SHA256 at audit snapshot |
|---|---|
| `KAM/Kepler/Mass.lean` | `4dd6e921d1a8782aab88bec9b9ac63216c656be154161a30e63300bfbf769384` |
| `KAM/Kepler/Energy.lean` | `3825b90b48f052c05ed00ea69adae18524f5ac4fe1ff3ad25679de05338f6abb` |
| `docs/tracks/P/design/KEPLER-LEAN-DESIGN.md` | `7c680968ef6f380e4497823a0333ee989b84cf480755d69e474f2d04826e87c8` |
| `/root/code/KAM-inp/.drafts/design/KeplerSignatures.lean` | `39f557a4ca7324443508351a3600f0a363e2db726a11af0d6cc58e793d521370` |
| `blueprint-I/parts/p7-delaunay.tex` | `a3f650f5c2982ea6e5545efd4294c086103439908cfd2683ec3a836923a6521d` |
| `blueprint-P/parts/p7-kepler-poincare.tex` | `3a10ddf74067a3c7b54184a190710deaba3019c97d2e0d5e9a3773b889cc26ab` |
| `manifest/frozen-anchors.json` | `a7d55a9a566d7d8408d455b1bfb2cc71bb9229baae5d1c547c96d9147159f8f3` |

## Verdict by source node

| Node / anchor role | Verdict | Scope |
|---|---|---|
| `bpI:p7:scaling` | PASS WITH NOTES | Uses the unchanged Energy scaling layer plus the new mass dictionary, vector-field and flow clauses. |
| `bpP:p7:kepler-data` | PASS | Literal mass chart; intended existing Energy definitions reused. |
| `bpP:p7:range` | PASS | Full inequality with positivity from the region guard; design’s pointwise equality characterization. |
| `bpP:p7:kepler` (a)–(d) | PASS | All ten assigned chart/identity/mean/derivative exports match the reviewed design. |

The quotient-diffeomorphism reading is the approved design D3/B6 interface: exact image, injectivity modulo the lattice, and analytic local inverses. This audit does not introduce a quotient manifold. Likewise D11/B7 specifies the pointwise equality case; no new all-time circular-orbit theorem is claimed. Track N has no direct KEP-10 source node (design §7.2).

## Public declaration ledger

All names below have prefix `KAM.Kepler.`; line numbers refer to the pinned Mass hash above. All theorem types, including binder order and implicitness, are identical to the signatures file modulo whitespace (15/15).

| Node | Declaration and line | Verdict | Evidence / meaning |
|---|---|---|---|
| kepler-data | `delaunayMK`, 39 | PASS | Literal `scaleMK m κ (delaunay (w.1, m⁻¹ • w.2))`; equation probe proved by `rfl`. |
| kepler (a) | `delaunayMK_symplectic`, 139 | PASS | Factor `m` from `scaleMK` cancels the factor `m⁻¹` from both action coordinates; frozen symplectic form on both sides. |
| kepler (a) | `analyticOnNhd_delaunayMK`, 147 | PASS | Analytic composition on the entire open `deDom`; positive-mass scaling preserves the domain. |
| kepler (a) | `delaunayMK_periodic`, 157 | PASS | Both radian angles have the exact integer `2π` periods; actions are unchanged. |
| kepler (a) | `delaunayMK_eq_iff`, 162 | PASS | Equality iff both angle differences lie in `2πℤ` and both actions agree. No injectivity assertion on the unquotiented carrier. |
| kepler (a) | `delaunayMK_localDiffeo`, 188 | PASS | Actual open partial homeomorphism, globally equal as a function to the chart, with analytic inverse on its target. |
| range | `cross_le_action`, 261 | PASS | `C ≤ Λ`; `0<C` is the third conjunct of `regionMK`. No circular orbit is excluded. |
| range | `cross_eq_action_iff`, 281 | PASS | Exact design D11 pointwise criterion: `q·p=0 ∧ |q|=a`, in both directions. |
| kepler (a) | `delaunayMK_image`, 406 | PASS | Exact image is the prograde negative-energy non-circular region `C<Λ`. Collision guard retained. |
| kepler (b), (d) | `delaunayMK_identities`, 453 | PASS | All five identities: energy `−κ²m³/(2Λ²)`, cross `C`, action `Λ`, axis `Λ²/(m²κ)`, and radius. |
| kepler (b) | `delaunayMK_position`, 499 | PASS | Position vector equals the eccentric-anomaly formula with the physical axis and perihelion rotation. |
| kepler (d) | `hasDerivAt_keplerEnergy_action`, 524 | PASS | Actual derivative of the action Hamiltonian is `κ²m³/Λ³` at positive action. |
| kepler (c) | `delaunayMK_means`, 534 | PASS | All three normalized mean identities for `0≤e<1`, including `e=0`; uses the circular-valid `orbitMapR` formulation. |
| scaling | `energyMK_eq_mul_energy`, 574 | PASS | Exact mass dictionary; valid for every phase point and strength when mass is positive. |
| scaling | `scaleMK_hamiltonianVectorField`, 581 | PASS | Naturality for the frozen Hamiltonian vector field under the unit-mass strength scaling; actual differentiability premise. |
| scaling | `scaleMK_flow`, 622 | PASS | Pointwise Hamilton-equation transport with the exact time substitution `κ²t`, including its chain-rule factor. |

## Binder audit

Each row names one binder or one expanded logical conjunct. `TYPING` covers actual real parameters, phase points, integers, functions and time. `SOURCE` covers the displayed source premises and ordinary differentiability required for Hamiltonian calculus, explicitly retained in the reviewed design signatures. There are no instance binders, conclusion-shaped assumptions, imported gates, or witness packages. `deDom` expands to `0<C ∧ C<Λ`; `regionMK` expands to `0<|q| ∧ E<0 ∧ 0<C`. These expansions are source premises, not proof steps.

Citation keys: P:data = blueprint-P p7 lines 49–58 (including standing `m,κ>0` at line 27); P:range = lines 60–67; P:chart = lines 69–75 and 83–87; P:means = lines 76–77 and 88; P:ham = lines 78 and 89; I:scale = blueprint-I p7 lines 311–321. D = design appendix lines 1288–1347 (exact signatures and explicit regularity). All keys refer to the hashes above.

| Declaration | Binder / expanded input | Bin | Authority |
|---|---|---|---|
| `delaunayMK_symplectic` | m: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_symplectic` | κ: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_symplectic` | hm: `0 < m` | SOURCE | P:chart; P:data; D |
| `delaunayMK_symplectic` | hκ: `0 < κ` | SOURCE | P:chart; P:data; D |
| `analyticOnNhd_delaunayMK` | m: `ℝ` | TYPING | P:chart; P:data; D |
| `analyticOnNhd_delaunayMK` | κ: `ℝ` | TYPING | P:chart; P:data; D |
| `analyticOnNhd_delaunayMK` | hm: `0 < m` | SOURCE | P:chart; P:data; D |
| `analyticOnNhd_delaunayMK` | hκ: `0 < κ` | SOURCE | P:chart; P:data; D |
| `delaunayMK_periodic` | m: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_periodic` | κ: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_periodic` | hm: `0 < m` | SOURCE | P:chart; P:data; D |
| `delaunayMK_periodic` | hκ: `0 < κ` | SOURCE | P:chart; P:data; D |
| `delaunayMK_periodic` | w: `Phase 2` | TYPING | P:chart; P:data; D |
| `delaunayMK_periodic` | hw.1: `0<C` | SOURCE | P:chart; P:data; D |
| `delaunayMK_periodic` | hw.2: `C<Λ` | SOURCE | P:chart; P:data; D |
| `delaunayMK_periodic` | k: `ℤ` | TYPING | P:chart; P:data; D |
| `delaunayMK_periodic` | k': `ℤ` | TYPING | P:chart; P:data; D |
| `delaunayMK_eq_iff` | m: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_eq_iff` | κ: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_eq_iff` | hm: `0 < m` | SOURCE | P:chart; P:data; D |
| `delaunayMK_eq_iff` | hκ: `0 < κ` | SOURCE | P:chart; P:data; D |
| `delaunayMK_eq_iff` | w: `Phase 2` | TYPING | P:chart; P:data; D |
| `delaunayMK_eq_iff` | w': `Phase 2` | TYPING | P:chart; P:data; D |
| `delaunayMK_eq_iff` | hw.1: `0<C` | SOURCE | P:chart; P:data; D |
| `delaunayMK_eq_iff` | hw.2: `C<Λ` | SOURCE | P:chart; P:data; D |
| `delaunayMK_eq_iff` | hw'.1: `0<C` | SOURCE | P:chart; P:data; D |
| `delaunayMK_eq_iff` | hw'.2: `C<Λ` | SOURCE | P:chart; P:data; D |
| `delaunayMK_localDiffeo` | m: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_localDiffeo` | κ: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_localDiffeo` | hm: `0 < m` | SOURCE | P:chart; P:data; D |
| `delaunayMK_localDiffeo` | hκ: `0 < κ` | SOURCE | P:chart; P:data; D |
| `delaunayMK_localDiffeo` | w: `Phase 2` | TYPING | P:chart; P:data; D |
| `delaunayMK_localDiffeo` | hw.1: `0<C` | SOURCE | P:chart; P:data; D |
| `delaunayMK_localDiffeo` | hw.2: `C<Λ` | SOURCE | P:chart; P:data; D |
| `cross_le_action` | m: `ℝ` | TYPING | P:range; P:data; D |
| `cross_le_action` | κ: `ℝ` | TYPING | P:range; P:data; D |
| `cross_le_action` | hm: `0 < m` | SOURCE | P:range; P:data; D |
| `cross_le_action` | hκ: `0 < κ` | SOURCE | P:range; P:data; D |
| `cross_le_action` | z: `Phase 2` | TYPING | P:range; P:data; D |
| `cross_le_action` | hz.1: `0<abs(q)` | SOURCE | P:range; P:data; D |
| `cross_le_action` | hz.2.1: `E<0` | SOURCE | P:range; P:data; D |
| `cross_le_action` | hz.2.2: `0<C` | SOURCE | P:range; P:data; D |
| `cross_eq_action_iff` | m: `ℝ` | TYPING | P:range; P:data; D |
| `cross_eq_action_iff` | κ: `ℝ` | TYPING | P:range; P:data; D |
| `cross_eq_action_iff` | hm: `0 < m` | SOURCE | P:range; P:data; D |
| `cross_eq_action_iff` | hκ: `0 < κ` | SOURCE | P:range; P:data; D |
| `cross_eq_action_iff` | z: `Phase 2` | TYPING | P:range; P:data; D |
| `cross_eq_action_iff` | hz.1: `0<abs(q)` | SOURCE | P:range; P:data; D |
| `cross_eq_action_iff` | hz.2.1: `E<0` | SOURCE | P:range; P:data; D |
| `cross_eq_action_iff` | hz.2.2: `0<C` | SOURCE | P:range; P:data; D |
| `delaunayMK_image` | m: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_image` | κ: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_image` | hm: `0 < m` | SOURCE | P:chart; P:data; D |
| `delaunayMK_image` | hκ: `0 < κ` | SOURCE | P:chart; P:data; D |
| `delaunayMK_identities` | m: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_identities` | κ: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_identities` | hm: `0 < m` | SOURCE | P:chart; P:data; D |
| `delaunayMK_identities` | hκ: `0 < κ` | SOURCE | P:chart; P:data; D |
| `delaunayMK_identities` | w: `Phase 2` | TYPING | P:chart; P:data; D |
| `delaunayMK_identities` | hw.1: `0<C` | SOURCE | P:chart; P:data; D |
| `delaunayMK_identities` | hw.2: `C<Λ` | SOURCE | P:chart; P:data; D |
| `delaunayMK_position` | m: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_position` | κ: `ℝ` | TYPING | P:chart; P:data; D |
| `delaunayMK_position` | hm: `0 < m` | SOURCE | P:chart; P:data; D |
| `delaunayMK_position` | hκ: `0 < κ` | SOURCE | P:chart; P:data; D |
| `delaunayMK_position` | w: `Phase 2` | TYPING | P:chart; P:data; D |
| `delaunayMK_position` | hw.1: `0<C` | SOURCE | P:chart; P:data; D |
| `delaunayMK_position` | hw.2: `C<Λ` | SOURCE | P:chart; P:data; D |
| `hasDerivAt_keplerEnergy_action` | m: `ℝ` | TYPING | P:ham; P:data; D |
| `hasDerivAt_keplerEnergy_action` | κ: `ℝ` | TYPING | P:ham; P:data; D |
| `hasDerivAt_keplerEnergy_action` | Λ: `ℝ` | TYPING | P:ham; P:data; D |
| `hasDerivAt_keplerEnergy_action` | hm: `0 < m` | SOURCE | P:ham; P:data; D |
| `hasDerivAt_keplerEnergy_action` | hκ: `0 < κ` | SOURCE | P:ham; P:data; D |
| `hasDerivAt_keplerEnergy_action` | hΛ: `0 < Λ` | SOURCE | P:ham; P:data; D |
| `delaunayMK_means` | m: `ℝ` | TYPING | P:means; P:data; D |
| `delaunayMK_means` | κ: `ℝ` | TYPING | P:means; P:data; D |
| `delaunayMK_means` | g: `ℝ` | TYPING | P:means; P:data; D |
| `delaunayMK_means` | Λ: `ℝ` | TYPING | P:means; P:data; D |
| `delaunayMK_means` | e: `ℝ` | TYPING | P:means; P:data; D |
| `delaunayMK_means` | hm: `0 < m` | SOURCE | P:means; P:data; D |
| `delaunayMK_means` | hκ: `0 < κ` | SOURCE | P:means; P:data; D |
| `delaunayMK_means` | hΛ: `0 < Λ` | SOURCE | P:means; P:data; D |
| `delaunayMK_means` | he0: `0 ≤ e` | SOURCE | P:means; P:data; D |
| `delaunayMK_means` | he1: `e < 1` | SOURCE | P:means; P:data; D |
| `energyMK_eq_mul_energy` | m: `ℝ` | TYPING | I:scale; D |
| `energyMK_eq_mul_energy` | κ: `ℝ` | TYPING | I:scale; D |
| `energyMK_eq_mul_energy` | hm: `0 < m` | SOURCE | I:scale; D |
| `energyMK_eq_mul_energy` | z: `Phase 2` | TYPING | I:scale; D |
| `scaleMK_hamiltonianVectorField` | κ: `ℝ` | TYPING | I:scale; D |
| `scaleMK_hamiltonianVectorField` | hκ: `0 < κ` | SOURCE | I:scale; D |
| `scaleMK_hamiltonianVectorField` | H: `Phase 2 → ℝ` | TYPING | I:scale; D |
| `scaleMK_hamiltonianVectorField` | z: `Phase 2` | TYPING | I:scale; D |
| `scaleMK_hamiltonianVectorField` | hH: `DifferentiableAt ℝ H (scaleMK 1 κ z)` | SOURCE | I:scale; D |
| `scaleMK_flow` | κ: `ℝ` | TYPING | I:scale; D |
| `scaleMK_flow` | hκ: `0 < κ` | SOURCE | I:scale; D |
| `scaleMK_flow` | Zc: `ℝ → Phase 2` | TYPING | I:scale; D |
| `scaleMK_flow` | t: `ℝ` | TYPING | I:scale; D |
| `scaleMK_flow` | hZ: `HasDerivAt Zc (hamiltonianVectorField kE (Zc (κ ^ 2 * t))) (κ ^ 2 * t)` | SOURCE | I:scale; D |
| `scaleMK_flow` | hE: `DifferentiableAt ℝ kE (Zc (κ ^ 2 * t))` | SOURCE | I:scale; D |

Expanded-input totals: TYPING=47, SOURCE=52, STANDING=0, RULED=0, EXCESS=0. No EXCESS premise survives expansion. No constants are existentially selected after varying inputs; all scale factors and formulas are explicit.

## Definitions and carrier checks

| New definition | Classification | Verdict / complete-body check |
|---|---|---|
| `delaunayMK` (39) | Literal source formula | PASS; exact mass-action precomposition and physical scaling, no new choice or branch. |
| private `scaleL` (44) | Linear packaging | PASS; CLM for `(κ⁻¹q,mκp)` on all of Phase 2. |
| private `scaleInvL` (49) | Literal linear formula | PASS; `(κq,(mκ)⁻¹p)`, inverse assertions use positive mass/strength. |
| private `momL` (54) | Literal linear formula | PASS; `(q,m⁻¹p)`. |
| private `momInvL` (59) | Literal linear formula | PASS; `(q,mp)`. |
| private `scaleE` (88) | Equivalence from proved inverses | PASS; no chosen witness, both inverse equations supplied. |
| private `momE` (92) | Equivalence from proved inverses | PASS; no chosen witness, both inverse equations supplied. |

No new abbrev or structure. Definition status for each: BODY_MATCH=OK; PUBLIC_CARRIER=OK (private helpers use the same concrete carrier); WELL_DEFINEDNESS=N/A_LITERAL; CHARACTERIZATION=N/A_LITERAL; CHOICE_INDEPENDENCE=N/A; DEFINITION_VERDICT=PASS. The two equivalences additionally carry actual proved inverse laws. Total scalar inverses retain the pre-existing literal-formula semantics; no off-domain physical assertion or fallback is used. The chart’s analytic/image assertions are correctly guarded by positive mass/strength and `deDom`. Its inherited Kepler solver is used via the existing proved chart API.

Energy.lean is unchanged and intentionally owns `scaleMK`, `energyMK`, `axisMK`, `actionMK`, `regionMK`, openness and elementary scaling (design §4 and audit-2 F5 resolution). Their bodies are respectively `(q/κ,mκp)`, `|p|²/(2m)−κm/|q|`, `−κm/(2E)`, `m√(κa)`, and the strict prograde negative-energy collision-free region. The physical planar length is the frozen square-root-of-sum-of-squares, not the ambient Pi norm. At κ=1 the scalar formulas agree with the frozen planetary energy/axis/action after the existing body projection convention; no fresh frozen bridge is advertised by this package.

## Proof inspection and refutation pass

Inspected the entire new file. Private lemmas are explicit algebra, inverse laws, domain transport, derivatives, and chart consequences. No hard result is accepted as a hidden hypothesis. Imports use the existing proved Kepler API, with no provider or frozen theorem in the transitive project import closure (53 modules).

| Attempted failure | Resolution / point of use |
|---|---|
| Missing mass in symplecticity | Mass:110–145 proves the scale factor m and the action factor m⁻¹ separately; their product is one. Frozen form is `Σ(pu*qv−qu*pv)` throughout. |
| Wrong image or missing circular exclusion | Mass:375–427 proves both implications of scale-region equivalence and reconstructs both inverse scalings. Strict `C<Λ` is exactly the non-circular image. |
| Lost radius guard or incorrect equality case | Mass:219–340 uses `D=−2E>0`, positive radius and mass, Lagrange identity, and nonnegative square terms. Equality forces both terms to vanish, giving `q·p=0` and `r=a`; converse uses `C>0` to select the positive square root. |
| Norm or scaling error in averages | Mass:534–567 multiplies reciprocal radius by κ, momentum square by `(mκ)²`, and radius by κ⁻¹, with `L=Λ/m`. The resulting factors are `1/a`, `m²κ/a`, `a(1+e²/2)`. |
| Circular endpoint hidden by the chart domain | Means use the orbit formula directly with `0≤e<1`, and call three predecessor means with the same weak lower endpoint. No `deDom` premise or positive-eccentricity premise appears in this theorem. |
| Wrong time normalization or total-fderiv shortcut | Mass:581–647 applies the chain rule to an actually differentiable Hamiltonian, then differentiates `κ²s`. The velocity is multiplied by κ² and transported using the proved unit-mass naturality identity. |
| Analyticity only at the chosen base point | Mass:188–209 restricts the IFT chart source to `deDom`, then proves inverse analyticity at every target point using derivative invertibility at its inverse image. |

These challenges were checked against the actual code and raw blueprint, separately from the initial signature comparison. No material finding remains. No subagent or external mathematical-source audit is claimed. Existing blueprint normalization choices D3/B6 and D11/B7 are retained; the direct mass-form Lagrange identity is an equivalent algebraic proof instead of first scaling to unit mass.

## Verification commands and outputs

All final verification commands below use one audit-owned Lean/Lake invocation at a time and `LEAN_NUM_THREADS=1`; the build uses the required gate. No resource override, clean, update, cache download, package edit, or library rebuild was requested.

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-kep10 KAM.Kepler.Mass
```

Exit 0. Gate: `[inp-gate] slot 1 acquired 03:07:09 for KAM.Kepler.Mass`. Final output: `Build completed successfully (9099 jobs).` This was an incremental cached/replayed target build, not a fresh library rebuild. Replayed warnings: Energy:106 unused `hm,hκ`; Mass:147 unused `hκ`, :157 unused `hκ`, :500 unused `hw`, :524 unused `hm,hκ`. They preserve the exact signature premises; no linter suppression was added.

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/KEP10Audit.lean
```

Exit 0. Probe copied all 15 exact theorem signatures from the pinned signatures file and applied the corresponding production theorem with explicit binders in order. It also proved the literal chart equation by `rfl` and printed axioms for all 16 public exports. Mechanical whitespace-normalized statement comparison: **15/15 identical**. No frozen/provider probe was fabricated for a package that contains neither.

Exact axiom output (one line per exported declaration):

```text
'KAM.Kepler.delaunayMK_symplectic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.analyticOnNhd_delaunayMK' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunayMK_periodic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunayMK_eq_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunayMK_localDiffeo' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.cross_le_action' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.cross_eq_action_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunayMK_image' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunayMK_identities' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunayMK_position' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.hasDerivAt_keplerEnergy_action' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunayMK_means' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.energyMK_eq_mul_energy' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.scaleMK_hamiltonianVectorField' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.scaleMK_flow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.delaunayMK' depends on axioms: [propext, Classical.choice, Quot.sound]
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Kepler.Mass
```

Exit 0. Output: `replaying KAM.Kepler.Mass`. This is the single new implementation module; there are no new companion lemma/provider modules.

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1 solely for the allowed stale generated root. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (363 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Additional mechanical checks:

- `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty, exit 0.
- `git diff --check inp...HEAD`: empty, exit 0.
- Forbidden-token/override/EuclideanSpace scan of Mass: no matches; no file above 1500 lines; new module is 653 lines.
- Module header, copyright, public imports, docstring, exposed public noncomputable section: present.
- Recursive project import scan: 53 modules; zero provider/frozen-theorem import edges.
- Audit probe removed after verification; input hashes rechecked; report trailing whitespace checked.

## Suspected errata, limits, and closeout

No new suspected pinned-source defect, blueprint contradiction, or unauthorized mathematical deviation found. Known design B6/B7 reformulations are explicitly documented above, rather than silently treated as the raw quotient/all-time statements. The unqualified phrase “equality iff the radius is constant” in the design signature docstring is interpreted using its actual pointwise conclusion and D11; this is already recorded by the design, not a newly discovered source error.

This audit verifies the changed package, its assigned design interfaces, local proof adaptations, foundational closure, and targeted kernel replay. It does not re-audit every predecessor proof, certify every external publication cited by the blueprint, prove a full quotient-manifold theorem, or close any frozen I/N/P root. These limits do not obstruct integration of the assigned KEP-10 package. No blocker or unclassified changed public declaration remains.

Persistent output: `/root/code/KAM-inp-kep10/docs/tracks/P/audits/KEP-10-audit-1.md`. No source changes proposed or applied.
