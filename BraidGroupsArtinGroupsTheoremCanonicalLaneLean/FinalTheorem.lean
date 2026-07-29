import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsTheoremCanonicalLaneLean.ArtinClassification
import HautevilleHouse.BraidGroupsArtinGroupsTheoremCanonicalLaneLean.BraidGroupCohomology
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

def ConstrainedBraidGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_braid_group_endgame (A : AdmissibleClass) :
    ConstrainedBraidGroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse
