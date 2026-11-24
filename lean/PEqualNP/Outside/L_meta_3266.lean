import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds

theorem PEqualNP.Outside.L_meta_3266 : ∀ (x1 : ℕ) (x2 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.FanInTwo x2 →
    ∃ (x4 : Finset ℕ), x4.card ≤ List.countP (fun (x5 : PEqualNP.CircuitLowerBounds.Gate) => !x5.op.eval [Bool.false]) x2.gates + (1 : ℕ) ∧
      ∀ (x5 x6 : List Bool), x5.length = x1 → x6.length = x1 → (∀ x9 ∈ x4, x5.getD x9 Bool.false = x6.getD x9 Bool.false) → x2.eval x5 = x2.eval x6 := by
  intro n C fan
  let charged (g : Gate) := !g.op.eval [false]
  let pins (g : Gate) := if charged g then g.inputs else g.inputs.take 1
  let step := fun (w : List Bool) (g : Gate) =>
    w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]
  have evalPins (g : Gate) (ok : g.op = GateOp.and ∨ g.op = GateOp.or ∨ g.op = GateOp.not)
      (values : ℕ → Bool) :
      g.op.eval ((pins g).map values) = g.op.eval (g.inputs.map values) := by
    rcases ok with h | h | h
    · simp [pins, charged, h, GateOp.eval]
    · simp [pins, charged, h, GateOp.eval]
    · cases hi : g.inputs <;> simp [pins, charged, h, hi, GateOp.eval]
  have lengthOf (gs : List Gate) (w : List Bool) :
      (gs.foldl step w).length = w.length + gs.length := by
    induction gs generalizing w with
    | nil => simp
    | cons g gs ih => rw [List.foldl_cons, ih]; simp [step]; omega
  have pick (gs : List Gate) (J : Finset ℕ) (inC : ∀ g ∈ gs, g ∈ C.gates) :
      ∃ I : Finset ℕ, I.card ≤ J.card + gs.countP charged ∧ ∀ x y : List Bool,
        x.length = n → y.length = n →
        (∀ i ∈ I, x.getD i false = y.getD i false) →
        ∀ j ∈ J, (gs.foldl step x).getD j false = (gs.foldl step y).getD j false := by
    induction gs using List.reverseRecOn generalizing J with
    | nil => exact ⟨J, by simp, fun _ _ _ _ same => same⟩
    | append_singleton gs g ih =>
      let k := n + gs.length
      let T := if k ∈ J then J.erase k ∪ (pins g).toFinset else J
      let cost := if charged g then 1 else 0
      have hg := fan g (inC g (by simp))
      have sizePins : (pins g).length ≤ cost + 1 := by
        cases h : charged g
        · simp [pins, cost, h]
        · simpa [pins, cost, h] using hg.2
      have bound : T.card ≤ J.card + cost := by
        by_cases hk : k ∈ J
        · dsimp [T]
          rw [ite_eq_left hk]
          have hc := Finset.card_union_le (J.erase k) (pins g).toFinset
          have hd := Finset.card_erase_add_one hk
          have hf := List.toFinset_card_le (pins g)
          omega
        · simp [T, hk]
      obtain ⟨I, hI, sound⟩ := ih T (fun a ha => inC a (by simp [ha]))
      refine ⟨I, ?_, ?_⟩
      · simp only [List.countP_append, List.countP_singleton]
        change I.card ≤ J.card + (gs.countP charged + cost)
        omega
      intro x y lenx leny agree j hj
      let wx := gs.foldl step x
      let wy := gs.foldl step y
      have lx : wx.length = k := by simp [wx, lengthOf, k, lenx]
      have ly : wy.length = k := by simp [wy, lengthOf, k, leny]
      rw [List.foldl_append, List.foldl_append]
      change (step wx g).getD j false = (step wy g).getD j false
      rcases Nat.lt_trichotomy j k with h | h | h
      · have hT : j ∈ T := by
          by_cases hk : k ∈ J
          · have ne : j ≠ k := by omega
            simp [T, hk, ne, hj]
          · simpa [T, hk] using hj
        exact (List.getD_append _ _ _ _ (lx ▸ h)).trans
          ((sound x y lenx leny agree j hT).trans (List.getD_append _ _ _ _ (ly ▸ h)).symm)
      · subst j
        have hT (i : ℕ) (hi : i ∈ pins g) : i ∈ T := by simp [T, hj, hi]
        have reads : ((pins g).map fun i => wx.getD i false) =
            ((pins g).map fun i => wy.getD i false) := by
          apply List.map_congr_left
          intro i hi
          exact sound x y lenx leny agree i (hT i hi)
        have same : g.op.eval (g.inputs.map fun i => wx.getD i false) =
            g.op.eval (g.inputs.map fun i => wy.getD i false) :=
          (evalPins g hg.1 _).symm.trans (reads ▸ evalPins g hg.1 _)
        have atEnd (w : List Bool) (b : Bool) : (w ++ [b]).getD w.length false = b := by simp
        have onX (b : Bool) : (wx ++ [b]).getD k false = b := lx ▸ atEnd wx b
        have onY (b : Bool) : (wy ++ [b]).getD k false = b := ly ▸ atEnd wy b
        simp only [step, onX, onY, same]
      · rw [List.getD_eq_default _ _ (by simp [step, lx]; omega),
            List.getD_eq_default _ _ (by simp [step, ly]; omega)]
  obtain ⟨I, bound, sound⟩ := pick C.gates {C.output} (fun _ h => h)
  refine ⟨I, ?_, ?_⟩
  · simpa only [Finset.card_singleton, Nat.add_comm] using bound
  · intro x y lenx leny agree
    exact sound x y lenx leny agree C.output (Finset.mem_singleton_self _)
