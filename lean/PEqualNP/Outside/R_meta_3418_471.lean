import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_3418_471
    (project : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit), x1.gates.length = (15 : ℕ) → x1.output = (23 : ℕ) → x1.gates[(0 : ℕ)]? = Option.some { op := PEqualNP.CircuitLowerBounds.GateOp.or, inputs := [(0 : ℕ), (3 : ℕ)] : PEqualNP.CircuitLowerBounds.Gate } → PEqualNP.MetaComplexity.Monotone2 x1 →
      (∀ (x6 : ℕ) (x7 : x6 < x1.gates.length), ∀ x8 ∈ x1.gates[x6].inputs, x8 < (9 : ℕ) + x6 ∨ x8 = (24 : ℕ)) → (PEqualNP.MetaComplexity.circuitFun (9 : ℕ) x1 = fun (x7 : Fin (9 : ℕ) → Bool) => [(1 : ℕ), (11 : ℕ), (21 : ℕ), (31 : ℕ), (36 : ℕ), (5 : ℕ), (15 : ℕ), (25 : ℕ), (35 : ℕ), (52 : ℕ), (62 : ℕ), (77 : ℕ)].any fun (x8 : ℕ) => x7 (Fin.ofNat (9 : ℕ) (x8 / (9 : ℕ))) && x7 (Fin.ofNat (9 : ℕ) (x8 % (9 : ℕ)))) →
      ∃ (x8 : List (BitVec (24 : ℕ))), x8.length = (24 : ℕ) ∧
        List.take (10 : ℕ) x8 = [(5521457 : BitVec (24 : ℕ)), (8532035 : BitVec (24 : ℕ)), (3227782 : BitVec (24 : ℕ)), (430348 : BitVec (24 : ℕ)), (11083800 : BitVec (24 : ℕ)), (113184 : BitVec (24 : ℕ)), (902208 : BitVec (24 : ℕ)), (13501056 : BitVec (24 : ℕ)), (15731968 : BitVec (24 : ℕ)), (5689661 : BitVec (24 : ℕ))] ∧
        x8.getD (23 : ℕ) (0 : BitVec (24 : ℕ)) = (4095 : BitVec (24 : ℕ)) ∧
        ∀ (x9 : ℕ), (0 : ℕ) < x9 → x9 < (15 : ℕ) → have x12 : BitVec (24 : ℕ) := x8.getD ((9 : ℕ) + x9) (0 : BitVec (24 : ℕ)); x12 = 0 ∨ x12 = (16777215 : BitVec (24 : ℕ)) ∨ x12 ∈ x8.take (9 + x9) ∨ ∃ (x13 : BitVec (24 : ℕ)) (x14 : BitVec (24 : ℕ)), x13 ∈ List.take ((9 : ℕ) + x9) x8 ∧ x14 ∈ List.take ((9 : ℕ) + x9) x8 ∧ (x12 = x13 &&& x14 ∨ x12 = x13 ||| x14))
    (normalize : ∀ seeds pool : List (BitVec 24),
      seeds.length = 10 → (0 :: seeds).Nodup → (4095 : BitVec 24) ∉ seeds →
      pool.Nodup → 24 ≤ pool.length →
      (∀ t ∈ pool, t ≠ 0 ∧ t ≠ 4095 ∧ ∃ a ∈ seeds, ∃ b ∈ seeds, t = a ||| b) →
      ∀ w : List (BitVec 24), w.length = 24 → w.take 10 = seeds → w.getD 23 0 = 4095 →
      (∀ j : ℕ, 0 < j → j < 15 →
        let t := w.getD (9 + j) 0
        t = 0 ∨ t = 16777215 ∨ t ∈ w.take (9 + j) ∨
          ∃ a b, a ∈ w.take (9 + j) ∧ b ∈ w.take (9 + j) ∧ (t = a &&& b ∨ t = a ||| b)) →
      ∃ v : List (BitVec 24), v.length = 24 ∧ v.take 10 = seeds ∧
        v.getD 23 0 = 4095 ∧ (0 :: v).Nodup ∧
        ∀ j : ℕ, 0 < j → j < 15 →
          let t := v.getD (9 + j) 0
          t = 16777215 ∨ ∃ a b, a ∈ v.take (9 + j) ∧ b ∈ v.take (9 + j) ∧
            (t = a &&& b ∨ t = a ||| b))
    : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit), x1.gates.length = (15 : ℕ) → x1.output = (23 : ℕ) → x1.gates[(0 : ℕ)]? = Option.some { op := PEqualNP.CircuitLowerBounds.GateOp.or, inputs := [(0 : ℕ), (3 : ℕ)] : PEqualNP.CircuitLowerBounds.Gate } → PEqualNP.MetaComplexity.Monotone2 x1 →
      (∀ (x6 : ℕ) (x7 : x6 < x1.gates.length), ∀ x8 ∈ x1.gates[x6].inputs, x8 < (9 : ℕ) + x6 ∨ x8 = (24 : ℕ)) → (PEqualNP.MetaComplexity.circuitFun (9 : ℕ) x1 = fun (x7 : Fin (9 : ℕ) → Bool) => [(1 : ℕ), (11 : ℕ), (21 : ℕ), (31 : ℕ), (36 : ℕ), (5 : ℕ), (15 : ℕ), (25 : ℕ), (35 : ℕ), (52 : ℕ), (62 : ℕ), (77 : ℕ)].any fun (x8 : ℕ) => x7 (Fin.ofNat (9 : ℕ) (x8 / (9 : ℕ))) && x7 (Fin.ofNat (9 : ℕ) (x8 % (9 : ℕ)))) →
      ∃ (x8 : List (BitVec (24 : ℕ))), x8.length = (24 : ℕ) ∧
        List.take (10 : ℕ) x8 = [(5521457 : BitVec (24 : ℕ)), (8532035 : BitVec (24 : ℕ)), (3227782 : BitVec (24 : ℕ)), (430348 : BitVec (24 : ℕ)), (11083800 : BitVec (24 : ℕ)), (113184 : BitVec (24 : ℕ)), (902208 : BitVec (24 : ℕ)), (13501056 : BitVec (24 : ℕ)), (15731968 : BitVec (24 : ℕ)), (5689661 : BitVec (24 : ℕ))] ∧
        x8.getD (23 : ℕ) (0 : BitVec (24 : ℕ)) = (4095 : BitVec (24 : ℕ)) ∧ ((0 : BitVec (24 : ℕ)) :: x8).Nodup ∧
        ∀ (x9 : ℕ), (0 : ℕ) < x9 → x9 < (15 : ℕ) → have x12 : BitVec (24 : ℕ) := x8.getD ((9 : ℕ) + x9) (0 : BitVec (24 : ℕ)); x12 = (16777215 : BitVec (24 : ℕ)) ∨ ∃ (x13 : BitVec (24 : ℕ)) (x14 : BitVec (24 : ℕ)), x13 ∈ List.take ((9 : ℕ) + x9) x8 ∧ x14 ∈ List.take ((9 : ℕ) + x9) x8 ∧ (x12 = x13 &&& x14 ∨ x12 = x13 ||| x14) := by
  intro C size output first mono backwards computes
  obtain ⟨w, len, front, last, trace⟩ := project C size output first mono backwards computes
  let seeds : List (BitVec 24) :=
    [5521457, 8532035, 3227782, 430348, 11083800, 113184, 902208, 13501056, 15731968, 5689661]
  let pool : List (BitVec 24) :=
    [14053491, 7684279, 16605241, 5634609, 6145137, 14566065, 16010545, 11759815, 8827215, 11219035, 8632931, 9434179, 13513411, 15875395, 14086527, 3658126, 12148894, 3275430, 4048070, 16728710, 15814022, 7852479, 11514140, 506668]
  have certified : ∀ t ∈ pool, t ≠ 0 ∧ t ≠ 4095 ∧ ∃ a ∈ seeds, ∃ b ∈ seeds, t = a ||| b := by
    intro t ht
    simp only [pool, List.mem_cons, List.not_mem_nil, or_false] at ht
    rcases ht with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact ⟨by decide, by decide, 5521457, by decide, 8532035, by decide, by decide⟩
    · exact ⟨by decide, by decide, 5521457, by decide, 3227782, by decide, by decide⟩
    · exact ⟨by decide, by decide, 5521457, by decide, 11083800, by decide, by decide⟩
    · exact ⟨by decide, by decide, 5521457, by decide, 113184, by decide, by decide⟩
    · exact ⟨by decide, by decide, 5521457, by decide, 902208, by decide, by decide⟩
    · exact ⟨by decide, by decide, 5521457, by decide, 13501056, by decide, by decide⟩
    · exact ⟨by decide, by decide, 5521457, by decide, 15731968, by decide, by decide⟩
    · exact ⟨by decide, by decide, 8532035, by decide, 3227782, by decide, by decide⟩
    · exact ⟨by decide, by decide, 8532035, by decide, 430348, by decide, by decide⟩
    · exact ⟨by decide, by decide, 8532035, by decide, 11083800, by decide, by decide⟩
    · exact ⟨by decide, by decide, 8532035, by decide, 113184, by decide, by decide⟩
    · exact ⟨by decide, by decide, 8532035, by decide, 902208, by decide, by decide⟩
    · exact ⟨by decide, by decide, 8532035, by decide, 13501056, by decide, by decide⟩
    · exact ⟨by decide, by decide, 8532035, by decide, 15731968, by decide, by decide⟩
    · exact ⟨by decide, by decide, 8532035, by decide, 5689661, by decide, by decide⟩
    · exact ⟨by decide, by decide, 3227782, by decide, 430348, by decide, by decide⟩
    · exact ⟨by decide, by decide, 3227782, by decide, 11083800, by decide, by decide⟩
    · exact ⟨by decide, by decide, 3227782, by decide, 113184, by decide, by decide⟩
    · exact ⟨by decide, by decide, 3227782, by decide, 902208, by decide, by decide⟩
    · exact ⟨by decide, by decide, 3227782, by decide, 13501056, by decide, by decide⟩
    · exact ⟨by decide, by decide, 3227782, by decide, 15731968, by decide, by decide⟩
    · exact ⟨by decide, by decide, 3227782, by decide, 5689661, by decide, by decide⟩
    · exact ⟨by decide, by decide, 430348, by decide, 11083800, by decide, by decide⟩
    · exact ⟨by decide, by decide, 430348, by decide, 113184, by decide, by decide⟩
  exact normalize seeds pool (by decide) (by decide) (by decide) (by decide) (by decide)
    certified w len front last trace
