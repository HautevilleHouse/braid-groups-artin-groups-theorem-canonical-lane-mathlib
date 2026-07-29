import BraidGroupsArtinGroupsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure BraidAdmittedObject where
  braidGroup : Type
  presentation : Prop
  garsideStructure : Prop
  solutionToWordProblem : Prop
  linearRepresentation : Prop
  conclusion : solutionToWordProblem

def BraidWitnessClosed (O : BraidAdmittedObject) : Prop :=
  O.solutionToWordProblem

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse