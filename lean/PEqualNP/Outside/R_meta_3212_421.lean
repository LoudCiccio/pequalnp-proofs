import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

theorem PEqualNP.Outside.R_meta_3212_421
    (fold : ∀ C : Circuit, FanInTwo C →
      (∀ g ∈ C.gates, g.op = GateOp.not → g.inputs.length ≤ 1) →
      ∀ f : (Fin 8 → Bool) → Bool, f (fun _ => false) = false → f (fun _ => true) = true →
      (∀ x : Fin 8 → Bool, C.eval (false :: List.ofFn x ++ [true]) = f x) →
      HasCircuitSize 8 f (C.size - (C.gates.filter fun g =>
        [0, 9].any fun i => g.inputs.contains i).length))
    (lower : ∀ s : ℕ, HasCircuitSize 8 (fun x : Fin 8 → Bool =>
      ([(0, 1), (0, 5), (1, 2), (1, 6), (2, 3), (2, 7), (4, 6), (4, 7), (5, 7)] :
        List (Fin 8 × Fin 8)).any fun e => x e.1 && x e.2) s → 12 ≤ s)
    : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.FanInTwo x1 →
      (∀ x3 ∈ x1.gates, x3.op = PEqualNP.CircuitLowerBounds.GateOp.not → x3.inputs.length ≤ (1 : ℕ)) →
      (List.filter (fun (x4 : PEqualNP.CircuitLowerBounds.Gate) => [(0 : ℕ), (9 : ℕ)].any fun (x5 : ℕ) => x4.inputs.contains x5) x1.gates).length = (2 : ℕ) →
      (∀ (x5 : Fin (8 : ℕ) → Bool), x1.eval (Bool.false :: List.ofFn x5 ++ [Bool.true]) = [(1 : ℕ), (10 : ℕ), (19 : ℕ), (5 : ℕ), (14 : ℕ), (23 : ℕ), (38 : ℕ), (47 : ℕ), (60 : ℕ)].any
          fun (x6 : ℕ) => x5 (Fin.ofNat (8 : ℕ) (x6 / (8 : ℕ))) && x5 (Fin.ofNat (8 : ℕ) (x6 % (8 : ℕ)))) → (14 : ℕ) ≤ x1.size := by
  intro C fan unary readers computes
  let target := fun x : Fin 8 → Bool =>
    ([1, 10, 19, 5, 14, 23, 38, 47, 60] : List ℕ).any fun e =>
      x (Fin.ofNat 8 (e / 8)) && x (Fin.ofNat 8 (e % 8))
  let pairs := fun x : Fin 8 → Bool =>
    ([(0, 1), (0, 5), (1, 2), (1, 6), (2, 3), (2, 7), (4, 6), (4, 7), (5, 7)] :
      List (Fin 8 × Fin 8)).any fun e => x e.1 && x e.2
  have same : target = pairs := by
    funext x
    simp only [target, pairs, List.any_cons, List.any_nil, Bool.or_false]
    change
      ((x 0 && x 1) ||
        ((x 1 && x 2) ||
        ((x 2 && x 3) ||
        ((x 0 && x 5) ||
        ((x 1 && x 6) ||
        ((x 2 && x 7) ||
        ((x 4 && x 6) ||
        ((x 5 && x 7) ||
        (x 7 && x 4))))))))) =
      ((x 0 && x 1) ||
        ((x 0 && x 5) ||
        ((x 1 && x 2) ||
        ((x 1 && x 6) ||
        ((x 2 && x 3) ||
        ((x 2 && x 7) ||
        ((x 4 && x 6) ||
        ((x 4 && x 7) ||
        (x 5 && x 7)))))))))
    ac_rfl
  have residual := fold C fan unary target (by decide) (by decide) computes
  rw [same, readers] at residual
  have bound := lower _ residual
  omega
