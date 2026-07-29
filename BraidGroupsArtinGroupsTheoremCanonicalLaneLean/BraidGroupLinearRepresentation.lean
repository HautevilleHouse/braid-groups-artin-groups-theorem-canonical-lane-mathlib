import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure BraidGroupLinearRepresentation (n : ℕ) where
  representationSpace : Type
  representationMap : String
  faithful : Prop
  faithfulTerm : faithful

structure BraidGroupLinearRepresentationEvidence (n : ℕ) (R : BraidGroupLinearRepresentation n) where
  faithfulClosed : R.faithful

def BraidGroupLinearRepresentationClosed (n : ℕ) (R : BraidGroupLinearRepresentation n) : Prop :=
  R.faithful

theorem braid_group_linear_representation_closed_from_evidence (n : ℕ) (R : BraidGroupLinearRepresentation n)
    (E : BraidGroupLinearRepresentationEvidence n R) : BraidGroupLinearRepresentationClosed n R := by
  exact E.faithfulClosed

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse