import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure BraidGroupPresentation (n : ℕ) where
  generators : Fin n → Type
  braidRelations : Prop
  coxeterMatrix : Matrix (Fin n) (Fin n) ℕ
  coxeterMatrixSymmetry : ∀ i j, coxeterMatrix i j = coxeterMatrix j i
  coxeterMatrixDiag : ∀ i, coxeterMatrix i i = 1
  braidRelationDefined : ∀ i j, coxeterMatrix i j ≥ 2 → braidRelations

structure BraidGroupPresentationEvidence (n : ℕ) (B : BraidGroupPresentation n) where
  coxeterMatrixSymmetryClosed : B.coxeterMatrixSymmetry
  coxeterMatrixDiagClosed : B.coxeterMatrixDiag
  braidRelationDefinedClosed : B.braidRelationDefined

def BraidGroupPresentationClosed (n : ℕ) (B : BraidGroupPresentation n) : Prop :=
  B.coxeterMatrixSymmetry ∧ B.coxeterMatrixDiag ∧ B.braidRelationDefined

theorem braid_group_presentation_closed_from_evidence (n : ℕ) (B : BraidGroupPresentation n)
    (E : BraidGroupPresentationEvidence n B) : BraidGroupPresentationClosed n B := by
  exact And.intro E.coxeterMatrixSymmetryClosed (And.intro E.coxeterMatrixDiagClosed E.braidRelationDefinedClosed)

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse
