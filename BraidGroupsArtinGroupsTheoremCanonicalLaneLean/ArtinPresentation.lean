import BraidGroupsArtinGroupsTheoremCanonicalLaneLean.BraidGroupObjects

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure ArtinPresentation (n : ℕ) where
  generators : List String
  relations : List (String × String)
  coxeterMatrix : Matrix (Fin n) (Fin n) ℕ
  sphericalCondition : Prop

structure ArtinPresentationEvidence (n : ℕ) (P : ArtinPresentation n) where
  generatorsClosed : P.generators ≠ []
  relationsClosed : P.relations ≠ []
  sphericalConditionClosed : P.sphericalCondition

def ArtinPresentationClosed (n : ℕ) (P : ArtinPresentation n) : Prop :=
  P.generators ≠ [] ∧ P.relations ≠ [] ∧ P.sphericalCondition

theorem artin_presentation_closed_from_evidence (n : ℕ) (P : ArtinPresentation n)
    (E : ArtinPresentationEvidence n P) : ArtinPresentationClosed n P := by
  refine And.intro E.generatorsClosed (And.intro E.relationsClosed E.sphericalConditionClosed)

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse