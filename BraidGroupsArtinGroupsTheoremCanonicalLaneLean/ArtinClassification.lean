import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsTheoremCanonicalLaneLean.BraidGroupPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsTheoremCanonicalLaneLean

structure ArtinClassificationPackage {B : BraidGroupPresentation}
    (P : BraidGroupPresentation) where
  coxeterMatrix : Type u
  coxeterGraph : Type v
  classificationComplete : Prop
  finiteTypeCriterion : Prop
  sphericalCriterion : Prop

structure ArtinClassificationEvidence {B : BraidGroupPresentation}
    {P : BraidGroupPresentation} (A : ArtinClassificationPackage P) where
  classificationCompleteClosed : A.classificationComplete
  finiteTypeCriterionClosed : A.finiteTypeCriterion
  sphericalCriterionClosed : A.sphericalCriterion

def ArtinClassificationClosed {B : BraidGroupPresentation}
    {P : BraidGroupPresentation} (A : ArtinClassificationPackage P) : Prop :=
  A.classificationComplete ∧ A.finiteTypeCriterion ∧ A.sphericalCriterion

theorem artin_classification_closed_from_evidence
    {B : BraidGroupPresentation} {P : BraidGroupPresentation}
    (A : ArtinClassificationPackage P) (E : ArtinClassificationEvidence A) :
    ArtinClassificationClosed A := by
  exact And.intro E.classificationCompleteClosed
    (And.intro E.finiteTypeCriterionClosed E.sphericalCriterionClosed)

end BraidGroupsArtinGroupsTheoremCanonicalLaneLean
end HautevilleHouse
