import BraidGroupsArtinGroupsTheoremCanonicalLaneLean.GarsideStructure

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure NormalFormPackage {P : ArtinGroupPresentation}
    (G : GarsideMonoidPackage P) where
  normalForm : G.monoidType → List (Fin P.n × ℕ)
  uniqueness : Prop
  existence : Prop
  algorithmTerminates : Prop

structure NormalFormEvidence {P : ArtinGroupPresentation}
    {G : GarsideMonoidPackage P} (N : NormalFormPackage G) where
  uniquenessClosed : N.uniqueness
  existenceClosed : N.existence
  algorithmTerminatesClosed : N.algorithmTerminates

def NormalFormClosed {P : ArtinGroupPresentation}
    {G : GarsideMonoidPackage P} (N : NormalFormPackage G) : Prop :=
  N.uniqueness ∧ N.existence ∧ N.algorithmTerminates

theorem normal_form_closed_from_evidence {P : ArtinGroupPresentation}
    {G : GarsideMonoidPackage P} (N : NormalFormPackage G)
    (E : NormalFormEvidence N) : NormalFormClosed N := by
  exact And.intro E.uniquenessClosed
    (And.intro E.existenceClosed E.algorithmTerminatesClosed)

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse