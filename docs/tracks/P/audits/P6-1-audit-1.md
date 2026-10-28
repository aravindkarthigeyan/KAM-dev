# P6-1 independent audit 1

Overall verdict: **PASS WITH NOTES** for package P6-1 (Newtonian Models). No mathematical or statement-fidelity blocker found. This is infrastructure approval, not a frozen-anchor seal or a proof of a planetary headline.

Audited HEAD `91833da5c62d4ec6660e5fc33bf73f13a92ece96` against `inp` at `441fed0cf02e55611c521d5f1e86f3f04f27c2c2`, using `git diff inp...HEAD`. The entire committed delta is the new 579-line `KAM/Planetary/Newtonian/Models.lean`. The initially untracked handoff was read as evidence. Only this report is added by the auditor; temporary probes live in this worktree's `.lake/abi-scratch/` and are removed after verification. The user's exact report destination overrides the generic brief's main-worktree destination.

## Scope and anchor status

Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the P6-1 handoff, design §2.3/§7 and embedded Models signatures (§F), `blueprint-P/parts/p6-newtonian-models.tex`, the relevant Part 7 analytic consumer, and `docs/tracks/P/statement.md` (physical models, lines 162–221). Compared the literal frozen definitions of phase, body extraction, collision-freeness, both Hamiltonians, and Hamiltonian vector field, and read the downstream P-PLANAR/P-FIXED/P-AMD/P-EXP anchors.

No provider or frozen theorem is implemented by P6-1. Consequently provider-versus-anchor and frozen-seal-body probes are **not applicable**. P-PLANAR, P-FIXED, P-AMD-CONFINEMENT and P-EXP-SAFE remain outside this package's proof scope; no seal-ready verdict is issued for them. Instead, all 17 new public theorem signatures were copied from the design into fresh probe declarations, proved by the corresponding package theorem applied to exactly its explicit binders, and their complete elaborated types compared using literal `rfl` on `type_of% @...`. All passed.

## Declaration inventory and fidelity

Names below are in `KAM.Planetary`; line numbers refer to `Models.lean`. Each public declaration has its own row. No additional premise, enlarged constant dependence, or meaning-changing carrier was found. There are no existential estimate constants here.

| Node | Declaration (line) | Verdict | Reason / note |
|---|---|---|---|
| domain | `collisionFreeDomain` (39) | PASS | Exactly `{z : Phase (n*2) | NoCollision z.1}`. |
| support / reduction | `ofBodies` (42) | PASS WITH NOTES | Exact inverse coordinate assembly; location differs from the design node table, but agrees with embedded Models signatures. P6-6 must import Models. |
| support | `bodyVector_ofBodies` (44) | PASS | Every body recovered, all dimensions. |
| support | `ofBodies_bodyVector` (48) | PASS | Every flat vector recovered. |
| split / kepler-part | `keplerPart` (55) | PASS | Sum of energies with mass `m i` and strength `κ`, later `κ=G*m0`; no reduced-mass substitution. |
| split | `pairPotential` (57) | PASS | Each unordered pair once (`i<j`), coefficient `G*m i*m j`. |
| split | `fMov` (60) | PASS | Full `|Σp|²/(2*m0)` minus pair potential, independent of μ. |
| split | `fFix` (62) | PASS | Negative direct pair potential, independent of ε. |
| conventions | `gKernel` (65) | PASS | `q_i/length(q_i)^3`. |
| conventions | `fKernel` (66) | PASS | Sum over `j≠i` of `m_j*(q_j-q_i)/length(q_j-q_i)^3`. |
| kepler-part | `keplerPart_eq_sum` (182) | PASS | Literal `energyMK` sum; `rfl`. |
| split | `movingHamiltonian_split` (186) | PASS | Exact frozen moving Hamiltonian, total identity on the whole carrier. |
| split | `fixedHamiltonian_split` (208) | PASS | Exact frozen fixed Hamiltonian, total identity. |
| split | `moving_sub_fixed` (213) | PASS | Same coupling on both sides; difference is precisely μ times total-momentum kinetic term. |
| action-reaction | `sum_mass_smul_fKernel` (221) | PASS | Stronger than blueprint: no collision/sign/dimension premise. Pairwise antisymmetry is valid even at coincident points under total division. |
| domain | `isOpen_collisionFreeDomain` (258) | PASS | Finite intersections of inverse images of positive lengths. |
| split / domain | `analyticOnNhd_fMov` (306) | PASS | Analytic throughout W; no collision denominator differentiated at zero. |
| split / domain | `analyticOnNhd_fFix` (314) | PASS | Same for fixed perturbation. |
| domain | `analyticOnNhd_movingHamiltonian` (319) | PASS | Stronger than blueprint C∞; constants may have arbitrary real values, including zero masses as total algebraic parameters. |
| domain | `analyticOnNhd_fixedHamiltonian` (327) | PASS | Same strengthening for frozen fixed Hamiltonian. |
| domain | `differentiableAt_movingHamiltonian` (335) | PASS | Only pointwise NoCollision required. |
| domain | `differentiableAt_fixedHamiltonian` (339) | PASS | Only pointwise NoCollision required. |
| hamilton-eqs | `hamiltonianVectorField_moving` (545) | PASS | Velocity `p_i/m_i + μ/m0*Σp`; force `-G*m0*m_i*g_i + μ*G*m_i*f_i`, correct signs and body indexing. |
| hamilton-eqs | `hamiltonianVectorField_fixed` (556) | PASS | Velocity `p_i/m_i`; force coupling ε; no spurious moving-Sun kinetic contribution. |
| hamilton-eqs / curve | `hasDerivAt_bodyVector` (569) | PASS WITH NOTES | Exact designed forward projection. Blueprint's full curve iff is not exported under a single name; its converse is finite-product calculus (checked separately below). |

Analyticity is stronger than C∞ on this finite-dimensional real carrier, and the removal of positive-mass, positive-coupling and `n≥1` restrictions strengthens the algebraic statements. No physical assertion is made at zero masses or collisions. These are documented design deviations D5/D6, not silently substituted hypotheses.

## Definition classification and private proof review

All eight public definitions and all five private definitions are intended objects on their whole Lean carriers:

| Definitions | Classification |
|---|---|
| `collisionFreeDomain` | Literal frozen collision-free predicate on the position block; momenta unrestricted. |
| `ofBodies` | Equivalence-based reindexing, no selection or fallback, with both inverse laws proved. |
| `keplerPart`, `pairPotential`, `fMov`, `fFix` | Literal finite sums and rational expressions with Lean's standard total division. Their physical interpretation is restricted to positive masses and W; no arbitrary replacement Hamiltonian. |
| `gKernel`, `fKernel` | Literal force kernels with total inverses. At zero distance the corresponding numerator is also zero, so extending the action-reaction algebra to collisions does not fabricate a physical force law. |
| private `posCLM`, `momCLM` (72,79) | Continuous linear projections to the literal body blocks. |
| private `dotCLM` (90) | Continuous linear dot-product functional, verified by `dotCLM_apply`. |
| private `modelH` (348) | Exactly `keplerPart κ m + c*(b*|Σp|²-pairPotential G m)`. Moving substitution `(κ,c,b)=(G*m0,μ,1/(2*m0))`; fixed substitution `(G*m0,ε,0)`. Both equalities are proved as function equalities (351,358), valid on the entire carrier. |
| private `pairW` (471) | Literal coordinate of `G*m_i*m_j*(q_i-q_j)/length(q_i-q_j)^3`, antisymmetric even with total inverses. |

No new abbrev, structure, bundled assumption, chosen witness, or instance is introduced. Private calculus helpers establish derivatives from polynomial rules and inverse-length calculus; `hasFDerivAt_modelH` constructs the differential, rather than assuming it. Its only substantive input is NoCollision. `hvf_modelH` evaluates that differential on coordinate directions. The symmetric-sum and antisymmetric-kernel premises of private algebra helpers describe input kernels and are discharged explicitly; none assumes a target Hamilton equation.

The private model is faithfully attached to both frozen Hamiltonians before differentiation. All inverse-position derivative calls carry `hz.1` or `hz.2` converted to nonzero vectors. Constant mass denominators are never differentiated as variables. Off-W algebra is used only for identities and cancellation; there is no off-W dynamical or analytic claim. `finProdFinEquiv (i,c)` uses exactly the frozen body extraction, so no norm or indexing replacement occurs.

## Checks and evidence

All auditor-started Lean checks were serialized. The targeted build and explicit probes/replay used `LEAN_NUM_THREADS=1` and `nice -n 5`; no heartbeat, recursion-depth or synthesis overrides were introduced. Lint was also rerun with that environment and niceness because it internally launches the ABI Lean probe.

1. `git diff --stat inp...HEAD`:

   ```text
    KAM/Planetary/Newtonian/Models.lean | 579 ++++++++++++++++++++++++++++++++++++
    1 file changed, 579 insertions(+)
   ```

   `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md`: empty, exit 0.
   `git diff --check inp...HEAD`: empty, exit 0.

2. Targeted compile through the required gate:

   ```sh
   env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p61 KAM.Planetary.Newtonian.Models
   ```

   Exit 0. Output: `[inp-gate] slot 2 acquired 00:41:43 for KAM.Planetary.Newtonian.Models`; `Build completed successfully (9089 jobs).` The gate runs `nice -n 5 lake build`. Only replayed prerequisite warnings: unused `hm` and `hκ` at `KAM/Kepler/Energy.lean:106:35` and `:106:48`. No Models error or warning.

3. Signature/axiom probe:

   ```sh
   env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P61Audit.lean
   ```

   Exit 0; 17 copied design signatures and 17 complete-type `rfl` equalities elaborated without diagnostics. Exact axiom-query output follows (same order as the design):

   ```text
   'KAM.Planetary.bodyVector_ofBodies' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.ofBodies_bodyVector' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.isOpen_collisionFreeDomain' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.analyticOnNhd_movingHamiltonian' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.analyticOnNhd_fixedHamiltonian' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.differentiableAt_movingHamiltonian' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.differentiableAt_fixedHamiltonian' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.keplerPart_eq_sum' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.movingHamiltonian_split' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.fixedHamiltonian_split' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.moving_sub_fixed' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.analyticOnNhd_fMov' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.analyticOnNhd_fFix' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.sum_mass_smul_fKernel' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.hamiltonianVectorField_moving' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.hamiltonianVectorField_fixed' depends on axioms: [propext, Classical.choice, Quot.sound]
   'KAM.Planetary.hasDerivAt_bodyVector' depends on axioms: [propext, Classical.choice, Quot.sound]
   ```

4. Kernel replay, one invocation:

   ```sh
   env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Planetary.Newtonian.Models KAM.Kepler.Basic KAM.Kepler.Plane KAM.Kepler.Energy
   ```

   Exit **0**. Complete output:

   ```text
   replaying KAM.Kepler.Energy
   replaying KAM.Kepler.Plane
   replaying KAM.Kepler.Basic
   replaying KAM.Planetary.Newtonian.Models
   ```

5. The curve converse, omitted as a named export but asserted in the blueprint, was independently checked:

   ```sh
   env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P61Curve.lean
   ```

   Exit 0, empty output. The probe assumes both `HasDerivAt` body projections for every body and concludes `HasDerivAt z v t`; it uses `hasDerivAt_pi.mpr`, surjectivity of `finProdFinEquiv`, `hasDerivAt_pi.mp`, and `HasDerivAt.prodMk`. This confirms that the designed forward helper plus ordinary product calculus supplies the blueprint's iff. The package itself exports only the forward helper; consumers needing an iff must assemble these elementary steps.

6. Hygiene inspection: 579 total lines, below the 1500-line cap; copyright/authors, `module`, public imports, module docstring and exposed public noncomputable section are present. No `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, resource override or `EuclideanSpace` occurs in the new file. A recursive traversal of local KAM imports found **43 modules**, and **zero** provider or frozen-theorem modules. Thus there is no hidden DRAFT_SORRY dependency; axiom output independently confirms this for all public theorems.

7. Source lint (final run):

   ```sh
   env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
   ```

   Exit **1 solely for the brief-permitted stale generated root**. Complete output:

   ```text
   KAM.lean is out of date; run scripts/gen_root_imports.py
   check_lean_modules: PASS (264 Lean files, 0 comparator configurations)
   FROZEN-ANCHOR GUARD OK
   ABI HASHES OK (144 frozen declarations)
   ```

   No other lint failure. The manifest guard and all 144 elaborated frozen declaration hashes pass. `KAM.lean` was deliberately left untouched under the hard rule; its regeneration belongs to the orchestrator. The earlier lint run produced the same output and exit status.

## Blueprint/source issues, deviations and limits

- **Existing blueprint regularity mismatch, addressed here:** `blueprint-P/parts/p6-newtonian-models.tex:55` says the Hamiltonians “are $C^\infty$ on $W$”; `blueprint-P/parts/p7-kepler-poincare.tex:207` cites that lemma for perturbation analyticity, “whose proof gives analyticity as well as $C^\infty$”. Smoothness alone does not imply analyticity, and the Part 6 lemma as stated does not provide what that citation requests. Design §5 B2 already records this. Models proves the stronger analytic Hamiltonian and perturbation statements directly, so this is a documentation note, not an unpaid proof step.
- **Documented stronger domains:** design §4 D5/D6 and §5 B3 explain the dropped sign/collision premises and analytic strengthening. Action-reaction is unconditional; Hamilton fields still require NoCollision. No frozen statement was altered.
- **Placement deviation:** the design §2.3 row assigns `ofBodies` to Reduction, but the embedded signature section puts it in Models. The implementation follows the signature section. This creates no cyclic import: Reduction is downstream of Models. Record the placement when implementing P6-6.
- **Curve packaging:** the blueprint lines 90–100 state an iff; the named designed helper is forward only. The successful independent converse probe closes the elementary logical coverage question, but does not create an additional repository export.
- No suspected defect in a pinned primary source or frozen declaration was found in this package review. This audit checks the package against the literal frozen model definitions, design and blueprint; it does not independently re-audit Fejoz's PDF, prove the reduction/reconstruction packages, or establish the later KAM/Nekhoroshev results.
- Auditor deviations: none in production Lean, frozen files, manifest or generated files. No state-changing git command or source edit was performed. Temporary probes and captured verification logs are removed after their results are recorded here.
