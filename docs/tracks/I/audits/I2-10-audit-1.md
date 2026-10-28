# I2-10 independent package audit 1

**I-G1 / `iso.isoenergetic_kam.v1`: PASS WITH NOTES (provider seal-ready).** The provider has the exact frozen type, its copied seal body elaborates, all seven new public theorems have clean axiom closure, and kernel replay succeeds. No mathematical or source-contract blocker was found in I2-10. The notes concern the inherited generated-root diff and the explicitly permitted stale-root lint result. The frozen export itself remains **FROZEN_UNPROVED** (`DRAFT_SORRY`); this audit does not perform or certify a completed seal.

Date: 2026-10-28. Worktree and report destination: `/root/code/KAM-inp-i210`. Snapshot v1: HEAD `def2d72f736bce7daefd71820d52697034cd6975`.

## Scope, authority and snapshot

This is a focused tier-2, refute-first package audit under `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, with the handoff's I2-10 focus. The prompt's explicit report destination overrides the brief's generic main-worktree destination. Only this report was added; probes were confined to `.lake/abi-scratch/` and removed. No state-changing git command, frozen-file change, source repair, or generated-file edit was made. No delegation was used. Every Lean/Lake/checker invocation initiated by this audit was sequential, with `LEAN_NUM_THREADS=1` and nice priority 5; the targeted build used the required compile gate. No resource override was used.

Read: AGENTS.md, PLAN.md, DECISIONS.md (especially D19/D20/D26), frozen I-G1 and its meaning-bearing definitions, track-I statement and source notes, blueprint Parts 0/2 and the energy-conservation proof, graph `bpI:p2:g1`, design v2 §§7–8/D20, and both PART123 design audits. Design audit 1's Part-3 F1/F2 are outside this package and closed in design audit 2; their earlier acceptance of an assembly type was not taken as proof evidence here.

Both requested comparisons were inspected:

```text
git diff inp...HEAD
git diff inp-i29...HEAD
```

At entry, `inp = f1cc9036c631ab5e4fca2493ecb3ce5fc3e207aa`; `inp-i29 = 504b29b296faba9e53498b6bb5467ff221a61dc7`. The first command warns `multiple merge bases, using 06c860279ce9914f699090b1152b3b6303cb091c`. Both comparisons show the same seven files, 669 insertions: G1, provider, generated KAM.lean, and inherited I2-6/I2-8 audit/handoff files. I2-9's Limit implementation is an already-present predecessor, not a newly introduced definition in this delta. The I2-10-specific commits `38f450a` and `def2d72` change only G1/provider. During this audit `inp` advanced to `a763bfdbf022d6f10caaff4fc865f2a9e5432a97`; HEAD and the audited source hashes remained fixed. Findings below refer to snapshot v1 and the recorded comparison, rather than silently adopting a moving base.

| Input | SHA-256 at v1 |
|---|---|
| `KAM/Iso/Apost/G1.lean` | `202ba7ef0fe5c215ece86970a40a8265d508243f303c2c417ce2f71250b57f40` |
| `KAM/Provider/Iso/IsoenergeticKam.lean` | `04568d4f7bcd67b8ffeb484d57ce9e2033a54c0338b047f5e17172aa5c61afc7` |
| `KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean` | `7d04c9e99e9e52113212f3a47ee749e577e8ffbf404085615df14d4707300922` |
| `manifest/frozen-anchors.json` | `a7d55a9a566d7d8408d455b1bfb2cc71bb9229baae5d1c547c96d9147159f8f3` |
| `KAM/Iso/Charts/Inputs.lean` | `a8f405840e6a94be71deeb6632aba601e237961933f3d4e26e81e5bb21ad3bfe` |
| `KAM/Iso/Apost/Defs.lean` | `bfe66bba3354dbcd66b5bbaa2dab630018b6fb44259e31cad47a319032bb8163` |
| `KAM/Iso/Apost/Limit.lean` | `5b9061326b7d4992609371241d6fccbb4b3d612c6cd171ccbceb8b653a13df3b` |
| `KAM/Iso/Linear/Energy.lean` | `771783eaf30d3a4ccdcd0e8aa6f6e9eccfb9136b9adf568e493514176bb03906` |
| `docs/tracks/I/design/PART123-LEAN-DESIGN.md` | `bea8d5212f8f979070ca44ce0295c8513021595dcd694f0178d0a0b221442a00` |
| `blueprint-I/parts/p2-iso-iteration.tex` | `f2bcdff3e5bd29a51e0246740f69e0bbd6419b925d8ae037b4e89ccf7a288968` |
| `docs/graph/I/DEPGRAPH.md` | `1ef3cc4e6a297b1922212ff1d5ddf6a94e2efb3b2a7350dab784842b5383151e` |
| `sources/pdf/arxiv_1711.05515.pdf` | `ed457633b5c4f0412b7f2c81c3818ef88829dee3420b97864e42223b77eb5241` |

Manifest identity: `iso.isoenergetic_kam.v1`, theorem, D20 approval, export `KAM.Iso.isoenergetic_kam`, provider `KAM.Provider.Iso.isoenergetic_kam`, state `DRAFT_SORRY`, ABI `165645ea4aeb3d278f29d2336981a4bc924803cea8eaee49efbfca9874203b16`. All three listed definition-closure SHA-256 values were recomputed and match. The frozen-anchor guard and all 144 elaborated ABI hashes pass (commands below).

## Declaration and node ledger

Names in the first six rows have prefix `KAM.Iso.Apost.`. Line numbers refer to v1.

| Node / role | Lean declaration or actual proof location | Verdict | Reason |
|---|---|---|---|
| `stepI:p2:g1-constants`, C1 | `isoC1_pos`, G1:57 | PASS | Positive rho power times a max bounded below by positive gamma-bar fourth power; fewer premises than the full source setting. |
| `stepI:p2:g1-constants`, C2/C3 | `isoC2_pos`, G1:62 | PASS | Params supply positivity of hatCDelta; positive rho and delta0 powers. |
| `stepI:p2:g1-dict`, row-sum adapter | `norm_le_of_rowSum_le_of_nonempty`, G1:70 | PASS | Index-generic generalization. Proves B nonnegative from a row; works for both Fin n and Fin n ⊕ Unit. |
| `stepI:p2:g1-dict`, endpoint adapter | `margin_of_le`, G1:78 | PASS | Exact minimum-times-norm inequality; no sign or nonzero-vector premise added. |
| `stepI:p2:g1-e` | `iso_g1_error_small`, G1:86 | PASS | Actual application of K's abstract arithmetic lemma, with nonnegativity of hatcStar proved. Even allows negative e; the provider retains frozen e≥0. |
| `bpI:p2:g1` | `g1_explicit`, G1:95 | PASS | Full IG1Body at the literal isoC1/isoC2/isoC2 constants, positive and independent of all later data. |
| Frozen I-G1 provider | `KAM.Provider.Iso.isoenergetic_kam`, provider:29 | PASS | Exact type equality and copied explicit-binder seal body independently elaborate. |
| `stepI:p2:g1-standing` | G1:106–124 | PASS | Constructs IsoStanding from the frozen inputs; no iteration or limit result assumed. |
| `stepI:p2:g1-dict` | G1:128–146 | PASS | Nonempty Fin n is derived from hn; both inverse bounds and endpoint margin are supplied to IterHyp. |
| `stepI:p2:g1-apply` | G1:147–149 | PASS | Calls the actual moving-frequency `KAM.Iso.Apost.limit`, which consumes iteration. |
| `stepI:p2:g1-o` | G1:156–164 | PASS | Both closeness estimates use the same exact rho-power cancellation; retained half-margins and strict ray endpoints. |
| `stepI:p2:g1-o2` | G1:147–149, 161 | PASS | Limit's actual zero invariance error is used at s∞ω*. |
| `stepI:p2:g1-o3` | G1:151–155, 161 | PASS | Energy-average limit plus complex-strip energy conservation at s∞ω*; all hypotheses produced. |

The helper hypotheses are source subpremises or standing/typing data. In `isoC2_pos` and `iso_g1_error_small`, expanding `Params` gives exactly `2 ≤ n`, `n-1 ≤ τ`, `0<M`, `0<σK`, `0<σB`, `0<σT` (Standing:41–47), all available before constants. The row-sum helper's Fintype/Nonempty assumptions are typing data for its generalized index carrier; at the consumer both are discharged, including nonemptiness of the bordered carrier. No helper assumes positivity/estimates of an output torus or a hard proof step.

## Expanded binder audit

The following table applies to both provider and g1_explicit after expanding IG1Body. `P0` means blueprint `p0-conventions.tex:213–249` (I-G1); `G1` means `p2-iso-iteration.tex:329–355`; D19/D20 authorize the uniformized source interpretation. Each logical conjunction in the Hamiltonian and Gram inputs is split below. TYPING includes the stated data carriers; no extra instance binder occurs in these two declarations. Local indices inside universal source premises retain the Fin n/ℤ/ℂ carriers of P0.

| Binder / expanded logical input | Bin | Authority |
|---|---|---|
| n : ℕ | TYPING | P0 fixed dimension |
| hn : 2 ≤ n | SOURCE | P0; HL19 d≥2 |
| τ : ℝ | TYPING | P0 exponent |
| hτ : n−1 ≤ τ | SOURCE | P0; HL19 H5′ |
| ρ : ℝ | TYPING | P0 width |
| ρinf : ℝ | TYPING | P0 width |
| hρinf : 0 < ρinf | SOURCE | P0; HL19 Thm 3.6 |
| hρinfρ : ρinf < ρ | SOURCE | P0; HL19 Thm 3.6 |
| M : ℝ | TYPING | P0 bound |
| σK : ℝ | TYPING | P0 bound |
| σB : ℝ | TYPING | P0 bound |
| σT : ℝ | TYPING | P0 bound |
| μ : ℝ | TYPING | P0 margin |
| γbar : ℝ | TYPING | P0 bound |
| σω : ℝ | TYPING | P0 endpoint |
| ν : ℝ | TYPING | P0 margin |
| hM : 0 < M | SOURCE | P0; common positive bound |
| hσK : 0 < σK | SOURCE | P0; H2 |
| hσB : 0 < σB | SOURCE | P0; H3 |
| hσT : 0 < σT | SOURCE | P0; H4′ |
| hμ : 0 < μ | RULED | D19/D20; uniform margin |
| hγbar : 0 < γbar | RULED | D19/D20; uniform upper bound |
| hσω : 1 < σω | SOURCE | P0; H5′ |
| hν : 0 < ν | RULED | D19/D20; endpoint margin |
| ωstar : Fin n → ℝ | TYPING | P0 fixed ray |
| hωstar : ωstar ≠ 0 | RULED | D19/D20; fixed nonzero ray |
| D : Set ((Fin n → ℂ) × (Fin n → ℂ)) | TYPING | P0 domain |
| H : complex phase → ℂ | TYPING | P0 Hamiltonian |
| K : (Fin n → ℂ) → complex phase | TYPING | P0 torus |
| s : ℝ | TYPING | P0 ray scalar |
| γ : ℝ | TYPING | P0 Diophantine constant |
| e : ℝ | TYPING | P0 error majorant |
| E₀ : ℝ | TYPING | P0 prescribed energy |
| hopen : IsOpen D | SOURCE | I1 |
| htransl : integer angle translations preserve D | SOURCE | I1 |
| hholo : DifferentiableOn ℂ H D | SOURCE | I2 |
| hper : H periodic in angles on D | SOURCE | I2 |
| hreal : H real at real points of D | SOURCE | I3 |
| hbd.1 : ‖DH‖ ≤ M on D | SOURCE | I4; H1 |
| hbd.2.1 : ‖X_H‖ ≤ M on D | SOURCE | I4; H1 |
| hbd.2.2.1 : ‖DX_H‖ ≤ M on D | SOURCE | I4; H1 |
| hbd.2.2.2.1 : ‖D²X_H‖ ≤ M on D | SOURCE | I4; H1 |
| hbd.2.2.2.2 : ‖D²H‖ ≤ M on D | SOURCE | I4; H1′, c=H |
| hK : K holomorphic on Tρ | SOURCE | I5 |
| hKp : K primary on Tρ | SOURCE | I5; HL19 Rem 2.3 |
| hKr : K real on reals | SOURCE | I5 |
| hball : ball(Kθ,μ) ⊆ D on Tρ | RULED | I6; D19/D20 quantitative margin |
| hDK : ‖DKθ‖ ≤ σK−μ on Tρ | RULED | I6; D19/D20 quantitative margin |
| hG.1 : Gram determinant unit on Tρ | SOURCE | I7; H3 |
| hG.2 : every inverse Gram row sum ≤ σB−μ | RULED | I7; D19/D20 quantitative margin |
| hTu : averaged bordered torsion determinant unit | SOURCE | I8; H4′ |
| hTb : every inverse bordered row sum ≤ σT−μ | RULED | I8; D19/D20 quantitative margin |
| hs1 : 1 < s | SOURCE | I9; H5′ |
| hsσ : s < σω | SOURCE | I9; H5′ |
| hν1 : ν ≤ (s−1)‖ωstar‖ | RULED | I9; D19/D20 endpoint distance |
| hν2 : ν ≤ (σω−s)‖ωstar‖ | RULED | I9; D19/D20 endpoint distance |
| hγ : 0 < γ | SOURCE | I10; H5′ |
| hγγbar : γ ≤ γbar | RULED | I10; D19/D20 uniformization |
| hdio : IsDiophantine γ τ ωstar | SOURCE | I10; H5′ |
| he0 : 0 ≤ e | RULED | I10; error-majorant formulation, D20 |
| hE : invariance error bounded by e on Tρ | RULED | I11; (3.14), majorant formulation D20 |
| hEn : averaged energy error bounded by e | RULED | I12; (3.14), majorant formulation D20 |
| hC1 : C₁e/(γ⁴ρ^(4τ)) < 1 | SOURCE | I13; (3.15) |

Counts over these expanded rows: **SOURCE 29, STANDING 0, TYPING 20, RULED 14, EXCESS 0**. Standing structures are constructed inside the proof; they are not additional binders. The provider existential witnesses C₁,C₂,C₃ are outputs, and g1_explicit substitutes their explicit formulas. Every later datum remains under their universal property. Inner index quantifiers, implications expressing set membership, and the expanded literal predicates introduce no additional independent hypothesis family beyond the rows above.

## Constants, definitions and actual dependency use

**New def/abbrev/structure declarations: none.** All seven new declarations are theorems. Thus no new arbitrary selection, fallback, characterized object, or theorem-shaped assumption definition is introduced.

Existing semantic dependencies were inspected at their uses:

| Definition surface | Classification and guarded use |
|---|---|
| `IG1Body` / `IG1Statement` (Inputs) | Literal proposition abbreviations for the complete frozen inner/outer statement; not assumed by G1. Independent rfl equality of IG1Statement to the frozen type passes. |
| `isoC1`, `isoC2` (Defs:208–215) | Literal real formulas matching G1's display, including negative real delta powers. BODY_MATCH OK; PUBLIC_CARRIER OK; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS for these unchanged formulas. Positive widths and delta0 guard the powers before division/cancellation. |
| `IsoStanding`, `IterHyp` | Source/standing-premise structures; G1:112–146 fills their fields from actual frozen inputs and adapters. They carry no assumption about iterates/limits or O1–O6. |
| `isoLimit`, `isoSLimit` (Limit:60,66) | Pre-existing characterized limit selectors. G1 invokes `limit` and `energy_limit` under their full convergence hypotheses. The off-strip K branch is never used to establish a strip conclusion; convergence and limit characterizations are proved in I2-9. This audit checks consumption, not a new whole-domain characterization audit of I2-9. |
| Frozen `energyAverage`, `extendedTorsion`, `extendedTorsionAverage` | Literal period-one integrals and bordered matrix. Last row remains DH(K)N at the approximate torus. Integrability/holomorphy/invertibility are provided by the existing analytic predecessors, rather than exploiting the total integral/inverse defaults. |
| Frozen strip, Diophantine predicate, Gram/frame/torsion, invariance error | Same open strips, max/operator row-sum norms, bilinear complex Gram matrix, ℤ Fourier carrier, and error X_H−DKω as P0. No EuclideanSpace or replacement norm appears. |

C₁ is `ρ^(4τ) * max (γbar^4) (hatcStar * delta0^(-2a))`. C₂=C₃ is `2 * hatCDelta * ρ^(2τ) * delta0^(-a)`. Their arguments contain neither D,H,K,s,γ,e,E₀ nor ωstar,σω. This proves the blueprint's stronger independence from the ray data, even though the frozen statement permits dependence on those fixed data. C₂ also has no μ,ν,γbar dependence. The explicit formula and positive guards justify the exact use of K's `g1_error_small_aux` (Constants:895) and `g1_closeness_eq` (Constants:942); no unbordered KAM theorem is substituted.

The proof term follows the graph's substantive route:

1. Build Params and IsoStanding (G1:106–124); prove strict error smallness (126).
2. Convert all row sums to operator norms (128–134). Nonempty Fin n follows from n≥2; Fin n ⊕ Unit is inhabited independently. Nonnegativity of σ−μ is derived from an actual row, not assumed.
3. Build IterHyp (135–146); call the actual isoenergetic `limit` (149), whose proof invokes `iteration` (Limit:347). The limit statement already proves holomorphy, primary and reality properties, both displacements, ray endpoints, half-margins and invariance.
4. Call `energy_limit` on exactly the same data and limit (151). Its proof calls iteration/limit and passes the energy average to the limit; the equality is produced, not a hypothesis.
5. Deduce K∞θ∈D from the half-margin ball and μ>0 (152–153). Construct the Part-1 setting at **s∞ωstar**, via `hS.setting hs1'.le`. This preserves the same γ Diophantine lower bound since s∞>1. Then apply `energy_conservation` (154–155), using positive ρinf, holomorphy, primary/reality, image membership and actual zero invariance error. Its centered cohomological uniqueness proof gives equality throughout the complex strip (Energy:221–251), not just on real points or in average. No Gram or torsion condition on K∞ is assumed.
6. Cancel the positive rho/delta powers once and use the same identity for both displacement bounds (157–164).

Import quarantine: recursive project-import inspection visits **96 modules** from the provider, finds **zero frozen theorem imports** and **zero other provider imports**. Its only direct import is `KAM.Iso.Apost.G1`. The only production importer of this provider is the intended frozen anchor, at `KAM/Frozen/Iso/Theorems/IsoenergeticKam.lean:24`. G1's light Charts.Inputs import contains frozen definitions/Mathlib only; it creates no analytic Part-3 cycle.

## Refutation pass and notes

Adversarial checks tried to invalidate the pass through an extra bundled premise, constants depending on later data, a mismatched IG1Body, empty matrix indices, division by zero, an unbordered-twist shortcut, wrong-frequency conservation, averaged-only energy, or assuming regularity/frame properties of the limit. Inspection of the actual consumers, the exact-type/seal probes, the axiom queries, and kernel replay refute all these potential blockers. The helper allowing negative e is a stronger arithmetic statement and does not weaken or remove the frozen nonnegative-error binder.

**N1 — inherited generated-root difference (hygiene exception, survived provenance check).** The literal requirement that `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` be empty is **not met**: KAM.lean adds `public import KAM.Iso.Apost.Iteration` and `public import KAM.Iso.Apost.Step`. Refutation/provenance: these are exactly commits `8cdeed8` (“Regenerate KAM.lean (Iso Apost/Iteration)”) and `29fafd0` (“Regenerate KAM.lean (Iso Apost/Step)”), inherited before I2-10; neither I2-10 commit edits protected paths. The selected merge base and inherited I2-6/I2-8 history explain the diff; it is not silently called empty. There are no frozen, manifest, or README changes in either requested three-dot comparison. This is a recorded comparison/policy exception, not a proof defect. The orchestrator should preserve that provenance when landing; this auditor did not modify generated files.

**N2 — stale generated root (explicitly permitted).** Full lint exits 1 solely because `KAM.lean is out of date`; module, frozen guard, ABI, forbidden-token, line-length and size checks otherwise pass. The brief explicitly permits this message and assigns root regeneration to the orchestrator.

No new suspected blueprint defect, frozen-statement defect, or pinned-source erratum was found. The known HL19 sign issues remain as documented: printed p.18 (3.12), “Xh(K(θ)) = Lω K(θ)”, conflicts with the negative Lω convention; printed p.19 Rem.3.7 begins “Dh(K(θ))N(θ) = Xh(K(θ))ᵀΩ(K(θ))N(θ)”, with the documented sign mismatch. These are inherited source notes, not new discoveries; this implementation uses X_H−DKω and the approximate DH(K)N row correctly. The adopted c=H, d=n specialization, uniform margins, non-strict output estimates including e=0, and pointwise energy are D19/D20 rulings, not introduced deviations.

## Independent verification

1. Targeted build, through the compile gate:

   ```sh
   LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i210 KAM.Provider.Iso.IsoenergeticKam
   ```

   Exit **0**. Exact output:

   ```text
   [inp-gate] slot 1 acquired 03:20:08 for KAM.Provider.Iso.IsoenergeticKam
   Build completed successfully (3225 jobs).
   ```

2. Probe: `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I210Audit1.lean`, exit **0**, no warnings/errors. It imports frozen/provider modules and checks both directions plus definitional equality:

   ```lean
   example : type_of% @KAM.Iso.isoenergetic_kam := @KAM.Provider.Iso.isoenergetic_kam
   example : type_of% @KAM.Provider.Iso.isoenergetic_kam := @KAM.Iso.isoenergetic_kam
   example : (type_of% @KAM.Iso.isoenergetic_kam) =
       (type_of% @KAM.Provider.Iso.isoenergetic_kam) := rfl
   example : (type_of% @KAM.Iso.isoenergetic_kam) = KAM.Iso.Charts.IG1Statement := rfl
   ```

   The same probe extracts the frozen declaration's full type directly from its file, renames it `AuditI210.seal_copy`, and replaces only its proof with:

   ```lean
   by exact KAM.Provider.Iso.isoenergetic_kam hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar hσω hν ωstar hωstar
   ```

   These are exactly all 14 explicit binders, in order. No added lambda, premise, normalization or auxiliary coercion is required. Probe output is retained in `/tmp/i210-audit1-probe.log`; the probe source was deleted after verification. The query of the still-draft anchor below deliberately distinguishes it from its clean provider.

   ```text
   'KAM.Iso.Apost.isoC1_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Apost.isoC2_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Apost.norm_le_of_rowSum_le_of_nonempty' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Apost.margin_of_le' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Apost.iso_g1_error_small' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Apost.g1_explicit' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Provider.Iso.isoenergetic_kam' depends on axioms: [propext, Classical.choice, Quot.sound]
   'AuditI210.seal_copy' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Apost.limit' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Apost.energy_limit' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.Linear.energy_conservation' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Iso.isoenergetic_kam' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
   ```

3. Kernel replay, **one invocation**, exit **0**:

   ```sh
   LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Provider.Iso.IsoenergeticKam KAM.Iso.Apost.G1
   ```

   Exact output (`/tmp/i210-audit1-leanchecker.log`):

   ```text
   replaying KAM.Iso.Apost.G1
   replaying KAM.Provider.Iso.IsoenergeticKam
   ```

4. `LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh`, exit **1**, exact output (`/tmp/i210-audit1-lint.log`):

   ```text
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (369 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   **PASS modulo the brief's explicit stale-root exception.** The ABI subprocess is a single sequential Lean invocation and inherits nice priority/thread limit. G1 has 168 physical lines; provider has 81. Both have copyright, module, public import, module docstring and exposed public section. No forbidden proof escape, resource override, overlong source line or oversize file was reported.

5. `git diff --check inp...HEAD`: exit **0**, no whitespace diagnostics (only the recorded multiple-merge-base warning). `git diff inp...HEAD -- KAM/Frozen manifest README.md`: empty diff, exit **0**, same warning. Adding `KAM.lean` yields exactly N1's two import lines. The `inp-i29...HEAD` protected-path comparison has the same two generated imports and no other protected change.

## Closeout and limits

All seven new public declarations and every substantive g1 assembly step are classified; no unresolved mathematical finding or EXCESS hypothesis remains. Exact provider type, explicit seal body, clean provider/helper axioms, targeted build, quarantine and kernel replay pass. Lint and the protected-root comparison retain the explicit N1/N2 notes. Only this report is delivered, and no implementation repair was needed.

DECLARATION_FIDELITY: PASS

DRAFT_ALLOWLIST: PASS

PROOF_STATUS of the actual frozen anchor: FROZEN_UNPROVED

PROVIDER_STATUS: seal-ready, clean axioms; overall PASS WITH NOTES.

This is a full audit of the I2-10 assembly and its immediate source/definition consumption, not a repeat of all analytic predecessor proof audits or a new proof of every graph node in tracks I/N/P. The local pinned HL19 pp.18–19 were checked; its entire §6 was not independently re-audited. Seal, frozen-export rebuild/replay and post-seal axiom verification remain the orchestrator's distinct next operation.
