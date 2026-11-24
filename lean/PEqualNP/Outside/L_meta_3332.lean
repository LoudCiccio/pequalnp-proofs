import PEqualNP.Defs

theorem PEqualNP.Outside.L_meta_3332 : ∀ (x1 : (Fin (9 : ℕ) → Bool) → Bool), (∀ (x2 : Fin (9 : ℕ)) (x3 : Bool), (x1 fun (x4 : Fin (9 : ℕ)) => Decidable.decide (x4 = x2) && x3) = Bool.false ∧ (x1 fun (x4 : Fin (9 : ℕ)) => !Decidable.decide (x4 = x2) || x3) = Bool.true) →
    ∀ (x3 : ℕ) (x4 : Fin x3 → Bool) (x5 x6 : Fin x3 → ℕ × Bool) (x7 : ℕ × Bool) (x8 : (Fin (9 : ℕ) → Bool) → ℕ → Bool), x7.1 < (10 : ℕ) + x3 →
    (∀ (x10 : Fin (9 : ℕ) → Bool) (x11 : Fin (9 : ℕ)), x8 x10 ↑x11 = x10 x11) →
    (∀ (x11 : Fin (9 : ℕ) → Bool), x8 x11 (9 : ℕ) = Bool.false) →
    (∀ (x12 : Fin (9 : ℕ) → Bool) (x13 : Fin x3),
      have x14 : ℕ × Bool → Bool := fun (x14 : ℕ × Bool) => x8 x12 x14.1 ^^ x14.2;
      x8 x12 ((10 : ℕ) + ↑x13) = if x4 x13 = Bool.true
        then x14 (x5 x13) && x14 (x6 x13)
        else x14 (x5 x13) || x14 (x6 x13)) →
    (∀ (x13 : Fin (9 : ℕ) → Bool), (x8 x13 x7.1 ^^ x7.2) = x1 x13) →
    ∃ (x14 : Fin x3), x7.1 = (10 : ℕ) + ↑x14 ∧ (9 : ℕ) ≤ (x5 x14).1 ∧ (9 : ℕ) ≤ (x6 x14).1 := by
  intro f separated n op left right out value hout raw zero compute agrees
  let sparse (k : Fin 9) (b : Bool) := fun i : Fin 9 => decide (i = k) && b
  let dense (k : Fin 9) (b : Bool) := fun i : Fin 9 => !decide (i = k) || b
  have split (k : Fin 9) (b : Bool) :
      (value (sparse k b) out.1 ^^ out.2) ≠ (value (dense k b) out.1 ^^ out.2) := by
    rw [agrees, agrees, (separated k b).1, (separated k b).2]
    exact Bool.false_ne_true
  have onSparse (k : Fin 9) (b : Bool) : sparse k b k = b := by simp [sparse]
  have onDense (k : Fin 9) (b : Bool) : dense k b k = b := by simp [dense]
  have notRaw : 9 ≤ out.1 := by
    by_contra! h
    let k : Fin 9 := ⟨out.1, h⟩
    have eq : value (sparse k false) out.1 = value (dense k false) out.1 := by
      change value (sparse k false) k.val = value (dense k false) k.val
      rw [raw, raw, onSparse, onDense]
    exact split k false (congrArg (fun z => z ^^ out.2) eq)
  have notZero : out.1 ≠ 9 := by
    intro h
    apply split 0 false
    rw [h, zero, zero]
  let j : Fin n := ⟨out.1 - 10, by omega⟩
  have selected : out.1 = 10 + j.val := by dsimp [j]; omega
  have computedPin (pin : ℕ × Bool) (side : pin = left j ∨ pin = right j) : 9 ≤ pin.1 := by
    by_contra! h
    let k : Fin 9 := ⟨pin.1, h⟩
    let b := if op j then pin.2 else !pin.2
    have absorb : (b ^^ pin.2) = !op j := by
      cases kind : op j <;> cases sign : pin.2 <;> simp [b, kind, sign]
    have atSparse : value (sparse k b) pin.1 = b := by
      change value (sparse k b) k.val = b
      rw [raw, onSparse]
    have atDense : value (dense k b) pin.1 = b := by
      change value (dense k b) k.val = b
      rw [raw, onDense]
    have constant (x : Fin 9 → Bool) (hx : value x pin.1 = b) : value x out.1 = !op j := by
      rw [selected, compute x j]
      dsimp only
      rcases side with hl | hr
      · rw [← hl, hx, absorb]
        cases op j <;> simp
      · rw [← hr, hx, absorb]
        cases op j <;> simp
    exact split k b (congrArg (fun z => z ^^ out.2)
      ((constant _ atSparse).trans (constant _ atDense).symm))
  exact ⟨j, selected, computedPin _ (Or.inl rfl), computedPin _ (Or.inr rfl)⟩
