/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Strip.Analytic
public import KAM.Strip.Cauchy

/-!
# Weighted domains (`bpN:p4:domains`)

The tube `V_r D = {I ∈ ℂᵐ | ∃ I' ∈ D, |I - I'|_∞ < r}` around an arbitrary set `D ⊆ ℂᵐ` of
actions, the domain `𝒟_{r,s} = T_s × V_r D` (a complex strip in the angles times the tube), and the
closed polydisc `P̄(z; a, b)`. The frozen real action neighbourhood `KAM.actionNbhd B r` is `V_r` of
the image of `B` in `ℂⁿ`. The dimension `m` of the actions is independent of the dimension `n` of
the angles.
-/

@[expose] public noncomputable section

open Set Metric

namespace KAM.Weighted

variable {n m : ℕ}

/-- `V_r D = {I ∈ ℂᵐ | ∃ I' ∈ D, |I - I'|_∞ < r}`. -/
def polyNbhd (D : Set (Fin m → ℂ)) (r : ℝ) : Set (Fin m → ℂ) := {I | ∃ I' ∈ D, ‖I - I'‖ < r}

/-- `𝒟_{r,s} = T_s × V_r D`. -/
def Dom (n : ℕ) (D : Set (Fin m → ℂ)) (r s : ℝ) : Set ((Fin n → ℂ) × (Fin m → ℂ)) :=
  KAM.complexStrip n s ×ˢ polyNbhd D r

/-- The closed polydisc `P̄(z; a, b)`. -/
def polydisc (a b : ℝ) (z : (Fin n → ℂ) × (Fin m → ℂ)) : Set ((Fin n → ℂ) × (Fin m → ℂ)) :=
  {w | ‖w.1 - z.1‖ ≤ a ∧ ‖w.2 - z.2‖ ≤ b}

theorem isOpen_polyNbhd (D : Set (Fin m → ℂ)) (r : ℝ) : IsOpen (polyNbhd D r) := by
  have h : polyNbhd D r = ⋃ I' ∈ D, ball I' r := by
    ext I
    simp [polyNbhd, mem_ball, dist_eq_norm]
  rw [h]
  exact isOpen_biUnion fun _ _ => isOpen_ball

theorem isOpen_Dom (D : Set (Fin m → ℂ)) (r s : ℝ) : IsOpen (Dom n D r s) :=
  (KAM.isOpen_complexStrip n s).prod (isOpen_polyNbhd D r)

theorem polyNbhd_mono {D : Set (Fin m → ℂ)} {r r' : ℝ} (h : r' ≤ r) :
    polyNbhd D r' ⊆ polyNbhd D r :=
  fun _ ⟨I', hI', hlt⟩ => ⟨I', hI', hlt.trans_le h⟩

theorem Dom_mono {D : Set (Fin m → ℂ)} {r r' s s' : ℝ} (hr : r' ≤ r) (hs : s' ≤ s) :
    Dom n D r' s' ⊆ Dom n D r s := by
  refine prod_mono (fun θ hθ i => (hθ i).trans_le hs) (polyNbhd_mono hr)

/-- `bpN:p4:domains` (b). -/
theorem polydisc_subset_Dom {D : Set (Fin m → ℂ)} {r r' s s' : ℝ} (hr' : 0 < r') (hrr : r' < r)
    (hs' : 0 < s') (hss : s' < s) {z : (Fin n → ℂ) × (Fin m → ℂ)} (hz : z ∈ Dom n D r' s') :
    polydisc (s - s') (r - r') z ⊆ Dom n D r s := by
  -- The positivity and strict-inequality hypotheses of the source are not needed for the inclusion.
  have _ : _ := And.intro (And.intro hr' hrr) (And.intro hs' hss)
  obtain ⟨hz1, I', hI', hz2⟩ := hz
  intro w ⟨hw1, hw2⟩
  refine ⟨fun i => ?_, I', hI', ?_⟩
  · have h1 : |(w.1 i).im - (z.1 i).im| ≤ s - s' := by
      have := (norm_le_pi_norm (w.1 - z.1) i).trans hw1
      calc |(w.1 i).im - (z.1 i).im| = |((w.1 - z.1) i).im| := by simp
        _ ≤ ‖(w.1 - z.1) i‖ := Complex.abs_im_le_norm _
        _ ≤ s - s' := this
    have h2 : |(w.1 i).im| ≤ |(z.1 i).im| + |(w.1 i).im - (z.1 i).im| := by
      calc |(w.1 i).im| = |(z.1 i).im + ((w.1 i).im - (z.1 i).im)| := by ring_nf
        _ ≤ _ := abs_add_le _ _
    have h3 := hz1 i
    linarith
  · calc ‖w.2 - I'‖ = ‖(w.2 - z.2) + (z.2 - I')‖ := by rw [sub_add_sub_cancel]
      _ ≤ ‖w.2 - z.2‖ + ‖z.2 - I'‖ := norm_add_le _ _
      _ < (r - r') + r' := add_lt_add_of_le_of_lt hw2 hz2
      _ = r := by ring

/-- The frozen `KAM.actionNbhd` of a real set is `V_r` of its image in `ℂⁿ`. -/
theorem actionNbhd_eq_polyNbhd (B : Set (Fin n → ℝ)) (r : ℝ) :
    KAM.actionNbhd B r = polyNbhd (KAM.realInclusion n '' B) r := by
  ext I
  simp only [KAM.actionNbhd, polyNbhd, mem_ofPred_eq, mem_image]
  constructor
  · rintro ⟨J, hJ, h⟩
    exact ⟨KAM.realInclusion n J, ⟨J, hJ, rfl⟩, h⟩
  · rintro ⟨_, ⟨J, hJ, rfl⟩, h⟩
    exact ⟨J, hJ, h⟩

end KAM.Weighted

end
