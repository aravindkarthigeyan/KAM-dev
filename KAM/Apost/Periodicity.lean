/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Hamiltonian
public import KAM.Torus.FrozenAgreement
import KAM.Matrix.Inverse
import KAM.Strip.Periodic

/-!
# Periodicity and realness of the attached objects

Blueprint Part 2, Lemma `bp:p2:periodicity` (`KAM.Apost.periodicity`). Let `K` be holomorphic and
primary on `T_r` with `K(T_r) ⊆ 𝔅`. Then `L`, `G`, `E`, `A`, `Ω_K`, `h ∘ K`, `K^I` and the
functions `f_j = (K^I)ᵀ ∂_{θ_j} K^θ` are `1`-periodic on `T_r`; if `det G` is a unit on `T_r`,
then so are `B`, `N`, `P`, `X_N`, `T`, `E_sym` and `η`; if in addition `K` is real on reals, all
these objects are real at real points, and so is `⟨T⟩`.

The proof follows the blueprint (steps `step:p2:per-dk`, `step:p2:per-compose`,
`step:p2:per-real`):

* the shift identity `K(θ + e_i) = K(θ) + (e_i, 0)` on the open strip passes to the derivative
  (`KAM.Apost.isPeriodicOn_fderiv_of_shift`), and `X_h`, `DX_h` are invariant under `(e_i, 0)` by
  `KAM.Apost.hamiltonian`(b);
* every other object is an algebraic expression in periodic objects, so its periodicity is a
  `rw`; realness is closed under products, transposes, sums and (by `KAM.real_inverse`) inverses,
  and the derivative of a function real on the real points is real in real directions
  (`KAM.Apost.im_fderiv_eq_zero_of_real_line`).
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Apost

open KAM.Torus

/-! ### Periodicity of derivatives on the strip -/

section PeriodicDeriv

variable {n : ℕ}

/-- Shifting a point of `T_r` by `e_i` stays in `T_r`. -/
theorem add_single_mem_complexStrip {r : ℝ} {z : Fin n → ℂ} (hz : z ∈ complexStrip n r)
    (i : Fin n) : z + Pi.single i 1 ∈ complexStrip n r := by
  intro j
  have h := hz j
  by_cases hj : j = i
  · subst hj
    simpa using h
  · simpa [Pi.single_apply, hj] using h

/-- If `f (z + e_i) = f z + c_i` on the open strip, then `Df` is `1`-periodic there
(step `step:p2:per-dk`). -/
theorem isPeriodicOn_fderiv_of_shift {F : Type*} [NormedAddCommGroup F] [NormedSpace ℂ F]
    {f : (Fin n → ℂ) → F} {r : ℝ} (c : Fin n → F)
    (hf : ∀ i z, z ∈ complexStrip n r → f (z + Pi.single i 1) = f z + c i) :
    IsPeriodicOn (fderiv ℂ f) r := fun i z hz => by
  refine fderiv_add_right_eq_of_eventually (c := c i) ?_
  filter_upwards [(isOpen_complexStrip n r).mem_nhds hz] with y hy
  exact hf i y hy

theorem cast_single_int (i : Fin n) :
    (fun j => (((Pi.single i (1 : ℤ) : Fin n → ℤ) j : ℤ) : ℂ)) = Pi.single i 1 := by
  ext j
  by_cases h : j = i
  · subst h
    simp
  · simp [h]

end PeriodicDeriv

/-! ### Periodicity -/

section Periodic

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ} {r : ℝ}
  {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- `X_h` and `DX_h` are invariant under the translation by `(e_i, 0)` at points of `𝔅`. -/
theorem ham_translate_single (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    {z : (Fin n → ℂ) × (Fin n → ℂ)} (hz : z ∈ 𝔅) (i : Fin n) :
    hamiltonianVectorFieldℂ h (z + (Pi.single i 1, 0)) = hamiltonianVectorFieldℂ h z ∧
      fderiv ℂ (hamiltonianVectorFieldℂ h) (z + (Pi.single i 1, 0)) =
        fderiv ℂ (hamiltonianVectorFieldℂ h) z := by
  have h1 := ham_translate hS hz (Pi.single i 1)
  have h2 := fderiv_ham_translate hS hz (Pi.single i 1)
  rw [cast_single_int] at h1 h2
  exact ⟨h1, h2⟩

/-- Step `step:p2:per-dk`: `DK` is periodic. -/
theorem periodic_fderiv_K (hKp : IsPrimaryOnStrip K r) : IsPeriodicOn (fderiv ℂ K) r :=
  isPeriodicOn_fderiv_of_shift (fun i => (Pi.single i 1, 0))
    (fun i _ hz => primary_coordinatewise hKp i hz)

theorem periodic_tangentMat (hKp : IsPrimaryOnStrip K r) : IsPeriodicOn (tangentMat K) r :=
  fun i z hz => by simp only [tangentMat, periodic_fderiv_K hKp i z hz]

theorem periodic_gramMatrix (hKp : IsPrimaryOnStrip K r) : IsPeriodicOn (gramMatrix K) r :=
  fun i z hz => by
    simp only [gramMatrix_eq_tangentMat_transpose_mul, periodic_tangentMat hKp i z hz]

theorem periodic_invarianceError (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) (hKp : IsPrimaryOnStrip K r) :
    IsPeriodicOn (invarianceError h K ω) r := fun i z hz => by
  unfold invarianceError
  rw [primary_coordinatewise hKp i hz, (ham_translate_single hS (hK𝔅 z hz) i).1,
    periodic_fderiv_K hKp i z hz]

theorem periodic_linMat (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) (hKp : IsPrimaryOnStrip K r) :
    IsPeriodicOn (linMat h K) r := fun i z hz => by
  unfold linMat
  rw [primary_coordinatewise hKp i hz, (ham_translate_single hS (hK𝔅 z hz) i).2]

theorem periodic_lagrangeMat (hKp : IsPrimaryOnStrip K r) : IsPeriodicOn (lagrangeMat K) r :=
  fun i z hz => by simp only [lagrangeMat, periodic_tangentMat hKp i z hz]

theorem periodic_h_comp_K (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) (hKp : IsPrimaryOnStrip K r) :
    IsPeriodicOn (fun θ => h (K θ)) r := fun i z hz => by
  have h1 := hS.periodic (K z) (hK𝔅 z hz) (Pi.single i 1)
  rw [cast_single_int] at h1
  show h (K (z + Pi.single i 1)) = h (K z)
  rw [primary_coordinatewise hKp i hz, add_angle_eq]
  exact h1

theorem periodic_K_snd (hKp : IsPrimaryOnStrip K r) : IsPeriodicOn (fun θ => (K θ).2) r :=
  fun i z hz => by
    show (K (z + Pi.single i 1)).2 = (K z).2
    rw [primary_coordinatewise hKp i hz]
    ext l
    simp

theorem periodic_action_dot (hKp : IsPrimaryOnStrip K r) (j : Fin n) :
    IsPeriodicOn (fun θ => ∑ i, (K θ).2 i *
      fderiv ℂ (fun θ' => (K θ').1) θ (Pi.single j 1) i) r := fun i z hz => by
  have hd : IsPeriodicOn (fderiv ℂ (fun θ' => (K θ').1)) r :=
    isPeriodicOn_fderiv_of_shift (fun i => Pi.single i 1) (fun i z hz => by
      rw [primary_coordinatewise hKp i hz]
      rfl)
  have h2 : (K (z + Pi.single i 1)).2 = (K z).2 := periodic_K_snd hKp i z hz
  show ∑ l, (K (z + Pi.single i 1)).2 l *
      fderiv ℂ (fun θ' => (K θ').1) (z + Pi.single i 1) (Pi.single j 1) l = _
  rw [hd i z hz, h2]

/-! #### Objects that need `det G ≠ 0` -/

theorem periodic_inv_gramMatrix (hKp : IsPrimaryOnStrip K r) :
    IsPeriodicOn (fun θ => (gramMatrix K θ)⁻¹) r :=
  fun i z hz => by simp only [periodic_gramMatrix hKp i z hz]

theorem periodic_normalMat (hKp : IsPrimaryOnStrip K r) : IsPeriodicOn (normalMat K) r :=
  fun i z hz => by
    simp only [normalMat, periodic_tangentMat hKp i z hz, periodic_gramMatrix hKp i z hz]

theorem periodic_frameMat (hKp : IsPrimaryOnStrip K r) : IsPeriodicOn (frameMat K) r :=
  fun i z hz => by
    simp only [frameMat, periodic_tangentMat hKp i z hz, periodic_normalMat hKp i z hz]

theorem periodic_normalFieldMat (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) (hKp : IsPrimaryOnStrip K r) :
    IsPeriodicOn (normalFieldMat h K ω) r := fun i z hz => by
  have hdN : IsPeriodicOn (fderiv ℂ (normalMat K)) r :=
    isPeriodicOn_fderiv_of_shift (fun _ => 0) (fun i z hz => by
      rw [add_zero]
      exact periodic_normalMat hKp i z hz)
  simp only [normalFieldMat, periodic_linMat hS hK𝔅 hKp i z hz, periodic_normalMat hKp i z hz,
    hdN i z hz]

theorem periodic_torsion (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) (hKp : IsPrimaryOnStrip K r)
    (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) :
    IsPeriodicOn (torsion h K ω) r := fun i z hz => by
  have hN := differentiableOn_normalMat hK hG
  have hz' := add_single_mem_complexStrip hz i
  rw [torsion_eq_mat h K ω (hN.differentiableAt ((isOpen_complexStrip n r).mem_nhds hz')),
    torsion_eq_mat h K ω (hN.differentiableAt ((isOpen_complexStrip n r).mem_nhds hz)),
    periodic_normalMat hKp i z hz, periodic_normalFieldMat hS hK𝔅 hKp i z hz]

theorem periodic_symDefect (hKp : IsPrimaryOnStrip K r) : IsPeriodicOn (symDefect K) r :=
  fun i z hz => by simp only [symDefect, periodic_frameMat hKp i z hz]

theorem periodic_eta (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) (hKp : IsPrimaryOnStrip K r) :
    IsPeriodicOn (eta h K ω) r := fun i z hz => by
  simp only [eta, periodic_frameMat hKp i z hz, periodic_invarianceError hS hK𝔅 hKp i z hz]

end Periodic

/-! ### Realness -/

section Entries

variable {ι κ μ : Type*}

/-- All entries of the matrix `A` are real. -/
def HasRealEntries (A : Matrix ι κ ℂ) : Prop := ∀ i j, (A i j).im = 0

/-- All entries of the vector `v` are real. -/
def HasRealVec (v : ι → ℂ) : Prop := ∀ i, (v i).im = 0

theorem HasRealEntries.mul [Fintype κ] {A : Matrix ι κ ℂ} {B : Matrix κ μ ℂ}
    (hA : HasRealEntries A) (hB : HasRealEntries B) : HasRealEntries (A * B) := fun i j => by
  simp only [Matrix.mul_apply, Complex.im_sum, Complex.mul_im]
  exact Finset.sum_eq_zero fun k _ => by rw [hA i k, hB k j]; ring

theorem HasRealEntries.mulVec [Fintype κ] {A : Matrix ι κ ℂ} {v : κ → ℂ}
    (hA : HasRealEntries A) (hv : HasRealVec v) : HasRealVec (A *ᵥ v) := fun i => by
  simp only [Matrix.mulVec, dotProduct, Complex.im_sum, Complex.mul_im]
  exact Finset.sum_eq_zero fun k _ => by rw [hA i k, hv k]; ring

theorem HasRealEntries.transpose {A : Matrix ι κ ℂ} (hA : HasRealEntries A) :
    HasRealEntries Aᵀ := fun i j => hA j i

theorem HasRealEntries.neg {A : Matrix ι κ ℂ} (hA : HasRealEntries A) : HasRealEntries (-A) :=
  fun i j => by simp [hA i j]

theorem HasRealEntries.sub {A B : Matrix ι κ ℂ} (hA : HasRealEntries A) (hB : HasRealEntries B) :
    HasRealEntries (A - B) := fun i j => by simp [hA i j, hB i j]

theorem HasRealEntries.fromCols {l : Type*} {A : Matrix ι κ ℂ} {B : Matrix ι l ℂ}
    (hA : HasRealEntries A) (hB : HasRealEntries B) : HasRealEntries (Matrix.fromCols A B) :=
  fun i j => by
    rcases j with j | j
    · exact hA i j
    · exact hB i j

theorem hasRealEntries_omegaZeroMatrix (n : ℕ) : HasRealEntries (omegaZeroMatrix n) := by
  intro i j
  rcases i with i | i <;> rcases j with j | j <;>
    simp [omegaZeroMatrix, Matrix.one_apply] <;> split_ifs <;> simp

end Entries

/-- A function that is holomorphic on `T_r` and real at the real points has a real derivative in
real directions. -/
theorem im_fderiv_real_direction_strip {r : ℝ} (hr : 0 < r) {n : ℕ} {f : (Fin n → ℂ) → ℂ}
    (hf : DifferentiableOn ℂ f (complexStrip n r))
    (hreal : ∀ x : Fin n → ℝ, (f (fun i => (x i : ℂ))).im = 0) (x : Fin n → ℝ)
    {v : Fin n → ℂ} (hv : ∀ i, (v i).im = 0) :
    (fderiv ℂ f (fun i => (x i : ℂ)) v).im = 0 := by
  set a : Fin n → ℝ := fun i => (v i).re with ha
  have hva : v = fun i => (a i : ℂ) := funext fun i => Complex.ext (by simp [ha]) (by simp [hv i])
  have hx : (fun i => (x i : ℂ)) ∈ complexStrip n r := fun i => by simpa using hr
  rw [hva]
  refine im_fderiv_eq_zero_of_real_line
    (hf.differentiableAt ((isOpen_complexStrip n r).mem_nhds hx)) (Eventually.of_forall fun t => ?_)
  have heq : (fun i => (x i : ℂ)) + (t : ℂ) • (fun i => (a i : ℂ)) =
      fun i => ((x i + t * a i : ℝ) : ℂ) := by
    ext i
    simp
  rw [heq]
  exact hreal _

section RealObjects

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ} {r : ℝ}
  {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

theorem realPoint_mem_complexStrip (hr : 0 < r) (x : Fin n → ℝ) :
    (fun i => (x i : ℂ)) ∈ complexStrip n r := fun i => by simpa using hr

theorem hasRealVec_single (j : Fin n) : ∀ i, ((Pi.single j (1 : ℂ) : Fin n → ℂ) i).im = 0 := by
  intro i
  by_cases h : i = j
  · subst h
    simp
  · simp [h]

/-- The derivative of a holomorphic `K`, real on reals, is real in real directions. -/
theorem im_sumVec_fderiv_real (hr : 0 < r) (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hreal : IsRealOnReals K) (x : Fin n → ℝ) {v : Fin n → ℂ} (hv : ∀ i, (v i).im = 0)
    (s : Fin n ⊕ Fin n) : (sumVec n (fderiv ℂ K (fun i => (x i : ℂ)) v) s).im = 0 := by
  have hKd : DifferentiableAt ℂ K (fun i => (x i : ℂ)) :=
    hK.differentiableAt ((isOpen_complexStrip n r).mem_nhds (realPoint_mem_complexStrip hr x))
  rw [← fderiv_sumVec_coord hKd]
  refine im_fderiv_real_direction_strip hr (f := fun θ => sumVec n (K θ) s) ?_ ?_ x hv
  · exact (differentiableOn_pi.1 ((sumVecIso n).differentiable.comp_differentiableOn hK)) s
  · exact fun x => isRealVec_sumVec_iff.2 hreal x s

theorem hasRealEntries_tangentMat (hr : 0 < r) (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hreal : IsRealOnReals K) (x : Fin n → ℝ) : HasRealEntries (tangentMat K fun i => (x i : ℂ)) :=
  fun s j => by
    rw [tangentMat_apply]
    exact im_sumVec_fderiv_real hr hK hreal x (hasRealVec_single j) s

theorem hasRealEntries_gramMatrix (hr : 0 < r) (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hreal : IsRealOnReals K) (x : Fin n → ℝ) :
    HasRealEntries (gramMatrix K fun i => (x i : ℂ)) := by
  rw [gramMatrix_eq_tangentMat_transpose_mul]
  exact (hasRealEntries_tangentMat hr hK hreal x).transpose.mul (hasRealEntries_tangentMat hr hK hreal x)

theorem exists_map_of_hasRealEntries {ι κ : Type*} {A : Matrix ι κ ℂ} (hA : HasRealEntries A) :
    ∃ B : Matrix ι κ ℝ, A = B.map Complex.ofReal :=
  ⟨Matrix.of fun i j => (A i j).re, Matrix.ext fun i j => Complex.ext (by simp) (by simp [hA i j])⟩

theorem hasRealEntries_map {ι κ : Type*} (B : Matrix ι κ ℝ) :
    HasRealEntries (B.map Complex.ofReal) := fun i j => by simp

theorem hasRealEntries_inv_gramMatrix (hr : 0 < r) (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hreal : IsRealOnReals K) (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det)
    (x : Fin n → ℝ) : HasRealEntries ((gramMatrix K fun i => (x i : ℂ))⁻¹) := by
  obtain ⟨B', hB'⟩ := (real_inverse).2 n n (gramMatrix K) (fun θ =>
    ⟨exists_map_of_hasRealEntries (hasRealEntries_gramMatrix hr hK hreal θ),
      (Matrix.isUnit_iff_isUnit_det _).2 (hG _ (realPoint_mem_complexStrip hr θ))⟩) x
  rw [hB']
  exact hasRealEntries_map B'

theorem hasRealEntries_normalMat (hr : 0 < r) (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hreal : IsRealOnReals K) (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det)
    (x : Fin n → ℝ) : HasRealEntries (normalMat K fun i => (x i : ℂ)) :=
  ((hasRealEntries_omegaZeroMatrix n).mul (hasRealEntries_tangentMat hr hK hreal x)).mul
    (hasRealEntries_inv_gramMatrix hr hK hreal hG x)

theorem hasRealEntries_frameMat (hr : 0 < r) (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hreal : IsRealOnReals K) (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det)
    (x : Fin n → ℝ) : HasRealEntries (frameMat K fun i => (x i : ℂ)) :=
  (hasRealEntries_tangentMat hr hK hreal x).fromCols (hasRealEntries_normalMat hr hK hreal hG x)

/-- `X_h`, `DX_h` and `h` are real at `K(x)` for real `x`. -/
theorem ham_real_of_K (hS : Standing n τ M σK σB σT 𝔅 h ω γ) (hr : 0 < r)
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) (hreal : IsRealOnReals K) (x : Fin n → ℝ) :
    (∀ s, (sumVec n (hamiltonianVectorFieldℂ h (K fun i => (x i : ℂ))) s).im = 0) ∧
      (∀ s t, (sqMat (fderiv ℂ (hamiltonianVectorFieldℂ h) (K fun i => (x i : ℂ))) s t).im = 0) ∧
      (h (K fun i => (x i : ℂ))).im = 0 := by
  obtain ⟨z, hz⟩ := hreal x
  have hmem := hK𝔅 _ (realPoint_mem_complexStrip hr x)
  rw [hz] at hmem ⊢
  exact ⟨(ham_real hS z.1 z.2 hmem).1, (ham_real hS z.1 z.2 hmem).2, hS.real z.1 z.2 hmem⟩

theorem hasRealEntries_linMat (hS : Standing n τ M σK σB σT 𝔅 h ω γ) (hr : 0 < r)
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) (hreal : IsRealOnReals K) (x : Fin n → ℝ) :
    HasRealEntries (linMat h K fun i => (x i : ℂ)) :=
  (ham_real_of_K hS hr hK𝔅 hreal x).2.1

theorem hasRealEntries_lagrangeMat (hr : 0 < r) (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hreal : IsRealOnReals K) (x : Fin n → ℝ) :
    HasRealEntries (lagrangeMat K fun i => (x i : ℂ)) :=
  ((hasRealEntries_tangentMat hr hK hreal x).transpose.mul (hasRealEntries_omegaZeroMatrix n)).mul
    (hasRealEntries_tangentMat hr hK hreal x)

theorem hasRealVec_sumVec_invarianceError (hS : Standing n τ M σK σB σT 𝔅 h ω γ) (hr : 0 < r)
    (hK : DifferentiableOn ℂ K (complexStrip n r)) (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hreal : IsRealOnReals K) (x : Fin n → ℝ) :
    HasRealVec (sumVec n (invarianceError h K ω fun i => (x i : ℂ))) := fun s => by
  rw [invarianceError, map_sub, Pi.sub_apply, Complex.sub_im,
    (ham_real_of_K hS hr hK𝔅 hreal x).1 s,
    im_sumVec_fderiv_real hr hK hreal x (v := fun i => (ω i : ℂ)) (fun i => by simp) s]
  simp

theorem isRealOnReals_invarianceError (hS : Standing n τ M σK σB σT 𝔅 h ω γ) (hr : 0 < r)
    (hK : DifferentiableOn ℂ K (complexStrip n r)) (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hreal : IsRealOnReals K) : IsRealOnReals (invarianceError h K ω) :=
  isRealVec_sumVec_iff.1 fun x s => hasRealVec_sumVec_invarianceError hS hr hK hK𝔅 hreal x s

theorem hasRealEntries_normalFieldMat (hS : Standing n τ M σK σB σT 𝔅 h ω γ) (hr : 0 < r)
    (hK : DifferentiableOn ℂ K (complexStrip n r)) (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hreal : IsRealOnReals K) (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det)
    (x : Fin n → ℝ) : HasRealEntries (normalFieldMat h K ω fun i => (x i : ℂ)) := by
  have hN := differentiableOn_normalMat hK hG
  have hNd : DifferentiableAt ℂ (normalMat K) (fun i => (x i : ℂ)) :=
    hN.differentiableAt ((isOpen_complexStrip n r).mem_nhds (realPoint_mem_complexStrip hr x))
  refine ((hasRealEntries_linMat hS hr hK𝔅 hreal x).mul
    (hasRealEntries_normalMat hr hK hreal hG x)).sub fun s j => ?_
  rw [← fderiv_matrix_apply hNd s j]
  exact im_fderiv_real_direction_strip hr (f := fun θ => normalMat K θ s j)
    (differentiableOn_matrix_iff_entries.1 hN s j)
    (fun x' => hasRealEntries_normalMat hr hK hreal hG x' s j) x (fun i => by simp)

theorem hasRealEntries_torsion (hS : Standing n τ M σK σB σT 𝔅 h ω γ) (hr : 0 < r)
    (hK : DifferentiableOn ℂ K (complexStrip n r)) (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hreal : IsRealOnReals K) (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det)
    (x : Fin n → ℝ) : HasRealEntries (torsion h K ω fun i => (x i : ℂ)) := by
  have hN := differentiableOn_normalMat hK hG
  rw [torsion_eq_mat h K ω (hN.differentiableAt
    ((isOpen_complexStrip n r).mem_nhds (realPoint_mem_complexStrip hr x)))]
  exact ((hasRealEntries_normalMat hr hK hreal hG x).transpose.mul
    (hasRealEntries_omegaZeroMatrix n)).mul
    (hasRealEntries_normalFieldMat hS hr hK hK𝔅 hreal hG x)

theorem hasRealEntries_symDefect (hr : 0 < r) (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hreal : IsRealOnReals K) (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det)
    (x : Fin n → ℝ) : HasRealEntries (symDefect K fun i => (x i : ℂ)) :=
  (((hasRealEntries_frameMat hr hK hreal hG x).transpose.mul (hasRealEntries_omegaZeroMatrix n)).mul
    (hasRealEntries_frameMat hr hK hreal hG x)).sub (hasRealEntries_omegaZeroMatrix n)

theorem hasRealVec_eta (hS : Standing n τ M σK σB σT 𝔅 h ω γ) (hr : 0 < r)
    (hK : DifferentiableOn ℂ K (complexStrip n r)) (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hreal : IsRealOnReals K) (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det)
    (x : Fin n → ℝ) : HasRealVec (eta h K ω fun i => (x i : ℂ)) :=
  ((((hasRealEntries_omegaZeroMatrix n).mul
    (hasRealEntries_frameMat hr hK hreal hG x).transpose).mul
    (hasRealEntries_omegaZeroMatrix n))).mulVec
    (hasRealVec_sumVec_invarianceError hS hr hK hK𝔅 hreal x)

/-- The action-weighted derivative `f_j` is real at real points. -/
theorem im_action_dot (hr : 0 < r) (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hreal : IsRealOnReals K) (j : Fin n) (x : Fin n → ℝ) :
    (∑ i, (K fun l => (x l : ℂ)).2 i *
      fderiv ℂ (fun θ' => (K θ').1) (fun l => (x l : ℂ)) (Pi.single j 1) i).im = 0 := by
  have hKd : DifferentiableAt ℂ K (fun i => (x i : ℂ)) :=
    hK.differentiableAt ((isOpen_complexStrip n r).mem_nhds (realPoint_mem_complexStrip hr x))
  have hfst : fderiv ℂ (fun θ' => (K θ').1) (fun l => (x l : ℂ)) (Pi.single j 1) =
      (fderiv ℂ K (fun l => (x l : ℂ)) (Pi.single j 1)).1 := by
    have h1 := hKd.hasFDerivAt.fst
    rw [h1.fderiv]
    rfl
  rw [hfst, Complex.im_sum]
  refine Finset.sum_eq_zero fun i _ => ?_
  have h2 := im_sumVec_fderiv_real hr hK hreal x (hasRealVec_single j) (Sum.inl i)
  rw [sumVec_apply, Sum.elim_inl] at h2
  rw [Complex.mul_im, h2, ((isRealOnReals_iff_im.1 hreal x i).2)]
  ring

/-- `⟨T⟩` is real as soon as `T` is real at real points (`bp:p2:averages`(a)). -/
theorem im_torsionAverage (hT : ∀ x : Fin n → ℝ, HasRealEntries (torsion h K ω fun i => (x i : ℂ)))
    (i j : Fin n) : (torsionAverage h K ω i j).im = 0 := by
  have hfun : (fun θ : Fin n → ℝ => torsion h K ω (fun l => (θ l : ℂ)) i j) =
      fun θ => (((torsion h K ω (fun l => (θ l : ℂ)) i j).re : ℝ) : ℂ) :=
    funext fun θ => Complex.ext (by simp) (by simp [hT θ i j])
  unfold torsionAverage
  simp only [hfun]
  rw [integral_complex_ofReal]
  simp

end RealObjects

/-! ### The lemma -/

section Main

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}

/-- Blueprint `bp:p2:periodicity`. -/
theorem periodicity (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r : ℝ} (hr : 0 < r)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hKp : IsPrimaryOnStrip K r) (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) :
    (IsPeriodicOn (tangentMat K) r ∧ IsPeriodicOn (gramMatrix K) r ∧
      IsPeriodicOn (invarianceError h K ω) r ∧ IsPeriodicOn (linMat h K) r ∧
      IsPeriodicOn (lagrangeMat K) r ∧ IsPeriodicOn (fun θ => h (K θ)) r ∧
      IsPeriodicOn (fun θ => (K θ).2) r ∧
      ∀ j : Fin n, IsPeriodicOn (fun θ => ∑ i, (K θ).2 i *
        fderiv ℂ (fun θ' => (K θ').1) θ (Pi.single j 1) i) r) ∧
    ((∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) →
      IsPeriodicOn (fun θ => (gramMatrix K θ)⁻¹) r ∧ IsPeriodicOn (normalMat K) r ∧
      IsPeriodicOn (frameMat K) r ∧ IsPeriodicOn (normalFieldMat h K ω) r ∧
      IsPeriodicOn (torsion h K ω) r ∧ IsPeriodicOn (symDefect K) r ∧
      IsPeriodicOn (eta h K ω) r) ∧
    ((∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) → IsRealOnReals K →
      IsRealMat (tangentMat K) ∧ IsRealMat (gramMatrix K) ∧ IsRealOnReals (invarianceError h K ω) ∧
      IsRealMat (linMat h K) ∧ IsRealMat (lagrangeMat K) ∧
      (∀ x : Fin n → ℝ, (h (K fun i => (x i : ℂ))).im = 0) ∧ IsRealVec (fun θ => (K θ).2) ∧
      (∀ j : Fin n, ∀ x : Fin n → ℝ, (∑ i, (K fun l => (x l : ℂ)).2 i *
        fderiv ℂ (fun θ' => (K θ').1) (fun l => (x l : ℂ)) (Pi.single j 1) i).im = 0) ∧
      IsRealMat (fun θ => (gramMatrix K θ)⁻¹) ∧ IsRealMat (normalMat K) ∧ IsRealMat (frameMat K) ∧
      IsRealMat (normalFieldMat h K ω) ∧ IsRealMat (torsion h K ω) ∧ IsRealMat (symDefect K) ∧
      IsRealVec (eta h K ω) ∧ ∀ i j, (torsionAverage h K ω i j).im = 0) :=
  ⟨⟨periodic_tangentMat hKp, periodic_gramMatrix hKp, periodic_invarianceError hS hK𝔅 hKp,
      periodic_linMat hS hK𝔅 hKp, periodic_lagrangeMat hKp, periodic_h_comp_K hS hK𝔅 hKp,
      periodic_K_snd hKp, periodic_action_dot hKp⟩,
    fun hG => ⟨periodic_inv_gramMatrix hKp, periodic_normalMat hKp, periodic_frameMat hKp,
      periodic_normalFieldMat hS hK𝔅 hKp, periodic_torsion hS hK𝔅 hKp hK hG,
      periodic_symDefect hKp, periodic_eta hS hK𝔅 hKp⟩,
    fun hG hreal => ⟨fun x => hasRealEntries_tangentMat hr hK hreal x,
      fun x => hasRealEntries_gramMatrix hr hK hreal x,
      isRealOnReals_invarianceError hS hr hK hK𝔅 hreal,
      fun x => hasRealEntries_linMat hS hr hK𝔅 hreal x,
      fun x => hasRealEntries_lagrangeMat hr hK hreal x,
      fun x => (ham_real_of_K hS hr hK𝔅 hreal x).2.2,
      fun x i => (isRealOnReals_iff_im.1 hreal x i).2,
      fun j x => im_action_dot hr hK hreal j x,
      fun x => hasRealEntries_inv_gramMatrix hr hK hreal hG x,
      fun x => hasRealEntries_normalMat hr hK hreal hG x,
      fun x => hasRealEntries_frameMat hr hK hreal hG x,
      fun x => hasRealEntries_normalFieldMat hS hr hK hK𝔅 hreal hG x,
      fun x => hasRealEntries_torsion hS hr hK hK𝔅 hreal hG x,
      fun x => hasRealEntries_symDefect hr hK hreal hG x,
      fun x => hasRealVec_eta hS hr hK hK𝔅 hreal hG x,
      im_torsionAverage fun x => hasRealEntries_torsion hS hr hK hK𝔅 hreal hG x⟩⟩

end Main

end KAM.Apost

end
