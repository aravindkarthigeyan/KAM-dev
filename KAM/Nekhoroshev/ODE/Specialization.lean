/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.ODE.Hamiltonian
public import KAM.ODE.Continuation
public import KAM.ODE.UniformPeriodic
public import KAM.Nekhoroshev.Interfaces.Setting
public import KAM.Nekhoroshev.Interfaces.HoloReal

/-!
# Track-N statements of the Hamiltonian ODE layer (`bpN:p3:s-N`)

The standing data `Data` and the domain `Wdom` live in `KAM.Nekhoroshev.Interfaces.Setting`, and
`holo_input` (`bpN:p3:holo-input`) in `KAM.Nekhoroshev.Interfaces.HoloReal`. Here the general ODE
layer `KAM.ODE.*` is specialised to the real Hamiltonian `KAM.realHamiltonian h f` on
`ℝⁿ × U`, `U ⊆ B(0, R + s)` open:

* `lipschitz_X`, `local_exist`, `energy`, `continuation`, `uniqueness_closed`,
  `confinement_glue`, and the maximal-solution predicate `IsMaximalSolutionOn`.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

namespace KAM.Nekhoroshev.ODE

open KAM.ODE

section Setup

variable {n : ℕ} {R s ε : ℝ} {h : (Fin n → ℂ) → ℂ} {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}

private theorem isOpen_Wdom (n : ℕ) (R s : ℝ) : IsOpen (Wdom n R s) :=
  isOpen_univ.prod isOpen_ball

private theorem image_Wdom (n : ℕ) (R s : ℝ) (k : Fin n → ℤ) :
    (fun x => x + angleShift k) '' Wdom n R s = Wdom n R s := by
  ext x
  constructor
  · rintro ⟨y, hy, rfl⟩
    exact ⟨mem_univ _, by simpa [angleShift] using hy.2⟩
  · intro hx
    refine ⟨x - angleShift k, ⟨mem_univ _, ?_⟩, sub_add_cancel _ _⟩
    simpa [angleShift] using hx.2

private theorem contDiff2 (hd : Data n R s ε h f) :
    ContDiffOn ℝ 2 (KAM.realHamiltonian h f) (Wdom n R s) :=
  (holo_input hd).1.of_le (by simp)

private theorem periodicX (hd : Data n R s ε h f) (k : Fin n → ℤ) :
    ∀ x ∈ Wdom n R s, KAM.hamiltonianVectorField (KAM.realHamiltonian h f) (x + angleShift k) =
      KAM.hamiltonianVectorField (KAM.realHamiltonian h f) x :=
  (ham_periodic (isOpen_Wdom n R s) (image_Wdom n R s)
    (fun k x hx => (holo_input hd).2.2 x hx k)).1 k

/-- Reduction data on `ℝⁿ × U`: smoothness, periodicity and the translation of the solution
predicates. -/
private theorem reduction (hd : Data n R s ε h f) {U : Set (Fin n → ℝ)}
    (hUs : U ⊆ ball 0 (R + s)) :
    ContDiffOn ℝ 1 (KAM.hamiltonianVectorField (KAM.realHamiltonian h f)) (univ ×ˢ U) ∧
    (∀ k : Fin n → ℤ, ∀ x ∈ (univ : Set (Fin n → ℝ)) ×ˢ U,
      KAM.hamiltonianVectorField (KAM.realHamiltonian h f) (x + angleShift k) =
        KAM.hamiltonianVectorField (KAM.realHamiltonian h f) x) ∧
    ∀ (J : Set ℝ) (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)),
      IsSolutionOn (KAM.realHamiltonian h f) U J z ↔
        IsSolutionIn (KAM.hamiltonianVectorField (KAM.realHamiltonian h f)) (univ ×ˢ U) J z := by
  have hUW : (univ : Set (Fin n → ℝ)) ×ˢ U ⊆ Wdom n R s := fun x hx => ⟨mem_univ _, hUs hx.2⟩
  have hred := ham_reduction (isOpen_Wdom n R s) hUW (contDiff2 hd)
  exact ⟨hred.1, fun k x hx => periodicX hd k x (hUW hx), fun J z => (hred.2 J z).1⟩

end Setup

section Statements

variable {n : ℕ} {R s ε : ℝ} {h : (Fin n → ℂ) → ℂ} {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}

/-- `bpN:p3:lipschitz`. -/
theorem lipschitz_X (hd : Data n R s ε h f) :
    ContDiffOn ℝ 1 (KAM.hamiltonianVectorField (KAM.realHamiltonian h f)) (Wdom n R s) ∧
    (∀ K ⊆ Wdom n R s, IsCompact K →
      ∃ L : ℝ≥0, LipschitzOnWith L (KAM.hamiltonianVectorField (KAM.realHamiltonian h f)) K) ∧
    ∀ K : Set (Fin n → ℝ), IsCompact K → K ⊆ ball 0 (R + s) →
      ∃ (δ M : ℝ) (L : ℝ≥0), δ ≤ 1 ∧
        UniformData (KAM.hamiltonianVectorField (KAM.realHamiltonian h f)) (Wdom n R s)
          (univ ×ˢ K) δ M L := by
  have hc1 := ham_smooth_c1 (isOpen_Wdom n R s) (contDiff2 hd)
  refine ⟨hc1, fun K hKW hK => ?_, fun K hK hKs => ?_⟩
  · obtain ⟨-, L, hL⟩ := gen_lip (isOpen_Wdom n R s) hc1 hK hKW
    exact ⟨L, hL⟩
  · exact gen_uniform_periodic (U := ball 0 (R + s)) isOpen_ball hc1
      (fun k x hx => periodicX hd k x hx) hK hKs

/-- `bpN:p3:local-exist`. -/
theorem local_exist (hd : Data n R s ε h f) {U : Set (Fin n → ℝ)}
    (hU : IsOpen U) (hUs : U ⊆ ball 0 (R + s)) :
    (∀ t₀ : ℝ, ∀ z₀ ∈ (univ : Set (Fin n → ℝ)) ×ˢ U,
      ∃ ε' > 0, ∃ y : ℝ → (Fin n → ℝ) × (Fin n → ℝ),
      y t₀ = z₀ ∧ IsSolutionOn (KAM.realHamiltonian h f) U (Ioo (t₀ - ε') (t₀ + ε')) y) ∧
    ∀ (J : Set ℝ), J.OrdConnected → ∀ t₀ ∈ J, ∀ y₁ y₂ : ℝ → (Fin n → ℝ) × (Fin n → ℝ),
      IsSolutionOn (KAM.realHamiltonian h f) U J y₁ →
        IsSolutionOn (KAM.realHamiltonian h f) U J y₂ →
        y₁ t₀ = y₂ t₀ → EqOn y₁ y₂ J := by
  obtain ⟨hF, -, hiff⟩ := reduction hd hUs
  have hW : IsOpen ((univ : Set (Fin n → ℝ)) ×ˢ U) := isOpen_univ.prod hU
  refine ⟨fun t₀ z₀ hz₀ => ?_, fun J hJ t₀ ht₀ y₁ y₂ h₁ h₂ h12 => ?_⟩
  · obtain ⟨ε', hε', α, h1, h2⟩ := (gen_local hW hF).1 z₀ hz₀ t₀
    exact ⟨ε', hε', α, h1, (hiff _ _).2 h2⟩
  · exact gen_uniqueness hW hF hJ ht₀ ((hiff _ _).1 h₁) ((hiff _ _).1 h₂) h12

/-- `bpN:p3:energy`: any `H`, any `U`. -/
theorem energy {H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ} {U : Set (Fin n → ℝ)} {J : Set ℝ}
    (hJ : J.OrdConnected) {z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)} (hz : IsSolutionOn H U J z) :
    ∀ t ∈ J, ∀ t' ∈ J, H (z t) = H (z t') :=
  ham_energy hJ fun t ht => ⟨(hz t ht).2.1, (hz t ht).2.2⟩

/-- `(Tm, Tp, z)` is the maximal `IsSolutionOn`-solution through `z₀` at time `0`
(`bpN:p3:continuation`). -/
def IsMaximalSolutionOn {n : ℕ} (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ) (U : Set (Fin n → ℝ))
    (z₀ : (Fin n → ℝ) × (Fin n → ℝ)) (Tm Tp : EReal) (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)) :
    Prop :=
  Tm < 0 ∧ 0 < Tp ∧ z 0 = z₀ ∧ IsSolutionOn H U (eIoo Tm Tp) z ∧
    ∀ (J : Set ℝ) (y : ℝ → (Fin n → ℝ) × (Fin n → ℝ)), J.OrdConnected → (0 : ℝ) ∈ J →
      y 0 = z₀ → IsSolutionOn H U J y → J ⊆ eIoo Tm Tp ∧ EqOn y z J

private theorem isMaximalSolutionOn_iff {H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ}
    {U : Set (Fin n → ℝ)} {z₀ : (Fin n → ℝ) × (Fin n → ℝ)} {Tm Tp : EReal}
    {z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)}
    (hiff : ∀ (J : Set ℝ) (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)),
      IsSolutionOn H U J z ↔
        IsSolutionIn (KAM.hamiltonianVectorField H) (univ ×ˢ U) J z) :
    IsMaximalSolutionOn H U z₀ Tm Tp z ↔
      IsMaximalSolution (KAM.hamiltonianVectorField H) (univ ×ˢ U) z₀ Tm Tp z := by
  constructor
  · rintro ⟨h1, h2, h3, h4, h5⟩
    exact ⟨h1, h2, h3, (hiff _ _).1 h4, fun J y hJ h0 hy hs => h5 J y hJ h0 hy ((hiff _ _).2 hs)⟩
  · rintro ⟨h1, h2, h3, h4, h5⟩
    exact ⟨h1, h2, h3, (hiff _ _).2 h4, fun J y hJ h0 hy hs => h5 J y hJ h0 hy ((hiff _ _).1 hs)⟩

/-- `bpN:p3:continuation`: unique maximal solution, and `T_± = ±∞` when the action stays in a
compact `K ⊆ U` near the end. -/
theorem continuation (hd : Data n R s ε h f) {U : Set (Fin n → ℝ)}
    (hU : IsOpen U) (hUs : U ⊆ ball 0 (R + s)) {z₀ : (Fin n → ℝ) × (Fin n → ℝ)} (hz₀ : z₀.2 ∈ U) :
    ∃ (Tm Tp : EReal) (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)),
      IsMaximalSolutionOn (KAM.realHamiltonian h f) U z₀ Tm Tp z ∧
      (∀ (Tm' Tp' : EReal) (z' : ℝ → (Fin n → ℝ) × (Fin n → ℝ)),
        IsMaximalSolutionOn (KAM.realHamiltonian h f) U z₀ Tm' Tp' z' →
          Tm' = Tm ∧ Tp' = Tp ∧ EqOn z' z (eIoo Tm Tp)) ∧
      ∀ K : Set (Fin n → ℝ), IsCompact K → K ⊆ U →
        ((∃ t_star : ℝ, 0 ≤ t_star ∧ (t_star : EReal) < Tp ∧
          ∀ t : ℝ, t_star ≤ t → (t : EReal) < Tp → (z t).2 ∈ K) → Tp = ⊤) ∧
        ((∃ t_star : ℝ, t_star ≤ 0 ∧ Tm < (t_star : EReal) ∧
          ∀ t : ℝ, Tm < (t : EReal) → t ≤ t_star → (z t).2 ∈ K) → Tm = ⊥) := by
  obtain ⟨hF, hper, hiff⟩ := reduction hd hUs
  have hW : IsOpen ((univ : Set (Fin n → ℝ)) ×ˢ U) := isOpen_univ.prod hU
  have hmax := gen_maximal hW hF (x₀ := z₀) ⟨mem_univ _, hz₀⟩
  obtain ⟨Tm, Tp, z, hz⟩ := hmax.1
  have hiffM : ∀ (Tm Tp : EReal) (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)),
      IsMaximalSolutionOn (KAM.realHamiltonian h f) U z₀ Tm Tp z ↔
        IsMaximalSolution (KAM.hamiltonianVectorField (KAM.realHamiltonian h f)) (univ ×ˢ U) z₀
          Tm Tp z := fun _ _ _ => isMaximalSolutionOn_iff hiff
  refine ⟨Tm, Tp, z, (hiffM _ _ _).2 hz, fun Tm' Tp' z' hz' => ?_, fun K hK hKU => ?_⟩
  · obtain ⟨a, b, c⟩ := hmax.2 Tm Tp Tm' Tp' z z' hz ((hiffM _ _ _).1 hz')
    subst a b
    exact ⟨rfl, rfl, c.symm⟩
  · exact gen_continuation_periodic hU hF hper hz hK hKU

/-- `bpN:p3:uniqueness-closed`. -/
theorem uniqueness_closed (hd : Data n R s ε h f) {U : Set (Fin n → ℝ)}
    (hU : IsOpen U) (hUs : U ⊆ ball 0 (R + s)) {L : ℝ}
    {y₁ y₂ : ℝ → (Fin n → ℝ) × (Fin n → ℝ)}
    (h₁ : IsSolutionOn (KAM.realHamiltonian h f) U (Icc (-L) L) y₁)
    (h₂ : IsSolutionOn (KAM.realHamiltonian h f) U (Icc (-L) L) y₂) (h0 : y₁ 0 = y₂ 0) :
    EqOn y₁ y₂ (Icc (-L) L) := by
  obtain ⟨hF, -, hiff⟩ := reduction hd hUs
  have hW : IsOpen ((univ : Set (Fin n → ℝ)) ×ˢ U) := isOpen_univ.prod hU
  by_cases hL : 0 ≤ L
  · exact gen_uniqueness hW hF ordConnected_Icc (t₀ := 0) ⟨by linarith, hL⟩
      ((hiff _ _).1 h₁) ((hiff _ _).1 h₂) h0
  · rw [Icc_eq_empty (by linarith)]
    exact eqOn_empty _ _

/-- `bpN:p3:confinement-glue`. -/
theorem confinement_glue (hd : Data n R s ε h f) {U : Set (Fin n → ℝ)}
    (hU : IsOpen U) (hUs : U ⊆ ball 0 (R + s)) {θ₀ I₀ : Fin n → ℝ} {τ ρ : ℝ} (hτ : 0 < τ)
    (hρ : 0 < ρ) (hball : closedBall I₀ ρ ⊆ U)
    (hconf : ∀ (J : Set ℝ) (y : ℝ → (Fin n → ℝ) × (Fin n → ℝ)), IsOpen J → J.OrdConnected →
      (0 : ℝ) ∈ J → y 0 = (θ₀, I₀) → IsSolutionOn (KAM.realHamiltonian h f) U J y →
        ∀ t ∈ J, |t| ≤ τ → ‖(y t).2 - I₀‖ ≤ ρ) :
    ∃ z : ℝ → (Fin n → ℝ) × (Fin n → ℝ), z 0 = (θ₀, I₀) ∧
      IsSolutionOn (KAM.realHamiltonian h f) U (Icc (-τ) τ) z ∧
      (∀ t : ℝ, |t| ≤ τ → ‖(z t).2 - I₀‖ ≤ ρ) ∧
      ∀ L : ℝ, 0 ≤ L → L ≤ τ → ∀ y : ℝ → (Fin n → ℝ) × (Fin n → ℝ), y 0 = z 0 →
        IsSolutionOn (KAM.realHamiltonian h f) U (Icc (-L) L) y → EqOn y z (Icc (-L) L) := by
  obtain ⟨hF, hper, hiff⟩ := reduction hd hUs
  have hW : IsOpen ((univ : Set (Fin n → ℝ)) ×ˢ U) := isOpen_univ.prod hU
  obtain ⟨δ, M, L, -, hΦ⟩ := gen_uniform_periodic hU hF hper (isCompact_closedBall I₀ ρ) hball
  have hx₀ : ((θ₀, I₀) : (Fin n → ℝ) × (Fin n → ℝ)) ∈ (univ : Set (Fin n → ℝ)) ×ˢ U :=
    ⟨mem_univ _, hball (mem_closedBall_self hρ.le)⟩
  have hmem : ∀ p : (Fin n → ℝ) × (Fin n → ℝ),
      p ∈ (univ : Set (Fin n → ℝ)) ×ˢ closedBall I₀ ρ ↔ ‖p.2 - I₀‖ ≤ ρ := fun p => by
    simp [Set.mem_prod, dist_eq_norm]
  obtain ⟨Tm, Tp, z, hz, -, -, hsol, hzΦ, huniq⟩ := gen_confinement hW hF hx₀ hτ hΦ
    (fun J y hJo hJc h0 hy hs t ht htτ => (hmem _).2
      (hconf J y hJo hJc h0 hy ((hiff _ _).2 hs) t ht htτ))
  exact ⟨z, hz.init, (hiff _ _).2 hsol, fun t ht => (hmem _).1 (hzΦ t ht),
    fun L hL hLτ y hy0 hy => huniq L hL hLτ y (hy0.trans hz.init) ((hiff _ _).1 hy)⟩

end Statements

end KAM.Nekhoroshev.ODE

end
