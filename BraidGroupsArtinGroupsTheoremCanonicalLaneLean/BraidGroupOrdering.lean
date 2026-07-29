import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure BraidGroupOrdering (n : ℕ) where
  totalOrderOnBraidGroup : Prop
  orderRelationDefined : String
  totalOrderDecidable : Prop
  totalOrderDecidableTerm : totalOrderDecidable

structure BraidGroupOrderingEvidence (n : ℕ) (O : BraidGroupOrdering n) where
  totalOrderDecidableClosed : O.totalOrderDecidable

def BraidGroupOrderingClosed (n : ℕ) (O : BraidGroupOrdering n) : Prop :=
  O.totalOrderDecidable

theorem braid_group_ordering_closed_from_evidence (n : ℕ) (O : BraidGroupOrdering n)
    (E : BraidGroupOrderingEvidence n O) : BraidGroupOrderingClosed n O := by
  exact E.totalOrderDecidableClosed

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse