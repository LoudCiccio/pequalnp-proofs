import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_3159_521
    (noPaid : ∀ (x1 : ℕ) (x2 : Fin x1 → Bool) (x3 x4 : Fin x1 → ℕ × Bool)
        (x5 : Bool) (x6 : Finset ℕ) (x7 : (Fin (9 : ℕ) → Bool) → ℕ → Bool),
        (0 : ℕ) < x1 → x6.card ≤ (3 : ℕ) → x1 + x6.card ≤ (14 : ℕ) → x5 = Bool.false → x6.card = 0 →
      (∀ (x12 : Fin x1), (x3 x12).1 < (10 : ℕ) + ↑x12 ∧ (x4 x12).1 < (10 : ℕ) + ↑x12) →
      (∀ (x13 : Fin (9 : ℕ)), ∃ (x14 : Fin x1), (x3 x14).1 = ↑x13 ∨ (x4 x14).1 = ↑x13) →
      (∀ (x14 : ℕ), x14 ∈ x6 ↔ x14 ≠ (0 : ℕ) ∧ x14 ≠ (9 : ℕ) ∧
          (x5 = Bool.true ∧ x14 = (9 : ℕ) + x1 ∨ ∃ (x15 : Fin x1), x3 x15 = (x14, Bool.true) ∨ x4 x15 = (x14, Bool.true))) →
      (∀ (x15 : Fin (9 : ℕ) → Bool) (x16 : Fin (9 : ℕ)), x7 x15 ↑x16 = x15 x16) →
      (∀ (x16 : Fin (9 : ℕ) → Bool), x7 x16 (9 : ℕ) = Bool.false) →
      (∀ (x17 : Fin (9 : ℕ) → Bool) (x18 : Fin x1),
        have x19 : ℕ × Bool → Bool := fun (x19 : ℕ × Bool) =>
        x7 x17 x19.1 ^^ x19.2;
        x7 x17 ((10 : ℕ) + ↑x18) = if x2 x18 = Bool.true
          then x19 (x3 x18) && x19 (x4 x18)
          else x19 (x3 x18) || x19 (x4 x18)) →
      ∃ (x18 : Fin (9 : ℕ) → Bool), (x7 x18 ((9 : ℕ) + x1) ^^ x5) ≠
        [(1 : ℕ), (12 : ℕ), (23 : ℕ), (34 : ℕ), (40 : ℕ), (5 : ℕ), (16 : ℕ), (27 : ℕ), (38 : ℕ), (57 : ℕ), (68 : ℕ), (85 : ℕ)].any
          fun (x19 : ℕ) => x18 (Fin.ofNat (9 : ℕ) (x19 / (10 : ℕ))) && x18 (Fin.ofNat (9 : ℕ) (x19 % (10 : ℕ))))
    (onePaid : ∀ (x1 : ℕ) (x2 : Fin x1 → Bool) (x3 x4 : Fin x1 → ℕ × Bool)
        (x5 : Bool) (x6 : Finset ℕ) (x7 : (Fin (9 : ℕ) → Bool) → ℕ → Bool),
        (0 : ℕ) < x1 → x6.card ≤ (3 : ℕ) → x1 + x6.card ≤ (14 : ℕ) → x5 = Bool.false → x6.card = 1 →
      (∀ (x12 : Fin x1), (x3 x12).1 < (10 : ℕ) + ↑x12 ∧ (x4 x12).1 < (10 : ℕ) + ↑x12) →
      (∀ (x13 : Fin (9 : ℕ)), ∃ (x14 : Fin x1), (x3 x14).1 = ↑x13 ∨ (x4 x14).1 = ↑x13) →
      (∀ (x14 : ℕ), x14 ∈ x6 ↔ x14 ≠ (0 : ℕ) ∧ x14 ≠ (9 : ℕ) ∧
          (x5 = Bool.true ∧ x14 = (9 : ℕ) + x1 ∨ ∃ (x15 : Fin x1), x3 x15 = (x14, Bool.true) ∨ x4 x15 = (x14, Bool.true))) →
      (∀ (x15 : Fin (9 : ℕ) → Bool) (x16 : Fin (9 : ℕ)), x7 x15 ↑x16 = x15 x16) →
      (∀ (x16 : Fin (9 : ℕ) → Bool), x7 x16 (9 : ℕ) = Bool.false) →
      (∀ (x17 : Fin (9 : ℕ) → Bool) (x18 : Fin x1),
        have x19 : ℕ × Bool → Bool := fun (x19 : ℕ × Bool) =>
        x7 x17 x19.1 ^^ x19.2;
        x7 x17 ((10 : ℕ) + ↑x18) = if x2 x18 = Bool.true
          then x19 (x3 x18) && x19 (x4 x18)
          else x19 (x3 x18) || x19 (x4 x18)) →
      ∃ (x18 : Fin (9 : ℕ) → Bool), (x7 x18 ((9 : ℕ) + x1) ^^ x5) ≠
        [(1 : ℕ), (12 : ℕ), (23 : ℕ), (34 : ℕ), (40 : ℕ), (5 : ℕ), (16 : ℕ), (27 : ℕ), (38 : ℕ), (57 : ℕ), (68 : ℕ), (85 : ℕ)].any
          fun (x19 : ℕ) => x18 (Fin.ofNat (9 : ℕ) (x19 / (10 : ℕ))) && x18 (Fin.ofNat (9 : ℕ) (x19 % (10 : ℕ))))
    : ∀ (x1 : ℕ) (x2 : Fin x1 → Bool) (x3 x4 : Fin x1 → ℕ × Bool)
        (x5 : Bool) (x6 : Finset ℕ) (x7 : (Fin (9 : ℕ) → Bool) → ℕ → Bool),
        (0 : ℕ) < x1 → x6.card ≤ (3 : ℕ) → x1 + x6.card ≤ (14 : ℕ) → x6.card ≤ (1 : ℕ) →
      (∀ (x12 : Fin x1), (x3 x12).1 < (10 : ℕ) + ↑x12 ∧ (x4 x12).1 < (10 : ℕ) + ↑x12) →
      (∀ (x13 : Fin (9 : ℕ)), ∃ (x14 : Fin x1), (x3 x14).1 = ↑x13 ∨ (x4 x14).1 = ↑x13) →
      (∀ (x14 : ℕ), x14 ∈ x6 ↔ x14 ≠ (0 : ℕ) ∧ x14 ≠ (9 : ℕ) ∧
          (x5 = Bool.true ∧ x14 = (9 : ℕ) + x1 ∨ ∃ (x15 : Fin x1), x3 x15 = (x14, Bool.true) ∨ x4 x15 = (x14, Bool.true))) →
      (∀ (x15 : Fin (9 : ℕ) → Bool) (x16 : Fin (9 : ℕ)), x7 x15 ↑x16 = x15 x16) →
      (∀ (x16 : Fin (9 : ℕ) → Bool), x7 x16 (9 : ℕ) = Bool.false) →
      (∀ (x17 : Fin (9 : ℕ) → Bool) (x18 : Fin x1),
        have x19 : ℕ × Bool → Bool := fun (x19 : ℕ × Bool) =>
        x7 x17 x19.1 ^^ x19.2;
        x7 x17 ((10 : ℕ) + ↑x18) = if x2 x18 = Bool.true
          then x19 (x3 x18) && x19 (x4 x18)
          else x19 (x3 x18) || x19 (x4 x18)) →
      ∃ (x18 : Fin (9 : ℕ) → Bool), (x7 x18 ((9 : ℕ) + x1) ^^ x5) ≠
        [(1 : ℕ), (12 : ℕ), (23 : ℕ), (34 : ℕ), (40 : ℕ), (5 : ℕ), (16 : ℕ), (27 : ℕ), (38 : ℕ), (57 : ℕ), (68 : ℕ), (85 : ℕ)].any
          fun (x19 : ℕ) => x18 (Fin.ofNat (9 : ℕ) (x19 / (10 : ℕ))) && x18 (Fin.ofNat (9 : ℕ) (x19 % (10 : ℕ))) := by
  intro n op left right phase paid wire positive atMostThree budget atMostOne
    earlier used charged inputs zero step
  cases phase
  · by_cases hc : paid.card = 0
    · exact noPaid n op left right false paid wire positive atMostThree budget rfl hc
        earlier used charged inputs zero step
    · exact onePaid n op left right false paid wire positive atMostThree budget rfl (by omega)
        earlier used charged inputs zero step
  · let low : Fin 9 → Bool := fun i => decide (i = 1)
    let high : Fin 9 → Bool := fun i => decide (i = 1 ∨ i = 2)
    let last : ℕ := 9 + n
    have lastPaid : last ∈ paid := (charged last).2
      ⟨by dsimp [last]; omega, by dsimp [last]; omega, Or.inl ⟨rfl, rfl⟩⟩
    have before (j : Fin n) (p : ℕ × Bool) (hp : p = left j ∨ p = right j) :
        p.1 < 10 + j.val := by
      rcases hp with rfl | rfl
      · exact (earlier j).1
      · exact (earlier j).2
    have freeOnly (j : Fin n) (p : ℕ × Bool) (hp : p = left j ∨ p = right j)
        (sign : p.2 = true) : p.1 = 0 ∨ p.1 = 9 := by
      by_contra excludes
      push Not at excludes
      have pair : p = (p.1, true) := Prod.ext rfl sign
      have chargedPin : p.1 ∈ paid := (charged p.1).2
        ⟨excludes.1, excludes.2, Or.inr ⟨j,
          hp.elim (fun h => Or.inl (h.symm.trans pair)) (fun h => Or.inr (h.symm.trans pair))⟩⟩
      have same : p.1 = last := Finset.card_le_one.mp atMostOne _ chargedPin _ lastPaid
      have prior := before j p hp
      have within := j.isLt
      dsimp [last] at same
      omega
    have mono (i : ℕ) (hi : i ≤ last) : wire low i = true → wire high i = true := by
      induction i using Nat.strong_induction_on with
      | ind i ih =>
        by_cases small : i < 9
        · let j : Fin 9 := ⟨i, small⟩
          change wire low j.val = true → wire high j.val = true
          rw [inputs low j, inputs high j]
          intro h
          have hj : j = 1 := by simpa [low] using h
          simp [high, hj]
        by_cases pin : i = 9
        · rw [pin, zero low, zero high]
          simp
        let j : Fin n := ⟨i - 10, by dsimp [last] at hi; omega⟩
        have atJ : 10 + j.val = i := by dsimp [j]; omega
        have ofPin (p : ℕ × Bool) (hp : p = left j ∨ p = right j) :
            (wire low p.1 ^^ p.2) = true → (wire high p.1 ^^ p.2) = true := by
          cases sign : p.2
          · have earlierPin := before j p hp
            simpa only [sign, Bool.xor_false] using ih p.1 (by omega) (by omega)
          · have matched : wire low p.1 = wire high p.1 := by
              rcases freeOnly j p hp sign with h | h
              · rw [h, show wire low 0 = low 0 from inputs low 0,
                  show wire high 0 = high 0 from inputs high 0]
                rfl
              · rw [h, zero low, zero high]
            rw [matched]
            exact id
        rw [← atJ, step low j, step high j]
        dsimp
        cases op j
        · simp only [Bool.false_eq_true, ite_false, Bool.or_eq_true]
          exact fun h => h.elim
            (fun l => Or.inl (ofPin (left j) (Or.inl rfl) l))
            (fun r => Or.inr (ofPin (right j) (Or.inr rfl) r))
        · simp only [ite_true, Bool.and_eq_true]
          exact fun h => ⟨ofPin (left j) (Or.inl rfl) h.1, ofPin (right j) (Or.inr rfl) h.2⟩
    by_contra agrees
    push Not at agrees
    have lo : wire low last = true := by
      have h := agrees low
      change (wire low last ^^ true) = false at h
      cases hw : wire low last
      · simp [hw] at h
      · rfl
    have hi : wire high last = false := by
      have h := agrees high
      change (wire high last ^^ true) = true at h
      cases hw : wire high last
      · rfl
      · simp [hw] at h
    exact Bool.false_ne_true (hi.symm.trans (mono last (by rfl) lo))
