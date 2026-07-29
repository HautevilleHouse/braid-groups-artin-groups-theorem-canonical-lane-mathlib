import BraidGroupsArtinGroupsTheoremCanonicalLaneLean.BraidGroupObjects

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedBraidObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BraidWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse