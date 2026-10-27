# Track P additions (D22): approval packet

Prepared by the I/N/P sub-orchestrator (D23), 27 October 2026, for the owner's line-by-line approval. Nothing here is
frozen yet. On approval each declaration is frozen in its own file under `KAM/Frozen/Planetary/` (theorems with body
`sorry`, state `DRAFT_SORRY`), hashed in `manifest/frozen-anchors.json`, as for D20.

## What is proposed

The three milestones adopted in D22 for track P, as exact Lean (draft v0.4, `.drafts/P/Additions.lean`,
378 lines, sha256 `bf4b9d474e4c3fa32844af887f90851cb5bd026c101f2b5fc882b9169d5e72f0`; elaborates against Mathlib v4.35.0 with only the four theorem-body `sorry` warnings):

- **P-AMD-CONFINEMENT** (`amdConfinement`): a deterministic helper. For the planar planetary problem with a moving
  Sun (G = m₀ = 1, n ≥ 2 planets, fixed positive weights), in an explicit low angular-momentum-deficit region with
  separated semimajor-axis annuli (`AMDBox`), angular-momentum conservation plus a *stopped* fast-action drift bound
  (`StoppedActionBound`, valid up to the exit time) give, on the whole window, existence, uniqueness, Newton
  equations, no collisions, pair distances between explicit bounds, and the AMD/action bound. Its only dynamical
  input is the stopped estimate, which N-PARTIAL-CONVEX is designed to discharge.
- **P-EXP-SAFE** (`planetaryExponentialSafety`): Nekhoroshev 1977 Theorem 12.3 (pp. 55–56) specialized to that
  region: for EVERY initial condition in it, the solution exists for |t| ≤ exp(c·μ^(−a)) with no collisions or
  escapes and semimajor-axis drift ≤ C·μ^b, with the source's exponents a = 2/(6n²−3n+14), b = 3a/2
  (n = 2: a = 1/16, b = 3/32). Round 2's unverified 1/(2n) is not used.
- **P-SECULAR-BOX** (`secularBoxSafety`, `secularBoxAtCitedMasses`): in the exactly averaged (full average over both
  mean longitudes, no truncation) Sun–Jupiter–Saturn model, an explicit rational box of initial conditions is safe
  for all time; the second theorem specializes to the cited rational masses. This is the averaged model, not the full
  Newtonian problem and not an ephemeris certificate.

## Audit trail

| Step | Result |
|---|---|
| Independent statement audit v0.3 (GPT-6.1-Sol high), `AUDIT-additions-v0.3.md` | One major procedural finding (F-P-A1: two result-bundle definitions, `AMDSafeOn` and `SecularBoxConclusion`, may not be frozen as source definitions); every other declaration APPROVABLE; no counterexample, no excess premise, no vacuity. |
| Revision v0.4 | F-P-A1 applied exactly: both bundles inlined into the four theorem conclusions with literal substitution, aliases deleted; no premise, bound, witness or rate changed. |
| Independent delta audit v0.4 (GPT-6.1-Sol medium), `AUDIT-additions-v0.4-delta.md` | Every changed line accounted for; all carried-forward verdicts hold; N-to-P interface compatible (with the documented larger-domain construction, F-NADD-4). **READY FOR OWNER.** |

## Declaration inventory (all new; 34 definitions, 4 theorems)

| Declaration | Kind |
|---|---|
| `planeCross` | def |
| `keplerEnergy` | def |
| `keplerAxis` | def |
| `keplerAction` | def |
| `keplerEccVector` | def |
| `totalMomentum` | def |
| `physicalAMD` | def |
| `ProgradeElliptic` | def |
| `LowAMDRegion` | def |
| `AMDBox` | structure |
| `AMDBox.Admissible` | def |
| `IsMovingSolutionOn` | def |
| `IsNewtonSolutionOn` | def |
| `MovingUniqueOn` | def |
| `StoppedActionBound` | def |
| `amdConfinement` | theorem |
| `planetaryTimeExponent` | def |
| `planetaryDriftExponent` | def |
| `planetaryExponentialSafety` | theorem |
| `quarterTurn` | def |
| `orbitalUnit` | def |
| `secularGamma` | def |
| `secularAMD` | def |
| `secularRoot` | def |
| `secularEccVector` | def |
| `secularAxis` | def |
| `keplerMeanLongitude` | def |
| `longitudeJacobian` | def |
| `ellipsePosition` | def |
| `ellipseMomentum` | def |
| `ellipsePhase` | def |
| `secularIntegrand` | def |
| `exactSecularHamiltonian` | def |
| `SecularRegular` | def |
| `jupiterSaturnWeights` | def |
| `SecularInputBox` | def |
| `secularBoxSafety` | theorem |
| `secularBoxAtCitedMasses` | theorem |

## Owner questions (Q-P-A1–A5), with recommendations

These are recommendations awaiting the D22 statement audit and approval, not
assumed new rulings. They do not interrupt preparation of the complete draft.

- **Q-P-A1 — physical scope.** Approve G=m₀=1, fixed positive planetary weights,
  planar prograde data, and the explicit separated-annulus/low-AMD `AMDBox` region?
  **Recommend yes.** These are the requested specialization, with no factor-four
  restriction; restoring arbitrary G,m₀ can be a later scaling corollary.
- **Q-P-A2 — rate and source adaptation.** Approve the literal Nek77 a,b, symmetric
  exponential horizon, and the O(μ) conversion to heliocentric-canonical elements?
  **Recommend yes**, with the finite-cover, coordinate-transfer and continuation
  arguments recorded as proof work. Do not replace these with the unverified
  optimized exponent or an assumed analytic estimate in the headline.
- **Q-P-A3 — stopped interface.** Approve `amdConfinement` as a distinct conditional
  helper whose only dynamical input is the arbitrary-duration stopped estimate?
  **Recommend yes.** N-PARTIAL-CONVEX must discharge it after the analytic bridge;
  conservation of J is proved inside the helper for the literal physical system.
- **Q-P-A4 — precise secular model.** Approve the raw, untruncated full
  mean-longitude average in the fixed zero-coupling chart, including its weighted
  eccentric-longitude integral implementation and circular points?
  **Recommend yes.** This fixes the model without invoking a truncated series or
  a finite-order secular normal form; the mean-angle substitution is proof work.
- **Q-P-A5 — actual-mass language and box.** Approve the rational illustrative
  canonical-element box and the exact FH24v1 decimal-mass specialization, alongside
  the stronger parameter-family theorem?
  **Recommend yes.** Keep “not an ephemeris certificate” and the averaged-model
  boundary; no physical-year or full-system realistic-mass claim is supported.

## Deviations and suspected source errata recorded on approval

- Deviations D-P-A1–A4 (`AUDIT-additions-v0.3.md` §8): planar prograde fixed separated annuli with G = m₀ = 1;
  canonical element transfer; a smaller symmetric time window with explicit uniqueness/Newton/relative-distance
  conclusions; the eccentric-longitude representation of the exact mean-angle integral; a new elementary rational
  averaged-model specialization at cited decimal parameters.
- Suspected errata (candidates, to the ledger): E-P-A-N77-1 (Nek77 pp. 56/58, label 12.3.A vs 12.4.A),
  E-P-A-N77-2 (Nek77 p. 56 (12.6), duplicate ½ in the kinetic energy, contradicted by (12.8)), E-N-ADD-1 (Nek77 p. 15
  §1.18, "becomes small" should read "ceases to be small"), E-P-A-LP17-1 (LP17 p. 17, `{F,H₀}=0` should be K).

## Exact Lean (v0.4, byte-for-byte)

```lean
/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Planetary.Defs.MovingHamiltonian
public import KAM.Frozen.Planetary.Defs.BarycentricPositions
public import KAM.Frozen.Planetary.Defs.BarycentricVelocities
public import KAM.Frozen.Planetary.Defs.ActualMasses
public import KAM.Frozen.Planetary.Defs.PairBounds
public import KAM.Frozen.Planetary.Defs.NoCollision
public import KAM.Frozen.Planetary.Defs.SecularAverage
public import KAM.Frozen.Planetary.Defs.Fast
public import KAM.Frozen.Planetary.Defs.Slow
public import KAM.Frozen.Planetary.Defs.OscillatorAction
public import KAM.Frozen.Iso.Defs.IsHamiltonianSolutionOn

/-!
# Track P additions (D22), draft v0.4

Unproved statement proposals: Nekhoroshev 1977, Theorems 4.4 and 12.3;
Laskar--Petit 2017, equations (4)--(11), (26), Appendix B.
The exact orbital integral below uses eccentric longitude with its Jacobian.
Only theorem bodies contain placeholders. No declarations here are frozen.

1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration
   failure is a design signal to refactor or split the proof, not something to mask with a larger budget.
2. No Lean file may exceed 1500 lines of code.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Signed planar angular momentum of one canonical pair; LP17 (9). -/
def planeCross (q p : Fin 2 → ℝ) : ℝ := q 0 * p 1 - q 1 * p 0

/-- Zero-coupling Kepler energy, G = solar mass = 1; LP17 (7), after mass scaling. -/
def keplerEnergy {n : ℕ} (m : Fin n → ℝ) (z : Phase (n * 2)) (i : Fin n) : ℝ :=
  planeSq (bodyVector z.2 i) / (2 * m i) - m i / planeLength (bodyVector z.1 i)

/-- Osculating semimajor axis. Uses are guarded by positive mass and negative Kepler energy. -/
def keplerAxis {n : ℕ} (m : Fin n → ℝ) (z : Phase (n * 2)) (i : Fin n) : ℝ :=
  -m i / (2 * keplerEnergy m z i)

/-- Physical radian Kepler action; LP17 (10), with G m₀ = 1. -/
def keplerAction {n : ℕ} (m : Fin n → ℝ) (z : Phase (n * 2)) (i : Fin n) : ℝ :=
  m i * Real.sqrt (keplerAxis m z i)

/-- Laplace--Runge--Lenz eccentricity vector for LP17 (7), no inverse-angle choice. -/
def keplerEccVector {n : ℕ} (m : Fin n → ℝ) (z : Phase (n * 2))
    (i : Fin n) : Fin 2 → ℝ :=
  let q := bodyVector z.1 i
  let p := bodyVector z.2 i
  (planeSq p / m i ^ 2 - 1 / planeLength q) • q -
    (planeDot q p / m i ^ 2) • p

/-- Rescaled total angular momentum of the full moving-Sun system; LP17 (9). -/
def totalMomentum {n : ℕ} (z : Phase (n * 2)) : ℝ :=
  ∑ i, planeCross (bodyVector z.1 i) (bodyVector z.2 i)

/-- Planar prograde AMD; LP17 (10)--(11). It is not a full-system first integral. -/
def physicalAMD {n : ℕ} (m : Fin n → ℝ) (z : Phase (n * 2)) : ℝ :=
  (∑ i, keplerAction m z i) - totalMomentum z

/-- Physical elliptic prograde domain, guarding all osculating divisions and square roots. -/
def ProgradeElliptic {n : ℕ} (m : Fin n → ℝ) (z : Phase (n * 2)) : Prop :=
  ∀ i, 0 < m i ∧ 0 < planeLength (bodyVector z.1 i) ∧ keplerEnergy m z i < 0 ∧
    0 < planeCross (bodyVector z.1 i) (bodyVector z.2 i)

/-- Fixed action/AMD region used in round 2 §2; includes circular configurations. -/
def LowAMDRegion {n : ℕ} (m lo hi : Fin n → ℝ) (A : ℝ) : Set (Phase (n * 2)) :=
  {z | ProgradeElliptic m z ∧ (∀ i, lo i < keplerAction m z i ∧
    keplerAction m z i < hi i) ∧ physicalAMD m z < A}

/-- Fixed geometric data for the low-AMD specialization of Nek77 §12.2. -/
structure AMDBox (n : ℕ) where
  mass : Fin n → ℝ
  lower : Fin n → ℝ
  innerLower : Fin n → ℝ
  innerUpper : Fin n → ℝ
  upper : Fin n → ℝ
  ecc : ℝ
  initialAMD : ℝ
  outerAMD : ℝ
  distance : ℝ
  radius : ℝ

/-- Source standing geometry, independent of μ: nested boxes, low AMD, separated annuli.
The all-pairs radial margin is an explicit convenient sufficient separation condition. -/
def AMDBox.Admissible {n : ℕ} (B : AMDBox n) : Prop :=
  (∀ i, 0 < B.mass i ∧ 0 < B.lower i ∧ B.lower i < B.innerLower i ∧
    B.innerLower i < B.innerUpper i ∧ B.innerUpper i < B.upper i) ∧
  0 < B.ecc ∧ B.ecc < 1 ∧ 0 < B.initialAMD ∧ B.initialAMD < B.outerAMD ∧
  (∀ i, B.outerAMD < B.lower i * (1 - Real.sqrt (1 - B.ecc ^ 2))) ∧
  0 < B.distance ∧ 0 < B.radius ∧
  (∀ i, B.distance ≤ (B.lower i / B.mass i) ^ 2 * (1 - B.ecc) ∧
    (B.upper i / B.mass i) ^ 2 * (1 + B.ecc) ≤ B.radius) ∧
  (∀ i j, i < j → (B.upper i / B.mass i) ^ 2 * (1 + B.ecc) + B.distance ≤
    (B.lower j / B.mass j) ^ 2 * (1 - B.ecc))

/-- Genuine reduced full-system solution; reuse the frozen differentiability-guarded ODE. -/
def IsMovingSolutionOn {n : ℕ} (m : Fin n → ℝ) (mu : ℝ)
    (J : Set ℝ) (z : ℝ → Phase (n * 2)) : Prop :=
  KAM.Iso.IsHamiltonianSolutionOn (movingHamiltonian 1 1 m mu) Set.univ J z ∧
    ∀ t ∈ J, NoCollision (z t).1

/-- Finite-interval Newton equations, the interval restriction of frozen IsNewtonSolution.
The all-time frozen predicate cannot express this finite-time conclusion. -/
def IsNewtonSolutionOn {N : ℕ} (mass : Fin N → ℝ) (J : Set ℝ)
    (Q V : ℝ → Fin N → (Fin 2 → ℝ)) : Prop :=
  (∀ t ∈ J, ∀ i j, i ≠ j → 0 < planeLength (Q t j - Q t i)) ∧
  (∀ t ∈ J, ∀ i, HasDerivAt (fun s => Q s i) (V t i) t) ∧
  (∀ t ∈ J, ∀ i, HasDerivAt (fun s => V s i)
    (∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
      (mass j / planeLength (Q t j - Q t i) ^ 3) • (Q t j - Q t i)) t)

/-- Agreement with every other local solution on its overlap with the certified interval.
No preselected global flow is assumed. -/
def MovingUniqueOn {n : ℕ} (m : Fin n → ℝ) (mu : ℝ) (J : Set ℝ)
    (z : ℝ → Phase (n * 2)) : Prop :=
  ∀ (U : Set ℝ) (w : ℝ → Phase (n * 2)), IsOpen U → Convex ℝ U → 0 ∈ U →
    w 0 = z 0 → IsMovingSolutionOn m mu U w → ∀ t ∈ U ∩ J, w t = z t

/-- Stopped action estimate, not whole-horizon confinement. Both one-sided intervals
are allowed. Nek77 Thm 4.4 applies for arbitrary duration C; negative time uses -H. -/
def StoppedActionBound {n : ℕ} (B : AMDBox n) (mu T delta : ℝ)
    (z0 : Phase (n * 2)) : Prop :=
  ∀ (l r : ℝ) (z : ℝ → Phase (n * 2)), l ≤ 0 → 0 ≤ r → l < r → z 0 = z0 →
    IsMovingSolutionOn B.mass mu (Set.Icc l r) z →
    (∀ t ∈ Set.Icc l r,
      z t ∈ LowAMDRegion B.mass B.lower B.upper B.outerAMD) →
    ∀ t ∈ Set.Icc l r ∩ Set.Icc (-T) T, ∀ i,
      |keplerAction B.mass (z t) i - keplerAction B.mass z0 i| ≤ delta

/-- P-AMD-CONFINEMENT: the stopped analytic input plus exact angular momentum conservation
(derived for the literal moving Hamiltonian) prevents exit and gives continuation.
Round 2 §2 lemmas 1,2,5,6, with the stopped-source correction of round 3. -/
theorem amdConfinement {n : ℕ} (hn : 2 ≤ n) (B : AMDBox n) (hB : B.Admissible)
    (mu T delta : ℝ) (hmu : 0 < mu) (hT : 0 < T) (hdelta : 0 < delta)
    (hmargin : ∀ i, B.lower i + 2 * delta < B.innerLower i ∧
      B.innerUpper i + 2 * delta < B.upper i)
    (hAMD : B.initialAMD + 2 * (n : ℝ) * delta < B.outerAMD)
    (z0 : Phase (n * 2))
    (hz0 : z0 ∈ LowAMDRegion B.mass B.innerLower B.innerUpper B.initialAMD)
    (hstop : StoppedActionBound B mu T delta z0) :
    ∃ z : ℝ → Phase (n * 2), z 0 = z0 ∧ (IsMovingSolutionOn B.mass mu (Set.Icc (-T) T) z ∧
      MovingUniqueOn B.mass mu (Set.Icc (-T) T) z ∧
      IsNewtonSolutionOn (actualMasses 1 B.mass mu) (Set.Icc (-T) T)
        (fun t => barycentricPositions 1 B.mass mu (z t).1)
        (fun t => barycentricVelocities 1 B.mass mu (z t).2) ∧
      ∀ t ∈ (Set.Icc (-T) T),
        z t ∈ LowAMDRegion B.mass B.lower B.upper B.outerAMD ∧
        totalMomentum (z t) = totalMomentum (z 0) ∧
        (∀ i, planeLength (keplerEccVector B.mass (z t) i) < B.ecc ∧
          B.distance ≤ planeLength (bodyVector (z t).1 i) ∧
          planeLength (bodyVector (z t).1 i) ≤ B.radius) ∧
        PairBounds B.distance (2 * B.radius) (barycentricPositions 1 B.mass mu (z t).1)) ∧
      ∀ t ∈ Set.Icc (-T) T,
        physicalAMD B.mass (z t) ≤ B.initialAMD + (n : ℝ) * delta ∧
        ∀ i, |keplerAction B.mass (z t) i - keplerAction B.mass z0 i| ≤ delta := by
  sorry

/-- Nek77 (12.4), n counts planets, not total canonical pairs. -/
def planetaryTimeExponent (n : ℕ) : ℝ := 2 / (6 * (n : ℝ) ^ 2 - 3 * (n : ℝ) + 14)

/-- Nek77 (12.5). No optimized exponent is asserted. -/
def planetaryDriftExponent (n : ℕ) : ℝ := 3 * planetaryTimeExponent n / 2

/-- P-EXP-SAFE: planar moving-Sun specialization of Nek77 Thm 12.3, pp. 55--56.
Constants precede μ and every initial datum in the fixed region. The symmetric horizon,
heliocentric-canonical elements and explicit geometric bounds are documented deductions. -/
theorem planetaryExponentialSafety {n : ℕ} (hn : 2 ≤ n)
    (B : AMDBox n) (hB : B.Admissible) :
    ∃ muStar c C : ℝ, 0 < muStar ∧ 0 < c ∧ 0 < C ∧
      ∀ mu : ℝ, 0 < mu → mu < muStar →
      ∀ z0 ∈ LowAMDRegion B.mass B.innerLower B.innerUpper B.initialAMD,
      ∃ z : ℝ → Phase (n * 2), z 0 = z0 ∧
        (IsMovingSolutionOn B.mass mu (Set.Icc (-Real.exp (c * mu ^ (-planetaryTimeExponent n)))
                  (Real.exp (c * mu ^ (-planetaryTimeExponent n)))) z ∧ MovingUniqueOn B.mass mu
                    (Set.Icc (-Real.exp (c * mu ^ (-planetaryTimeExponent n)))
                  (Real.exp (c * mu ^ (-planetaryTimeExponent n)))) z ∧
        IsNewtonSolutionOn (actualMasses 1 B.mass mu) (Set.Icc (-Real.exp (c * mu ^
          (-planetaryTimeExponent n)))
                  (Real.exp (c * mu ^ (-planetaryTimeExponent n))))
          (fun t => barycentricPositions 1 B.mass mu (z t).1)
          (fun t => barycentricVelocities 1 B.mass mu (z t).2) ∧
        ∀ t ∈ (Set.Icc (-Real.exp (c * mu ^ (-planetaryTimeExponent n)))
                  (Real.exp (c * mu ^ (-planetaryTimeExponent n)))),
          z t ∈ LowAMDRegion B.mass B.lower B.upper B.outerAMD ∧
          totalMomentum (z t) = totalMomentum (z 0) ∧
          (∀ i, planeLength (keplerEccVector B.mass (z t) i) < B.ecc ∧
            B.distance ≤ planeLength (bodyVector (z t).1 i) ∧
            planeLength (bodyVector (z t).1 i) ≤ B.radius) ∧
          PairBounds B.distance (2 * B.radius) (barycentricPositions 1 B.mass mu (z t).1)) ∧
        ∀ t : ℝ, |t| ≤ Real.exp (c * mu ^ (-planetaryTimeExponent n)) →
          ∀ i, |keplerAxis B.mass (z t) i - keplerAxis B.mass z0 i| ≤
            C * mu ^ planetaryDriftExponent n := by
  sorry

/-- Quarter turn in the oriented plane, for the explicit Kepler ellipse formula. -/
def quarterTurn (v : Fin 2 → ℝ) : Fin 2 → ℝ := ![-v 1, v 0]

/-- Unit vector at radian eccentric longitude F. -/
def orbitalUnit (F : ℝ) : Fin 2 → ℝ := ![Real.cos F, Real.sin F]

/-- Slow action Γ = (ξ²+η²)/2, using frozen oscillatorAction and canonical (λ,ξ;Λ,η). -/
def secularGamma (w : Phase (2 + 2)) : Fin 2 → ℝ :=
  oscillatorAction (slow w.2) (slow w.1)

/-- AMD of the exact secular model; LP17 (11), Appendix B. -/
def secularAMD (w : Phase (2 + 2)) : ℝ := ∑ i, secularGamma w i

/-- sqrt(1-e²) = 1-Γ/Λ on the prograde elliptic chart. -/
def secularRoot (w : Phase (2 + 2)) (i : Fin 2) : ℝ :=
  1 - secularGamma w i / fast w.2 i

/-- Regular planar Poincaré eccentricity vector (ξ,η) times sqrt((1-Γ/(2Λ))/Λ).
Derived from LP17 (10)--(11); no perihelion angle is selected at a circular orbit. -/
def secularEccVector (w : Phase (2 + 2)) (i : Fin 2) : Fin 2 → ℝ :=
  Real.sqrt ((1 - secularGamma w i / (2 * fast w.2 i)) / fast w.2 i) •
    ![slow w.1 i, slow w.2 i]

/-- Semimajor axis in the fixed zero-coupling chart, not the reduced-mass Kepler split. -/
def secularAxis (m : Fin 2 → ℝ) (w : Phase (2 + 2)) (i : Fin 2) : ℝ :=
  (fast w.2 i / m i) ^ 2

/-- Kepler's equation in regular eccentric-longitude coordinates, in radians.
It is strictly increasing in F on Γ<Λ and commutes with translation by 2π. -/
def keplerMeanLongitude (w : Phase (2 + 2)) (i : Fin 2) (F : ℝ) : ℝ :=
  F - secularEccVector w i 0 * Real.sin F + secularEccVector w i 1 * Real.cos F

/-- dλ/dF = 1-k cos F-h sin F, the derivative of keplerMeanLongitude. -/
def longitudeJacobian (w : Phase (2 + 2)) (i : Fin 2) (F : ℝ) : ℝ :=
  1 - planeDot (secularEccVector w i) (orbitalUnit F)

/-- Explicit osculating Kepler position at eccentric longitude, including e=0.
Rewriting q=a((cos E-e)u+sqrt(1-e²)sin E Ju) gives this regular formula. -/
def ellipsePosition (m : Fin 2 → ℝ) (w : Phase (2 + 2))
    (i : Fin 2) (F : ℝ) : Fin 2 → ℝ :=
  let v := secularEccVector w i
  let c := orbitalUnit F
  secularAxis m w i •
    (secularRoot w i • c - v + (planeDot v c / (1 + secularRoot w i)) • v)

/-- Explicit osculating canonical momentum, with p/m the Kepler velocity. -/
def ellipseMomentum (m : Fin 2 → ℝ) (w : Phase (2 + 2))
    (i : Fin 2) (F : ℝ) : Fin 2 → ℝ :=
  let v := secularEccVector w i
  let c := orbitalUnit F
  (m i ^ 2 / (fast w.2 i * longitudeJacobian w i F)) •
    (quarterTurn c - (planeDot v c / (1 + secularRoot w i)) • quarterTurn v)

/-- The literal two-planet phase point on the osculating ellipses at F₁,F₂. -/
def ellipsePhase (m : Fin 2 → ℝ) (w : Phase (2 + 2))
    (F : Fin 2 → ℝ) : Phase (2 * 2) :=
  (fun k => ellipsePosition m w (finProdFinEquiv.symm k).1
      (F (finProdFinEquiv.symm k).1) (finProdFinEquiv.symm k).2,
   fun k => ellipseMomentum m w (finProdFinEquiv.symm k).1
      (F (finProdFinEquiv.symm k).1) (finProdFinEquiv.symm k).2)

/-- Full moving Hamiltonian times the change-of-angle Jacobian, not a series truncation. -/
def secularIntegrand (m : Fin 2 → ℝ) (mu : ℝ) (w : Phase (2 + 2)) : ℝ :=
  movingHamiltonian 1 1 m mu (ellipsePhase m w (fast w.1)) *
    ∏ i, longitudeJacobian w i (fast w.1 i)

/-- Exact full double mean-longitude average, evaluated by eccentric-longitude substitution.
Reuses frozen secularAverage including its (2π)^(-2) normalization. Integrability is
certified by SecularRegular in the conclusions, never assumed of the input box. -/
def exactSecularHamiltonian (m : Fin 2 → ℝ) (mu : ℝ) (w : Phase (2 + 2)) : ℝ :=
  secularAverage (secularIntegrand m) mu (fast w.2) (slow w.2) (slow w.1)

/-- Regular domain of the explicit chart and full interaction integral. All phases are safe.
These guards are established by the theorem from the input box. -/
def SecularRegular (m : Fin 2 → ℝ) (mu : ℝ) (w : Phase (2 + 2)) : Prop :=
  (∀ i, 0 < m i ∧ 0 < fast w.2 i ∧ 0 ≤ secularGamma w i ∧
    secularGamma w i < fast w.2 i) ∧
  (∀ F : Fin 2 → ℝ, (∀ i, 0 < longitudeJacobian w i (F i)) ∧
    NoCollision (ellipsePhase m w F).1) ∧
  IntegrableOn (fun F : Fin 2 → ℝ =>
    secularIntegrand m mu (assemble (fast w.2) F (slow w.2) (slow w.1)))
    (Set.pi Set.univ (fun _ : Fin 2 => Set.Icc 0 (2 * Real.pi))) ∧
  DifferentiableAt ℝ (exactSecularHamiltonian m mu) w

/-- Fixed Jupiter-normalized positive weights. -/
def jupiterSaturnWeights (saturn : ℝ) : Fin 2 → ℝ := ![1, saturn]

/-- Rational illustrative input box, round 2 §3. All mean longitudes and perihelia allowed.
This is a canonical-element box, not an observational uncertainty enclosure. -/
def SecularInputBox (saturn : ℝ) (w : Phase (2 + 2)) : Prop :=
  (∀ i, 0 < fast w.2 i ∧ 0 ≤ secularGamma w i ∧ secularGamma w i < fast w.2 i) ∧
  (103 / 20 : ℝ) ≤ secularAxis (jupiterSaturnWeights saturn) w 0 ∧
  secularAxis (jupiterSaturnWeights saturn) w 0 ≤ (21 / 4 : ℝ) ∧
  (189 / 20 : ℝ) ≤ secularAxis (jupiterSaturnWeights saturn) w 1 ∧
  secularAxis (jupiterSaturnWeights saturn) w 1 ≤ (193 / 20 : ℝ) ∧
  planeLength (secularEccVector w 0) ≤ (3 / 50 : ℝ) ∧
  planeLength (secularEccVector w 1) ≤ (7 / 100 : ℝ)

/-- P-SECULAR-BOX: exact averaging and conserved actions/AMD, LP17 Appendix B;
explicit rational box and geometry are the new elementary specialization in round 2 §3.
No smallness condition on μ is needed for this averaged model. -/
theorem secularBoxSafety (saturn mu : ℝ)
    (hsaturn : saturn ∈ Set.Icc (29 / 100 : ℝ) (31 / 100 : ℝ)) (hmu : 0 < mu)
    (w0 : Phase (2 + 2)) (hw0 : SecularInputBox saturn w0) :
    ∃ w : ℝ → Phase (2 + 2), w 0 = w0 ∧
      KAM.Iso.IsHamiltonianSolutionOn (exactSecularHamiltonian (jupiterSaturnWeights saturn) mu)
        Set.univ Set.univ w ∧
      (∀ (U : Set ℝ) (v : ℝ → Phase (2 + 2)), IsOpen U → Convex ℝ U → 0 ∈ U →
        v 0 = w0 →
        KAM.Iso.IsHamiltonianSolutionOn
          (exactSecularHamiltonian (jupiterSaturnWeights saturn) mu) Set.univ U v →
        (∀ t ∈ U, SecularRegular (jupiterSaturnWeights saturn) mu (v t)) →
        ∀ t ∈ U, v t = w t) ∧
      ∀ t : ℝ,
        SecularRegular (jupiterSaturnWeights saturn) mu (w t) ∧
        fast (w t).2 = fast w0.2 ∧ secularAMD (w t) = secularAMD w0 ∧
        secularAMD (w t) < (16373 / 2500000 : ℝ) ∧
        (∀ i, planeLength (secularEccVector (w t) i) < (3 / 20 : ℝ)) ∧
        ∀ F : Fin 2 → ℝ,
          (∀ i, (1751 / 400 : ℝ) ≤
            planeLength (ellipsePosition (jupiterSaturnWeights saturn) (w t) i (F i)) ∧
            planeLength (ellipsePosition (jupiterSaturnWeights saturn) (w t) i (F i)) ≤
              (4439 / 400 : ℝ)) ∧
          (399 / 200 : ℝ) ≤
            planeLength (ellipsePosition (jupiterSaturnWeights saturn) (w t) 1 (F 1)) -
            planeLength (ellipsePosition (jupiterSaturnWeights saturn) (w t) 0 (F 0)) ∧
          PairBounds (399 / 200 : ℝ) (4439 / 200 : ℝ)
            (barycentricPositions 1 (jupiterSaturnWeights saturn) mu
              (ellipsePhase (jupiterSaturnWeights saturn) (w t) F).1) := by
  sorry

/-- The decimal model masses of Figueras--Haro, arXiv:2403.10152v1 §4 p. 6:
μ=0.0009546 and μ*mS=0.0002856, exactly. This is a model parameter specialization. -/
theorem secularBoxAtCitedMasses (w0 : Phase (2 + 2))
    (hw0 : SecularInputBox (476 / 1591 : ℝ) w0) :
    ∃ w : ℝ → Phase (2 + 2), w 0 = w0 ∧
      KAM.Iso.IsHamiltonianSolutionOn (exactSecularHamiltonian (jupiterSaturnWeights (476 / 1591 :
        ℝ)) (4773 / 5000000 : ℝ))
        Set.univ Set.univ w ∧
      (∀ (U : Set ℝ) (v : ℝ → Phase (2 + 2)), IsOpen U → Convex ℝ U → 0 ∈ U →
        v 0 = w0 →
        KAM.Iso.IsHamiltonianSolutionOn
          (exactSecularHamiltonian (jupiterSaturnWeights (476 / 1591 : ℝ)) (4773 / 5000000 : ℝ))
            Set.univ U v →
        (∀ t ∈ U, SecularRegular (jupiterSaturnWeights (476 / 1591 : ℝ)) (4773 / 5000000 : ℝ) (v t))
          →
        ∀ t ∈ U, v t = w t) ∧
      ∀ t : ℝ,
        SecularRegular (jupiterSaturnWeights (476 / 1591 : ℝ)) (4773 / 5000000 : ℝ) (w t) ∧
        fast (w t).2 = fast w0.2 ∧ secularAMD (w t) = secularAMD w0 ∧
        secularAMD (w t) < (16373 / 2500000 : ℝ) ∧
        (∀ i, planeLength (secularEccVector (w t) i) < (3 / 20 : ℝ)) ∧
        ∀ F : Fin 2 → ℝ,
          (∀ i, (1751 / 400 : ℝ) ≤
            planeLength (ellipsePosition (jupiterSaturnWeights (476 / 1591 : ℝ)) (w t) i (F i)) ∧
            planeLength (ellipsePosition (jupiterSaturnWeights (476 / 1591 : ℝ)) (w t) i (F i)) ≤
              (4439 / 400 : ℝ)) ∧
          (399 / 200 : ℝ) ≤
            planeLength (ellipsePosition (jupiterSaturnWeights (476 / 1591 : ℝ)) (w t) 1 (F 1)) -
            planeLength (ellipsePosition (jupiterSaturnWeights (476 / 1591 : ℝ)) (w t) 0 (F 0)) ∧
          PairBounds (399 / 200 : ℝ) (4439 / 200 : ℝ)
            (barycentricPositions 1 (jupiterSaturnWeights (476 / 1591 : ℝ)) (4773 / 5000000 : ℝ)
              (ellipsePhase (jupiterSaturnWeights (476 / 1591 : ℝ)) (w t) F).1) := by
  sorry

#print axioms amdConfinement
#print axioms planetaryExponentialSafety
#print axioms secularBoxSafety
#print axioms secularBoxAtCitedMasses

end KAM.Planetary

end
```
