import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

theorem PEqualNP.Outside.R_meta_3300_471
    (oneReader : have x1 : (Fin (8 : ℕ) → Bool) → Bool := fun (x1 : Fin (8 : ℕ) → Bool) => x1 (0 : Fin (8 : ℕ)) && x1 (1 : Fin (8 : ℕ)) || x1 (1 : Fin (8 : ℕ)) && x1 (2 : Fin (8 : ℕ)) || x1 (2 : Fin (8 : ℕ)) && x1 (3 : Fin (8 : ℕ)) || x1 (0 : Fin (8 : ℕ)) && x1 (4 : Fin (8 : ℕ)) || x1 (1 : Fin (8 : ℕ)) && x1 (5 : Fin (8 : ℕ)) || x1 (2 : Fin (8 : ℕ)) && x1 (6 : Fin (8 : ℕ)) || x1 (3 : Fin (8 : ℕ)) && x1 (7 : Fin (8 : ℕ)) || x1 (4 : Fin (8 : ℕ)) && x1 (6 : Fin (8 : ℕ)) || x1 (5 : Fin (8 : ℕ)) && x1 (7 : Fin (8 : ℕ)) || x1 (7 : Fin (8 : ℕ)) && x1 (4 : Fin (8 : ℕ));
      ∀ (x2 x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 : ℕ), PEqualNP.MetaComplexity.FanInTwo x2 → PEqualNP.MetaComplexity.FanInTwo x3 → (5 : ℕ) ≤ x2.size → x2.size + x3.size ≤ (13 : ℕ) → (8 : ℕ) ≤ x4 → x4 < (8 : ℕ) + x2.size → 8 + x2.size < x3.output → x3.output + 1 = 9 + x2.size + x3.size → x3.gates.countP (fun g => g.inputs.contains (8 + x2.size)) = 1 → have x11 : (Fin (8 : ℕ) → Bool) → List Bool := fun (x11 : Fin (8 : ℕ) → Bool) => x2.wires (List.ofFn x11); have x12 : (Fin (8 : ℕ) → Bool) → Bool := fun (x12 : Fin (8 : ℕ) → Bool) => (x11 x12).getD x4 Bool.false; (∀ (x13 : Fin (8 : ℕ) → Bool), x1 x13 = Bool.false → (x13 (0 : Fin (8 : ℕ)) || x13 (3 : Fin (8 : ℕ))) = Bool.true → x12 x13 = Bool.false) →
      (∀ (x14 : Fin (8 : ℕ) → Bool), x3.eval (x11 x14 ++ [x12 x14]) = x1 x14) →
      ∃ (x15 : Fin (8 : ℕ) → Bool), x3.eval (x11 x15 ++ [Bool.true]) ≠ (x1 x15 || x15 (0 : Fin (8 : ℕ)) || x15 (3 : Fin (8 : ℕ))))
    (multipleReaders : have x1 : (Fin (8 : ℕ) → Bool) → Bool := fun (x1 : Fin (8 : ℕ) → Bool) => x1 (0 : Fin (8 : ℕ)) && x1 (1 : Fin (8 : ℕ)) || x1 (1 : Fin (8 : ℕ)) && x1 (2 : Fin (8 : ℕ)) || x1 (2 : Fin (8 : ℕ)) && x1 (3 : Fin (8 : ℕ)) || x1 (0 : Fin (8 : ℕ)) && x1 (4 : Fin (8 : ℕ)) || x1 (1 : Fin (8 : ℕ)) && x1 (5 : Fin (8 : ℕ)) || x1 (2 : Fin (8 : ℕ)) && x1 (6 : Fin (8 : ℕ)) || x1 (3 : Fin (8 : ℕ)) && x1 (7 : Fin (8 : ℕ)) || x1 (4 : Fin (8 : ℕ)) && x1 (6 : Fin (8 : ℕ)) || x1 (5 : Fin (8 : ℕ)) && x1 (7 : Fin (8 : ℕ)) || x1 (7 : Fin (8 : ℕ)) && x1 (4 : Fin (8 : ℕ));
      ∀ (x2 x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 : ℕ), PEqualNP.MetaComplexity.FanInTwo x2 → PEqualNP.MetaComplexity.FanInTwo x3 → (5 : ℕ) ≤ x2.size → x2.size + x3.size ≤ (13 : ℕ) → (8 : ℕ) ≤ x4 → x4 < (8 : ℕ) + x2.size → 8 + x2.size < x3.output → x3.output + 1 = 9 + x2.size + x3.size → 2 ≤ x3.gates.countP (fun g => g.inputs.contains (8 + x2.size)) → have x11 : (Fin (8 : ℕ) → Bool) → List Bool := fun (x11 : Fin (8 : ℕ) → Bool) => x2.wires (List.ofFn x11); have x12 : (Fin (8 : ℕ) → Bool) → Bool := fun (x12 : Fin (8 : ℕ) → Bool) => (x11 x12).getD x4 Bool.false; (∀ (x13 : Fin (8 : ℕ) → Bool), x1 x13 = Bool.false → (x13 (0 : Fin (8 : ℕ)) || x13 (3 : Fin (8 : ℕ))) = Bool.true → x12 x13 = Bool.false) →
      (∀ (x14 : Fin (8 : ℕ) → Bool), x3.eval (x11 x14 ++ [x12 x14]) = x1 x14) →
      ∃ (x15 : Fin (8 : ℕ) → Bool), x3.eval (x11 x15 ++ [Bool.true]) ≠ (x1 x15 || x15 (0 : Fin (8 : ℕ)) || x15 (3 : Fin (8 : ℕ))))
    : have x1 : (Fin (8 : ℕ) → Bool) → Bool := fun (x1 : Fin (8 : ℕ) → Bool) => x1 (0 : Fin (8 : ℕ)) && x1 (1 : Fin (8 : ℕ)) || x1 (1 : Fin (8 : ℕ)) && x1 (2 : Fin (8 : ℕ)) || x1 (2 : Fin (8 : ℕ)) && x1 (3 : Fin (8 : ℕ)) || x1 (0 : Fin (8 : ℕ)) && x1 (4 : Fin (8 : ℕ)) || x1 (1 : Fin (8 : ℕ)) && x1 (5 : Fin (8 : ℕ)) || x1 (2 : Fin (8 : ℕ)) && x1 (6 : Fin (8 : ℕ)) || x1 (3 : Fin (8 : ℕ)) && x1 (7 : Fin (8 : ℕ)) || x1 (4 : Fin (8 : ℕ)) && x1 (6 : Fin (8 : ℕ)) || x1 (5 : Fin (8 : ℕ)) && x1 (7 : Fin (8 : ℕ)) || x1 (7 : Fin (8 : ℕ)) && x1 (4 : Fin (8 : ℕ));
      ∀ (x2 x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 : ℕ), PEqualNP.MetaComplexity.FanInTwo x2 → PEqualNP.MetaComplexity.FanInTwo x3 → (5 : ℕ) ≤ x2.size → x2.size + x3.size ≤ (13 : ℕ) → (8 : ℕ) ≤ x4 → x4 < (8 : ℕ) + x2.size → have x11 : (Fin (8 : ℕ) → Bool) → List Bool := fun (x11 : Fin (8 : ℕ) → Bool) => x2.wires (List.ofFn x11); have x12 : (Fin (8 : ℕ) → Bool) → Bool := fun (x12 : Fin (8 : ℕ) → Bool) => (x11 x12).getD x4 Bool.false; (∀ (x13 : Fin (8 : ℕ) → Bool), x1 x13 = Bool.false → (x13 (0 : Fin (8 : ℕ)) || x13 (3 : Fin (8 : ℕ))) = Bool.true → x12 x13 = Bool.false) →
      (∀ (x14 : Fin (8 : ℕ) → Bool), x3.eval (x11 x14 ++ [x12 x14]) = x1 x14) →
      ∃ (x15 : Fin (8 : ℕ) → Bool), x3.eval (x11 x15 ++ [Bool.true]) ≠ (x1 x15 || x15 (0 : Fin (8 : ℕ)) || x15 (3 : Fin (8 : ℕ))) := by
  intro F P T tap fanP fanT prefixSize budget tapLow tapHigh wires linkedBit guard actual
  by_contra! forced
  let step (w : List Bool) (g : Gate) := w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]
  have len (gs : List Gate) (w : List Bool) :
      (gs.foldl step w).length = w.length + gs.length := by
    induction gs generalizing w with
    | nil => simp
    | cons g gs ih => rw [List.foldl_cons, ih]; simp [step]; omega
  have keep (gs : List Gate) (w : List Bool) (i : ℕ) (hi : i < w.length) :
      (gs.foldl step w).getD i false = w.getD i false := by
    induction gs generalizing w with
    | nil => rfl
    | cons g gs ih =>
      rw [List.foldl_cons, ih _ (by simp [step]; omega)]
      exact List.getD_append _ _ _ _ hi
  let slot := 8 + P.size
  have wireLen (x : Fin 8 → Bool) : (wires x).length = slot := by
    change (P.gates.foldl step (List.ofFn x)).length = _
    rw [len]
    simp [Circuit.size, slot]
  let z : Fin 8 → Bool := fun _ => false
  let e : Fin 8 → Bool := fun i => decide (i = 0)
  have Fe : F e = false := by decide
  have extraE : (F e || e 0 || e 3) = true := by decide
  have extraZ : (F z || z 0 || z 3) = false := by decide
  have afterSlot : slot < T.output := by
    by_contra! h
    rcases lt_or_eq_of_le h with low | eq
    · have read (b : Bool) : T.eval (wires e ++ [b]) = (wires e).getD T.output false := by
        change (T.gates.foldl step (wires e ++ [b])).getD T.output false = _
        rw [keep _ _ _ (by simp [wireLen]; omega)]
        exact List.getD_append _ _ _ _ (by simpa [wireLen] using low)
      have a := actual e
      have b := forced e
      rw [read, Fe] at a
      rw [read, extraE] at b
      exact Bool.false_ne_true (a.symm.trans b)
    · have h := forced z
      change (T.gates.foldl step (wires z ++ [true])).getD T.output false = _ at h
      rw [eq, keep _ _ _ (by simp [wireLen])] at h
      have bit : (wires z ++ [true]).getD slot false = true := by
        rw [← wireLen z]
        simp
      rw [bit, extraZ] at h
      contradiction
  have live : T.output < slot + 1 + T.size := by
    by_contra! h
    have b := forced e
    change (T.gates.foldl step (wires e ++ [true])).getD T.output false = _ at b
    rw [List.getD_eq_default _ _ (by simpa only [len, List.length_append, wireLen,
      List.length_singleton, Circuit.size] using h), extraE] at b
    contradiction
  let n := T.output - slot
  let U : Circuit := ⟨T.gates.take n, T.output⟩
  have nLe : n ≤ T.gates.length := by
    change n ≤ T.size
    dsimp [n]
    omega
  have sizeU : U.size = n := by simp [U, Circuit.size, Nat.min_eq_left nLe]
  have lastU : U.output + 1 = 9 + P.size + U.size := by
    change T.output + 1 = 9 + P.size + U.size
    rw [sizeU]
    dsimp [n, slot] at afterSlot ⊢
    omega
  have fanU : FanInTwo U := by
    intro g hg
    exact fanT g (List.mem_of_mem_take hg)
  have evalU (x : Fin 8 → Bool) (b : Bool) :
      U.eval (wires x ++ [b]) = T.eval (wires x ++ [b]) := by
    change ((T.gates.take n).foldl step (wires x ++ [b])).getD T.output false =
      (T.gates.foldl step (wires x ++ [b])).getD T.output false
    have valid : T.output < ((T.gates.take n).foldl step (wires x ++ [b])).length := by
      rw [len, List.length_append, List.length_singleton, wireLen, List.length_take,
        Nat.min_eq_left nLe]
      dsimp [n]
      omega
    conv_rhs =>
      rw [← List.take_append_drop n T.gates, List.foldl_append, keep _ _ _ valid]
  have act (x : Fin 8 → Bool) : U.eval (wires x ++ [linkedBit x]) = F x :=
    (evalU x _).trans (actual x)
  have forcedU (x : Fin 8 → Bool) : U.eval (wires x ++ [true]) = (F x || x 0 || x 3) :=
    (evalU x true).trans (forced x)
  have sameOutside (gs : List Gate) (w v : List Bool) (sameLen : w.length = v.length)
      (same : ∀ i, i ≠ slot → w.getD i false = v.getD i false)
      (miss : ∀ g ∈ gs, slot ∉ g.inputs) :
      ∀ i, i ≠ slot → (gs.foldl step w).getD i false = (gs.foldl step v).getD i false := by
    induction gs generalizing w v with
    | nil => exact same
    | cons g gs ih =>
      have value : g.op.eval (g.inputs.map fun i => w.getD i false) =
          g.op.eval (g.inputs.map fun i => v.getD i false) := by
        congr 1
        apply List.map_congr_left
        intro i hi
        exact same i (fun eq => miss g (by simp) (eq ▸ hi))
      simp only [List.foldl_cons]
      apply ih
      · simp [step, sameLen]
      · intro i hi
        simp only [step, value]
        rcases Nat.lt_trichotomy i w.length with h | h | h
        · rw [List.getD_append _ _ _ _ h, List.getD_append _ _ _ _ (sameLen ▸ h)]
          exact same i hi
        · have endAt (a : List Bool) (b : Bool) : (a ++ [b]).getD a.length false = b := by simp
          rw [h, endAt, sameLen, endAt]
        · rw [List.getD_eq_default _ _ (by simp; omega), List.getD_eq_default _ _ (by simp; omega)]
      · intro a ha
        exact miss a (by simp [ha])
  have relevant : 0 < U.gates.countP (fun g => g.inputs.contains slot) := by
    by_contra! h
    have noRead (g : Gate) (hg : g ∈ U.gates) : slot ∉ g.inputs := by
      intro hit
      have count : 0 < U.gates.countP (fun g => g.inputs.contains slot) :=
        List.countP_pos_iff.mpr ⟨g, hg, List.contains_iff_mem.mpr hit⟩
      omega
    have initial (i : ℕ) (hi : i ≠ slot) :
        (wires e ++ [linkedBit e]).getD i false = (wires e ++ [true]).getD i false := by
      rcases Nat.lt_or_ge i slot with low | high
      · have low' : i < (wires e).length := by simpa [wireLen] using low
        rw [List.getD_append _ _ _ _ low', List.getD_append _ _ _ _ low']
      · rw [List.getD_eq_default _ _ (by simp [wireLen]; omega),
          List.getD_eq_default _ _ (by simp [wireLen]; omega)]
    have equiv : U.eval (wires e ++ [linkedBit e]) = U.eval (wires e ++ [true]) :=
      sameOutside U.gates _ _ (by simp) initial noRead T.output (by omega)
    rw [act, forcedU, extraE, Fe] at equiv
    contradiction
  have costU : P.size + U.size ≤ 13 := by
    rw [sizeU]
    change n ≤ T.size at nLe
    omega
  have rejection : ∃ x : Fin 8 → Bool, U.eval (wires x ++ [true]) ≠ (F x || x 0 || x 3) := by
    by_cases single : U.gates.countP (fun g => g.inputs.contains slot) = 1
    · exact oneReader P U tap fanP fanU prefixSize costU tapLow tapHigh afterSlot lastU single guard act
    · have two : 2 ≤ U.gates.countP (fun g => g.inputs.contains slot) := by omega
      exact multipleReaders P U tap fanP fanU prefixSize costU tapLow tapHigh afterSlot lastU two guard act
  obtain ⟨x, hx⟩ := rejection
  exact hx (forcedU x)
