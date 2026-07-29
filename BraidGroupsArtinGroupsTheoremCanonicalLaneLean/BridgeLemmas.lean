import BraidGroupsArtinGroupsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BraidWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse