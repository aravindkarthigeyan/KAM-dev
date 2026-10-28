# N3-9a: independent package audit

**Overall verdict: PASS WITH NOTES.** All four public theorem signatures match the binding design, the proofs establish the actual `UniformData` fields, and kernel replay passed on the first attempt with `LEAN_NUM_THREADS=1`. No mathematical or implementation fix is required. The only integration note is the expected generated-root notice from lint; the audit brief explicitly permits it.

No provider or frozen theorem anchor is in scope, so provider-type and seal-body checks are not applicable. This receipt approves the uniform-data package, not a continuation theorem or a frozen headline.

## Scope and snapshot

- Worktree `/root/code/KAM-inp-n3nu`, branch `inp-n3nu`, commit **`e693ec801158413932c3f33a0a460cad4b4527de`**.
- Binding base, as requested: parent **`0bd35893788d7e0111de4906a723cad30b8abda0`**. The complete parent delta adds only `KAM/ODE/NewtonUniform.lean`: **534 lines, 26,918 bytes**, SHA-256 **`0464bc9c380a0305b716757e7ee60a6f18441a070904fde968d3eaf16454efb4`**.
- Also ran the brief's `git diff inp...HEAD` checks. At audit time inp already descended from this package commit: `git merge-base inp HEAD` was e693ec8. That three-dot delta was empty; the requested parent comparison supplied the actual package delta. Protected paths `KAM/Frozen`, `manifest`, `KAM.lean`, `README.md` are unchanged in both comparisons.
- Read the complete package-audit brief, AGENTS.md, the project plan and relevant decisions, track-N statement conventions, the binding `PART3-LEAN-DESIGN.md` Appendix A signatures and N3-9a proof plan, the complete new module, and its `Lipschitz`/`NewtonDefs` interfaces. Compared the raw blueprint's `stepN:p3:nc-data` and surrounding Newtonian continuation statement. Checked the plane-length norm comparisons and frozen-radius identification in the imported geometry layer.

Only this report was written outside temporary `.lake/abi-scratch/` probes. The probe was deleted. No source, definition, frozen file, manifest or generated root was edited; no state-changing git command was used. All commands and Lean processes were run sequentially.

## Declaration verdicts

Names below have namespace `KAM.ODE`.

| Blueprint node / role | Lean declaration | Verdict | Verification |
|---|---|---|---|
| `stepN:p3:nc-data`, inverse-cube analytic helper | `lipschitzOnWith_inv3_smul`, L90 | PASS | Exact design signature. Global Lipschitz estimate on the full exterior set `{w : r <= planeLength w}`, without assuming it is convex. The existential constant is positive/nonnegative under r>0 and uses the ambient max norm correctly. |
| `stepN:p3:nc-data`, Newton field | `newton_uniform_data`, L272 | PASS | Exact design signature; delta is exactly rho/8. Uniform bounds do not depend on the centre's absolute position. Every `UniformData` field is proved. |
| `stepN:p3:nc-data`, fixed centre | `fixed_uniform_data`, L336 | PASS | Exact design signature. Adds centre-distance control and bounds the centre force separately from the signed eps-scaled interaction. No positive-mass or positive-eps premise was introduced. |
| `stepN:p3:nc-data`, restricted field | `restricted_uniform_data`, L444 | PASS | Exact design signature. Both primary distances are controlled; the two bounded phase blocks pay the linear rotating-coordinate terms. Works for arbitrary real mu, as designed. |
| Internal constructor | private `uniformData_of_aux`, L209 | PASS | Constructs the existing structure directly, rather than a parallel uniform-data predicate. Its norm and Lipschitz premises are discharged in each public theorem. |

Mechanical whitespace-normalized comparisons found **all four public declaration headers identical** to Appendix A, including implicit rho/r binders, argument order, carriers, existential order `(M : R) (L : NNReal)` and the exact field/domain/region arguments. A separate elaborated probe instantiated the four complete design proposition types with the corresponding exports.

The design allows all N, signed coefficients and arbitrary Vbar, where the blueprint's physical application imposes narrower conditions such as N>=2 and Vbar>=0. These stronger helper statements are true: absolute values control signed coefficients; negative Vbar gives an empty region; empty pair sums and finite products handle N=0 and N=1. No new physical assumption is needed to apply the helpers at the blueprint consumer.

## Proof checks and refutation attempts

### The inverse-cube estimate is global

Let a=ell(w), b=ell(w'), with `r<=b<=a`. The code splits

`a^(-3) w - b^(-3) w' = a^(-3)(w-w') + (a^(-3)-b^(-3))w'`.

Using the shorter vector in the second term is essential. The private real inequality is valid:

`(b^(-3)-a^(-3))*b <= 3*r^(-3)*(a-b)`.

Indeed its left side is `(a^3-b^3)/(a^3*b^2)`, the numerator is at most `3*a^2*(a-b)`, and `r^3<=a*b^2`. All denominators are strictly positive at this use. Also `norm(w')<=b` and

`a-b <= abs(a-b) <= ell(w-w') <= sqrt(2)*norm(w-w')`.

The resulting constant is exactly

`C(r)=r^(-3)*(1+3*sqrt(2))`.

The opposite ordering follows by exchanging w,w' and reversing the two norm differences. Thus no segment is assumed to remain outside the collision ball. The proof neither applies a mean-value theorem on a nonconvex set nor substitutes the max norm for ell. Converting the nonnegative constant to NNReal is justified explicitly.

### Closed-ball inclusion and collision guards

For a phase-space closed ball of radius delta=rho/8, projection to the position block has norm at most delta. A relative pair vector changes by at most `2*delta=rho/4`; its Euclidean length changes by at most `sqrt(2)*rho/4<=rho/2`. Thus every pair distance stays at least rho/2, including points on the ball boundary. Centre and primary distances need only one position difference, so the same conservative estimate suffices.

The auxiliary sets `pairSet`, `fixedSet`, `restrictedSet` therefore contain each required closed ball. Since rho>0, their distance lower bounds are strictly positive and imply membership in the exact collision-free domain. Identities involving the inverse cube are only used under these guards; no proof relies on the total inverse at zero.

### Bounds are uniform in the centre

Put `r=rho/2`, `A=sum_j abs(G*mass_j)`, `B=abs(Vbar)+rho/8`, and `C=C(r)` above. The constructed witnesses are:

| Field | M | Real constant converted to NNReal L |
|---|---|---|
| Newton | `B+A*r^(-2)` | `1+2*A*C` |
| Fixed centre | `B+abs(G*m0)*r^(-2)+abs(eps)*A*r^(-2)` | `1+abs(G*m0)*C+2*abs(eps)*A*C` |
| Restricted, `K=abs(1-mu)+abs(mu)` | `2*B+K*r^(-2)` | `2+K*C` |

The single-force bound `norm(c*ell(w)^(-3)*w)<=abs(c)*r^(-2)` uses `norm(w)<=ell(w)`, so unbounded relative positions are cancelled against their inverse powers. The pair-map Lipschitz factor is 2; the single-centre and shifted-primary factors are 1. Filtered sums are enlarged to full sums only after their coefficients are known nonnegative.

For Newton and fixed centre only the velocity block needs an absolute bound. For the restricted field the region explicitly bounds both q and p, paying its linear terms. Its first block is at most 2B and is 2-Lipschitz; its second block is at most `B+K*r^(-2)` and is `(1+K*C)`-Lipschitz. The displayed common M,L safely bound both blocks in the product max norm. In particular there is no unmentioned upper bound on positions in the Newton/fixed proofs, nor an assumption that mu lies in [0,1].

### Actual `UniformData` fields

Compared directly with `KAM/ODE/Lipschitz.lean:49`:

| Field | How the new module proves it |
|---|---|
| `delta_pos` | rho/8>0 from h_rho. |
| `M_nonneg` | Every witness term is nonnegative; Vbar is replaced by its absolute value. |
| `closedBall_subset` | Ball inclusion in the relevant half-distance auxiliary set, then strict domain membership. |
| `norm_le` | On every full closed ball, including its boundary, the field estimate above and phase-block projection bounds. |
| `lipschitz` | The field inequality on the auxiliary set restricts to each ball; NNReal coercion is discharged with the established nonnegativity. |

No extra C1/openness field is silently assumed: those standing facts are deliberately not fields of this structure. They remain available separately to the later continuation consumer. The generic private constructor only packages already proved estimates; the public theorem premises do not contain a Lipschitz estimate, boundedness conclusion or a prior `UniformData` witness.

## Definitions and blueprint fidelity

No new public definition, abbreviation or structure is introduced. The five private definitions are explicit, non-choice formulas:

| Definition | Classification |
|---|---|
| `Lg` | Algebraic real-valued bound formula; only its positive-radius behaviour is used for estimates. |
| `pairSum` | Literal filtered Newton force sum, including the correct empty-sum cases. |
| `pairSet` | Configurations with all pair distances at least rho/2. |
| `fixedSet` | pairSet intersected with the same centre-distance bound. |
| `restrictedSet` | The two shifted-primary distance bounds. |

These total formulas have their stated meaning on their whole carriers; no fallback or witness selection was added. Their arbitrary nonpositive-radius values are not used to infer collision exclusion.

The blueprint chooses delta=rho/8 and states that field/derivative estimates are independent of the position of the centre. This implementation proves the required boundedness and Lipschitz properties directly from algebra, as the binding design prescribes, instead of differentiating the field. It is a valid alternative proof of precisely that uniform-data step. The restricted field rewrite and frozen-radius identification are definitional equalities, so no parallel physical field is assumed equivalent without proof.

The package does not prove `nc-apply` or any of the three continuation corollaries. Its outputs have exactly the existing structure and carriers those consumers need. No contradiction with the blueprint, binding design, frozen definitions or a pinned mathematical source was found. No suspected erratum or mathematical deviation is introduced by this audit.

## Hygiene and execution receipts

All execution was sequential. Every Lean/checker invocation used one thread and nice priority 5, directly or through the required build gate.

**Targeted build:**

```text
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-n3nu KAM.ODE.NewtonUniform
[inp-gate] slot 1 acquired 00:22:55 for KAM.ODE.NewtonUniform
Build completed successfully (9097 jobs).
exit 0
```

**Binding-type and axiom probe:** `LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/N39aAudit.lean`, **exit 0**. The four complete design-type applications elaborate. The temporary proposition aliases produced only unused proof-binder name warnings; these are probe warnings, not package proof failures or resource failures. Exact axiom output:

```text
'KAM.ODE.lipschitzOnWith_inv3_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.newton_uniform_data' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.fixed_uniform_data' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.restricted_uniform_data' depends on axioms: [propext, Classical.choice, Quot.sound]
```

**Kernel replay:**

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.ODE.NewtonUniform
replaying KAM.ODE.NewtonUniform
exit 0
```

This was the first and only kernel-replay invocation. It was not killed with exit 143, so the specified wait-and-retry procedure was not needed. The module replay covers the private proof infrastructure as well as the four exports.

**Source lint:** `LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh`, **exit 1 solely for the expected generated-root notice**:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (263 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

This is the expressly permitted lint exception. The orchestrator should regenerate the root when integrating; this audit did not edit the generated file.

The new module has the copyright, `module`, public imports, module docstring and public section; 534 lines is below the cap. It contains four public theorems, 24 private theorem helpers and five private definitions. Source inspection and lint found no sorry/admit/axiom/unsafe/opaque declaration, heartbeat/recursion/synthesis override, forbidden ambient type, global function/matrix instance, provider import or frozen-anchor import. The only imports are `KAM.ODE.Lipschitz` and `KAM.ODE.NewtonDefs`.

`git diff --check HEAD~1 HEAD` passed. The package worktree remained clean, the temporary probe was removed, and the reviewed module hash was rechecked unchanged. No provider/seal check was performed, as instructed.
