import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure BraidGroupPresentation where
  n : Nat
  generators : List (Nat × Nat)
  braidRelations : Prop
  artinRelations : Prop
  presentationConsistent : Prop

structure BraidGroupPresentationEvidence (B : BraidGroupPresentation) where
  braidRelationsClosed : B.braidRelations
  artinRelationsClosed : B.artinRelations
  presentationConsistentClosed : B.presentationConsistent

def BraidGroupPresentationClosed (B : BraidGroupPresentation) : Prop :=
  B.braidRelations ∧ B.artinRelations ∧ B.presentationConsistent

theorem braid_group_presentation_closed_from_evidence
    (B : BraidGroupPresentation) (E : BraidGroupPresentationEvidence B) :
    BraidGroupPresentationClosed B := by
  exact And.intro E.braidRelationsClosed
    (And.intro E.artinRelationsClosed E.presentationConsistentClosed)

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse
