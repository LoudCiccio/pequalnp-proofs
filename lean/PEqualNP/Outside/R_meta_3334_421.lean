import PEqualNP.Defs

set_option maxHeartbeats 600000 in
theorem PEqualNP.Outside.R_meta_3334_421
    (plainOutput : have x1 : (Fin (9 : ℕ) → Bool) → Bool := fun (x1 : Fin (9 : ℕ) → Bool) => List.foldl (fun (x2 : Bool) (x3 : Fin (9 : ℕ) × Fin (9 : ℕ)) => x2 || x1 x3.1 && x1 x3.2) Bool.false [((0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (4 : Fin (9 : ℕ))), ((4 : Fin (9 : ℕ)), (0 : Fin (9 : ℕ))), ((0 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((5 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((6 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((8 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)))];
      ∀ (x2 : ℕ) (x3 : Fin (x2 + (1 : ℕ)) → Bool) (x4 x5 : Fin (x2 + (1 : ℕ)) → ℕ × Bool) (x6 : Bool) (x7 : Finset ℕ) (x8 : (Fin (9 : ℕ) → Bool) → ℕ → Bool), x7.card ≤ (3 : ℕ) → x2 + (1 : ℕ) + x7.card ≤ (14 : ℕ) →
      (∀ (x11 : Fin (x2 + (1 : ℕ))), (x4 x11).1 < (10 : ℕ) + ↑x11 ∧ (x5 x11).1 < (10 : ℕ) + ↑x11) →
      (have x12 : ℕ × Bool → Prop := fun (x12 : ℕ × Bool) => x12.2 = Bool.true → x12.1 = (0 : ℕ) ∨ x12.1 = (9 : ℕ) ∨ x12.1 ∈ x7; x12 ((10 : ℕ) + x2, x6) ∧ ∀ (x13 : Fin (x2 + (1 : ℕ))), x12 (x4 x13) ∧ x12 (x5 x13)) →
      (∀ (x13 : Fin (9 : ℕ) → Bool) (x14 : Fin (9 : ℕ)), x8 x13 ↑x14 = x13 x14) →
      (∀ (x14 : Fin (9 : ℕ) → Bool), x8 x14 (9 : ℕ) = Bool.false) →
      (∀ (x15 : Fin (9 : ℕ) → Bool) (x16 : Fin (x2 + (1 : ℕ))), have x17 : ℕ × Bool → Bool := fun (x17 : ℕ × Bool) => x8 x15 x17.1 ^^ x17.2; x8 x15 ((10 : ℕ) + ↑x16) = if x3 x16 = Bool.true then x17 (x4 x16) && x17 (x5 x16) else x17 (x4 x16) || x17 (x5 x16)) → x6 = Bool.false → (10 : ℕ) ≤ (x4 (Fin.last x2)).1 → (10 : ℕ) ≤ (x5 (Fin.last x2)).1 → (x4 (Fin.last x2)).1 ≠ (x5 (Fin.last x2)).1 →
      ¬∀ (x18 : Fin (9 : ℕ) → Bool), (x8 x18 ((10 : ℕ) + x2) ^^ x6) = x1 x18)
    (negatedOutput : have x1 : (Fin (9 : ℕ) → Bool) → Bool := fun (x1 : Fin (9 : ℕ) → Bool) => List.foldl (fun (x2 : Bool) (x3 : Fin (9 : ℕ) × Fin (9 : ℕ)) => x2 || x1 x3.1 && x1 x3.2) Bool.false [((0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (4 : Fin (9 : ℕ))), ((4 : Fin (9 : ℕ)), (0 : Fin (9 : ℕ))), ((0 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((5 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((6 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((8 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)))];
      ∀ (x2 : ℕ) (x3 : Fin (x2 + (1 : ℕ)) → Bool) (x4 x5 : Fin (x2 + (1 : ℕ)) → ℕ × Bool) (x6 : Bool) (x7 : Finset ℕ) (x8 : (Fin (9 : ℕ) → Bool) → ℕ → Bool), x7.card ≤ (3 : ℕ) → x2 + (1 : ℕ) + x7.card ≤ (14 : ℕ) →
      (∀ (x11 : Fin (x2 + (1 : ℕ))), (x4 x11).1 < (10 : ℕ) + ↑x11 ∧ (x5 x11).1 < (10 : ℕ) + ↑x11) →
      (have x12 : ℕ × Bool → Prop := fun (x12 : ℕ × Bool) => x12.2 = Bool.true → x12.1 = (0 : ℕ) ∨ x12.1 = (9 : ℕ) ∨ x12.1 ∈ x7; x12 ((10 : ℕ) + x2, x6) ∧ ∀ (x13 : Fin (x2 + (1 : ℕ))), x12 (x4 x13) ∧ x12 (x5 x13)) →
      (∀ (x13 : Fin (9 : ℕ) → Bool) (x14 : Fin (9 : ℕ)), x8 x13 ↑x14 = x13 x14) →
      (∀ (x14 : Fin (9 : ℕ) → Bool), x8 x14 (9 : ℕ) = Bool.false) →
      (∀ (x15 : Fin (9 : ℕ) → Bool) (x16 : Fin (x2 + (1 : ℕ))), have x17 : ℕ × Bool → Bool := fun (x17 : ℕ × Bool) => x8 x15 x17.1 ^^ x17.2; x8 x15 ((10 : ℕ) + ↑x16) = if x3 x16 = Bool.true then x17 (x4 x16) && x17 (x5 x16) else x17 (x4 x16) || x17 (x5 x16)) → x6 = Bool.true → (10 : ℕ) ≤ (x4 (Fin.last x2)).1 → (10 : ℕ) ≤ (x5 (Fin.last x2)).1 → (x4 (Fin.last x2)).1 ≠ (x5 (Fin.last x2)).1 →
      ¬∀ (x18 : Fin (9 : ℕ) → Bool), (x8 x18 ((10 : ℕ) + x2) ^^ x6) = x1 x18)
    : have x1 : (Fin (9 : ℕ) → Bool) → Bool := fun (x1 : Fin (9 : ℕ) → Bool) => List.foldl (fun (x2 : Bool) (x3 : Fin (9 : ℕ) × Fin (9 : ℕ)) => x2 || x1 x3.1 && x1 x3.2) Bool.false [((0 : Fin (9 : ℕ)), (1 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (2 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (3 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (4 : Fin (9 : ℕ))), ((4 : Fin (9 : ℕ)), (0 : Fin (9 : ℕ))), ((0 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ))), ((1 : Fin (9 : ℕ)), (6 : Fin (9 : ℕ))), ((2 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((3 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((5 : Fin (9 : ℕ)), (7 : Fin (9 : ℕ))), ((6 : Fin (9 : ℕ)), (8 : Fin (9 : ℕ))), ((8 : Fin (9 : ℕ)), (5 : Fin (9 : ℕ)))];
      ∀ (x2 : ℕ) (x3 : Fin (x2 + (1 : ℕ)) → Bool) (x4 x5 : Fin (x2 + (1 : ℕ)) → ℕ × Bool) (x6 : Bool) (x7 : Finset ℕ) (x8 : (Fin (9 : ℕ) → Bool) → ℕ → Bool), x7.card ≤ (3 : ℕ) → x2 + (1 : ℕ) + x7.card ≤ (14 : ℕ) →
      (∀ (x11 : Fin (x2 + (1 : ℕ))), (x4 x11).1 < (10 : ℕ) + ↑x11 ∧ (x5 x11).1 < (10 : ℕ) + ↑x11) →
      (have x12 : ℕ × Bool → Prop := fun (x12 : ℕ × Bool) => x12.2 = Bool.true → x12.1 = (0 : ℕ) ∨ x12.1 = (9 : ℕ) ∨ x12.1 ∈ x7; x12 ((10 : ℕ) + x2, x6) ∧ ∀ (x13 : Fin (x2 + (1 : ℕ))), x12 (x4 x13) ∧ x12 (x5 x13)) →
      (∀ (x13 : Fin (9 : ℕ) → Bool) (x14 : Fin (9 : ℕ)), x8 x13 ↑x14 = x13 x14) →
      (∀ (x14 : Fin (9 : ℕ) → Bool), x8 x14 (9 : ℕ) = Bool.false) →
      (∀ (x15 : Fin (9 : ℕ) → Bool) (x16 : Fin (x2 + (1 : ℕ))), have x17 : ℕ × Bool → Bool := fun (x17 : ℕ × Bool) => x8 x15 x17.1 ^^ x17.2; x8 x15 ((10 : ℕ) + ↑x16) = if x3 x16 = Bool.true then x17 (x4 x16) && x17 (x5 x16) else x17 (x4 x16) || x17 (x5 x16)) → (9 : ℕ) ≤ (x4 (Fin.last x2)).1 → (9 : ℕ) ≤ (x5 (Fin.last x2)).1 →
      ¬∀ (x18 : Fin (9 : ℕ) → Bool), (x8 x18 ((10 : ℕ) + x2) ^^ x6) = x1 x18 := by
  intro F m
  induction m using Nat.strong_induction_on with
  | ind m ih =>
    intro op left right phase paid wire paidBound budget earlier allowed raw zero step leftNonraw rightNonraw correct
    let j := Fin.last m
    let last := 10 + m
    let l := left j
    let r := right j
    have beforeL : l.1 < last := (earlier j).1
    have beforeR : r.1 < last := (earlier j).2
    have values (x : Fin 9 → Bool) : wire x last =
        if op j then (wire x l.1 ^^ l.2) && (wire x r.1 ^^ r.2)
        else (wire x l.1 ^^ l.2) || (wire x r.1 ^^ r.2) := step x j
    have separates (k : Fin 9) (b : Bool) :
        F (fun i => decide (i = k) && b) = false ∧
        F (fun i => !decide (i = k) || b) = true := by
      fin_cases k <;> cases b <;> decide
    have nonconstant (c : Bool) (h : ∀ x, F x = c) : False := by
      have low := h (fun i : Fin 9 => decide (i = 0) && false)
      have high := h (fun i : Fin 9 => !decide (i = 0) || false)
      exact Bool.false_ne_true (((separates 0 false).1.symm.trans low).trans
        (high.symm.trans (separates 0 false).2))
    have foldOutput (pin : ℕ × Bool) (hbefore : pin.1 < last)
        (hallowed : pin.2 = true → pin.1 = 0 ∨ pin.1 = 9 ∨ pin.1 ∈ paid)
        (heval : ∀ x, wire x last = (wire x pin.1 ^^ pin.2)) : False := by
      let sign := pin.2 ^^ phase
      have newEval (x : Fin 9 → Bool) : (wire x pin.1 ^^ sign) = F x := by
        have h := correct x
        change (wire x last ^^ phase) = F x at h
        rw [heval x, Bool.xor_assoc] at h
        exact h
      have notRaw : 9 ≤ pin.1 := by
        by_contra! low
        let k : Fin 9 := ⟨pin.1, low⟩
        have hs := newEval (fun i => decide (i = k) && false)
        have hd := newEval (fun i => !decide (i = k) || false)
        change (wire _ k.val ^^ sign) = _ at hs hd
        rw [raw, (separates k false).1] at hs
        rw [raw, (separates k false).2] at hd
        simp at hs hd
        exact Bool.false_ne_true (hs.symm.trans hd)
      have notConst : pin.1 ≠ 9 := by
        intro atConst
        apply nonconstant (false ^^ sign)
        intro x
        have h := newEval x
        rw [atConst, zero x] at h
        exact h.symm
      let k := pin.1 - 10
      have hk : 10 + k = pin.1 := by dsimp [k]; omega
      have smaller : k < m := by dsimp [last] at hbefore; omega
      let trim (i : Fin (k + 1)) : Fin (m + 1) := ⟨i.val, by have := i.isLt; omega⟩
      let S := if phase then insert pin.1 (paid.erase last) else paid
      have keep (w : ℕ) (hw : w ∈ paid) (different : w ≠ last) : w ∈ S := by
        cases signOld : phase
        · simpa [S, signOld] using hw
        · simp [S, signOld, Finset.mem_insert, Finset.mem_erase, hw, different]
      have cost : S.card ≤ paid.card := by
        cases signOld : phase
        · simp [S, signOld]
        · have old : last ∈ paid := by
            have h := allowed.1 signOld
            exact h.resolve_left (by dsimp [last]; omega) |>.resolve_left (by dsimp [last]; omega)
          have removes := Finset.card_erase_add_one old
          have adds := Finset.card_insert_le (s := paid.erase last) pin.1
          simp only [S, signOld, ite_true]
          omega
      have allowedNew : (sign = true → (10 + k = 0 ∨ 10 + k = 9 ∨ 10 + k ∈ S)) ∧
          (∀ i : Fin (k + 1),
            ((left (trim i)).2 = true → (left (trim i)).1 = 0 ∨ (left (trim i)).1 = 9 ∨ (left (trim i)).1 ∈ S) ∧
            ((right (trim i)).2 = true → (right (trim i)).1 = 0 ∨ (right (trim i)).1 = 9 ∨ (right (trim i)).1 ∈ S)) := by
        constructor
        · intro h
          rw [hk]
          cases signOld : phase
          · have sp : pin.2 = true := by simpa [sign, signOld] using h
            simpa [S, signOld] using hallowed sp
          · exact Or.inr (Or.inr (by simp [S, signOld]))
        · intro i
          have hi := i.isLt
          have prev := earlier (trim i)
          have bound (q : ℕ × Bool) (h₁ : q.1 < 10 + (trim i).val)
              (h₂ : q.2 = true → q.1 = 0 ∨ q.1 = 9 ∨ q.1 ∈ paid) :
              q.2 = true → q.1 = 0 ∨ q.1 = 9 ∨ q.1 ∈ S := by
            intro signQ
            rcases h₂ signQ with h | h | h
            · exact Or.inl h
            · exact Or.inr (Or.inl h)
            · exact Or.inr (Or.inr (keep q.1 h (by dsimp [trim, last] at *; omega)))
          exact ⟨bound _ prev.1 (allowed.2 (trim i)).1, bound _ prev.2 (allowed.2 (trim i)).2⟩
      have firstStep (x : Fin 9 → Bool) (i : Fin (k + 1)) :
          wire x (10 + i.val) = if op (trim i) = true then
            (wire x (left (trim i)).1 ^^ (left (trim i)).2) &&
              (wire x (right (trim i)).1 ^^ (right (trim i)).2)
          else (wire x (left (trim i)).1 ^^ (left (trim i)).2) ||
              (wire x (right (trim i)).1 ^^ (right (trim i)).2) := step x (trim i)
      have tailNoRaw (x : Fin (k + 1)) (hx : x.val = k) :
          9 ≤ (left (trim x)).1 ∧ 9 ≤ (right (trim x)).1 := by
        let t := trim x
        have outEq : 10 + t.val = pin.1 := by
          change 10 + x.val = pin.1
          rw [hx, hk]
        have checkPin (p : ℕ × Bool) (side : p = left t ∨ p = right t) : 9 ≤ p.1 := by
          by_contra! low
          let i : Fin 9 := ⟨p.1, low⟩
          let b := if op t then p.2 else !p.2
          let sparse := fun a : Fin 9 => decide (a = i) && b
          let dense := fun a : Fin 9 => !decide (a = i) || b
          have valueL : wire sparse p.1 = b := by
            change wire sparse i.val = b
            rw [raw]
            simp [sparse]
          have valueR : wire dense p.1 = b := by
            change wire dense i.val = b
            rw [raw]
            simp [dense]
          have absorbs : (b ^^ p.2) = !op t := by
            cases tag : op t <;> cases ps : p.2 <;> simp [b, tag, ps]
          have same (a : Fin 9 → Bool) (ha : wire a p.1 = b) :
              wire a pin.1 = !op t := by
            rw [← outEq, step a t]
            dsimp only
            rcases side with e | e
            · rw [← e, ha, absorbs]
              cases op t <;> simp
            · rw [← e, ha, absorbs]
              cases op t <;> simp
          have lo := newEval sparse
          have hi := newEval dense
          rw [same sparse valueL, show F sparse = false from (separates i b).1] at lo
          rw [same dense valueR, show F dense = true from (separates i b).2] at hi
          exact Bool.false_ne_true (lo.symm.trans hi)
        exact ⟨checkPin _ (Or.inl rfl), checkPin _ (Or.inr rfl)⟩
      have head := tailNoRaw (Fin.last k) rfl
      exact ih k smaller (op ∘ trim) (left ∘ trim) (right ∘ trim) sign S wire
        (cost.trans paidBound) (by omega) (fun i => earlier (trim i)) allowedNew raw zero firstStep
        head.1 head.2 (fun x => by rw [hk]; exact newEval x)
    have echoL : l.2 = true → l.1 = 0 ∨ l.1 = 9 ∨ l.1 ∈ paid := (allowed.2 j).1
    have echoR : r.2 = true → r.1 = 0 ∨ r.1 = 9 ∨ r.1 ∈ paid := (allowed.2 j).2
    have impossibleConstant (b : Bool) (he : ∀ x, wire x last = b) : False := by
      apply nonconstant (b ^^ phase)
      intro x
      have hx := correct x
      change (wire x last ^^ phase) = F x at hx
      rw [he] at hx
      exact hx.symm
    by_cases constantL : l.1 = 9
    · cases kind : op j <;> cases signL : l.2
      · exact foldOutput r beforeR echoR (fun x => by simpa [kind, signL, constantL, zero] using values x)
      · exact impossibleConstant true (fun x => by simpa [kind, signL, constantL, zero] using values x)
      · exact impossibleConstant false (fun x => by simpa [kind, signL, constantL, zero] using values x)
      · exact foldOutput r beforeR echoR (fun x => by simpa [kind, signL, constantL, zero] using values x)
    by_cases constantR : r.1 = 9
    · cases kind : op j <;> cases signR : r.2
      · exact foldOutput l beforeL echoL (fun x => by simpa [kind, signR, constantR, zero] using values x)
      · exact impossibleConstant true (fun x => by simpa [kind, signR, constantR, zero] using values x)
      · exact impossibleConstant false (fun x => by simpa [kind, signR, constantR, zero] using values x)
      · exact foldOutput l beforeL echoL (fun x => by simpa [kind, signR, constantR, zero] using values x)
    by_cases same : l.1 = r.1
    · by_cases phaseEq : l.2 = r.2
      · exact foldOutput r beforeR echoR (fun x => by
          cases kind : op j <;> simpa [kind, same, phaseEq] using values x)
      · have unlike (c : Bool) : (c ^^ l.2) = !(c ^^ r.2) := by
          cases c <;> cases sl : l.2 <;> cases sr : r.2 <;> simp [sl, sr] at phaseEq ⊢
        cases kind : op j
        · exact impossibleConstant true (fun x => by simpa [kind, same, unlike] using values x)
        · exact impossibleConstant false (fun x => by simpa [kind, same, unlike] using values x)
    have hl : 10 ≤ l.1 := by change 9 ≤ l.1 at leftNonraw; omega
    have hr : 10 ≤ r.1 := by change 9 ≤ r.1 at rightNonraw; omega
    cases ph : phase
    · exact plainOutput m op left right phase paid wire paidBound budget earlier allowed raw zero step
        ph hl hr same correct
    · exact negatedOutput m op left right phase paid wire paidBound budget earlier allowed raw zero step
        ph hl hr same correct
