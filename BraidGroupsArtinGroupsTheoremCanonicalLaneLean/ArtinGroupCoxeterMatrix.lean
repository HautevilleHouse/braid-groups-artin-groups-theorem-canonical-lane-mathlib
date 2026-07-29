import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure CoxeterMatrix where
  size : ℕ
  entries : Matrix (Fin size) (Fin size) ℕ
  symmetric : ∀ i j, entries i j = entries j i
  diagonalOne : ∀ i, entries i i = 1
  offDiagonalAtLeastTwo : ∀ i j, i ≠ j → entries i j ≥ 2

def CoxeterMatrix.toArtinGroup (M : CoxeterMatrix) : ArtinGroup M.size where
  generators := (List.finRange M.size).map (λ i => i)
  relations :=
    List.join (List.range (M.size-1)).map (λ i =>
      List.range (M.size-2).map (λ j =>
        let mij := M.entries ⟨i, by omega⟩ ⟨j, by omega⟩
        { left := ⟨i, by omega⟩, right := ⟨j, by omega⟩ }))

structure CoxeterMatrixEvidence (M : CoxeterMatrix) where
  symmetricClosed : M.symmetric
  diagonalOneClosed : M.diagonalOne
  offDiagonalAtLeastTwoClosed : M.offDiagonalAtLeastTwo

def CoxeterMatrixClosed (M : CoxeterMatrix) : Prop :=
  M.symmetric ∧ M.diagonalOne ∧ (∀ i j, i ≠ j → M.entries i j ≥ 2)

theorem coxeter_matrix_closed_from_evidence (M : CoxeterMatrix) (E : CoxeterMatrixEvidence M) : CoxeterMatrixClosed M :=
  And.intro E.symmetricClosed (And.intro E.diagonalOneClosed E.offDiagonalAtLeastTwoClosed)

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse
