import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

-- Replace the first gate by an extra input. Test the remaining circuit on
-- incident pairs and maximal independent sets, with the extra input tied to the first gate.
theorem PEqualNP.Outside.R_meta_3352_2
    (table :
      let rows : List ℕ := [3, 6, 12, 17, 24, 33, 66, 132, 160, 264, 288, 320, 42, 50, 69, 104, 116, 138, 201, 208, 261, 276, 385, 402]
      let positive : List ℕ := [3, 6, 12, 17, 24, 33, 66, 132, 160, 264, 288, 320]
      ∀ r ∈ rows, ([1, 12, 23, 34, 40, 5, 16, 27, 38, 57, 68, 85] : List ℕ).any (fun e =>
        r.testBit (Fin.ofNat 9 (e / 10)).val && r.testBit (Fin.ofNat 9 (e % 10)).val) = positive.contains r)
    (exclude :
      let rows : List ℕ := [3, 6, 12, 17, 24, 33, 66, 132, 160, 264, 288, 320, 42, 50, 69, 104, 116, 138, 201, 208, 261, 276, 385, 402]
      let positive : List ℕ := [3, 6, 12, 17, 24, 33, 66, 132, 160, 264, 288, 320]
      ∀ C : Circuit, Monotone2 C → C.size ≤ 14 →
        (∀ v : Fin 3, C.gates.countP (fun g => g.inputs.contains (![4, 6, 7] v)) ≤ 2) →
        ∃ r ∈ rows,
          C.eval ((List.ofFn fun i : Fin 9 => r.testBit i.val) ++ [(r.testBit 0 || r.testBit 2)]) ≠
            positive.contains r) :
    have x1 : (Fin (9 : ℕ) → Bool) → Bool := fun (x1 : Fin (9 : ℕ) → Bool) => [(1 : ℕ), (12 : ℕ), (23 : ℕ), (34 : ℕ), (40 : ℕ), (5 : ℕ), (16 : ℕ), (27 : ℕ), (38 : ℕ), (57 : ℕ), (68 : ℕ), (85 : ℕ)].any fun (x2 : ℕ) => x1 (Fin.ofNat (9 : ℕ) (x2 / (10 : ℕ))) && x1 (Fin.ofNat (9 : ℕ) (x2 % (10 : ℕ))); ∀ (x2 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.FanInTwo x2 → (∀ x4 ∈ x2.gates, x4.op ≠ PEqualNP.CircuitLowerBounds.GateOp.not) → (∀ (x5 : Fin (9 : ℕ) → Bool), (x2.wires (List.ofFn x5)).getD (9 : ℕ) Bool.false = (x5 (0 : Fin (9 : ℕ)) || x5 (2 : Fin (9 : ℕ)))) → x2.size ≤ (15 : ℕ) → (∀ (x7 : Fin (3 : ℕ)), List.countP (fun (x8 : PEqualNP.CircuitLowerBounds.Gate) => x8.inputs.contains (![(4 : ℕ), (6 : ℕ), (7 : ℕ)] x7)) x2.gates ≤ (2 : ℕ)) → PEqualNP.MetaComplexity.circuitFun (9 : ℕ) x2 ≠ x1 := by
  dsimp only
  intro C fan noNot first small readCount correct
  let rows : List ℕ := [3, 6, 12, 17, 24, 33, 66, 132, 160, 264, 288, 320, 42, 50, 69, 104, 116, 138, 201, 208, 261, 276, 385, 402]
  let step (w : List Bool) (g : Gate) := w ++ [g.op.eval (g.inputs.map fun j => w.getD j false)]
  have keep (gs : List Gate) (w : List Bool) (j : ℕ) (bound : j < w.length) :
      (gs.foldl step w).getD j false = w.getD j false := by
    induction gs generalizing w with
    | nil => rfl
    | cons g gs ih =>
      rw [List.foldl_cons, ih _ (by simp [step]; omega)]
      exact List.getD_append _ _ _ _ bound
  cases hG : C.gates with
  | nil =>
    have bad := first (fun _ => true)
    simp [Circuit.wires, hG, List.getD_eq_getElem?_getD] at bad
  | cons head tail =>
    let D : Circuit := ⟨tail, C.output⟩
    have mono : Monotone2 D := by
      intro g hg
      have hmem : g ∈ C.gates := hG.symm ▸ List.mem_cons_of_mem _ hg
      have op := (fan g hmem).1
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff, noNot g hmem, or_false] at op
      exact ⟨by simpa only [Set.mem_insert_iff, Set.mem_singleton_iff] using op, (fan g hmem).2⟩
    have size : D.size ≤ 14 := by
      change C.gates.length ≤ 15 at small
      rw [hG, List.length_cons] at small
      change tail.length ≤ 14
      omega
    have cap (v : Fin 3) : D.gates.countP (fun g => g.inputs.contains (![4, 6, 7] v)) ≤ 2 := by
      have seen := readCount v
      rw [hG, List.countP_cons] at seen
      change tail.countP (fun g => g.inputs.contains (![4, 6, 7] v)) ≤ 2
      split at seen <;> omega
    obtain ⟨r, hrow, mismatch⟩ := exclude D mono size cap
    let x := fun i : Fin 9 => r.testBit i.val
    let input := List.ofFn x
    let h := head.op.eval (head.inputs.map fun i => input.getD i false)
    have bit : h = (x 0 || x 2) := by
      have eq := first x
      change (C.gates.foldl step input).getD 9 false = (x 0 || x 2) at eq
      rw [hG, List.foldl_cons, keep _ _ _ (by simp [step, input])] at eq
      simpa [step, input, h, List.getD_eq_getElem?_getD] using eq
    have eval : D.eval (input ++ [x 0 || x 2]) = circuitFun 9 C x := by
      rw [← bit]
      change (tail.foldl step (input ++ [h])).getD C.output false =
        (C.gates.foldl step input).getD C.output false
      rw [hG, List.foldl_cons]
    apply mismatch
    rw [show ((List.ofFn fun i : Fin 9 => r.testBit i.val) ++ [r.testBit 0 || r.testBit 2]) =
      input ++ [x 0 || x 2] from rfl, eval, congrFun correct x]
    exact table r hrow
