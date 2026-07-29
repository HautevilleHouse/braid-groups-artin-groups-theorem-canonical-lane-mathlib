import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsTheoremCanonicalLaneLean.ArtinClassification

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure BraidGroupCohomologyPackage {B : BraidGroupPresentation}
    {P : BraidGroupPresentation} {A : ArtinClassificationPackage P} where
  cohomologyRing : Type u
  cohomologyGenerators : Type v
  cohomologyRelations : Prop
  cohomologyComputed : Prop

structure BraidGroupCohomologyEvidence {B : BraidGroupPresentation}
    {P : BraidGroupPresentation} {A : ArtinClassificationPackage P}
    (C : BraidGroupCohomologyPackage A) where
  cohomologyRelationsClosed : C.cohomologyRelations
  cohomologyComputedClosed : C.cohomologyComputed

def BraidGroupCohomologyClosed {B : BraidGroupPresentation}
    {P : BraidGroupPresentation} {A : ArtinClassificationPackage P}
    (C : BraidGroupCohomologyPackage A) : Prop :=
  C.cohomologyRelations ∧ C.cohomologyComputed

theorem braid_group_cohomology_closed_from_evidence
    {B : BraidGroupPresentation} {P : BraidGroupPresentation}
    {A : ArtinClassificationPackage P} (C : BraidGroupCohomologyPackage A)
    (E : BraidGroupCohomologyEvidence C) : BraidGroupCohomologyClosed C := by
  exact And.intro E.cohomologyRelationsClosed E.cohomologyComputedClosed

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse
