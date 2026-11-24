import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

theorem PEqualNP.Outside.R_meta_3095_421
    (monotone : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.FanInTwo x1 → x1.gates[0]? = some (⟨PEqualNP.CircuitLowerBounds.GateOp.or, [0, 1]⟩ : PEqualNP.CircuitLowerBounds.Gate) →
      (PEqualNP.MetaComplexity.circuitFun (9 : ℕ) x1 = fun (x4 : Fin (9 : ℕ) → Bool) => [((0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ))),
          ((1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ))),
          ((2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))),
          ((3 : Fin (9 : ℕ)), (4 : Fin (9 : ℕ))),
          ((4 : Fin (9 : ℕ)), (0 : Fin (9 : ℕ))),
          ((0 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ))),
          ((1 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))),
          ((2 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))),
          ((3 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))),
          ((5 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))),
          ((6 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))),
          ((8 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)))].any
          fun (x5 : Fin (9 : ℕ) × Fin (9 : ℕ)) => x4 x5.1 && x4 x5.2) →
      (∀ (x5 : Fin (9 : ℕ)) (x6 : Finset ℕ), (∀ x7 ∈ x6, x7 < x1.size ∧ ((∃ (x9 : Bool), ∀ (x10 : Fin (9 : ℕ) → Bool), x10 x5 = Bool.false → (x1.wires (List.ofFn x10)).getD ((9 : ℕ) + x7) Bool.false = x9) ∨
        ∃ x9 < (9 : ℕ) + x7, ∀ (x10 : Fin (9 : ℕ) → Bool), x10 x5 = Bool.false → (x1.wires (List.ofFn x10)).getD ((9 : ℕ) + x7) Bool.false = (x1.wires (List.ofFn x10)).getD x9 Bool.false)) →
        (x5 ∈ [(0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))] → x6.card ≤ (3 : ℕ)) ∧ (x5 ∈ [(4 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))] → x6.card ≤ (2 : ℕ))) →
      (∀ g ∈ x1.gates, g.op ≠ GateOp.not) → (16 : ℕ) ≤ x1.size)
    (withNegation : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.FanInTwo x1 → x1.gates[0]? = some (⟨PEqualNP.CircuitLowerBounds.GateOp.or, [0, 1]⟩ : PEqualNP.CircuitLowerBounds.Gate) →
      (PEqualNP.MetaComplexity.circuitFun (9 : ℕ) x1 = fun (x4 : Fin (9 : ℕ) → Bool) => [((0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ))),
          ((1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ))),
          ((2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))),
          ((3 : Fin (9 : ℕ)), (4 : Fin (9 : ℕ))),
          ((4 : Fin (9 : ℕ)), (0 : Fin (9 : ℕ))),
          ((0 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ))),
          ((1 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))),
          ((2 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))),
          ((3 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))),
          ((5 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))),
          ((6 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))),
          ((8 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)))].any
          fun (x5 : Fin (9 : ℕ) × Fin (9 : ℕ)) => x4 x5.1 && x4 x5.2) →
      (∀ (x5 : Fin (9 : ℕ)) (x6 : Finset ℕ), (∀ x7 ∈ x6, x7 < x1.size ∧ ((∃ (x9 : Bool), ∀ (x10 : Fin (9 : ℕ) → Bool), x10 x5 = Bool.false → (x1.wires (List.ofFn x10)).getD ((9 : ℕ) + x7) Bool.false = x9) ∨
        ∃ x9 < (9 : ℕ) + x7, ∀ (x10 : Fin (9 : ℕ) → Bool), x10 x5 = Bool.false → (x1.wires (List.ofFn x10)).getD ((9 : ℕ) + x7) Bool.false = (x1.wires (List.ofFn x10)).getD x9 Bool.false)) →
        (x5 ∈ [(0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))] → x6.card ≤ (3 : ℕ)) ∧ (x5 ∈ [(4 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))] → x6.card ≤ (2 : ℕ))) → (∃ g ∈ x1.gates, g.op = GateOp.not) → (16 : ℕ) ≤ x1.size)
    : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.FanInTwo x1 →
      (∀ (x3 : Fin (9 : ℕ) → Bool), (x1.wires (List.ofFn x3)).getD (9 : ℕ) Bool.false = (x3 (0 : Fin (9 : ℕ)) || x3 (1 : Fin (9 : ℕ)))) →
      (PEqualNP.MetaComplexity.circuitFun (9 : ℕ) x1 = fun (x4 : Fin (9 : ℕ) → Bool) => [((0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ))),
          ((1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ))),
          ((2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))),
          ((3 : Fin (9 : ℕ)), (4 : Fin (9 : ℕ))),
          ((4 : Fin (9 : ℕ)), (0 : Fin (9 : ℕ))),
          ((0 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ))),
          ((1 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))),
          ((2 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))),
          ((3 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))),
          ((5 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))),
          ((6 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))),
          ((8 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)))].any
          fun (x5 : Fin (9 : ℕ) × Fin (9 : ℕ)) => x4 x5.1 && x4 x5.2) →
      (∀ (x5 : Fin (9 : ℕ)) (x6 : Finset ℕ), (∀ x7 ∈ x6, x7 < x1.size ∧ ((∃ (x9 : Bool), ∀ (x10 : Fin (9 : ℕ) → Bool), x10 x5 = Bool.false → (x1.wires (List.ofFn x10)).getD ((9 : ℕ) + x7) Bool.false = x9) ∨
        ∃ x9 < (9 : ℕ) + x7, ∀ (x10 : Fin (9 : ℕ) → Bool), x10 x5 = Bool.false → (x1.wires (List.ofFn x10)).getD ((9 : ℕ) + x7) Bool.false = (x1.wires (List.ofFn x10)).getD x9 Bool.false)) →
        (x5 ∈ [(0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))] → x6.card ≤ (3 : ℕ)) ∧ (x5 ∈ [(4 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))] → x6.card ≤ (2 : ℕ))) → (16 : ℕ) ≤ x1.size := by
  classical
  intro C fan first computes cap
  let step := fun (w : List Bool) (g : Gate) =>
    w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]
  have keep (gs : List Gate) (w : List Bool) (i : ℕ) (hi : i < w.length) :
      (gs.foldl step w).getD i false = w.getD i false := by
    induction gs generalizing w with
    | nil => rfl
    | cons g gs ih =>
      rw [List.foldl_cons, ih _ (by simp [step]; omega)]
      exact List.getD_append _ _ _ _ hi
  let one (k : Fin 9) := fun i : Fin 9 => decide (i = k)
  have read (k : Fin 9) (i : ℕ) :
      (List.ofFn (one k)).getD i false = decide (i = k.val) := by
    by_cases hi : i < 9
    · rw [List.getD_eq_getElem _ _ (by simpa), List.getElem_ofFn]
      simp only [one, Fin.ext_iff]
    · rw [List.getD_eq_default _ _ (by simpa using Nat.le_of_not_gt hi)]
      have ne : i ≠ k.val := by have := k.isLt; omega
      simp [ne]
  obtain ⟨g, gs, firstCons⟩ : ∃ g gs, C.gates = g :: gs := by
    cases hg : C.gates with
    | cons g gs => exact ⟨g, gs, rfl⟩
    | nil =>
      have bad := first (one 0)
      change (C.gates.foldl step (List.ofFn (one 0))).getD 9 false = _ at bad
      rw [hg, List.foldl_nil, read] at bad
      simp [one] at bad
  have firstVal (x : Fin 9 → Bool) :
      g.op.eval (g.inputs.map fun i => (List.ofFn x).getD i false) = (x 0 || x 1) := by
    have h := first x
    change (C.gates.foldl step (List.ofFn x)).getD 9 false = _ at h
    rw [firstCons, List.foldl_cons, keep gs _ _ (by simp [step])] at h
    simpa [step] using h
  have hg := fan g (by simp [firstCons])
  have ops : g.op = GateOp.and ∨ g.op = GateOp.or ∨ g.op = GateOp.not := hg.1
  have hop : g.op = GateOp.or := by
    rcases ops with hand | hor | hnot
    · exfalso
      have allOf (k : Fin 9) (h : k = 0 ∨ k = 1) : ∀ i ∈ g.inputs, i = k.val := by
        have hv := firstVal (one k)
        have on : ((one k) 0 || (one k) 1) = true := by
          rcases h with rfl | rfl <;> decide
        rw [hand, on] at hv
        intro i hi
        change ((g.inputs.map fun j => (List.ofFn (one k)).getD j false).all id) = true at hv
        have value := List.all_eq_true.mp hv _ (List.mem_map.mpr ⟨i, hi, rfl⟩)
        change (List.ofFn (one k)).getD i false = true at value
        simpa only [read, decide_eq_true_eq] using value
      cases hi : g.inputs with
      | nil =>
        have bad := firstVal (fun _ => false)
        simp [hi, hand, GateOp.eval] at bad
      | cons i rest =>
        have h0 := allOf 0 (Or.inl rfl) i (by simp [hi])
        have h1 := allOf 1 (Or.inr rfl) i (by simp [hi])
        change i = 0 at h0
        change i = 1 at h1
        omega
    · exact hor
    · exfalso
      have readZero : ∀ i, (List.ofFn (fun _ : Fin 9 => false)).getD i false = false := by
        intro i
        by_cases hi : i < 9
        · rw [List.getD_eq_getElem _ _ (by simpa), List.getElem_ofFn]
        · exact List.getD_eq_default _ _ (by simpa using Nat.le_of_not_gt hi)
      have bad := firstVal (fun _ => false)
      cases hi : g.inputs with
      | nil => simp [hi, hnot, GateOp.eval] at bad
      | cons i tail =>
        simp only [hi, hnot, GateOp.eval, List.map_cons, List.headD_cons, readZero,
          Bool.not_false, Bool.or_false] at bad
        contradiction
  have hasPin (k : Fin 9) (h : k = 0 ∨ k = 1) : k.val ∈ g.inputs := by
    have hv := firstVal (one k)
    have on : ((one k) 0 || (one k) 1) = true := by
      rcases h with rfl | rfl <;> decide
    rw [hop, on] at hv
    change ((g.inputs.map fun j => (List.ofFn (one k)).getD j false).any id) = true at hv
    obtain ⟨v, hv, hon⟩ := List.any_eq_true.mp hv
    obtain ⟨i, hi, rfl⟩ := List.mem_map.mp hv
    change (List.ofFn (one k)).getD i false = true at hon
    rw [read, decide_eq_true_eq] at hon
    simpa [← hon] using hi
  have pins : g.inputs = [0, 1] ∨ g.inputs = [1, 0] := by
    have p0 : 0 ∈ g.inputs := hasPin 0 (Or.inl rfl)
    have p1 : 1 ∈ g.inputs := hasPin 1 (Or.inr rfl)
    have arity := hg.2
    cases h : g.inputs with
    | nil => simp [h] at p0
    | cons a tail =>
      cases tail with
      | nil =>
        simp [h] at p0 p1
        omega
      | cons b rest =>
        have len : (a :: b :: rest).length ≤ 2 := h ▸ arity
        have empty : rest = [] := List.length_eq_zero_iff.mp (by
          simp only [List.length_cons] at len
          omega)
        have read0 : 0 = a ∨ 0 = b := by simpa [h, empty] using p0
        have read1 : 1 = a ∨ 1 = b := by simpa [h, empty] using p1
        rcases read0 with ha | hb
        · left
          have hb : b = 1 := by omega
          simp [empty, ← ha, hb]
        · right
          have ha : a = 1 := by omega
          simp [empty, ha, ← hb]
  let canonical : Gate := ⟨GateOp.or, [0, 1]⟩
  let D : Circuit := ⟨canonical :: gs, C.output⟩
  have wireEq (x : List Bool) : D.wires x = C.wires x := by
    change ((canonical :: gs).foldl step x) = _
    change _ = C.gates.foldl step x
    rw [firstCons, List.foldl_cons, List.foldl_cons]
    rcases pins with h | h <;>
      simp [step, canonical, hop, h, GateOp.eval, Bool.or_comm]
  have sizeEq : D.size = C.size := by simp [D, Circuit.size, firstCons]
  have fanD : FanInTwo D := by
    intro a ha
    change a ∈ canonical :: gs at ha
    rcases List.mem_cons.mp ha with h | h
    · subst a
      exact ⟨Or.inr (Or.inl rfl), Nat.le_refl 2⟩
    · exact fan a (by simp [firstCons, h])
  have procEq : circuitFun 9 D = circuitFun 9 C := by
    funext x
    change (D.wires (List.ofFn x)).getD C.output false =
      (C.wires (List.ofFn x)).getD C.output false
    rw [wireEq]
  have capD : (∀ (x5 : Fin (9 : ℕ)) (x6 : Finset ℕ), (∀ x7 ∈ x6, x7 < D.size ∧ ((∃ (x9 : Bool), ∀ (x10 : Fin (9 : ℕ) → Bool), x10 x5 = Bool.false → (D.wires (List.ofFn x10)).getD ((9 : ℕ) + x7) Bool.false = x9) ∨ ∃ x9 < (9 : ℕ) + x7, ∀ (x10 : Fin (9 : ℕ) → Bool), x10 x5 = Bool.false → (D.wires (List.ofFn x10)).getD ((9 : ℕ) + x7) Bool.false = (D.wires (List.ofFn x10)).getD x9 Bool.false)) → (x5 ∈ [(0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))] → x6.card ≤ (3 : ℕ)) ∧ (x5 ∈ [(4 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))] → x6.card ≤ (2 : ℕ))) := by
    intro v S hS
    apply cap v S
    intro j hj
    simpa only [wireEq, sizeEq] using hS j hj
  have result : 16 ≤ D.size := by
    by_cases neg : ∃ g ∈ D.gates, g.op = GateOp.not
    · exact withNegation D fanD rfl (procEq.trans computes) capD neg
    · exact monotone D fanD rfl (procEq.trans computes) capD
        (fun g hg' hn => neg ⟨g, hg', hn⟩)
  exact sizeEq ▸ result
