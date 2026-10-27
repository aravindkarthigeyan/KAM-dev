# Review 1: complete I-R3BP assembly and shared collision exclusion

## Verdict: ACCEPT WITH FIXES

The assembly proves the frozen I-R3BP conclusion at blueprint level, taking the **frozen I-HEAD theorem** as an input. I found no blocking or major error in the enlargement, application, constant order, physical bounds or physical-variable uniqueness. Choosing η=1 is legitimate: membership of the actions in the safe domain B is already part of the frozen solution predicate. It is unnecessary to keep the elements in the original open initial intervals.

The complex Kepler dependency was repaired during this review in commit `26fa1d1`. I checked the revised tube argument and its action-domain inclusion before accepting the current application. The earlier I67-01 objection is not retained as an objection to this refreshed input. The fixes below concern empty-index/empty-set guards and inaccurate prose, rather than the main I-R3BP argument.

## Snapshot, materials and validation

- Reviewed `blueprint-I/parts/p8-r3bp.tex`: **249 lines, 26,531 bytes**; SHA-256 `22662a4b642afd41c10479527649d558f0559703a4cd4341f6cca2d6efd2d6c0`.
- Read the complete review brief, AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, writer convention ruling, I's PLAN/preamble and Part-0 transcription, relevant source notes, Parts 6–7 and the shared ODE contracts in N Part 3. Inspected the frozen theorem `KAM/Frozen/Iso/Theorems/RestrictedNearCircular.lean` and the **actual type** of `AllTimeConfinement.lean`, rather than relying only on the blueprint summaries.
- Checked the frozen definitions of `NearCircular`, `radius`/`radiusSq`, both primaries, `CollisionFree`, the restricted Hamiltonian/vector field, `IsRestrictedSolutionOn`, `IsHamiltonianSolutionOn`, and `realHamiltonian`. The geometry and all four final bounds use the frozen physical Euclidean radius, not the ambient max norm in place of that radius.
- The old Part-7 hash was `c062dee8da14852a7e8284ca2bec77ac816b2ee12853fd97c1aae00ed23f7d69`. After the concurrent correction in `26fa1d1`, the checked dependency is `1a70e971aca8ae0f2c450b0cab593cfe6e3be8d459dc40b5ce5a4e9c4edcb13d`. The new Kepler domain, contraction estimates and principal-root action-domain argument were read directly; see the verification below. This is a focused check of what Part 8 consumes, not a fresh audit of every Part-7 output for P.
- Pinned-source comparison: Chi05 pp.8–9, 11–17, including the exact heliocentric square-root Hamiltonian and its coordinate reductions, as read directly in the preceding Parts-6/7 review. The present argument is an original assembly from the exact frozen barycentric model; no numerical Victoria theorem or additional Arnold theorem is used.
- `latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` in blueprint-I: **exit 0, 58 pages**, zero lines beginning `!`, no undefined-reference warnings. The new Part 8 is included in the master. The review does not certify other concurrently included parts merely because the master compiles.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (175 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- Verification was algebraic and by exact contract comparison; no Lean file was changed or built. No fresh `#print axioms`, provider sealing or axiom-free implementation is claimed. The brief explicitly permits this blueprint-only review.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| I8-01 | `bpI:p8:collision-exclusion`(b), p8:95–102; external `bpI:p8:x-topo` | minor | The compact minimum over j is asserted positive with m∈N, allowing m=0. For a nonempty compact S and no reference points, this minimum has no element; a real-valued totalized empty infimum does not yield the asserted positive minimum. The external compact-distance fact also omits S≠∅, although real infDist to the empty set does not have its asserted positive attained value. The actual restricted-problem instance has m=2 and a nonempty shell, so the main proof is unaffected. | Require m≥1 for the displayed definition of δS in (b), and state S≠∅ before using attained minima. Treat S=∅ or m=0 separately by selecting any positive δ and using the vacuous distance conclusion. Add the nonempty guard to the external compact-distance fact. The quantitative form (a) can retain m=0. |
| I8-02 | `stepI:p8:pf-uniq`, p8:229 | minor | “Fμ the C∞ extension of Vμ” suggests a globally smooth extension across collisions. Such an extension is not available: the Newtonian field is singular there. The cited shared theorem only needs a total extension that is C∞ **on Wμ**. | Say “the total formula extension Fμ, C∞ on the open collision-free set Wμ”, and use that local regularity for uniqueness. Do not assume smoothness at either primary or for the zero extension across the collision set. |
| I8-03 | Introduction p8:13; `bpI:p8:totality`(4), p8:248 | minor | The references to Chi05's “truncated” model are stale after the Part-7 correction. Chi05 (3.38)–(3.43) gives an exact heliocentric/extended-phase-space formulation, with different normalization and rotating reduction. It is an alternative formulation of the physical problem, not evidence of a truncated approximation or a different physical problem. | Use the corrected Part-7 description: this proof derives its exact barycentric perturbation directly from the frozen Hamiltonian, rather than importing Chi05's exact differently normalized formulation. Remove “truncated” and “different problem”. |

## Frozen contract audit

The frozen theorem first assumes only the six bounds on aMinus,aPlus,eMinus,ePlus, then concludes openness and nonemptiness of `NearCircular`, followed by `∃ μ₀ d R`. It requires `0<μ₀`, `μ₀≤1/2`, `d>0`, `R>0` **before** quantifying over μ, the nonnegative/smallness premises, and every z₀ in that fixed region. The proposed construction has exactly that order.

For each such initial point, the required output is a total curve z:R→R²×R² with z(0)=z₀, the frozen genuine restricted-solution predicate on all real times, and for every t the two primary-distance lower bounds and the two radius upper bounds. Finally it requires agreement with every genuine physical restricted solution on every open interval a<0<b through the same z₀. Part 8 supplies all of these clauses, including μ=0, with the actual frozen primary shifts −μ and 1−μ. It adds no premise about confinement of competitors, no invariance of the initial element intervals, and no assumption that the physical initial point lies on a KAM torus.

This is an assembly using I-HEAD as a theorem with its frozen contract. It is not a proof of I-HEAD itself and does not imply that its Lean anchor is sealed.

## What I recomputed: refutations that failed

### Initial region, topology and enlargement

On 0<G<L, the function κ(x)=√(1−x²) is a decreasing involution on [0,1]. Thus the element bounds are exactly

`sqrt(aMinus)<L<sqrt(aPlus)`,

`κ(ePlus)L<G<κ(eMinus)L`.

The corresponding closed trapezoid is compact and stays in the cone because aMinus>0, ePlus<1 and eMinus>0. The chart's image description gives every physical initial point Delaunay coordinates; the Cartesian element characterization gives openness. The explicit perihelion point at the midpoint values has `u(0,e*)=0`, position `(a*(1−e*),0)` and momentum `(0,κ(e*)/[L*(1−e*)])`, so it establishes nonemptiness with all frozen positive witness clauses.

The enlargement parameter

`t=min(1/8,(1−rho*)/(6aPlus))`

is positive, independent of μ and of the initial point. The enlarged bounds have aMinus'=aMinus/2>0, aPlus'=aPlus(1+t)>aPlus, eMinus'=eMinus/2>0 and `ePlus'=ePlus+t<3/8`. They strictly contain every point of the initial closed trapezoid, including all four boundary sides. No uniform margin inside the original **open** element intervals is asserted.

For the outer physical radius,

`aPlus'(1+ePlus') = rho*+aPlus[t(2+ePlus)+t²]`.

Since t≤1/8 and ePlus<1/4, the bracket is ≤3t, which is ≤`(1−rho*)/(2aPlus)`. Therefore

`rhoMax≤(1+rho*)/2<1`,

while `rMin≥aMinus'(1−ePlus')>0`. The compact set K is nonempty, stays away from L=0 and e=0,1, and contains the entire enlarged open U. Multiplication by 2π is a homeomorphism, so B=2πU is open, bounded and nonempty, and B'=2πA is open with compact closure contained in B. These are exactly the frozen I-HEAD set hypotheses.

### Refreshed complex Kepler dependency

The corrected Part 7 replaces the full complex eccentricity disc by the tube `dist(e,[−e₁,e₁])<δE`, sets `δK=(1−θ*)y₀/2`, and chooses

`δE≤min(e₂−e₁,(1−θ*)y₀/(2cosh y₀))`.

For u=x+iy in its closed strip,

`abs(Im(e sin u))≤abs(Re e)sinh y₀+abs(Im e)cosh y₀`.

The new choices give `δK+e₂sinh y₀+δE cosh y₀≤y₀`, with strict room from the open ℓ-strip, and derivative modulus ≤e₂cosh y₀=θ*<1. The previously false complex-e self-map step is therefore repaired.

The action neighborhood is also re-shrunk: its squared-eccentricity variation is <`min(eMinus²/2,eMinus δE)`. Positivity of the principal-root real part gives

`abs(e−eReal)=abs(e²−eReal²)/abs(e+eReal)≤abs(e²−eReal²)/eMinus<δE`.

Thus the complex actions actually land in the corrected eccentricity tube, not merely in a disc. The subsequent uniform complex orbit map and exact perturbation bound on a neighborhood of K are available for this assembly. I67-01 described the previous snapshot; it is not an unresolved dependency in the refreshed one.

### I-HEAD data and extension by zero

The transformed integrable Hamiltonian is fixed before εH and before μ:

`tilde h(I)=−(2π)²/(2I₁²)−I₂/(2π)`.

The source strip/action neighborhoods become `s₀=δ₂/(2π)` and `r₀=2πδ₂`. The pole is excluded on the whole action tube by `Re I₁>πmL>0`. At every real point in that tube, the frozen bordered determinant equals `3/I₁⁴>0`. The argument does not establish this only at the initial actions.

For each μ, define tilde fμ by the exact local formula μFμ∘S on the open complex domain Ω=`T_s₀×B_r₀`, and by zero outside Ω. This is a total function of the frozen type. Its lack of global holomorphy at the boundary is irrelevant: the frozen hypotheses require holomorphy **on Ω**, and extension by zero preserves its germ at every point of Ω. Angle translations preserve Ω, so the required on-domain period-one identity also holds. Real points in the real action tube have zero imaginary part, and the value bound is `norm(tilde fμ)≤CF μ` for 0≤μ<μ₂.

The same germ observation is essential for solution transfer. Every visited action lies in B⊂B_r₀; hence each visited real phase point has an open neighborhood on which the extended Hamiltonian agrees with the analytic transformed physical Hamiltonian. Their genuine total fderiv values agree there. No default derivative of a discontinuous extension is used to create a solution.

### Constant order, positivity and the μ=0 endpoint

The choice order is

`(a±,e±) → K,B,B',η=1 → δ₂,μ₂,CF,s₀,r₀,tilde h → εH → μ₀,d,R`.

The frozen I-HEAD constant εH is chosen before fμ or its amplitude. Since CF>0 and all shell constants are positive,

`μ₀=min(1/2,μ₂,εH/CF,ν₀/2)>0`,

`d=ν₀/2>0`, `R=sqrt(2/rMin)>0`, `ν₀=min(rMin,1−rhoMax)>0`.

They depend only on the original element bounds. They precede both μ and the choice of the physical initial point or its angle representatives. Strict μ<μ₀ yields both μ<μ₂ and `ε=CF μ<εH`, including the case μ=0. There is no division by μ, and the removable perturbation Fμ at zero is multiplied by μ, giving tilde f₀=0.

The upper bound μ₀≤1/2 is explicit. Because rMin≤rhoMax<1, R>1>rhoMax. No momentum constant is selected after seeing the orbit.

### Applying I-HEAD and bounding the physical orbit

For the chosen Delaunay representative of z₀, `I₀=2π(L₀,G₀)∈B'`. I-HEAD supplies a total lifted solution with action in B at every real time, genuine Hamiltonian derivative there, and the required initial value. The extension by zero has not changed the hypotheses at any of those points.

Choosing η=1 does not introduce a confinement gap. The frozen predicate already says the action lies in **B**, which was chosen wholly inside the safe compact K after rescaling. The additional distance-from-I₀ conclusion of I-HEAD is not needed for the physical radius bounds. There is no requirement that the original region N itself be invariant.

The symplectic map Q∘S preserves time: scaling the angle by 2π and the action by its reciprocal is a canonical coordinate change, not a rescaling of the Hamiltonian value or of time. The refreshed transfer theorem consequently yields the frozen restricted-solution predicate on all R. Its collision witnesses are genuine positive-radius witnesses, and its derivative is HasDerivAt with the subtype restricted vector field.

For every orbit point, `(L,G)=I/(2π)∈U⊂K`. The unperturbed **element identities at that phase point** give

`rMin≤radius(q)≤rhoMax`,

`radius(p)²=2/radius(q)−1/L²≤2/rMin=R²`.

The latter uses the Kepler element identity, not conservation of the Kepler energy along the perturbed orbit. Thus `radius(p)≤R`, and `radius(q)<1<R`. The frozen momentum p is the rotating canonical momentum (the rotated inertial velocity); the theorem does not ask for the same bound on the rotating coordinate derivative q′.

The primary displacements from the reference points 0 and e_vec have Euclidean length abs(μ). On the shell,

`radius(q−primary₁ μ)≥rMin−abs(μ)≥ν₀/2=d`,

`radius(q−primary₂ μ)≥1−rhoMax−abs(μ)≥ν₀/2=d`.

These bounds include μ=0 and remain strictly positive. All inverse radii in the physical equations are therefore guarded along the exhibited solution.

### Physical uniqueness and the shared collision lemmas

An arbitrary competitor on (a,b) is assumed only to satisfy the frozen restricted-solution predicate and the same initial value. That predicate supplies collision freedom and a genuine derivative at each time. N's reduction therefore makes it an IsSolIn orbit of the same total field on the open collision-free set Wμ. The physical field is C∞ there. The exhibited solution restricts to the same interval and has the same initial point at 0∈(a,b); uniqueness on arbitrary intervals gives equality throughout (a,b). The competitor need not remain in the Delaunay image, the safe shell, or B. No inverse coordinate map is used in this uniqueness step.

The general collision lemma's quantitative form is just the reverse triangle inequality: δ−c abs(μ)≥δ/2. Its c=0 branch avoids division by zero. No continuity of the moving reference points is needed. The shell instance correctly uses c=1, reference points 0,e_vec and δ=ν₀. For nonempty finite reference families and nonempty compact S, every distance minimum is attained and positive; I8-01 supplies the missing degenerate-case guards. The N-body minimum-distance corollary already states N≥2 and scopes positivity to S≠∅, so its finite pairwise minimum is guarded. Rigid rotation preserves these Euclidean distances exactly.

## Route, sources and limits

The Part-8 route is valid with the refreshed Part-7 inputs and I-HEAD as the frozen imported theorem. It supplies all clauses of frozen I-R3BP without an extra assumption, a μ-dependent initial region, or a post-μ choice of d or R. It correctly implements finding I04 by enlarging the safe region; PLAN's suggestion to keep all trajectories in the original element intervals should not be reinstated.

No new source erratum or deviation affecting the frozen statement is required. The construction is an original exact barycentric assembly; I8-03 only updates its description of Chi05's alternative exact formulation. The generic collision lemmas are useful to N/P after the explicit empty-minimum guard, and do not supply a Poincaré regularization or a new planetary stability theorem.

This review certifies the blueprint argument and its interfaces, not Lean implementation, I-HEAD provider closure, or axiom-free sealing. Only the requested review Markdown files were edited by this reviewer; no frozen file, source, provider or ledger was changed.

Closeout: both requested source hashes and the refreshed I Part-7 dependency hash still match the snapshots recorded above. `git diff --check` passed; both reports passed explicit table-column, trailing-whitespace and conflict-marker checks. Concurrent work and generated tool artifacts elsewhere in the workspace were left untouched. No state-changing git command was run.
