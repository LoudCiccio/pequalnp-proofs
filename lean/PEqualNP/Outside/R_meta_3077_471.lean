import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_3077_471
    (redundant : ∀ (x3 : Fin 26) (x4 : List (Fin 3 × Fin 26 × Fin 26)), x4.length ≤ 13 →
      (∀ (x9 : ℕ), x9 < 9 → ∃ x11 ∈ x4, ↑x11.2.1 = x9 ∨ ↑x11.2.2 = x9) →
      ∃ x10 < (512 : ℕ), have x11 : Fin (9 : ℕ) → Bool := fun (x11 : Fin (9 : ℕ)) => x10.testBit ↑x11;
        have x12 : List Bool → Fin (26 : ℕ) → Bool := fun (x12 : List Bool) (x13 : Fin (26 : ℕ)) => if ↑x13 = (25 : ℕ) then Bool.true else x12.getD (↑x13) Bool.false;
        have x13 : List Bool := List.foldl (fun (x13 : List Bool) (x14 : Fin (3 : ℕ) × Fin (26 : ℕ) × Fin (26 : ℕ)) => x13 ++ [if ↑x14.1 = (0 : ℕ) then x12 x13 x14.2.1 && x12 x13 x14.2.2 else if ↑x14.1 = (1 : ℕ) then x12 x13 x14.2.1 || x12 x13 x14.2.2 else !x12 x13 x14.2.1]) (List.ofFn x11 ++ [x11 0 || x11 4, x11 0 || x11 4]) x4; x13.getD (↑x3) Bool.false ≠ [(1 : ℕ), (12 : ℕ), (23 : ℕ), (34 : ℕ), (40 : ℕ), (5 : ℕ), (16 : ℕ), (27 : ℕ), (38 : ℕ), (57 : ℕ), (68 : ℕ), (85 : ℕ)].any fun (x14 : ℕ) => x11 (Fin.ofNat (9 : ℕ) (x14 / (10 : ℕ))) && x11 (Fin.ofNat (9 : ℕ) (x14 % (10 : ℕ))))
    (distinct : ∀ k : Fin 9, k ≠ 0 → k ≠ 4 → ∀ (x3 : Fin 26) (x4 : List (Fin 3 × Fin 26 × Fin 26)), x4.length ≤ 13 →
      (∀ (x9 : ℕ), x9 < 9 → ∃ x11 ∈ x4, ↑x11.2.1 = x9 ∨ ↑x11.2.2 = x9) →
      ∃ x10 < (512 : ℕ), have x11 : Fin (9 : ℕ) → Bool := fun (x11 : Fin (9 : ℕ)) => x10.testBit ↑x11;
        have x12 : List Bool → Fin (26 : ℕ) → Bool := fun (x12 : List Bool) (x13 : Fin (26 : ℕ)) => if ↑x13 = (25 : ℕ) then Bool.true else x12.getD (↑x13) Bool.false;
        have x13 : List Bool := List.foldl (fun (x13 : List Bool) (x14 : Fin (3 : ℕ) × Fin (26 : ℕ) × Fin (26 : ℕ)) => x13 ++ [if ↑x14.1 = (0 : ℕ) then x12 x13 x14.2.1 && x12 x13 x14.2.2 else if ↑x14.1 = (1 : ℕ) then x12 x13 x14.2.1 || x12 x13 x14.2.2 else !x12 x13 x14.2.1]) (List.ofFn x11 ++ [x11 0 || x11 4, (x11 0 || x11 4) || x11 k]) x4; x13.getD (↑x3) Bool.false ≠ [(1 : ℕ), (12 : ℕ), (23 : ℕ), (34 : ℕ), (40 : ℕ), (5 : ℕ), (16 : ℕ), (27 : ℕ), (38 : ℕ), (57 : ℕ), (68 : ℕ), (85 : ℕ)].any fun (x14 : ℕ) => x11 (Fin.ofNat (9 : ℕ) (x14 / (10 : ℕ))) && x11 (Fin.ofNat (9 : ℕ) (x14 % (10 : ℕ))))
    : ∀ (x1 x2 x3 : Fin (26 : ℕ)) (x4 : List (Fin (3 : ℕ) × Fin (26 : ℕ) × Fin (26 : ℕ))), x4.length ≤ (13 : ℕ) → ↑x1 = (9 : ℕ) ∨ ↑x2 = (9 : ℕ) → ↑x1 ≠ (25 : ℕ) → ↑x2 ≠ (25 : ℕ) →
      (∀ x9 < (9 : ℕ), ∃ x11 ∈ x4, ↑x11.2.1 = x9 ∨ ↑x11.2.2 = x9) →
      ∃ x10 < (512 : ℕ), have x11 : Fin (9 : ℕ) → Bool := fun (x11 : Fin (9 : ℕ)) => x10.testBit ↑x11;
        have x12 : List Bool → Fin (26 : ℕ) → Bool := fun (x12 : List Bool) (x13 : Fin (26 : ℕ)) => if ↑x13 = (25 : ℕ) then Bool.true else x12.getD (↑x13) Bool.false;
        have x13 : List Bool := List.foldl (fun (x13 : List Bool) (x14 : Fin (3 : ℕ) × Fin (26 : ℕ) × Fin (26 : ℕ)) => x13 ++ [if ↑x14.1 = (0 : ℕ) then x12 x13 x14.2.1 && x12 x13 x14.2.2 else if ↑x14.1 = (1 : ℕ) then x12 x13 x14.2.1 || x12 x13 x14.2.2 else !x12 x13 x14.2.1]) (List.ofFn x11 ++ [x11 (0 : Fin (9 : ℕ)) || x11 (4 : Fin (9 : ℕ))]) (((1 : Fin (3 : ℕ)), x1, x2) :: x4); x13.getD (↑x3) Bool.false ≠ [(1 : ℕ), (12 : ℕ), (23 : ℕ), (34 : ℕ), (40 : ℕ), (5 : ℕ), (16 : ℕ), (27 : ℕ), (38 : ℕ), (57 : ℕ), (68 : ℕ), (85 : ℕ)].any fun (x14 : ℕ) => x11 (Fin.ofNat (9 : ℕ) (x14 / (10 : ℕ))) && x11 (Fin.ofNat (9 : ℕ) (x14 % (10 : ℕ))) := by
  intro a b output gates budget oneIsNine aNotTrue bNotTrue readsAll
  let row (m : ℕ) (i : Fin 9) := m.testBit i.val
  let pin (w : List Bool) (i : Fin 26) := if i.val = 25 then true else w.getD i.val false
  let step (w : List Bool) (g : Fin 3 × Fin 26 × Fin 26) :=
    w ++ [if g.1.val = 0 then pin w g.2.1 && pin w g.2.2
      else if g.1.val = 1 then pin w g.2.1 || pin w g.2.2 else !pin w g.2.1]
  let first (m : ℕ) := row m 0 || row m 4
  let base (m : ℕ) := List.ofFn (row m) ++ [first m]
  let goal (m : ℕ) := ([1, 12, 23, 34, 40, 5, 16, 27, 38, 57, 68, 85] : List ℕ).any
    (fun i => row m (Fin.ofNat 9 (i / 10)) && row m (Fin.ofNat 9 (i % 10)))
  change ∃ m < 512,
    (((1, a, b) :: gates).foldl step (base m)).getD output.val false ≠ goal m
  have atNine (m : ℕ) (k : Fin 26) (hk : k.val = 9) : pin (base m) k = first m := by
    simp only [pin, hk, show ¬(9 : ℕ) = 25 by decide, ite_false]
    have length : (List.ofFn (row m)).length = 9 := by simp
    rw [← length]
    simp [base]
  have atRaw (m : ℕ) (k : Fin 26) (hk : k.val < 9) :
      pin (base m) k = row m ⟨k.val, hk⟩ := by
    have not25 : k.val ≠ 25 := by omega
    simp only [pin, not25, ite_false, base]
    rw [List.getD_append _ _ _ _ (by simpa), List.getD_eq_getElem _ _ (by simpa), List.getElem_ofFn]
  have beyond (m : ℕ) (k : Fin 26) (hk : 10 ≤ k.val) (not25 : k.val ≠ 25) :
      pin (base m) k = false := by
    simp only [pin, not25, ite_false]
    apply List.getD_eq_default
    simpa [base] using hk
  have select (k : Fin 26) (not25 : k.val ≠ 25) :
      ∃ m < 512,
        (gates.foldl step (base m ++ [first m || pin (base m) k])).getD output.val false ≠ goal m := by
    have redundantAt (same : ∀ m, (first m || pin (base m) k) = first m) :
        ∃ m < 512,
          (gates.foldl step (base m ++ [first m || pin (base m) k])).getD output.val false ≠ goal m := by
      obtain ⟨m, hm, h⟩ := redundant output gates budget readsAll
      refine ⟨m, hm, ?_⟩
      rw [same m]
      exact h
    by_cases raw : k.val < 9
    · let i : Fin 9 := ⟨k.val, raw⟩
      by_cases h0 : i = 0
      · apply redundantAt
        intro m
        rw [atRaw m k raw]
        change (first m || row m i) = first m
        rw [h0]
        cases b0 : row m 0 <;> simp [first, b0]
      by_cases h4 : i = 4
      · apply redundantAt
        intro m
        rw [atRaw m k raw]
        change (first m || row m i) = first m
        rw [h4]
        simp [first]
      obtain ⟨m, hm, h⟩ := distinct i h0 h4 output gates budget readsAll
      refine ⟨m, hm, ?_⟩
      rw [atRaw m k raw]
      exact h
    · by_cases nine : k.val = 9
      · exact redundantAt (fun m => by rw [atNine m k nine]; simp)
      · exact redundantAt (fun m => by rw [beyond m k (by omega) not25]; simp)
  have headEval (m : ℕ) (p q : Fin 26) :
      step (base m) (1, p, q) = base m ++ [pin (base m) p || pin (base m) q] := by
    simp [step]
  rcases oneIsNine with ha | hb
  · obtain ⟨m, hm, h⟩ := select b bNotTrue
    refine ⟨m, hm, ?_⟩
    rw [List.foldl_cons, headEval, atNine m a ha]
    exact h
  · obtain ⟨m, hm, h⟩ := select a aNotTrue
    refine ⟨m, hm, ?_⟩
    rw [List.foldl_cons, headEval, atNine m b hb, Bool.or_comm (pin (base m) a) (first m)]
    exact h
