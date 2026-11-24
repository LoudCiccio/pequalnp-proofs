import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_3172_421
  (repeated : ∀ a : ℕ, a = 2 ∨ a = 3 →
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.FanInTwo x5 → x5.size ≤ (13 : ℕ) →
      ∃ (x8 : Fin (9 : ℕ) → Bool),
      have x9 : List Bool := List.ofFn x8 ++ [!x8 (0 : Fin (9 : ℕ))];
      x5.eval (x9 ++ [PEqualNP.CircuitLowerBounds.GateOp.or.eval (List.map (fun (x10 : ℕ) => x9.getD x10 Bool.false) [a])]) ≠ (x8 (0 : Fin (9 : ℕ)) && x8 (1 : Fin (9 : ℕ)) ||
        x8 (1 : Fin (9 : ℕ)) && x8 (2 : Fin (9 : ℕ)) ||
        x8 (2 : Fin (9 : ℕ)) && x8 (3 : Fin (9 : ℕ)) ||
        x8 (3 : Fin (9 : ℕ)) && x8 (4 : Fin (9 : ℕ)) ||
        x8 (4 : Fin (9 : ℕ)) && x8 (0 : Fin (9 : ℕ)) ||
        x8 (0 : Fin (9 : ℕ)) && x8 (5 : Fin (9 : ℕ)) ||
        x8 (1 : Fin (9 : ℕ)) && x8 (6 : Fin (9 : ℕ)) ||
        x8 (2 : Fin (9 : ℕ)) && x8 (7 : Fin (9 : ℕ)) ||
        x8 (3 : Fin (9 : ℕ)) && x8 (8 : Fin (9 : ℕ)) ||
        x8 (5 : Fin (9 : ℕ)) && x8 (7 : Fin (9 : ℕ)) ||
        x8 (6 : Fin (9 : ℕ)) && x8 (8 : Fin (9 : ℕ)) ||
        x8 (8 : Fin (9 : ℕ)) && x8 (5 : Fin (9 : ℕ))))
  (adjacent :
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.FanInTwo x5 → x5.size ≤ (13 : ℕ) →
      ∃ (x8 : Fin (9 : ℕ) → Bool),
      have x9 : List Bool := List.ofFn x8 ++ [!x8 (0 : Fin (9 : ℕ))];
      x5.eval (x9 ++ [PEqualNP.CircuitLowerBounds.GateOp.or.eval (List.map (fun (x10 : ℕ) => x9.getD x10 Bool.false) [2, 3])]) ≠ (x8 (0 : Fin (9 : ℕ)) && x8 (1 : Fin (9 : ℕ)) ||
        x8 (1 : Fin (9 : ℕ)) && x8 (2 : Fin (9 : ℕ)) ||
        x8 (2 : Fin (9 : ℕ)) && x8 (3 : Fin (9 : ℕ)) ||
        x8 (3 : Fin (9 : ℕ)) && x8 (4 : Fin (9 : ℕ)) ||
        x8 (4 : Fin (9 : ℕ)) && x8 (0 : Fin (9 : ℕ)) ||
        x8 (0 : Fin (9 : ℕ)) && x8 (5 : Fin (9 : ℕ)) ||
        x8 (1 : Fin (9 : ℕ)) && x8 (6 : Fin (9 : ℕ)) ||
        x8 (2 : Fin (9 : ℕ)) && x8 (7 : Fin (9 : ℕ)) ||
        x8 (3 : Fin (9 : ℕ)) && x8 (8 : Fin (9 : ℕ)) ||
        x8 (5 : Fin (9 : ℕ)) && x8 (7 : Fin (9 : ℕ)) ||
        x8 (6 : Fin (9 : ℕ)) && x8 (8 : Fin (9 : ℕ)) ||
        x8 (8 : Fin (9 : ℕ)) && x8 (5 : Fin (9 : ℕ))))
  (nonadjacent :
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.FanInTwo x5 → x5.size ≤ (13 : ℕ) →
      ∃ (x8 : Fin (9 : ℕ) → Bool),
      have x9 : List Bool := List.ofFn x8 ++ [!x8 (0 : Fin (9 : ℕ))];
      x5.eval (x9 ++ [PEqualNP.CircuitLowerBounds.GateOp.or.eval (List.map (fun (x10 : ℕ) => x9.getD x10 Bool.false) [2, 8])]) ≠ (x8 (0 : Fin (9 : ℕ)) && x8 (1 : Fin (9 : ℕ)) ||
        x8 (1 : Fin (9 : ℕ)) && x8 (2 : Fin (9 : ℕ)) ||
        x8 (2 : Fin (9 : ℕ)) && x8 (3 : Fin (9 : ℕ)) ||
        x8 (3 : Fin (9 : ℕ)) && x8 (4 : Fin (9 : ℕ)) ||
        x8 (4 : Fin (9 : ℕ)) && x8 (0 : Fin (9 : ℕ)) ||
        x8 (0 : Fin (9 : ℕ)) && x8 (5 : Fin (9 : ℕ)) ||
        x8 (1 : Fin (9 : ℕ)) && x8 (6 : Fin (9 : ℕ)) ||
        x8 (2 : Fin (9 : ℕ)) && x8 (7 : Fin (9 : ℕ)) ||
        x8 (3 : Fin (9 : ℕ)) && x8 (8 : Fin (9 : ℕ)) ||
        x8 (5 : Fin (9 : ℕ)) && x8 (7 : Fin (9 : ℕ)) ||
        x8 (6 : Fin (9 : ℕ)) && x8 (8 : Fin (9 : ℕ)) ||
        x8 (8 : Fin (9 : ℕ)) && x8 (5 : Fin (9 : ℕ))))
  : ∀ (x1 : List ℕ), x1.length = (2 : ℕ) →  (∀ x3 ∈ x1, x3 = (1 : ℕ) ∨ x3 = (2 : ℕ) ∨ x3 = (3 : ℕ) ∨ x3 = (5 : ℕ) ∨ x3 = (8 : ℕ)) →  (∀ x4 ∈ x1, x4 = (2 : ℕ) ∨ x4 = (3 : ℕ) ∨ x4 = (8 : ℕ)) →
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.FanInTwo x5 → x5.size ≤ (13 : ℕ) →
      ∃ (x8 : Fin (9 : ℕ) → Bool),
      have x9 : List Bool := List.ofFn x8 ++ [!x8 (0 : Fin (9 : ℕ))];
      x5.eval (x9 ++ [PEqualNP.CircuitLowerBounds.GateOp.or.eval (List.map (fun (x10 : ℕ) => x9.getD x10 Bool.false) x1)]) ≠ (x8 (0 : Fin (9 : ℕ)) && x8 (1 : Fin (9 : ℕ)) ||
        x8 (1 : Fin (9 : ℕ)) && x8 (2 : Fin (9 : ℕ)) ||
        x8 (2 : Fin (9 : ℕ)) && x8 (3 : Fin (9 : ℕ)) ||
        x8 (3 : Fin (9 : ℕ)) && x8 (4 : Fin (9 : ℕ)) ||
        x8 (4 : Fin (9 : ℕ)) && x8 (0 : Fin (9 : ℕ)) ||
        x8 (0 : Fin (9 : ℕ)) && x8 (5 : Fin (9 : ℕ)) ||
        x8 (1 : Fin (9 : ℕ)) && x8 (6 : Fin (9 : ℕ)) ||
        x8 (2 : Fin (9 : ℕ)) && x8 (7 : Fin (9 : ℕ)) ||
        x8 (3 : Fin (9 : ℕ)) && x8 (8 : Fin (9 : ℕ)) ||
        x8 (5 : Fin (9 : ℕ)) && x8 (7 : Fin (9 : ℕ)) ||
        x8 (6 : Fin (9 : ℕ)) && x8 (8 : Fin (9 : ℕ)) ||
        x8 (8 : Fin (9 : ℕ)) && x8 (5 : Fin (9 : ℕ))) := by
  intro pins len _ allowed
  let edge := fun x : Fin 9 → Bool =>
    (x 0 && x 1) || (x 1 && x 2) || (x 2 && x 3) || (x 3 && x 4) ||
    (x 4 && x 0) || (x 0 && x 5) || (x 1 && x 6) || (x 2 && x 7) ||
    (x 3 && x 8) || (x 5 && x 7) || (x 6 && x 8) || (x 8 && x 5)
  let input := fun (a : List ℕ) (x : Fin 9 → Bool) =>
    let w := List.ofFn x ++ [!x 0]
    w ++ [PEqualNP.CircuitLowerBounds.GateOp.or.eval (a.map fun i => w.getD i false)]
  let rejects := fun a : List ℕ =>
    ∀ C : PEqualNP.CircuitLowerBounds.Circuit, PEqualNP.MetaComplexity.FanInTwo C →
      C.size ≤ 13 → ∃ x, C.eval (input a x) ≠ edge x
  change rejects pins
  have duplicate (a : ℕ) : rejects [a] → rejects [a, a] := by
    intro r C hC hs
    simpa [input, PEqualNP.CircuitLowerBounds.GateOp.eval] using r C hC hs
  have swap (a b : ℕ) : rejects [a, b] → rejects [b, a] := by
    intro r C hC hs
    simpa [input, PEqualNP.CircuitLowerBounds.GateOp.eval, Bool.or_comm] using r C hC hs
  let p := fun i : ℕ => ([0, 5, 8, 3, 4, 1, 7, 6, 2] : List ℕ).getD i i
  have fix (i : ℕ) (hi : 9 ≤ i) : p i = i := by
    exact List.getD_eq_default _ _ hi
  have small (i : ℕ) (hi : i < 9) : p i < 9 := by
    interval_cases i <;> decide
  let perm := fun x : Fin 9 → Bool => fun i : Fin 9 => x ⟨p i, small i i.isLt⟩
  have inv (x : Fin 9 → Bool) : edge (perm x) = edge x := by
    change (((x 0 && x 5) || (x 5 && x 8) || (x 8 && x 3) || (x 3 && x 4) ||
      (x 4 && x 0) || (x 0 && x 1) || (x 5 && x 7) || (x 8 && x 6) ||
      (x 3 && x 2) || (x 1 && x 6) || (x 7 && x 2) || (x 2 && x 1))) = edge x
    simp only [edge]
    ac_rfl
  let gate := fun g : PEqualNP.CircuitLowerBounds.Gate =>
    (⟨g.op, g.inputs.map p⟩ : PEqualNP.CircuitLowerBounds.Gate)
  let step := fun (w : List Bool) (g : PEqualNP.CircuitLowerBounds.Gate) =>
    w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]
  have simulate (gs : List PEqualNP.CircuitLowerBounds.Gate) (w v : List Bool)
      (h₉ : 9 ≤ w.length) (hlen : w.length = v.length)
      (hread : ∀ i, w.getD i false = v.getD (p i) false) :
      ∀ i, (gs.foldl step w).getD i false = ((gs.map gate).foldl step v).getD (p i) false := by
    induction gs generalizing w v with
    | nil => exact hread
    | cons g gs ih =>
      simp only [List.map_cons, List.foldl_cons]
      have value : g.op.eval (g.inputs.map fun i => w.getD i false) =
          (gate g).op.eval ((gate g).inputs.map fun i => v.getD i false) := by
        simp only [gate, List.map_map]
        congr 1
        apply List.map_congr_left
        intro i _
        exact hread i
      apply ih <;> clear ih
      · simp [step]; omega
      · simp [step, hlen]
      · intro i
        simp only [step, ← value]
        rcases Nat.lt_trichotomy i w.length with h | h | h
        · have hp : p i < v.length := by
            by_cases hi : i < 9
            · have := small i hi
              omega
            · rw [fix i (by omega)]
              omega
          rw [List.getD_append _ _ _ _ h, List.getD_append _ _ _ _ hp]
          exact hread i
        · have hp : p i = v.length := (fix i (by omega)).trans (h.trans hlen)
          rw [hp, h]
          simp
        · have hp : p i = i := fix i (by omega)
          rw [List.getD_eq_default _ _ (by simp; omega),
            List.getD_eq_default _ _ (by simp; omega)]
  have ini (a b : ℕ) (ha : a < 9) (hb : b < 9) (x : Fin 9 → Bool) :
      ∀ i, (input [a, b] (perm x)).getD i false =
        (input [p a, p b] x).getD (p i) false := by
    have xval (j : ℕ) (hj : j < 9) (t : Fin 9 → Bool) :
        (List.ofFn t ++ [!t 0]).getD j false = t ⟨j, hj⟩ := by
      rw [List.getD_append _ _ _ _ (by simpa)]
      rw [List.getD_eq_getElem _ _ (by simpa)]
      exact List.getElem_ofFn _
    have same : (input [a, b] (perm x)).getD 10 false =
          (input [p a, p b] x).getD 10 false := by
      simp only [input, List.map_cons, List.map_nil, PEqualNP.CircuitLowerBounds.GateOp.eval,
        List.any_cons, List.any_nil, id_eq, Bool.or_false]
      rw [xval a ha, xval b hb, xval _ (small a ha), xval _ (small b hb)]
      rfl
    intro i
    by_cases hi : i < 9
    · have hp := small i hi
      rw [show (input [a, b] (perm x)).getD i false = perm x ⟨i, hi⟩ by
        unfold input
        rw [List.getD_append _ _ _ _ (by simp; omega), xval i hi]]
      rw [show (input [p a, p b] x).getD (p i) false = x ⟨p i, hp⟩ by
        unfold input
        rw [List.getD_append _ _ _ _ (by simp; omega), xval _ hp]]
    rw [fix i (by omega)]
    rcases show i = 9 ∨ i = 10 ∨ 11 ≤ i by omega with rfl | rfl | h
    · unfold input
      rw [List.getD_append (List.ofFn (perm x) ++ [!(perm x) 0]) _ _ _ (by simp),
        List.getD_append (List.ofFn x ++ [!x 0]) _ _ _ (by simp)]
      rfl
    · exact same
    · rw [List.getD_eq_default _ _ (by simpa [input]), List.getD_eq_default _ _ (by simpa [input])]
  have transport (a b : ℕ) (ha : a < 9) (hb : b < 9) :
      rejects [a, b] → rejects [p a, p b] := by
    intro r C hC hs
    let D : PEqualNP.CircuitLowerBounds.Circuit := ⟨C.gates.map gate, p C.output⟩
    -- Apply the involution in the other direction.
    have pp (i : ℕ) (hi : i < 9) : p (p i) = i := by
      interval_cases i <;> decide
    have hn : PEqualNP.MetaComplexity.FanInTwo D := by
      intro g hg
      change g ∈ C.gates.map gate at hg
      obtain ⟨original, member, renamed⟩ := List.mem_map.mp hg
      rw [← renamed]
      simpa [gate] using hC original member
    obtain ⟨x, hx⟩ := r D hn (by simpa [D, PEqualNP.CircuitLowerBounds.Circuit.size] using hs)
    refine ⟨perm x, ?_⟩
    rw [inv]
    have hread := ini (p a) (p b) (small a ha) (small b hb) x
    rw [pp a ha, pp b hb] at hread
    have sim := simulate C.gates (input [p a, p b] (perm x)) (input [a, b] x)
      (by simp [input]) (by simp [input]) hread C.output
    change C.eval (input [p a, p b] (perm x)) ≠ edge x
    rw [show C.eval (input [p a, p b] (perm x)) = D.eval (input [a, b] x) from sim]
    exact hx
  obtain ⟨a, b, rfl⟩ := List.length_eq_two.mp len
  rcases allowed a (by simp) with rfl | rfl | rfl <;>
    rcases allowed b (by simp) with rfl | rfl | rfl
  · exact duplicate 2 (repeated 2 (Or.inl rfl))
  · exact adjacent
  · exact nonadjacent
  · exact swap 2 3 adjacent
  · exact duplicate 3 (repeated 3 (Or.inr rfl))
  · exact transport 3 2 (by decide) (by decide) (swap 2 3 adjacent)
  · exact swap 2 8 nonadjacent
  · exact transport 2 3 (by decide) (by decide) adjacent
  · exact transport 2 2 (by decide) (by decide) (duplicate 2 (repeated 2 (Or.inl rfl)))
