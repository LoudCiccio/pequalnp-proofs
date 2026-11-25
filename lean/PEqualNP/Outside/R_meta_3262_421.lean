import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity PEqualNP.MetaComplexity.NestedCover

theorem PEqualNP.Outside.R_meta_3262_421
    (oneExtra : ∀ (x1 : ℕ) (x2 : Finset (Fin x1 × Fin x1))
        (x3 : Equiv.Perm (Fin x1)) (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      (∀ (x5 x6 x7 x8 : Fin x1), x5 ≠ x6 → x7 ≠ x8 →
        ¬((x5, x7) ∈ x2 ∧ (x5, x8) ∈ x2 ∧ (x6, x7) ∈ x2 ∧ (x6, x8) ∈ x2)) →
      (∀ (x6 : Fin x1), (x6, x3 x6) ∈ x2) →
      PEqualNP.TopForm.IsAO2 (x1 + x1) x4 →
      (∀ (x8 : Fin (x1 + x1) → Bool), PEqualNP.MetaComplexity.circuitFun (x1 + x1) x4 x8 =
        Decidable.decide (∃ (x9 : Fin x1) (x10 : Fin x1), (x9, x10) ∈ x2 ∧
          x8 (Fin.castAdd x1 x9) = Bool.true ∧ x8 (Fin.natAdd x1 x10) = Bool.true)) →
      x2.card = x1 + 1 → x4.size + 1 = x1 + x1 →
      False)
    (moreEdges : ∀ (x1 : ℕ) (x2 : Finset (Fin x1 × Fin x1))
        (x3 : Equiv.Perm (Fin x1)) (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      (∀ (x5 x6 x7 x8 : Fin x1), x5 ≠ x6 → x7 ≠ x8 →
        ¬((x5, x7) ∈ x2 ∧ (x5, x8) ∈ x2 ∧ (x6, x7) ∈ x2 ∧ (x6, x8) ∈ x2)) →
      (∀ (x6 : Fin x1), (x6, x3 x6) ∈ x2) →
      PEqualNP.TopForm.IsAO2 (x1 + x1) x4 →
      (∀ (x8 : Fin (x1 + x1) → Bool), PEqualNP.MetaComplexity.circuitFun (x1 + x1) x4 x8 =
        Decidable.decide (∃ (x9 : Fin x1) (x10 : Fin x1), (x9, x10) ∈ x2 ∧
          x8 (Fin.castAdd x1 x9) = Bool.true ∧ x8 (Fin.natAdd x1 x10) = Bool.true)) → x1 + 2 ≤ x2.card → x4.size + 2 = x2.card + x1 →
      False)
    : ∀ (x1 : ℕ) (x2 : Finset (Fin x1 × Fin x1))
        (x3 : Equiv.Perm (Fin x1)) (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      (∀ (x5 x6 x7 x8 : Fin x1), x5 ≠ x6 → x7 ≠ x8 →
        ¬((x5, x7) ∈ x2 ∧ (x5, x8) ∈ x2 ∧ (x6, x7) ∈ x2 ∧ (x6, x8) ∈ x2)) →
      (∀ (x6 : Fin x1), (x6, x3 x6) ∈ x2) →
      PEqualNP.TopForm.IsAO2 (x1 + x1) x4 →
      (∀ (x8 : Fin (x1 + x1) → Bool), PEqualNP.MetaComplexity.circuitFun (x1 + x1) x4 x8 =
        Decidable.decide (∃ (x9 : Fin x1) (x10 : Fin x1), (x9, x10) ∈ x2 ∧
          x8 (Fin.castAdd x1 x9) = Bool.true ∧ x8 (Fin.natAdd x1 x10) = Bool.true)) →
      x2.card + x1 ≤ x4.size + (1 : ℕ) := by
  classical
  intro n E p C noFour matched model computes
  let step := fun (w : List Bool) (g : Gate) =>
    w ++ [g.op.eval (g.inputs.map fun i => w.getD i false)]
  have lengthOf (gs : List Gate) (w : List Bool) :
      (gs.foldl step w).length = w.length + gs.length := by
    induction gs generalizing w with
    | nil => simp
    | cons g gs ih => rw [List.foldl_cons, ih]; simp [step]; omega
  have baseline : n + n ≤ C.size + 1 := by
    have pick (gs : List Gate) (J : Finset ℕ) (arity : ∀ g ∈ gs, g.inputs.length = 2) :
        ∃ I : Finset ℕ, I.card ≤ J.card + gs.length ∧ ∀ x y : Fin (n+n) → Bool,
          (∀ i ∈ I, (List.ofFn x).getD i false = (List.ofFn y).getD i false) →
          ∀ j ∈ J, (gs.foldl step (List.ofFn x)).getD j false =
            (gs.foldl step (List.ofFn y)).getD j false := by
      induction gs using List.reverseRecOn generalizing J with
      | nil => exact ⟨J, by simp, fun _ _ h => h⟩
      | append_singleton gs g ih =>
        let k := n + n + gs.length
        let T := if k ∈ J then J.erase k ∪ g.inputs.toFinset else J
        have bound : T.card ≤ J.card + 1 := by
          by_cases hk : k ∈ J
          · dsimp [T]
            rw [ite_eq_left hk]
            have hc := Finset.card_union_le (J.erase k) g.inputs.toFinset
            have hd := Finset.card_erase_add_one hk
            have hf := List.toFinset_card_le g.inputs
            have hg := arity g (by simp)
            omega
          · simp [T,hk]
        obtain ⟨I, hI, sound⟩ := ih T (fun a ha => arity a (by simp [ha]))
        refine ⟨I, by simp; omega, ?_⟩
        intro x y agree j hj
        let wx := gs.foldl step (List.ofFn x)
        let wy := gs.foldl step (List.ofFn y)
        have lx : wx.length = k := by simp [wx, lengthOf, k]
        have ly : wy.length = k := by simp [wy, lengthOf, k]
        rw [List.foldl_append, List.foldl_append]
        change (step wx g).getD j false = (step wy g).getD j false
        rcases Nat.lt_trichotomy j k with h | h | h
        · have hT : j ∈ T := by
            by_cases hk : k ∈ J
            · have ne : j ≠ k := by omega
              simp [T, hk, ne, hj]
            · simpa [T, hk] using hj
          exact (List.getD_append _ _ _ _ (lx ▸ h)).trans
            ((sound x y agree j hT).trans (List.getD_append _ _ _ _ (ly ▸ h)).symm)
        · subst j
          have hT (i : ℕ) (hi : i ∈ g.inputs) : i ∈ T := by
            simp [T, hj, hi]
          have reads : (g.inputs.map fun i => wx.getD i false) =
              (g.inputs.map fun i => wy.getD i false) := by
            apply List.map_congr_left
            intro i hi
            exact sound x y agree i (hT i hi)
          have atEnd (w : List Bool) (b : Bool) : (w ++ [b]).getD w.length false = b := by simp
          have onX (b : Bool) : (wx ++ [b]).getD k false = b := lx ▸ atEnd wx b
          have onY (b : Bool) : (wy ++ [b]).getD k false = b := ly ▸ atEnd wy b
          simp only [step, onX, onY, reads]
        · rw [List.getD_eq_default _ _ (by simp [step, lx]; omega),
              List.getD_eq_default _ _ (by simp [step, ly]; omega)]
    obtain ⟨I, count, sound⟩ := pick C.gates {C.output} model.2.2
    have both (a b : Fin n) (edge : (a,b) ∈ E) :
        (Fin.castAdd n a).val ∈ I ∧ (Fin.natAdd n b).val ∈ I := by
      let l := Fin.castAdd n a
      let r := Fin.natAdd n b
      have distinct (i j : Fin n) : Fin.castAdd n i ≠ Fin.natAdd n j := by
        intro h
        have hv := congrArg Fin.val h
        simp at hv
        omega
      let hi : Fin (n+n) → Bool := fun i => decide (i = l ∨ i = r)
      have yes : circuitFun (n+n) C hi = true := by
        rw [computes]
        exact decide_eq_true ⟨a,b,edge,by simp [hi,l],by simp [hi,r]⟩
      have fromMissing (k other : Fin (n+n)) (hk : k.val ∉ I)
          (diff : hi = fun i => decide (i = k ∨ i = other))
          (none : ¬ ∃ a b, (a,b) ∈ E ∧ Fin.castAdd n a = other ∧ Fin.natAdd n b = other) : False := by
        let lo : Fin (n+n) → Bool := fun i => decide (i = other)
        have no : circuitFun (n+n) C lo = false := by
          rw [computes]
          apply decide_eq_false
          simpa [lo] using none
        have eqOn (i : ℕ) (iI : i ∈ I) :
            (List.ofFn hi).getD i false = (List.ofFn lo).getD i false := by
          have notK : i ≠ k.val := fun h => hk (h ▸ iI)
          by_cases h : i < n+n
          · rw [List.getD_eq_getElem _ _ (by simpa), List.getD_eq_getElem _ _ (by simpa),
              List.getElem_ofFn, List.getElem_ofFn, diff]
            have nne : (⟨i,h⟩ : Fin (n+n)) ≠ k := fun h' => notK (congrArg Fin.val h')
            simp [lo, nne]
          · rw [List.getD_eq_default _ _ (by simpa using Nat.le_of_not_gt h),
                List.getD_eq_default _ _ (by simpa using Nat.le_of_not_gt h)]
        have equal := sound hi lo eqOn C.output (Finset.mem_singleton_self _)
        change circuitFun (n+n) C hi = circuitFun (n+n) C lo at equal
        exact Bool.false_ne_true (no.symm.trans (equal.symm.trans yes))
      constructor
      · by_contra hm
        apply fromMissing l r hm rfl
        rintro ⟨a',b',_,h,_⟩
        exact distinct a' b h
      · by_contra hm
        apply fromMissing r l hm
        · funext i
          change decide (i = l ∨ i = r) = decide (i = r ∨ i = l)
          exact decide_eq_decide.mpr or_comm
        · rintro ⟨a',b',_,_,h⟩
          exact distinct a b' h.symm
    have contains : ∀ (i : Fin (n+n)), i.val ∈ I := by
      intro i
      refine Fin.addCases ?_ ?_ i
      · intro a
        exact (both a (p a) (matched a)).1
      · intro b
        have h := both (p.symm b) (p (p.symm b)) (matched (p.symm b))
        simpa using h.2
    have allInputs : Finset.univ.image (Fin.val : Fin (n+n) → ℕ) ⊆ I := by
      intro i hi
      obtain ⟨j,_,rfl⟩ := Finset.mem_image.mp hi
      exact contains j
    have needed := Finset.card_le_card allInputs
    rw [Finset.card_image_of_injective _ Fin.val_injective, Finset.card_univ, Fintype.card_fin] at needed
    have sz : C.size = C.gates.length := rfl
    simp only [Finset.card_singleton] at count
    omega
  by_contra! small
  have excess : n < E.card := by omega
  by_cases one : E.card = n + 1
  · exact oneExtra n E p C noFour matched model computes one (by omega)
  have positive : 0 < n := by
    have nonempty : E.Nonempty := Finset.card_pos.mp (by omega)
    obtain ⟨⟨a, b⟩, _⟩ := nonempty
    exact Nat.zero_lt_of_lt a.isLt
  have live : C.output < n + n + C.size := by
    let all := fun _ : Fin (n+n) => true
    have ht : circuitFun (n+n) C all = true := by
      rw [computes]
      let a : Fin n := ⟨0, positive⟩
      exact decide_eq_true ⟨a,p a,matched a,rfl,rfl⟩
    change (C.gates.foldl step (List.ofFn all)).getD C.output false = true at ht
    by_contra! notLive
    change n + n + C.gates.length ≤ C.output at notLive
    rw [List.getD_eq_default _ _ (by simpa [lengthOf] using notLive)] at ht
    contradiction
  let k := E.card + n - 2 - C.size
  let dummy : Gate := ⟨GateOp.or, [0, 0]⟩
  let D : Circuit := ⟨C.gates ++ List.replicate k dummy, C.output⟩
  have membership (g : Gate) (hg : g ∈ D.gates) : g ∈ C.gates ∨ g = dummy := by
    change g ∈ C.gates ++ List.replicate k dummy at hg
    rcases List.mem_append.mp hg with h | h
    · exact Or.inl h
    · exact Or.inr (List.eq_of_mem_replicate h)
  have modelD : PEqualNP.TopForm.IsAO2 (n+n) D := by
    refine ⟨?_, ?_, ?_⟩
    · intro g hg
      rcases membership g hg with h | rfl
      · exact model.1 g h
      · exact Or.inr rfl
    · intro j hj i hi
      by_cases old : j < C.gates.length
      · have eq : gateAt D j = gateAt C j := List.getD_append _ _ _ _ old
        rw [eq] at hi
        exact model.2.1 j old i hi
      · have ge : C.gates.length ≤ j := by omega
        have idx : j - C.gates.length < k := by
          change j < (C.gates ++ List.replicate k dummy).length at hj
          simp at hj
          omega
        have eq : gateAt D j = dummy := by
          change (C.gates ++ List.replicate k dummy).getD j ⟨GateOp.or, []⟩ = dummy
          simp only [List.getD_eq_getElem?_getD, List.getElem?_append_right ge]
          simp [idx]
        rw [eq] at hi
        have iz : i = 0 := by simpa [dummy] using hi
        omega
    · intro g hg
      rcases membership g hg with h | rfl
      · exact model.2.2 g h
      · rfl
  have keep (gs : List Gate) (w : List Bool) (i : ℕ) (hi : i < w.length) :
      (gs.foldl step w).getD i false = w.getD i false := by
    induction gs generalizing w with
    | nil => rfl
    | cons g gs ih =>
      rw [List.foldl_cons, ih _ (by simp [step]; omega)]
      exact List.getD_append _ _ _ _ hi
  have computesD (x : Fin (n+n) → Bool) :
      circuitFun (n+n) D x = decide (∃ a b, (a,b) ∈ E ∧
        x (Fin.castAdd n a) = true ∧ x (Fin.natAdd n b) = true) := by
    change ((C.gates ++ List.replicate k dummy).foldl step (List.ofFn x)).getD C.output false = _
    change C.output < n + n + C.gates.length at live
    rw [List.foldl_append, keep _ _ _ (by simpa [lengthOf] using live)]
    exact computes x
  have exactSize : D.size + 2 = E.card + n := by
    change (C.gates ++ List.replicate k dummy).length + 2 = E.card + n
    simp only [List.length_append, List.length_replicate]
    change C.gates.length + (E.card + n - 2 - C.gates.length) + 2 = E.card + n
    change C.gates.length + 1 < E.card + n at small
    omega
  exact moreEdges n E p D noFour matched modelD computesD (by omega) exactSize
