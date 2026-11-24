import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds

theorem PEqualNP.Outside.L_meta_3434 : ∀ (x1 : ℕ → ℕ) (x2 : PEqualNP.CircuitLowerBounds.Circuit) (x3 x4 : List Bool), x3.length = x4.length →
    (∀ (x6 : ℕ), x3.length ≤ x6 → x1 x6 = x6) →
    (∀ x7 < x3.length, x1 x7 < x3.length ∨ x3.length + x2.size ≤ x1 x7) →
    (∀ (x8 : ℕ), x4.getD (x1 x8) Bool.false = x3.getD x8 Bool.false) →
    { gates := List.map (fun (x9 : PEqualNP.CircuitLowerBounds.Gate) => { op := x9.op, inputs := List.map x1 x9.inputs : PEqualNP.CircuitLowerBounds.Gate }) x2.gates, output := x1 x2.output : PEqualNP.CircuitLowerBounds.Circuit }.eval x4 = x2.eval x3 := by
  intro rename C xs ys sameLen fixed inputs agrees
  let renamed (g : Gate) : Gate := ⟨g.op, g.inputs.map rename⟩
  let step (w : List Bool) (g : Gate) := w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]
  have snoc (w : List Bool) (b : Bool) (i : ℕ) :
      (w ++ [b]).getD i false = if i = w.length then b else w.getD i false := by
    rcases lt_trichotomy i w.length with h | h | h
    · rw [List.getD_append _ _ _ _ h, ite_eq_right (by omega)]
    · subst i
      simp
    · rw [ite_eq_right (by omega), List.getD_eq_default _ _ (by simp; omega),
        List.getD_eq_default _ _ (by omega)]
  have simulate (gs : List Gate) (u v : List Bool) (len : u.length = v.length)
      (keepsNew : ∀ j < gs.length, ∀ i, rename i = u.length + j ↔ i = u.length + j)
      (seen : ∀ i, v.getD (rename i) false = u.getD i false) :
      ∀ i, ((gs.map renamed).foldl step v).getD (rename i) false =
        (gs.foldl step u).getD i false := by
    induction gs generalizing u v with
    | nil => exact seen
    | cons g gs ih =>
      have value : (renamed g).op.eval ((renamed g).inputs.map fun i => v.getD i false) =
          g.op.eval (g.inputs.map fun i => u.getD i false) := by
        simp only [renamed, List.map_map]
        congr 1
        exact List.map_congr_left fun i _ => seen i
      simp only [List.map_cons, List.foldl_cons]
      apply ih
      · simp [step, len]
      · intro j hj i
        have h := keepsNew (j + 1) (by simp; omega) i
        simpa [step, Nat.add_assoc, Nat.add_comm 1 j] using h
      · intro i
        simp only [step, value, snoc, ← len]
        have index : rename i = u.length ↔ i = u.length := by
          simpa using keepsNew 0 (by simp) i
        by_cases hi : i = u.length
        · simp only [ite_eq_left (index.mpr hi), ite_eq_left hi]
        · simp only [ite_eq_right (fun h => hi (index.mp h)), ite_eq_right hi, seen]
  have stable : ∀ j < C.gates.length, ∀ i, rename i = xs.length + j ↔ i = xs.length + j := by
    intro j hj i
    by_cases h : xs.length ≤ i
    · rw [fixed i h]
    · have early : i < xs.length := by omega
      rcases inputs i early with lt | ge
      · exact ⟨fun eq => by omega, fun eq => by omega⟩
      · change xs.length + C.gates.length ≤ rename i at ge
        exact ⟨fun eq => by omega, fun eq => by omega⟩
  exact simulate C.gates xs ys sameLen stable agrees C.output
