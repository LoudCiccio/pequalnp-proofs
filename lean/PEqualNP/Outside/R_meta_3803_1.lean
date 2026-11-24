import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

-- Apply the wire-column argument from R_meta_2341_214 to all flags and the free input.
set_option maxRecDepth 16384 in
set_option maxHeartbeats 8000000 in
theorem PEqualNP.Outside.R_meta_3803_1
    (positiveRows :
      let codes : List ℕ := [8193, 8194, 8200, 8704, 21233693, 3211303, 7340103, 23068749, 5275731, 22020181, 19923045, 18890857, 6357127, 6553741, 6324419, 6308041, 4751635, 21496089, 17318185, 20988233, 21004625, 17891877]
      let raw (r : Fin 286) (v : ℕ) :=
        (codes.getD (r.val / 13) 0).testBit (v / 13 * 13 + (v + 13 - r.val % 13) % 13)
      let D : Finset (Fin 13) := {0, 1, 3, 9}
      ∀ r : Fin 286, r.val < 52 →
        ∃ p l : Fin 13, p - l ∈ D ∧
          (∀ u : Fin 13, raw r u.val = decide (u = p)) ∧
          ∀ v : Fin 13, raw r (13 + v.val) = decide (v = l))
    (negativeRows :
      let codes : List ℕ := [8193, 8194, 8200, 8704, 21233693, 3211303, 7340103, 23068749, 5275731, 22020181, 19923045, 18890857, 6357127, 6553741, 6324419, 6308041, 4751635, 21496089, 17318185, 20988233, 21004625, 17891877]
      let raw (r : Fin 286) (v : ℕ) :=
        (codes.getD (r.val / 13) 0).testBit (v / 13 * 13 + (v + 13 - r.val % 13) % 13)
      let D : Finset (Fin 13) := {0, 1, 3, 9}
      ∀ r : Fin 286, 52 ≤ r.val →
        let Q := Finset.univ.filter (fun p : Fin 13 => raw r p.val)
        (Q.card = 4 ∧ ∀ l : Fin 13, (Q.filter (fun p => p - l ∈ D)).card ≤ 2) ∧
          ∀ l : Fin 13, raw r (13 + l.val) = decide (∀ p ∈ Q, p - l ∉ D))
    (unreachable :
      let codes : List ℕ := [8193, 8194, 8200, 8704, 21233693, 3211303, 7340103, 23068749, 5275731, 22020181, 19923045, 18890857, 6357127, 6553741, 6324419, 6308041, 4751635, 21496089, 17318185, 20988233, 21004625, 17891877]
      let raw (r : Fin 286) (v : ℕ) :=
        (codes.getD (r.val / 13) 0).testBit (v / 13 * 13 + (v + 13 - r.val % 13) % 13)
      let column (v : ℕ) := ((List.finRange 286).filter (fun r => raw r v)).toFinset
      ∀ ops ∈ ([[], [0], [13], [0,1], [13,14], [0,13], [0,14]] : List (List ℕ)),
        let src := (List.range 26).map column ++ [((List.finRange 286).filter
          (fun r => ops.any (raw r))).toFinset]
        ∀ t : List (Finset (Fin 286)), t.length ≤ 62 →
          (∀ i : Fin t.length, let pool := src ++ t.take i.val
            ∃ u ∈ pool, ∃ v ∈ pool, ¬ u ⊆ v ∧ ¬ v ⊆ u ∧ t.get i ∉ pool ∧
              (t.get i = u ∩ v ∨ t.get i = u ∪ v)) →
          ((List.finRange 286).filter (fun r => decide (r.val < 52))).toFinset ∉ src ++ t) :
    have x1 : Finset (Fin (13 : ℕ)) := {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))}; have x2 : Fin (13 : ℕ) → Fin (13 : ℕ) → List Bool := fun (x2 x3 : Fin (13 : ℕ)) => (List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 = x2)) ++ List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 = x3); have x3 : Finset (Fin (13 : ℕ)) → List Bool := fun (x3 : Finset (Fin (13 : ℕ))) => (List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 ∈ x3)) ++ List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (∀ x5 ∈ x3, x5 - x4 ∉ x1); have x4 : Finset (Fin (13 : ℕ)) → Prop := fun (x4 : Finset (Fin (13 : ℕ))) => x4.card = (4 : ℕ) ∧ ∀ (x5 : Fin (13 : ℕ)), {x6 ∈ x4 | x6 - x5 ∈ x1}.card ≤ (2 : ℕ); have x5 : PEqualNP.CircuitLowerBounds.Circuit → List ℕ → Prop := fun (x5 : PEqualNP.CircuitLowerBounds.Circuit) (x6 : List ℕ) =>   have x7 : List Bool → List Bool := fun (x7 : List Bool) => x7 ++ [x6.any fun (x8 : ℕ) => x7.getD x8 Bool.false];   (∀ (x8 x9 : Fin (13 : ℕ)), x8 - x9 ∈ x1 → x5.eval (x7 (x2 x8 x9)) = Bool.true) ∧ ∀ (x8 : Finset (Fin (13 : ℕ))), x4 x8 → x5.eval (x7 (x3 x8)) = Bool.false; ∀ (x6 : PEqualNP.CircuitLowerBounds.Circuit), ∀ x7 ∈ [[], [(0 : ℕ)], [(13 : ℕ)], [(0 : ℕ), (1 : ℕ)], [(13 : ℕ), (14 : ℕ)], [(0 : ℕ), (13 : ℕ)], [(0 : ℕ), (14 : ℕ)]], PEqualNP.MetaComplexity.Monotone2 x6 → (∀ (x10 : Fin x6.gates.length), ∀ x11 ∈ (x6.gates.get x10).inputs, x11 < (27 : ℕ) + ↑x10) → x5 x6 x7 → (63 : ℕ) ≤ x6.size := by
  dsimp only
  intro C ops rep hm _ hfit
  obtain ⟨hpos, hneg⟩ := hfit
  let codes : List ℕ := [8193, 8194, 8200, 8704, 21233693, 3211303, 7340103, 23068749, 5275731, 22020181, 19923045, 18890857, 6357127, 6553741, 6324419, 6308041, 4751635, 21496089, 17318185, 20988233, 21004625, 17891877]
  let raw (r : Fin 286) (v : ℕ) :=
    (codes.getD (r.val / 13) 0).testBit (v / 13 * 13 + (v + 13 - r.val % 13) % 13)
  let column (v : ℕ) := ((List.finRange 286).filter (fun r => raw r v)).toFinset
  let free := ((List.finRange 286).filter (fun r => ops.any (raw r))).toFinset
  let src := (List.range 26).map column ++ [free]
  let goal := ((List.finRange 286).filter (fun r => decide (r.val < 52))).toFinset
  have goalMem (r : Fin 286) : r ∈ goal ↔ r.val < 52 := by simp [goal]
  have colMem (r : Fin 286) (v : ℕ) : r ∈ column v ↔ raw r v = true := by simp [column]
  have freeMem (r : Fin 286) : r ∈ free ↔ ops.any (raw r) = true := by simp [free]
  let join (t : List (Finset (Fin 286))) (z : (Finset (Fin 286))) := ∃ u ∈ src++t, ∃ v ∈ src++t,
    ¬u⊆v ∧ ¬v⊆u ∧ z ∉ src++t ∧ (z = u∩v ∨ z = u∪v)
  let valid (t : List (Finset (Fin 286))) := ∀ i : Fin t.length, join (t.take i.val) t[i.val]
  let live (t : List (Finset (Fin 286))) (z : (Finset (Fin 286))) := z=∅ ∨ z=Finset.univ ∨ z ∈ src++t
  let project (r : Fin 286) (W : List (Finset (Fin 286))) := W.map fun z => decide (r∈z)
  let value (g : Gate) (W : List (Finset (Fin 286))) : (Finset (Fin 286)) :=
    Finset.univ.filter fun r => g.op.eval (g.inputs.map fun i => decide (r ∈ W.getD i ∅))
  let cs (W : List (Finset (Fin 286))) (g : Gate) := W ++ [value g W]
  let bs (v : List Bool) (g : Gate) := v ++ [g.op.eval (g.inputs.map fun i => v.getD i false)]
  have lookup (r : Fin 286) (W : List (Finset (Fin 286))) (i : ℕ) :
      (project r W).getD i false = decide (r ∈ W.getD i ∅) := by
    simp only [project,List.getD_eq_getElem?_getD,List.getElem?_map]
    cases W[i]? <;> simp
  have commute (r : Fin 286) (gs : List Gate) (W : List (Finset (Fin 286))) :
      project r (gs.foldl cs W) = gs.foldl bs (project r W) := by
    induction gs generalizing W with
    | nil => rfl
    | cons g gs ih =>
      rw [List.foldl_cons,List.foldl_cons,ih]
      apply congrArg (gs.foldl bs)
      have eq : decide (r ∈ value g W) = g.op.eval (g.inputs.map fun i => (project r W).getD i false) := by
        simp only [value,Finset.mem_filter,Finset.mem_univ,true_and,Bool.decide_coe,lookup]
      exact List.map_append.trans (congrArg (fun b => project r W ++ [b]) eq)
  have appendOK (t : List (Finset (Fin 286))) (ok : valid t) (z : (Finset (Fin 286))) (h : join t z) : valid (t++[z]) := by
    intro i
    by_cases lt : i.val<t.length
    · simpa only [List.take_append_of_le_length lt.le,List.getElem_append_left lt] using ok ⟨i.val,lt⟩
    · have eq : i.val=t.length := by have := i.isLt; simp at this; omega
      have atEnd : (t++[z])[i.val] = z := by
        rw [List.getElem_append_right (by omega)]
        simp [eq]
      rw [atEnd,List.take_left' eq.symm]
      exact h
  have readLive (t W : List (Finset (Fin 286))) (old : ∀ z∈W, live t z) (i : ℕ) : live t (W.getD i ∅) := by
    by_cases hi : i<W.length
    · rw [List.getD_eq_getElem _ _ hi]
      exact old _ (List.getElem_mem hi)
    · rw [List.getD_eq_default _ _ (Nat.le_of_not_lt hi)]
      exact Or.inl rfl
  have combine (t : List (Finset (Fin 286))) (ok : valid t) (u v z : (Finset (Fin 286)))
      (lu : live t u) (lv : live t v) (eq : z=u∩v ∨ z=u∪v) :
      ∃ t' : List (Finset (Fin 286)), valid t' ∧ t'.length ≤ t.length+1 ∧
        (∀ w, live t w → live t' w) ∧ live t' z := by
    by_cases done : live t z
    · exact ⟨t,ok,by omega,fun _ h => h,done⟩
    · have incomp : ¬u⊆v ∧ ¬v⊆u := by
        constructor
        · intro le; apply done
          rcases eq with rfl | rfl
          · simpa only [Finset.inter_eq_left.mpr le] using lu
          · simpa only [Finset.union_eq_right.mpr le] using lv
        · intro le; apply done
          rcases eq with rfl | rfl
          · simpa only [Finset.inter_eq_right.mpr le] using lv
          · simpa only [Finset.union_eq_left.mpr le] using lu
      have um : u ∈ src++t := by
        rcases lu with rfl | rfl | h
        · exact False.elim (incomp.1 (Finset.empty_subset _))
        · exact False.elim (incomp.2 (Finset.subset_univ _))
        · exact h
      have vm : v ∈ src++t := by
        rcases lv with rfl | rfl | h
        · exact False.elim (incomp.2 (Finset.empty_subset _))
        · exact False.elim (incomp.1 (Finset.subset_univ _))
        · exact h
      refine ⟨t++[z],appendOK t ok z ⟨u,um,v,vm,incomp.1,incomp.2,fun h => done (Or.inr (Or.inr h)),eq⟩,by simp,?_,?_⟩
      · intro w hw
        rcases hw with h | h | h
        · exact Or.inl h
        · exact Or.inr (Or.inl h)
        · exact Or.inr (Or.inr (by rw [←List.append_assoc]; exact List.mem_append_left _ h))
      · exact Or.inr (Or.inr (by simp))
  have gateStep (g : Gate) (allowed : g.op ∈ ({GateOp.and,GateOp.or} : Set GateOp) ∧ g.inputs.length ≤ 2)
      (t W : List (Finset (Fin 286))) (ok : valid t) (old : ∀ z ∈ W, live t z) :
      ∃ t' : List (Finset (Fin 286)), valid t' ∧ t'.length ≤ t.length+1 ∧ ∀ z ∈ cs W g, live t' z := by
    have stay (h : live t (value g W)) : ∃ t' : List (Finset (Fin 286)), valid t' ∧ t'.length ≤ t.length+1 ∧
        ∀ z ∈ cs W g, live t' z := by
      refine ⟨t,ok,by omega,?_⟩
      intro z hz
      rcases List.mem_append.mp hz with a | a
      · exact old _ a
      · simpa only [List.mem_singleton.mp a] using h
    have ae (l : List Bool) : GateOp.and.eval l = l.all id := rfl
    have oe (l : List Bool) : GateOp.or.eval l = l.any id := rfl
    have op : g.op=.and ∨ g.op=.or := allowed.1
    cases h : g.inputs with
    | nil =>
      apply stay
      rcases op with e | e
      · exact Or.inr (Or.inl (by ext r; simp [value,h,e,ae]))
      · exact Or.inl (by ext r; simp [value,h,e,oe])
    | cons i ks =>
      cases hk : ks with
      | nil =>
        apply stay
        have eq : value g W = W.getD i ∅ := by
          rcases op with e | e <;> ext r <;> simp [value,h,hk,e,ae,oe]
        exact eq ▸ readLive t W old i
      | cons j rest =>
        have tail : rest=[] := by
          have m := allowed.2
          rw [h,hk] at m
          simpa using m
        have eq : value g W = W.getD i ∅ ∩ W.getD j ∅ ∨ value g W = W.getD i ∅ ∪ W.getD j ∅ := by
          rcases op with e|e
          · left; ext r; simp [value,h,hk,tail,e,ae]
          · right; ext r; simp [value,h,hk,tail,e,oe]
        obtain ⟨t',good,sz,inc,present⟩ := combine t ok _ _ _ (readLive t W old i) (readLive t W old j) eq
        refine ⟨t',good,sz,?_⟩
        intro z hz
        rcases List.mem_append.mp hz with a | a
        · exact inc _ (old _ a)
        · simpa only [List.mem_singleton.mp a] using present
  have extract (gs : List Gate)
      (hm : ∀ g∈gs, g.op ∈ ({GateOp.and,GateOp.or} : Set GateOp) ∧ g.inputs.length ≤ 2)
      (t W : List (Finset (Fin 286))) (ok : valid t) (old : ∀ z ∈ W, live t z) :
      ∃ T : List (Finset (Fin 286)), valid T ∧ T.length ≤ t.length+gs.length ∧ ∀ z ∈ gs.foldl cs W, live T z := by
    induction gs generalizing t W with
    | nil => exact ⟨t,ok,by simp,old⟩
    | cons g gs ih =>
      obtain ⟨q,hq,sq,new⟩ := gateStep g (hm g List.mem_cons_self) t W ok old
      obtain ⟨T,hT,sT,all⟩ := ih (fun g hg => hm g (List.mem_cons_of_mem _ hg)) q (cs W g) hq new
      exact ⟨T,hT,by simp only [List.length_cons]; omega,all⟩
  have srcShape : (List.range 26).map column =
      (List.ofFn (fun p : Fin 13 => column p.val)) ++
        (List.ofFn (fun l : Fin 13 => column (13 + l.val))) := by
    apply List.ext_getElem
    · simp
    · intro i hleft hright
      change i < ((List.range 26).map column).length at hleft
      simp only [List.getElem_map, List.getElem_range]
      by_cases hi : i < 13
      · rw [List.getElem_append_left (by simpa using hi)]
        simp only [List.getElem_ofFn]
      · rw [List.getElem_append_right (by simpa using Nat.le_of_not_gt hi)]
        simp only [List.length_ofFn, List.getElem_ofFn]
        congr
        omega
  have pins : ∀ v ∈ ops, v < 26 := by
    simp only [List.mem_cons, List.not_mem_nil, or_false] at rep
    rcases rep with h | h | h | h | h | h | h <;> subst ops <;> decide
  have rawOutput (r : Fin 286) : C.eval (project r src) = decide (r.val < 52) := by
    let inp := (List.ofFn (fun p : Fin 13 => raw r p.val)) ++
      (List.ofFn (fun l : Fin 13 => raw r (13 + l.val)))
    have inpLen : inp.length = 26 := by simp [inp]
    have readRaw (v : ℕ) (hv : v < 26) : inp.getD v false = raw r v := by
      rw [List.getD_eq_getElem _ _ (by simpa [inpLen] using hv)]
      by_cases hi : v < 13
      · rw [List.getElem_append_left (by simpa using hi)]
        simp only [List.getElem_ofFn]
      · rw [List.getElem_append_right (by simpa using Nat.le_of_not_gt hi)]
        simp only [List.length_ofFn, List.getElem_ofFn]
        congr
        omega
    have start : project r src = inp ++ [ops.any (fun v => inp.getD v false)] := by
      have bit : ops.any (raw r) = ops.any (fun v => inp.getD v false) := by
        apply Bool.eq_iff_iff.mpr
        simp only [List.any_eq_true]
        constructor
        · rintro ⟨v, hv, h⟩
          exact ⟨v, hv, (readRaw v (pins v hv)).trans h⟩
        · rintro ⟨v, hv, h⟩
          exact ⟨v, hv, (readRaw v (pins v hv)).symm.trans h⟩
      simp only [project, src, srcShape, List.map_append, List.map_ofFn, List.map_cons,
        List.map_nil, colMem, freeMem, Bool.decide_coe, inp, bit, Function.comp_def]
    rw [start]
    by_cases pos : r.val < 52
    · rw [decide_eq_true pos]
      obtain ⟨p, l, edge, ps, ls⟩ := positiveRows r pos
      have same : inp = (List.ofFn (fun u : Fin 13 => decide (u = p))) ++
          List.ofFn (fun v : Fin 13 => decide (v = l)) := by
        exact congrArg₂ List.append (congrArg List.ofFn (funext ps)) (congrArg List.ofFn (funext ls))
      rw [same]
      exact hpos p l edge
    · rw [decide_eq_false pos]
      obtain ⟨shape, off⟩ := negativeRows r (by omega)
      let Q := Finset.univ.filter (fun p : Fin 13 => raw r p.val)
      have same : inp = (List.ofFn (fun u : Fin 13 => decide (u ∈ Q))) ++
          List.ofFn (fun l : Fin 13 => decide (∀ p ∈ Q, p - l ∉ ({0, 1, 3, 9} : Finset (Fin 13)))) := by
        apply congrArg₂ List.append
        · apply congrArg List.ofFn
          funext p
          simp [Q]
        · exact congrArg List.ofFn (funext off)
      rw [same]
      exact hneg Q shape
  have old (z : Finset (Fin 286)) (hz : z ∈ src) : live [] z := by
    exact Or.inr (Or.inr (by simpa only [List.append_nil] using hz))
  obtain ⟨T, ok, num, all⟩ := extract C.gates hm [] src (fun i => Fin.elim0 i) old
  let last := (C.gates.foldl cs src).getD C.output ∅
  have equal : last = goal := by
    ext r
    have ev := commute r C.gates src
    have see := congrArg (fun v : List Bool => v.getD C.output false) ev
    rw [lookup] at see
    change decide (r ∈ last) = C.eval (project r src) at see
    rw [rawOutput] at see
    simpa only [goalMem, decide_eq_decide] using see
  have found := readLive T (C.gates.foldl cs src) all C.output
  change live T last at found
  rw [equal] at found
  have hot : (0 : Fin 286) ∈ goal := (goalMem 0).mpr (by decide)
  have cold : (52 : Fin 286) ∉ goal := fun h => (by decide : ¬ (52 : Fin 286).val < 52) ((goalMem 52).mp h)
  rcases found with h | h | h
  · exact False.elim (Finset.notMem_empty _ (h ▸ hot))
  · exact False.elim (cold (h ▸ Finset.mem_univ _))
  by_contra! small
  have budget : T.length ≤ 62 := by
    change T.length ≤ 0 + C.size at num
    omega
  exact unreachable ops rep T budget ok h
